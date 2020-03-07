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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<39.468937, 44.044598, 57.284290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823174, 44.199760, 57.386463>,  <40.035717, 44.292858, 57.447769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823174, 44.199760, 57.386463>,  <39.468937, 44.044598, 57.284290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823174, 44.199760, 57.386463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231511, 0.108100, -0.966808,
		-0.402648, 0.915336, 0.005927,
		0.885594, 0.387911, 0.255437,
		40.088852, 44.316135, 57.463093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558514, 44.721489, 56.875408>,  <39.468937, 44.044598, 57.284290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558514, 44.721489, 56.875408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930031, 44.595581, 56.953651>,  <40.152939, 44.520035, 57.000599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930031, 44.595581, 56.953651>,  <39.558514, 44.721489, 56.875408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930031, 44.595581, 56.953651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288710, 0.283618, -0.914444,
		0.232364, 0.905802, 0.354301,
		0.928791, -0.314774, 0.195612,
		40.208668, 44.501148, 57.012337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984581, 45.321438, 56.787434>,  <39.558514, 44.721489, 56.875408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984581, 45.321438, 56.787434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202454, 44.987293, 56.757790>,  <40.333179, 44.786808, 56.740002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202454, 44.987293, 56.757790>,  <39.984581, 45.321438, 56.787434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202454, 44.987293, 56.757790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212108, 0.222720, -0.951528,
		0.811375, 0.502562, 0.298499,
		0.544684, -0.835360, -0.074112,
		40.365860, 44.736687, 56.735558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452789, 45.475441, 56.304127>,  <39.984581, 45.321438, 56.787434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452789, 45.475441, 56.304127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515617, 45.080711, 56.319656>,  <40.553314, 44.843872, 56.328976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515617, 45.080711, 56.319656>,  <40.452789, 45.475441, 56.304127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515617, 45.080711, 56.319656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374487, 0.023137, -0.926944,
		0.913831, 0.160138, 0.373187,
		0.157073, -0.986823, 0.038826,
		40.562740, 44.784664, 56.331303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205887, 45.375759, 56.022224>,  <40.452789, 45.475441, 56.304127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205887, 45.375759, 56.022224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982269, 45.045197, 55.995300>,  <40.848099, 44.846859, 55.979145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982269, 45.045197, 55.995300>,  <41.205887, 45.375759, 56.022224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982269, 45.045197, 55.995300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219842, -0.069461, -0.973059,
		0.799462, -0.558780, 0.220510,
		-0.559043, -0.826402, -0.067312,
		40.814556, 44.797276, 55.975105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615299, 44.983376, 55.643478>,  <41.205887, 45.375759, 56.022224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615299, 44.983376, 55.643478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252762, 44.820290, 55.599091>,  <41.035240, 44.722439, 55.572456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252762, 44.820290, 55.599091>,  <41.615299, 44.983376, 55.643478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252762, 44.820290, 55.599091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149903, -0.064707, -0.986581,
		0.395066, -0.910812, 0.119765,
		-0.906340, -0.407718, -0.110970,
		40.980862, 44.697975, 55.565800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619751, 44.410435, 55.111553>,  <41.615299, 44.983376, 55.643478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619751, 44.410435, 55.111553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233589, 44.514729, 55.112274>,  <41.001892, 44.577305, 55.112705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233589, 44.514729, 55.112274>,  <41.619751, 44.410435, 55.111553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233589, 44.514729, 55.112274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020298, -0.068278, -0.997460,
		-0.259953, -0.962992, 0.071209,
		-0.965408, 0.260738, 0.001798,
		40.943966, 44.592949, 55.112812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360626, 44.018005, 54.597618>,  <41.619751, 44.410435, 55.111553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360626, 44.018005, 54.597618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083344, 44.304291, 54.631611>,  <40.916973, 44.476063, 54.652008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083344, 44.304291, 54.631611>,  <41.360626, 44.018005, 54.597618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083344, 44.304291, 54.631611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072004, 0.048548, -0.996222,
		-0.717136, -0.696704, 0.017881,
		-0.693204, 0.715714, 0.084980,
		40.875381, 44.519005, 54.657104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840950, 43.835602, 54.165051>,  <41.360626, 44.018005, 54.597618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840950, 43.835602, 54.165051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770630, 44.227882, 54.199261>,  <40.728436, 44.463253, 54.219788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770630, 44.227882, 54.199261>,  <40.840950, 43.835602, 54.165051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770630, 44.227882, 54.199261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042176, 0.079291, -0.995959,
		-0.983522, -0.178698, 0.027422,
		-0.175802, 0.980704, 0.085521,
		40.717888, 44.522095, 54.224918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454586, 43.832233, 53.558231>,  <40.840950, 43.835602, 54.165051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454586, 43.832233, 53.558231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483551, 44.211643, 53.681557>,  <40.500931, 44.439289, 53.755550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483551, 44.211643, 53.681557>,  <40.454586, 43.832233, 53.558231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483551, 44.211643, 53.681557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007727, 0.309649, -0.950819,
		-0.997345, 0.066470, 0.029752,
		0.072413, 0.948525, 0.308314,
		40.505276, 44.496201, 53.774052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968246, 44.203007, 53.189671>,  <40.454586, 43.832233, 53.558231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968246, 44.203007, 53.189671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239120, 44.475864, 53.300018>,  <40.401646, 44.639580, 53.366226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239120, 44.475864, 53.300018>,  <39.968246, 44.203007, 53.189671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239120, 44.475864, 53.300018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178863, 0.211064, -0.960968,
		-0.713744, 0.700094, 0.020919,
		0.677183, 0.682144, 0.275867,
		40.442276, 44.680508, 53.382778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774719, 44.819775, 52.888481>,  <39.968246, 44.203007, 53.189671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774719, 44.819775, 52.888481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163399, 44.871746, 52.967396>,  <40.396606, 44.902927, 53.014744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163399, 44.871746, 52.967396>,  <39.774719, 44.819775, 52.888481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163399, 44.871746, 52.967396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160338, 0.250562, -0.954731,
		-0.173475, 0.959343, 0.222639,
		0.971699, 0.129925, 0.197286,
		40.454906, 44.910725, 53.026581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945259, 45.417126, 52.489918>,  <39.774719, 44.819775, 52.888481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945259, 45.417126, 52.489918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297363, 45.241772, 52.562538>,  <40.508625, 45.136559, 52.606110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297363, 45.241772, 52.562538>,  <39.945259, 45.417126, 52.489918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297363, 45.241772, 52.562538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257750, 0.120533, -0.958664,
		0.398382, 0.890668, 0.219094,
		0.880260, -0.438386, 0.181551,
		40.561440, 45.110256, 52.617004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540321, 45.759022, 52.159649>,  <39.945259, 45.417126, 52.489918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540321, 45.759022, 52.159649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711754, 45.401611, 52.213203>,  <40.814613, 45.187164, 52.245335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711754, 45.401611, 52.213203>,  <40.540321, 45.759022, 52.159649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711754, 45.401611, 52.213203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223402, -0.038783, -0.973955,
		0.875450, 0.447326, 0.182995,
		0.428578, -0.893530, 0.133886,
		40.840328, 45.133553, 52.253368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258556, 45.772545, 51.889526>,  <40.540321, 45.759022, 52.159649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258556, 45.772545, 51.889526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180672, 45.380650, 51.870735>,  <41.133942, 45.145512, 51.859459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180672, 45.380650, 51.870735>,  <41.258556, 45.772545, 51.889526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180672, 45.380650, 51.870735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422258, -0.040495, -0.905571,
		0.885317, -0.196163, 0.421585,
		-0.194712, -0.979735, -0.046981,
		41.122257, 45.086731, 51.856640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810459, 45.514290, 51.605659>,  <41.258556, 45.772545, 51.889526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810459, 45.514290, 51.605659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568359, 45.198978, 51.561333>,  <41.423100, 45.009792, 51.534737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568359, 45.198978, 51.561333>,  <41.810459, 45.514290, 51.605659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568359, 45.198978, 51.561333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375892, -0.160302, -0.912693,
		0.701695, -0.594065, 0.393332,
		-0.605251, -0.788283, -0.110821,
		41.386784, 44.962494, 51.528088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255074, 44.980267, 51.308178>,  <41.810459, 45.514290, 51.605659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255074, 44.980267, 51.308178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888741, 44.885326, 51.178619>,  <41.668938, 44.828362, 51.100883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888741, 44.885326, 51.178619>,  <42.255074, 44.980267, 51.308178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888741, 44.885326, 51.178619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369414, -0.181828, -0.911302,
		0.157402, -0.954256, 0.254205,
		-0.915837, -0.237347, -0.323896,
		41.613991, 44.814121, 51.081451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284733, 44.301807, 50.964909>,  <42.255074, 44.980267, 51.308178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284733, 44.301807, 50.964909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963837, 44.488781, 50.816360>,  <41.771297, 44.600964, 50.727234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963837, 44.488781, 50.816360>,  <42.284733, 44.301807, 50.964909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963837, 44.488781, 50.816360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302543, -0.217943, -0.927884,
		-0.514661, -0.856742, 0.033425,
		-0.802242, 0.467433, -0.371368,
		41.723164, 44.629009, 50.704948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972237, 43.877659, 50.405365>,  <42.284733, 44.301807, 50.964909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972237, 43.877659, 50.405365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803047, 44.231308, 50.325958>,  <41.701534, 44.443497, 50.278313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803047, 44.231308, 50.325958>,  <41.972237, 43.877659, 50.405365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803047, 44.231308, 50.325958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131914, -0.156670, -0.978802,
		-0.896488, -0.440198, -0.050361,
		-0.422976, 0.884127, -0.198521,
		41.676155, 44.496548, 50.266403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450966, 43.751377, 49.811611>,  <41.972237, 43.877659, 50.405365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450966, 43.751377, 49.811611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507607, 44.147179, 49.800045>,  <41.541592, 44.384659, 49.793106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507607, 44.147179, 49.800045>,  <41.450966, 43.751377, 49.811611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507607, 44.147179, 49.800045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127745, -0.047231, -0.990682,
		-0.981647, 0.136584, -0.133092,
		0.141598, 0.989502, -0.028916,
		41.550087, 44.444031, 49.791370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219845, 43.984024, 49.141449>,  <41.450966, 43.751377, 49.811611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219845, 43.984024, 49.141449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406731, 44.311020, 49.276161>,  <41.518860, 44.507217, 49.356987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406731, 44.311020, 49.276161>,  <41.219845, 43.984024, 49.141449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406731, 44.311020, 49.276161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244532, 0.246575, -0.937766,
		-0.849658, 0.520488, -0.084701,
		0.467211, 0.817492, 0.336780,
		41.546894, 44.556267, 49.377193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812634, 44.641663, 48.898991>,  <41.219845, 43.984024, 49.141449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812634, 44.641663, 48.898991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202003, 44.704994, 48.965179>,  <41.435623, 44.742992, 49.004894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202003, 44.704994, 48.965179>,  <40.812634, 44.641663, 48.898991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202003, 44.704994, 48.965179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103383, 0.340937, -0.934384,
		-0.204358, 0.926657, 0.315506,
		0.973422, 0.158331, 0.165474,
		41.494030, 44.752495, 49.014820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971226, 45.207493, 48.462708>,  <40.812634, 44.641663, 48.898991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971226, 45.207493, 48.462708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339851, 45.077805, 48.548126>,  <41.561028, 44.999992, 48.599377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339851, 45.077805, 48.548126>,  <40.971226, 45.207493, 48.462708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339851, 45.077805, 48.548126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294955, 0.227072, -0.928138,
		0.252433, 0.918324, 0.304892,
		0.921564, -0.324222, 0.213543,
		41.616322, 44.980537, 48.612190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329861, 45.720528, 48.198799>,  <40.971226, 45.207493, 48.462708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329861, 45.720528, 48.198799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600182, 45.428238, 48.237434>,  <41.762375, 45.252865, 48.260616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600182, 45.428238, 48.237434>,  <41.329861, 45.720528, 48.198799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600182, 45.428238, 48.237434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230643, 0.085186, -0.969302,
		0.700064, 0.677338, 0.226106,
		0.675806, -0.730723, 0.096588,
		41.802925, 45.209023, 48.266411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008385, 45.990314, 47.952568>,  <41.329861, 45.720528, 48.198799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008385, 45.990314, 47.952568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036179, 45.591751, 47.933189>,  <42.052856, 45.352615, 47.921562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036179, 45.591751, 47.933189>,  <42.008385, 45.990314, 47.952568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036179, 45.591751, 47.933189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284749, 0.066358, -0.956303,
		0.956081, 0.052652, 0.288336,
		0.069485, -0.996406, -0.048451,
		42.057022, 45.292828, 47.918655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709332, 45.905357, 47.655075>,  <42.008385, 45.990314, 47.952568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709332, 45.905357, 47.655075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492004, 45.577782, 47.581161>,  <42.361607, 45.381237, 47.536816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492004, 45.577782, 47.581161>,  <42.709332, 45.905357, 47.655075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492004, 45.577782, 47.581161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490691, -0.131185, -0.861401,
		0.681194, -0.558686, 0.473121,
		-0.543320, -0.818938, -0.184780,
		42.329010, 45.332100, 47.525726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202332, 45.246910, 47.518642>,  <42.709332, 45.905357, 47.655075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202332, 45.246910, 47.518642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850571, 45.210495, 47.331726>,  <42.639515, 45.188644, 47.219574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850571, 45.210495, 47.331726>,  <43.202332, 45.246910, 47.518642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850571, 45.210495, 47.331726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465871, -0.366725, -0.805281,
		-0.098057, -0.925864, 0.364910,
		-0.879402, -0.091038, -0.467293,
		42.586750, 45.183182, 47.191540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390244, 44.712288, 46.943779>,  <43.202332, 45.246910, 47.518642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390244, 44.712288, 46.943779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024033, 44.853333, 46.866341>,  <42.804306, 44.937958, 46.819878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024033, 44.853333, 46.866341>,  <43.390244, 44.712288, 46.943779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024033, 44.853333, 46.866341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094713, -0.278790, -0.955670,
		-0.390950, -0.893277, 0.221843,
		-0.915526, 0.352608, -0.193598,
		42.749374, 44.959114, 46.808262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187977, 44.254559, 46.407116>,  <43.390244, 44.712288, 46.943779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187977, 44.254559, 46.407116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927841, 44.554935, 46.361252>,  <42.771759, 44.735161, 46.333733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927841, 44.554935, 46.361252>,  <43.187977, 44.254559, 46.407116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927841, 44.554935, 46.361252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083160, -0.220415, -0.971855,
		-0.755082, -0.622495, 0.205792,
		-0.650335, 0.750944, -0.114664,
		42.732742, 44.780220, 46.326851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711208, 43.908794, 45.942940>,  <43.187977, 44.254559, 46.407116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711208, 43.908794, 45.942940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647858, 44.303562, 45.930908>,  <42.609848, 44.540424, 45.923687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647858, 44.303562, 45.930908>,  <42.711208, 43.908794, 45.942940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647858, 44.303562, 45.930908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106143, -0.047309, -0.993225,
		-0.981657, -0.154111, 0.112247,
		-0.158377, 0.986920, -0.030083,
		42.600346, 44.599640, 45.921883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128201, 43.985809, 45.403767>,  <42.711208, 43.908794, 45.942940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128201, 43.985809, 45.403767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305786, 44.340050, 45.458344>,  <42.412338, 44.552593, 45.491089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305786, 44.340050, 45.458344>,  <42.128201, 43.985809, 45.403767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305786, 44.340050, 45.458344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009048, 0.147835, -0.988971,
		-0.896000, 0.440299, 0.057620,
		0.443961, 0.885597, 0.136445,
		42.438976, 44.605728, 45.499275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788544, 44.336205, 44.846413>,  <42.128201, 43.985809, 45.403767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788544, 44.336205, 44.846413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069450, 44.602531, 44.947212>,  <42.237995, 44.762329, 45.007690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069450, 44.602531, 44.947212>,  <41.788544, 44.336205, 44.846413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069450, 44.602531, 44.947212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057037, 0.300212, -0.952166,
		-0.709623, 0.683050, 0.172853,
		0.702269, 0.665820, 0.251996,
		42.280132, 44.802277, 45.022812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616447, 45.035442, 44.628094>,  <41.788544, 44.336205, 44.846413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616447, 45.035442, 44.628094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015091, 45.017231, 44.655518>,  <42.254276, 45.006302, 44.671970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015091, 45.017231, 44.655518>,  <41.616447, 45.035442, 44.628094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015091, 45.017231, 44.655518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077407, 0.235696, -0.968739,
		0.027950, 0.970760, 0.238421,
		0.996608, -0.045532, 0.068556,
		42.314072, 45.003571, 44.676083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841270, 45.661781, 44.263920>,  <41.616447, 45.035442, 44.628094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841270, 45.661781, 44.263920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126244, 45.381084, 44.264648>,  <42.297226, 45.212666, 44.265083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126244, 45.381084, 44.264648>,  <41.841270, 45.661781, 44.263920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126244, 45.381084, 44.264648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127261, 0.126650, -0.983750,
		0.690105, 0.701087, 0.179533,
		0.712432, -0.701739, 0.001819,
		42.339973, 45.170563, 44.265194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260193, 45.919739, 43.891701>,  <41.841270, 45.661781, 44.263920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260193, 45.919739, 43.891701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405586, 45.547138, 43.886246>,  <42.492825, 45.323578, 43.882973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405586, 45.547138, 43.886246>,  <42.260193, 45.919739, 43.891701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405586, 45.547138, 43.886246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060834, 0.038340, -0.997411,
		0.929611, 0.361716, 0.070603,
		0.363486, -0.931500, -0.013637,
		42.514633, 45.267689, 43.882156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739986, 45.924774, 43.365135>,  <42.260193, 45.919739, 43.891701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739986, 45.924774, 43.365135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635048, 45.540421, 43.400646>,  <42.572083, 45.309811, 43.421955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635048, 45.540421, 43.400646>,  <42.739986, 45.924774, 43.365135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635048, 45.540421, 43.400646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013826, -0.095738, -0.995311,
		0.964874, -0.259892, 0.038402,
		-0.262350, -0.960880, 0.088782,
		42.556343, 45.252155, 43.427280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142471, 45.509590, 42.892502>,  <42.739986, 45.924774, 43.365135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142471, 45.509590, 42.892502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845352, 45.250744, 42.961189>,  <42.667080, 45.095436, 43.002399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845352, 45.250744, 42.961189>,  <43.142471, 45.509590, 42.892502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845352, 45.250744, 42.961189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064350, -0.324295, -0.943765,
		0.666413, -0.689979, 0.282529,
		-0.742800, -0.647118, 0.171714,
		42.622513, 45.056610, 43.012703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280514, 44.756672, 42.718704>,  <43.142471, 45.509590, 42.892502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280514, 44.756672, 42.718704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885193, 44.800091, 42.675842>,  <42.648003, 44.826141, 42.650124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885193, 44.800091, 42.675842>,  <43.280514, 44.756672, 42.718704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885193, 44.800091, 42.675842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044386, -0.467467, -0.882895,
		-0.145925, -0.877321, 0.457180,
		-0.988300, 0.108544, -0.107156,
		42.588703, 44.832653, 42.643696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250458, 44.328384, 42.171169>,  <43.280514, 44.756672, 42.718704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250458, 44.328384, 42.171169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877060, 44.471016, 42.186329>,  <42.653023, 44.556595, 42.195423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877060, 44.471016, 42.186329>,  <43.250458, 44.328384, 42.171169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877060, 44.471016, 42.186329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106101, -0.173708, -0.979065,
		-0.342533, -0.917974, 0.199989,
		-0.933495, 0.356581, 0.037898,
		42.597012, 44.577991, 42.197697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796684, 43.824512, 41.844845>,  <43.250458, 44.328384, 42.171169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796684, 43.824512, 41.844845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629295, 44.187019, 41.820969>,  <42.528862, 44.404522, 41.806644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629295, 44.187019, 41.820969>,  <42.796684, 43.824512, 41.844845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629295, 44.187019, 41.820969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291282, -0.196165, -0.936309,
		-0.860254, -0.374431, 0.346068,
		-0.418470, 0.906267, -0.059687,
		42.503754, 44.458900, 41.803062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231472, 43.684090, 41.394360>,  <42.796684, 43.824512, 41.844845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231472, 43.684090, 41.394360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288383, 44.079460, 41.415379>,  <42.322533, 44.316685, 41.427990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288383, 44.079460, 41.415379>,  <42.231472, 43.684090, 41.394360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288383, 44.079460, 41.415379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301132, 0.093796, -0.948958,
		-0.942908, 0.119197, 0.310994,
		0.142283, 0.988431, 0.052547,
		42.331070, 44.375988, 41.431145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707748, 43.999985, 40.950489>,  <42.231472, 43.684090, 41.394360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707748, 43.999985, 40.950489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986771, 44.280907, 41.007324>,  <42.154182, 44.449459, 41.041424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986771, 44.280907, 41.007324>,  <41.707748, 43.999985, 40.950489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986771, 44.280907, 41.007324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020692, 0.217955, -0.975739,
		-0.716235, 0.677690, 0.166567,
		0.697553, 0.702305, 0.142084,
		42.196037, 44.491600, 41.049950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439186, 44.553543, 40.539520>,  <41.707748, 43.999985, 40.950489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439186, 44.553543, 40.539520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829918, 44.566090, 40.624207>,  <42.064358, 44.573616, 40.675018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829918, 44.566090, 40.624207>,  <41.439186, 44.553543, 40.539520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829918, 44.566090, 40.624207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176988, 0.437844, -0.881458,
		-0.120344, 0.898504, 0.422148,
		0.976828, 0.031363, 0.211716,
		42.122967, 44.575497, 40.687721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649101, 45.265808, 40.380768>,  <41.439186, 44.553543, 40.539520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649101, 45.265808, 40.380768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970253, 45.030338, 40.343143>,  <42.162945, 44.889057, 40.320568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970253, 45.030338, 40.343143>,  <41.649101, 45.265808, 40.380768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970253, 45.030338, 40.343143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102210, 0.291372, -0.951134,
		0.587312, 0.754033, 0.294106,
		0.802881, -0.588673, -0.094056,
		42.211117, 44.853737, 40.314926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206570, 45.729351, 40.091656>,  <41.649101, 45.265808, 40.380768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206570, 45.729351, 40.091656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292946, 45.349648, 40.000198>,  <42.344772, 45.121826, 39.945324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292946, 45.349648, 40.000198>,  <42.206570, 45.729351, 40.091656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292946, 45.349648, 40.000198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171587, 0.267420, -0.948179,
		0.961211, 0.165519, 0.220628,
		0.215942, -0.949258, -0.228646,
		42.357727, 45.064869, 39.931606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444576, 45.763584, 39.463703>,  <42.206570, 45.729351, 40.091656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444576, 45.763584, 39.463703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456528, 45.364094, 39.480003>,  <42.463699, 45.124401, 39.489784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456528, 45.364094, 39.480003>,  <42.444576, 45.763584, 39.463703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456528, 45.364094, 39.480003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165658, -0.035254, -0.985553,
		0.985730, 0.036198, 0.164393,
		0.029880, -0.998723, 0.040747,
		42.465492, 45.064476, 39.492229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050362, 45.542515, 39.150024>,  <42.444576, 45.763584, 39.463703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050362, 45.542515, 39.150024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846008, 45.200466, 39.114792>,  <42.723396, 44.995235, 39.093651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846008, 45.200466, 39.114792>,  <43.050362, 45.542515, 39.150024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846008, 45.200466, 39.114792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350734, -0.113797, -0.929535,
		0.784845, -0.505779, 0.358059,
		-0.510885, -0.855124, -0.088081,
		42.692741, 44.943928, 39.088367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507774, 45.022301, 38.919777>,  <43.050362, 45.542515, 39.150024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507774, 45.022301, 38.919777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140076, 44.939823, 38.785629>,  <42.919456, 44.890335, 38.705139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140076, 44.939823, 38.785629>,  <43.507774, 45.022301, 38.919777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140076, 44.939823, 38.785629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340635, 0.010521, -0.940137,
		0.197381, -0.978454, 0.060566,
		-0.919244, -0.206196, -0.335372,
		42.864304, 44.877964, 38.685017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517082, 44.521130, 38.424900>,  <43.507774, 45.022301, 38.919777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517082, 44.521130, 38.424900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152069, 44.643890, 38.316757>,  <42.933060, 44.717548, 38.251873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152069, 44.643890, 38.316757>,  <43.517082, 44.521130, 38.424900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152069, 44.643890, 38.316757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270763, -0.042130, -0.961724,
		-0.306548, -0.950808, -0.044654,
		-0.912533, 0.306905, -0.270358,
		42.878311, 44.735962, 38.235649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217812, 44.070496, 37.859890>,  <43.517082, 44.521130, 38.424900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217812, 44.070496, 37.859890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038223, 44.427391, 37.840576>,  <42.930470, 44.641529, 37.828987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038223, 44.427391, 37.840576>,  <43.217812, 44.070496, 37.859890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038223, 44.427391, 37.840576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066173, -0.020688, -0.997594,
		-0.891092, -0.451087, -0.049754,
		-0.448972, 0.892240, -0.048285,
		42.903530, 44.695065, 37.826092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050243, 44.096550, 37.236538>,  <43.217812, 44.070496, 37.859890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050243, 44.096550, 37.236538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914543, 44.467510, 37.299564>,  <42.833122, 44.690086, 37.337379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914543, 44.467510, 37.299564>,  <43.050243, 44.096550, 37.236538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914543, 44.467510, 37.299564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009282, 0.170787, -0.985264,
		-0.940649, -0.332794, -0.066549,
		-0.339255, 0.927405, 0.157561,
		42.812767, 44.745731, 37.346832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432598, 44.259125, 36.814869>,  <43.050243, 44.096550, 37.236538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432598, 44.259125, 36.814869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618935, 44.601036, 36.906380>,  <42.730736, 44.806183, 36.961285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618935, 44.601036, 36.906380>,  <42.432598, 44.259125, 36.814869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618935, 44.601036, 36.906380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100559, 0.205727, -0.973429,
		-0.879134, 0.476473, 0.009881,
		0.465845, 0.854781, 0.228776,
		42.758690, 44.857471, 36.975014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089825, 44.892212, 36.486931>,  <42.432598, 44.259125, 36.814869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089825, 44.892212, 36.486931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469429, 44.996471, 36.557861>,  <42.697189, 45.059029, 36.600418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469429, 44.996471, 36.557861>,  <42.089825, 44.892212, 36.486931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469429, 44.996471, 36.557861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157131, 0.096540, -0.982848,
		-0.273300, 0.960594, 0.050661,
		0.949008, 0.260651, 0.177324,
		42.754131, 45.074665, 36.611057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240524, 45.439857, 36.044968>,  <42.089825, 44.892212, 36.486931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240524, 45.439857, 36.044968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610382, 45.315361, 36.132755>,  <42.832294, 45.240662, 36.185429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610382, 45.315361, 36.132755>,  <42.240524, 45.439857, 36.044968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610382, 45.315361, 36.132755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280659, 0.167345, -0.945106,
		0.257432, 0.935480, 0.242088,
		0.924640, -0.311245, 0.219471,
		42.887775, 45.221989, 36.198597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627579, 45.808243, 35.531532>,  <42.240524, 45.439857, 36.044968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627579, 45.808243, 35.531532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908600, 45.570618, 35.688255>,  <43.077213, 45.428043, 35.782288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908600, 45.570618, 35.688255>,  <42.627579, 45.808243, 35.531532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908600, 45.570618, 35.688255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502402, 0.024109, -0.864298,
		0.504002, 0.804056, 0.315397,
		0.702548, -0.594064, 0.391809,
		43.119366, 45.392399, 35.805798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318630, 46.040134, 35.336163>,  <42.627579, 45.808243, 35.531532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318630, 46.040134, 35.336163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364006, 45.649281, 35.408100>,  <43.391232, 45.414768, 35.451263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364006, 45.649281, 35.408100>,  <43.318630, 46.040134, 35.336163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364006, 45.649281, 35.408100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529021, -0.093811, -0.843407,
		0.840992, 0.190817, 0.506282,
		0.113442, -0.977133, 0.179841,
		43.398037, 45.356140, 35.462051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934807, 45.905094, 35.197872>,  <43.318630, 46.040134, 35.336163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934807, 45.905094, 35.197872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730438, 45.563671, 35.157101>,  <43.607815, 45.358818, 35.132637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730438, 45.563671, 35.157101>,  <43.934807, 45.905094, 35.197872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730438, 45.563671, 35.157101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398604, -0.130187, -0.907836,
		0.761623, -0.504466, 0.406749,
		-0.510926, -0.853560, -0.101929,
		43.577160, 45.307602, 35.126522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396626, 45.370777, 34.915867>,  <43.934807, 45.905094, 35.197872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396626, 45.370777, 34.915867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026123, 45.229042, 34.864479>,  <43.803822, 45.144001, 34.833645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026123, 45.229042, 34.864479>,  <44.396626, 45.370777, 34.915867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026123, 45.229042, 34.864479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189796, -0.144010, -0.971205,
		0.325630, -0.923964, 0.200641,
		-0.926252, -0.354334, -0.128471,
		43.748249, 45.122742, 34.825939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456955, 44.667179, 34.654125>,  <44.396626, 45.370777, 34.915867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456955, 44.667179, 34.654125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093254, 44.804363, 34.559776>,  <43.875034, 44.886673, 34.503166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093254, 44.804363, 34.559776>,  <44.456955, 44.667179, 34.654125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093254, 44.804363, 34.559776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155412, -0.245976, -0.956736,
		-0.386143, -0.906572, 0.170353,
		-0.909253, 0.342962, -0.235874,
		43.820477, 44.907253, 34.489014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197449, 44.135349, 34.151157>,  <44.456955, 44.667179, 34.654125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197449, 44.135349, 34.151157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939720, 44.439438, 34.117920>,  <43.785084, 44.621891, 34.097977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939720, 44.439438, 34.117920>,  <44.197449, 44.135349, 34.151157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939720, 44.439438, 34.117920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019323, -0.092432, -0.995531,
		-0.764508, -0.643051, 0.044866,
		-0.644324, 0.760225, -0.083091,
		43.746422, 44.667507, 34.092991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831848, 44.074970, 33.569336>,  <44.197449, 44.135349, 34.151157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831848, 44.074970, 33.569336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765190, 44.469196, 33.581249>,  <43.725197, 44.705734, 33.588398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765190, 44.469196, 33.581249>,  <43.831848, 44.074970, 33.569336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765190, 44.469196, 33.581249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106132, 0.047961, -0.993195,
		-0.980288, -0.162350, -0.112593,
		-0.166645, 0.985567, 0.029785,
		43.715195, 44.764866, 33.590183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333900, 44.274994, 33.070530>,  <43.831848, 44.074970, 33.569336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333900, 44.274994, 33.070530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524170, 44.620602, 33.136509>,  <43.638332, 44.827965, 33.176098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524170, 44.620602, 33.136509>,  <43.333900, 44.274994, 33.070530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524170, 44.620602, 33.136509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163763, 0.097256, -0.981694,
		-0.864243, 0.493979, -0.095231,
		0.475675, 0.864017, 0.164948,
		43.666874, 44.879807, 33.185993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008167, 44.951347, 32.750347>,  <43.333900, 44.274994, 33.070530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008167, 44.951347, 32.750347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392357, 45.053135, 32.795486>,  <43.622871, 45.114208, 32.822571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392357, 45.053135, 32.795486>,  <43.008167, 44.951347, 32.750347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392357, 45.053135, 32.795486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047175, 0.250733, -0.966906,
		-0.274344, 0.934011, 0.228818,
		0.960474, 0.254471, 0.112849,
		43.680500, 45.129475, 32.829342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041241, 45.302963, 32.173409>,  <43.008167, 44.951347, 32.750347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041241, 45.302963, 32.173409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420540, 45.329002, 32.297726>,  <43.648117, 45.344627, 32.372314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420540, 45.329002, 32.297726>,  <43.041241, 45.302963, 32.173409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420540, 45.329002, 32.297726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257294, 0.416071, -0.872172,
		-0.186088, 0.906999, 0.377788,
		0.948246, 0.065099, 0.310791,
		43.705013, 45.348534, 32.390965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<47.205769, 43.469917, 32.937504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.904663, 43.733234, 32.937267>,  <46.723999, 43.891224, 32.937126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.904663, 43.733234, 32.937267>,  <47.205769, 43.469917, 32.937504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.904663, 43.733234, 32.937267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017485, -0.019090, 0.999665,
		0.658060, 0.752521, 0.025880,
		-0.752762, 0.658292, -0.000595,
		46.678833, 43.930721, 32.937088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.285461, 44.014698, 33.440895>,  <47.205769, 43.469917, 32.937504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.285461, 44.014698, 33.440895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.890381, 44.058628, 33.396374>,  <46.653332, 44.084984, 33.369659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.890381, 44.058628, 33.396374>,  <47.285461, 44.014698, 33.440895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.890381, 44.058628, 33.396374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104463, 0.066190, 0.992324,
		0.116346, 0.991745, -0.053904,
		-0.987700, 0.109822, -0.111302,
		46.594070, 44.091576, 33.362984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.169746, 44.640472, 33.677189>,  <47.285461, 44.014698, 33.440895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.169746, 44.640472, 33.677189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.826950, 44.435459, 33.698620>,  <46.621273, 44.312450, 33.711479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.826950, 44.435459, 33.698620>,  <47.169746, 44.640472, 33.677189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.826950, 44.435459, 33.698620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072070, 0.222156, 0.972344,
		-0.510263, 0.829431, -0.227325,
		-0.856993, -0.512534, 0.053581,
		46.569851, 44.281700, 33.714695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.842293, 44.830593, 34.249161>,  <47.169746, 44.640472, 33.677189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.842293, 44.830593, 34.249161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.613960, 44.511578, 34.171104>,  <46.476963, 44.320168, 34.124271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.613960, 44.511578, 34.171104>,  <46.842293, 44.830593, 34.249161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.613960, 44.511578, 34.171104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305438, -0.014352, 0.952104,
		-0.762145, 0.603091, -0.235407,
		-0.570827, -0.797543, -0.195145,
		46.442711, 44.272316, 34.112560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078075, 44.966991, 34.291676>,  <46.842293, 44.830593, 34.249161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078075, 44.966991, 34.291676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.147430, 44.578876, 34.359184>,  <46.189045, 44.346008, 34.399689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.147430, 44.578876, 34.359184>,  <46.078075, 44.966991, 34.291676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.147430, 44.578876, 34.359184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292950, 0.112795, 0.949451,
		-0.940275, -0.214064, -0.264688,
		0.173388, -0.970285, 0.168769,
		46.199448, 44.287792, 34.409817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476395, 44.844398, 34.612297>,  <46.078075, 44.966991, 34.291676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476395, 44.844398, 34.612297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.732216, 44.547562, 34.692566>,  <45.885708, 44.369457, 34.740726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.732216, 44.547562, 34.692566>,  <45.476395, 44.844398, 34.612297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.732216, 44.547562, 34.692566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257941, 0.038753, 0.965383,
		-0.724182, -0.669174, -0.166632,
		0.639552, -0.742094, 0.200672,
		45.924080, 44.324932, 34.752766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095951, 44.256283, 35.088226>,  <45.476395, 44.844398, 34.612297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095951, 44.256283, 35.088226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.488281, 44.211544, 35.152054>,  <45.723679, 44.184700, 35.190350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.488281, 44.211544, 35.152054>,  <45.095951, 44.256283, 35.088226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488281, 44.211544, 35.152054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171823, -0.110098, 0.978956,
		-0.091912, -0.987609, -0.127204,
		0.980831, -0.111834, 0.159574,
		45.782532, 44.177990, 35.199924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.052975, 43.735470, 35.422836>,  <45.095951, 44.256283, 35.088226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.052975, 43.735470, 35.422836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.411110, 43.885738, 35.518539>,  <45.625992, 43.975899, 35.575962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.411110, 43.885738, 35.518539>,  <45.052975, 43.735470, 35.422836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.411110, 43.885738, 35.518539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125252, -0.303138, 0.944679,
		0.427414, -0.875774, -0.224358,
		0.895337, 0.375668, 0.239258,
		45.679710, 43.998440, 35.590317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164680, 43.382359, 35.993038>,  <45.052975, 43.735470, 35.422836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164680, 43.382359, 35.993038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.473587, 43.635574, 36.014435>,  <45.658932, 43.787506, 36.027271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.473587, 43.635574, 36.014435>,  <45.164680, 43.382359, 35.993038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473587, 43.635574, 36.014435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151267, -0.265003, 0.952308,
		0.617026, -0.727345, -0.300412,
		0.772267, 0.633042, 0.053491,
		45.705269, 43.825485, 36.030483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.677605, 43.068184, 36.394920>,  <45.164680, 43.382359, 35.993038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.677605, 43.068184, 36.394920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.725235, 43.464348, 36.422958>,  <45.753815, 43.702045, 36.439781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.725235, 43.464348, 36.422958>,  <45.677605, 43.068184, 36.394920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.725235, 43.464348, 36.422958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108471, -0.083150, 0.990616,
		0.986942, -0.110358, -0.117332,
		0.119079, 0.990408, 0.070093,
		45.760960, 43.761471, 36.443985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.307888, 43.163315, 36.764858>,  <45.677605, 43.068184, 36.394920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.307888, 43.163315, 36.764858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.063881, 43.476486, 36.813683>,  <45.917477, 43.664391, 36.842979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.063881, 43.476486, 36.813683>,  <46.307888, 43.163315, 36.764858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063881, 43.476486, 36.813683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015434, -0.165756, 0.986046,
		0.792240, 0.599619, 0.113197,
		-0.610015, 0.782932, 0.122064,
		45.880875, 43.711365, 36.850304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.469406, 43.474625, 37.393784>,  <46.307888, 43.163315, 36.764858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.469406, 43.474625, 37.393784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.112595, 43.640900, 37.322811>,  <45.898506, 43.740665, 37.280228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.112595, 43.640900, 37.322811>,  <46.469406, 43.474625, 37.393784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.112595, 43.640900, 37.322811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199968, -0.010927, 0.979742,
		0.405330, 0.909441, 0.092872,
		-0.892032, 0.415690, -0.177430,
		45.844986, 43.765606, 37.269581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.459976, 44.026310, 37.811707>,  <46.469406, 43.474625, 37.393784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.459976, 44.026310, 37.811707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.071167, 43.978661, 37.730740>,  <45.837879, 43.950073, 37.682159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.071167, 43.978661, 37.730740>,  <46.459976, 44.026310, 37.811707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.071167, 43.978661, 37.730740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200764, -0.025854, 0.979298,
		-0.121886, 0.992543, 0.001216,
		-0.972028, -0.119119, -0.202418,
		45.779560, 43.942924, 37.670013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071434, 44.649082, 38.138092>,  <46.459976, 44.026310, 37.811707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071434, 44.649082, 38.138092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.825035, 44.334297, 38.124031>,  <45.677197, 44.145424, 38.115593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.825035, 44.334297, 38.124031>,  <46.071434, 44.649082, 38.138092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825035, 44.334297, 38.124031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157772, 0.079524, 0.984268,
		-0.771790, 0.611850, -0.173148,
		-0.615994, -0.786966, -0.035157,
		45.640236, 44.098206, 38.113483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593151, 44.766819, 38.674942>,  <46.071434, 44.649082, 38.138092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593151, 44.766819, 38.674942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.560837, 44.373203, 38.611507>,  <45.541447, 44.137035, 38.573448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.560837, 44.373203, 38.611507>,  <45.593151, 44.766819, 38.674942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560837, 44.373203, 38.611507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137697, -0.146558, 0.979572,
		-0.987174, 0.100973, -0.123658,
		-0.080787, -0.984035, -0.158582,
		45.536602, 44.077991, 38.563934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976971, 44.676392, 39.101208>,  <45.593151, 44.766819, 38.674942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976971, 44.676392, 39.101208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.158264, 44.327389, 39.028214>,  <45.267040, 44.117985, 38.984417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.158264, 44.327389, 39.028214>,  <44.976971, 44.676392, 39.101208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.158264, 44.327389, 39.028214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106932, -0.256465, 0.960620,
		-0.884952, -0.415876, -0.209539,
		0.453238, -0.872509, -0.182489,
		45.294235, 44.065636, 38.973465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492050, 44.242188, 39.330441>,  <44.976971, 44.676392, 39.101208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492050, 44.242188, 39.330441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.825974, 44.024147, 39.299564>,  <45.026329, 43.893322, 39.281040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.825974, 44.024147, 39.299564>,  <44.492050, 44.242188, 39.330441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825974, 44.024147, 39.299564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150139, -0.360306, 0.920672,
		-0.529670, -0.756997, -0.382628,
		0.834810, -0.545100, -0.077188,
		45.076416, 43.860619, 39.276409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291122, 43.485725, 39.490303>,  <44.492050, 44.242188, 39.330441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291122, 43.485725, 39.490303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.677467, 43.563202, 39.559113>,  <44.909275, 43.609688, 39.600399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.677467, 43.563202, 39.559113>,  <44.291122, 43.485725, 39.490303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677467, 43.563202, 39.559113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124632, -0.234724, 0.964039,
		0.227101, -0.952570, -0.202571,
		0.965863, 0.193688, 0.172027,
		44.967228, 43.621307, 39.610722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505852, 42.936623, 39.946556>,  <44.291122, 43.485725, 39.490303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.505852, 42.936623, 39.946556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.792877, 43.213478, 39.977669>,  <44.965092, 43.379593, 39.996334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.792877, 43.213478, 39.977669>,  <44.505852, 42.936623, 39.946556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792877, 43.213478, 39.977669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045325, -0.157841, 0.986424,
		0.695018, -0.704295, -0.144632,
		0.717562, 0.692137, 0.077780,
		45.008144, 43.421120, 40.001003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971889, 42.679127, 40.418087>,  <44.505852, 42.936623, 39.946556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971889, 42.679127, 40.418087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.051552, 43.070702, 40.400139>,  <45.099350, 43.305649, 40.389370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.051552, 43.070702, 40.400139>,  <44.971889, 42.679127, 40.418087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051552, 43.070702, 40.400139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072325, 0.060346, 0.995554,
		0.977295, -0.195026, 0.082820,
		0.199157, 0.978940, -0.044871,
		45.111298, 43.364384, 40.386677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569885, 42.807854, 40.904526>,  <44.971889, 42.679127, 40.418087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569885, 42.807854, 40.904526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.379639, 43.158848, 40.879841>,  <45.265491, 43.369446, 40.865032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.379639, 43.158848, 40.879841>,  <45.569885, 42.807854, 40.904526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.379639, 43.158848, 40.879841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003558, 0.072071, 0.997393,
		0.879648, 0.474153, -0.037401,
		-0.475612, 0.877488, -0.061710,
		45.236954, 43.422092, 40.861328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990986, 43.279156, 41.165417>,  <45.569885, 42.807854, 40.904526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990986, 43.279156, 41.165417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.638695, 43.468216, 41.177494>,  <45.427319, 43.581654, 41.184738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.638695, 43.468216, 41.177494>,  <45.990986, 43.279156, 41.165417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638695, 43.468216, 41.177494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131144, 0.182126, 0.974490,
		0.455095, 0.862225, -0.222389,
		-0.880732, 0.472651, 0.030191,
		45.374474, 43.610012, 41.186550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047047, 44.020542, 41.472359>,  <45.990986, 43.279156, 41.165417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047047, 44.020542, 41.472359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.676750, 43.874851, 41.513058>,  <45.454575, 43.787437, 41.537476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.676750, 43.874851, 41.513058>,  <46.047047, 44.020542, 41.472359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676750, 43.874851, 41.513058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007597, 0.251081, 0.967936,
		-0.378091, 0.896828, -0.229669,
		-0.925737, -0.364223, 0.101744,
		45.399029, 43.765583, 41.543583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848114, 44.576759, 41.884628>,  <46.047047, 44.020542, 41.472359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848114, 44.576759, 41.884628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.557945, 44.304543, 41.925858>,  <45.383842, 44.141212, 41.950596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.557945, 44.304543, 41.925858>,  <45.848114, 44.576759, 41.884628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557945, 44.304543, 41.925858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188934, 0.340881, 0.920926,
		-0.661864, 0.648587, -0.375860,
		-0.725424, -0.680540, 0.103076,
		45.340317, 44.100380, 41.956779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370499, 44.900017, 42.198681>,  <45.848114, 44.576759, 41.884628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370499, 44.900017, 42.198681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.281120, 44.518673, 42.279846>,  <45.227493, 44.289867, 42.328545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.281120, 44.518673, 42.279846>,  <45.370499, 44.900017, 42.198681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281120, 44.518673, 42.279846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243130, 0.256111, 0.935572,
		-0.943906, 0.159720, -0.289018,
		-0.223450, -0.953361, 0.202912,
		45.214085, 44.232666, 42.340721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867775, 45.003620, 42.616375>,  <45.370499, 44.900017, 42.198681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867775, 45.003620, 42.616375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.953247, 44.624939, 42.712784>,  <45.004532, 44.397732, 42.770630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.953247, 44.624939, 42.712784>,  <44.867775, 45.003620, 42.616375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953247, 44.624939, 42.712784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213089, 0.195609, 0.957251,
		-0.953380, -0.255907, -0.159933,
		0.213683, -0.946704, 0.241021,
		45.017353, 44.340927, 42.785091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436172, 44.893955, 43.074223>,  <44.867775, 45.003620, 42.616375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436172, 44.893955, 43.074223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.692276, 44.591087, 43.126022>,  <44.845940, 44.409367, 43.157104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.692276, 44.591087, 43.126022>,  <44.436172, 44.893955, 43.074223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692276, 44.591087, 43.126022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136290, 0.053943, 0.989199,
		-0.755973, -0.650992, -0.068657,
		0.640257, -0.757166, 0.129503,
		44.884354, 44.363937, 43.164875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080540, 44.233280, 43.408291>,  <44.436172, 44.893955, 43.074223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080540, 44.233280, 43.408291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.462120, 44.258308, 43.525642>,  <44.691067, 44.273327, 43.596054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.462120, 44.258308, 43.525642>,  <44.080540, 44.233280, 43.408291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.462120, 44.258308, 43.525642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295504, 0.027754, 0.954938,
		0.051616, -0.997654, 0.044967,
		0.953946, 0.062578, 0.293378,
		44.748302, 44.277081, 43.613655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191765, 43.921623, 44.128746>,  <44.080540, 44.233280, 43.408291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191765, 43.921623, 44.128746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.538689, 44.119896, 44.110516>,  <44.746841, 44.238861, 44.099579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.538689, 44.119896, 44.110516>,  <44.191765, 43.921623, 44.128746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538689, 44.119896, 44.110516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016744, 0.120552, 0.992566,
		0.497490, -0.860098, 0.112855,
		0.867308, 0.495681, -0.045572,
		44.798882, 44.268600, 44.096844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654903, 43.558361, 44.592319>,  <44.191765, 43.921623, 44.128746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654903, 43.558361, 44.592319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.803337, 43.925751, 44.537624>,  <44.892399, 44.146183, 44.504807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.803337, 43.925751, 44.537624>,  <44.654903, 43.558361, 44.592319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803337, 43.925751, 44.537624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096574, 0.108286, 0.989418,
		0.923563, -0.380365, -0.048518,
		0.371086, 0.918475, -0.136742,
		44.914661, 44.201294, 44.496601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083889, 43.603382, 45.129078>,  <44.654903, 43.558361, 44.592319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.083889, 43.603382, 45.129078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.041443, 43.978329, 44.996361>,  <45.015976, 44.203297, 44.916733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.041443, 43.978329, 44.996361>,  <45.083889, 43.603382, 45.129078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.041443, 43.978329, 44.996361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054726, 0.338675, 0.939311,
		0.992847, 0.081517, -0.087236,
		-0.106115, 0.937366, -0.331791,
		45.009609, 44.259537, 44.896824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679222, 43.980698, 45.348518>,  <45.083889, 43.603382, 45.129078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679222, 43.980698, 45.348518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.375595, 44.231922, 45.279991>,  <45.193420, 44.382656, 45.238876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.375595, 44.231922, 45.279991>,  <45.679222, 43.980698, 45.348518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375595, 44.231922, 45.279991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071272, 0.341746, 0.937086,
		0.647098, 0.699102, -0.304172,
		-0.759068, 0.628065, -0.171317,
		45.147873, 44.420341, 45.228596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893402, 44.599407, 45.624874>,  <45.679222, 43.980698, 45.348518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893402, 44.599407, 45.624874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.495827, 44.642456, 45.615944>,  <45.257282, 44.668285, 45.610584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.495827, 44.642456, 45.615944>,  <45.893402, 44.599407, 45.624874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495827, 44.642456, 45.615944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019366, 0.371412, 0.928266,
		0.108196, 0.922209, -0.371246,
		-0.993941, 0.107624, -0.022326,
		45.197643, 44.674744, 45.609245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785454, 45.289967, 45.886356>,  <45.893402, 44.599407, 45.624874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.785454, 45.289967, 45.886356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.429939, 45.108852, 45.914761>,  <45.216629, 45.000183, 45.931805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.429939, 45.108852, 45.914761>,  <45.785454, 45.289967, 45.886356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429939, 45.108852, 45.914761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043051, 0.236729, 0.970621,
		-0.456293, 0.859619, -0.229894,
		-0.888788, -0.452785, 0.071010,
		45.163303, 44.973019, 45.936062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414158, 45.761971, 46.242287>,  <45.785454, 45.289967, 45.886356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414158, 45.761971, 46.242287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.230606, 45.409306, 46.286266>,  <45.120476, 45.197704, 46.312656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.230606, 45.409306, 46.286266>,  <45.414158, 45.761971, 46.242287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230606, 45.409306, 46.286266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189372, 0.217960, 0.957409,
		-0.868080, 0.418518, -0.266981,
		-0.458884, -0.881667, 0.109951,
		45.092941, 45.144806, 46.319252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915829, 45.850842, 46.595249>,  <45.414158, 45.761971, 46.242287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915829, 45.850842, 46.595249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.982353, 45.459408, 46.643764>,  <45.022266, 45.224548, 46.672874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.982353, 45.459408, 46.643764>,  <44.915829, 45.850842, 46.595249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982353, 45.459408, 46.643764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197270, 0.087501, 0.976436,
		-0.966139, -0.186319, -0.178493,
		0.166311, -0.978585, 0.121293,
		45.032246, 45.165833, 46.680153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435509, 45.675533, 47.190453>,  <44.915829, 45.850842, 46.595249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435509, 45.675533, 47.190453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.681396, 45.362198, 47.153595>,  <44.828930, 45.174194, 47.131481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.681396, 45.362198, 47.153595>,  <44.435509, 45.675533, 47.190453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.681396, 45.362198, 47.153595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073406, -0.173138, 0.982158,
		-0.785321, -0.596990, -0.163934,
		0.614721, -0.783343, -0.092146,
		44.865814, 45.127193, 47.125950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094231, 44.964779, 47.397472>,  <44.435509, 45.675533, 47.190453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094231, 44.964779, 47.397472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.490265, 44.995708, 47.444366>,  <44.727886, 45.014267, 47.472504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.490265, 44.995708, 47.444366>,  <44.094231, 44.964779, 47.397472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490265, 44.995708, 47.444366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110655, -0.084502, 0.990260,
		0.086479, -0.993418, -0.075108,
		0.990089, 0.077326, 0.117234,
		44.787292, 45.018906, 47.479538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250671, 44.610470, 48.021862>,  <44.094231, 44.964779, 47.397472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250671, 44.610470, 48.021862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.600975, 44.794838, 47.964455>,  <44.811157, 44.905460, 47.930008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.600975, 44.794838, 47.964455>,  <44.250671, 44.610470, 48.021862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600975, 44.794838, 47.964455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095282, 0.126415, 0.987391,
		0.473251, -0.878392, 0.066792,
		0.875759, 0.460920, -0.143521,
		44.863705, 44.933113, 47.921398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634361, 44.306427, 48.559830>,  <44.250671, 44.610470, 48.021862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634361, 44.306427, 48.559830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.847710, 44.629375, 48.458897>,  <44.975719, 44.823143, 48.398338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.847710, 44.629375, 48.458897>,  <44.634361, 44.306427, 48.559830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847710, 44.629375, 48.458897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291669, 0.104468, 0.950798,
		0.794003, -0.580728, -0.179763,
		0.533376, 0.807367, -0.252328,
		45.007721, 44.871586, 48.383198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285767, 44.235081, 48.903812>,  <44.634361, 44.306427, 48.559830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285767, 44.235081, 48.903812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.262062, 44.626873, 48.826759>,  <45.247841, 44.861950, 48.780525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.262062, 44.626873, 48.826759>,  <45.285767, 44.235081, 48.903812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262062, 44.626873, 48.826759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159786, 0.199793, 0.966722,
		0.985371, 0.026509, -0.168348,
		-0.059262, 0.979479, -0.192635,
		45.244282, 44.920715, 48.768970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834221, 44.492798, 49.136955>,  <45.285767, 44.235081, 48.903812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834221, 44.492798, 49.136955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.562500, 44.786179, 49.127174>,  <45.399467, 44.962208, 49.121307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.562500, 44.786179, 49.127174>,  <45.834221, 44.492798, 49.136955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562500, 44.786179, 49.127174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197659, 0.214945, 0.956415,
		0.706740, 0.644861, -0.290986,
		-0.679301, 0.733453, -0.024448,
		45.358711, 45.006214, 49.119839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190502, 45.130791, 49.409946>,  <45.834221, 44.492798, 49.136955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190502, 45.130791, 49.409946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.796654, 45.154282, 49.475754>,  <45.560345, 45.168377, 49.515240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.796654, 45.154282, 49.475754>,  <46.190502, 45.130791, 49.409946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796654, 45.154282, 49.475754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174187, 0.401532, 0.899128,
		-0.013256, 0.913960, -0.405588,
		-0.984623, 0.058729, 0.164522,
		45.501266, 45.171902, 49.525112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222305, 45.852680, 49.641006>,  <46.190502, 45.130791, 49.409946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222305, 45.852680, 49.641006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.871475, 45.682674, 49.730545>,  <45.660976, 45.580669, 49.784267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.871475, 45.682674, 49.730545>,  <46.222305, 45.852680, 49.641006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871475, 45.682674, 49.730545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126938, 0.244370, 0.961338,
		-0.463283, 0.871577, -0.160379,
		-0.877072, -0.425014, 0.223848,
		45.608353, 45.555172, 49.797699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908077, 46.306541, 50.201626>,  <46.222305, 45.852680, 49.641006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908077, 46.306541, 50.201626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.714081, 45.957119, 50.218037>,  <45.597683, 45.747467, 50.227882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.714081, 45.957119, 50.218037>,  <45.908077, 46.306541, 50.201626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714081, 45.957119, 50.218037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098162, -0.007759, 0.995140,
		-0.868992, 0.486663, 0.089513,
		-0.484993, -0.873555, 0.041029,
		45.568584, 45.695053, 50.230347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342670, 46.486362, 50.562412>,  <45.908077, 46.306541, 50.201626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342670, 46.486362, 50.562412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.432304, 46.098259, 50.599052>,  <45.486084, 45.865398, 50.621037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.432304, 46.098259, 50.599052>,  <45.342670, 46.486362, 50.562412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432304, 46.098259, 50.599052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087296, 0.073627, 0.993458,
		-0.970653, -0.230613, -0.068201,
		0.224083, -0.970256, 0.091597,
		45.499531, 45.807182, 50.626534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984615, 46.252441, 51.143547>,  <45.342670, 46.486362, 50.562412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984615, 46.252441, 51.143547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.235985, 45.944561, 51.098568>,  <45.386806, 45.759834, 51.071579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.235985, 45.944561, 51.098568>,  <44.984615, 46.252441, 51.143547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235985, 45.944561, 51.098568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057974, -0.097813, 0.993515,
		-0.775706, -0.630870, -0.016845,
		0.628426, -0.769699, -0.112448,
		45.424511, 45.713650, 51.064835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672359, 45.646946, 51.553482>,  <44.984615, 46.252441, 51.143547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672359, 45.646946, 51.553482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.069687, 45.617592, 51.517849>,  <45.308083, 45.599979, 51.496468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.069687, 45.617592, 51.517849>,  <44.672359, 45.646946, 51.553482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.069687, 45.617592, 51.517849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091828, 0.034912, 0.995163,
		-0.069925, -0.996692, 0.041418,
		0.993317, -0.073390, -0.089083,
		45.367683, 45.595577, 51.491123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904305, 45.166351, 52.102959>,  <44.672359, 45.646946, 51.553482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904305, 45.166351, 52.102959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.250435, 45.338177, 51.999664>,  <45.458115, 45.441273, 51.937687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.250435, 45.338177, 51.999664>,  <44.904305, 45.166351, 52.102959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250435, 45.338177, 51.999664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332587, -0.106679, 0.937020,
		0.374957, -0.896715, -0.235178,
		0.865328, 0.429559, -0.258236,
		45.510033, 45.467045, 51.922195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417881, 44.748100, 52.447899>,  <44.904305, 45.166351, 52.102959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417881, 44.748100, 52.447899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.585396, 45.101700, 52.364796>,  <45.685905, 45.313862, 52.314934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.585396, 45.101700, 52.364796>,  <45.417881, 44.748100, 52.447899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585396, 45.101700, 52.364796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298888, 0.081852, 0.950771,
		0.857488, -0.460263, -0.229939,
		0.418784, 0.884001, -0.207754,
		45.711033, 45.366901, 52.302471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072529, 44.714550, 52.886238>,  <45.417881, 44.748100, 52.447899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072529, 44.714550, 52.886238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.041473, 45.103451, 52.797974>,  <46.022842, 45.336792, 52.745014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.041473, 45.103451, 52.797974>,  <46.072529, 44.714550, 52.886238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041473, 45.103451, 52.797974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353870, 0.233789, 0.905604,
		0.932067, -0.007777, -0.362203,
		-0.077636, 0.972256, -0.220659,
		46.018181, 45.395126, 52.731777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.718231, 44.988010, 52.849751>,  <46.072529, 44.714550, 52.886238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.718231, 44.988010, 52.849751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.460510, 45.278416, 52.945900>,  <46.305878, 45.452660, 53.003590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.460510, 45.278416, 52.945900>,  <46.718231, 44.988010, 52.849751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.460510, 45.278416, 52.945900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520179, 0.185620, 0.833642,
		0.560616, 0.662156, -0.497252,
		-0.644301, 0.726013, 0.240378,
		46.267220, 45.496220, 53.018013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.139191, 45.447292, 53.211235>,  <46.718231, 44.988010, 52.849751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.139191, 45.447292, 53.211235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.762192, 45.539650, 53.307892>,  <46.535992, 45.595066, 53.365887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.762192, 45.539650, 53.307892>,  <47.139191, 45.447292, 53.211235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762192, 45.539650, 53.307892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304246, 0.293487, 0.906256,
		0.138334, 0.927660, -0.346860,
		-0.942496, 0.230897, 0.241638,
		46.479443, 45.608917, 53.380383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.163986, 46.107185, 53.577507>,  <47.139191, 45.447292, 53.211235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.163986, 46.107185, 53.577507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.793419, 45.987907, 53.669449>,  <46.571079, 45.916340, 53.724613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.793419, 45.987907, 53.669449>,  <47.163986, 46.107185, 53.577507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.793419, 45.987907, 53.669449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102507, 0.387666, 0.916083,
		-0.362274, 0.872237, -0.328574,
		-0.926418, -0.298192, 0.229851,
		46.515495, 45.898449, 53.738403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.929775, 46.693584, 53.876022>,  <47.163986, 46.107185, 53.577507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.929775, 46.693584, 53.876022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.706390, 46.384903, 53.997742>,  <46.572357, 46.199696, 54.070774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.706390, 46.384903, 53.997742>,  <46.929775, 46.693584, 53.876022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.706390, 46.384903, 53.997742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108932, 0.295431, 0.949134,
		-0.822344, 0.563206, -0.080926,
		-0.558465, -0.771699, 0.304297,
		46.538853, 46.153393, 54.089031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.603832, 46.929806, 54.510498>,  <46.929775, 46.693584, 53.876022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.603832, 46.929806, 54.510498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.559929, 46.534668, 54.554523>,  <46.533585, 46.297585, 54.580940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.559929, 46.534668, 54.554523>,  <46.603832, 46.929806, 54.510498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559929, 46.534668, 54.554523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151446, 0.092818, 0.984098,
		-0.982353, 0.124684, 0.139417,
		-0.109761, -0.987845, 0.110063,
		46.527000, 46.238316, 54.587543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264118, 46.834652, 55.110989>,  <46.603832, 46.929806, 54.510498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264118, 46.834652, 55.110989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.409218, 46.465302, 55.060722>,  <46.496277, 46.243690, 55.030563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.409218, 46.465302, 55.060722>,  <46.264118, 46.834652, 55.110989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.409218, 46.465302, 55.060722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240615, -0.037476, 0.969897,
		-0.900288, -0.382066, 0.208583,
		0.362747, -0.923375, -0.125670,
		46.518044, 46.188290, 55.023022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992565, 46.451622, 55.814892>,  <46.264118, 46.834652, 55.110989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.992565, 46.451622, 55.814892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.286995, 46.230591, 55.658504>,  <46.463654, 46.097973, 55.564671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.286995, 46.230591, 55.658504>,  <45.992565, 46.451622, 55.814892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.286995, 46.230591, 55.658504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481377, 0.021247, 0.876256,
		-0.475891, -0.833192, 0.281637,
		0.736073, -0.552576, -0.390968,
		46.507816, 46.064819, 55.541214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.093197, 45.864407, 56.234024>,  <45.992565, 46.451622, 55.814892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.093197, 45.864407, 56.234024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.431129, 45.949986, 56.037868>,  <46.633888, 46.001331, 55.920174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.431129, 45.949986, 56.037868>,  <46.093197, 45.864407, 56.234024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.431129, 45.949986, 56.037868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505409, -0.018397, 0.862683,
		0.175546, -0.976672, -0.123673,
		0.844834, 0.213946, -0.490390,
		46.684578, 46.014168, 55.890751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.533607, 45.319195, 56.354496>,  <46.093197, 45.864407, 56.234024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.533607, 45.319195, 56.354496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.780563, 45.615955, 56.249874>,  <46.928738, 45.794010, 56.187103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.780563, 45.615955, 56.249874>,  <46.533607, 45.319195, 56.354496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.780563, 45.615955, 56.249874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460641, -0.071440, 0.884707,
		0.637680, -0.666693, -0.385857,
		0.617393, 0.741901, -0.261550,
		46.965782, 45.838524, 56.171410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.160496, 45.107647, 56.570568>,  <46.533607, 45.319195, 56.354496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.160496, 45.107647, 56.570568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.169136, 45.507423, 56.560394>,  <47.174320, 45.747292, 56.554291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.169136, 45.507423, 56.560394>,  <47.160496, 45.107647, 56.570568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.169136, 45.507423, 56.560394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437290, 0.013433, 0.899220,
		0.899061, -0.030549, -0.436757,
		0.021603, 0.999443, -0.025436,
		47.175617, 45.807255, 56.552765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.740547, 45.133930, 56.842964>,  <47.160496, 45.107647, 56.570568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.740547, 45.133930, 56.842964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.597786, 45.507221, 56.859474>,  <47.512131, 45.731197, 56.869381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.597786, 45.507221, 56.859474>,  <47.740547, 45.133930, 56.842964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.597786, 45.507221, 56.859474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349962, 0.092614, 0.932174,
		0.866109, 0.347141, -0.359649,
		-0.356905, 0.933228, 0.041273,
		47.490715, 45.787189, 56.871857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.295490, 45.539337, 57.078194>,  <47.740547, 45.133930, 56.842964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.295490, 45.539337, 57.078194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.956284, 45.739456, 57.148125>,  <47.752758, 45.859528, 57.190083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.956284, 45.739456, 57.148125>,  <48.295490, 45.539337, 57.078194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.956284, 45.739456, 57.148125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312429, 0.205490, 0.927449,
		0.428075, 0.841117, -0.330567,
		-0.848021, 0.500296, 0.174824,
		47.701878, 45.889545, 57.200573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.503773, 46.067333, 57.416168>,  <48.295490, 45.539337, 57.078194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.503773, 46.067333, 57.416168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.123421, 46.005234, 57.523293>,  <47.895210, 45.967972, 57.587566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.123421, 46.005234, 57.523293>,  <48.503773, 46.067333, 57.416168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.123421, 46.005234, 57.523293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191397, 0.385082, 0.902817,
		-0.243292, 0.909730, -0.336452,
		-0.950882, -0.155252, 0.267807,
		47.838158, 45.958656, 57.603634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<46.603756, 46.010902, 57.837284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.981049, 46.108192, 57.746815>,  <47.207424, 46.166565, 57.692532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.981049, 46.108192, 57.746815>,  <46.603756, 46.010902, 57.837284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.981049, 46.108192, 57.746815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217789, -0.061210, -0.974075,
		-0.250762, 0.968037, -0.004764,
		0.943232, 0.243224, -0.226177,
		47.264019, 46.181160, 57.678963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.647457, 46.665062, 57.375542>,  <46.603756, 46.010902, 57.837284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.647457, 46.665062, 57.375542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.969879, 46.432877, 57.329346>,  <47.163334, 46.293568, 57.301628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.969879, 46.432877, 57.329346>,  <46.647457, 46.665062, 57.375542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.969879, 46.432877, 57.329346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168204, -0.037585, -0.985035,
		0.567433, 0.813420, -0.127932,
		0.806056, -0.580461, -0.115493,
		47.211697, 46.258739, 57.294697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084023, 47.022282, 56.865040>,  <46.647457, 46.665062, 57.375542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084023, 47.022282, 56.865040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.200150, 46.639511, 56.864559>,  <47.269825, 46.409847, 56.864269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.200150, 46.639511, 56.864559>,  <47.084023, 47.022282, 56.865040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.200150, 46.639511, 56.864559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187063, -0.055522, -0.980778,
		0.938467, 0.284965, -0.195125,
		0.290321, -0.956929, -0.001200,
		47.287247, 46.352432, 56.864201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.412876, 47.061695, 56.316509>,  <47.084023, 47.022282, 56.865040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.412876, 47.061695, 56.316509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.352776, 46.673576, 56.392357>,  <47.316715, 46.440704, 56.437866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.352776, 46.673576, 56.392357>,  <47.412876, 47.061695, 56.316509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.352776, 46.673576, 56.392357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176982, -0.162300, -0.970740,
		0.972678, -0.179412, -0.147339,
		-0.150249, -0.970294, 0.189618,
		47.307701, 46.382488, 56.449242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.622406, 46.845287, 55.709499>,  <47.412876, 47.061695, 56.316509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.622406, 46.845287, 55.709499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.448959, 46.518661, 55.861916>,  <47.344891, 46.322685, 55.953365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.448959, 46.518661, 55.861916>,  <47.622406, 46.845287, 55.709499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.448959, 46.518661, 55.861916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280612, -0.279475, -0.918232,
		0.856290, -0.505088, -0.107953,
		-0.433618, -0.816566, 0.381045,
		47.318874, 46.273693, 55.976231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.800392, 46.109207, 55.254044>,  <47.622406, 46.845287, 55.709499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.800392, 46.109207, 55.254044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.450745, 46.101509, 55.448174>,  <47.240955, 46.096889, 55.564651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.450745, 46.101509, 55.448174>,  <47.800392, 46.109207, 55.254044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.450745, 46.101509, 55.448174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456102, -0.310999, -0.833817,
		0.166986, -0.950215, 0.263072,
		-0.874121, -0.019248, 0.485328,
		47.188507, 46.095734, 55.593773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.608376, 45.587948, 54.992485>,  <47.800392, 46.109207, 55.254044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.608376, 45.587948, 54.992485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.276321, 45.742596, 55.153183>,  <47.077091, 45.835384, 55.249603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.276321, 45.742596, 55.153183>,  <47.608376, 45.587948, 54.992485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.276321, 45.742596, 55.153183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538645, -0.369984, -0.756950,
		-0.144014, -0.844769, 0.515388,
		-0.830134, 0.386622, 0.401748,
		47.027283, 45.858582, 55.273708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.009983, 45.004173, 54.861912>,  <47.608376, 45.587948, 54.992485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.009983, 45.004173, 54.861912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.844528, 45.363316, 54.922256>,  <46.745255, 45.578800, 54.958462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.844528, 45.363316, 54.922256>,  <47.009983, 45.004173, 54.861912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.844528, 45.363316, 54.922256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548702, -0.113617, -0.828261,
		-0.726522, -0.425372, 0.539653,
		-0.413633, 0.897859, 0.150857,
		46.720440, 45.632671, 54.967514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.344723, 44.921463, 54.615093>,  <47.009983, 45.004173, 54.861912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.344723, 44.921463, 54.615093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.388252, 45.319084, 54.614059>,  <46.414371, 45.557659, 54.613438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.388252, 45.319084, 54.614059>,  <46.344723, 44.921463, 54.615093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.388252, 45.319084, 54.614059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440805, 0.045925, -0.896427,
		-0.890982, 0.098694, 0.443183,
		0.108825, 0.994058, -0.002586,
		46.420898, 45.617302, 54.613285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673119, 45.235134, 54.568954>,  <46.344723, 44.921463, 54.615093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673119, 45.235134, 54.568954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.943413, 45.487366, 54.416245>,  <46.105591, 45.638702, 54.324619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.943413, 45.487366, 54.416245>,  <45.673119, 45.235134, 54.568954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943413, 45.487366, 54.416245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517365, 0.036780, -0.854974,
		-0.525086, 0.775255, 0.351092,
		0.675736, 0.630577, -0.381777,
		46.146133, 45.676540, 54.301712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291061, 45.636639, 54.104424>,  <45.673119, 45.235134, 54.568954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291061, 45.636639, 54.104424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.667229, 45.718742, 53.995991>,  <45.892929, 45.768005, 53.930931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.667229, 45.718742, 53.995991>,  <45.291061, 45.636639, 54.104424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.667229, 45.718742, 53.995991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293822, 0.089306, -0.951679,
		-0.171127, 0.974625, 0.144293,
		0.940417, 0.205255, -0.271084,
		45.949352, 45.780319, 53.914665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.224243, 46.085796, 53.677402>,  <45.291061, 45.636639, 54.104424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.224243, 46.085796, 53.677402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.591553, 45.962872, 53.577530>,  <45.811939, 45.889118, 53.517609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.591553, 45.962872, 53.577530>,  <45.224243, 46.085796, 53.677402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591553, 45.962872, 53.577530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239000, 0.072556, -0.968305,
		0.315686, 0.948839, -0.006821,
		0.918271, -0.307311, -0.249678,
		45.867035, 45.870678, 53.502628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459595, 46.528889, 53.199062>,  <45.224243, 46.085796, 53.677402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459595, 46.528889, 53.199062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.676613, 46.195671, 53.155830>,  <45.806824, 45.995739, 53.129890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.676613, 46.195671, 53.155830>,  <45.459595, 46.528889, 53.199062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676613, 46.195671, 53.155830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136890, 0.039262, -0.989808,
		0.828799, 0.551809, -0.092734,
		0.542544, -0.833046, -0.108077,
		45.839375, 45.945759, 53.123405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746906, 46.640533, 52.546539>,  <45.459595, 46.528889, 53.199062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746906, 46.640533, 52.546539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.861420, 46.258476, 52.576862>,  <45.930126, 46.029243, 52.595058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.861420, 46.258476, 52.576862>,  <45.746906, 46.640533, 52.546539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.861420, 46.258476, 52.576862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016476, -0.084019, -0.996328,
		0.958003, 0.283984, -0.039791,
		0.286284, -0.955141, 0.075812,
		45.947304, 45.971935, 52.599606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204693, 46.497868, 52.062012>,  <45.746906, 46.640533, 52.546539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204693, 46.497868, 52.062012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.072990, 46.128662, 52.141647>,  <45.993969, 45.907139, 52.189430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.072990, 46.128662, 52.141647>,  <46.204693, 46.497868, 52.062012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.072990, 46.128662, 52.141647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065404, -0.188049, -0.979980,
		0.941974, -0.335684, 0.001547,
		-0.329254, -0.923014, 0.199092,
		45.974213, 45.851757, 52.201374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.644363, 45.973995, 51.630871>,  <46.204693, 46.497868, 52.062012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.644363, 45.973995, 51.630871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.280388, 45.833858, 51.719650>,  <46.062000, 45.749775, 51.772919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.280388, 45.833858, 51.719650>,  <46.644363, 45.973995, 51.630871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280388, 45.833858, 51.719650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154851, -0.209460, -0.965478,
		0.384742, -0.912898, 0.136345,
		-0.909942, -0.350347, 0.221952,
		46.007404, 45.728756, 51.786236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.630653, 45.318424, 51.248699>,  <46.644363, 45.973995, 51.630871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.630653, 45.318424, 51.248699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.246460, 45.410030, 51.311966>,  <46.015942, 45.464993, 51.349926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.246460, 45.410030, 51.311966>,  <46.630653, 45.318424, 51.248699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.246460, 45.410030, 51.311966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204635, -0.195891, -0.959037,
		-0.188648, -0.953509, 0.235015,
		-0.960487, 0.229013, 0.158167,
		45.958313, 45.478733, 51.359417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.318470, 44.821289, 50.890736>,  <46.630653, 45.318424, 51.248699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.318470, 44.821289, 50.890736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.051430, 45.114246, 50.944279>,  <45.891205, 45.290020, 50.976402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.051430, 45.114246, 50.944279>,  <46.318470, 44.821289, 50.890736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051430, 45.114246, 50.944279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301679, -0.101737, -0.947966,
		-0.680665, -0.673239, 0.288867,
		-0.667596, 0.732392, 0.133853,
		45.851151, 45.333965, 50.984436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653931, 44.471329, 50.630745>,  <46.318470, 44.821289, 50.890736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653931, 44.471329, 50.630745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.599609, 44.867435, 50.618607>,  <45.567017, 45.105099, 50.611324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.599609, 44.867435, 50.618607>,  <45.653931, 44.471329, 50.630745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599609, 44.867435, 50.618607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285853, -0.068493, -0.955823,
		-0.948602, -0.121131, 0.292374,
		-0.135805, 0.990271, -0.030347,
		45.558868, 45.164516, 50.609501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970383, 44.555271, 50.312477>,  <45.653931, 44.471329, 50.630745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.970383, 44.555271, 50.312477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.166794, 44.900909, 50.268250>,  <45.284641, 45.108292, 50.241714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.166794, 44.900909, 50.268250>,  <44.970383, 44.555271, 50.312477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.166794, 44.900909, 50.268250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396963, 0.108965, -0.911343,
		-0.775444, 0.491384, 0.396521,
		0.491026, 0.864100, -0.110565,
		45.314102, 45.160141, 50.235081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441143, 45.044811, 50.093712>,  <44.970383, 44.555271, 50.312477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441143, 45.044811, 50.093712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.809860, 45.165997, 49.996964>,  <45.031090, 45.238708, 49.938915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.809860, 45.165997, 49.996964>,  <44.441143, 45.044811, 50.093712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809860, 45.165997, 49.996964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305403, 0.183223, -0.934429,
		-0.238785, 0.935222, 0.261422,
		0.921798, 0.302967, -0.241869,
		45.086399, 45.256886, 49.924404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358665, 45.657188, 49.682926>,  <44.441143, 45.044811, 50.093712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358665, 45.657188, 49.682926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.720619, 45.505211, 49.606155>,  <44.937790, 45.414024, 49.560093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.720619, 45.505211, 49.606155>,  <44.358665, 45.657188, 49.682926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720619, 45.505211, 49.606155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228300, -0.052643, -0.972167,
		0.359263, 0.923512, -0.134376,
		0.904881, -0.379941, -0.191925,
		44.992085, 45.391228, 49.548576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568100, 46.026192, 49.078796>,  <44.358665, 45.657188, 49.682926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568100, 46.026192, 49.078796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.803444, 45.703087, 49.093498>,  <44.944653, 45.509224, 49.102318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.803444, 45.703087, 49.093498>,  <44.568100, 46.026192, 49.078796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803444, 45.703087, 49.093498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111498, -0.126067, -0.985736,
		0.800872, 0.575873, -0.164237,
		0.588364, -0.807761, 0.036755,
		44.979954, 45.460758, 49.104527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118988, 46.157406, 48.535160>,  <44.568100, 46.026192, 49.078796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118988, 46.157406, 48.535160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.169586, 45.764458, 48.590225>,  <45.199944, 45.528690, 48.623264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.169586, 45.764458, 48.590225>,  <45.118988, 46.157406, 48.535160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169586, 45.764458, 48.590225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005109, -0.139417, -0.990221,
		0.991955, 0.124552, -0.022654,
		0.126492, -0.982370, 0.137659,
		45.207535, 45.469746, 48.631523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689198, 45.929485, 48.113632>,  <45.118988, 46.157406, 48.535160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689198, 45.929485, 48.113632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.463341, 45.604553, 48.172020>,  <45.327827, 45.409595, 48.207054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.463341, 45.604553, 48.172020>,  <45.689198, 45.929485, 48.113632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463341, 45.604553, 48.172020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026551, -0.194649, -0.980514,
		0.824910, -0.549762, 0.131475,
		-0.564641, -0.812326, 0.145971,
		45.293949, 45.360855, 48.215813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.030037, 45.450153, 47.759964>,  <45.689198, 45.929485, 48.113632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.030037, 45.450153, 47.759964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.668510, 45.286453, 47.809978>,  <45.451595, 45.188232, 47.839989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.668510, 45.286453, 47.809978>,  <46.030037, 45.450153, 47.759964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.668510, 45.286453, 47.809978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013537, -0.319398, -0.947524,
		0.427709, -0.854694, 0.294217,
		-0.903815, -0.409247, 0.125039,
		45.397366, 45.163677, 47.847488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.066681, 44.885197, 47.416897>,  <46.030037, 45.450153, 47.759964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.066681, 44.885197, 47.416897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.671204, 44.932076, 47.454330>,  <45.433918, 44.960201, 47.476791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.671204, 44.932076, 47.454330>,  <46.066681, 44.885197, 47.416897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671204, 44.932076, 47.454330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127187, -0.324523, -0.937288,
		-0.079473, -0.938590, 0.335758,
		-0.988690, 0.117194, 0.093586,
		45.374596, 44.967236, 47.482407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.830616, 44.253513, 47.162384>,  <46.066681, 44.885197, 47.416897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.830616, 44.253513, 47.162384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.530426, 44.516937, 47.140160>,  <45.350311, 44.674992, 47.126827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.530426, 44.516937, 47.140160>,  <45.830616, 44.253513, 47.162384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.530426, 44.516937, 47.140160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217586, -0.325579, -0.920138,
		-0.624059, -0.678448, 0.387632,
		-0.750471, 0.658564, -0.055559,
		45.305286, 44.714508, 47.123493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248051, 43.900646, 46.824577>,  <45.830616, 44.253513, 47.162384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248051, 43.900646, 46.824577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.159950, 44.287838, 46.776398>,  <45.107090, 44.520153, 46.747490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.159950, 44.287838, 46.776398>,  <45.248051, 43.900646, 46.824577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159950, 44.287838, 46.776398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310731, -0.186669, -0.931987,
		-0.924628, -0.167844, 0.341895,
		-0.220250, 0.967979, -0.120445,
		45.093876, 44.578232, 46.740265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.467312, 43.656410, 33.639000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.818275, 43.847607, 33.655346>,  <46.028854, 43.962326, 33.665154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.818275, 43.847607, 33.655346>,  <45.467312, 43.656410, 33.639000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818275, 43.847607, 33.655346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108924, 0.281445, -0.953375,
		-0.467205, 0.832053, 0.299009,
		0.877414, 0.477991, 0.040862,
		46.081501, 43.991005, 33.667603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.354492, 44.111893, 33.077255>,  <45.467312, 43.656410, 33.639000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.354492, 44.111893, 33.077255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740685, 44.095173, 33.180088>,  <45.972401, 44.085140, 33.241787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740685, 44.095173, 33.180088>,  <45.354492, 44.111893, 33.077255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740685, 44.095173, 33.180088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260410, 0.174378, -0.949620,
		-0.005132, 0.983791, 0.179245,
		0.965484, -0.041803, 0.257084,
		46.030331, 44.082630, 33.257214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.597412, 44.718742, 32.874851>,  <45.354492, 44.111893, 33.077255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.597412, 44.718742, 32.874851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.904305, 44.463848, 32.903931>,  <46.088440, 44.310913, 32.921379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.904305, 44.463848, 32.903931>,  <45.597412, 44.718742, 32.874851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.904305, 44.463848, 32.903931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119556, 0.030738, -0.992352,
		0.630124, 0.770059, 0.099768,
		0.767236, -0.637232, 0.072696,
		46.134476, 44.272678, 32.925739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955627, 45.013809, 32.675957>,  <45.597412, 44.718742, 32.874851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955627, 45.013809, 32.675957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.584824, 45.147854, 32.608597>,  <44.362343, 45.228279, 32.568180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.584824, 45.147854, 32.608597>,  <44.955627, 45.013809, 32.675957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584824, 45.147854, 32.608597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164862, 0.039197, 0.985538,
		0.336865, 0.941363, 0.018911,
		-0.927007, 0.335111, -0.168399,
		44.306721, 45.248386, 32.558079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808918, 45.672234, 33.035942>,  <44.955627, 45.013809, 32.675957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808918, 45.672234, 33.035942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479416, 45.456696, 32.965431>,  <44.281715, 45.327374, 32.923126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479416, 45.456696, 32.965431>,  <44.808918, 45.672234, 33.035942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479416, 45.456696, 32.965431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234199, 0.040262, 0.971355,
		-0.516309, 0.841445, -0.159362,
		-0.823757, -0.538841, -0.176278,
		44.232288, 45.295044, 32.912548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352009, 45.905331, 33.507023>,  <44.808918, 45.672234, 33.035942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352009, 45.905331, 33.507023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.174171, 45.565914, 33.392258>,  <44.067467, 45.362267, 33.323399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.174171, 45.565914, 33.392258>,  <44.352009, 45.905331, 33.507023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174171, 45.565914, 33.392258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515818, -0.019329, 0.856480,
		-0.732301, 0.528783, -0.429097,
		-0.444598, -0.848537, -0.286911,
		44.040791, 45.311352, 33.306183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644913, 45.965157, 33.673241>,  <44.352009, 45.905331, 33.507023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644913, 45.965157, 33.673241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.716202, 45.571587, 33.677814>,  <43.758976, 45.335445, 33.680557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.716202, 45.571587, 33.677814>,  <43.644913, 45.965157, 33.673241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716202, 45.571587, 33.677814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526182, -0.085475, 0.846065,
		-0.831487, -0.156801, -0.532957,
		0.178218, -0.983925, 0.011434,
		43.769669, 45.276409, 33.681244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046867, 45.734581, 33.939552>,  <43.644913, 45.965157, 33.673241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046867, 45.734581, 33.939552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.266106, 45.400837, 33.963020>,  <43.397648, 45.200592, 33.977100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.266106, 45.400837, 33.963020>,  <43.046867, 45.734581, 33.939552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266106, 45.400837, 33.963020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333931, -0.153968, 0.929937,
		-0.766866, -0.529285, -0.363007,
		0.548093, -0.834357, 0.058672,
		43.430534, 45.150532, 33.980621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579815, 45.280258, 34.229099>,  <43.046867, 45.734581, 33.939552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579815, 45.280258, 34.229099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.960342, 45.169209, 34.282654>,  <43.188660, 45.102577, 34.314785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.960342, 45.169209, 34.282654>,  <42.579815, 45.280258, 34.229099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960342, 45.169209, 34.282654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196277, -0.210760, 0.957630,
		-0.237649, -0.937284, -0.254991,
		0.951314, -0.277629, 0.133881,
		43.245735, 45.085922, 34.322819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540386, 44.614128, 34.601212>,  <42.579815, 45.280258, 34.229099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540386, 44.614128, 34.601212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.896370, 44.773960, 34.689129>,  <43.109959, 44.869858, 34.741879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.896370, 44.773960, 34.689129>,  <42.540386, 44.614128, 34.601212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896370, 44.773960, 34.689129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149132, -0.200469, 0.968283,
		0.430965, -0.894512, -0.118820,
		0.889960, 0.399576, 0.219796,
		43.163357, 44.893833, 34.755066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986313, 44.113060, 35.055305>,  <42.540386, 44.614128, 34.601212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986313, 44.113060, 35.055305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.160187, 44.470131, 35.102940>,  <43.264511, 44.684372, 35.131519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.160187, 44.470131, 35.102940>,  <42.986313, 44.113060, 35.055305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160187, 44.470131, 35.102940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030882, -0.146932, 0.988664,
		0.900052, -0.426082, -0.091437,
		0.434687, 0.892673, 0.119088,
		43.290592, 44.737934, 35.138664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423107, 44.060143, 35.689499>,  <42.986313, 44.113060, 35.055305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423107, 44.060143, 35.689499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402130, 44.453091, 35.617725>,  <43.389545, 44.688858, 35.574661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402130, 44.453091, 35.617725>,  <43.423107, 44.060143, 35.689499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402130, 44.453091, 35.617725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077652, 0.175129, 0.981478,
		0.995600, 0.065403, 0.067099,
		-0.052441, 0.982371, -0.179437,
		43.386398, 44.747803, 35.563892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952393, 44.451508, 36.151585>,  <43.423107, 44.060143, 35.689499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952393, 44.451508, 36.151585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.698189, 44.743488, 36.050953>,  <43.545666, 44.918678, 35.990574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.698189, 44.743488, 36.050953>,  <43.952393, 44.451508, 36.151585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698189, 44.743488, 36.050953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086312, 0.256632, 0.962648,
		0.767254, 0.633486, -0.100088,
		-0.635510, 0.729956, -0.251579,
		43.507534, 44.962475, 35.975479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117508, 44.915195, 36.560215>,  <43.952393, 44.451508, 36.151585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117508, 44.915195, 36.560215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746132, 45.010265, 36.446018>,  <43.523304, 45.067307, 36.377502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746132, 45.010265, 36.446018>,  <44.117508, 44.915195, 36.560215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746132, 45.010265, 36.446018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263013, 0.122139, 0.957030,
		0.262331, 0.963635, -0.050887,
		-0.928443, 0.237675, -0.285489,
		43.467598, 45.081570, 36.360371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934101, 45.523731, 36.860603>,  <44.117508, 44.915195, 36.560215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934101, 45.523731, 36.860603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.579376, 45.353302, 36.789013>,  <43.366543, 45.251045, 36.746059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.579376, 45.353302, 36.789013>,  <43.934101, 45.523731, 36.860603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579376, 45.353302, 36.789013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255383, 0.129054, 0.958188,
		-0.385163, 0.895436, -0.223259,
		-0.886808, -0.426075, -0.178972,
		43.313335, 45.225479, 36.735321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514889, 45.910351, 37.337673>,  <43.934101, 45.523731, 36.860603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514889, 45.910351, 37.337673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295433, 45.595860, 37.223949>,  <43.163761, 45.407166, 37.155716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295433, 45.595860, 37.223949>,  <43.514889, 45.910351, 37.337673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295433, 45.595860, 37.223949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340878, -0.100151, 0.934758,
		-0.763411, 0.609761, -0.213062,
		-0.548641, -0.786232, -0.284311,
		43.130840, 45.359989, 37.138657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935802, 46.025639, 37.737686>,  <43.514889, 45.910351, 37.337673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935802, 46.025639, 37.737686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.883575, 45.650635, 37.608673>,  <42.852238, 45.425632, 37.531265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.883575, 45.650635, 37.608673>,  <42.935802, 46.025639, 37.737686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883575, 45.650635, 37.608673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350816, -0.260583, 0.899458,
		-0.927297, 0.230591, -0.294869,
		-0.130569, -0.937509, -0.322533,
		42.844406, 45.369381, 37.511913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215912, 45.783112, 37.715401>,  <42.935802, 46.025639, 37.737686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215912, 45.783112, 37.715401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.462677, 45.471127, 37.757507>,  <42.610737, 45.283936, 37.782772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.462677, 45.471127, 37.757507>,  <42.215912, 45.783112, 37.715401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462677, 45.471127, 37.757507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425397, -0.217915, 0.878380,
		-0.662164, -0.586661, -0.466227,
		0.616909, -0.779963, 0.105268,
		42.647751, 45.237137, 37.789089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795727, 45.255997, 37.940830>,  <42.215912, 45.783112, 37.715401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795727, 45.255997, 37.940830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.145973, 45.093449, 38.045258>,  <42.356121, 44.995922, 38.107914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.145973, 45.093449, 38.045258>,  <41.795727, 45.255997, 37.940830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145973, 45.093449, 38.045258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389371, -0.274038, 0.879371,
		-0.285810, -0.871644, -0.398182,
		0.875616, -0.406373, 0.261070,
		42.408657, 44.971539, 38.123577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648632, 44.720688, 38.329338>,  <41.795727, 45.255997, 37.940830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648632, 44.720688, 38.329338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.026108, 44.780510, 38.447376>,  <42.252594, 44.816402, 38.518200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.026108, 44.780510, 38.447376>,  <41.648632, 44.720688, 38.329338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026108, 44.780510, 38.447376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266497, -0.184893, 0.945936,
		0.196028, -0.971313, -0.134626,
		0.943691, 0.149552, 0.295096,
		42.309216, 44.825375, 38.535904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758598, 44.111313, 38.844135>,  <41.648632, 44.720688, 38.329338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758598, 44.111313, 38.844135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046753, 44.377239, 38.923191>,  <42.219646, 44.536797, 38.970623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046753, 44.377239, 38.923191>,  <41.758598, 44.111313, 38.844135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046753, 44.377239, 38.923191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010741, -0.295617, 0.955246,
		0.693490, -0.686023, -0.220099,
		0.720386, 0.664818, 0.197639,
		42.262867, 44.576683, 38.982483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056801, 43.856937, 39.449162>,  <41.758598, 44.111313, 38.844135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056801, 43.856937, 39.449162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.233315, 44.215763, 39.458538>,  <42.339222, 44.431057, 39.464165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.233315, 44.215763, 39.458538>,  <42.056801, 43.856937, 39.449162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233315, 44.215763, 39.458538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280480, -0.162695, 0.945971,
		0.852406, -0.410870, -0.323403,
		0.441287, 0.897060, 0.023442,
		42.365700, 44.484882, 39.465572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656418, 43.835522, 39.892902>,  <42.056801, 43.856937, 39.449162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656418, 43.835522, 39.892902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580582, 44.228245, 39.897133>,  <42.535080, 44.463879, 39.899673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580582, 44.228245, 39.897133>,  <42.656418, 43.835522, 39.892902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580582, 44.228245, 39.897133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358070, 0.059103, 0.931822,
		0.914244, 0.180454, -0.362761,
		-0.189591, 0.981806, 0.010580,
		42.523705, 44.522785, 39.900307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281933, 44.128471, 40.188496>,  <42.656418, 43.835522, 39.892902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281933, 44.128471, 40.188496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.961655, 44.364674, 40.228874>,  <42.769485, 44.506393, 40.253101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.961655, 44.364674, 40.228874>,  <43.281933, 44.128471, 40.188496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961655, 44.364674, 40.228874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173896, 0.067843, 0.982424,
		0.573274, 0.804180, -0.157007,
		-0.800698, 0.590501, 0.100951,
		42.721447, 44.541824, 40.259159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396275, 44.638798, 40.708027>,  <43.281933, 44.128471, 40.188496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396275, 44.638798, 40.708027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.996445, 44.649178, 40.702698>,  <42.756546, 44.655407, 40.699501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.996445, 44.649178, 40.702698>,  <43.396275, 44.638798, 40.708027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996445, 44.649178, 40.702698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012474, 0.032635, 0.999390,
		0.026372, 0.999130, -0.032297,
		-0.999574, 0.025953, -0.013324,
		42.696571, 44.656963, 40.698700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118183, 45.342339, 41.018440>,  <43.396275, 44.638798, 40.708027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118183, 45.342339, 41.018440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.840691, 45.055542, 41.045734>,  <42.674194, 44.883465, 41.062111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.840691, 45.055542, 41.045734>,  <43.118183, 45.342339, 41.018440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840691, 45.055542, 41.045734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166773, 0.252073, 0.953229,
		-0.700660, 0.649905, -0.294446,
		-0.693730, -0.716995, 0.068231,
		42.632572, 44.840443, 41.066204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541878, 45.663193, 41.419693>,  <43.118183, 45.342339, 41.018440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541878, 45.663193, 41.419693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.481621, 45.268105, 41.436253>,  <42.445465, 45.031052, 41.446186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.481621, 45.268105, 41.436253>,  <42.541878, 45.663193, 41.419693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481621, 45.268105, 41.436253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033052, 0.046883, 0.998353,
		-0.988035, 0.149031, -0.039709,
		-0.150647, -0.987720, 0.041396,
		42.436428, 44.971786, 41.448673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897511, 45.572590, 41.805607>,  <42.541878, 45.663193, 41.419693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897511, 45.572590, 41.805607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.089798, 45.222118, 41.819592>,  <42.205170, 45.011837, 41.827980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.089798, 45.222118, 41.819592>,  <41.897511, 45.572590, 41.805607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089798, 45.222118, 41.819592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016312, 0.030926, 0.999389,
		-0.876723, -0.480995, 0.000575,
		0.480719, -0.876178, 0.034959,
		42.234013, 44.959267, 41.830078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459908, 45.137596, 42.088837>,  <41.897511, 45.572590, 41.805607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459908, 45.137596, 42.088837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.830994, 44.995205, 42.133785>,  <42.053646, 44.909771, 42.160755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.830994, 44.995205, 42.133785>,  <41.459908, 45.137596, 42.088837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830994, 44.995205, 42.133785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105170, 0.039575, 0.993667,
		-0.358168, -0.933657, -0.000724,
		0.927715, -0.355976, 0.112367,
		42.109306, 44.888412, 42.167496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356125, 44.718090, 42.664906>,  <41.459908, 45.137596, 42.088837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356125, 44.718090, 42.664906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.749519, 44.789291, 42.651783>,  <41.985554, 44.832012, 42.643909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.749519, 44.789291, 42.651783>,  <41.356125, 44.718090, 42.664906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749519, 44.789291, 42.651783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008154, 0.137511, 0.990467,
		0.180817, -0.974374, 0.133788,
		0.983483, 0.178003, -0.032810,
		42.044563, 44.842690, 42.641941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483242, 44.571045, 43.395466>,  <41.356125, 44.718090, 42.664906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483242, 44.571045, 43.395466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.820557, 44.709560, 43.231052>,  <42.022945, 44.792667, 43.132404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.820557, 44.709560, 43.231052>,  <41.483242, 44.571045, 43.395466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820557, 44.709560, 43.231052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471236, -0.108612, 0.875294,
		0.258458, -0.931821, -0.254774,
		0.843289, 0.346285, -0.411036,
		42.073544, 44.813446, 43.107742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041260, 44.078205, 43.412315>,  <41.483242, 44.571045, 43.395466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041260, 44.078205, 43.412315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.186150, 44.450893, 43.422745>,  <42.273083, 44.674507, 43.429001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.186150, 44.450893, 43.422745>,  <42.041260, 44.078205, 43.412315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186150, 44.450893, 43.422745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460095, -0.203060, 0.864338,
		0.810619, -0.301092, -0.502236,
		0.362229, 0.931724, 0.026074,
		42.294819, 44.730412, 43.430569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.835999, 44.018661, 43.965733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749886, 44.408066, 43.934925>,  <42.698219, 44.641708, 43.916443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749886, 44.408066, 43.934925>,  <42.835999, 44.018661, 43.965733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749886, 44.408066, 43.934925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001785, 0.078473, 0.996915,
		0.976550, 0.214757, -0.015156,
		-0.215284, 0.973510, -0.077017,
		42.685299, 44.700119, 43.911819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367226, 44.299343, 44.315010>,  <42.835999, 44.018661, 43.965733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367226, 44.299343, 44.315010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068993, 44.565731, 44.305248>,  <42.890053, 44.725563, 44.299389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068993, 44.565731, 44.305248>,  <43.367226, 44.299343, 44.315010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068993, 44.565731, 44.305248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053561, 0.096390, 0.993901,
		0.664256, 0.739729, -0.107537,
		-0.745583, 0.665965, -0.024407,
		42.845318, 44.765522, 44.297928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572628, 44.746483, 44.756542>,  <43.367226, 44.299343, 44.315010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572628, 44.746483, 44.756542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188484, 44.855164, 44.731606>,  <42.957996, 44.920372, 44.716644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188484, 44.855164, 44.731606>,  <43.572628, 44.746483, 44.756542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188484, 44.855164, 44.731606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062079, 0.009573, 0.998025,
		0.271763, 0.962334, 0.007673,
		-0.960360, 0.271703, -0.062342,
		42.900375, 44.936676, 44.712902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152969, 45.227367, 44.940048>,  <43.572628, 44.746483, 44.756542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152969, 45.227367, 44.940048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485710, 45.031406, 45.044365>,  <44.685356, 44.913830, 45.106956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485710, 45.031406, 45.044365>,  <44.152969, 45.227367, 44.940048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485710, 45.031406, 45.044365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224895, -0.132045, -0.965394,
		0.507388, 0.861718, 0.000335,
		0.831853, -0.489905, 0.260794,
		44.735268, 44.884434, 45.122604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674732, 45.426311, 44.479641>,  <44.152969, 45.227367, 44.940048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674732, 45.426311, 44.479641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816757, 45.073204, 44.602711>,  <44.901970, 44.861340, 44.676552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816757, 45.073204, 44.602711>,  <44.674732, 45.426311, 44.479641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816757, 45.073204, 44.602711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244877, -0.229798, -0.941928,
		0.902202, 0.409780, 0.134577,
		0.355058, -0.882764, 0.307670,
		44.923275, 44.808376, 44.695011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.287411, 45.386696, 44.193726>,  <44.674732, 45.426311, 44.479641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.287411, 45.386696, 44.193726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184967, 45.013557, 44.295078>,  <45.123501, 44.789673, 44.355888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184967, 45.013557, 44.295078>,  <45.287411, 45.386696, 44.193726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184967, 45.013557, 44.295078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205499, -0.308673, -0.928704,
		0.944552, -0.185780, 0.270753,
		-0.256108, -0.932849, 0.253381,
		45.108135, 44.733704, 44.371094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.823959, 45.060951, 43.959705>,  <45.287411, 45.386696, 44.193726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.823959, 45.060951, 43.959705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.542511, 44.783142, 44.019779>,  <45.373642, 44.616455, 44.055824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.542511, 44.783142, 44.019779>,  <45.823959, 45.060951, 43.959705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542511, 44.783142, 44.019779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200569, -0.396879, -0.895689,
		0.681684, -0.600101, 0.418552,
		-0.703618, -0.694526, 0.150184,
		45.331425, 44.574783, 44.064835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032642, 44.359020, 43.643394>,  <45.823959, 45.060951, 43.959705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032642, 44.359020, 43.643394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.634842, 44.317429, 43.648262>,  <45.396160, 44.292473, 43.651184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.634842, 44.317429, 43.648262>,  <46.032642, 44.359020, 43.643394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634842, 44.317429, 43.648262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046755, -0.545139, -0.837041,
		0.093669, -0.831872, 0.547005,
		-0.994505, -0.103980, 0.012169,
		45.336491, 44.286236, 43.651913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850239, 43.629326, 43.534775>,  <46.032642, 44.359020, 43.643394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850239, 43.629326, 43.534775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539261, 43.849224, 43.412556>,  <45.352673, 43.981163, 43.339226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539261, 43.849224, 43.412556>,  <45.850239, 43.629326, 43.534775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539261, 43.849224, 43.412556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023706, -0.459842, -0.887684,
		-0.628505, -0.697368, 0.344469,
		-0.777444, 0.549748, -0.305545,
		45.306026, 44.014149, 43.320892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467319, 43.188454, 43.025097>,  <45.850239, 43.629326, 43.534775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467319, 43.188454, 43.025097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.300209, 43.547218, 42.967106>,  <45.199944, 43.762478, 42.932312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.300209, 43.547218, 42.967106>,  <45.467319, 43.188454, 43.025097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300209, 43.547218, 42.967106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093875, -0.201325, -0.975016,
		-0.903688, -0.393728, 0.168306,
		-0.417775, 0.896910, -0.144974,
		45.174877, 43.816292, 42.923615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.810173, 43.055496, 42.694164>,  <45.467319, 43.188454, 43.025097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.810173, 43.055496, 42.694164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932198, 43.407997, 42.549759>,  <45.005413, 43.619499, 42.463116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932198, 43.407997, 42.549759>,  <44.810173, 43.055496, 42.694164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932198, 43.407997, 42.549759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266774, -0.284828, -0.920709,
		-0.914203, 0.377185, 0.148204,
		0.305065, 0.881252, -0.361014,
		45.023716, 43.672371, 42.441456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390762, 43.209278, 42.070801>,  <44.810173, 43.055496, 42.694164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390762, 43.209278, 42.070801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686317, 43.474167, 42.020988>,  <44.863651, 43.633099, 41.991100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686317, 43.474167, 42.020988>,  <44.390762, 43.209278, 42.070801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.686317, 43.474167, 42.020988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101613, -0.073195, -0.992128,
		-0.666119, 0.745728, 0.013207,
		0.738891, 0.662217, -0.124532,
		44.907986, 43.672832, 41.983627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072075, 43.557423, 41.512077>,  <44.390762, 43.209278, 42.070801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072075, 43.557423, 41.512077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457771, 43.662674, 41.524746>,  <44.689190, 43.725826, 41.532345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457771, 43.662674, 41.524746>,  <44.072075, 43.557423, 41.512077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457771, 43.662674, 41.524746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040893, -0.029660, -0.998723,
		-0.261853, 0.964305, -0.039360,
		0.964241, 0.263128, 0.031667,
		44.747044, 43.741611, 41.534245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212643, 44.197441, 41.123886>,  <44.072075, 43.557423, 41.512077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212643, 44.197441, 41.123886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570724, 44.020523, 41.145760>,  <44.785572, 43.914371, 41.158882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570724, 44.020523, 41.145760>,  <44.212643, 44.197441, 41.123886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570724, 44.020523, 41.145760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128080, 0.137804, -0.982143,
		0.426863, 0.886219, 0.180011,
		0.895200, -0.442296, 0.054683,
		44.839283, 43.887833, 41.162163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637215, 44.527626, 40.649513>,  <44.212643, 44.197441, 41.123886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637215, 44.527626, 40.649513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845863, 44.193840, 40.720600>,  <44.971054, 43.993568, 40.763252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845863, 44.193840, 40.720600>,  <44.637215, 44.527626, 40.649513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845863, 44.193840, 40.720600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344377, 0.015349, -0.938706,
		0.780585, 0.550854, 0.295375,
		0.521624, -0.834460, 0.177720,
		45.002350, 43.943501, 40.773918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405922, 44.579956, 40.362549>,  <44.637215, 44.527626, 40.649513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405922, 44.579956, 40.362549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320633, 44.189358, 40.375153>,  <45.269459, 43.954998, 40.382713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320633, 44.189358, 40.375153>,  <45.405922, 44.579956, 40.362549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320633, 44.189358, 40.375153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293647, -0.094811, -0.951201,
		0.931829, -0.193569, 0.306961,
		-0.213227, -0.976495, 0.031507,
		45.256664, 43.896408, 40.384605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022121, 44.300251, 40.128826>,  <45.405922, 44.579956, 40.362549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022121, 44.300251, 40.128826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736389, 44.022732, 40.092236>,  <45.564949, 43.856220, 40.070282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736389, 44.022732, 40.092236>,  <46.022121, 44.300251, 40.128826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736389, 44.022732, 40.092236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305294, -0.191341, -0.932837,
		0.629700, -0.694283, 0.348495,
		-0.714334, -0.693801, -0.091472,
		45.522087, 43.814590, 40.064793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.291134, 43.773224, 39.738178>,  <46.022121, 44.300251, 40.128826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.291134, 43.773224, 39.738178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895790, 43.727119, 39.698471>,  <45.658585, 43.699455, 39.674648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895790, 43.727119, 39.698471>,  <46.291134, 43.773224, 39.738178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895790, 43.727119, 39.698471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108576, -0.077519, -0.991061,
		0.106541, -0.990305, 0.089132,
		-0.988363, -0.115266, -0.099264,
		45.599281, 43.692539, 39.668694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.273907, 43.312214, 39.209000>,  <46.291134, 43.773224, 39.738178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.273907, 43.312214, 39.209000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908958, 43.471859, 39.245392>,  <45.689987, 43.567646, 39.267227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908958, 43.471859, 39.245392>,  <46.273907, 43.312214, 39.209000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.908958, 43.471859, 39.245392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073439, 0.059067, -0.995549,
		-0.402715, -0.914995, -0.024581,
		-0.912375, 0.399118, 0.090984,
		45.635246, 43.591595, 39.272686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.885876, 42.978752, 38.727737>,  <46.273907, 43.312214, 39.209000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.885876, 42.978752, 38.727737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.669609, 43.310093, 38.786400>,  <45.539848, 43.508900, 38.821598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.669609, 43.310093, 38.786400>,  <45.885876, 42.978752, 38.727737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.669609, 43.310093, 38.786400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169678, 0.063372, -0.983460,
		-0.823950, -0.556605, 0.106290,
		-0.540663, 0.828357, 0.146659,
		45.507412, 43.558601, 38.830399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262100, 42.871361, 38.317112>,  <45.885876, 42.978752, 38.727737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262100, 42.871361, 38.317112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322052, 43.259544, 38.392731>,  <45.358021, 43.492455, 38.438103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322052, 43.259544, 38.392731>,  <45.262100, 42.871361, 38.317112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322052, 43.259544, 38.392731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293393, 0.226246, -0.928834,
		-0.944171, 0.083745, 0.318636,
		0.149875, 0.970464, 0.189045,
		45.367016, 43.550682, 38.449444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732338, 43.244633, 37.952450>,  <45.262100, 42.871361, 38.317112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732338, 43.244633, 37.952450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027290, 43.510136, 38.002560>,  <45.204262, 43.669437, 38.032627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027290, 43.510136, 38.002560>,  <44.732338, 43.244633, 37.952450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027290, 43.510136, 38.002560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029985, 0.217446, -0.975612,
		-0.674813, 0.715639, 0.180243,
		0.737379, 0.663760, 0.125277,
		45.248505, 43.709263, 38.040142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507008, 43.874733, 37.588501>,  <44.732338, 43.244633, 37.952450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507008, 43.874733, 37.588501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906418, 43.866505, 37.608582>,  <45.146065, 43.861568, 37.620628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906418, 43.866505, 37.608582>,  <44.507008, 43.874733, 37.588501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.906418, 43.866505, 37.608582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054119, 0.313431, -0.948068,
		0.003767, 0.949388, 0.314083,
		0.998527, -0.020570, 0.050199,
		45.205975, 43.860332, 37.623642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635773, 44.117138, 36.977203>,  <44.507008, 43.874733, 37.588501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635773, 44.117138, 36.977203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012901, 44.057137, 37.096264>,  <45.239178, 44.021137, 37.167698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012901, 44.057137, 37.096264>,  <44.635773, 44.117138, 36.977203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.012901, 44.057137, 37.096264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317941, 0.136712, -0.938202,
		0.100043, 0.979188, 0.176587,
		0.942818, -0.150005, 0.297647,
		45.295746, 44.012135, 37.185558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130379, 44.763912, 36.806229>,  <44.635773, 44.117138, 36.977203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130379, 44.763912, 36.806229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346519, 44.428246, 36.830975>,  <45.476204, 44.226845, 36.845821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346519, 44.428246, 36.830975>,  <45.130379, 44.763912, 36.806229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346519, 44.428246, 36.830975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354557, 0.160397, -0.921174,
		0.763093, 0.519690, 0.384202,
		0.540350, -0.839163, 0.061862,
		45.508625, 44.176498, 36.849533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725163, 45.039288, 36.529808>,  <45.130379, 44.763912, 36.806229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725163, 45.039288, 36.529808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758598, 44.640930, 36.515903>,  <45.778660, 44.401917, 36.507561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758598, 44.640930, 36.515903>,  <45.725163, 45.039288, 36.529808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758598, 44.640930, 36.515903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344301, 0.061597, -0.936837,
		0.935131, 0.066338, 0.348036,
		0.083586, -0.995894, -0.034761,
		45.783672, 44.342163, 36.505474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.427330, 44.908764, 36.218376>,  <45.725163, 45.039288, 36.529808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.427330, 44.908764, 36.218376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233734, 44.565212, 36.151344>,  <46.117577, 44.359081, 36.111126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233734, 44.565212, 36.151344>,  <46.427330, 44.908764, 36.218376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233734, 44.565212, 36.151344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346839, -0.012461, -0.937842,
		0.803404, -0.512028, 0.303923,
		-0.483988, -0.858878, -0.167580,
		46.088539, 44.307549, 36.101070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.877815, 44.513161, 35.854553>,  <46.427330, 44.908764, 36.218376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.877815, 44.513161, 35.854553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.518074, 44.358994, 35.771984>,  <46.302227, 44.266491, 35.722443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.518074, 44.358994, 35.771984>,  <46.877815, 44.513161, 35.854553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518074, 44.358994, 35.771984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242415, -0.046663, -0.969050,
		0.363861, -0.921560, 0.135399,
		-0.899356, -0.385422, -0.206421,
		46.248268, 44.243366, 35.710056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.005913, 43.877880, 35.429855>,  <46.877815, 44.513161, 35.854553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.005913, 43.877880, 35.429855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618202, 43.951618, 35.364704>,  <46.385578, 43.995861, 35.325615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618202, 43.951618, 35.364704>,  <47.005913, 43.877880, 35.429855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.618202, 43.951618, 35.364704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116618, -0.238642, -0.964080,
		-0.216595, -0.953450, 0.209810,
		-0.969271, 0.184347, -0.162877,
		46.327419, 44.006920, 35.315842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.783451, 43.304680, 35.046413>,  <47.005913, 43.877880, 35.429855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.783451, 43.304680, 35.046413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.541481, 43.611294, 34.960163>,  <46.396297, 43.795261, 34.908413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.541481, 43.611294, 34.960163>,  <46.783451, 43.304680, 35.046413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.541481, 43.611294, 34.960163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102374, -0.193676, -0.975709,
		-0.789673, -0.612307, 0.038687,
		-0.604926, 0.766531, -0.215625,
		46.360004, 43.841251, 34.895477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346642, 42.994667, 34.548435>,  <46.783451, 43.304680, 35.046413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346642, 42.994667, 34.548435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.332985, 43.391979, 34.504196>,  <46.324791, 43.630367, 34.477654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.332985, 43.391979, 34.504196>,  <46.346642, 42.994667, 34.548435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.332985, 43.391979, 34.504196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060865, -0.112525, -0.991783,
		-0.997562, -0.027128, 0.064298,
		-0.034140, 0.993278, -0.110600,
		46.322742, 43.689964, 34.471016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882263, 43.101433, 34.027813>,  <46.346642, 42.994667, 34.548435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882263, 43.101433, 34.027813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.051666, 43.463593, 34.039799>,  <46.153309, 43.680889, 34.046989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.051666, 43.463593, 34.039799>,  <45.882263, 43.101433, 34.027813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051666, 43.463593, 34.039799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072910, -0.001100, -0.997338,
		-0.902953, 0.424566, -0.066478,
		0.423509, 0.905396, 0.029962,
		46.178719, 43.735210, 34.048786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.585732, 43.917675, 46.439747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.730545, 44.289597, 46.413216>,  <44.817432, 44.512749, 46.397297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.730545, 44.289597, 46.413216>,  <44.585732, 43.917675, 46.439747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730545, 44.289597, 46.413216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149873, -0.012170, -0.988630,
		-0.920039, 0.367855, 0.134947,
		0.362030, 0.929804, -0.066328,
		44.839153, 44.568539, 46.393318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042774, 44.243275, 45.998341>,  <44.585732, 43.917675, 46.439747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042774, 44.243275, 45.998341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.383415, 44.452309, 45.981918>,  <44.587799, 44.577728, 45.972065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.383415, 44.452309, 45.981918>,  <44.042774, 44.243275, 45.998341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383415, 44.452309, 45.981918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095017, 0.076862, -0.992504,
		-0.515507, 0.849118, 0.115110,
		0.851601, 0.522580, -0.041058,
		44.638897, 44.609081, 45.969601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923294, 44.875755, 45.521130>,  <44.042774, 44.243275, 45.998341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923294, 44.875755, 45.521130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.319702, 44.835518, 45.556358>,  <44.557549, 44.811375, 45.577496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.319702, 44.835518, 45.556358>,  <43.923294, 44.875755, 45.521130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319702, 44.835518, 45.556358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112026, 0.265154, -0.957676,
		0.072986, 0.958944, 0.274043,
		0.991021, -0.100597, 0.088074,
		44.617008, 44.805340, 45.582779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438366, 45.403141, 45.179054>,  <43.923294, 44.875755, 45.521130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438366, 45.403141, 45.179054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.075706, 45.236038, 45.155495>,  <42.858112, 45.135777, 45.141357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.075706, 45.236038, 45.155495>,  <43.438366, 45.403141, 45.179054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075706, 45.236038, 45.155495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088425, 0.051662, 0.994742,
		-0.412514, 0.907090, -0.083779,
		-0.906649, -0.417753, -0.058898,
		42.803711, 45.110714, 45.137825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056965, 45.775223, 45.503269>,  <43.438366, 45.403141, 45.179054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056965, 45.775223, 45.503269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.869797, 45.421715, 45.502922>,  <42.757496, 45.209610, 45.502712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.869797, 45.421715, 45.502922>,  <43.056965, 45.775223, 45.503269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869797, 45.421715, 45.502922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041006, 0.020730, 0.998944,
		-0.882820, 0.467459, -0.045940,
		-0.467918, -0.883772, -0.000867,
		42.729420, 45.156582, 45.502663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479065, 45.934479, 45.840744>,  <43.056965, 45.775223, 45.503269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479065, 45.934479, 45.840744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.500778, 45.535576, 45.860897>,  <42.513805, 45.296234, 45.872990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.500778, 45.535576, 45.860897>,  <42.479065, 45.934479, 45.840744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500778, 45.535576, 45.860897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178234, 0.039970, 0.983176,
		-0.982490, -0.062346, -0.175575,
		0.054279, -0.997254, 0.050383,
		42.517063, 45.236401, 45.876011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887371, 45.737492, 46.150383>,  <42.479065, 45.934479, 45.840744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887371, 45.737492, 46.150383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.138374, 45.429611, 46.197357>,  <42.288979, 45.244884, 46.225540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.138374, 45.429611, 46.197357>,  <41.887371, 45.737492, 46.150383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138374, 45.429611, 46.197357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176379, 0.006383, 0.984302,
		-0.758367, -0.638374, -0.131754,
		0.627511, -0.769700, 0.117436,
		42.326630, 45.198700, 46.232590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537384, 45.191708, 46.424820>,  <41.887371, 45.737492, 46.150383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537384, 45.191708, 46.424820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.912712, 45.127346, 46.547241>,  <42.137909, 45.088730, 46.620693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.912712, 45.127346, 46.547241>,  <41.537384, 45.191708, 46.424820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912712, 45.127346, 46.547241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338881, -0.252065, 0.906434,
		-0.068707, -0.954239, -0.291046,
		0.938317, -0.160908, 0.306055,
		42.194206, 45.079075, 46.639057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486801, 44.653370, 46.908051>,  <41.537384, 45.191708, 46.424820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486801, 44.653370, 46.908051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.852066, 44.805191, 46.967472>,  <42.071224, 44.896282, 47.003124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.852066, 44.805191, 46.967472>,  <41.486801, 44.653370, 46.908051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852066, 44.805191, 46.967472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169182, 0.021364, 0.985353,
		0.370822, -0.924922, 0.083723,
		0.913164, 0.379555, 0.148558,
		42.126015, 44.919056, 47.012039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547886, 44.302170, 47.495239>,  <41.486801, 44.653370, 46.908051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547886, 44.302170, 47.495239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.804024, 44.609398, 47.492973>,  <41.957706, 44.793736, 47.491615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.804024, 44.609398, 47.492973>,  <41.547886, 44.302170, 47.495239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804024, 44.609398, 47.492973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008277, 0.014272, 0.999864,
		0.768043, -0.640211, 0.015496,
		0.640345, 0.768067, -0.005662,
		41.996128, 44.839817, 47.491276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197659, 44.007298, 47.819450>,  <41.547886, 44.302170, 47.495239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197659, 44.007298, 47.819450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.155975, 44.402657, 47.863655>,  <42.130966, 44.639874, 47.890179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.155975, 44.402657, 47.863655>,  <42.197659, 44.007298, 47.819450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155975, 44.402657, 47.863655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025083, -0.113694, 0.993199,
		0.994239, 0.100727, 0.036639,
		-0.104208, 0.988396, 0.110512,
		42.124714, 44.699177, 47.896809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640854, 44.219246, 48.343140>,  <42.197659, 44.007298, 47.819450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640854, 44.219246, 48.343140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.384842, 44.525936, 48.323170>,  <42.231236, 44.709949, 48.311188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.384842, 44.525936, 48.323170>,  <42.640854, 44.219246, 48.343140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384842, 44.525936, 48.323170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058493, 0.016169, 0.998157,
		0.766122, 0.641769, 0.034500,
		-0.640028, 0.766728, -0.049926,
		42.192833, 44.755955, 48.308193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896160, 44.739914, 48.816467>,  <42.640854, 44.219246, 48.343140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896160, 44.739914, 48.816467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.504936, 44.808277, 48.768829>,  <42.270203, 44.849293, 48.740246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.504936, 44.808277, 48.768829>,  <42.896160, 44.739914, 48.816467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504936, 44.808277, 48.768829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123359, -0.014503, 0.992256,
		0.167853, 0.985181, 0.035267,
		-0.978063, 0.170904, -0.119097,
		42.211517, 44.859547, 48.733101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704227, 45.096104, 49.384022>,  <42.896160, 44.739914, 48.816467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704227, 45.096104, 49.384022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.341751, 44.992203, 49.250542>,  <42.124268, 44.929863, 49.170456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.341751, 44.992203, 49.250542>,  <42.704227, 45.096104, 49.384022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341751, 44.992203, 49.250542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348897, 0.013354, 0.937066,
		-0.238945, 0.965584, -0.102726,
		-0.906188, -0.259748, -0.333699,
		42.069893, 44.914280, 49.150433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268227, 45.586678, 49.742443>,  <42.704227, 45.096104, 49.384022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268227, 45.586678, 49.742443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.057457, 45.269806, 49.619278>,  <41.930996, 45.079681, 49.545380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.057457, 45.269806, 49.619278>,  <42.268227, 45.586678, 49.742443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057457, 45.269806, 49.619278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518227, 0.012311, 0.855155,
		-0.673644, 0.610166, -0.417015,
		-0.526920, -0.792178, -0.307911,
		41.899380, 45.032154, 49.526905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525959, 45.790600, 49.714676>,  <42.268227, 45.586678, 49.742443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525959, 45.790600, 49.714676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.534416, 45.392239, 49.749863>,  <41.539490, 45.153221, 49.770973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.534416, 45.392239, 49.749863>,  <41.525959, 45.790600, 49.714676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534416, 45.392239, 49.749863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442321, 0.069587, 0.894153,
		-0.896607, -0.057816, -0.439036,
		0.021145, -0.995899, 0.087965,
		41.540760, 45.093468, 49.776253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923168, 45.496906, 50.088890>,  <41.525959, 45.790600, 49.714676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923168, 45.496906, 50.088890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.162270, 45.177227, 50.114120>,  <41.305729, 44.985420, 50.129261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.162270, 45.177227, 50.114120>,  <40.923168, 45.496906, 50.088890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162270, 45.177227, 50.114120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336331, -0.178577, 0.924657,
		-0.727717, -0.573932, -0.375539,
		0.597754, -0.799195, 0.063078,
		41.341595, 44.937469, 50.133045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551208, 45.034832, 50.279575>,  <40.923168, 45.496906, 50.088890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551208, 45.034832, 50.279575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.910233, 44.923843, 50.416626>,  <41.125648, 44.857250, 50.498856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.910233, 44.923843, 50.416626>,  <40.551208, 45.034832, 50.279575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910233, 44.923843, 50.416626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383311, -0.107122, 0.917386,
		-0.217844, -0.954743, -0.202506,
		0.897561, -0.277470, 0.342628,
		41.179501, 44.840603, 50.519413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480984, 44.419323, 50.630039>,  <40.551208, 45.034832, 50.279575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480984, 44.419323, 50.630039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.814568, 44.586037, 50.774704>,  <41.014717, 44.686066, 50.861504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.814568, 44.586037, 50.774704>,  <40.480984, 44.419323, 50.630039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814568, 44.586037, 50.774704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321542, -0.165619, 0.932299,
		0.448469, -0.893789, -0.004105,
		0.833958, 0.416788, 0.361666,
		41.064754, 44.711071, 50.883205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483624, 44.088535, 51.253788>,  <40.480984, 44.419323, 50.630039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483624, 44.088535, 51.253788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.766953, 44.358028, 51.338039>,  <40.936951, 44.519722, 51.388588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.766953, 44.358028, 51.338039>,  <40.483624, 44.088535, 51.253788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766953, 44.358028, 51.338039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206027, -0.088070, 0.974575,
		0.675151, -0.733710, 0.076425,
		0.708325, 0.673731, 0.210625,
		40.979450, 44.560146, 51.401226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869255, 43.773155, 51.859688>,  <40.483624, 44.088535, 51.253788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869255, 43.773155, 51.859688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.926750, 44.168880, 51.869507>,  <40.961246, 44.406315, 51.875397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.926750, 44.168880, 51.869507>,  <40.869255, 43.773155, 51.859688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926750, 44.168880, 51.869507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240950, 0.010928, 0.970476,
		0.959835, -0.145405, 0.239945,
		0.143734, 0.989312, 0.024546,
		40.969872, 44.465675, 51.876869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145317, 43.869171, 52.550964>,  <40.869255, 43.773155, 51.859688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145317, 43.869171, 52.550964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.059502, 44.247807, 52.454681>,  <41.008015, 44.474987, 52.396912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.059502, 44.247807, 52.454681>,  <41.145317, 43.869171, 52.550964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059502, 44.247807, 52.454681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099045, 0.224089, 0.969523,
		0.971681, 0.231839, 0.045680,
		-0.214537, 0.946591, -0.240705,
		40.995140, 44.531784, 52.382469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662949, 44.395939, 52.862850>,  <41.145317, 43.869171, 52.550964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662949, 44.395939, 52.862850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.329712, 44.606647, 52.795357>,  <41.129768, 44.733070, 52.754860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.329712, 44.606647, 52.795357>,  <41.662949, 44.395939, 52.862850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329712, 44.606647, 52.795357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005562, 0.313014, 0.949732,
		0.553106, 0.790276, -0.263700,
		-0.833092, 0.526770, -0.168734,
		41.079784, 44.764679, 52.744736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717979, 45.128643, 53.170593>,  <41.662949, 44.395939, 52.862850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717979, 45.128643, 53.170593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.327843, 45.040974, 53.160263>,  <41.093761, 44.988373, 53.154064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.327843, 45.040974, 53.160263>,  <41.717979, 45.128643, 53.170593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327843, 45.040974, 53.160263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049025, 0.101097, 0.993668,
		-0.215178, 0.970433, -0.109350,
		-0.975344, -0.219176, -0.025822,
		41.035240, 44.975220, 53.152515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377678, 45.476471, 53.788475>,  <41.717979, 45.128643, 53.170593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377678, 45.476471, 53.788475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.079674, 45.253296, 53.642235>,  <40.900871, 45.119389, 53.554489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.079674, 45.253296, 53.642235>,  <41.377678, 45.476471, 53.788475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079674, 45.253296, 53.642235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374349, -0.103939, 0.921444,
		-0.552111, 0.823347, -0.131429,
		-0.745008, -0.557940, -0.365605,
		40.856171, 45.085915, 53.532555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898960, 45.753574, 54.093468>,  <41.377678, 45.476471, 53.788475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898960, 45.753574, 54.093468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.760849, 45.391598, 53.993980>,  <40.677982, 45.174412, 53.934288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.760849, 45.391598, 53.993980>,  <40.898960, 45.753574, 54.093468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760849, 45.391598, 53.993980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363633, -0.115315, 0.924377,
		-0.865189, 0.409611, -0.289251,
		-0.345281, -0.904943, -0.248717,
		40.657265, 45.120113, 53.919365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368095, 45.711262, 54.548622>,  <40.898960, 45.753574, 54.093468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368095, 45.711262, 54.548622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.477043, 45.344460, 54.432060>,  <40.542412, 45.124378, 54.362125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.477043, 45.344460, 54.432060>,  <40.368095, 45.711262, 54.548622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477043, 45.344460, 54.432060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438595, -0.387883, 0.810667,
		-0.856415, -0.092996, -0.507843,
		0.272372, -0.917005, -0.291401,
		40.558754, 45.069359, 54.344639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862045, 45.346657, 54.735275>,  <40.368095, 45.711262, 54.548622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862045, 45.346657, 54.735275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.178017, 45.101585, 54.725098>,  <40.367599, 44.954544, 54.718990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.178017, 45.101585, 54.725098>,  <39.862045, 45.346657, 54.735275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178017, 45.101585, 54.725098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106580, -0.178039, 0.978234,
		-0.603871, -0.770019, -0.205937,
		0.789924, -0.612677, -0.025444,
		40.414993, 44.917782, 54.717464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658142, 44.790054, 55.087662>,  <39.862045, 45.346657, 54.735275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658142, 44.790054, 55.087662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.053551, 44.730644, 55.098740>,  <40.290794, 44.694996, 55.105389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.053551, 44.730644, 55.098740>,  <39.658142, 44.790054, 55.087662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053551, 44.730644, 55.098740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059162, -0.211830, 0.975514,
		-0.139024, -0.965954, -0.218186,
		0.988520, -0.148528, 0.027699,
		40.350105, 44.686085, 55.107048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838272, 44.112278, 55.284573>,  <39.658142, 44.790054, 55.087662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838272, 44.112278, 55.284573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154640, 44.335423, 55.385170>,  <40.344460, 44.469307, 55.445530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154640, 44.335423, 55.385170>,  <39.838272, 44.112278, 55.284573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154640, 44.335423, 55.385170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001835, -0.408822, 0.912612,
		0.611923, -0.722261, -0.322320,
		0.790915, 0.557857, 0.251492,
		40.391914, 44.502781, 55.460617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026329, 43.794655, 55.893105>,  <39.838272, 44.112278, 55.284573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026329, 43.794655, 55.893105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.276299, 44.105789, 55.919769>,  <40.426281, 44.292469, 55.935768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.276299, 44.105789, 55.919769>,  <40.026329, 43.794655, 55.893105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276299, 44.105789, 55.919769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104355, -0.167854, 0.980273,
		0.773681, -0.605638, -0.186066,
		0.624922, 0.777836, 0.066664,
		40.463776, 44.339138, 55.939770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636322, 43.512669, 56.113609>,  <40.026329, 43.794655, 55.893105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636322, 43.512669, 56.113609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.620888, 43.899544, 56.214062>,  <40.611629, 44.131668, 56.274334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.620888, 43.899544, 56.214062>,  <40.636322, 43.512669, 56.113609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620888, 43.899544, 56.214062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125672, -0.244622, 0.961440,
		0.991321, 0.068655, -0.112110,
		-0.038583, 0.967185, 0.251127,
		40.609314, 44.189701, 56.289398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132141, 43.597458, 56.633583>,  <40.636322, 43.512669, 56.113609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132141, 43.597458, 56.633583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.908478, 43.928463, 56.653828>,  <40.774281, 44.127068, 56.665974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.908478, 43.928463, 56.653828>,  <41.132141, 43.597458, 56.633583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908478, 43.928463, 56.653828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074361, -0.010736, 0.997174,
		0.825718, 0.561344, -0.055532,
		-0.559161, 0.827513, 0.050607,
		40.740730, 44.176716, 56.669010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429359, 44.000214, 57.233910>,  <41.132141, 43.597458, 56.633583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429359, 44.000214, 57.233910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.068077, 44.158676, 57.167839>,  <40.851307, 44.253754, 57.128197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.068077, 44.158676, 57.167839>,  <41.429359, 44.000214, 57.233910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068077, 44.158676, 57.167839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148898, 0.071728, 0.986248,
		0.402554, 0.915378, -0.005799,
		-0.903205, 0.396154, -0.165173,
		40.797115, 44.277523, 57.118286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418377, 44.597416, 57.538353>,  <41.429359, 44.000214, 57.233910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418377, 44.597416, 57.538353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032379, 44.492603, 57.542870>,  <40.800781, 44.429714, 57.545582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032379, 44.492603, 57.542870>,  <41.418377, 44.597416, 57.538353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032379, 44.492603, 57.542870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010899, 0.002969, 0.999936,
		-0.262052, 0.965054, -0.000009,
		-0.964992, -0.262035, 0.011296,
		40.742882, 44.413994, 57.546257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
