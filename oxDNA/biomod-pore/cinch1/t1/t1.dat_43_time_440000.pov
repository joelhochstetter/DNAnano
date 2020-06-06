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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.531551, 32.888962, 23.053835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227272, 32.898079, 23.313316>,  <43.044704, 32.903549, 23.469006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227272, 32.898079, 23.313316>,  <43.531551, 32.888962, 23.053835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227272, 32.898079, 23.313316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182658, 0.951481, -0.247628,
		-0.622875, -0.306861, -0.719627,
		-0.760699, 0.022796, 0.648705,
		42.999062, 32.904919, 23.507927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924259, 33.173225, 22.767086>,  <43.531551, 32.888962, 23.053835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924259, 33.173225, 22.767086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944511, 33.242275, 23.160561>,  <42.956661, 33.283707, 23.396645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944511, 33.242275, 23.160561>,  <42.924259, 33.173225, 22.767086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944511, 33.242275, 23.160561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011612, 0.984983, -0.172258,
		-0.998650, -0.002701, 0.051876,
		0.050632, 0.172627, 0.983685,
		42.959702, 33.294064, 23.455666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324837, 33.677979, 22.970411>,  <42.924259, 33.173225, 22.767086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324837, 33.677979, 22.970411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670612, 33.697098, 23.170593>,  <42.878078, 33.708569, 23.290703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670612, 33.697098, 23.170593>,  <42.324837, 33.677979, 22.970411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670612, 33.697098, 23.170593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133487, 0.937914, -0.320153,
		-0.484686, 0.343558, 0.804393,
		0.864442, 0.047797, 0.500455,
		42.929947, 33.711437, 23.320730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724583, 34.019161, 22.528372>,  <42.324837, 33.677979, 22.970411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724583, 34.019161, 22.528372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110771, 33.962006, 22.441250>,  <43.342484, 33.927711, 22.388977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110771, 33.962006, 22.441250>,  <42.724583, 34.019161, 22.528372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110771, 33.962006, 22.441250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038344, 0.904971, -0.423742,
		0.257657, 0.400761, 0.879206,
		0.965475, -0.142892, -0.217805,
		43.400414, 33.919136, 22.375908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212368, 34.550308, 22.421495>,  <42.724583, 34.019161, 22.528372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212368, 34.550308, 22.421495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812428, 34.546970, 22.415554>,  <41.572464, 34.544968, 22.411989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812428, 34.546970, 22.415554>,  <42.212368, 34.550308, 22.421495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812428, 34.546970, 22.415554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015815, 0.130101, 0.991375,
		-0.006337, 0.991466, -0.130214,
		-0.999855, -0.008342, -0.014855,
		41.512470, 34.544468, 22.411097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950912, 34.945637, 22.948786>,  <42.212368, 34.550308, 22.421495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950912, 34.945637, 22.948786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643318, 34.699795, 22.878452>,  <41.458759, 34.552288, 22.836252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643318, 34.699795, 22.878452>,  <41.950912, 34.945637, 22.948786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643318, 34.699795, 22.878452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082455, -0.177396, 0.980679,
		-0.633922, 0.768629, 0.085738,
		-0.768989, -0.614605, -0.175832,
		41.412621, 34.515411, 22.825703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357414, 35.210033, 23.345949>,  <41.950912, 34.945637, 22.948786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357414, 35.210033, 23.345949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245365, 34.834969, 23.263668>,  <41.178135, 34.609928, 23.214298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245365, 34.834969, 23.263668>,  <41.357414, 35.210033, 23.345949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245365, 34.834969, 23.263668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230076, -0.142460, 0.962689,
		-0.931985, 0.317001, -0.175828,
		-0.280125, -0.937665, -0.205705,
		41.161327, 34.553669, 23.201956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697929, 35.162312, 23.590921>,  <41.357414, 35.210033, 23.345949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697929, 35.162312, 23.590921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821995, 34.782593, 23.570438>,  <40.896435, 34.554760, 23.558149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821995, 34.782593, 23.570438>,  <40.697929, 35.162312, 23.590921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821995, 34.782593, 23.570438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482980, -0.203743, 0.851598,
		-0.818857, -0.239406, -0.521688,
		0.310168, -0.949302, -0.051208,
		40.915047, 34.497803, 23.555077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103794, 34.608269, 23.599722>,  <40.697929, 35.162312, 23.590921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103794, 34.608269, 23.599722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431492, 34.428108, 23.741695>,  <40.628109, 34.320011, 23.826880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431492, 34.428108, 23.741695>,  <40.103794, 34.608269, 23.599722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431492, 34.428108, 23.741695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472588, -0.179704, 0.862767,
		-0.324812, -0.874552, -0.360078,
		0.819242, -0.450406, 0.354933,
		40.677265, 34.292988, 23.848175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802574, 34.321636, 24.213066>,  <40.103794, 34.608269, 23.599722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802574, 34.321636, 24.213066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197208, 34.270267, 24.253365>,  <40.433990, 34.239449, 24.277544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197208, 34.270267, 24.253365>,  <39.802574, 34.321636, 24.213066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197208, 34.270267, 24.253365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125781, -0.204821, 0.970684,
		-0.104018, -0.970339, -0.218227,
		0.986590, -0.128417, 0.100745,
		40.493187, 34.231743, 24.283588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844891, 33.684303, 24.525476>,  <39.802574, 34.321636, 24.213066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844891, 33.684303, 24.525476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197495, 33.855858, 24.604469>,  <40.409058, 33.958790, 24.651865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197495, 33.855858, 24.604469>,  <39.844891, 33.684303, 24.525476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197495, 33.855858, 24.604469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120725, -0.199612, 0.972410,
		0.456476, -0.881027, -0.124182,
		0.881508, 0.428889, 0.197480,
		40.461948, 33.984524, 24.663713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059994, 33.272110, 25.038107>,  <39.844891, 33.684303, 24.525476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059994, 33.272110, 25.038107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295387, 33.593147, 25.077164>,  <40.436623, 33.785770, 25.100597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295387, 33.593147, 25.077164>,  <40.059994, 33.272110, 25.038107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295387, 33.593147, 25.077164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123591, -0.030049, 0.991878,
		0.799009, -0.595769, 0.081510,
		0.588480, 0.802594, 0.097642,
		40.471931, 33.833927, 25.106457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507111, 33.101685, 25.564520>,  <40.059994, 33.272110, 25.038107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507111, 33.101685, 25.564520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500114, 33.501541, 25.572613>,  <40.495914, 33.741455, 25.577469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500114, 33.501541, 25.572613>,  <40.507111, 33.101685, 25.564520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500114, 33.501541, 25.572613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047725, -0.021045, 0.998639,
		0.998707, 0.016504, 0.048076,
		-0.017493, 0.999642, 0.020230,
		40.494865, 33.801434, 25.578682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931694, 33.186310, 26.022268>,  <40.507111, 33.101685, 25.564520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931694, 33.186310, 26.022268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711468, 33.519928, 26.008102>,  <40.579330, 33.720097, 25.999603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711468, 33.519928, 26.008102>,  <40.931694, 33.186310, 26.022268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711468, 33.519928, 26.008102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182127, -0.078610, 0.980128,
		0.814682, 0.546074, 0.195181,
		-0.550565, 0.834041, -0.035412,
		40.546299, 33.770142, 25.997478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051765, 33.613579, 26.727213>,  <40.931694, 33.186310, 26.022268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051765, 33.613579, 26.727213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720425, 33.786541, 26.584743>,  <40.521622, 33.890320, 26.499262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720425, 33.786541, 26.584743>,  <41.051765, 33.613579, 26.727213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720425, 33.786541, 26.584743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384454, 0.023654, 0.922841,
		0.407467, 0.901369, 0.146646,
		-0.828352, 0.432406, -0.356173,
		40.471920, 33.916264, 26.477892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874649, 34.215759, 27.162441>,  <41.051765, 33.613579, 26.727213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874649, 34.215759, 27.162441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541695, 34.075516, 26.990765>,  <40.341923, 33.991371, 26.887758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541695, 34.075516, 26.990765>,  <40.874649, 34.215759, 27.162441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541695, 34.075516, 26.990765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451673, -0.019557, 0.891969,
		-0.321122, 0.936319, -0.142080,
		-0.832389, -0.350605, -0.429190,
		40.291977, 33.970333, 26.862007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304604, 34.620407, 27.385761>,  <40.874649, 34.215759, 27.162441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304604, 34.620407, 27.385761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149345, 34.271606, 27.266464>,  <40.056190, 34.062325, 27.194885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149345, 34.271606, 27.266464>,  <40.304604, 34.620407, 27.385761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149345, 34.271606, 27.266464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489951, -0.078847, 0.868177,
		-0.780570, 0.483105, -0.396636,
		-0.388147, -0.872005, -0.298244,
		40.032902, 34.010006, 27.176991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679283, 34.607700, 27.732182>,  <40.304604, 34.620407, 27.385761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679283, 34.607700, 27.732182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715504, 34.228409, 27.610416>,  <39.737236, 34.000835, 27.537357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715504, 34.228409, 27.610416>,  <39.679283, 34.607700, 27.732182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715504, 34.228409, 27.610416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656042, -0.286771, 0.698120,
		-0.749272, 0.136491, -0.648044,
		0.090553, -0.948226, -0.304413,
		39.742668, 33.943939, 27.519093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135437, 34.292881, 28.072290>,  <39.679283, 34.607700, 27.732182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135437, 34.292881, 28.072290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354916, 33.983536, 27.945271>,  <39.486603, 33.797928, 27.869059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354916, 33.983536, 27.945271>,  <39.135437, 34.292881, 28.072290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354916, 33.983536, 27.945271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411189, -0.580365, 0.702922,
		-0.727909, -0.255120, -0.636445,
		0.548700, -0.773363, -0.317551,
		39.519527, 33.751526, 27.850006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694260, 33.863777, 27.934181>,  <39.135437, 34.292881, 28.072290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694260, 33.863777, 27.934181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028675, 33.652809, 27.994671>,  <39.229324, 33.526230, 28.030964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028675, 33.652809, 27.994671>,  <38.694260, 33.863777, 27.934181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028675, 33.652809, 27.994671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436188, -0.471703, 0.766313,
		-0.332835, -0.706629, -0.624416,
		0.836039, -0.527419, 0.151224,
		39.279488, 33.494583, 28.040037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541557, 33.217850, 27.850401>,  <38.694260, 33.863777, 27.934181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541557, 33.217850, 27.850401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856213, 33.233593, 28.096867>,  <39.045006, 33.243038, 28.244745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856213, 33.233593, 28.096867>,  <38.541557, 33.217850, 27.850401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856213, 33.233593, 28.096867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561131, -0.370739, 0.740057,
		0.257565, -0.927903, -0.269550,
		0.786634, 0.039360, 0.616164,
		39.092201, 33.245399, 28.281715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402149, 32.805233, 28.452299>,  <38.541557, 33.217850, 27.850401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402149, 32.805233, 28.452299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740932, 32.965736, 28.591812>,  <38.944202, 33.062038, 28.675520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740932, 32.965736, 28.591812>,  <38.402149, 32.805233, 28.452299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740932, 32.965736, 28.591812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254539, -0.269920, 0.928630,
		0.466760, -0.875293, -0.126477,
		0.846962, 0.401254, 0.348784,
		38.995022, 33.086113, 28.696447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589870, 32.269154, 28.781429>,  <38.402149, 32.805233, 28.452299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589870, 32.269154, 28.781429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797070, 32.574039, 28.936710>,  <38.921391, 32.756973, 29.029879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797070, 32.574039, 28.936710>,  <38.589870, 32.269154, 28.781429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797070, 32.574039, 28.936710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129596, -0.378663, 0.916416,
		0.845507, -0.525013, -0.097366,
		0.517999, 0.762218, 0.388202,
		38.952469, 32.802704, 29.053171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041271, 31.924232, 29.168293>,  <38.589870, 32.269154, 28.781429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041271, 31.924232, 29.168293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998871, 32.293648, 29.315720>,  <38.973431, 32.515297, 29.404175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998871, 32.293648, 29.315720>,  <39.041271, 31.924232, 29.168293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998871, 32.293648, 29.315720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190538, -0.382650, 0.904032,
		0.975940, 0.025605, 0.216532,
		-0.106004, 0.923538, 0.368565,
		38.967072, 32.570709, 29.426289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382446, 31.873734, 29.779772>,  <39.041271, 31.924232, 29.168293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382446, 31.873734, 29.779772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180454, 32.215145, 29.831127>,  <39.059258, 32.419991, 29.861940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180454, 32.215145, 29.831127>,  <39.382446, 31.873734, 29.779772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180454, 32.215145, 29.831127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349905, -0.338413, 0.873524,
		0.789023, 0.396192, 0.469546,
		-0.504984, 0.853527, 0.128386,
		39.028957, 32.471203, 29.869642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626545, 32.076443, 30.430683>,  <39.382446, 31.873734, 29.779772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626545, 32.076443, 30.430683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276371, 32.252361, 30.350491>,  <39.066269, 32.357914, 30.302374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276371, 32.252361, 30.350491>,  <39.626545, 32.076443, 30.430683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276371, 32.252361, 30.350491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346819, -0.282672, 0.894323,
		0.336653, 0.852451, 0.399991,
		-0.875432, 0.439801, -0.200484,
		39.013741, 32.384300, 30.290346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443710, 32.416237, 31.020473>,  <39.626545, 32.076443, 30.430683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443710, 32.416237, 31.020473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104080, 32.339539, 30.823578>,  <38.900303, 32.293518, 30.705441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104080, 32.339539, 30.823578>,  <39.443710, 32.416237, 31.020473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104080, 32.339539, 30.823578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415767, -0.332269, 0.846602,
		-0.325887, 0.923489, 0.202401,
		-0.849079, -0.191745, -0.492238,
		38.849358, 32.282017, 30.675907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854538, 32.628784, 31.364685>,  <39.443710, 32.416237, 31.020473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854538, 32.628784, 31.364685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701210, 32.348000, 31.124580>,  <38.609215, 32.179527, 30.980516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701210, 32.348000, 31.124580>,  <38.854538, 32.628784, 31.364685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701210, 32.348000, 31.124580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605935, -0.299374, 0.737033,
		-0.697073, 0.646239, -0.310588,
		-0.383317, -0.701963, -0.600264,
		38.586216, 32.137409, 30.944502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074394, 32.727821, 31.165907>,  <38.854538, 32.628784, 31.364685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074394, 32.727821, 31.165907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151752, 32.335732, 31.182659>,  <38.198166, 32.100475, 31.192711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151752, 32.335732, 31.182659>,  <38.074394, 32.727821, 31.165907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151752, 32.335732, 31.182659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731727, -0.115671, 0.671711,
		-0.653585, -0.160550, -0.739629,
		0.193397, -0.980226, 0.041878,
		38.209770, 32.041664, 31.195223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425133, 32.332344, 31.110395>,  <38.074394, 32.727821, 31.165907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425133, 32.332344, 31.110395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722595, 32.160664, 31.315437>,  <37.901073, 32.057655, 31.438463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722595, 32.160664, 31.315437>,  <37.425133, 32.332344, 31.110395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722595, 32.160664, 31.315437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512584, 0.126224, 0.849309,
		-0.429230, -0.894344, -0.126137,
		0.743653, -0.429205, 0.512605,
		37.945690, 32.031902, 31.469219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477436, 31.581121, 30.882521>,  <37.425133, 32.332344, 31.110395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477436, 31.581121, 30.882521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294159, 31.365631, 31.165314>,  <37.184193, 31.236336, 31.334990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294159, 31.365631, 31.165314>,  <37.477436, 31.581121, 30.882521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294159, 31.365631, 31.165314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696540, -0.276482, -0.662110,
		0.552166, -0.795820, -0.248562,
		-0.458197, -0.538728, 0.706985,
		37.156700, 31.204012, 31.377409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412319, 30.780077, 30.822796>,  <37.477436, 31.581121, 30.882521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412319, 30.780077, 30.822796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090904, 30.950996, 30.988567>,  <36.898056, 31.053547, 31.088030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090904, 30.950996, 30.988567>,  <37.412319, 30.780077, 30.822796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090904, 30.950996, 30.988567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575227, -0.378297, -0.725262,
		-0.153127, -0.821162, 0.549768,
		-0.803534, 0.427298, 0.414427,
		36.849846, 31.079185, 31.112896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733517, 30.270231, 30.900682>,  <37.412319, 30.780077, 30.822796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733517, 30.270231, 30.900682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633018, 30.656288, 30.871338>,  <36.572720, 30.887922, 30.853731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633018, 30.656288, 30.871338>,  <36.733517, 30.270231, 30.900682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633018, 30.656288, 30.871338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714587, -0.236075, -0.658509,
		-0.652873, -0.113020, 0.748988,
		-0.251242, 0.965140, -0.073364,
		36.557648, 30.945829, 30.849329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663689, 30.588806, 30.295160>,  <36.733517, 30.270231, 30.900682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663689, 30.588806, 30.295160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340538, 30.509712, 30.073082>,  <36.146648, 30.462255, 29.939835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340538, 30.509712, 30.073082>,  <36.663689, 30.588806, 30.295160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340538, 30.509712, 30.073082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198679, 0.795520, -0.572429,
		0.554860, -0.572755, -0.603392,
		-0.807872, -0.197737, -0.555196,
		36.098175, 30.450392, 29.906523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879868, 30.617414, 29.606262>,  <36.663689, 30.588806, 30.295160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879868, 30.617414, 29.606262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484970, 30.679443, 29.620720>,  <36.248032, 30.716661, 29.629395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484970, 30.679443, 29.620720>,  <36.879868, 30.617414, 29.606262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484970, 30.679443, 29.620720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106916, 0.813807, -0.571215,
		-0.117996, -0.560063, -0.820004,
		-0.987242, 0.155073, 0.036146,
		36.188797, 30.725965, 29.631563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534256, 30.517805, 28.965376>,  <36.879868, 30.617414, 29.606262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534256, 30.517805, 28.965376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379593, 30.810829, 29.189465>,  <36.286797, 30.986645, 29.323917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379593, 30.810829, 29.189465>,  <36.534256, 30.517805, 28.965376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379593, 30.810829, 29.189465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115553, 0.641165, -0.758653,
		-0.914955, -0.228604, -0.332561,
		-0.386658, 0.732563, 0.560222,
		36.263596, 31.030598, 29.357531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850761, 30.723837, 28.614626>,  <36.534256, 30.517805, 28.965376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850761, 30.723837, 28.614626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054703, 30.994793, 28.826736>,  <36.177067, 31.157366, 28.954002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054703, 30.994793, 28.826736>,  <35.850761, 30.723837, 28.614626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054703, 30.994793, 28.826736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060625, 0.586589, -0.807612,
		-0.858124, 0.443910, 0.258007,
		0.509851, 0.677390, 0.530278,
		36.207657, 31.198009, 28.985821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471123, 31.412926, 28.444365>,  <35.850761, 30.723837, 28.614626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471123, 31.412926, 28.444365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847832, 31.455887, 28.571819>,  <36.073856, 31.481663, 28.648293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847832, 31.455887, 28.571819>,  <35.471123, 31.412926, 28.444365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847832, 31.455887, 28.571819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196620, 0.592825, -0.780960,
		-0.272772, 0.798137, 0.537190,
		0.941773, 0.107401, 0.318636,
		36.130363, 31.488108, 28.667410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591072, 32.105026, 28.202755>,  <35.471123, 31.412926, 28.444365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591072, 32.105026, 28.202755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938087, 31.918224, 28.271210>,  <36.146297, 31.806143, 28.312283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938087, 31.918224, 28.271210>,  <35.591072, 32.105026, 28.202755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938087, 31.918224, 28.271210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402185, 0.456230, -0.793790,
		0.292629, 0.757468, 0.583619,
		0.867534, -0.467009, 0.171136,
		36.198349, 31.778122, 28.322550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000694, 32.669022, 28.041105>,  <35.591072, 32.105026, 28.202755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000694, 32.669022, 28.041105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239361, 32.348026, 28.042259>,  <36.382561, 32.155430, 28.042952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239361, 32.348026, 28.042259>,  <36.000694, 32.669022, 28.041105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239361, 32.348026, 28.042259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519717, 0.383674, -0.763340,
		0.611463, 0.456957, 0.645990,
		0.596663, -0.802487, 0.002885,
		36.418358, 32.107281, 28.043125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684708, 32.927578, 28.013283>,  <36.000694, 32.669022, 28.041105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684708, 32.927578, 28.013283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693096, 32.553127, 27.872864>,  <36.698128, 32.328457, 27.788612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693096, 32.553127, 27.872864>,  <36.684708, 32.927578, 28.013283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693096, 32.553127, 27.872864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486835, 0.316245, -0.814236,
		0.873242, -0.153826, 0.462369,
		0.020971, -0.936123, -0.351047,
		36.699387, 32.272289, 27.767550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340462, 32.761196, 27.753771>,  <36.684708, 32.927578, 28.013283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340462, 32.761196, 27.753771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163815, 32.443657, 27.586544>,  <37.057827, 32.253132, 27.486208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163815, 32.443657, 27.586544>,  <37.340462, 32.761196, 27.753771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163815, 32.443657, 27.586544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524344, 0.149752, -0.838235,
		0.728038, -0.589389, 0.350116,
		-0.441616, -0.793848, -0.418068,
		37.031330, 32.205502, 27.461124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886158, 32.447170, 27.423820>,  <37.340462, 32.761196, 27.753771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886158, 32.447170, 27.423820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545132, 32.352032, 27.237675>,  <37.340515, 32.294949, 27.125988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545132, 32.352032, 27.237675>,  <37.886158, 32.447170, 27.423820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545132, 32.352032, 27.237675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479163, -0.000237, -0.877726,
		0.208656, -0.971302, 0.114170,
		-0.852564, -0.237849, -0.465363,
		37.289364, 32.280678, 27.098066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041431, 31.878338, 26.949928>,  <37.886158, 32.447170, 27.423820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041431, 31.878338, 26.949928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702744, 32.021378, 26.792351>,  <37.499531, 32.107201, 26.697803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702744, 32.021378, 26.792351>,  <38.041431, 31.878338, 26.949928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702744, 32.021378, 26.792351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341360, -0.202810, -0.917791,
		-0.408099, -0.911586, 0.049652,
		-0.846716, 0.357600, -0.393946,
		37.448727, 32.128658, 26.674168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930996, 31.417223, 26.447319>,  <38.041431, 31.878338, 26.949928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930996, 31.417223, 26.447319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702141, 31.734150, 26.362572>,  <37.564827, 31.924305, 26.311724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702141, 31.734150, 26.362572>,  <37.930996, 31.417223, 26.447319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702141, 31.734150, 26.362572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292431, -0.044274, -0.955261,
		-0.766249, -0.608502, -0.206367,
		-0.572142, 0.792316, -0.211870,
		37.530499, 31.971846, 26.299011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566025, 31.218330, 25.843386>,  <37.930996, 31.417223, 26.447319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566025, 31.218330, 25.843386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588356, 31.617664, 25.849190>,  <37.601753, 31.857265, 25.852673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588356, 31.617664, 25.849190>,  <37.566025, 31.218330, 25.843386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588356, 31.617664, 25.849190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245088, 0.000388, -0.969501,
		-0.967892, 0.057680, -0.244659,
		0.055826, 0.998335, 0.014513,
		37.605103, 31.917166, 25.853544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353832, 31.420795, 25.164026>,  <37.566025, 31.218330, 25.843386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353832, 31.420795, 25.164026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532291, 31.751560, 25.300941>,  <37.639366, 31.950020, 25.383091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532291, 31.751560, 25.300941>,  <37.353832, 31.420795, 25.164026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532291, 31.751560, 25.300941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419496, 0.144621, -0.896163,
		-0.790552, 0.543414, -0.282364,
		0.446151, 0.826914, 0.342290,
		37.666138, 31.999634, 25.403629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092388, 32.016472, 24.676617>,  <37.353832, 31.420795, 25.164026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092388, 32.016472, 24.676617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447170, 32.094532, 24.844059>,  <37.660038, 32.141369, 24.944525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447170, 32.094532, 24.844059>,  <37.092388, 32.016472, 24.676617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447170, 32.094532, 24.844059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394258, 0.152185, -0.906311,
		-0.240570, 0.968895, 0.058043,
		0.886954, 0.195147, 0.418606,
		37.713257, 32.153076, 24.969641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227577, 32.679707, 24.571827>,  <37.092388, 32.016472, 24.676617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227577, 32.679707, 24.571827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604591, 32.556301, 24.623123>,  <37.830799, 32.482258, 24.653900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604591, 32.556301, 24.623123>,  <37.227577, 32.679707, 24.571827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604591, 32.556301, 24.623123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222962, 0.294948, -0.929136,
		0.248827, 0.904337, 0.346786,
		0.942536, -0.308514, 0.128241,
		37.887352, 32.463745, 24.661596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716217, 33.274769, 24.512190>,  <37.227577, 32.679707, 24.571827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716217, 33.274769, 24.512190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946758, 32.956875, 24.436073>,  <38.085083, 32.766136, 24.390404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946758, 32.956875, 24.436073>,  <37.716217, 33.274769, 24.512190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946758, 32.956875, 24.436073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418732, 0.487168, -0.766375,
		0.701773, 0.362018, 0.613562,
		0.576349, -0.794739, -0.190293,
		38.119663, 32.718452, 24.378986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437401, 33.514050, 24.350086>,  <37.716217, 33.274769, 24.512190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437401, 33.514050, 24.350086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455406, 33.138496, 24.213573>,  <38.466209, 32.913166, 24.131666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455406, 33.138496, 24.213573>,  <38.437401, 33.514050, 24.350086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455406, 33.138496, 24.213573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433660, 0.326125, -0.839989,
		0.899951, -0.110185, 0.421837,
		0.045017, -0.938883, -0.341280,
		38.468910, 32.856831, 24.111189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113571, 33.494862, 24.135094>,  <38.437401, 33.514050, 24.350086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113571, 33.494862, 24.135094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925312, 33.196461, 23.946640>,  <38.812355, 33.017418, 23.833567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925312, 33.196461, 23.946640>,  <39.113571, 33.494862, 24.135094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925312, 33.196461, 23.946640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480150, 0.231432, -0.846106,
		0.740235, -0.624433, 0.249271,
		-0.470647, -0.746004, -0.471135,
		38.784119, 32.972660, 23.805300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581326, 33.017319, 23.787270>,  <39.113571, 33.494862, 24.135094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581326, 33.017319, 23.787270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240654, 32.945724, 23.590248>,  <39.036251, 32.902767, 23.472036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240654, 32.945724, 23.590248>,  <39.581326, 33.017319, 23.787270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240654, 32.945724, 23.590248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506909, -0.042845, -0.860934,
		0.132995, -0.982917, 0.127222,
		-0.851678, -0.178991, -0.492552,
		38.985149, 32.892029, 23.442482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748917, 32.491325, 23.284031>,  <39.581326, 33.017319, 23.787270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748917, 32.491325, 23.284031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415482, 32.677917, 23.165691>,  <39.215420, 32.789871, 23.094688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415482, 32.677917, 23.165691>,  <39.748917, 32.491325, 23.284031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415482, 32.677917, 23.165691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379825, 0.095167, -0.920150,
		-0.401077, -0.879397, -0.256511,
		-0.833589, 0.466480, -0.295848,
		39.165405, 32.817860, 23.076937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510635, 32.136662, 22.647928>,  <39.748917, 32.491325, 23.284031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510635, 32.136662, 22.647928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337101, 32.497055, 22.646317>,  <39.232983, 32.713291, 22.645350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337101, 32.497055, 22.646317>,  <39.510635, 32.136662, 22.647928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337101, 32.497055, 22.646317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302069, 0.141234, -0.942766,
		-0.848849, -0.410219, -0.333432,
		-0.433832, 0.900985, -0.004029,
		39.206951, 32.767349, 22.645107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398796, 32.228630, 22.051781>,  <39.510635, 32.136662, 22.647928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398796, 32.228630, 22.051781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317463, 32.611408, 22.134647>,  <39.268661, 32.841076, 22.184366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317463, 32.611408, 22.134647>,  <39.398796, 32.228630, 22.051781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317463, 32.611408, 22.134647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055468, 0.222504, -0.973352,
		-0.977537, -0.186424, -0.098322,
		-0.203333, 0.956942, 0.207166,
		39.256462, 32.898491, 22.196796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819721, 32.377640, 21.668854>,  <39.398796, 32.228630, 22.051781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819721, 32.377640, 21.668854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014278, 32.714115, 21.763371>,  <39.131012, 32.916000, 21.820080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014278, 32.714115, 21.763371>,  <38.819721, 32.377640, 21.668854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014278, 32.714115, 21.763371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129317, 0.198151, -0.971604,
		-0.864120, 0.503134, -0.012401,
		0.486389, 0.841185, 0.236290,
		39.160194, 32.966473, 21.834257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607235, 33.155243, 21.554668>,  <38.819721, 32.377640, 21.668854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607235, 33.155243, 21.554668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003803, 33.112144, 21.525066>,  <39.241745, 33.086285, 21.507305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003803, 33.112144, 21.525066>,  <38.607235, 33.155243, 21.554668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003803, 33.112144, 21.525066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054365, 0.174967, -0.983072,
		0.118870, 0.978661, 0.167608,
		0.991421, -0.107746, -0.074003,
		39.301228, 33.079823, 21.502865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208157, 33.576275, 21.338129>,  <38.607235, 33.155243, 21.554668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208157, 33.576275, 21.338129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392822, 33.505505, 20.990437>,  <38.503620, 33.463043, 20.781820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392822, 33.505505, 20.990437>,  <38.208157, 33.576275, 21.338129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392822, 33.505505, 20.990437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128309, -0.956282, 0.262795,
		-0.877727, -0.232853, -0.418777,
		0.461662, -0.176930, -0.869232,
		38.531322, 33.452427, 20.729668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919712, 33.099422, 21.765072>,  <38.208157, 33.576275, 21.338129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919712, 33.099422, 21.765072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645653, 33.059582, 21.476448>,  <37.481216, 33.035679, 21.303274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645653, 33.059582, 21.476448>,  <37.919712, 33.099422, 21.765072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645653, 33.059582, 21.476448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574496, -0.535100, 0.619372,
		-0.447798, 0.838897, 0.309403,
		-0.685150, -0.099603, -0.721559,
		37.440109, 33.029701, 21.259979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228790, 33.487919, 21.904547>,  <37.919712, 33.099422, 21.765072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228790, 33.487919, 21.904547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199989, 33.148949, 21.694141>,  <37.182709, 32.945568, 21.567898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199989, 33.148949, 21.694141>,  <37.228790, 33.487919, 21.904547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199989, 33.148949, 21.694141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463201, -0.438651, 0.770085,
		-0.883324, 0.299097, -0.360944,
		-0.072001, -0.847423, -0.526013,
		37.178391, 32.894722, 21.536337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799942, 33.192741, 22.459940>,  <37.228790, 33.487919, 21.904547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799942, 33.192741, 22.459940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772900, 32.906303, 22.182053>,  <36.756672, 32.734440, 22.015320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772900, 32.906303, 22.182053>,  <36.799942, 33.192741, 22.459940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772900, 32.906303, 22.182053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747733, -0.424636, 0.510471,
		-0.660549, 0.553976, -0.506740,
		-0.067609, -0.716097, -0.694719,
		36.752617, 32.691475, 21.973637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164726, 33.201824, 22.201254>,  <36.799942, 33.192741, 22.459940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164726, 33.201824, 22.201254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226219, 32.807404, 22.175713>,  <36.263115, 32.570751, 22.160389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226219, 32.807404, 22.175713>,  <36.164726, 33.201824, 22.201254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226219, 32.807404, 22.175713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928546, -0.166257, 0.331906,
		-0.337891, 0.008265, -0.941149,
		0.153729, -0.986048, -0.063852,
		36.272339, 32.511589, 22.156557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609566, 32.768459, 21.837635>,  <36.164726, 33.201824, 22.201254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609566, 32.768459, 21.837635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779026, 32.593388, 22.154861>,  <35.880703, 32.488346, 22.345198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779026, 32.593388, 22.154861>,  <35.609566, 32.768459, 21.837635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779026, 32.593388, 22.154861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903920, -0.261010, 0.338824,
		0.058702, -0.860413, -0.506205,
		0.423654, -0.437680, 0.793067,
		35.906120, 32.462082, 22.392782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342773, 32.144810, 22.016985>,  <35.609566, 32.768459, 21.837635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342773, 32.144810, 22.016985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506718, 32.290035, 22.351696>,  <35.605083, 32.377171, 22.552523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506718, 32.290035, 22.351696>,  <35.342773, 32.144810, 22.016985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506718, 32.290035, 22.351696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699820, -0.463218, 0.543765,
		0.585033, -0.808462, 0.064225,
		0.409863, 0.363067, 0.836776,
		35.629677, 32.398956, 22.602730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486214, 31.527384, 22.384207>,  <35.342773, 32.144810, 22.016985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486214, 31.527384, 22.384207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473881, 31.851704, 22.618011>,  <35.466480, 32.046295, 22.758295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473881, 31.851704, 22.618011>,  <35.486214, 31.527384, 22.384207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473881, 31.851704, 22.618011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739456, -0.411958, 0.532442,
		0.672498, -0.415807, 0.612250,
		-0.030829, 0.810799, 0.584512,
		35.464634, 32.094944, 22.793365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558617, 31.319109, 23.111710>,  <35.486214, 31.527384, 22.384207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558617, 31.319109, 23.111710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377495, 31.675606, 23.101467>,  <35.268822, 31.889503, 23.095322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377495, 31.675606, 23.101467>,  <35.558617, 31.319109, 23.111710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377495, 31.675606, 23.101467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769070, -0.375884, 0.516955,
		0.451108, 0.253772, 0.855629,
		-0.452806, 0.891241, -0.025604,
		35.241653, 31.942978, 23.093786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317226, 31.439495, 23.828909>,  <35.558617, 31.319109, 23.111710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317226, 31.439495, 23.828909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100796, 31.695740, 23.610973>,  <34.970936, 31.849487, 23.480213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100796, 31.695740, 23.610973>,  <35.317226, 31.439495, 23.828909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100796, 31.695740, 23.610973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840763, -0.426496, 0.333496,
		-0.018729, 0.638526, 0.769372,
		-0.541079, 0.640614, -0.544837,
		34.938473, 31.887924, 23.447523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952480, 31.821589, 24.314396>,  <35.317226, 31.439495, 23.828909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952480, 31.821589, 24.314396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744488, 31.836536, 23.973053>,  <34.619694, 31.845505, 23.768248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744488, 31.836536, 23.973053>,  <34.952480, 31.821589, 24.314396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744488, 31.836536, 23.973053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775514, -0.439422, 0.453306,
		-0.358044, 0.897503, 0.257472,
		-0.519982, 0.037370, -0.853359,
		34.588493, 31.847748, 23.717045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275650, 32.046474, 24.569668>,  <34.952480, 31.821589, 24.314396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275650, 32.046474, 24.569668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231918, 31.887054, 24.205425>,  <34.205677, 31.791403, 23.986879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231918, 31.887054, 24.205425>,  <34.275650, 32.046474, 24.569668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231918, 31.887054, 24.205425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781584, -0.531542, 0.326483,
		-0.614145, 0.747410, -0.253385,
		-0.109332, -0.398549, -0.910607,
		34.199120, 31.767490, 23.932243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614323, 32.024227, 24.591436>,  <34.275650, 32.046474, 24.569668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614323, 32.024227, 24.591436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707664, 31.807308, 24.268585>,  <33.763668, 31.677156, 24.074875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707664, 31.807308, 24.268585>,  <33.614323, 32.024227, 24.591436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707664, 31.807308, 24.268585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710730, -0.661606, 0.239042,
		-0.663631, 0.517862, -0.539827,
		0.233361, -0.542307, -0.807122,
		33.777672, 31.644617, 24.026447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011242, 31.837923, 24.311138>,  <33.614323, 32.024227, 24.591436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011242, 31.837923, 24.311138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263340, 31.554127, 24.185020>,  <33.414600, 31.383850, 24.109350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263340, 31.554127, 24.185020>,  <33.011242, 31.837923, 24.311138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263340, 31.554127, 24.185020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597760, -0.702577, 0.386093,
		-0.495447, -0.054866, -0.866904,
		0.630250, -0.709489, -0.315293,
		33.452415, 31.341280, 24.090433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587036, 31.314146, 23.928827>,  <33.011242, 31.837923, 24.311138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587036, 31.314146, 23.928827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930424, 31.151627, 24.054020>,  <33.136456, 31.054115, 24.129135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930424, 31.151627, 24.054020>,  <32.587036, 31.314146, 23.928827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930424, 31.151627, 24.054020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509923, -0.741503, 0.436065,
		0.054906, -0.533944, -0.843735,
		0.858466, -0.406297, 0.312983,
		33.187965, 31.029737, 24.147915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516167, 30.531279, 23.815390>,  <32.587036, 31.314146, 23.928827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516167, 30.531279, 23.815390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826435, 30.586773, 24.061672>,  <33.012596, 30.620070, 24.209442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826435, 30.586773, 24.061672>,  <32.516167, 30.531279, 23.815390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826435, 30.586773, 24.061672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324090, -0.749549, 0.577184,
		0.541578, -0.647247, -0.536437,
		0.775667, 0.138736, 0.615706,
		33.059135, 30.628393, 24.246384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803265, 29.878239, 23.810944>,  <32.516167, 30.531279, 23.815390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803265, 29.878239, 23.810944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914047, 30.088253, 24.132847>,  <32.980515, 30.214262, 24.325989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914047, 30.088253, 24.132847>,  <32.803265, 29.878239, 23.810944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914047, 30.088253, 24.132847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322310, -0.738235, 0.592558,
		0.905214, -0.423492, -0.035231,
		0.276952, 0.525037, 0.804757,
		32.997131, 30.245764, 24.374273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127659, 29.359072, 24.210550>,  <32.803265, 29.878239, 23.810944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127659, 29.359072, 24.210550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033352, 29.658588, 24.458332>,  <32.976768, 29.838299, 24.607002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033352, 29.658588, 24.458332>,  <33.127659, 29.359072, 24.210550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033352, 29.658588, 24.458332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341318, -0.660620, 0.668643,
		0.909899, -0.053787, 0.411329,
		-0.235768, 0.748791, 0.619456,
		32.962620, 29.883226, 24.644169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397976, 29.089336, 24.854401>,  <33.127659, 29.359072, 24.210550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397976, 29.089336, 24.854401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146740, 29.389084, 24.938255>,  <32.995998, 29.568932, 24.988569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146740, 29.389084, 24.938255>,  <33.397976, 29.089336, 24.854401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146740, 29.389084, 24.938255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405625, -0.545214, 0.733628,
		0.664056, 0.375750, 0.646407,
		-0.628091, 0.749368, 0.209639,
		32.958313, 29.613894, 25.001146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476910, 29.174971, 25.592279>,  <33.397976, 29.089336, 24.854401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476910, 29.174971, 25.592279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135887, 29.360325, 25.495594>,  <32.931274, 29.471539, 25.437582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135887, 29.360325, 25.495594>,  <33.476910, 29.174971, 25.592279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135887, 29.360325, 25.495594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426333, -0.349089, 0.834492,
		0.302314, 0.814499, 0.495174,
		-0.852553, 0.463388, -0.241713,
		32.880123, 29.499342, 25.423080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333366, 29.690758, 26.138086>,  <33.476910, 29.174971, 25.592279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333366, 29.690758, 26.138086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982555, 29.585903, 25.977036>,  <32.772068, 29.522991, 25.880405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982555, 29.585903, 25.977036>,  <33.333366, 29.690758, 26.138086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982555, 29.585903, 25.977036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306522, -0.340025, 0.889060,
		-0.369957, 0.903144, 0.217861,
		-0.877027, -0.262135, -0.402628,
		32.719448, 29.507263, 25.856247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849911, 29.949924, 26.546228>,  <33.333366, 29.690758, 26.138086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849911, 29.949924, 26.546228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665165, 29.654884, 26.349201>,  <32.554317, 29.477859, 26.230984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665165, 29.654884, 26.349201>,  <32.849911, 29.949924, 26.546228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665165, 29.654884, 26.349201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410800, -0.314297, 0.855839,
		-0.786081, 0.597631, -0.157843,
		-0.461866, -0.737600, -0.492570,
		32.526604, 29.433603, 26.201429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214607, 29.806414, 26.953043>,  <32.849911, 29.949924, 26.546228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214607, 29.806414, 26.953043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254841, 29.494225, 26.706226>,  <32.278980, 29.306911, 26.558136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254841, 29.494225, 26.706226>,  <32.214607, 29.806414, 26.953043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254841, 29.494225, 26.706226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417271, -0.596101, 0.685965,
		-0.903199, 0.188476, -0.385629,
		0.100586, -0.780474, -0.617043,
		32.285015, 29.260082, 26.521112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550045, 29.454197, 26.977175>,  <32.214607, 29.806414, 26.953043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550045, 29.454197, 26.977175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841558, 29.207554, 26.858063>,  <32.016468, 29.059568, 26.786596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841558, 29.207554, 26.858063>,  <31.550045, 29.454197, 26.977175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841558, 29.207554, 26.858063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299704, -0.678246, 0.670939,
		-0.615669, -0.399726, -0.679095,
		0.728786, -0.616604, -0.297776,
		32.060192, 29.022572, 26.768730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202484, 28.789021, 26.899197>,  <31.550045, 29.454197, 26.977175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202484, 28.789021, 26.899197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597347, 28.726231, 26.911022>,  <31.834265, 28.688557, 26.918118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597347, 28.726231, 26.911022>,  <31.202484, 28.789021, 26.899197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597347, 28.726231, 26.911022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150876, -0.855528, 0.495287,
		-0.052455, -0.493388, -0.868226,
		0.987160, -0.156975, 0.029564,
		31.893496, 28.679138, 26.919891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339619, 28.147911, 26.553246>,  <31.202484, 28.789021, 26.899197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339619, 28.147911, 26.553246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617651, 28.224319, 26.830482>,  <31.784470, 28.270164, 26.996824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617651, 28.224319, 26.830482>,  <31.339619, 28.147911, 26.553246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617651, 28.224319, 26.830482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201149, -0.873883, 0.442570,
		0.690221, -0.447036, -0.568994,
		0.695078, 0.191019, 0.693093,
		31.826174, 28.281626, 27.038410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778076, 27.588474, 26.554623>,  <31.339619, 28.147911, 26.553246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778076, 27.588474, 26.554623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815554, 27.765686, 26.911263>,  <31.838039, 27.872013, 27.125246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815554, 27.765686, 26.911263>,  <31.778076, 27.588474, 26.554623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815554, 27.765686, 26.911263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282536, -0.846889, 0.450503,
		0.954670, -0.294118, 0.045824,
		0.093693, 0.443029, 0.891598,
		31.843662, 27.898594, 27.178741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067818, 27.114323, 26.911236>,  <31.778076, 27.588474, 26.554623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067818, 27.114323, 26.911236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945185, 27.372086, 27.191448>,  <31.871605, 27.526743, 27.359575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945185, 27.372086, 27.191448>,  <32.067818, 27.114323, 26.911236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945185, 27.372086, 27.191448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296397, -0.764016, 0.573087,
		0.904519, -0.031937, 0.425235,
		-0.306584, 0.644407, 0.700533,
		31.853210, 27.565407, 27.401608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229580, 26.708158, 27.547281>,  <32.067818, 27.114323, 26.911236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229580, 26.708158, 27.547281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995333, 27.012589, 27.658859>,  <31.854784, 27.195248, 27.725807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995333, 27.012589, 27.658859>,  <32.229580, 26.708158, 27.547281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995333, 27.012589, 27.658859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346925, -0.546351, 0.762328,
		0.732592, 0.349662, 0.583991,
		-0.585621, 0.761076, 0.278946,
		31.819647, 27.240911, 27.742542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319103, 26.696060, 28.209517>,  <32.229580, 26.708158, 27.547281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319103, 26.696060, 28.209517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989412, 26.917053, 28.159863>,  <31.791597, 27.049648, 28.130070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989412, 26.917053, 28.159863>,  <32.319103, 26.696060, 28.209517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989412, 26.917053, 28.159863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424749, -0.458239, 0.780772,
		0.374479, 0.696261, 0.612360,
		-0.824229, 0.552483, -0.124135,
		31.742144, 27.082798, 28.122622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185421, 27.111925, 28.909405>,  <32.319103, 26.696060, 28.209517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185421, 27.111925, 28.909405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844976, 27.073807, 28.702896>,  <31.640711, 27.050936, 28.578991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844976, 27.073807, 28.702896>,  <32.185421, 27.111925, 28.909405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844976, 27.073807, 28.702896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383514, -0.558698, 0.735373,
		-0.358517, 0.823878, 0.438964,
		-0.851107, -0.095294, -0.516272,
		31.589643, 27.045218, 28.548014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645247, 27.406097, 29.443810>,  <32.185421, 27.111925, 28.909405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645247, 27.406097, 29.443810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464268, 27.186031, 29.163063>,  <31.355680, 27.053991, 28.994616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464268, 27.186031, 29.163063>,  <31.645247, 27.406097, 29.443810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464268, 27.186031, 29.163063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446344, -0.541656, 0.712310,
		-0.772056, 0.635554, -0.000493,
		-0.452445, -0.550164, -0.701864,
		31.328535, 27.020983, 28.952503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939201, 27.472486, 29.605011>,  <31.645247, 27.406097, 29.443810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939201, 27.472486, 29.605011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980116, 27.151085, 29.370434>,  <31.004665, 26.958244, 29.229687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980116, 27.151085, 29.370434>,  <30.939201, 27.472486, 29.605011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980116, 27.151085, 29.370434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508811, -0.548841, 0.663238,
		-0.854780, 0.230549, -0.464971,
		0.102286, -0.803505, -0.586444,
		31.010801, 26.910034, 29.194500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294292, 27.163679, 29.691311>,  <30.939201, 27.472486, 29.605011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294292, 27.163679, 29.691311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566334, 26.895473, 29.572742>,  <30.729559, 26.734550, 29.501602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566334, 26.895473, 29.572742>,  <30.294292, 27.163679, 29.691311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566334, 26.895473, 29.572742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315980, -0.632949, 0.706776,
		-0.661524, -0.387018, -0.642341,
		0.680104, -0.670516, -0.296421,
		30.770365, 26.694319, 29.483816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928280, 26.577620, 29.442379>,  <30.294292, 27.163679, 29.691311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928280, 26.577620, 29.442379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292238, 26.480362, 29.576820>,  <30.510614, 26.422007, 29.657486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292238, 26.480362, 29.576820>,  <29.928280, 26.577620, 29.442379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292238, 26.480362, 29.576820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414495, -0.565568, 0.712970,
		0.016735, -0.788043, -0.615392,
		0.909898, -0.243146, 0.336105,
		30.565208, 26.407417, 29.677652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024218, 25.794184, 29.413935>,  <29.928280, 26.577620, 29.442379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024218, 25.794184, 29.413935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279116, 25.945736, 29.682373>,  <30.432055, 26.036667, 29.843435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279116, 25.945736, 29.682373>,  <30.024218, 25.794184, 29.413935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279116, 25.945736, 29.682373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359382, -0.624226, 0.693676,
		0.681735, -0.683222, -0.261623,
		0.637246, 0.378880, 0.671094,
		30.470289, 26.059401, 29.883701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211746, 25.125399, 29.721395>,  <30.024218, 25.794184, 29.413935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211746, 25.125399, 29.721395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312817, 25.416409, 29.976540>,  <30.373459, 25.591015, 30.129625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312817, 25.416409, 29.976540>,  <30.211746, 25.125399, 29.721395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312817, 25.416409, 29.976540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326291, -0.556561, 0.764051,
		0.910873, -0.401185, 0.096755,
		0.252675, 0.727524, 0.637859,
		30.388618, 25.634666, 30.167898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458044, 24.778973, 30.221226>,  <30.211746, 25.125399, 29.721395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458044, 24.778973, 30.221226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399101, 25.131474, 30.400860>,  <30.363735, 25.342974, 30.508640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399101, 25.131474, 30.400860>,  <30.458044, 24.778973, 30.221226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399101, 25.131474, 30.400860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293484, -0.472552, 0.831001,
		0.944539, -0.009347, 0.328267,
		-0.147356, 0.881253, 0.449087,
		30.354895, 25.395849, 30.535585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847567, 24.767214, 30.807367>,  <30.458044, 24.778973, 30.221226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847567, 24.767214, 30.807367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539402, 25.015369, 30.866135>,  <30.354504, 25.164263, 30.901394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539402, 25.015369, 30.866135>,  <30.847567, 24.767214, 30.807367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539402, 25.015369, 30.866135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221925, -0.476987, 0.850431,
		0.597674, 0.622577, 0.505156,
		-0.770412, 0.620387, 0.146917,
		30.308279, 25.201487, 30.910210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877155, 24.802555, 31.429569>,  <30.847567, 24.767214, 30.807367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877155, 24.802555, 31.429569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509987, 24.947929, 31.365902>,  <30.289686, 25.035154, 31.327702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509987, 24.947929, 31.365902>,  <30.877155, 24.802555, 31.429569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509987, 24.947929, 31.365902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301316, -0.377555, 0.875592,
		0.258128, 0.851684, 0.456075,
		-0.917921, 0.363437, -0.159169,
		30.234612, 25.056961, 31.318151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715706, 25.076748, 32.046234>,  <30.877155, 24.802555, 31.429569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715706, 25.076748, 32.046234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374578, 25.001713, 31.851295>,  <30.169903, 24.956692, 31.734331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374578, 25.001713, 31.851295>,  <30.715706, 25.076748, 32.046234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374578, 25.001713, 31.851295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349150, -0.489154, 0.799263,
		-0.388323, 0.851786, 0.351663,
		-0.852819, -0.187589, -0.487351,
		30.118732, 24.945436, 31.705090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286957, 25.222664, 32.570194>,  <30.715706, 25.076748, 32.046234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286957, 25.222664, 32.570194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072432, 25.012905, 32.305656>,  <29.943716, 24.887049, 32.146935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072432, 25.012905, 32.305656>,  <30.286957, 25.222664, 32.570194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072432, 25.012905, 32.305656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470337, -0.464938, 0.750077,
		-0.700824, 0.713329, 0.002708,
		-0.536311, -0.524398, -0.661345,
		29.911539, 24.855585, 32.107254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543722, 25.338848, 32.812866>,  <30.286957, 25.222664, 32.570194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543722, 25.338848, 32.812866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568132, 25.016567, 32.577198>,  <29.582779, 24.823198, 32.435799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568132, 25.016567, 32.577198>,  <29.543722, 25.338848, 32.812866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568132, 25.016567, 32.577198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410935, -0.558206, 0.720790,
		-0.909620, 0.198125, -0.365154,
		0.061025, -0.805700, -0.589172,
		29.586439, 24.774857, 32.400448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854469, 24.933552, 32.858307>,  <29.543722, 25.338848, 32.812866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854469, 24.933552, 32.858307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150768, 24.688084, 32.748985>,  <29.328548, 24.540802, 32.683392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150768, 24.688084, 32.748985>,  <28.854469, 24.933552, 32.858307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150768, 24.688084, 32.748985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267299, -0.642493, 0.718160,
		-0.616307, -0.458927, -0.639963,
		0.740754, -0.613668, -0.273302,
		29.372993, 24.503983, 32.666992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583569, 24.264137, 33.033993>,  <28.854469, 24.933552, 32.858307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583569, 24.264137, 33.033993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972021, 24.193390, 32.969963>,  <29.205091, 24.150942, 32.931545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972021, 24.193390, 32.969963>,  <28.583569, 24.264137, 33.033993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972021, 24.193390, 32.969963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014591, -0.713824, 0.700173,
		-0.238106, -0.677624, -0.695796,
		0.971130, -0.176867, -0.160078,
		29.263359, 24.140329, 32.921940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649057, 23.558050, 32.863239>,  <28.583569, 24.264137, 33.033993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649057, 23.558050, 32.863239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009434, 23.675537, 32.991009>,  <29.225660, 23.746029, 33.067673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009434, 23.675537, 32.991009>,  <28.649057, 23.558050, 32.863239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009434, 23.675537, 32.991009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059256, -0.645944, 0.761081,
		0.429875, -0.704618, -0.564554,
		0.900942, 0.293716, 0.319428,
		29.279716, 23.763653, 33.086838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004534, 22.875650, 33.109272>,  <28.649057, 23.558050, 32.863239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004534, 22.875650, 33.109272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185408, 23.182346, 33.291542>,  <29.293932, 23.366364, 33.400906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185408, 23.182346, 33.291542>,  <29.004534, 22.875650, 33.109272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185408, 23.182346, 33.291542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008707, -0.507070, 0.861861,
		0.891882, -0.393688, -0.222613,
		0.452185, 0.766740, 0.455674,
		29.321064, 23.412369, 33.428246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452774, 22.554958, 33.427853>,  <29.004534, 22.875650, 33.109272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452774, 22.554958, 33.427853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390751, 22.905937, 33.609421>,  <29.353537, 23.116524, 33.718361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390751, 22.905937, 33.609421>,  <29.452774, 22.554958, 33.427853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390751, 22.905937, 33.609421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243202, -0.479244, 0.843314,
		0.957502, 0.020367, 0.287706,
		-0.155057, 0.877445, 0.453924,
		29.344234, 23.169170, 33.745598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837925, 22.608797, 34.143635>,  <29.452774, 22.554958, 33.427853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837925, 22.608797, 34.143635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526978, 22.860279, 34.151939>,  <29.340408, 23.011168, 34.156921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526978, 22.860279, 34.151939>,  <29.837925, 22.608797, 34.143635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526978, 22.860279, 34.151939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252145, -0.341660, 0.905368,
		0.576300, 0.698571, 0.424120,
		-0.777368, 0.628703, 0.020758,
		29.293768, 23.048889, 34.158165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867039, 23.216822, 34.686813>,  <29.837925, 22.608797, 34.143635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867039, 23.216822, 34.686813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530064, 23.029404, 34.580406>,  <29.327879, 22.916952, 34.516563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530064, 23.029404, 34.580406>,  <29.867039, 23.216822, 34.686813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530064, 23.029404, 34.580406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101884, -0.346285, 0.932581,
		-0.529073, 0.812744, 0.243986,
		-0.842438, -0.468545, -0.266016,
		29.277332, 22.888840, 34.500603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225922, 23.501532, 35.030602>,  <29.867039, 23.216822, 34.686813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225922, 23.501532, 35.030602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179903, 23.118496, 34.924934>,  <29.152292, 22.888674, 34.861534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179903, 23.118496, 34.924934>,  <29.225922, 23.501532, 35.030602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179903, 23.118496, 34.924934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235927, -0.231986, 0.943674,
		-0.964936, 0.170891, -0.199233,
		-0.115046, -0.957590, -0.264170,
		29.145390, 22.831219, 34.845684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670034, 23.293491, 35.423985>,  <29.225922, 23.501532, 35.030602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670034, 23.293491, 35.423985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858917, 22.962494, 35.302475>,  <28.972248, 22.763895, 35.229568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858917, 22.962494, 35.302475>,  <28.670034, 23.293491, 35.423985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858917, 22.962494, 35.302475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097753, -0.391644, 0.914909,
		-0.876050, -0.402334, -0.265828,
		0.472209, -0.827492, -0.303770,
		29.000580, 22.714247, 35.211346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222933, 22.838085, 35.581585>,  <28.670034, 23.293491, 35.423985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222933, 22.838085, 35.581585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588091, 22.674809, 35.581646>,  <28.807186, 22.576843, 35.581684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588091, 22.674809, 35.581646>,  <28.222933, 22.838085, 35.581585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588091, 22.674809, 35.581646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066872, -0.149178, 0.986547,
		-0.402676, -0.900625, -0.163481,
		0.912897, -0.408191, 0.000156,
		28.861959, 22.552351, 35.581692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161835, 22.222448, 35.833790>,  <28.222933, 22.838085, 35.581585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161835, 22.222448, 35.833790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542597, 22.319923, 35.908081>,  <28.771053, 22.378408, 35.952656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542597, 22.319923, 35.908081>,  <28.161835, 22.222448, 35.833790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542597, 22.319923, 35.908081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130459, -0.226126, 0.965322,
		0.277235, -0.943124, -0.183459,
		0.951904, 0.243687, 0.185729,
		28.828169, 22.393030, 35.963799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582232, 22.704060, 36.016270>,  <28.161835, 22.222448, 35.833790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582232, 22.704060, 36.016270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596203, 23.064320, 36.189526>,  <27.604586, 23.280476, 36.293480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596203, 23.064320, 36.189526>,  <27.582232, 22.704060, 36.016270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596203, 23.064320, 36.189526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522602, 0.352969, -0.776080,
		-0.851861, 0.253467, -0.458353,
		0.034926, 0.900649, 0.433142,
		27.606680, 23.334515, 36.319469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304119, 23.234226, 35.599304>,  <27.582232, 22.704060, 36.016270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304119, 23.234226, 35.599304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580109, 23.407402, 35.831341>,  <27.745703, 23.511307, 35.970562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580109, 23.407402, 35.831341>,  <27.304119, 23.234226, 35.599304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580109, 23.407402, 35.831341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332804, 0.521936, -0.785381,
		-0.642791, 0.734947, 0.216038,
		0.689972, 0.432937, 0.580090,
		27.787100, 23.537283, 36.005367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271420, 24.033955, 35.636925>,  <27.304119, 23.234226, 35.599304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271420, 24.033955, 35.636925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634890, 23.877190, 35.694489>,  <27.852972, 23.783131, 35.729027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634890, 23.877190, 35.694489>,  <27.271420, 24.033955, 35.636925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634890, 23.877190, 35.694489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384458, 0.651088, -0.654428,
		0.162779, 0.649992, 0.742303,
		0.908678, -0.391912, 0.143911,
		27.907494, 23.759617, 35.737663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683304, 24.560974, 35.861954>,  <27.271420, 24.033955, 35.636925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683304, 24.560974, 35.861954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928087, 24.277874, 35.720760>,  <28.074957, 24.108015, 35.636044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928087, 24.277874, 35.720760>,  <27.683304, 24.560974, 35.861954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928087, 24.277874, 35.720760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511277, 0.694533, -0.506182,
		0.603410, 0.129289, 0.786880,
		0.611958, -0.707749, -0.352986,
		28.111675, 24.065550, 35.614864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350340, 24.636410, 36.210667>,  <27.683304, 24.560974, 35.861954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350340, 24.636410, 36.210667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356779, 24.503071, 35.833599>,  <28.360641, 24.423067, 35.607361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356779, 24.503071, 35.833599>,  <28.350340, 24.636410, 36.210667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356779, 24.503071, 35.833599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446194, 0.846104, -0.291581,
		0.894791, -0.415919, 0.162357,
		0.016097, -0.333347, -0.942667,
		28.361609, 24.403067, 35.550800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017019, 24.675093, 35.960949>,  <28.350340, 24.636410, 36.210667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017019, 24.675093, 35.960949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813921, 24.637363, 35.618420>,  <28.692062, 24.614725, 35.412903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813921, 24.637363, 35.618420>,  <29.017019, 24.675093, 35.960949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813921, 24.637363, 35.618420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578339, 0.699399, -0.419958,
		0.638527, -0.708479, -0.300565,
		-0.507747, -0.094326, -0.856327,
		28.661596, 24.609066, 35.361523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457359, 24.695208, 35.360546>,  <29.017019, 24.675093, 35.960949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457359, 24.695208, 35.360546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106770, 24.835411, 35.228523>,  <28.896416, 24.919533, 35.149311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106770, 24.835411, 35.228523>,  <29.457359, 24.695208, 35.360546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106770, 24.835411, 35.228523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478729, 0.707263, -0.520190,
		0.051107, -0.613942, -0.787695,
		-0.876474, 0.350507, -0.330058,
		28.843828, 24.940563, 35.129505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703453, 25.000584, 34.752457>,  <29.457359, 24.695208, 35.360546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703453, 25.000584, 34.752457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336658, 25.157539, 34.781212>,  <29.116581, 25.251713, 34.798466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336658, 25.157539, 34.781212>,  <29.703453, 25.000584, 34.752457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336658, 25.157539, 34.781212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280341, 0.762067, -0.583662,
		-0.283805, -0.515057, -0.808808,
		-0.916986, 0.392389, 0.071887,
		29.061563, 25.275255, 34.802776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358702, 25.058435, 34.016529>,  <29.703453, 25.000584, 34.752457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358702, 25.058435, 34.016529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201338, 25.323082, 34.271870>,  <29.106920, 25.481869, 34.425076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201338, 25.323082, 34.271870>,  <29.358702, 25.058435, 34.016529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201338, 25.323082, 34.271870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264987, 0.746479, -0.610370,
		-0.880348, -0.070969, -0.468990,
		-0.393408, 0.661614, 0.638355,
		29.083315, 25.521566, 34.463375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968042, 25.515276, 33.551197>,  <29.358702, 25.058435, 34.016529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968042, 25.515276, 33.551197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978765, 25.720463, 33.894394>,  <28.985199, 25.843575, 34.100311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978765, 25.720463, 33.894394>,  <28.968042, 25.515276, 33.551197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978765, 25.720463, 33.894394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010750, 0.858100, -0.513370,
		-0.999583, 0.022985, 0.017488,
		0.026806, 0.512967, 0.857990,
		28.986807, 25.874353, 34.151791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418556, 26.023600, 33.527790>,  <28.968042, 25.515276, 33.551197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418556, 26.023600, 33.527790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686087, 26.168995, 33.787189>,  <28.846605, 26.256231, 33.942829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686087, 26.168995, 33.787189>,  <28.418556, 26.023600, 33.527790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686087, 26.168995, 33.787189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123603, 0.805804, -0.579139,
		-0.733071, 0.467500, 0.494015,
		0.668826, 0.363488, 0.648496,
		28.886734, 26.278042, 33.981739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225977, 26.680943, 33.538532>,  <28.418556, 26.023600, 33.527790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225977, 26.680943, 33.538532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592373, 26.686829, 33.698906>,  <28.812210, 26.690361, 33.795132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592373, 26.686829, 33.698906>,  <28.225977, 26.680943, 33.538532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592373, 26.686829, 33.698906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173555, 0.886452, -0.429047,
		-0.361724, 0.462586, 0.809425,
		0.915988, 0.014716, 0.400935,
		28.867168, 26.691244, 33.819187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423323, 27.386955, 33.777267>,  <28.225977, 26.680943, 33.538532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423323, 27.386955, 33.777267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777496, 27.210033, 33.720169>,  <28.990000, 27.103880, 33.685909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777496, 27.210033, 33.720169>,  <28.423323, 27.386955, 33.777267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777496, 27.210033, 33.720169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312802, 0.794285, -0.520833,
		0.343750, 0.416510, 0.841639,
		0.885433, -0.442302, -0.142750,
		29.043127, 27.077343, 33.677345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834463, 27.985962, 33.746956>,  <28.423323, 27.386955, 33.777267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834463, 27.985962, 33.746956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060453, 27.687614, 33.605827>,  <29.196047, 27.508606, 33.521152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060453, 27.687614, 33.605827>,  <28.834463, 27.985962, 33.746956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060453, 27.687614, 33.605827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498148, 0.649218, -0.574773,
		0.657761, 0.148978, 0.738346,
		0.564976, -0.745870, -0.352817,
		29.229946, 27.463854, 33.499981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616362, 28.122450, 33.817768>,  <28.834463, 27.985962, 33.746956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616362, 28.122450, 33.817768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548262, 27.875595, 33.510483>,  <29.507402, 27.727482, 33.326111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548262, 27.875595, 33.510483>,  <29.616362, 28.122450, 33.817768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548262, 27.875595, 33.510483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497283, 0.619238, -0.607663,
		0.850720, -0.485475, 0.201467,
		-0.170249, -0.617137, -0.768216,
		29.497187, 27.690454, 33.280018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132294, 28.329483, 33.242718>,  <29.616362, 28.122450, 33.817768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132294, 28.329483, 33.242718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868320, 28.114487, 33.032730>,  <29.709936, 27.985489, 32.906738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868320, 28.114487, 33.032730>,  <30.132294, 28.329483, 33.242718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868320, 28.114487, 33.032730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389570, 0.352673, -0.850798,
		0.642438, -0.765982, -0.023350,
		-0.659931, -0.537489, -0.524974,
		29.670341, 27.953239, 32.875237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540295, 28.083090, 32.711227>,  <30.132294, 28.329483, 33.242718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540295, 28.083090, 32.711227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177378, 28.047672, 32.546799>,  <29.959627, 28.026423, 32.448143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177378, 28.047672, 32.546799>,  <30.540295, 28.083090, 32.711227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177378, 28.047672, 32.546799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353473, 0.368908, -0.859630,
		0.227761, -0.925239, -0.303410,
		-0.907294, -0.088542, -0.411070,
		29.905190, 28.021109, 32.423477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646822, 27.757080, 32.087784>,  <30.540295, 28.083090, 32.711227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646822, 27.757080, 32.087784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291679, 27.940292, 32.070259>,  <30.078594, 28.050220, 32.059746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291679, 27.940292, 32.070259>,  <30.646822, 27.757080, 32.087784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291679, 27.940292, 32.070259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223330, 0.345733, -0.911368,
		-0.402287, -0.818949, -0.409253,
		-0.887856, 0.458030, -0.043812,
		30.025322, 28.077702, 32.057117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465578, 27.746147, 31.460333>,  <30.646822, 27.757080, 32.087784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465578, 27.746147, 31.460333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239893, 28.052219, 31.584373>,  <30.104483, 28.235863, 31.658798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239893, 28.052219, 31.584373>,  <30.465578, 27.746147, 31.460333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239893, 28.052219, 31.584373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262296, 0.522259, -0.811447,
		-0.782857, -0.376491, -0.495369,
		-0.564213, 0.765180, 0.310102,
		30.070629, 28.281773, 31.677404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175840, 27.983349, 30.837976>,  <30.465578, 27.746147, 31.460333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175840, 27.983349, 30.837976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057852, 28.282398, 31.075985>,  <29.987059, 28.461828, 31.218790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057852, 28.282398, 31.075985>,  <30.175840, 27.983349, 30.837976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057852, 28.282398, 31.075985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279801, 0.663013, -0.694352,
		-0.913622, -0.038326, -0.404755,
		-0.294970, 0.747626, 0.595020,
		29.969360, 28.506685, 31.254490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814522, 28.328508, 30.470537>,  <30.175840, 27.983349, 30.837976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814522, 28.328508, 30.470537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941641, 28.583115, 30.751637>,  <30.017912, 28.735878, 30.920296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941641, 28.583115, 30.751637>,  <29.814522, 28.328508, 30.470537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941641, 28.583115, 30.751637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250490, 0.658476, -0.709693,
		-0.914473, 0.401569, 0.049821,
		0.317796, 0.636515, 0.702748,
		30.036980, 28.774069, 30.962461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538584, 29.088144, 30.305285>,  <29.814522, 28.328508, 30.470537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538584, 29.088144, 30.305285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858727, 29.140614, 30.539284>,  <30.050812, 29.172094, 30.679684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858727, 29.140614, 30.539284>,  <29.538584, 29.088144, 30.305285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858727, 29.140614, 30.539284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265695, 0.797105, -0.542245,
		-0.537431, 0.589421, 0.603117,
		0.800358, 0.131174, 0.584996,
		30.098833, 29.179966, 30.714783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517227, 29.880718, 30.492992>,  <29.538584, 29.088144, 30.305285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517227, 29.880718, 30.492992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882906, 29.726841, 30.543987>,  <30.102314, 29.634516, 30.574583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882906, 29.726841, 30.543987>,  <29.517227, 29.880718, 30.492992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882906, 29.726841, 30.543987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391123, 0.755133, -0.526115,
		0.106123, 0.530836, 0.840804,
		0.914199, -0.384691, 0.127485,
		30.157166, 29.611433, 30.582233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013262, 30.422373, 30.725414>,  <29.517227, 29.880718, 30.492992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013262, 30.422373, 30.725414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275295, 30.154945, 30.584625>,  <30.432514, 29.994490, 30.500153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275295, 30.154945, 30.584625>,  <30.013262, 30.422373, 30.725414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275295, 30.154945, 30.584625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462010, 0.723054, -0.513556,
		0.597841, 0.173807, 0.782545,
		0.655082, -0.668569, -0.351971,
		30.471819, 29.954374, 30.479034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746691, 30.734808, 30.838474>,  <30.013262, 30.422373, 30.725414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746691, 30.734808, 30.838474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741928, 30.458984, 30.548820>,  <30.739071, 30.293491, 30.375029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741928, 30.458984, 30.548820>,  <30.746691, 30.734808, 30.838474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741928, 30.458984, 30.548820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509309, 0.619024, -0.597842,
		0.860501, -0.375925, 0.343828,
		-0.011906, -0.689558, -0.724133,
		30.738356, 30.252117, 30.331581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476961, 30.570477, 30.606155>,  <30.746691, 30.734808, 30.838474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476961, 30.570477, 30.606155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239824, 30.431431, 30.315582>,  <31.097542, 30.348003, 30.141239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239824, 30.431431, 30.315582>,  <31.476961, 30.570477, 30.606155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239824, 30.431431, 30.315582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559224, 0.471389, -0.681953,
		0.579488, -0.810529, -0.085066,
		-0.592843, -0.347613, -0.726432,
		31.061972, 30.327147, 30.097652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927628, 30.265306, 30.107029>,  <31.476961, 30.570477, 30.606155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927628, 30.265306, 30.107029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582941, 30.324547, 29.912910>,  <31.376129, 30.360090, 29.796438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582941, 30.324547, 29.912910>,  <31.927628, 30.265306, 30.107029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582941, 30.324547, 29.912910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480468, 0.545602, -0.686636,
		0.163089, -0.824855, -0.541310,
		-0.861715, 0.148100, -0.485298,
		31.324427, 30.368977, 29.767321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112907, 30.062475, 29.462229>,  <31.927628, 30.265306, 30.107029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112907, 30.062475, 29.462229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779551, 30.279877, 29.422104>,  <31.579536, 30.410316, 29.398029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779551, 30.279877, 29.422104>,  <32.112907, 30.062475, 29.462229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779551, 30.279877, 29.422104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404723, 0.476549, -0.780449,
		-0.376373, -0.691018, -0.617120,
		-0.833392, 0.543502, -0.100311,
		31.529533, 30.442928, 29.392010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758984, 30.037287, 28.657084>,  <32.112907, 30.062475, 29.462229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758984, 30.037287, 28.657084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595795, 30.368946, 28.809959>,  <31.497881, 30.567942, 28.901686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595795, 30.368946, 28.809959>,  <31.758984, 30.037287, 28.657084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595795, 30.368946, 28.809959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293112, 0.515401, -0.805262,
		-0.864663, -0.216502, -0.453304,
		-0.407974, 0.829149, 0.382189,
		31.473402, 30.617691, 28.924616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287764, 30.363190, 28.144215>,  <31.758984, 30.037287, 28.657084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287764, 30.363190, 28.144215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377586, 30.672501, 28.381405>,  <31.431480, 30.858088, 28.523718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377586, 30.672501, 28.381405>,  <31.287764, 30.363190, 28.144215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377586, 30.672501, 28.381405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199695, 0.559082, -0.804704,
		-0.953780, 0.299116, -0.028874,
		0.224557, 0.773276, 0.592973,
		31.444954, 30.904484, 28.559298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932718, 31.033976, 27.848410>,  <31.287764, 30.363190, 28.144215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932718, 31.033976, 27.848410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227886, 31.156902, 28.088753>,  <31.404987, 31.230658, 28.232958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227886, 31.156902, 28.088753>,  <30.932718, 31.033976, 27.848410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227886, 31.156902, 28.088753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445828, 0.446418, -0.775854,
		-0.506665, 0.840398, 0.192411,
		0.737921, 0.307316, 0.600857,
		31.449263, 31.249098, 28.269011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996748, 31.654005, 27.627699>,  <30.932718, 31.033976, 27.848410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996748, 31.654005, 27.627699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335085, 31.621468, 27.838577>,  <31.538086, 31.601946, 27.965105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335085, 31.621468, 27.838577>,  <30.996748, 31.654005, 27.627699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335085, 31.621468, 27.838577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494097, 0.491963, -0.716827,
		-0.201052, 0.866808, 0.456314,
		0.845841, -0.081344, 0.527197,
		31.588837, 31.597065, 27.996737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321449, 32.293762, 27.515688>,  <30.996748, 31.654005, 27.627699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321449, 32.293762, 27.515688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607912, 32.043041, 27.638481>,  <31.779789, 31.892609, 27.712156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607912, 32.043041, 27.638481>,  <31.321449, 32.293762, 27.515688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607912, 32.043041, 27.638481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628541, 0.388005, -0.674084,
		0.303406, 0.675701, 0.671843,
		0.716157, -0.626802, 0.306983,
		31.822760, 31.855001, 27.730576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895451, 32.708050, 27.657160>,  <31.321449, 32.293762, 27.515688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895451, 32.708050, 27.657160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031803, 32.339581, 27.582077>,  <32.113617, 32.118500, 27.537027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031803, 32.339581, 27.582077>,  <31.895451, 32.708050, 27.657160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031803, 32.339581, 27.582077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584004, 0.363962, -0.725583,
		0.736707, 0.137718, 0.662039,
		0.340883, -0.921176, -0.187705,
		32.134068, 32.063229, 27.525764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624882, 32.765244, 27.866882>,  <31.895451, 32.708050, 27.657160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624882, 32.765244, 27.866882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597466, 32.448414, 27.624256>,  <32.581017, 32.258316, 27.478682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597466, 32.448414, 27.624256>,  <32.624882, 32.765244, 27.866882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597466, 32.448414, 27.624256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723728, 0.379001, -0.576694,
		0.686673, -0.478513, 0.547271,
		-0.068540, -0.792075, -0.606563,
		32.576904, 32.210793, 27.442287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286545, 32.555351, 27.722338>,  <32.624882, 32.765244, 27.866882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286545, 32.555351, 27.722338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082989, 32.392826, 27.418774>,  <32.960857, 32.295311, 27.236635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082989, 32.392826, 27.418774>,  <33.286545, 32.555351, 27.722338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082989, 32.392826, 27.418774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674765, 0.359154, -0.644749,
		0.534535, -0.840190, 0.091397,
		-0.508886, -0.406312, -0.758911,
		32.930325, 32.270931, 27.191101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860744, 32.375660, 27.190731>,  <33.286545, 32.555351, 27.722338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860744, 32.375660, 27.190731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507511, 32.363285, 27.003452>,  <33.295570, 32.355862, 26.891085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507511, 32.363285, 27.003452>,  <33.860744, 32.375660, 27.190731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507511, 32.363285, 27.003452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419245, 0.396074, -0.816921,
		0.210715, -0.917697, -0.336795,
		-0.883082, -0.030938, -0.468199,
		33.242588, 32.354004, 26.862993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079792, 32.233509, 26.658173>,  <33.860744, 32.375660, 27.190731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079792, 32.233509, 26.658173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722736, 32.407360, 26.610355>,  <33.508503, 32.511673, 26.581665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722736, 32.407360, 26.610355>,  <34.079792, 32.233509, 26.658173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722736, 32.407360, 26.610355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396484, 0.630860, -0.666946,
		-0.214461, -0.642739, -0.735455,
		-0.892641, 0.434630, -0.119541,
		33.454945, 32.537750, 26.574493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878387, 32.288021, 25.855068>,  <34.079792, 32.233509, 26.658173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878387, 32.288021, 25.855068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698662, 32.584518, 26.054539>,  <33.590828, 32.762417, 26.174221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698662, 32.584518, 26.054539>,  <33.878387, 32.288021, 25.855068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698662, 32.584518, 26.054539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239163, 0.637621, -0.732285,
		-0.860766, -0.209761, -0.463769,
		-0.449314, 0.741242, 0.498676,
		33.563869, 32.806892, 26.204142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623310, 32.667477, 25.258699>,  <33.878387, 32.288021, 25.855068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623310, 32.667477, 25.258699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608326, 32.921780, 25.567093>,  <33.599335, 33.074360, 25.752129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608326, 32.921780, 25.567093>,  <33.623310, 32.667477, 25.258699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608326, 32.921780, 25.567093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333203, 0.735319, -0.590155,
		-0.942111, 0.234784, -0.239382,
		-0.037463, 0.635754, 0.770982,
		33.597088, 33.112507, 25.798388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389771, 33.297974, 24.959877>,  <33.623310, 32.667477, 25.258699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389771, 33.297974, 24.959877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551426, 33.399918, 25.311268>,  <33.648418, 33.461082, 25.522102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551426, 33.399918, 25.311268>,  <33.389771, 33.297974, 24.959877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551426, 33.399918, 25.311268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373763, 0.830550, -0.412903,
		-0.834850, 0.495211, 0.240400,
		0.404138, 0.254859, 0.878476,
		33.672668, 33.476376, 25.574810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226540, 34.021423, 25.058727>,  <33.389771, 33.297974, 24.959877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226540, 34.021423, 25.058727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534489, 33.952366, 25.304485>,  <33.719257, 33.910931, 25.451941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534489, 33.952366, 25.304485>,  <33.226540, 34.021423, 25.058727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534489, 33.952366, 25.304485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347572, 0.920839, -0.176775,
		-0.535242, 0.349642, 0.768939,
		0.769877, -0.172644, 0.614397,
		33.765453, 33.900574, 25.488804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242180, 34.576168, 25.630211>,  <33.226540, 34.021423, 25.058727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242180, 34.576168, 25.630211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603577, 34.409863, 25.588539>,  <33.820415, 34.310081, 25.563536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603577, 34.409863, 25.588539>,  <33.242180, 34.576168, 25.630211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603577, 34.409863, 25.588539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397266, 0.903542, -0.160595,
		0.160900, 0.103708, 0.981507,
		0.903488, -0.415759, -0.104180,
		33.874622, 34.285133, 25.557285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704315, 34.968830, 26.094934>,  <33.242180, 34.576168, 25.630211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704315, 34.968830, 26.094934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899803, 34.779945, 25.801495>,  <34.017097, 34.666615, 25.625431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899803, 34.779945, 25.801495>,  <33.704315, 34.968830, 26.094934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899803, 34.779945, 25.801495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327577, 0.878658, -0.347352,
		0.808607, -0.070552, 0.584104,
		0.488721, -0.472210, -0.733600,
		34.046421, 34.638283, 25.581415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134159, 35.401890, 26.282711>,  <33.704315, 34.968830, 26.094934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134159, 35.401890, 26.282711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920712, 35.686363, 26.465782>,  <32.792645, 35.857048, 26.575624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920712, 35.686363, 26.465782>,  <33.134159, 35.401890, 26.282711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920712, 35.686363, 26.465782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105581, -0.592950, 0.798288,
		0.839109, 0.377659, 0.391496,
		-0.533618, 0.711185, 0.457676,
		32.760628, 35.899719, 26.603085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378967, 35.475304, 27.047197>,  <33.134159, 35.401890, 26.282711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378967, 35.475304, 27.047197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014969, 35.640266, 27.030094>,  <32.796570, 35.739246, 27.019833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014969, 35.640266, 27.030094>,  <33.378967, 35.475304, 27.047197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014969, 35.640266, 27.030094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179696, -0.299353, 0.937069,
		0.373657, 0.860410, 0.346518,
		-0.909994, 0.412410, -0.042757,
		32.741970, 35.763988, 27.017267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254871, 35.841866, 27.669621>,  <33.378967, 35.475304, 27.047197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254871, 35.841866, 27.669621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888153, 35.763142, 27.530621>,  <32.668121, 35.715908, 27.447220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888153, 35.763142, 27.530621>,  <33.254871, 35.841866, 27.669621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888153, 35.763142, 27.530621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266714, -0.345902, 0.899564,
		-0.297248, 0.917397, 0.264627,
		-0.916792, -0.196814, -0.347501,
		32.613117, 35.704098, 27.426371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728809, 36.108097, 28.151823>,  <33.254871, 35.841866, 27.669621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728809, 36.108097, 28.151823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520912, 35.845497, 27.933144>,  <32.396175, 35.687939, 27.801935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520912, 35.845497, 27.933144>,  <32.728809, 36.108097, 28.151823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520912, 35.845497, 27.933144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474842, -0.309986, 0.823671,
		-0.710208, 0.687690, -0.150621,
		-0.519740, -0.656499, -0.546699,
		32.364990, 35.648548, 27.769135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099514, 36.030239, 28.654646>,  <32.728809, 36.108097, 28.151823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099514, 36.030239, 28.654646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056198, 35.741421, 28.381317>,  <32.030209, 35.568130, 28.217319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056198, 35.741421, 28.381317>,  <32.099514, 36.030239, 28.654646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056198, 35.741421, 28.381317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554415, -0.526681, 0.644384,
		-0.825166, 0.448622, -0.343279,
		-0.108286, -0.722042, -0.683322,
		32.023712, 35.524807, 28.176321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350246, 35.920200, 28.468025>,  <32.099514, 36.030239, 28.654646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350246, 35.920200, 28.468025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540699, 35.578758, 28.383499>,  <31.654970, 35.373894, 28.332785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540699, 35.578758, 28.383499>,  <31.350246, 35.920200, 28.468025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540699, 35.578758, 28.383499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698392, -0.513079, 0.498998,
		-0.534370, -0.090006, -0.840445,
		0.476128, -0.853609, -0.211315,
		31.683538, 35.322678, 28.320105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841446, 35.562290, 28.164131>,  <31.350246, 35.920200, 28.468025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841446, 35.562290, 28.164131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124140, 35.304821, 28.281578>,  <31.293756, 35.150341, 28.352047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124140, 35.304821, 28.281578>,  <30.841446, 35.562290, 28.164131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124140, 35.304821, 28.281578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699597, -0.574055, 0.425468,
		-0.105309, -0.506108, -0.856017,
		0.706734, -0.643673, 0.293618,
		31.336161, 35.111717, 28.369663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534430, 34.915062, 28.020538>,  <30.841446, 35.562290, 28.164131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534430, 34.915062, 28.020538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827425, 34.821262, 28.276184>,  <31.003223, 34.764984, 28.429571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827425, 34.821262, 28.276184>,  <30.534430, 34.915062, 28.020538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827425, 34.821262, 28.276184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608514, -0.646455, 0.460225,
		0.305238, -0.726021, -0.616217,
		0.732490, -0.234499, 0.639116,
		31.047173, 34.750912, 28.467918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568733, 34.136387, 28.057497>,  <30.534430, 34.915062, 28.020538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568733, 34.136387, 28.057497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728054, 34.277065, 28.396358>,  <30.823647, 34.361473, 28.599674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728054, 34.277065, 28.396358>,  <30.568733, 34.136387, 28.057497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728054, 34.277065, 28.396358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559296, -0.638900, 0.528200,
		0.727010, -0.684192, -0.057774,
		0.398302, 0.351695, 0.847152,
		30.847544, 34.382572, 28.650505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727230, 33.567520, 28.430357>,  <30.568733, 34.136387, 28.057497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727230, 33.567520, 28.430357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721783, 33.862408, 28.700565>,  <30.718515, 34.039341, 28.862690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721783, 33.862408, 28.700565>,  <30.727230, 33.567520, 28.430357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721783, 33.862408, 28.700565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424700, -0.615881, 0.663566,
		0.905232, -0.277858, 0.321481,
		-0.013617, 0.737214, 0.675522,
		30.717697, 34.083572, 28.903221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107269, 33.394936, 29.111277>,  <30.727230, 33.567520, 28.430357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107269, 33.394936, 29.111277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867800, 33.693604, 29.227257>,  <30.724117, 33.872807, 29.296844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867800, 33.693604, 29.227257>,  <31.107269, 33.394936, 29.111277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867800, 33.693604, 29.227257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207856, -0.494407, 0.844013,
		0.773553, 0.445021, 0.451189,
		-0.598674, 0.746671, 0.289950,
		30.688198, 33.917606, 29.314241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131861, 33.482792, 29.859289>,  <31.107269, 33.394936, 29.111277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131861, 33.482792, 29.859289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787590, 33.652588, 29.746830>,  <30.581028, 33.754463, 29.679354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787590, 33.652588, 29.746830>,  <31.131861, 33.482792, 29.859289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787590, 33.652588, 29.746830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464147, -0.427161, 0.775952,
		0.209285, 0.798339, 0.564672,
		-0.860679, 0.424486, -0.281148,
		30.529387, 33.779934, 29.662485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876421, 33.803219, 30.496012>,  <31.131861, 33.482792, 29.859289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876421, 33.803219, 30.496012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569557, 33.714935, 30.255096>,  <30.385439, 33.661964, 30.110548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569557, 33.714935, 30.255096>,  <30.876421, 33.803219, 30.496012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569557, 33.714935, 30.255096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498883, -0.384913, 0.776503,
		-0.403211, 0.896174, 0.185181,
		-0.767161, -0.220711, -0.602288,
		30.339409, 33.648724, 30.074409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302423, 33.828812, 30.909492>,  <30.876421, 33.803219, 30.496012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302423, 33.828812, 30.909492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123516, 33.651474, 30.598778>,  <30.016172, 33.545071, 30.412350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123516, 33.651474, 30.598778>,  <30.302423, 33.828812, 30.909492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123516, 33.651474, 30.598778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577687, -0.519836, 0.629324,
		-0.682810, 0.730215, -0.023609,
		-0.447268, -0.443347, -0.776784,
		29.989336, 33.518471, 30.365742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629793, 33.940479, 31.083120>,  <30.302423, 33.828812, 30.909492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629793, 33.940479, 31.083120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624344, 33.647148, 30.811226>,  <29.621075, 33.471149, 30.648090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624344, 33.647148, 30.811226>,  <29.629793, 33.940479, 31.083120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624344, 33.647148, 30.811226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667827, -0.499275, 0.552025,
		-0.744192, 0.461466, -0.482937,
		-0.013622, -0.733331, -0.679735,
		29.620256, 33.427147, 30.607306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946295, 33.745110, 30.936371>,  <29.629793, 33.940479, 31.083120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946295, 33.745110, 30.936371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154995, 33.424065, 30.820724>,  <29.280214, 33.231438, 30.751337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154995, 33.424065, 30.820724>,  <28.946295, 33.745110, 30.936371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154995, 33.424065, 30.820724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743542, -0.593983, 0.307131,
		-0.418237, 0.054722, -0.906688,
		0.521750, -0.802614, -0.289114,
		29.311520, 33.183281, 30.733990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405104, 33.289261, 30.839952>,  <28.946295, 33.745110, 30.936371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405104, 33.289261, 30.839952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724014, 33.047882, 30.845589>,  <28.915361, 32.903053, 30.848970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724014, 33.047882, 30.845589>,  <28.405104, 33.289261, 30.839952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724014, 33.047882, 30.845589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585371, -0.767272, 0.261982,
		-0.147281, -0.217121, -0.964970,
		0.797276, -0.603450, 0.014092,
		28.963198, 32.866848, 30.849815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330770, 32.700077, 30.458359>,  <28.405104, 33.289261, 30.839952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330770, 32.700077, 30.458359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589102, 32.603207, 30.747982>,  <28.744101, 32.545082, 30.921755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589102, 32.603207, 30.747982>,  <28.330770, 32.700077, 30.458359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589102, 32.603207, 30.747982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537370, -0.817861, 0.205758,
		0.542347, -0.521971, -0.658336,
		0.645827, -0.242178, 0.724056,
		28.782850, 32.530552, 30.965199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511475, 31.951244, 30.378929>,  <28.330770, 32.700077, 30.458359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511475, 31.951244, 30.378929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627312, 32.014957, 30.756451>,  <28.696814, 32.053185, 30.982964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627312, 32.014957, 30.756451>,  <28.511475, 31.951244, 30.378929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627312, 32.014957, 30.756451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370023, -0.890763, 0.263865,
		0.882734, -0.425642, -0.199020,
		0.289591, 0.159281, 0.943804,
		28.714190, 32.062740, 31.039593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870047, 31.333714, 30.631634>,  <28.511475, 31.951244, 30.378929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870047, 31.333714, 30.631634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761765, 31.520638, 30.968285>,  <28.696795, 31.632793, 31.170275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761765, 31.520638, 30.968285>,  <28.870047, 31.333714, 30.631634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761765, 31.520638, 30.968285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276796, -0.875137, 0.396888,
		0.922010, -0.125519, 0.366255,
		-0.270706, 0.467312, 0.841628,
		28.680553, 31.660831, 31.220774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069456, 30.899429, 31.061243>,  <28.870047, 31.333714, 30.631634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069456, 30.899429, 31.061243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824001, 31.128334, 31.278854>,  <28.676727, 31.265676, 31.409422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824001, 31.128334, 31.278854>,  <29.069456, 30.899429, 31.061243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824001, 31.128334, 31.278854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374027, -0.817468, 0.438007,
		0.695379, 0.065297, 0.715670,
		-0.613638, 0.572261, 0.544027,
		28.639910, 31.300013, 31.442062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171324, 30.624876, 31.807343>,  <29.069456, 30.899429, 31.061243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171324, 30.624876, 31.807343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822010, 30.818050, 31.781590>,  <28.612421, 30.933956, 31.766138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822010, 30.818050, 31.781590>,  <29.171324, 30.624876, 31.807343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822010, 30.818050, 31.781590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443818, -0.734018, 0.514045,
		0.200994, 0.477482, 0.855344,
		-0.873285, 0.482937, -0.064382,
		28.560024, 30.962931, 31.762276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981649, 30.792883, 32.533562>,  <29.171324, 30.624876, 31.807343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981649, 30.792883, 32.533562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661522, 30.763889, 32.295490>,  <28.469446, 30.746492, 32.152649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661522, 30.763889, 32.295490>,  <28.981649, 30.792883, 32.533562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661522, 30.763889, 32.295490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345294, -0.755805, 0.556356,
		-0.490166, 0.650773, 0.579856,
		-0.800319, -0.072486, -0.595177,
		28.421427, 30.742144, 32.116936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424189, 30.599915, 32.979748>,  <28.981649, 30.792883, 32.533562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424189, 30.599915, 32.979748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253948, 30.524338, 32.625763>,  <28.151804, 30.478992, 32.413372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253948, 30.524338, 32.625763>,  <28.424189, 30.599915, 32.979748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253948, 30.524338, 32.625763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407229, -0.833345, 0.373767,
		-0.808101, 0.519459, 0.277731,
		-0.425603, -0.188941, -0.884965,
		28.126266, 30.467655, 32.360271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798372, 30.393442, 33.165348>,  <28.424189, 30.599915, 32.979748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798372, 30.393442, 33.165348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818062, 30.261002, 32.788425>,  <27.829876, 30.181538, 32.562271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818062, 30.261002, 32.788425>,  <27.798372, 30.393442, 33.165348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818062, 30.261002, 32.788425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415763, -0.864620, 0.282087,
		-0.908140, 0.377892, -0.180220,
		0.049224, -0.331103, -0.942310,
		27.832829, 30.161671, 32.505733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154800, 30.103781, 33.014221>,  <27.798372, 30.393442, 33.165348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154800, 30.103781, 33.014221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422968, 29.949780, 32.760509>,  <27.583868, 29.857378, 32.608280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422968, 29.949780, 32.760509>,  <27.154800, 30.103781, 33.014221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422968, 29.949780, 32.760509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365906, -0.915219, 0.168778,
		-0.645487, 0.118937, -0.754454,
		0.670417, -0.385003, -0.634282,
		27.624092, 29.834278, 32.570225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725121, 29.686480, 32.473167>,  <27.154800, 30.103781, 33.014221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725121, 29.686480, 32.473167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094328, 29.532715, 32.466663>,  <27.315853, 29.440456, 32.462761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094328, 29.532715, 32.466663>,  <26.725121, 29.686480, 32.473167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094328, 29.532715, 32.466663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384603, -0.920648, -0.066990,
		0.010786, 0.068085, -0.997621,
		0.923019, -0.384411, -0.016255,
		27.371233, 29.417391, 32.461788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812841, 29.192757, 31.950333>,  <26.725121, 29.686480, 32.473167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812841, 29.192757, 31.950333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097288, 29.060867, 32.198719>,  <27.267956, 28.981733, 32.347752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097288, 29.060867, 32.198719>,  <26.812841, 29.192757, 31.950333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097288, 29.060867, 32.198719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381006, -0.923007, -0.053785,
		0.590888, -0.198344, -0.781992,
		0.711116, -0.329724, 0.620964,
		27.310623, 28.961950, 32.385010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149803, 28.568710, 31.667538>,  <26.812841, 29.192757, 31.950333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149803, 28.568710, 31.667538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224951, 28.540474, 32.059399>,  <27.270039, 28.523533, 32.294518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224951, 28.540474, 32.059399>,  <27.149803, 28.568710, 31.667538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224951, 28.540474, 32.059399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404820, -0.914321, 0.011750,
		0.894889, -0.398791, -0.200347,
		0.187868, -0.070590, 0.979654,
		27.281311, 28.519297, 32.353294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255461, 27.844908, 31.720257>,  <27.149803, 28.568710, 31.667538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255461, 27.844908, 31.720257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235752, 27.964935, 32.101315>,  <27.223927, 28.036953, 32.329948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235752, 27.964935, 32.101315>,  <27.255461, 27.844908, 31.720257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235752, 27.964935, 32.101315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335174, -0.903460, 0.267242,
		0.940867, -0.306133, 0.145093,
		-0.049273, 0.300071, 0.952644,
		27.220970, 28.054956, 32.387108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664581, 27.301422, 32.185154>,  <27.255461, 27.844908, 31.720257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664581, 27.301422, 32.185154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399673, 27.512852, 32.397572>,  <27.240728, 27.639709, 32.525024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399673, 27.512852, 32.397572>,  <27.664581, 27.301422, 32.185154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399673, 27.512852, 32.397572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383421, -0.848005, 0.365890,
		0.643730, 0.038703, 0.764273,
		-0.662269, 0.528573, 0.531047,
		27.200993, 27.671423, 32.556885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747135, 26.999758, 32.834656>,  <27.664581, 27.301422, 32.185154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747135, 26.999758, 32.834656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393070, 27.185108, 32.851494>,  <27.180632, 27.296318, 32.861599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393070, 27.185108, 32.851494>,  <27.747135, 26.999758, 32.834656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393070, 27.185108, 32.851494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453865, -0.879819, 0.141159,
		0.102447, 0.105842, 0.989092,
		-0.885162, 0.463375, 0.042097,
		27.127522, 27.324121, 32.864124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392855, 26.820049, 33.470627>,  <27.747135, 26.999758, 32.834656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392855, 26.820049, 33.470627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097069, 26.957092, 33.238831>,  <26.919598, 27.039318, 33.099754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097069, 26.957092, 33.238831>,  <27.392855, 26.820049, 33.470627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097069, 26.957092, 33.238831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572151, -0.773440, 0.272824,
		-0.354728, 0.533300, 0.767957,
		-0.739466, 0.342610, -0.579489,
		26.875229, 27.059875, 33.064983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752775, 26.672323, 33.831997>,  <27.392855, 26.820049, 33.470627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752775, 26.672323, 33.831997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667883, 26.696068, 33.441830>,  <26.616947, 26.710316, 33.207729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667883, 26.696068, 33.441830>,  <26.752775, 26.672323, 33.831997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667883, 26.696068, 33.441830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681536, -0.724327, 0.104205,
		-0.700334, 0.686896, 0.194182,
		-0.212230, 0.059363, -0.975415,
		26.604214, 26.713877, 33.149204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955624, 26.632490, 33.890621>,  <26.752775, 26.672323, 33.831997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955624, 26.632490, 33.890621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064777, 26.560596, 33.512577>,  <26.130270, 26.517460, 33.285751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064777, 26.560596, 33.512577>,  <25.955624, 26.632490, 33.890621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064777, 26.560596, 33.512577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716711, -0.693316, -0.075091,
		-0.641762, 0.697861, -0.318013,
		0.272887, -0.179733, -0.945108,
		26.146643, 26.506676, 33.229046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.424328, 26.804562, 33.535732>,  <25.955624, 26.632490, 33.890621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.424328, 26.804562, 33.535732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643370, 26.549484, 33.319038>,  <25.774796, 26.396439, 33.189022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643370, 26.549484, 33.319038>,  <25.424328, 26.804562, 33.535732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643370, 26.549484, 33.319038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798484, -0.591781, -0.110534,
		-0.250102, 0.493096, -0.833250,
		0.547606, -0.637693, -0.541735,
		25.807652, 26.358177, 33.156517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.140593, 26.738108, 32.819885>,  <25.424328, 26.804562, 33.535732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.140593, 26.738108, 32.819885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336901, 26.402344, 32.913292>,  <25.454685, 26.200886, 32.969337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336901, 26.402344, 32.913292>,  <25.140593, 26.738108, 32.819885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336901, 26.402344, 32.913292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868730, -0.491952, 0.057374,
		0.066720, -0.231023, -0.970658,
		0.490771, -0.839412, 0.233520,
		25.484133, 26.150520, 32.983349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.069969, 26.247536, 32.368153>,  <25.140593, 26.738108, 32.819885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.069969, 26.247536, 32.368153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149244, 26.049000, 32.706234>,  <25.196810, 25.929878, 32.909084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149244, 26.049000, 32.706234>,  <25.069969, 26.247536, 32.368153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.149244, 26.049000, 32.706234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914263, -0.404460, -0.023134,
		0.353334, -0.768154, -0.533943,
		0.198188, -0.496339, 0.845204,
		25.208700, 25.900099, 32.959797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944407, 26.065645, 31.682919>,  <25.069969, 26.247536, 32.368153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944407, 26.065645, 31.682919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797878, 25.904034, 31.347641>,  <24.709961, 25.807066, 31.146475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797878, 25.904034, 31.347641>,  <24.944407, 26.065645, 31.682919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.797878, 25.904034, 31.347641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831727, 0.261698, -0.489637,
		0.417181, -0.876513, 0.240176,
		-0.366320, -0.404028, -0.838195,
		24.687983, 25.782825, 31.096182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487255, 25.710182, 31.302608>,  <24.944407, 26.065645, 31.682919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487255, 25.710182, 31.302608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.202427, 25.785324, 31.032005>,  <25.031530, 25.830410, 30.869642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.202427, 25.785324, 31.032005>,  <25.487255, 25.710182, 31.302608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.202427, 25.785324, 31.032005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691849, 0.351854, -0.630512,
		0.119586, -0.917011, -0.380513,
		-0.712071, 0.187857, -0.676509,
		24.988806, 25.841681, 30.829052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802696, 25.472389, 30.629707>,  <25.487255, 25.710182, 31.302608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802696, 25.472389, 30.629707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.498573, 25.722569, 30.559566>,  <25.316099, 25.872677, 30.517483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.498573, 25.722569, 30.559566>,  <25.802696, 25.472389, 30.629707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.498573, 25.722569, 30.559566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578793, 0.529785, -0.619941,
		-0.294842, -0.572838, -0.764804,
		-0.760307, 0.625448, -0.175352,
		25.270481, 25.910202, 30.506962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.534859, 25.379477, 29.921488>,  <25.802696, 25.472389, 30.629707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.534859, 25.379477, 29.921488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462658, 25.760437, 30.019756>,  <25.419338, 25.989014, 30.078716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462658, 25.760437, 30.019756>,  <25.534859, 25.379477, 29.921488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462658, 25.760437, 30.019756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622416, 0.304002, -0.721236,
		-0.761589, 0.022726, -0.647661,
		-0.180500, 0.952400, 0.245670,
		25.408508, 26.046158, 30.093456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544367, 25.833906, 29.309227>,  <25.534859, 25.379477, 29.921488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544367, 25.833906, 29.309227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569801, 26.111248, 29.596340>,  <25.585062, 26.277653, 29.768608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569801, 26.111248, 29.596340>,  <25.544367, 25.833906, 29.309227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569801, 26.111248, 29.596340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609078, 0.542792, -0.578274,
		-0.790557, 0.473957, -0.387794,
		0.063586, 0.693355, 0.717785,
		25.588877, 26.319254, 29.811676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468554, 26.483774, 28.979176>,  <25.544367, 25.833906, 29.309227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468554, 26.483774, 28.979176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651930, 26.565071, 29.325245>,  <25.761955, 26.613850, 29.532887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651930, 26.565071, 29.325245>,  <25.468554, 26.483774, 28.979176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.651930, 26.565071, 29.325245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624442, 0.619038, -0.476303,
		-0.632380, 0.758607, 0.156879,
		0.458441, 0.203242, 0.865173,
		25.789461, 26.626043, 29.584797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489006, 27.192585, 28.962498>,  <25.468554, 26.483774, 28.979176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489006, 27.192585, 28.962498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775356, 27.096310, 29.224670>,  <25.947166, 27.038546, 29.381973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775356, 27.096310, 29.224670>,  <25.489006, 27.192585, 28.962498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775356, 27.096310, 29.224670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659248, 0.542247, -0.520924,
		-0.230025, 0.805008, 0.546855,
		0.715878, -0.240687, 0.655430,
		25.990120, 27.024103, 29.421299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870073, 27.729689, 29.025005>,  <25.489006, 27.192585, 28.962498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870073, 27.729689, 29.025005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130688, 27.488911, 29.209682>,  <26.287056, 27.344444, 29.320490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130688, 27.488911, 29.209682>,  <25.870073, 27.729689, 29.025005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130688, 27.488911, 29.209682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757339, 0.551425, -0.349811,
		-0.044022, 0.577574, 0.815151,
		0.651536, -0.601946, 0.461694,
		26.326149, 27.308327, 29.348190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302994, 28.172276, 29.354445>,  <25.870073, 27.729689, 29.025005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302994, 28.172276, 29.354445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478710, 27.815224, 29.313976>,  <26.584141, 27.600992, 29.289696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478710, 27.815224, 29.313976>,  <26.302994, 28.172276, 29.354445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478710, 27.815224, 29.313976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809006, 0.442050, -0.387428,
		0.390553, 0.088345, 0.916332,
		0.439292, -0.892629, -0.101172,
		26.610498, 27.547436, 29.283625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772686, 28.227247, 29.826677>,  <26.302994, 28.172276, 29.354445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772686, 28.227247, 29.826677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898788, 27.934170, 29.585423>,  <26.974449, 27.758324, 29.440670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898788, 27.934170, 29.585423>,  <26.772686, 28.227247, 29.826677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898788, 27.934170, 29.585423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810252, 0.538685, -0.230886,
		0.494069, -0.415904, 0.763491,
		0.315255, -0.732695, -0.603135,
		26.993364, 27.714361, 29.404482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467913, 28.086357, 30.024490>,  <26.772686, 28.227247, 29.826677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467913, 28.086357, 30.024490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440838, 27.955124, 29.647602>,  <27.424593, 27.876383, 29.421469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440838, 27.955124, 29.647602>,  <27.467913, 28.086357, 30.024490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440838, 27.955124, 29.647602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814711, 0.526950, -0.242013,
		0.575904, -0.784018, 0.231626,
		-0.067687, -0.328084, -0.942220,
		27.420532, 27.856699, 29.364937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086248, 28.144754, 29.865801>,  <27.467913, 28.086357, 30.024490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086248, 28.144754, 29.865801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878542, 28.131527, 29.524212>,  <27.753918, 28.123590, 29.319258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878542, 28.131527, 29.524212>,  <28.086248, 28.144754, 29.865801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878542, 28.131527, 29.524212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577810, 0.722667, -0.379326,
		0.629683, -0.690405, -0.356147,
		-0.519264, -0.033070, -0.853973,
		27.722763, 28.121605, 29.268021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641676, 28.145687, 29.378359>,  <28.086248, 28.144754, 29.865801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641676, 28.145687, 29.378359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292498, 28.242119, 29.208725>,  <28.082991, 28.299978, 29.106945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292498, 28.242119, 29.208725>,  <28.641676, 28.145687, 29.378359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292498, 28.242119, 29.208725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392033, 0.864058, -0.315775,
		0.290305, -0.441909, -0.848787,
		-0.872945, 0.241082, -0.424083,
		28.030615, 28.314444, 29.081499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803263, 28.285137, 28.695360>,  <28.641676, 28.145687, 29.378359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803263, 28.285137, 28.695360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449713, 28.456154, 28.771221>,  <28.237583, 28.558764, 28.816738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449713, 28.456154, 28.771221>,  <28.803263, 28.285137, 28.695360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449713, 28.456154, 28.771221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356588, 0.878374, -0.318285,
		-0.302667, -0.213697, -0.928831,
		-0.883877, 0.427544, 0.189653,
		28.184549, 28.584417, 28.828117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614454, 28.612793, 28.079824>,  <28.803263, 28.285137, 28.695360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614454, 28.612793, 28.079824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412432, 28.799660, 28.370113>,  <28.291218, 28.911779, 28.544287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412432, 28.799660, 28.370113>,  <28.614454, 28.612793, 28.079824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412432, 28.799660, 28.370113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226778, 0.883131, -0.410672,
		-0.832760, -0.042835, -0.551975,
		-0.505057, 0.467167, 0.725722,
		28.260914, 28.939810, 28.587830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203991, 29.266788, 27.749815>,  <28.614454, 28.612793, 28.079824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203991, 29.266788, 27.749815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223469, 29.309841, 28.147015>,  <28.235155, 29.335672, 28.385334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223469, 29.309841, 28.147015>,  <28.203991, 29.266788, 27.749815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223469, 29.309841, 28.147015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237709, 0.964363, -0.116186,
		-0.970115, 0.241702, 0.021374,
		0.048695, 0.107633, 0.992997,
		28.238077, 29.342131, 28.444914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816486, 29.900734, 27.882526>,  <28.203991, 29.266788, 27.749815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816486, 29.900734, 27.882526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022091, 29.833591, 28.219006>,  <28.145454, 29.793306, 28.420893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022091, 29.833591, 28.219006>,  <27.816486, 29.900734, 27.882526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022091, 29.833591, 28.219006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220926, 0.973488, 0.059260,
		-0.828844, 0.155382, 0.537471,
		0.514014, -0.167858, 0.841198,
		28.176294, 29.783234, 28.471365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554970, 30.338409, 28.445564>,  <27.816486, 29.900734, 27.882526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554970, 30.338409, 28.445564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935360, 30.245220, 28.526924>,  <28.163593, 30.189306, 28.575739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935360, 30.245220, 28.526924>,  <27.554970, 30.338409, 28.445564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935360, 30.245220, 28.526924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216287, 0.971086, 0.101053,
		-0.221059, -0.052106, 0.973867,
		0.950975, -0.232973, 0.203397,
		28.220652, 30.175327, 28.587944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719212, 30.824991, 29.002481>,  <27.554970, 30.338409, 28.445564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719212, 30.824991, 29.002481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079746, 30.695461, 28.887428>,  <28.296066, 30.617743, 28.818398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079746, 30.695461, 28.887428>,  <27.719212, 30.824991, 29.002481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079746, 30.695461, 28.887428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398574, 0.880035, 0.258220,
		0.169507, -0.347385, 0.922275,
		0.901336, -0.323825, -0.287631,
		28.350147, 30.598314, 28.801140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188007, 31.131546, 29.461426>,  <27.719212, 30.824991, 29.002481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188007, 31.131546, 29.461426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403963, 31.026505, 29.141537>,  <28.533537, 30.963480, 28.949602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403963, 31.026505, 29.141537>,  <28.188007, 31.131546, 29.461426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403963, 31.026505, 29.141537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450570, 0.892673, 0.011053,
		0.710989, -0.366299, 0.600266,
		0.539890, -0.262604, -0.799724,
		28.565929, 30.947723, 28.901619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858418, 31.434868, 29.659672>,  <28.188007, 31.131546, 29.461426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858418, 31.434868, 29.659672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844685, 31.378803, 29.263859>,  <28.836445, 31.345165, 29.026371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844685, 31.378803, 29.263859>,  <28.858418, 31.434868, 29.659672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844685, 31.378803, 29.263859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202242, 0.968658, -0.144222,
		0.978734, -0.205077, -0.004909,
		-0.034332, -0.140162, -0.989533,
		28.834385, 31.336754, 28.966999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559109, 31.779934, 29.381491>,  <28.858418, 31.434868, 29.659672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559109, 31.779934, 29.381491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272627, 31.762127, 29.102901>,  <29.100739, 31.751444, 28.935749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272627, 31.762127, 29.102901>,  <29.559109, 31.779934, 29.381491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272627, 31.762127, 29.102901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166890, 0.958084, -0.232857,
		0.677644, -0.283007, -0.678753,
		-0.716203, -0.044517, -0.696471,
		29.057766, 31.748772, 28.893961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861258, 32.163460, 28.878012>,  <29.559109, 31.779934, 29.381491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861258, 32.163460, 28.878012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469425, 32.132256, 28.803890>,  <29.234325, 32.113533, 28.759417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469425, 32.132256, 28.803890>,  <29.861258, 32.163460, 28.878012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469425, 32.132256, 28.803890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029931, 0.967971, -0.249270,
		0.198815, -0.238634, -0.950540,
		-0.979580, -0.078010, -0.185305,
		29.175550, 32.108852, 28.748299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729279, 32.575974, 28.255096>,  <29.861258, 32.163460, 28.878012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729279, 32.575974, 28.255096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379789, 32.549999, 28.447926>,  <29.170095, 32.534416, 28.563623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379789, 32.549999, 28.447926>,  <29.729279, 32.575974, 28.255096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379789, 32.549999, 28.447926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216349, 0.939502, -0.265573,
		-0.435662, -0.336333, -0.834913,
		-0.873723, -0.064933, 0.482071,
		29.117672, 32.530518, 28.592546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311136, 32.810825, 27.772879>,  <29.729279, 32.575974, 28.255096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311136, 32.810825, 27.772879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123962, 32.813641, 28.126373>,  <29.011658, 32.815331, 28.338470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123962, 32.813641, 28.126373>,  <29.311136, 32.810825, 27.772879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123962, 32.813641, 28.126373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361736, 0.910840, -0.198791,
		-0.806341, -0.412700, -0.423665,
		-0.467932, 0.007038, 0.883736,
		28.983583, 32.815750, 28.391495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674902, 32.685356, 27.619724>,  <29.311136, 32.810825, 27.772879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674902, 32.685356, 27.619724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688959, 32.872211, 27.973118>,  <28.697393, 32.984325, 28.185154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688959, 32.872211, 27.973118>,  <28.674902, 32.685356, 27.619724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688959, 32.872211, 27.973118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361114, 0.830239, -0.424618,
		-0.931859, -0.304116, 0.197868,
		0.035145, 0.467137, 0.883486,
		28.699503, 33.012352, 28.238163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966669, 32.928112, 27.748095>,  <28.674902, 32.685356, 27.619724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966669, 32.928112, 27.748095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245857, 33.143375, 27.937080>,  <28.413370, 33.272533, 28.050472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245857, 33.143375, 27.937080>,  <27.966669, 32.928112, 27.748095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245857, 33.143375, 27.937080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467505, 0.842181, -0.268645,
		-0.542473, -0.033373, 0.839410,
		0.697970, 0.538161, 0.472463,
		28.455248, 33.304825, 28.078819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559687, 33.392986, 28.069769>,  <27.966669, 32.928112, 27.748095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559687, 33.392986, 28.069769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931799, 33.538303, 28.049408>,  <28.155067, 33.625492, 28.037191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931799, 33.538303, 28.049408>,  <27.559687, 33.392986, 28.069769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931799, 33.538303, 28.049408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357625, 0.867225, -0.346447,
		-0.081719, 0.340498, 0.936688,
		0.930283, 0.363294, -0.050902,
		28.210884, 33.647293, 28.034138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511131, 34.090233, 28.319782>,  <27.559687, 33.392986, 28.069769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511131, 34.090233, 28.319782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858566, 34.074883, 28.122162>,  <28.067026, 34.065670, 28.003590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858566, 34.074883, 28.122162>,  <27.511131, 34.090233, 28.319782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858566, 34.074883, 28.122162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192749, 0.892317, -0.408190,
		0.456515, 0.449776, 0.767656,
		0.868586, -0.038380, -0.494050,
		28.119143, 34.063370, 27.973948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827307, 34.777870, 28.357422>,  <27.511131, 34.090233, 28.319782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827307, 34.777870, 28.357422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963768, 34.594097, 28.029388>,  <28.045645, 34.483833, 27.832569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963768, 34.594097, 28.029388>,  <27.827307, 34.777870, 28.357422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963768, 34.594097, 28.029388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171521, 0.827351, -0.534855,
		0.924226, 0.323130, 0.203453,
		0.341155, -0.459431, -0.820083,
		28.066114, 34.456268, 27.783363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097231, 35.326080, 28.126724>,  <27.827307, 34.777870, 28.357422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097231, 35.326080, 28.126724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107040, 35.074844, 27.815624>,  <28.112926, 34.924103, 27.628963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107040, 35.074844, 27.815624>,  <28.097231, 35.326080, 28.126724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107040, 35.074844, 27.815624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096485, 0.772866, -0.627191,
		0.995032, 0.090422, -0.041648,
		0.024524, -0.628094, -0.777751,
		28.114397, 34.886417, 27.582298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380955, 35.658855, 27.688354>,  <28.097231, 35.326080, 28.126724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380955, 35.658855, 27.688354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210989, 35.370914, 27.468803>,  <28.109009, 35.198151, 27.337072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210989, 35.370914, 27.468803>,  <28.380955, 35.658855, 27.688354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210989, 35.370914, 27.468803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225204, 0.671335, -0.706110,
		0.876772, -0.176429, -0.447374,
		-0.424916, -0.719848, -0.548876,
		28.083513, 35.154961, 27.304140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751686, 35.543633, 27.013828>,  <28.380955, 35.658855, 27.688354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751686, 35.543633, 27.013828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382322, 35.397690, 26.966171>,  <28.160704, 35.310123, 26.937576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382322, 35.397690, 26.966171>,  <28.751686, 35.543633, 27.013828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382322, 35.397690, 26.966171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122991, 0.575329, -0.808622,
		0.363580, -0.732035, -0.576138,
		-0.923408, -0.364859, -0.119144,
		28.105299, 35.288231, 26.930428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668062, 35.290184, 26.238077>,  <28.751686, 35.543633, 27.013828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668062, 35.290184, 26.238077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301228, 35.337349, 26.390419>,  <28.081127, 35.365650, 26.481825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301228, 35.337349, 26.390419>,  <28.668062, 35.290184, 26.238077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301228, 35.337349, 26.390419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273196, 0.509885, -0.815709,
		-0.290378, -0.852122, -0.435394,
		-0.917084, 0.117916, 0.380856,
		28.026102, 35.372723, 26.504677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250399, 35.055637, 25.605646>,  <28.668062, 35.290184, 26.238077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250399, 35.055637, 25.605646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985411, 35.253704, 25.830482>,  <27.826418, 35.372543, 25.965384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985411, 35.253704, 25.830482>,  <28.250399, 35.055637, 25.605646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985411, 35.253704, 25.830482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429461, 0.363744, -0.826592,
		-0.613756, -0.788988, -0.028315,
		-0.662470, 0.495166, 0.562089,
		27.786669, 35.402252, 25.999109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657654, 35.078903, 25.224285>,  <28.250399, 35.055637, 25.605646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657654, 35.078903, 25.224285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600864, 35.373466, 25.488873>,  <27.566792, 35.550205, 25.647625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600864, 35.373466, 25.488873>,  <27.657654, 35.078903, 25.224285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600864, 35.373466, 25.488873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552063, 0.495756, -0.670412,
		-0.821627, -0.460352, 0.336162,
		-0.141971, 0.736411, 0.661470,
		27.558273, 35.594391, 25.687313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933466, 35.285412, 25.104382>,  <27.657654, 35.078903, 25.224285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933466, 35.285412, 25.104382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084412, 35.589153, 25.316414>,  <27.174978, 35.771397, 25.443632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084412, 35.589153, 25.316414>,  <26.933466, 35.285412, 25.104382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084412, 35.589153, 25.316414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693982, 0.610886, -0.381061,
		-0.613176, -0.224066, 0.757502,
		0.377365, 0.759350, 0.530078,
		27.197620, 35.816959, 25.475437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366785, 35.654617, 25.416077>,  <26.933466, 35.285412, 25.104382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366785, 35.654617, 25.416077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659176, 35.927532, 25.411026>,  <26.834610, 36.091282, 25.407995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659176, 35.927532, 25.411026>,  <26.366785, 35.654617, 25.416077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659176, 35.927532, 25.411026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606358, 0.640922, -0.470691,
		-0.313052, 0.351721, 0.882208,
		0.730978, 0.682284, -0.012626,
		26.878469, 36.132217, 25.407238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156319, 36.251503, 25.764549>,  <26.366785, 35.654617, 25.416077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156319, 36.251503, 25.764549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446209, 36.355343, 25.509243>,  <26.620142, 36.417648, 25.356060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446209, 36.355343, 25.509243>,  <26.156319, 36.251503, 25.764549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446209, 36.355343, 25.509243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662951, 0.515185, -0.543213,
		0.187804, 0.816817, 0.545472,
		0.724724, 0.259604, -0.638263,
		26.663626, 36.433224, 25.317764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031343, 36.975662, 25.651478>,  <26.156319, 36.251503, 25.764549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031343, 36.975662, 25.651478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263062, 36.854649, 25.348721>,  <26.402092, 36.782040, 25.167067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263062, 36.854649, 25.348721>,  <26.031343, 36.975662, 25.651478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263062, 36.854649, 25.348721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650277, 0.388363, -0.652928,
		0.491483, 0.870429, 0.028245,
		0.579296, -0.302536, -0.756893,
		26.436850, 36.763889, 25.121653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055323, 37.597462, 25.239817>,  <26.031343, 36.975662, 25.651478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055323, 37.597462, 25.239817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132946, 37.276718, 25.013767>,  <26.179520, 37.084270, 24.878138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132946, 37.276718, 25.013767>,  <26.055323, 37.597462, 25.239817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132946, 37.276718, 25.013767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637661, 0.334662, -0.693823,
		0.745472, 0.495001, -0.446369,
		0.194060, -0.801858, -0.565124,
		26.191164, 37.036160, 24.844231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352943, 37.410717, 24.966988>,  <26.055323, 37.597462, 25.239817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352943, 37.410717, 24.966988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.068890, 37.389011, 25.247776>,  <24.898457, 37.375988, 25.416248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.068890, 37.389011, 25.247776>,  <25.352943, 37.410717, 24.966988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.068890, 37.389011, 25.247776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161094, 0.983099, -0.086975,
		-0.685387, -0.174847, -0.706876,
		-0.710137, -0.054261, 0.701970,
		24.855848, 37.372734, 25.458366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671925, 37.632290, 24.781464>,  <25.352943, 37.410717, 24.966988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.671925, 37.632290, 24.781464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719584, 37.716557, 25.169571>,  <24.748178, 37.767117, 25.402435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719584, 37.716557, 25.169571>,  <24.671925, 37.632290, 24.781464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719584, 37.716557, 25.169571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338313, 0.927364, -0.159810,
		-0.933461, -0.309214, 0.181763,
		0.119145, 0.210669, 0.970269,
		24.755327, 37.779758, 25.460651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.043699, 37.893211, 25.039370>,  <24.671925, 37.632290, 24.781464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.043699, 37.893211, 25.039370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367218, 38.014648, 25.240833>,  <24.561329, 38.087509, 25.361712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367218, 38.014648, 25.240833>,  <24.043699, 37.893211, 25.039370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.367218, 38.014648, 25.240833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228215, 0.951356, -0.206977,
		-0.541998, 0.052460, 0.838741,
		0.808799, 0.303594, 0.503661,
		24.609858, 38.105728, 25.391932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.681387, 37.411312, 24.427744>,  <24.043699, 37.893211, 25.039370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.681387, 37.411312, 24.427744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.298597, 37.509781, 24.366295>,  <23.068924, 37.568863, 24.329426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.298597, 37.509781, 24.366295>,  <23.681387, 37.411312, 24.427744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.298597, 37.509781, 24.366295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198842, -0.170753, 0.965042,
		0.211330, 0.954068, 0.212354,
		-0.956975, 0.246167, -0.153623,
		23.011505, 37.583630, 24.320208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.939743, 37.172710, 24.694155>,  <23.681387, 37.411312, 24.427744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.939743, 37.172710, 24.694155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.546658, 37.110023, 24.733582>,  <22.310806, 37.072411, 24.757238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.546658, 37.110023, 24.733582>,  <22.939743, 37.172710, 24.694155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.546658, 37.110023, 24.733582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040927, -0.703111, -0.709901,
		0.180561, -0.693594, 0.697370,
		-0.982712, -0.156722, 0.098567,
		22.251844, 37.063007, 24.763151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.904892, 36.462681, 24.807392>,  <22.939743, 37.172710, 24.694155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.904892, 36.462681, 24.807392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.593750, 36.627502, 24.617592>,  <22.407064, 36.726395, 24.503712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.593750, 36.627502, 24.617592>,  <22.904892, 36.462681, 24.807392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.593750, 36.627502, 24.617592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216575, -0.533023, -0.817913,
		-0.589949, -0.738982, 0.325372,
		-0.777853, 0.412059, -0.474501,
		22.360394, 36.751118, 24.475243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.438065, 35.882080, 24.597292>,  <22.904892, 36.462681, 24.807392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.438065, 35.882080, 24.597292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.428528, 36.215023, 24.375801>,  <22.422806, 36.414787, 24.242907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.428528, 36.215023, 24.375801>,  <22.438065, 35.882080, 24.597292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.428528, 36.215023, 24.375801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194652, -0.539419, -0.819230,
		-0.980583, -0.127317, -0.149159,
		-0.023843, 0.832357, -0.553727,
		22.421375, 36.464729, 24.209682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.305943, 35.610023, 23.939346>,  <22.438065, 35.882080, 24.597292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.305943, 35.610023, 23.939346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.398018, 35.986977, 23.842239>,  <22.453262, 36.213146, 23.783976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.398018, 35.986977, 23.842239>,  <22.305943, 35.610023, 23.939346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.398018, 35.986977, 23.842239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119183, -0.274890, -0.954060,
		-0.965821, 0.190678, -0.175592,
		0.230186, 0.942379, -0.242769,
		22.467073, 36.269691, 23.769409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.838993, 35.805534, 23.402973>,  <22.305943, 35.610023, 23.939346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.838993, 35.805534, 23.402973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.201525, 35.974094, 23.390396>,  <22.419044, 36.075230, 23.382851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.201525, 35.974094, 23.390396>,  <21.838993, 35.805534, 23.402973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.201525, 35.974094, 23.390396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148543, -0.387371, -0.909879,
		-0.395603, 0.819979, -0.413682,
		0.906330, 0.421400, -0.031443,
		22.473423, 36.100513, 23.380962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.991596, 36.090473, 22.700201>,  <21.838993, 35.805534, 23.402973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.991596, 36.090473, 22.700201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.358191, 36.042423, 22.852844>,  <22.578148, 36.013592, 22.944429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.358191, 36.042423, 22.852844>,  <21.991596, 36.090473, 22.700201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.358191, 36.042423, 22.852844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304557, -0.409029, -0.860198,
		0.259422, 0.904580, -0.338283,
		0.916486, -0.120128, 0.381607,
		22.633137, 36.006386, 22.967327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.373384, 36.243153, 22.118372>,  <21.991596, 36.090473, 22.700201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.373384, 36.243153, 22.118372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.618498, 36.070499, 22.383156>,  <22.765566, 35.966908, 22.542027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.618498, 36.070499, 22.383156>,  <22.373384, 36.243153, 22.118372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.618498, 36.070499, 22.383156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438473, -0.511179, -0.739214,
		0.657450, 0.743228, -0.123982,
		0.612782, -0.431633, 0.661960,
		22.802332, 35.941010, 22.581743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.944670, 36.418480, 21.832378>,  <22.373384, 36.243153, 22.118372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.944670, 36.418480, 21.832378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.974575, 36.096283, 22.067528>,  <22.992517, 35.902966, 22.208618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.974575, 36.096283, 22.067528>,  <22.944670, 36.418480, 21.832378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.974575, 36.096283, 22.067528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521908, -0.470729, -0.711355,
		0.849719, 0.359998, 0.385200,
		0.074761, -0.805491, 0.587873,
		22.997004, 35.854637, 22.243889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.624947, 36.196903, 21.652214>,  <22.944670, 36.418480, 21.832378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.624947, 36.196903, 21.652214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465923, 35.864735, 21.808342>,  <23.370508, 35.665436, 21.902020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465923, 35.864735, 21.808342>,  <23.624947, 36.196903, 21.652214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.465923, 35.864735, 21.808342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247600, -0.506690, -0.825808,
		0.883538, -0.231665, 0.407052,
		-0.397560, -0.830419, 0.390320,
		23.346655, 35.615608, 21.925438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.143595, 35.599590, 21.667278>,  <23.624947, 36.196903, 21.652214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.143595, 35.599590, 21.667278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.783955, 35.427513, 21.699650>,  <23.568171, 35.324268, 21.719072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.783955, 35.427513, 21.699650>,  <24.143595, 35.599590, 21.667278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.783955, 35.427513, 21.699650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225455, -0.613565, -0.756775,
		0.375214, -0.662172, 0.648647,
		-0.899102, -0.430193, 0.080929,
		23.514223, 35.298454, 21.723928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.158850, 34.820683, 21.625362>,  <24.143595, 35.599590, 21.667278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.158850, 34.820683, 21.625362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.778980, 34.885979, 21.518425>,  <23.551058, 34.925156, 21.454262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.778980, 34.885979, 21.518425>,  <24.158850, 34.820683, 21.625362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.778980, 34.885979, 21.518425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043944, -0.775614, -0.629677,
		-0.310141, -0.609736, 0.729407,
		-0.949674, 0.163236, -0.267344,
		23.494078, 34.934948, 21.438221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.030054, 34.175835, 21.447863>,  <24.158850, 34.820683, 21.625362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.030054, 34.175835, 21.447863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.709440, 34.382961, 21.328255>,  <23.517073, 34.507236, 21.256491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.709440, 34.382961, 21.328255>,  <24.030054, 34.175835, 21.447863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.709440, 34.382961, 21.328255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250247, -0.744667, -0.618747,
		-0.543065, -0.421118, 0.726457,
		-0.801534, 0.517814, -0.299019,
		23.468981, 34.538307, 21.238548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.390673, 33.776730, 21.571487>,  <24.030054, 34.175835, 21.447863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.390673, 33.776730, 21.571487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.326920, 34.041264, 21.278301>,  <23.288668, 34.199982, 21.102390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.326920, 34.041264, 21.278301>,  <23.390673, 33.776730, 21.571487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.326920, 34.041264, 21.278301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368789, -0.728589, -0.577194,
		-0.915747, 0.178314, 0.360016,
		-0.159382, 0.661333, -0.732964,
		23.279104, 34.239662, 21.058413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.673260, 33.765247, 21.368389>,  <23.390673, 33.776730, 21.571487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.673260, 33.765247, 21.368389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.857008, 33.913029, 21.045284>,  <22.967257, 34.001698, 20.851421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.857008, 33.913029, 21.045284>,  <22.673260, 33.765247, 21.368389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.857008, 33.913029, 21.045284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249110, -0.819309, -0.516407,
		-0.852598, 0.438443, -0.284331,
		0.459370, 0.369458, -0.807762,
		22.994820, 34.023865, 20.802956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.295599, 33.508156, 20.747028>,  <22.673260, 33.765247, 21.368389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.295599, 33.508156, 20.747028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.639309, 33.631149, 20.583515>,  <22.845535, 33.704945, 20.485407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.639309, 33.631149, 20.583515>,  <22.295599, 33.508156, 20.747028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.639309, 33.631149, 20.583515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058820, -0.734460, -0.676098,
		-0.508123, 0.604998, -0.613016,
		0.859274, 0.307484, -0.408782,
		22.897091, 33.723392, 20.460880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.132429, 33.355350, 20.083527>,  <22.295599, 33.508156, 20.747028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.132429, 33.355350, 20.083527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.531820, 33.373878, 20.095528>,  <22.771454, 33.384995, 20.102728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.531820, 33.373878, 20.095528>,  <22.132429, 33.355350, 20.083527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.531820, 33.373878, 20.095528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051585, -0.590177, -0.805624,
		-0.019608, 0.805944, -0.591667,
		0.998476, 0.046318, 0.030002,
		22.831364, 33.387775, 20.104528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.318922, 33.450363, 19.342222>,  <22.132429, 33.355350, 20.083527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.318922, 33.450363, 19.342222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.640348, 33.309402, 19.534092>,  <22.833204, 33.224827, 19.649214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.640348, 33.309402, 19.534092>,  <22.318922, 33.450363, 19.342222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.640348, 33.309402, 19.534092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134413, -0.677632, -0.723013,
		0.579838, 0.645464, -0.497155,
		0.803568, -0.352406, 0.479676,
		22.881418, 33.203682, 19.677996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.811470, 33.435627, 18.843428>,  <22.318922, 33.450363, 19.342222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.811470, 33.435627, 18.843428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.928148, 33.183910, 19.131569>,  <22.998156, 33.032879, 19.304453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.928148, 33.183910, 19.131569>,  <22.811470, 33.435627, 18.843428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.928148, 33.183910, 19.131569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269811, -0.668388, -0.693151,
		0.917668, 0.396549, -0.025177,
		0.291696, -0.629290, 0.720352,
		23.015657, 32.995125, 19.347675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.593248, 33.322624, 18.840179>,  <22.811470, 33.435627, 18.843428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.593248, 33.322624, 18.840179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.421814, 33.014328, 19.028763>,  <23.318954, 32.829350, 19.141912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.421814, 33.014328, 19.028763>,  <23.593248, 33.322624, 18.840179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.421814, 33.014328, 19.028763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345403, -0.621948, -0.702764,
		0.834873, -0.138349, 0.532773,
		-0.428584, -0.770740, 0.471461,
		23.293240, 32.783108, 19.170200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.182060, 32.793694, 18.815722>,  <23.593248, 33.322624, 18.840179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.182060, 32.793694, 18.815722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.824533, 32.629753, 18.888512>,  <23.610018, 32.531387, 18.932186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.824533, 32.629753, 18.888512>,  <24.182060, 32.793694, 18.815722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.824533, 32.629753, 18.888512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229680, -0.766942, -0.599205,
		0.385147, -0.493784, 0.779640,
		-0.893817, -0.409850, 0.181973,
		23.556389, 32.506798, 18.943104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.362242, 32.066021, 18.831200>,  <24.182060, 32.793694, 18.815722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.362242, 32.066021, 18.831200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.962713, 32.065571, 18.811775>,  <23.722996, 32.065300, 18.800121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.962713, 32.065571, 18.811775>,  <24.362242, 32.066021, 18.831200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.962713, 32.065571, 18.811775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028550, -0.822353, -0.568260,
		-0.039296, -0.568976, 0.821415,
		-0.998820, -0.001121, -0.048559,
		23.663067, 32.065235, 18.797207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.171993, 31.449890, 19.024160>,  <24.362242, 32.066021, 18.831200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.171993, 31.449890, 19.024160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.869484, 31.571415, 18.792385>,  <23.687979, 31.644329, 18.653320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.869484, 31.571415, 18.792385>,  <24.171993, 31.449890, 19.024160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.869484, 31.571415, 18.792385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062533, -0.848025, -0.526254,
		-0.651261, -0.434226, 0.622340,
		-0.756273, 0.303812, -0.579439,
		23.642603, 31.662558, 18.618553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.894407, 30.856071, 18.733969>,  <24.171993, 31.449890, 19.024160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.894407, 30.856071, 18.733969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.690964, 31.127491, 18.521973>,  <23.568897, 31.290342, 18.394775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.690964, 31.127491, 18.521973>,  <23.894407, 30.856071, 18.733969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.690964, 31.127491, 18.521973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151012, -0.535710, -0.830789,
		-0.847653, -0.502580, 0.169996,
		-0.508606, 0.678549, -0.529992,
		23.538382, 31.331055, 18.362976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.216595, 30.564711, 18.317198>,  <23.894407, 30.856071, 18.733969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.216595, 30.564711, 18.317198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.400698, 30.869442, 18.134865>,  <23.511160, 31.052280, 18.025465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.400698, 30.869442, 18.134865>,  <23.216595, 30.564711, 18.317198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.400698, 30.869442, 18.134865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220271, -0.595388, -0.772654,
		-0.860025, 0.255213, -0.441840,
		0.460258, 0.761826, -0.455833,
		23.538774, 31.097990, 17.998116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.682785, 31.020372, 18.026384>,  <23.216595, 30.564711, 18.317198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.682785, 31.020372, 18.026384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.662292, 30.621490, 18.004631>,  <22.649998, 30.382162, 17.991579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.662292, 30.621490, 18.004631>,  <22.682785, 31.020372, 18.026384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.662292, 30.621490, 18.004631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238707, -0.040650, 0.970241,
		-0.969739, 0.062688, -0.235957,
		-0.051231, -0.997205, -0.054384,
		22.646923, 30.322329, 17.988316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.875233, 30.788780, 17.952425>,  <22.682785, 31.020372, 18.026384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.875233, 30.788780, 17.952425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.080744, 31.100510, 17.808933>,  <22.204050, 31.287548, 17.722837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.080744, 31.100510, 17.808933>,  <21.875233, 30.788780, 17.952425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.080744, 31.100510, 17.808933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085011, 0.369835, 0.925200,
		0.853702, -0.505842, 0.123761,
		0.513776, 0.779324, -0.358731,
		22.234877, 31.334307, 17.701315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.809372, 31.338202, 17.471018>,  <21.875233, 30.788780, 17.952425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.809372, 31.338202, 17.471018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.141478, 31.495068, 17.312592>,  <22.340740, 31.589188, 17.217535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.141478, 31.495068, 17.312592>,  <21.809372, 31.338202, 17.471018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.141478, 31.495068, 17.312592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400584, -0.074248, -0.913247,
		-0.387550, 0.916894, 0.095449,
		0.830263, 0.392165, -0.396068,
		22.390556, 31.612717, 17.193771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.616573, 32.051846, 17.243544>,  <21.809372, 31.338202, 17.471018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.616573, 32.051846, 17.243544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.630964, 32.361744, 16.991047>,  <21.639599, 32.547684, 16.839548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.630964, 32.361744, 16.991047>,  <21.616573, 32.051846, 17.243544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.630964, 32.361744, 16.991047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878605, -0.276460, -0.389388,
		-0.476192, 0.568622, 0.670753,
		0.035978, 0.774750, -0.631243,
		21.641758, 32.594170, 16.801674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434778, 31.686464, 16.669182>,  <21.616573, 32.051846, 17.243544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434778, 31.686464, 16.669182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078442, 31.508224, 16.704609>,  <20.864639, 31.401279, 16.725866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078442, 31.508224, 16.704609>,  <21.434778, 31.686464, 16.669182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.078442, 31.508224, 16.704609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449829, 0.892451, -0.034411,
		-0.063710, -0.070495, -0.995475,
		-0.890839, -0.445602, 0.088569,
		20.811190, 31.374544, 16.731180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004169, 31.976866, 16.167606>,  <21.434778, 31.686464, 16.669182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.004169, 31.976866, 16.167606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.748859, 31.848946, 16.447701>,  <20.595673, 31.772194, 16.615757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.748859, 31.848946, 16.447701>,  <21.004169, 31.976866, 16.167606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.748859, 31.848946, 16.447701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501468, 0.862878, -0.063017,
		-0.584066, -0.391369, -0.711124,
		-0.638276, -0.319800, 0.700237,
		20.557377, 31.753006, 16.657772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.271702, 32.159222, 15.914118>,  <21.004169, 31.976866, 16.167606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.271702, 32.159222, 15.914118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.294493, 32.083801, 16.306282>,  <20.308167, 32.038551, 16.541580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.294493, 32.083801, 16.306282>,  <20.271702, 32.159222, 15.914118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.294493, 32.083801, 16.306282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346752, 0.917136, 0.196532,
		-0.936225, -0.351156, -0.013124,
		0.056977, -0.188549, 0.980410,
		20.311586, 32.027237, 16.600405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.647264, 32.357071, 16.288519>,  <20.271702, 32.159222, 15.914118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.647264, 32.357071, 16.288519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.959169, 32.371437, 16.538536>,  <20.146313, 32.380054, 16.688547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.959169, 32.371437, 16.538536>,  <19.647264, 32.357071, 16.288519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.959169, 32.371437, 16.538536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312089, 0.887768, 0.338333,
		-0.542744, -0.458889, 0.703456,
		0.779763, 0.035912, 0.625045,
		20.193098, 32.382210, 16.726049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.532015, 32.730862, 16.861183>,  <19.647264, 32.357071, 16.288519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.532015, 32.730862, 16.861183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.899639, 32.746700, 17.018032>,  <20.120214, 32.756203, 17.112141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.899639, 32.746700, 17.018032>,  <19.532015, 32.730862, 16.861183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.899639, 32.746700, 17.018032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296296, 0.725466, 0.621215,
		-0.259874, -0.687118, 0.678479,
		0.919062, 0.039594, 0.392120,
		20.175358, 32.758579, 17.135668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.301197, 32.803997, 17.474886>,  <19.532015, 32.730862, 16.861183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.301197, 32.803997, 17.474886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.690498, 32.895882, 17.475834>,  <19.924080, 32.951012, 17.476402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.690498, 32.895882, 17.475834>,  <19.301197, 32.803997, 17.474886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.690498, 32.895882, 17.475834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111684, 0.464109, 0.878709,
		0.200752, -0.855473, 0.477352,
		0.973255, 0.229715, 0.002371,
		19.982475, 32.964798, 17.476545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.413988, 32.870087, 18.111635>,  <19.301197, 32.803997, 17.474886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.413988, 32.870087, 18.111635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733549, 33.071941, 17.980732>,  <19.925285, 33.193054, 17.902189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733549, 33.071941, 17.980732>,  <19.413988, 32.870087, 18.111635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.733549, 33.071941, 17.980732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051277, 0.599271, 0.798902,
		0.599271, -0.621464, 0.504635,
		-0.798902, -0.504635, 0.327259,
		19.973219, 33.223331, 17.882555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.867577, 32.918079, 18.637333>,  <19.413988, 32.870087, 18.111635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.867577, 32.918079, 18.637333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.911150, 33.219685, 18.378227>,  <19.937294, 33.400646, 18.222763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.911150, 33.219685, 18.378227>,  <19.867577, 32.918079, 18.637333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.911150, 33.219685, 18.378227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063211, 0.655577, 0.752478,
		0.992037, -0.041023, 0.119076,
		0.108932, 0.754013, -0.647764,
		19.943830, 33.445889, 18.183899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.067675, 33.471397, 19.074171>,  <19.867577, 32.918079, 18.637333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.067675, 33.471397, 19.074171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.022442, 33.692684, 18.744041>,  <19.995302, 33.825455, 18.545963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.022442, 33.692684, 18.744041>,  <20.067675, 33.471397, 19.074171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.022442, 33.692684, 18.744041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044604, 0.826990, 0.560444,
		0.992584, 0.100190, -0.068843,
		-0.113084, 0.553217, -0.825326,
		19.988516, 33.858650, 18.496443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.480009, 34.133965, 19.091585>,  <20.067675, 33.471397, 19.074171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.480009, 34.133965, 19.091585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.239723, 34.248215, 18.792904>,  <20.095552, 34.316765, 18.613695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.239723, 34.248215, 18.792904>,  <20.480009, 34.133965, 19.091585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.239723, 34.248215, 18.792904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050675, 0.945728, 0.320985,
		0.797857, 0.154980, -0.582584,
		-0.600712, 0.285623, -0.746702,
		20.059509, 34.333900, 18.568893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.813759, 34.718269, 18.685938>,  <20.480009, 34.133965, 19.091585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.813759, 34.718269, 18.685938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.414471, 34.740208, 18.676594>,  <20.174898, 34.753372, 18.670988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.414471, 34.740208, 18.676594>,  <20.813759, 34.718269, 18.685938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.414471, 34.740208, 18.676594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047665, 0.969626, 0.239904,
		0.035809, 0.238364, -0.970516,
		-0.998221, 0.054850, -0.023360,
		20.115004, 34.756664, 18.669586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.743843, 35.422802, 18.509209>,  <20.813759, 34.718269, 18.685938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.743843, 35.422802, 18.509209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.380203, 35.337399, 18.652290>,  <20.162020, 35.286156, 18.738138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.380203, 35.337399, 18.652290>,  <20.743843, 35.422802, 18.509209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.380203, 35.337399, 18.652290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141961, 0.966058, 0.215822,
		-0.391640, 0.145424, -0.908554,
		-0.909101, -0.213504, 0.357702,
		20.107473, 35.273346, 18.759602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.355234, 35.961418, 18.295767>,  <20.743843, 35.422802, 18.509209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.355234, 35.961418, 18.295767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.158318, 35.796352, 18.602325>,  <20.040169, 35.697315, 18.786261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.158318, 35.796352, 18.602325>,  <20.355234, 35.961418, 18.295767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.158318, 35.796352, 18.602325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089778, 0.899854, 0.426852,
		-0.865789, 0.141329, -0.480037,
		-0.492290, -0.412661, 0.766395,
		20.010630, 35.672554, 18.832245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.831757, 36.526253, 18.604092>,  <20.355234, 35.961418, 18.295767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.831757, 36.526253, 18.604092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.822186, 36.239281, 18.882580>,  <19.816442, 36.067097, 19.049673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.822186, 36.239281, 18.882580>,  <19.831757, 36.526253, 18.604092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.822186, 36.239281, 18.882580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030640, 0.695566, 0.717809,
		-0.999244, 0.038508, 0.005339,
		-0.023927, -0.717430, 0.696220,
		19.815008, 36.024052, 19.091446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.265007, 36.793713, 19.029871>,  <19.831757, 36.526253, 18.604092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.265007, 36.793713, 19.029871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.533806, 36.568489, 19.222282>,  <19.695086, 36.433357, 19.337729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.533806, 36.568489, 19.222282>,  <19.265007, 36.793713, 19.029871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.533806, 36.568489, 19.222282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007299, 0.644485, 0.764582,
		-0.740519, -0.517307, 0.428981,
		0.671996, -0.563057, 0.481029,
		19.735405, 36.399570, 19.366590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.997919, 36.820740, 19.708591>,  <19.265007, 36.793713, 19.029871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.997919, 36.820740, 19.708591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.380470, 36.706463, 19.732983>,  <19.610001, 36.637897, 19.747618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.380470, 36.706463, 19.732983>,  <18.997919, 36.820740, 19.708591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.380470, 36.706463, 19.732983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100892, 0.518918, 0.848849,
		-0.274151, -0.805670, 0.525107,
		0.956379, -0.285692, 0.060976,
		19.667385, 36.620754, 19.751276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.153214, 36.586128, 20.316608>,  <18.997919, 36.820740, 19.708591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.153214, 36.586128, 20.316608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.543436, 36.631718, 20.241451>,  <19.777569, 36.659073, 20.196358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.543436, 36.631718, 20.241451>,  <19.153214, 36.586128, 20.316608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.543436, 36.631718, 20.241451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120648, 0.436845, 0.891409,
		0.183677, -0.892287, 0.412415,
		0.975555, 0.113975, -0.187891,
		19.836102, 36.665909, 20.185083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.480747, 36.297253, 20.833801>,  <19.153214, 36.586128, 20.316608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.480747, 36.297253, 20.833801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.747658, 36.553993, 20.682663>,  <19.907804, 36.708038, 20.591980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.747658, 36.553993, 20.682663>,  <19.480747, 36.297253, 20.833801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.747658, 36.553993, 20.682663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266263, 0.268209, 0.925834,
		0.695590, -0.718394, 0.008068,
		0.667277, 0.641852, -0.377845,
		19.947842, 36.746548, 20.569309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.035376, 36.136204, 21.265533>,  <19.480747, 36.297253, 20.833801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.035376, 36.136204, 21.265533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.102570, 36.494949, 21.101864>,  <20.142885, 36.710197, 21.003662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.102570, 36.494949, 21.101864>,  <20.035376, 36.136204, 21.265533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.102570, 36.494949, 21.101864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146028, 0.387854, 0.910080,
		0.974914, -0.212629, -0.065814,
		0.167983, 0.896860, -0.409174,
		20.152964, 36.764008, 20.979113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.758738, 36.378040, 21.544447>,  <20.035376, 36.136204, 21.265533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.758738, 36.378040, 21.544447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.546482, 36.690044, 21.411781>,  <20.419128, 36.877247, 21.332182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.546482, 36.690044, 21.411781>,  <20.758738, 36.378040, 21.544447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.546482, 36.690044, 21.411781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184573, 0.488246, 0.852964,
		0.827258, 0.391400, -0.403052,
		-0.530638, 0.780014, -0.331664,
		20.387291, 36.924049, 21.312283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.169323, 36.916645, 21.761200>,  <20.758738, 36.378040, 21.544447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.169323, 36.916645, 21.761200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.830568, 37.115322, 21.685226>,  <20.627316, 37.234528, 21.639643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.830568, 37.115322, 21.685226>,  <21.169323, 36.916645, 21.761200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.830568, 37.115322, 21.685226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152473, 0.568985, 0.808089,
		0.509444, 0.655401, -0.557599,
		-0.846888, 0.496695, -0.189936,
		20.576502, 37.264332, 21.628246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.277132, 37.550827, 21.843370>,  <21.169323, 36.916645, 21.761200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.277132, 37.550827, 21.843370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.878016, 37.560131, 21.868271>,  <20.638546, 37.565716, 21.883211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.878016, 37.560131, 21.868271>,  <21.277132, 37.550827, 21.843370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.878016, 37.560131, 21.868271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062315, 0.653041, 0.754754,
		-0.023093, 0.756965, -0.653047,
		-0.997789, 0.023265, 0.062251,
		20.578678, 37.567112, 21.886946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.083544, 38.269798, 21.761477>,  <21.277132, 37.550827, 21.843370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.083544, 38.269798, 21.761477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.830219, 38.037971, 21.966618>,  <20.678225, 37.898876, 22.089703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.830219, 38.037971, 21.966618>,  <21.083544, 38.269798, 21.761477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.830219, 38.037971, 21.966618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090985, 0.602329, 0.793045,
		-0.768530, 0.548906, -0.328729,
		-0.633311, -0.579570, 0.512851,
		20.640226, 37.864101, 22.120472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.723549, 38.751312, 22.095461>,  <21.083544, 38.269798, 21.761477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.723549, 38.751312, 22.095461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.643497, 38.418850, 22.302971>,  <20.595467, 38.219372, 22.427477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.643497, 38.418850, 22.302971>,  <20.723549, 38.751312, 22.095461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.643497, 38.418850, 22.302971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060560, 0.538969, 0.840146,
		-0.977896, 0.136720, -0.158198,
		-0.200128, -0.831156, 0.518776,
		20.583460, 38.169502, 22.458603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275730, 38.921211, 22.657490>,  <20.723549, 38.751312, 22.095461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275730, 38.921211, 22.657490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.420860, 38.569263, 22.780251>,  <20.507938, 38.358093, 22.853907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.420860, 38.569263, 22.780251>,  <20.275730, 38.921211, 22.657490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.420860, 38.569263, 22.780251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010414, 0.333154, 0.942815,
		-0.931799, -0.338880, 0.130039,
		0.362824, -0.879868, 0.306904,
		20.529707, 38.305302, 22.872322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.902578, 38.711769, 23.221249>,  <20.275730, 38.921211, 22.657490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.902578, 38.711769, 23.221249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240009, 38.498249, 23.244713>,  <20.442467, 38.370136, 23.258791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240009, 38.498249, 23.244713>,  <19.902578, 38.711769, 23.221249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240009, 38.498249, 23.244713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055250, 0.194932, 0.979259,
		-0.534160, -0.822839, 0.193932,
		0.843576, -0.533796, 0.058663,
		20.493082, 38.338112, 23.262312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.272467, 38.767883, 22.913315>,  <19.902578, 38.711769, 23.221249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.272467, 38.767883, 22.913315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.201656, 38.582298, 23.260509>,  <19.159170, 38.470947, 23.468826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.201656, 38.582298, 23.260509>,  <19.272467, 38.767883, 22.913315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.201656, 38.582298, 23.260509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724508, -0.535482, -0.433991,
		0.666146, -0.705691, -0.241350,
		-0.177024, -0.463961, 0.867988,
		19.148548, 38.443111, 23.520906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.269285, 38.002853, 22.752834>,  <19.272467, 38.767883, 22.913315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.269285, 38.002853, 22.752834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.090967, 38.062817, 23.105831>,  <18.983976, 38.098797, 23.317629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.090967, 38.062817, 23.105831>,  <19.269285, 38.002853, 22.752834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.090967, 38.062817, 23.105831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765795, -0.574349, -0.289278,
		0.463493, -0.804767, 0.370842,
		-0.445794, 0.149910, 0.882493,
		18.957230, 38.107788, 23.370579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568695, 37.627869, 22.646023>,  <19.269285, 38.002853, 22.752834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.568695, 37.627869, 22.646023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.516071, 37.686821, 23.038139>,  <18.484497, 37.722195, 23.273409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.516071, 37.686821, 23.038139>,  <18.568695, 37.627869, 22.646023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.516071, 37.686821, 23.038139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769204, -0.638964, -0.007162,
		0.625315, -0.754985, 0.197430,
		-0.131558, 0.147385, 0.980291,
		18.476604, 37.731037, 23.332226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.606817, 37.048504, 23.040751>,  <18.568695, 37.627869, 22.646023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.606817, 37.048504, 23.040751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.354595, 37.314758, 23.200417>,  <18.203262, 37.474510, 23.296215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.354595, 37.314758, 23.200417>,  <18.606817, 37.048504, 23.040751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.354595, 37.314758, 23.200417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764915, -0.620118, -0.174237,
		0.131551, -0.415193, 0.900172,
		-0.630555, 0.665634, 0.399164,
		18.165428, 37.514450, 23.320166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012663, 36.748493, 23.330330>,  <18.606817, 37.048504, 23.040751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.012663, 36.748493, 23.330330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.806995, 37.091492, 23.323158>,  <17.683594, 37.297291, 23.318855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.806995, 37.091492, 23.323158>,  <18.012663, 36.748493, 23.330330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.806995, 37.091492, 23.323158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800019, -0.487029, -0.350389,
		-0.309189, -0.165818, 0.936433,
		-0.514171, 0.857500, -0.017927,
		17.652744, 37.348743, 23.317780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.449228, 26.631861, 26.494606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.828176, 26.516373, 26.549931>,  <29.055546, 26.447081, 26.583124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.828176, 26.516373, 26.549931>,  <28.449228, 26.631861, 26.494606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828176, 26.516373, 26.549931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314836, 0.761941, -0.565972,
		0.058022, 0.579731, 0.812740,
		0.947371, -0.288719, 0.138310,
		29.112389, 26.429756, 26.591423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769266, 27.164375, 26.770973>,  <28.449228, 26.631861, 26.494606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769266, 27.164375, 26.770973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.059454, 26.948895, 26.599628>,  <29.233566, 26.819607, 26.496822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.059454, 26.948895, 26.599628>,  <28.769266, 27.164375, 26.770973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059454, 26.948895, 26.599628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469228, 0.842449, -0.264773,
		0.503507, -0.008915, 0.863945,
		0.725469, -0.538702, -0.428362,
		29.277094, 26.787283, 26.471119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328611, 27.600166, 26.858776>,  <28.769266, 27.164375, 26.770973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328611, 27.600166, 26.858776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.449104, 27.352188, 26.568970>,  <29.521400, 27.203402, 26.395086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.449104, 27.352188, 26.568970>,  <29.328611, 27.600166, 26.858776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449104, 27.352188, 26.568970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360444, 0.777466, -0.515390,
		0.882802, -0.105896, 0.457654,
		0.301233, -0.619946, -0.724518,
		29.539474, 27.166204, 26.351614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024818, 27.719017, 26.748060>,  <29.328611, 27.600166, 26.858776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024818, 27.719017, 26.748060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.885206, 27.542938, 26.417145>,  <29.801439, 27.437292, 26.218596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.885206, 27.542938, 26.417145>,  <30.024818, 27.719017, 26.748060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885206, 27.542938, 26.417145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437946, 0.703851, -0.559282,
		0.828482, -0.557513, -0.052882,
		-0.349028, -0.440196, -0.827289,
		29.780499, 27.410879, 26.168959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572294, 27.739788, 26.308050>,  <30.024818, 27.719017, 26.748060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572294, 27.739788, 26.308050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.275621, 27.665924, 26.050117>,  <30.097618, 27.621605, 25.895357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.275621, 27.665924, 26.050117>,  <30.572294, 27.739788, 26.308050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275621, 27.665924, 26.050117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328060, 0.738659, -0.588862,
		0.585051, -0.648292, -0.487270,
		-0.741682, -0.184661, -0.644833,
		30.053118, 27.610525, 25.856668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868639, 27.881996, 25.617647>,  <30.572294, 27.739788, 26.308050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868639, 27.881996, 25.617647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.470045, 27.909309, 25.598232>,  <30.230888, 27.925697, 25.586584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.470045, 27.909309, 25.598232>,  <30.868639, 27.881996, 25.617647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470045, 27.909309, 25.598232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083763, 0.800857, -0.592968,
		-0.001619, -0.594949, -0.803762,
		-0.996485, 0.068286, -0.048538,
		30.171101, 27.929794, 25.583672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625095, 27.937626, 24.936377>,  <30.868639, 27.881996, 25.617647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625095, 27.937626, 24.936377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.309547, 28.093060, 25.126823>,  <30.120218, 28.186319, 25.241091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.309547, 28.093060, 25.126823>,  <30.625095, 27.937626, 24.936377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309547, 28.093060, 25.126823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039718, 0.805345, -0.591474,
		-0.613275, -0.447686, -0.650746,
		-0.788870, 0.388583, 0.476117,
		30.072886, 28.209635, 25.269659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144716, 28.219631, 24.445963>,  <30.625095, 27.937626, 24.936377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144716, 28.219631, 24.445963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.037954, 28.408428, 24.782055>,  <29.973898, 28.521706, 24.983709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.037954, 28.408428, 24.782055>,  <30.144716, 28.219631, 24.445963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037954, 28.408428, 24.782055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032095, 0.867020, -0.497238,
		-0.963189, -0.159681, -0.216262,
		-0.266903, 0.471993, 0.840229,
		29.957884, 28.550026, 25.034124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733248, 28.690901, 24.247351>,  <30.144716, 28.219631, 24.445963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733248, 28.690901, 24.247351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.823856, 28.820805, 24.614658>,  <29.878222, 28.898746, 24.835043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.823856, 28.820805, 24.614658>,  <29.733248, 28.690901, 24.247351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823856, 28.820805, 24.614658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073048, 0.945786, -0.316470,
		-0.971263, 0.004609, 0.237964,
		0.226522, 0.324759, 0.918270,
		29.891813, 28.918232, 24.890139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198950, 29.250938, 24.515779>,  <29.733248, 28.690901, 24.247351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198950, 29.250938, 24.515779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.541622, 29.306408, 24.714523>,  <29.747225, 29.339689, 24.833769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.541622, 29.306408, 24.714523>,  <29.198950, 29.250938, 24.515779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541622, 29.306408, 24.714523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016763, 0.955195, -0.295501,
		-0.515574, 0.261479, 0.815973,
		0.856681, 0.138674, 0.496857,
		29.798626, 29.348011, 24.863581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133881, 29.861931, 24.854094>,  <29.198950, 29.250938, 24.515779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133881, 29.861931, 24.854094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.530603, 29.815651, 24.832443>,  <29.768637, 29.787884, 24.819454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.530603, 29.815651, 24.832443>,  <29.133881, 29.861931, 24.854094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530603, 29.815651, 24.832443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092961, 0.944411, -0.315350,
		0.087601, 0.307735, 0.947431,
		0.991809, -0.115699, -0.054124,
		29.828146, 29.780941, 24.816206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320953, 30.563982, 24.950937>,  <29.133881, 29.861931, 24.854094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320953, 30.563982, 24.950937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.662222, 30.393948, 24.830006>,  <29.866983, 30.291927, 24.757446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.662222, 30.393948, 24.830006>,  <29.320953, 30.563982, 24.950937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662222, 30.393948, 24.830006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244027, 0.837504, -0.488915,
		0.461032, 0.343351, 0.818266,
		0.853170, -0.425085, -0.302329,
		29.918173, 30.266422, 24.739307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864119, 30.921827, 25.292486>,  <29.320953, 30.563982, 24.950937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864119, 30.921827, 25.292486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.038074, 30.736488, 24.983635>,  <30.142448, 30.625286, 24.798325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.038074, 30.736488, 24.983635>,  <29.864119, 30.921827, 25.292486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038074, 30.736488, 24.983635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412475, 0.864715, -0.286585,
		0.800459, -0.193851, 0.567174,
		0.434890, -0.463345, -0.772128,
		30.168541, 30.597485, 24.751997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607965, 30.954542, 25.403233>,  <29.864119, 30.921827, 25.292486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607965, 30.954542, 25.403233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.504496, 30.918098, 25.018570>,  <30.442413, 30.896233, 24.787771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.504496, 30.918098, 25.018570>,  <30.607965, 30.954542, 25.403233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504496, 30.918098, 25.018570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499830, 0.839280, -0.213962,
		0.826594, -0.536012, -0.171561,
		-0.258673, -0.091108, -0.961659,
		30.426893, 30.890766, 24.730072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183569, 31.355742, 24.975197>,  <30.607965, 30.954542, 25.403233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183569, 31.355742, 24.975197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.875744, 31.316689, 24.722771>,  <30.691050, 31.293257, 24.571316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.875744, 31.316689, 24.722771>,  <31.183569, 31.355742, 24.975197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875744, 31.316689, 24.722771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057607, 0.973599, -0.220875,
		0.635968, -0.206331, -0.743621,
		-0.769562, -0.097632, -0.631064,
		30.644875, 31.287399, 24.533451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427698, 31.709074, 24.414265>,  <31.183569, 31.355742, 24.975197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427698, 31.709074, 24.414265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.029053, 31.698032, 24.383293>,  <30.789865, 31.691406, 24.364710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.029053, 31.698032, 24.383293>,  <31.427698, 31.709074, 24.414265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029053, 31.698032, 24.383293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004809, 0.959891, -0.280332,
		0.082060, -0.279011, -0.956775,
		-0.996616, -0.027605, -0.077427,
		30.730068, 31.689751, 24.360065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256039, 32.010300, 23.677389>,  <31.427698, 31.709074, 24.414265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256039, 32.010300, 23.677389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.940084, 32.056816, 23.918240>,  <30.750511, 32.084724, 24.062750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.940084, 32.056816, 23.918240>,  <31.256039, 32.010300, 23.677389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940084, 32.056816, 23.918240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116439, 0.935556, -0.333431,
		-0.602099, -0.333483, -0.725442,
		-0.789885, 0.116289, 0.602128,
		30.703119, 32.091702, 24.098879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789743, 32.270565, 23.288277>,  <31.256039, 32.010300, 23.677389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789743, 32.270565, 23.288277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.602032, 32.373802, 23.626072>,  <30.489405, 32.435745, 23.828749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.602032, 32.373802, 23.626072>,  <30.789743, 32.270565, 23.288277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602032, 32.373802, 23.626072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151117, 0.918755, -0.364765,
		-0.870022, -0.298794, -0.392152,
		-0.469281, 0.258093, 0.844490,
		30.461246, 32.451229, 23.879419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200590, 32.564472, 23.147720>,  <30.789743, 32.270565, 23.288277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200590, 32.564472, 23.147720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.230595, 32.718002, 23.515862>,  <30.248598, 32.810120, 23.736746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.230595, 32.718002, 23.515862>,  <30.200590, 32.564472, 23.147720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230595, 32.718002, 23.515862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114147, 0.920192, -0.374456,
		-0.990628, -0.076966, 0.112838,
		0.075012, 0.383827, 0.920353,
		30.253098, 32.833149, 23.791967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700329, 32.989670, 23.211864>,  <30.200590, 32.564472, 23.147720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700329, 32.989670, 23.211864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.955027, 33.126270, 23.488396>,  <30.107845, 33.208233, 23.654314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.955027, 33.126270, 23.488396>,  <29.700329, 32.989670, 23.211864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955027, 33.126270, 23.488396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218664, 0.939741, -0.262816,
		-0.739421, 0.016178, 0.673049,
		0.636744, 0.341503, 0.691327,
		30.146049, 33.228722, 23.695793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272678, 33.446362, 23.714668>,  <29.700329, 32.989670, 23.211864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272678, 33.446362, 23.714668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.660467, 33.544437, 23.713707>,  <29.893141, 33.603283, 23.713131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.660467, 33.544437, 23.713707>,  <29.272678, 33.446362, 23.714668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660467, 33.544437, 23.713707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244519, 0.965993, -0.084069,
		-0.018293, 0.082090, 0.996457,
		0.969472, 0.245190, -0.002401,
		29.951309, 33.617996, 23.712986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174747, 34.029724, 23.920572>,  <29.272678, 33.446362, 23.714668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174747, 34.029724, 23.920572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.557215, 34.048080, 23.804893>,  <29.786695, 34.059093, 23.735485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.557215, 34.048080, 23.804893>,  <29.174747, 34.029724, 23.920572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557215, 34.048080, 23.804893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097362, 0.981277, -0.166184,
		0.276157, 0.187056, 0.942734,
		0.956168, 0.045893, -0.289199,
		29.844065, 34.061848, 23.718134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498697, 34.387661, 24.063301>,  <29.174747, 34.029724, 23.920572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498697, 34.387661, 24.063301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.113815, 34.496590, 24.063683>,  <27.882885, 34.561947, 24.063911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.113815, 34.496590, 24.063683>,  <28.498697, 34.387661, 24.063301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113815, 34.496590, 24.063683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164898, -0.585430, 0.793776,
		0.216722, 0.763619, 0.608209,
		-0.962206, 0.272321, 0.000956,
		27.825153, 34.578285, 24.063969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269859, 34.452202, 24.772205>,  <28.498697, 34.387661, 24.063301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269859, 34.452202, 24.772205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.986582, 34.369968, 24.502037>,  <27.816614, 34.320629, 24.339935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.986582, 34.369968, 24.502037>,  <28.269859, 34.452202, 24.772205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986582, 34.369968, 24.502037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339789, -0.739334, 0.581316,
		-0.618872, 0.641186, 0.453737,
		-0.708195, -0.205586, -0.675421,
		27.774124, 34.308292, 24.299410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702364, 34.353470, 25.186159>,  <28.269859, 34.452202, 24.772205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702364, 34.353470, 25.186159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.599178, 34.195358, 24.833523>,  <27.537266, 34.100491, 24.621941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.599178, 34.195358, 24.833523>,  <27.702364, 34.353470, 25.186159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599178, 34.195358, 24.833523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371934, -0.801524, 0.468214,
		-0.891694, 0.448678, 0.059747,
		-0.257966, -0.395282, -0.881593,
		27.521788, 34.076775, 24.569044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987926, 34.173706, 25.278212>,  <27.702364, 34.353470, 25.186159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987926, 34.173706, 25.278212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.145565, 33.959419, 24.979496>,  <27.240149, 33.830849, 24.800266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.145565, 33.959419, 24.979496>,  <26.987926, 34.173706, 25.278212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145565, 33.959419, 24.979496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357605, -0.837901, 0.412361,
		-0.846646, 0.104547, -0.521787,
		0.394095, -0.535716, -0.746791,
		27.263794, 33.798706, 24.755459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573917, 33.631332, 25.210354>,  <26.987926, 34.173706, 25.278212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573917, 33.631332, 25.210354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.890921, 33.491863, 25.010212>,  <27.081123, 33.408180, 24.890127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.890921, 33.491863, 25.010212>,  <26.573917, 33.631332, 25.210354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890921, 33.491863, 25.010212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179509, -0.917465, 0.355014,
		-0.582842, -0.191534, -0.789690,
		0.792510, -0.348673, -0.500355,
		27.128674, 33.387260, 24.860106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342934, 33.043068, 24.860918>,  <26.573917, 33.631332, 25.210354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342934, 33.043068, 24.860918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.736872, 32.973701, 24.859558>,  <26.973234, 32.932083, 24.858742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.736872, 32.973701, 24.859558>,  <26.342934, 33.043068, 24.860918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736872, 32.973701, 24.859558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166394, -0.950142, 0.263711,
		-0.048963, -0.259148, -0.964596,
		0.984843, -0.173414, -0.003401,
		27.032324, 32.921677, 24.858538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549780, 32.322197, 24.490578>,  <26.342934, 33.043068, 24.860918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549780, 32.322197, 24.490578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.827927, 32.435535, 24.754753>,  <26.994816, 32.503540, 24.913258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.827927, 32.435535, 24.754753>,  <26.549780, 32.322197, 24.490578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827927, 32.435535, 24.754753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108806, -0.949908, 0.292978,
		0.710369, -0.131868, -0.691366,
		0.695369, 0.283347, 0.660437,
		27.036537, 32.520538, 24.952885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006144, 31.780508, 24.374519>,  <26.549780, 32.322197, 24.490578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006144, 31.780508, 24.374519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.129997, 31.969254, 24.704723>,  <27.204309, 32.082500, 24.902845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.129997, 31.969254, 24.704723>,  <27.006144, 31.780508, 24.374519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129997, 31.969254, 24.704723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061409, -0.876289, 0.477856,
		0.948871, -0.097266, -0.300305,
		0.309633, 0.471865, 0.825512,
		27.222887, 32.110813, 24.952377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400471, 31.301851, 24.638517>,  <27.006144, 31.780508, 24.374519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400471, 31.301851, 24.638517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.315006, 31.527325, 24.957668>,  <27.263727, 31.662609, 25.149158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.315006, 31.527325, 24.957668>,  <27.400471, 31.301851, 24.638517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315006, 31.527325, 24.957668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085460, -0.802823, 0.590061,
		0.973162, 0.194261, 0.123361,
		-0.213663, 0.563683, 0.797878,
		27.250908, 31.696430, 25.197031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924927, 31.095221, 25.156967>,  <27.400471, 31.301851, 24.638517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924927, 31.095221, 25.156967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.604250, 31.274433, 25.315235>,  <27.411844, 31.381960, 25.410196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.604250, 31.274433, 25.315235>,  <27.924927, 31.095221, 25.156967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604250, 31.274433, 25.315235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185728, -0.815900, 0.547552,
		0.568148, 0.365481, 0.737313,
		-0.801694, 0.448030, 0.395672,
		27.363741, 31.408842, 25.433937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014908, 30.861202, 25.827425>,  <27.924927, 31.095221, 25.156967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014908, 30.861202, 25.827425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.636999, 30.986282, 25.788185>,  <27.410254, 31.061331, 25.764641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.636999, 30.986282, 25.788185>,  <28.014908, 30.861202, 25.827425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636999, 30.986282, 25.788185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314195, -0.779103, 0.542476,
		0.093204, 0.543338, 0.834324,
		-0.944772, 0.312701, -0.098099,
		27.353567, 31.080093, 25.758755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692743, 30.805759, 26.504765>,  <28.014908, 30.861202, 25.827425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692743, 30.805759, 26.504765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.385044, 30.794353, 26.249439>,  <27.200424, 30.787510, 26.096245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.385044, 30.794353, 26.249439>,  <27.692743, 30.805759, 26.504765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385044, 30.794353, 26.249439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344741, -0.822598, 0.452202,
		-0.537969, 0.567908, 0.622952,
		-0.769248, -0.028514, -0.638314,
		27.154270, 30.785799, 26.057945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084614, 30.594328, 26.935270>,  <27.692743, 30.805759, 26.504765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084614, 30.594328, 26.935270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.965900, 30.515312, 26.561554>,  <26.894672, 30.467903, 26.337324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.965900, 30.515312, 26.561554>,  <27.084614, 30.594328, 26.935270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965900, 30.515312, 26.561554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323755, -0.899614, 0.293049,
		-0.898389, 0.389453, 0.203036,
		-0.296783, -0.197538, -0.934290,
		26.876865, 30.456051, 26.281267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459106, 30.314257, 27.000763>,  <27.084614, 30.594328, 26.935270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459106, 30.314257, 27.000763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.558201, 30.198097, 26.631050>,  <26.617657, 30.128401, 26.409222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.558201, 30.198097, 26.631050>,  <26.459106, 30.314257, 27.000763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558201, 30.198097, 26.631050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171831, -0.952065, 0.253072,
		-0.953470, 0.096129, -0.285751,
		0.247726, -0.290398, -0.924284,
		26.632521, 30.110977, 26.353765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876390, 29.872755, 26.715567>,  <26.459106, 30.314257, 27.000763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876390, 29.872755, 26.715567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.198702, 29.792355, 26.492741>,  <26.392088, 29.744114, 26.359045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.198702, 29.792355, 26.492741>,  <25.876390, 29.872755, 26.715567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198702, 29.792355, 26.492741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162877, -0.979582, 0.117860,
		-0.569381, -0.004236, -0.822063,
		0.805777, -0.201002, -0.557065,
		26.440435, 29.732054, 26.325621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676088, 29.428307, 26.196543>,  <25.876390, 29.872755, 26.715567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676088, 29.428307, 26.196543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.070311, 29.370422, 26.231724>,  <26.306845, 29.335691, 26.252832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.070311, 29.370422, 26.231724>,  <25.676088, 29.428307, 26.196543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070311, 29.370422, 26.231724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145120, -0.989412, -0.001732,
		0.087274, -0.011057, -0.996123,
		0.985557, -0.144709, 0.087955,
		26.365978, 29.327009, 26.258110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835051, 28.825043, 25.820358>,  <25.676088, 29.428307, 26.196543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835051, 28.825043, 25.820358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.177567, 28.873253, 26.021252>,  <26.383076, 28.902178, 26.141788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.177567, 28.873253, 26.021252>,  <25.835051, 28.825043, 25.820358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177567, 28.873253, 26.021252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023535, -0.980487, 0.195168,
		0.515957, -0.155301, -0.842419,
		0.856291, 0.120524, 0.502234,
		26.434454, 28.909410, 26.171923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260977, 28.316996, 25.470793>,  <25.835051, 28.825043, 25.820358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260977, 28.316996, 25.470793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.412239, 28.423103, 25.825562>,  <26.502996, 28.486769, 26.038424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.412239, 28.423103, 25.825562>,  <26.260977, 28.316996, 25.470793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412239, 28.423103, 25.825562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263401, -0.949298, 0.171621,
		0.887478, 0.168716, -0.428855,
		0.378156, 0.265271, 0.886921,
		26.525686, 28.502686, 26.091639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.951639, 28.119370, 25.547432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.837181, 28.129616, 25.930569>,  <26.768505, 28.135763, 26.160452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.837181, 28.129616, 25.930569>,  <26.951639, 28.119370, 25.547432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837181, 28.129616, 25.930569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180906, -0.980220, 0.080257,
		0.940953, 0.196244, 0.275853,
		-0.286146, 0.025614, 0.957843,
		26.751337, 28.137300, 26.217922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492756, 27.752739, 26.118855>,  <26.951639, 28.119370, 25.547432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492756, 27.752739, 26.118855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.148142, 27.772305, 26.320988>,  <26.941374, 27.784044, 26.442268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.148142, 27.772305, 26.320988>,  <27.492756, 27.752739, 26.118855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148142, 27.772305, 26.320988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087775, -0.966010, 0.243148,
		0.500051, 0.253836, 0.827959,
		-0.861536, 0.048912, 0.505335,
		26.889681, 27.786978, 26.472588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672556, 27.554432, 26.849066>,  <27.492756, 27.752739, 26.118855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672556, 27.554432, 26.849066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.288464, 27.503994, 26.749420>,  <27.058008, 27.473732, 26.689632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.288464, 27.503994, 26.749420>,  <27.672556, 27.554432, 26.849066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288464, 27.503994, 26.749420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025184, -0.927690, 0.372500,
		-0.278071, 0.351413, 0.893972,
		-0.960231, -0.126095, -0.249114,
		27.000395, 27.466166, 26.674686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359016, 27.327309, 27.410522>,  <27.672556, 27.554432, 26.849066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359016, 27.327309, 27.410522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.108326, 27.220062, 27.117859>,  <26.957911, 27.155714, 26.942261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.108326, 27.220062, 27.117859>,  <27.359016, 27.327309, 27.410522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108326, 27.220062, 27.117859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231483, -0.832498, 0.503351,
		-0.744062, 0.484831, 0.459685,
		-0.626727, -0.268115, -0.731661,
		26.920307, 27.139627, 26.898361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870903, 26.926897, 27.796499>,  <27.359016, 27.327309, 27.410522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870903, 26.926897, 27.796499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.821426, 26.821808, 27.413734>,  <26.791740, 26.758755, 27.184076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.821426, 26.821808, 27.413734>,  <26.870903, 26.926897, 27.796499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821426, 26.821808, 27.413734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270565, -0.918849, 0.287248,
		-0.954723, 0.294436, 0.042569,
		-0.123690, -0.262725, -0.956910,
		26.784319, 26.742990, 27.126661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254738, 26.701389, 27.829353>,  <26.870903, 26.926897, 27.796499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254738, 26.701389, 27.829353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.395746, 26.536976, 27.493073>,  <26.480350, 26.438328, 27.291304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.395746, 26.536976, 27.493073>,  <26.254738, 26.701389, 27.829353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395746, 26.536976, 27.493073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271838, -0.904614, 0.328294,
		-0.895449, 0.112802, -0.430634,
		0.352526, -0.411034, -0.840701,
		26.501503, 26.413666, 27.240862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790472, 26.145496, 27.651604>,  <26.254738, 26.701389, 27.829353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790472, 26.145496, 27.651604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.120800, 26.053471, 27.445656>,  <26.318996, 25.998255, 27.322086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.120800, 26.053471, 27.445656>,  <25.790472, 26.145496, 27.651604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120800, 26.053471, 27.445656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172888, -0.972321, 0.157165,
		-0.536776, -0.040776, -0.842739,
		0.825821, -0.230062, -0.514869,
		26.368546, 25.984451, 27.291195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551603, 25.644381, 27.088175>,  <25.790472, 26.145496, 27.651604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551603, 25.644381, 27.088175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.935860, 25.622978, 27.197208>,  <26.166414, 25.610136, 27.262629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.935860, 25.622978, 27.197208>,  <25.551603, 25.644381, 27.088175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935860, 25.622978, 27.197208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133655, -0.949255, 0.284696,
		0.243521, -0.309923, -0.919046,
		0.960643, -0.053506, 0.272586,
		26.224052, 25.606926, 27.278984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641468, 24.917814, 26.933258>,  <25.551603, 25.644381, 27.088175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.641468, 24.917814, 26.933258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.948891, 25.012920, 27.170841>,  <26.133345, 25.069984, 27.313391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.948891, 25.012920, 27.170841>,  <25.641468, 24.917814, 26.933258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948891, 25.012920, 27.170841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204113, -0.788740, 0.579851,
		0.606347, -0.566884, -0.557662,
		0.768558, 0.237765, 0.593958,
		26.179459, 25.084249, 27.349028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.129562, 24.338388, 26.947941>,  <25.641468, 24.917814, 26.933258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.129562, 24.338388, 26.947941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.196098, 24.557178, 27.276123>,  <26.236019, 24.688452, 27.473032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.196098, 24.557178, 27.276123>,  <26.129562, 24.338388, 26.947941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196098, 24.557178, 27.276123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007336, -0.832712, 0.553658,
		0.986041, -0.086076, -0.142525,
		0.166339, 0.546975, 0.820457,
		26.246000, 24.721272, 27.522261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556389, 23.962568, 27.337633>,  <26.129562, 24.338388, 26.947941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556389, 23.962568, 27.337633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.392487, 24.196091, 27.617996>,  <26.294146, 24.336205, 27.786215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.392487, 24.196091, 27.617996>,  <26.556389, 23.962568, 27.337633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392487, 24.196091, 27.617996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175375, -0.804458, 0.567530,
		0.895177, 0.109629, 0.432018,
		-0.409758, 0.583805, 0.700907,
		26.269560, 24.371233, 27.828268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024143, 23.827986, 27.962057>,  <26.556389, 23.962568, 27.337633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024143, 23.827986, 27.962057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.686682, 23.999802, 28.090893>,  <26.484205, 24.102892, 28.168194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.686682, 23.999802, 28.090893>,  <27.024143, 23.827986, 27.962057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686682, 23.999802, 28.090893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073963, -0.687188, 0.722705,
		0.531765, 0.585891, 0.611520,
		-0.843656, 0.429539, 0.322088,
		26.433584, 24.128664, 28.187519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065985, 23.826763, 28.700361>,  <27.024143, 23.827986, 27.962057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065985, 23.826763, 28.700361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.671978, 23.855625, 28.637703>,  <26.435574, 23.872942, 28.600109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.671978, 23.855625, 28.637703>,  <27.065985, 23.826763, 28.700361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671978, 23.855625, 28.637703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172337, -0.446445, 0.878058,
		-0.006578, 0.891897, 0.452190,
		-0.985016, 0.072154, -0.156644,
		26.376472, 23.877272, 28.590710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766802, 23.908466, 29.350386>,  <27.065985, 23.826763, 28.700361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766802, 23.908466, 29.350386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.440636, 23.833534, 29.131294>,  <26.244936, 23.788574, 28.999840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.440636, 23.833534, 29.131294>,  <26.766802, 23.908466, 29.350386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440636, 23.833534, 29.131294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437410, -0.420372, 0.794959,
		-0.379170, 0.887803, 0.260837,
		-0.815415, -0.187332, -0.547727,
		26.196011, 23.777334, 28.966976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270699, 24.023687, 29.895138>,  <26.766802, 23.908466, 29.350386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270699, 24.023687, 29.895138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.087097, 23.829437, 29.597553>,  <25.976936, 23.712887, 29.419003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.087097, 23.829437, 29.597553>,  <26.270699, 24.023687, 29.895138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087097, 23.829437, 29.597553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553322, -0.498892, 0.667039,
		-0.695089, 0.717826, -0.039714,
		-0.459005, -0.485626, -0.743963,
		25.949396, 23.683750, 29.374365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434704, 24.168041, 29.835936>,  <26.270699, 24.023687, 29.895138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.434704, 24.168041, 29.835936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.520880, 23.817535, 29.663544>,  <25.572586, 23.607231, 29.560108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.520880, 23.817535, 29.663544>,  <25.434704, 24.168041, 29.835936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520880, 23.817535, 29.663544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591280, -0.468298, 0.656570,
		-0.777157, 0.113379, -0.619008,
		0.215439, -0.876266, -0.430980,
		25.585512, 23.554655, 29.534250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873306, 23.837873, 29.754074>,  <25.434704, 24.168041, 29.835936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873306, 23.837873, 29.754074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.131027, 23.533451, 29.723969>,  <25.285660, 23.350798, 29.705906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.131027, 23.533451, 29.723969>,  <24.873306, 23.837873, 29.754074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.131027, 23.533451, 29.723969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530602, -0.515725, 0.672673,
		-0.550759, -0.393470, -0.736102,
		0.644303, -0.761058, -0.075265,
		25.324318, 23.305134, 29.701389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.446541, 23.218401, 29.668139>,  <24.873306, 23.837873, 29.754074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.446541, 23.218401, 29.668139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.806011, 23.123512, 29.815708>,  <25.021694, 23.066580, 29.904251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.806011, 23.123512, 29.815708>,  <24.446541, 23.218401, 29.668139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.806011, 23.123512, 29.815708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438578, -0.475526, 0.762577,
		-0.005466, -0.847113, -0.531385,
		0.898676, -0.237222, 0.368926,
		25.075615, 23.052345, 29.926386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.312084, 22.589520, 30.242924>,  <24.446541, 23.218401, 29.668139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.312084, 22.589520, 30.242924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.681999, 22.724663, 30.312916>,  <24.903948, 22.805748, 30.354912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.681999, 22.724663, 30.312916>,  <24.312084, 22.589520, 30.242924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681999, 22.724663, 30.312916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194513, 0.024559, 0.980592,
		0.327003, -0.940877, 0.088430,
		0.924788, 0.337857, 0.174981,
		24.959436, 22.826019, 30.365410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.463512, 22.331667, 30.908895>,  <24.312084, 22.589520, 30.242924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.463512, 22.331667, 30.908895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.737768, 22.617622, 30.853996>,  <24.902321, 22.789196, 30.821056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.737768, 22.617622, 30.853996>,  <24.463512, 22.331667, 30.908895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.737768, 22.617622, 30.853996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055163, 0.239027, 0.969445,
		0.725850, -0.657117, 0.203321,
		0.685638, 0.714887, -0.137249,
		24.943460, 22.832088, 30.812822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.893139, 22.209087, 31.487814>,  <24.463512, 22.331667, 30.908895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.893139, 22.209087, 31.487814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.910532, 22.591488, 31.371765>,  <24.920967, 22.820929, 31.302135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.910532, 22.591488, 31.371765>,  <24.893139, 22.209087, 31.487814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.910532, 22.591488, 31.371765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037064, 0.291739, 0.955779,
		0.998366, -0.030807, 0.048119,
		0.043483, 0.956002, -0.290121,
		24.923576, 22.878288, 31.284729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330114, 22.540176, 31.995842>,  <24.893139, 22.209087, 31.487814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330114, 22.540176, 31.995842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.131762, 22.850742, 31.840260>,  <25.012751, 23.037081, 31.746910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.131762, 22.850742, 31.840260>,  <25.330114, 22.540176, 31.995842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.131762, 22.850742, 31.840260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120480, 0.382061, 0.916250,
		0.859993, 0.501211, -0.095914,
		-0.495880, 0.776413, -0.388955,
		24.982998, 23.083666, 31.723574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592070, 23.042059, 32.349880>,  <25.330114, 22.540176, 31.995842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592070, 23.042059, 32.349880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.244865, 23.178268, 32.205322>,  <25.036543, 23.259995, 32.118587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.244865, 23.178268, 32.205322>,  <25.592070, 23.042059, 32.349880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244865, 23.178268, 32.205322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200320, 0.425807, 0.882361,
		0.454348, 0.838291, -0.301391,
		-0.868009, 0.340525, -0.361391,
		24.984463, 23.280426, 32.096905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619526, 23.117989, 33.101326>,  <25.592070, 23.042059, 32.349880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619526, 23.117989, 33.101326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.981590, 23.073597, 33.265457>,  <26.198828, 23.046963, 33.363937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.981590, 23.073597, 33.265457>,  <25.619526, 23.117989, 33.101326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981590, 23.073597, 33.265457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417737, 0.410807, -0.810391,
		-0.078630, 0.904943, 0.418205,
		0.905159, -0.110978, 0.410330,
		26.253138, 23.040304, 33.388557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996836, 23.736759, 32.980179>,  <25.619526, 23.117989, 33.101326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996836, 23.736759, 32.980179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.262785, 23.442810, 33.033707>,  <26.422354, 23.266441, 33.065823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.262785, 23.442810, 33.033707>,  <25.996836, 23.736759, 32.980179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262785, 23.442810, 33.033707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477460, 0.280339, -0.832732,
		0.574437, 0.617553, 0.537262,
		0.664872, -0.734873, 0.133819,
		26.462246, 23.222347, 33.073853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613800, 24.000515, 32.763428>,  <25.996836, 23.736759, 32.980179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613800, 24.000515, 32.763428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.705402, 23.611160, 32.766937>,  <26.760363, 23.377548, 32.769043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.705402, 23.611160, 32.766937>,  <26.613800, 24.000515, 32.763428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705402, 23.611160, 32.766937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607330, 0.135830, -0.782752,
		0.760728, 0.184580, 0.622272,
		0.229004, -0.973386, 0.008772,
		26.774103, 23.319145, 32.769569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323273, 23.971426, 32.712395>,  <26.613800, 24.000515, 32.763428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323273, 23.971426, 32.712395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.224600, 23.596756, 32.612961>,  <27.165396, 23.371954, 32.553303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.224600, 23.596756, 32.612961>,  <27.323273, 23.971426, 32.712395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224600, 23.596756, 32.612961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614564, 0.047132, -0.787458,
		0.749306, -0.347019, 0.564019,
		-0.246680, -0.936673, -0.248582,
		27.150597, 23.315754, 32.538387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935074, 23.632847, 32.609409>,  <27.323273, 23.971426, 32.712395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935074, 23.632847, 32.609409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.662783, 23.407013, 32.422710>,  <27.499407, 23.271513, 32.310692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.662783, 23.407013, 32.422710>,  <27.935074, 23.632847, 32.609409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662783, 23.407013, 32.422710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602278, -0.068679, -0.795327,
		0.416975, -0.822512, 0.386790,
		-0.680730, -0.564586, -0.466743,
		27.458563, 23.237637, 32.282688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302185, 23.099081, 32.215183>,  <27.935074, 23.632847, 32.609409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302185, 23.099081, 32.215183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.942648, 23.113373, 32.040459>,  <27.726925, 23.121948, 31.935625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.942648, 23.113373, 32.040459>,  <28.302185, 23.099081, 32.215183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942648, 23.113373, 32.040459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437988, 0.108775, -0.892376,
		0.015626, -0.993424, -0.113422,
		-0.898845, 0.035733, -0.436808,
		27.672995, 23.124092, 31.909416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444492, 22.797163, 31.607000>,  <28.302185, 23.099081, 32.215183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444492, 22.797163, 31.607000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.095186, 22.979069, 31.537037>,  <27.885603, 23.088213, 31.495060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.095186, 22.979069, 31.537037>,  <28.444492, 22.797163, 31.607000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095186, 22.979069, 31.537037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320465, 0.265676, -0.909240,
		-0.367023, -0.850062, -0.377743,
		-0.873267, 0.454765, -0.174906,
		27.833206, 23.115498, 31.484566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206472, 22.479137, 31.026608>,  <28.444492, 22.797163, 31.607000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206472, 22.479137, 31.026608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.035482, 22.838886, 31.063251>,  <27.932888, 23.054735, 31.085238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.035482, 22.838886, 31.063251>,  <28.206472, 22.479137, 31.026608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035482, 22.838886, 31.063251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271410, 0.224339, -0.935953,
		-0.862324, -0.375231, -0.339998,
		-0.427474, 0.899374, 0.091612,
		27.907240, 23.108698, 31.090734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085701, 22.572643, 30.387325>,  <28.206472, 22.479137, 31.026608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085701, 22.572643, 30.387325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.989338, 22.927296, 30.545235>,  <27.931520, 23.140087, 30.639980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.989338, 22.927296, 30.545235>,  <28.085701, 22.572643, 30.387325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989338, 22.927296, 30.545235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267875, 0.451697, -0.851007,
		-0.932848, -0.099264, -0.346325,
		-0.240908, 0.886632, 0.394774,
		27.917065, 23.193285, 30.663668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620970, 22.953203, 29.951275>,  <28.085701, 22.572643, 30.387325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620970, 22.953203, 29.951275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.791094, 23.244102, 30.166763>,  <27.893167, 23.418642, 30.296057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.791094, 23.244102, 30.166763>,  <27.620970, 22.953203, 29.951275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791094, 23.244102, 30.166763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134665, 0.537766, -0.832270,
		-0.894974, 0.426518, 0.130781,
		0.425308, 0.727249, 0.538723,
		27.918686, 23.462276, 30.328381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303909, 23.544420, 29.678841>,  <27.620970, 22.953203, 29.951275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303909, 23.544420, 29.678841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.642843, 23.645699, 29.865566>,  <27.846205, 23.706465, 29.977602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.642843, 23.645699, 29.865566>,  <27.303909, 23.544420, 29.678841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642843, 23.645699, 29.865566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301860, 0.493579, -0.815635,
		-0.436925, 0.832029, 0.341797,
		0.847336, 0.253196, 0.466813,
		27.897043, 23.721657, 30.005610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384338, 24.233929, 29.534151>,  <27.303909, 23.544420, 29.678841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384338, 24.233929, 29.534151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.767431, 24.151913, 29.614861>,  <27.997286, 24.102703, 29.663286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.767431, 24.151913, 29.614861>,  <27.384338, 24.233929, 29.534151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767431, 24.151913, 29.614861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287314, 0.716534, -0.635633,
		-0.014247, 0.666737, 0.745157,
		0.957730, -0.205038, 0.201772,
		28.054750, 24.090401, 29.675392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670324, 24.874037, 29.594320>,  <27.384338, 24.233929, 29.534151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670324, 24.874037, 29.594320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.982426, 24.631363, 29.533478>,  <28.169687, 24.485758, 29.496973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.982426, 24.631363, 29.533478>,  <27.670324, 24.874037, 29.594320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982426, 24.631363, 29.533478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371124, 0.644822, -0.668186,
		0.503459, 0.464905, 0.728280,
		0.780254, -0.606686, -0.152104,
		28.216501, 24.449356, 29.487846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172466, 25.330801, 29.568998>,  <27.670324, 24.874037, 29.594320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172466, 25.330801, 29.568998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.336054, 25.003414, 29.407578>,  <28.434206, 24.806982, 29.310726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.336054, 25.003414, 29.407578>,  <28.172466, 25.330801, 29.568998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336054, 25.003414, 29.407578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338241, 0.546684, -0.765983,
		0.847547, 0.176768, 0.500417,
		0.408971, -0.818468, -0.403550,
		28.458746, 24.757874, 29.286512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062355, 25.456253, 29.443626>,  <28.172466, 25.330801, 29.568998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062355, 25.456253, 29.443626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.923466, 25.173569, 29.197052>,  <28.840132, 25.003958, 29.049107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.923466, 25.173569, 29.197052>,  <29.062355, 25.456253, 29.443626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923466, 25.173569, 29.197052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419232, 0.471017, -0.776136,
		0.838857, -0.527922, 0.132729,
		-0.347221, -0.706712, -0.616438,
		28.819300, 24.961555, 29.012121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515944, 25.459108, 28.814108>,  <29.062355, 25.456253, 29.443626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515944, 25.459108, 28.814108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.192768, 25.241665, 28.723133>,  <28.998863, 25.111198, 28.668549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.192768, 25.241665, 28.723133>,  <29.515944, 25.459108, 28.814108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192768, 25.241665, 28.723133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091669, 0.265318, -0.959793,
		0.582094, -0.796302, -0.164529,
		-0.807938, -0.543607, -0.227436,
		28.950386, 25.078583, 28.654902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727695, 24.896547, 28.359364>,  <29.515944, 25.459108, 28.814108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727695, 24.896547, 28.359364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.342140, 24.975517, 28.287876>,  <29.110807, 25.022900, 28.244984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.342140, 24.975517, 28.287876>,  <29.727695, 24.896547, 28.359364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342140, 24.975517, 28.287876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237802, 0.336034, -0.911335,
		-0.119865, -0.920926, -0.370847,
		-0.963889, 0.197425, -0.178719,
		29.052973, 25.034744, 28.234261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708870, 24.639771, 27.690489>,  <29.727695, 24.896547, 28.359364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708870, 24.639771, 27.690489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.382929, 24.869808, 27.719563>,  <29.187365, 25.007832, 27.737007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.382929, 24.869808, 27.719563>,  <29.708870, 24.639771, 27.690489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382929, 24.869808, 27.719563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239841, 0.448644, -0.860927,
		-0.527724, -0.684095, -0.503509,
		-0.814852, 0.575094, 0.072686,
		29.138474, 25.042336, 27.741369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406122, 24.669220, 26.944450>,  <29.708870, 24.639771, 27.690489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406122, 24.669220, 26.944450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259329, 24.991768, 27.129963>,  <29.171253, 25.185297, 27.241270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259329, 24.991768, 27.129963>,  <29.406122, 24.669220, 26.944450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259329, 24.991768, 27.129963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131791, 0.538606, -0.832187,
		-0.920845, -0.244276, -0.303932,
		-0.366982, 0.806370, 0.463779,
		29.149235, 25.233679, 27.269096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967020, 24.990843, 26.381639>,  <29.406122, 24.669220, 26.944450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967020, 24.990843, 26.381639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.049242, 25.277134, 26.648617>,  <29.098576, 25.448908, 26.808804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.049242, 25.277134, 26.648617>,  <28.967020, 24.990843, 26.381639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049242, 25.277134, 26.648617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032623, 0.686641, -0.726265,
		-0.978101, 0.127514, 0.164493,
		0.205556, 0.715727, 0.667444,
		29.110909, 25.491852, 26.848850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533646, 25.699114, 26.191380>,  <28.967020, 24.990843, 26.381639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533646, 25.699114, 26.191380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.848343, 25.815041, 26.409386>,  <29.037161, 25.884596, 26.540190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.848343, 25.815041, 26.409386>,  <28.533646, 25.699114, 26.191380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848343, 25.815041, 26.409386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052241, 0.911024, -0.409031,
		-0.615064, 0.293330, 0.731883,
		0.786744, 0.289815, 0.545014,
		29.084366, 25.901985, 26.572889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.868486, 32.070549, 17.499855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.064674, 31.846657, 17.767033>,  <23.182386, 31.712322, 17.927340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.064674, 31.846657, 17.767033>,  <22.868486, 32.070549, 17.499855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.064674, 31.846657, 17.767033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173030, 0.688656, 0.704140,
		-0.854108, -0.460933, 0.240916,
		0.490470, -0.559726, 0.667942,
		23.211815, 31.678740, 17.967415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.528215, 32.192177, 18.060326>,  <22.868486, 32.070549, 17.499855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.528215, 32.192177, 18.060326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.856411, 32.024994, 18.216331>,  <23.053328, 31.924685, 18.309935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.856411, 32.024994, 18.216331>,  <22.528215, 32.192177, 18.060326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.856411, 32.024994, 18.216331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093359, 0.575119, 0.812725,
		-0.563987, -0.703243, 0.432859,
		0.820489, -0.417955, 0.390014,
		23.102558, 31.899607, 18.333336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.334826, 32.123066, 18.800451>,  <22.528215, 32.192177, 18.060326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.334826, 32.123066, 18.800451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.729851, 32.062252, 18.816460>,  <22.966866, 32.025764, 18.826065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.729851, 32.062252, 18.816460>,  <22.334826, 32.123066, 18.800451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.729851, 32.062252, 18.816460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064456, 0.623756, 0.778957,
		-0.143390, -0.766691, 0.625799,
		0.987565, -0.152031, 0.040023,
		23.026121, 32.016644, 18.828466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.563625, 31.763885, 19.439789>,  <22.334826, 32.123066, 18.800451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.563625, 31.763885, 19.439789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.870403, 31.986507, 19.312012>,  <23.054470, 32.120079, 19.235346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.870403, 31.986507, 19.312012>,  <22.563625, 31.763885, 19.439789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.870403, 31.986507, 19.312012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069371, 0.566785, 0.820940,
		0.637956, -0.607453, 0.473300,
		0.766942, 0.556557, -0.319444,
		23.100487, 32.153473, 19.216179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.009245, 31.805765, 19.976973>,  <22.563625, 31.763885, 19.439789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.009245, 31.805765, 19.976973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.069939, 32.107643, 19.721657>,  <23.106356, 32.288769, 19.568468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.069939, 32.107643, 19.721657>,  <23.009245, 31.805765, 19.976973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.069939, 32.107643, 19.721657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090787, 0.653678, 0.751308,
		0.984243, -0.056051, 0.167702,
		0.151735, 0.754694, -0.638289,
		23.115459, 32.334053, 19.530170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.485365, 32.115311, 20.215239>,  <23.009245, 31.805765, 19.976973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.485365, 32.115311, 20.215239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.341805, 32.394119, 19.966934>,  <23.255669, 32.561405, 19.817951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.341805, 32.394119, 19.966934>,  <23.485365, 32.115311, 20.215239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.341805, 32.394119, 19.966934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049467, 0.678342, 0.733079,
		0.932063, 0.232397, -0.277939,
		-0.358903, 0.697024, -0.620762,
		23.234133, 32.603226, 19.780706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.939241, 32.737953, 20.273890>,  <23.485365, 32.115311, 20.215239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.939241, 32.737953, 20.273890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.600910, 32.871960, 20.107834>,  <23.397911, 32.952362, 20.008200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.600910, 32.871960, 20.107834>,  <23.939241, 32.737953, 20.273890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.600910, 32.871960, 20.107834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107127, 0.869026, 0.483031,
		0.522591, 0.364088, -0.770934,
		-0.845827, 0.335015, -0.415141,
		23.347162, 32.972466, 19.983292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.111382, 33.364601, 20.129473>,  <23.939241, 32.737953, 20.273890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.111382, 33.364601, 20.129473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.712070, 33.357887, 20.151955>,  <23.472485, 33.353859, 20.165443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.712070, 33.357887, 20.151955>,  <24.111382, 33.364601, 20.129473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.712070, 33.357887, 20.151955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023008, 0.769387, 0.638369,
		-0.053958, 0.638563, -0.767676,
		-0.998278, -0.016782, 0.056207,
		23.412586, 33.352852, 20.168818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.025801, 34.112682, 19.980473>,  <24.111382, 33.364601, 20.129473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.025801, 34.112682, 19.980473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.665665, 33.999523, 20.112747>,  <23.449583, 33.931629, 20.192112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.665665, 33.999523, 20.112747>,  <24.025801, 34.112682, 19.980473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.665665, 33.999523, 20.112747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150251, 0.915226, 0.373879,
		-0.408424, 0.286933, -0.866522,
		-0.900342, -0.282897, 0.330688,
		23.395563, 33.914654, 20.211954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.431118, 34.645458, 19.723089>,  <24.025801, 34.112682, 19.980473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.431118, 34.645458, 19.723089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.329626, 34.462811, 20.064175>,  <23.268730, 34.353222, 20.268826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.329626, 34.462811, 20.064175>,  <23.431118, 34.645458, 19.723089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.329626, 34.462811, 20.064175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290551, 0.876828, 0.383083,
		-0.922606, -0.150557, -0.355149,
		-0.253729, -0.456624, 0.852711,
		23.253508, 34.325825, 20.319988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.894121, 35.023026, 20.031515>,  <23.431118, 34.645458, 19.723089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.894121, 35.023026, 20.031515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.030270, 34.804615, 20.337719>,  <23.111958, 34.673569, 20.521441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.030270, 34.804615, 20.337719>,  <22.894121, 35.023026, 20.031515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.030270, 34.804615, 20.337719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193810, 0.755897, 0.625346,
		-0.920101, -0.361212, 0.151458,
		0.340369, -0.546027, 0.765508,
		23.132380, 34.640808, 20.567371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.709751, 35.366127, 20.602985>,  <22.894121, 35.023026, 20.031515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.709751, 35.366127, 20.602985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.929693, 35.093403, 20.795979>,  <23.061659, 34.929768, 20.911774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.929693, 35.093403, 20.795979>,  <22.709751, 35.366127, 20.602985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.929693, 35.093403, 20.795979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134989, 0.497512, 0.856890,
		-0.824281, -0.536293, 0.181521,
		0.549853, -0.681815, 0.482483,
		23.094648, 34.888859, 20.940723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.259485, 35.082680, 21.177887>,  <22.709751, 35.366127, 20.602985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.259485, 35.082680, 21.177887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.646660, 35.046425, 21.271595>,  <22.878965, 35.024673, 21.327820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.646660, 35.046425, 21.271595>,  <22.259485, 35.082680, 21.177887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.646660, 35.046425, 21.271595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179418, 0.403270, 0.897319,
		-0.175802, -0.910581, 0.374079,
		0.967937, -0.090634, 0.234270,
		22.937040, 35.019234, 21.341877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.256346, 34.893116, 21.880985>,  <22.259485, 35.082680, 21.177887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.256346, 34.893116, 21.880985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.632132, 35.020439, 21.830250>,  <22.857603, 35.096832, 21.799809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.632132, 35.020439, 21.830250>,  <22.256346, 34.893116, 21.880985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.632132, 35.020439, 21.830250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008553, 0.391840, 0.919994,
		0.342544, -0.863215, 0.370842,
		0.939463, 0.318310, -0.126839,
		22.913971, 35.115932, 21.792198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.675022, 34.654903, 22.479362>,  <22.256346, 34.893116, 21.880985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.675022, 34.654903, 22.479362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.869211, 34.959118, 22.306896>,  <22.985723, 35.141647, 22.203417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.869211, 34.959118, 22.306896>,  <22.675022, 34.654903, 22.479362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.869211, 34.959118, 22.306896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039511, 0.511765, 0.858217,
		0.873359, -0.399603, 0.278496,
		0.485471, 0.760536, -0.431166,
		23.014853, 35.187279, 22.177546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.187349, 34.796535, 22.987667>,  <22.675022, 34.654903, 22.479362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.187349, 34.796535, 22.987667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.154974, 35.131855, 22.771999>,  <23.135548, 35.333046, 22.642599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.154974, 35.131855, 22.771999>,  <23.187349, 34.796535, 22.987667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.154974, 35.131855, 22.771999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185164, 0.518882, 0.834551,
		0.979369, 0.167384, 0.113225,
		-0.080940, 0.838298, -0.539171,
		23.130692, 35.383343, 22.610249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.622908, 35.318970, 23.339424>,  <23.187349, 34.796535, 22.987667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.622908, 35.318970, 23.339424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.378025, 35.531315, 23.105026>,  <23.231096, 35.658722, 22.964388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.378025, 35.531315, 23.105026>,  <23.622908, 35.318970, 23.339424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.378025, 35.531315, 23.105026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200660, 0.612538, 0.764547,
		0.764813, 0.585646, -0.268477,
		-0.612206, 0.530863, -0.585993,
		23.194363, 35.690575, 22.929228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.836727, 36.146259, 23.473417>,  <23.622908, 35.318970, 23.339424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.836727, 36.146259, 23.473417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.470488, 36.081207, 23.326321>,  <23.250744, 36.042175, 23.238062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.470488, 36.081207, 23.326321>,  <23.836727, 36.146259, 23.473417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.470488, 36.081207, 23.326321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346594, 0.782853, 0.516734,
		0.203852, 0.600577, -0.773144,
		-0.915596, -0.162630, -0.367743,
		23.195808, 36.032417, 23.215998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.554367, 36.809814, 23.308817>,  <23.836727, 36.146259, 23.473417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.554367, 36.809814, 23.308817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.229126, 36.578182, 23.332581>,  <23.033981, 36.439205, 23.346838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.229126, 36.578182, 23.332581>,  <23.554367, 36.809814, 23.308817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.229126, 36.578182, 23.332581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428943, 0.665015, 0.611362,
		-0.393534, 0.471619, -0.789118,
		-0.813105, -0.579078, 0.059409,
		22.985195, 36.404457, 23.350403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.976107, 37.330917, 23.282604>,  <23.554367, 36.809814, 23.308817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.976107, 37.330917, 23.282604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.842859, 37.003120, 23.469135>,  <22.762911, 36.806442, 23.581055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.842859, 37.003120, 23.469135>,  <22.976107, 37.330917, 23.282604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.842859, 37.003120, 23.469135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352983, 0.567001, 0.744254,
		-0.874320, 0.083319, -0.478146,
		-0.333119, -0.819493, 0.466330,
		22.742924, 36.757271, 23.609034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.296679, 37.547848, 23.476055>,  <22.976107, 37.330917, 23.282604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.296679, 37.547848, 23.476055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.383114, 37.229149, 23.701797>,  <22.434975, 37.037930, 23.837244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.383114, 37.229149, 23.701797>,  <22.296679, 37.547848, 23.476055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.383114, 37.229149, 23.701797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398929, 0.455519, 0.795838,
		-0.891157, -0.397110, -0.219413,
		0.216089, -0.796747, 0.564358,
		22.447941, 36.990124, 23.871105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.631216, 37.642288, 23.217709>,  <22.296679, 37.547848, 23.476055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.631216, 37.642288, 23.217709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.283693, 37.835896, 23.259476>,  <21.075180, 37.952061, 23.284536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.283693, 37.835896, 23.259476>,  <21.631216, 37.642288, 23.217709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.283693, 37.835896, 23.259476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361146, -0.475161, -0.802369,
		-0.338742, -0.734815, 0.587623,
		-0.868808, 0.484014, 0.104418,
		21.023050, 37.981102, 23.290800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.020868, 37.130661, 23.184237>,  <21.631216, 37.642288, 23.217709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.020868, 37.130661, 23.184237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.883816, 37.492352, 23.082275>,  <20.801584, 37.709366, 23.021099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.883816, 37.492352, 23.082275>,  <21.020868, 37.130661, 23.184237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883816, 37.492352, 23.082275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387402, -0.383172, -0.838510,
		-0.855876, -0.188551, 0.481587,
		-0.342633, 0.904228, -0.254902,
		20.781027, 37.763618, 23.005804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.260887, 37.065701, 23.095921>,  <21.020868, 37.130661, 23.184237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.260887, 37.065701, 23.095921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.372171, 37.394222, 22.896698>,  <20.438942, 37.591335, 22.777164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.372171, 37.394222, 22.896698>,  <20.260887, 37.065701, 23.095921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.372171, 37.394222, 22.896698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450788, -0.346232, -0.822748,
		-0.848168, 0.453416, 0.273908,
		0.278211, 0.821303, -0.498057,
		20.455635, 37.640614, 22.747280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767756, 37.076313, 22.586557>,  <20.260887, 37.065701, 23.095921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.767756, 37.076313, 22.586557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.026381, 37.352108, 22.455978>,  <20.181555, 37.517586, 22.377630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.026381, 37.352108, 22.455978>,  <19.767756, 37.076313, 22.586557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.026381, 37.352108, 22.455978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428003, -0.026366, -0.903393,
		-0.631483, 0.723820, 0.278054,
		0.646563, 0.689485, -0.326447,
		20.220350, 37.558952, 22.358044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.341473, 37.449551, 22.151075>,  <19.767756, 37.076313, 22.586557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.341473, 37.449551, 22.151075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.730511, 37.487938, 22.066360>,  <19.963934, 37.510971, 22.015532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.730511, 37.487938, 22.066360>,  <19.341473, 37.449551, 22.151075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.730511, 37.487938, 22.066360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187250, -0.216697, -0.958112,
		-0.137843, 0.971510, -0.192788,
		0.972593, 0.095969, -0.211786,
		20.022289, 37.516727, 22.002825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.426245, 37.954967, 21.569965>,  <19.341473, 37.449551, 22.151075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.426245, 37.954967, 21.569965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.758980, 37.733124, 21.578510>,  <19.958620, 37.600018, 21.583637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.758980, 37.733124, 21.578510>,  <19.426245, 37.954967, 21.569965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.758980, 37.733124, 21.578510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025256, -0.076271, -0.996767,
		0.554443, 0.828610, -0.077452,
		0.831838, -0.554607, 0.021361,
		20.008532, 37.566742, 21.584919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.844717, 38.068672, 20.895950>,  <19.426245, 37.954967, 21.569965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.844717, 38.068672, 20.895950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.987064, 37.720131, 21.031067>,  <20.072472, 37.511005, 21.112137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.987064, 37.720131, 21.031067>,  <19.844717, 38.068672, 20.895950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.987064, 37.720131, 21.031067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083874, -0.330218, -0.940171,
		0.930765, 0.362908, -0.044430,
		0.355867, -0.871352, 0.337793,
		20.093824, 37.458725, 21.132404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.323347, 37.970718, 20.466656>,  <19.844717, 38.068672, 20.895950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.323347, 37.970718, 20.466656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.286495, 37.603573, 20.621075>,  <20.264385, 37.383286, 20.713726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.286495, 37.603573, 20.621075>,  <20.323347, 37.970718, 20.466656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.286495, 37.603573, 20.621075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075018, -0.380196, -0.921859,
		0.992917, -0.113890, -0.033830,
		-0.092129, -0.917867, 0.386047,
		20.258856, 37.328213, 20.736889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.706493, 37.596973, 20.000402>,  <20.323347, 37.970718, 20.466656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.706493, 37.596973, 20.000402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.482849, 37.324833, 20.189934>,  <20.348663, 37.161549, 20.303654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.482849, 37.324833, 20.189934>,  <20.706493, 37.596973, 20.000402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482849, 37.324833, 20.189934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185520, -0.454348, -0.871292,
		0.808072, -0.575052, 0.127810,
		-0.559108, -0.680356, 0.473829,
		20.315117, 37.120728, 20.332083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.016340, 36.969486, 19.714651>,  <20.706493, 37.596973, 20.000402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.016340, 36.969486, 19.714651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.666334, 36.848087, 19.865509>,  <20.456331, 36.775249, 19.956024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.666334, 36.848087, 19.865509>,  <21.016340, 36.969486, 19.714651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.666334, 36.848087, 19.865509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163835, -0.547434, -0.820655,
		0.455528, -0.779875, 0.429289,
		-0.875015, -0.303498, 0.377142,
		20.403830, 36.757038, 19.978651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.909269, 36.245537, 19.949894>,  <21.016340, 36.969486, 19.714651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.909269, 36.245537, 19.949894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.538033, 36.370777, 19.869286>,  <20.315290, 36.445923, 19.820921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.538033, 36.370777, 19.869286>,  <20.909269, 36.245537, 19.949894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.538033, 36.370777, 19.869286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152026, -0.812685, -0.562523,
		-0.339900, -0.491437, 0.801846,
		-0.928092, 0.313103, -0.201520,
		20.259605, 36.464706, 19.808830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.407797, 35.670330, 20.168285>,  <20.909269, 36.245537, 19.949894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.407797, 35.670330, 20.168285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.237047, 35.897354, 19.886673>,  <20.134598, 36.033569, 19.717707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.237047, 35.897354, 19.886673>,  <20.407797, 35.670330, 20.168285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.237047, 35.897354, 19.886673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319449, -0.822973, -0.469752,
		-0.846011, 0.024379, 0.532609,
		-0.426870, 0.567557, -0.704032,
		20.108986, 36.067619, 19.675465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.945959, 35.223763, 20.083712>,  <20.407797, 35.670330, 20.168285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.945959, 35.223763, 20.083712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.921068, 35.480545, 19.778027>,  <19.906134, 35.634613, 19.594616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.921068, 35.480545, 19.778027>,  <19.945959, 35.223763, 20.083712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.921068, 35.480545, 19.778027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358770, -0.728905, -0.583080,
		-0.931349, 0.237892, 0.275673,
		-0.062229, 0.641954, -0.764213,
		19.902399, 35.673130, 19.548763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.337315, 35.042912, 19.731722>,  <19.945959, 35.223763, 20.083712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.337315, 35.042912, 19.731722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.541521, 35.254818, 19.460808>,  <19.664045, 35.381962, 19.298260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.541521, 35.254818, 19.460808>,  <19.337315, 35.042912, 19.731722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.541521, 35.254818, 19.460808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127734, -0.732201, -0.669004,
		-0.850328, 0.428049, -0.306130,
		0.510516, 0.529770, -0.677287,
		19.694675, 35.413750, 19.257622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.921623, 34.967087, 19.137295>,  <19.337315, 35.042912, 19.731722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.921623, 34.967087, 19.137295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.291445, 35.063053, 19.018879>,  <19.513338, 35.120632, 18.947830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.291445, 35.063053, 19.018879>,  <18.921623, 34.967087, 19.137295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.291445, 35.063053, 19.018879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037442, -0.715943, -0.697154,
		-0.379207, 0.655641, -0.652945,
		0.924554, 0.239918, -0.296039,
		19.568811, 35.135029, 18.930067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.845411, 34.953228, 18.454185>,  <18.921623, 34.967087, 19.137295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.845411, 34.953228, 18.454185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.232548, 34.898853, 18.538853>,  <19.464830, 34.866226, 18.589653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.232548, 34.898853, 18.538853>,  <18.845411, 34.953228, 18.454185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.232548, 34.898853, 18.538853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049360, -0.722437, -0.689673,
		0.246670, 0.677942, -0.692495,
		0.967842, -0.135940, 0.211667,
		19.522900, 34.858070, 18.602352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.035711, 34.659718, 17.832056>,  <18.845411, 34.953228, 18.454185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.035711, 34.659718, 17.832056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.343996, 34.567379, 18.069614>,  <19.528967, 34.511974, 18.212151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.343996, 34.567379, 18.069614>,  <19.035711, 34.659718, 17.832056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.343996, 34.567379, 18.069614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280142, -0.714385, -0.641229,
		0.572299, 0.660577, -0.485913,
		0.770710, -0.230850, 0.593898,
		19.575209, 34.498123, 18.247784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.637325, 34.601238, 17.459875>,  <19.035711, 34.659718, 17.832056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.637325, 34.601238, 17.459875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.766054, 34.377823, 17.765678>,  <19.843290, 34.243774, 17.949160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.766054, 34.377823, 17.765678>,  <19.637325, 34.601238, 17.459875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.766054, 34.377823, 17.765678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421665, -0.638414, -0.643915,
		0.847720, 0.529591, 0.030060,
		0.321821, -0.558535, 0.764506,
		19.862600, 34.210262, 17.995029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.375193, 34.380627, 17.354914>,  <19.637325, 34.601238, 17.459875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.375193, 34.380627, 17.354914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.250195, 34.087337, 17.596485>,  <20.175196, 33.911366, 17.741428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.250195, 34.087337, 17.596485>,  <20.375193, 34.380627, 17.354914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.250195, 34.087337, 17.596485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337218, -0.679989, -0.651075,
		0.888049, 0.000198, 0.459749,
		-0.312495, -0.733222, 0.603930,
		20.156446, 33.867371, 17.777664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.944092, 33.923901, 17.404148>,  <20.375193, 34.380627, 17.354914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.944092, 33.923901, 17.404148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.637054, 33.703289, 17.534760>,  <20.452833, 33.570923, 17.613127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.637054, 33.703289, 17.534760>,  <20.944092, 33.923901, 17.404148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.637054, 33.703289, 17.534760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289382, -0.752792, -0.591238,
		0.571892, -0.359337, 0.737439,
		-0.767592, -0.551526, 0.326530,
		20.406776, 33.537830, 17.632719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.283192, 33.268944, 17.450134>,  <20.944092, 33.923901, 17.404148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.283192, 33.268944, 17.450134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.891617, 33.193913, 17.482384>,  <20.656672, 33.148895, 17.501734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.891617, 33.193913, 17.482384>,  <21.283192, 33.268944, 17.450134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.891617, 33.193913, 17.482384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097700, -0.777113, -0.621732,
		0.179276, -0.600759, 0.779070,
		-0.978936, -0.187577, 0.080623,
		20.597937, 33.137638, 17.506571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.194391, 30.849836, 25.170046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475475, 30.828045, 25.453800>,  <26.644125, 30.814970, 25.624054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475475, 30.828045, 25.453800>,  <26.194391, 30.849836, 25.170046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.475475, 30.828045, 25.453800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312324, 0.919479, -0.238772,
		-0.639259, 0.389346, 0.663142,
		0.702710, -0.054478, 0.709388,
		26.686289, 30.811701, 25.666616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148739, 31.509687, 25.534594>,  <26.194391, 30.849836, 25.170046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148739, 31.509687, 25.534594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519320, 31.382206, 25.614708>,  <26.741669, 31.305717, 25.662777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519320, 31.382206, 25.614708>,  <26.148739, 31.509687, 25.534594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519320, 31.382206, 25.614708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370548, 0.865745, -0.336423,
		-0.066178, 0.385896, 0.920166,
		0.926453, -0.318702, 0.200286,
		26.797255, 31.286596, 25.674793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414965, 31.952654, 26.152763>,  <26.148739, 31.509687, 25.534594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414965, 31.952654, 26.152763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691851, 31.804760, 25.904850>,  <26.857983, 31.716024, 25.756102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691851, 31.804760, 25.904850>,  <26.414965, 31.952654, 26.152763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691851, 31.804760, 25.904850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237770, 0.927687, -0.287859,
		0.681398, 0.051895, 0.730071,
		0.692216, -0.369736, -0.619785,
		26.899515, 31.693840, 25.718914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828894, 32.543537, 26.092945>,  <26.414965, 31.952654, 26.152763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828894, 32.543537, 26.092945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974205, 32.277790, 25.831673>,  <27.061392, 32.118343, 25.674910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974205, 32.277790, 25.831673>,  <26.828894, 32.543537, 26.092945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974205, 32.277790, 25.831673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422939, 0.742276, -0.519759,
		0.830151, -0.087438, 0.550640,
		0.363280, -0.664365, -0.653182,
		27.083189, 32.078480, 25.635717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510992, 32.613907, 26.103661>,  <26.828894, 32.543537, 26.092945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510992, 32.613907, 26.103661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412542, 32.462273, 25.746849>,  <27.353472, 32.371292, 25.532763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412542, 32.462273, 25.746849>,  <27.510992, 32.613907, 26.103661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412542, 32.462273, 25.746849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352408, 0.822351, -0.446707,
		0.902901, -0.424304, -0.068810,
		-0.246126, -0.379083, -0.892030,
		27.338705, 32.348549, 25.479240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198709, 32.661285, 25.591360>,  <27.510992, 32.613907, 26.103661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198709, 32.661285, 25.591360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857185, 32.628796, 25.385677>,  <27.652271, 32.609303, 25.262268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857185, 32.628796, 25.385677>,  <28.198709, 32.661285, 25.591360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857185, 32.628796, 25.385677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272545, 0.771826, -0.574459,
		0.443540, -0.630624, -0.636856,
		-0.853810, -0.081224, -0.514209,
		27.601042, 32.604427, 25.231415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320818, 32.707462, 24.938627>,  <28.198709, 32.661285, 25.591360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320818, 32.707462, 24.938627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929287, 32.789326, 24.937565>,  <27.694368, 32.838444, 24.936928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929287, 32.789326, 24.937565>,  <28.320818, 32.707462, 24.938627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929287, 32.789326, 24.937565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167400, 0.793022, -0.585741,
		-0.117774, -0.573785, -0.810494,
		-0.978829, 0.204661, -0.002654,
		27.635637, 32.850723, 24.936769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180393, 32.877163, 24.278397>,  <28.320818, 32.707462, 24.938627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180393, 32.877163, 24.278397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851620, 33.027874, 24.449261>,  <27.654356, 33.118301, 24.551779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851620, 33.027874, 24.449261>,  <28.180393, 32.877163, 24.278397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851620, 33.027874, 24.449261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019546, 0.768166, -0.639952,
		-0.569248, -0.517649, -0.638746,
		-0.821933, 0.376776, 0.427159,
		27.605040, 33.140907, 24.577408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749500, 33.118805, 23.737820>,  <28.180393, 32.877163, 24.278397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749500, 33.118805, 23.737820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626612, 33.322262, 24.059540>,  <27.552879, 33.444336, 24.252573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626612, 33.322262, 24.059540>,  <27.749500, 33.118805, 23.737820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626612, 33.322262, 24.059540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157002, 0.806504, -0.570002,
		-0.938598, -0.301394, -0.167918,
		-0.307222, 0.508639, 0.804302,
		27.534445, 33.474854, 24.300831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241131, 33.563156, 23.337027>,  <27.749500, 33.118805, 23.737820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241131, 33.563156, 23.337027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329683, 33.694237, 23.704418>,  <27.382814, 33.772884, 23.924852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329683, 33.694237, 23.704418>,  <27.241131, 33.563156, 23.337027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329683, 33.694237, 23.704418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081486, 0.932337, -0.352289,
		-0.971776, 0.152834, 0.179701,
		0.221383, 0.327703, 0.918477,
		27.396099, 33.792549, 23.979961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841566, 34.146290, 23.451481>,  <27.241131, 33.563156, 23.337027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841566, 34.146290, 23.451481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111444, 34.217545, 23.737991>,  <27.273373, 34.260296, 23.909897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111444, 34.217545, 23.737991>,  <26.841566, 34.146290, 23.451481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111444, 34.217545, 23.737991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253913, 0.855193, -0.451856,
		-0.693045, 0.486738, 0.531765,
		0.674697, 0.178134, 0.716277,
		27.313854, 34.270985, 23.952875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640945, 34.664536, 23.693960>,  <26.841566, 34.146290, 23.451481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640945, 34.664536, 23.693960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027205, 34.669445, 23.797783>,  <27.258961, 34.672390, 23.860077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027205, 34.669445, 23.797783>,  <26.640945, 34.664536, 23.693960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027205, 34.669445, 23.797783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101734, 0.901288, -0.421106,
		-0.239104, 0.433047, 0.869080,
		0.965650, 0.012273, 0.259558,
		27.316900, 34.673126, 23.875650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818022, 35.372482, 23.999931>,  <26.640945, 34.664536, 23.693960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818022, 35.372482, 23.999931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127506, 35.183311, 23.831306>,  <27.313196, 35.069809, 23.730131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127506, 35.183311, 23.831306>,  <26.818022, 35.372482, 23.999931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127506, 35.183311, 23.831306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256009, 0.842049, -0.474776,
		0.579511, 0.259415, 0.772574,
		0.773710, -0.472924, -0.421564,
		27.359619, 35.041435, 23.704838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452494, 35.742649, 24.109077>,  <26.818022, 35.372482, 23.999931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452494, 35.742649, 24.109077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489328, 35.528725, 23.773102>,  <27.511429, 35.400372, 23.571516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489328, 35.528725, 23.773102>,  <27.452494, 35.742649, 24.109077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489328, 35.528725, 23.773102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329849, 0.812282, -0.481039,
		0.939532, -0.232756, 0.251207,
		0.092086, -0.534811, -0.839939,
		27.516954, 35.368282, 23.521120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147091, 36.414619, 24.078276>,  <27.452494, 35.742649, 24.109077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147091, 36.414619, 24.078276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926416, 36.525921, 24.392784>,  <26.794012, 36.592701, 24.581490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926416, 36.525921, 24.392784>,  <27.147091, 36.414619, 24.078276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926416, 36.525921, 24.392784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799493, -0.092133, 0.593568,
		0.237602, 0.956080, -0.171630,
		-0.551686, 0.278250, 0.786270,
		26.760910, 36.609394, 24.628666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671022, 36.739872, 24.515152>,  <27.147091, 36.414619, 24.078276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671022, 36.739872, 24.515152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349487, 36.658283, 24.738667>,  <27.156567, 36.609329, 24.872774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349487, 36.658283, 24.738667>,  <27.671022, 36.739872, 24.515152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349487, 36.658283, 24.738667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594110, -0.322126, 0.737067,
		0.029656, 0.924462, 0.380120,
		-0.803837, -0.203975, 0.558785,
		27.108335, 36.597092, 24.906301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755392, 37.007381, 25.248592>,  <27.671022, 36.739872, 24.515152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755392, 37.007381, 25.248592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501535, 36.699177, 25.272400>,  <27.349222, 36.514256, 25.286684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501535, 36.699177, 25.272400>,  <27.755392, 37.007381, 25.248592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501535, 36.699177, 25.272400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604443, -0.446914, 0.659482,
		-0.481540, 0.454508, 0.749360,
		-0.634640, -0.770513, 0.059517,
		27.311144, 36.468021, 25.290255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801785, 36.861214, 25.935883>,  <27.755392, 37.007381, 25.248592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801785, 36.861214, 25.935883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590044, 36.542896, 25.818237>,  <27.462999, 36.351906, 25.747650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590044, 36.542896, 25.818237>,  <27.801785, 36.861214, 25.935883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590044, 36.542896, 25.818237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315212, -0.506328, 0.802666,
		-0.787673, 0.332185, 0.518869,
		-0.529351, -0.795792, -0.294112,
		27.431238, 36.304157, 25.730003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491770, 36.534027, 26.602713>,  <27.801785, 36.861214, 25.935883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491770, 36.534027, 26.602713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503523, 36.248013, 26.323326>,  <27.510574, 36.076405, 26.155693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503523, 36.248013, 26.323326>,  <27.491770, 36.534027, 26.602713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503523, 36.248013, 26.323326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190491, -0.681958, 0.706149,
		-0.981249, -0.153802, 0.116169,
		0.029385, -0.715037, -0.698468,
		27.512339, 36.033501, 26.113785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018429, 36.064468, 26.852070>,  <27.491770, 36.534027, 26.602713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018429, 36.064468, 26.852070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244972, 35.857468, 26.595497>,  <27.380898, 35.733269, 26.441553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244972, 35.857468, 26.595497>,  <27.018429, 36.064468, 26.852070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244972, 35.857468, 26.595497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191347, -0.674454, 0.713091,
		-0.801639, -0.526601, -0.282961,
		0.566358, -0.517497, -0.641432,
		27.414879, 35.702217, 26.403067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882944, 35.393902, 27.111620>,  <27.018429, 36.064468, 26.852070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882944, 35.393902, 27.111620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203611, 35.382778, 26.872772>,  <27.396011, 35.376102, 26.729464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203611, 35.382778, 26.872772>,  <26.882944, 35.393902, 27.111620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203611, 35.382778, 26.872772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394890, -0.725281, 0.563941,
		-0.448765, -0.687891, -0.570453,
		0.801669, -0.027811, -0.597122,
		27.444113, 35.374435, 26.693636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948261, 34.733562, 26.776995>,  <26.882944, 35.393902, 27.111620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948261, 34.733562, 26.776995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316107, 34.888725, 26.801773>,  <27.536814, 34.981823, 26.816641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316107, 34.888725, 26.801773>,  <26.948261, 34.733562, 26.776995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316107, 34.888725, 26.801773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308674, -0.811108, 0.496814,
		0.242964, -0.437755, -0.865644,
		0.919613, 0.387910, 0.061947,
		27.591991, 35.005096, 26.820356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505051, 34.173611, 26.656143>,  <26.948261, 34.733562, 26.776995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505051, 34.173611, 26.656143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676105, 34.470963, 26.861866>,  <27.778738, 34.649372, 26.985300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676105, 34.470963, 26.861866>,  <27.505051, 34.173611, 26.656143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676105, 34.470963, 26.861866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415098, -0.666912, 0.618806,
		0.803006, -0.051137, -0.593773,
		0.427638, 0.743379, 0.514308,
		27.804398, 34.693977, 27.016159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150620, 34.011898, 26.567839>,  <27.505051, 34.173611, 26.656143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150620, 34.011898, 26.567839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135910, 34.265148, 26.877110>,  <28.127085, 34.417099, 27.062672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135910, 34.265148, 26.877110>,  <28.150620, 34.011898, 26.567839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135910, 34.265148, 26.877110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601277, -0.603963, 0.523159,
		0.798194, 0.484133, -0.358470,
		-0.036776, 0.633122, 0.773178,
		28.124878, 34.455086, 27.109062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814838, 34.011860, 26.845968>,  <28.150620, 34.011898, 26.567839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814838, 34.011860, 26.845968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570013, 34.141125, 27.134674>,  <28.423119, 34.218685, 27.307898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570013, 34.141125, 27.134674>,  <28.814838, 34.011860, 26.845968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570013, 34.141125, 27.134674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501999, -0.546445, 0.670370,
		0.611045, 0.772633, 0.172230,
		-0.612063, 0.323167, 0.721763,
		28.386395, 34.238075, 27.351202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292601, 34.128044, 27.348167>,  <28.814838, 34.011860, 26.845968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292601, 34.128044, 27.348167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936216, 34.105427, 27.528385>,  <28.722385, 34.091854, 27.636517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936216, 34.105427, 27.528385>,  <29.292601, 34.128044, 27.348167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936216, 34.105427, 27.528385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391283, -0.599069, 0.698580,
		0.230405, 0.798698, 0.555873,
		-0.890961, -0.056547, 0.450545,
		28.668928, 34.088463, 27.663549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460199, 34.044495, 27.961241>,  <29.292601, 34.128044, 27.348167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460199, 34.044495, 27.961241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078789, 33.924225, 27.969090>,  <28.849943, 33.852062, 27.973799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078789, 33.924225, 27.969090>,  <29.460199, 34.044495, 27.961241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078789, 33.924225, 27.969090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220682, -0.652551, 0.724898,
		-0.205152, 0.695539, 0.688577,
		-0.953526, -0.300670, 0.019621,
		28.792730, 33.834023, 27.974976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369528, 34.080090, 28.598284>,  <29.460199, 34.044495, 27.961241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369528, 34.080090, 28.598284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101162, 33.825928, 28.445377>,  <28.940142, 33.673431, 28.353634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101162, 33.825928, 28.445377>,  <29.369528, 34.080090, 28.598284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101162, 33.825928, 28.445377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258459, -0.683561, 0.682601,
		-0.695032, 0.359168, 0.622839,
		-0.670917, -0.635408, -0.382267,
		28.899887, 33.635307, 28.330698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461178, 34.378296, 29.272297>,  <29.369528, 34.080090, 28.598284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461178, 34.378296, 29.272297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789316, 34.196201, 29.410740>,  <29.986198, 34.086945, 29.493805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789316, 34.196201, 29.410740>,  <29.461178, 34.378296, 29.272297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789316, 34.196201, 29.410740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562702, 0.750500, -0.346578,
		-0.101976, 0.479069, 0.871834,
		0.820346, -0.455240, 0.346106,
		30.035419, 34.059628, 29.514572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959520, 34.927784, 29.623619>,  <29.461178, 34.378296, 29.272297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959520, 34.927784, 29.623619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160360, 34.608120, 29.491413>,  <30.280865, 34.416321, 29.412090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160360, 34.608120, 29.491413>,  <29.959520, 34.927784, 29.623619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160360, 34.608120, 29.491413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672920, 0.601089, -0.431127,
		0.543208, -0.005942, 0.839577,
		0.502099, -0.799160, -0.330515,
		30.310989, 34.368374, 29.392258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593296, 35.104855, 29.721138>,  <29.959520, 34.927784, 29.623619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593296, 35.104855, 29.721138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629816, 34.795521, 29.470181>,  <30.651728, 34.609921, 29.319607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629816, 34.795521, 29.470181>,  <30.593296, 35.104855, 29.721138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629816, 34.795521, 29.470181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756003, 0.463900, -0.461796,
		0.648169, -0.432149, 0.626996,
		0.091298, -0.773333, -0.627391,
		30.657206, 34.563522, 29.281963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379589, 34.853424, 29.714184>,  <30.593296, 35.104855, 29.721138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379589, 34.853424, 29.714184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213306, 34.734737, 29.370289>,  <31.113537, 34.663525, 29.163952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213306, 34.734737, 29.370289>,  <31.379589, 34.853424, 29.714184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213306, 34.734737, 29.370289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826149, 0.272123, -0.493384,
		0.380351, -0.915372, 0.132011,
		-0.415706, -0.296720, -0.859736,
		31.088594, 34.645721, 29.112368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939785, 34.427486, 29.361914>,  <31.379589, 34.853424, 29.714184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939785, 34.427486, 29.361914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675171, 34.568039, 29.096916>,  <31.516401, 34.652370, 28.937918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675171, 34.568039, 29.096916>,  <31.939785, 34.427486, 29.361914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675171, 34.568039, 29.096916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747179, 0.233470, -0.622267,
		-0.063982, -0.906654, -0.416995,
		-0.661537, 0.351383, -0.662495,
		31.476709, 34.673454, 28.898169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316376, 34.412655, 28.723190>,  <31.939785, 34.427486, 29.361914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316376, 34.412655, 28.723190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982012, 34.606110, 28.619389>,  <31.781393, 34.722183, 28.557108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982012, 34.606110, 28.619389>,  <32.316376, 34.412655, 28.723190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982012, 34.606110, 28.619389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419558, 0.258220, -0.870226,
		-0.353866, -0.836311, -0.418764,
		-0.835912, 0.483639, -0.259506,
		31.731237, 34.751202, 28.541536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257450, 34.187946, 28.023703>,  <32.316376, 34.412655, 28.723190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257450, 34.187946, 28.023703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080063, 34.538235, 28.100063>,  <31.973629, 34.748409, 28.145880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080063, 34.538235, 28.100063>,  <32.257450, 34.187946, 28.023703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080063, 34.538235, 28.100063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390009, 0.380315, -0.838602,
		-0.806986, -0.297443, -0.510198,
		-0.443472, 0.875722, 0.190903,
		31.947021, 34.800953, 28.157333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053181, 34.482868, 27.339611>,  <32.257450, 34.187946, 28.023703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053181, 34.482868, 27.339611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039555, 34.796333, 27.587711>,  <32.031380, 34.984413, 27.736570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039555, 34.796333, 27.587711>,  <32.053181, 34.482868, 27.339611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039555, 34.796333, 27.587711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439477, 0.569132, -0.694945,
		-0.897608, 0.248914, -0.363789,
		-0.034063, 0.783665, 0.620249,
		32.029335, 35.031433, 27.773787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582291, 34.942776, 27.036861>,  <32.053181, 34.482868, 27.339611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582291, 34.942776, 27.036861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830263, 35.151169, 27.271557>,  <31.979046, 35.276207, 27.412374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830263, 35.151169, 27.271557>,  <31.582291, 34.942776, 27.036861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830263, 35.151169, 27.271557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211823, 0.608885, -0.764454,
		-0.755525, 0.598193, 0.267109,
		0.619930, 0.520985, 0.586739,
		32.016243, 35.307465, 27.447578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387915, 35.604950, 27.003485>,  <31.582291, 34.942776, 27.036861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387915, 35.604950, 27.003485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770700, 35.608883, 27.119499>,  <32.000374, 35.611244, 27.189108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770700, 35.608883, 27.119499>,  <31.387915, 35.604950, 27.003485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770700, 35.608883, 27.119499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198056, 0.708349, -0.677506,
		-0.212110, 0.705793, 0.675918,
		0.956966, 0.009836, 0.290035,
		32.057789, 35.611835, 27.206509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564468, 36.212395, 27.010111>,  <31.387915, 35.604950, 27.003485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564468, 36.212395, 27.010111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939425, 36.073090, 27.011288>,  <32.164398, 35.989506, 27.011993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939425, 36.073090, 27.011288>,  <31.564468, 36.212395, 27.010111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939425, 36.073090, 27.011288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279444, 0.747051, -0.603180,
		0.207868, 0.566238, 0.797600,
		0.937391, -0.348267, 0.002944,
		32.220642, 35.968609, 27.012171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875471, 36.781025, 27.017965>,  <31.564468, 36.212395, 27.010111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875471, 36.781025, 27.017965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175682, 36.537216, 26.915833>,  <32.355808, 36.390930, 26.854553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175682, 36.537216, 26.915833>,  <31.875471, 36.781025, 27.017965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175682, 36.537216, 26.915833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351092, 0.695111, -0.627340,
		0.559861, 0.381191, 0.735697,
		0.750527, -0.609521, -0.255333,
		32.400841, 36.354359, 26.839233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.780674, 31.988482, 32.092670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.056707, 31.777046, 31.894932>,  <28.222328, 31.650185, 31.776289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.056707, 31.777046, 31.894932>,  <27.780674, 31.988482, 32.092670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056707, 31.777046, 31.894932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453125, 0.848170, -0.274381,
		0.564323, -0.034654, 0.824826,
		0.690085, -0.528589, -0.494345,
		28.263733, 31.618469, 31.746628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438713, 32.287060, 32.327026>,  <27.780674, 31.988482, 32.092670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438713, 32.287060, 32.327026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.510319, 32.113724, 31.973717>,  <28.553282, 32.009724, 31.761730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.510319, 32.113724, 31.973717>,  <28.438713, 32.287060, 32.327026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510319, 32.113724, 31.973717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602778, 0.757852, -0.249637,
		0.777568, -0.487730, 0.396873,
		0.179015, -0.433336, -0.883274,
		28.564024, 31.983723, 31.708735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199047, 32.369572, 32.214172>,  <28.438713, 32.287060, 32.327026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199047, 32.369572, 32.214172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.054058, 32.258125, 31.858421>,  <28.967064, 32.191257, 31.644972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.054058, 32.258125, 31.858421>,  <29.199047, 32.369572, 32.214172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054058, 32.258125, 31.858421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599232, 0.661209, -0.451358,
		0.713817, -0.696547, -0.072718,
		-0.362474, -0.278612, -0.889375,
		28.945316, 32.174541, 31.591608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777962, 32.198246, 31.745495>,  <29.199047, 32.369572, 32.214172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777962, 32.198246, 31.745495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.472666, 32.306995, 31.511044>,  <29.289488, 32.372246, 31.370373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.472666, 32.306995, 31.511044>,  <29.777962, 32.198246, 31.745495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472666, 32.306995, 31.511044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589086, 0.665453, -0.458421,
		0.265408, -0.695166, -0.668059,
		-0.763241, 0.271876, -0.586129,
		29.243694, 32.388557, 31.335205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046976, 32.210724, 31.151218>,  <29.777962, 32.198246, 31.745495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046976, 32.210724, 31.151218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.720137, 32.413174, 31.040810>,  <29.524033, 32.534645, 30.974564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.720137, 32.413174, 31.040810>,  <30.046976, 32.210724, 31.151218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720137, 32.413174, 31.040810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554736, 0.559960, -0.615396,
		-0.156907, -0.655958, -0.738309,
		-0.817097, 0.506127, -0.276022,
		29.475008, 32.565010, 30.958004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157295, 32.231926, 30.502222>,  <30.046976, 32.210724, 31.151218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157295, 32.231926, 30.502222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.903564, 32.534477, 30.566116>,  <29.751326, 32.716007, 30.604452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.903564, 32.534477, 30.566116>,  <30.157295, 32.231926, 30.502222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903564, 32.534477, 30.566116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576070, 0.600277, -0.554807,
		-0.515530, -0.259911, -0.816501,
		-0.634328, 0.756381, 0.159734,
		29.713266, 32.761391, 30.614037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839115, 32.430779, 29.848707>,  <30.157295, 32.231926, 30.502222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839115, 32.430779, 29.848707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.782598, 32.743919, 30.091087>,  <29.748688, 32.931805, 30.236515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.782598, 32.743919, 30.091087>,  <29.839115, 32.430779, 29.848707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782598, 32.743919, 30.091087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138477, 0.621702, -0.770916,
		-0.980235, -0.025014, -0.196249,
		-0.141292, 0.782854, 0.605950,
		29.740211, 32.978775, 30.272873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402975, 32.821503, 29.436796>,  <29.839115, 32.430779, 29.848707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402975, 32.821503, 29.436796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.584433, 33.045380, 29.714199>,  <29.693308, 33.179707, 29.880642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.584433, 33.045380, 29.714199>,  <29.402975, 32.821503, 29.436796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584433, 33.045380, 29.714199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320233, 0.623837, -0.712936,
		-0.831659, 0.545505, 0.103770,
		0.453646, 0.559689, 0.693508,
		29.720526, 33.213287, 29.922251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359510, 33.505257, 29.224827>,  <29.402975, 32.821503, 29.436796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359510, 33.505257, 29.224827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.662701, 33.541492, 29.483212>,  <29.844614, 33.563236, 29.638243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.662701, 33.541492, 29.483212>,  <29.359510, 33.505257, 29.224827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662701, 33.541492, 29.483212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450435, 0.643579, -0.618800,
		-0.471787, 0.759999, 0.447011,
		0.757974, 0.090592, 0.645963,
		29.890093, 33.568668, 29.677000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678787, 33.535698, 29.445063>,  <29.359510, 33.505257, 29.224827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678787, 33.535698, 29.445063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.702822, 33.390057, 29.073296>,  <28.717243, 33.302670, 28.850235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.702822, 33.390057, 29.073296>,  <28.678787, 33.535698, 29.445063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702822, 33.390057, 29.073296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102042, -0.928462, 0.357134,
		-0.992964, 0.073380, -0.092944,
		0.060088, -0.364106, -0.929417,
		28.720848, 33.280827, 28.794470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212049, 32.986435, 29.460451>,  <28.678787, 33.535698, 29.445063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212049, 32.986435, 29.460451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.422235, 32.915779, 29.127541>,  <28.548347, 32.873386, 28.927794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.422235, 32.915779, 29.127541>,  <28.212049, 32.986435, 29.460451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422235, 32.915779, 29.127541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047812, -0.982796, 0.178400,
		-0.849471, -0.053950, -0.524870,
		0.525464, -0.176641, -0.832277,
		28.579874, 32.862785, 28.877857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875221, 32.475719, 29.089540>,  <28.212049, 32.986435, 29.460451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875221, 32.475719, 29.089540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.246555, 32.469933, 28.940956>,  <28.469357, 32.466461, 28.851807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.246555, 32.469933, 28.940956>,  <27.875221, 32.475719, 29.089540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246555, 32.469933, 28.940956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055094, -0.993562, -0.098995,
		-0.367636, 0.112366, -0.923156,
		0.928336, -0.014466, -0.371460,
		28.525057, 32.465591, 28.829517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850561, 32.070763, 28.438160>,  <27.875221, 32.475719, 29.089540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850561, 32.070763, 28.438160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.244368, 32.089527, 28.505722>,  <28.480652, 32.100784, 28.546259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.244368, 32.089527, 28.505722>,  <27.850561, 32.070763, 28.438160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244368, 32.089527, 28.505722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069424, -0.989086, -0.129955,
		0.160965, 0.139669, -0.977028,
		0.984515, 0.046911, 0.168905,
		28.539722, 32.103600, 28.556393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275463, 31.740660, 27.845106>,  <27.850561, 32.070763, 28.438160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275463, 31.740660, 27.845106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.505436, 31.738842, 28.172382>,  <28.643419, 31.737751, 28.368748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.505436, 31.738842, 28.172382>,  <28.275463, 31.740660, 27.845106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505436, 31.738842, 28.172382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073346, -0.995672, -0.057072,
		0.814908, 0.092823, -0.572109,
		0.574930, -0.004547, 0.818190,
		28.677916, 31.737478, 28.417839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782333, 31.251545, 27.677885>,  <28.275463, 31.740660, 27.845106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782333, 31.251545, 27.677885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.799282, 31.282608, 28.076317>,  <28.809452, 31.301245, 28.315376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.799282, 31.282608, 28.076317>,  <28.782333, 31.251545, 27.677885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799282, 31.282608, 28.076317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023436, -0.996623, 0.078696,
		0.998827, -0.026678, -0.040408,
		0.042371, 0.077657, 0.996079,
		28.811993, 31.305904, 28.375141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143284, 30.687895, 27.780788>,  <28.782333, 31.251545, 27.677885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143284, 30.687895, 27.780788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.975740, 30.784008, 28.131062>,  <28.875214, 30.841675, 28.341225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.975740, 30.784008, 28.131062>,  <29.143284, 30.687895, 27.780788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975740, 30.784008, 28.131062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143248, -0.969764, 0.197578,
		0.896681, -0.042682, 0.440616,
		-0.418860, 0.240282, 0.875683,
		28.850082, 30.856092, 28.393766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513149, 30.382565, 28.259888>,  <29.143284, 30.687895, 27.780788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513149, 30.382565, 28.259888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.155405, 30.419353, 28.435005>,  <28.940760, 30.441427, 28.540075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.155405, 30.419353, 28.435005>,  <29.513149, 30.382565, 28.259888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155405, 30.419353, 28.435005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007080, -0.975605, 0.219420,
		0.447293, 0.199340, 0.871890,
		-0.894359, 0.091972, 0.437793,
		28.887096, 30.446945, 28.566343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443260, 29.901903, 28.908680>,  <29.513149, 30.382565, 28.259888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443260, 29.901903, 28.908680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.063099, 29.991806, 28.822685>,  <28.835003, 30.045748, 28.771088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.063099, 29.991806, 28.822685>,  <29.443260, 29.901903, 28.908680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063099, 29.991806, 28.822685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283051, -0.911523, 0.298343,
		-0.128910, 0.344398, 0.929931,
		-0.950402, 0.224758, -0.214987,
		28.777979, 30.059233, 28.758190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014353, 29.473358, 29.378441>,  <29.443260, 29.901903, 28.908680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014353, 29.473358, 29.378441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.765625, 29.581951, 29.084602>,  <28.616388, 29.647106, 28.908298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.765625, 29.581951, 29.084602>,  <29.014353, 29.473358, 29.378441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765625, 29.581951, 29.084602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537549, -0.830099, 0.148247,
		-0.569543, 0.487065, 0.662109,
		-0.621822, 0.271483, -0.734599,
		28.579079, 29.663397, 28.864223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278357, 29.615261, 29.708805>,  <29.014353, 29.473358, 29.378441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278357, 29.615261, 29.708805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.263756, 29.520443, 29.320480>,  <28.254995, 29.463552, 29.087486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.263756, 29.520443, 29.320480>,  <28.278357, 29.615261, 29.708805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263756, 29.520443, 29.320480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537081, -0.814581, 0.219093,
		-0.842740, 0.529402, -0.097577,
		-0.036504, -0.237046, -0.970812,
		28.252804, 29.449329, 29.029236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632710, 29.448843, 29.612692>,  <28.278357, 29.615261, 29.708805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632710, 29.448843, 29.612692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.821136, 29.295166, 29.295078>,  <27.934193, 29.202959, 29.104509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.821136, 29.295166, 29.295078>,  <27.632710, 29.448843, 29.612692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821136, 29.295166, 29.295078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559847, -0.825846, 0.067450,
		-0.681664, 0.412764, -0.604119,
		0.471068, -0.384193, -0.794034,
		27.962458, 29.179909, 29.056868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110865, 29.227400, 29.093697>,  <27.632710, 29.448843, 29.612692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110865, 29.227400, 29.093697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.435581, 29.014904, 28.996723>,  <27.630411, 28.887405, 28.938540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.435581, 29.014904, 28.996723>,  <27.110865, 29.227400, 29.093697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435581, 29.014904, 28.996723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533999, -0.843358, 0.059935,
		-0.236300, 0.080805, -0.968315,
		0.811793, -0.531241, -0.242435,
		27.679119, 28.855532, 28.923992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938433, 28.751520, 28.589209>,  <27.110865, 29.227400, 29.093697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938433, 28.751520, 28.589209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.270851, 28.591816, 28.744102>,  <27.470303, 28.495995, 28.837040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.270851, 28.591816, 28.744102>,  <26.938433, 28.751520, 28.589209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270851, 28.591816, 28.744102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410799, -0.909967, -0.056603,
		0.374971, -0.112037, -0.920241,
		0.831048, -0.399258, 0.387236,
		27.520166, 28.472038, 28.860273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.395567, 25.643959, 29.128254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.175579, 25.969559, 29.203022>,  <31.043587, 26.164919, 29.247883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.175579, 25.969559, 29.203022>,  <31.395567, 25.643959, 29.128254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175579, 25.969559, 29.203022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316244, 0.410108, -0.855454,
		-0.772996, -0.411361, -0.482969,
		-0.549970, 0.813999, 0.186921,
		31.010588, 26.213758, 29.259098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994116, 25.849567, 28.427721>,  <31.395567, 25.643959, 29.128254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994116, 25.849567, 28.427721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.004629, 26.172371, 28.663704>,  <31.010937, 26.366053, 28.805294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.004629, 26.172371, 28.663704>,  <30.994116, 25.849567, 28.427721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004629, 26.172371, 28.663704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164146, 0.578666, -0.798876,
		-0.986086, 0.117837, -0.117257,
		0.026284, 0.807007, 0.589956,
		31.012514, 26.414473, 28.840691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716637, 26.376266, 28.032503>,  <30.994116, 25.849567, 28.427721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716637, 26.376266, 28.032503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.889072, 26.587658, 28.325043>,  <30.992533, 26.714493, 28.500566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.889072, 26.587658, 28.325043>,  <30.716637, 26.376266, 28.032503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889072, 26.587658, 28.325043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165247, 0.750583, -0.639781,
		-0.887050, 0.396655, 0.236237,
		0.431087, 0.528480, 0.731350,
		31.018398, 26.746202, 28.544447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443621, 27.081337, 27.866222>,  <30.716637, 26.376266, 28.032503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443621, 27.081337, 27.866222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.775965, 27.074287, 28.088703>,  <30.975370, 27.070057, 28.222191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.775965, 27.074287, 28.088703>,  <30.443621, 27.081337, 27.866222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775965, 27.074287, 28.088703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453219, 0.601392, -0.657967,
		-0.322898, 0.798760, 0.507661,
		0.830861, -0.017625, 0.556201,
		31.025223, 27.069000, 28.255564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639706, 27.728710, 27.850061>,  <30.443621, 27.081337, 27.866222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639706, 27.728710, 27.850061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.973799, 27.538380, 27.960320>,  <31.174253, 27.424181, 28.026474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.973799, 27.538380, 27.960320>,  <30.639706, 27.728710, 27.850061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973799, 27.538380, 27.960320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547343, 0.671086, -0.500059,
		0.052960, 0.568536, 0.820952,
		0.835231, -0.475825, 0.275644,
		31.224369, 27.395632, 28.043013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064640, 28.239637, 28.098370>,  <30.639706, 27.728710, 27.850061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064640, 28.239637, 28.098370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.304296, 27.935871, 27.996925>,  <31.448090, 27.753611, 27.936060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.304296, 27.935871, 27.996925>,  <31.064640, 28.239637, 28.098370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304296, 27.935871, 27.996925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627817, 0.642193, -0.439812,
		0.496865, 0.104290, 0.861539,
		0.599142, -0.759415, -0.253609,
		31.484039, 27.708046, 27.920843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718739, 28.357330, 28.462183>,  <31.064640, 28.239637, 28.098370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718739, 28.357330, 28.462183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752180, 28.120979, 28.141216>,  <31.772245, 27.979168, 27.948637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752180, 28.120979, 28.141216>,  <31.718739, 28.357330, 28.462183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752180, 28.120979, 28.141216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731113, 0.583523, -0.353518,
		0.677115, -0.557102, 0.480784,
		0.083603, -0.590880, -0.802416,
		31.777262, 27.943716, 27.900492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297398, 28.601877, 28.169180>,  <31.718739, 28.357330, 28.462183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297398, 28.601877, 28.169180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143776, 28.379066, 27.874638>,  <32.051605, 28.245380, 27.697912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143776, 28.379066, 27.874638>,  <32.297398, 28.601877, 28.169180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143776, 28.379066, 27.874638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412334, 0.610102, -0.676577,
		0.826126, -0.563466, -0.004629,
		-0.384052, -0.557029, -0.736357,
		32.028561, 28.211958, 27.653730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956703, 28.514019, 27.716228>,  <32.297398, 28.601877, 28.169180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956703, 28.514019, 27.716228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.622097, 28.432072, 27.512947>,  <32.421333, 28.382904, 27.390978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.622097, 28.432072, 27.512947>,  <32.956703, 28.514019, 27.716228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622097, 28.432072, 27.512947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290982, 0.619803, -0.728816,
		0.464297, -0.757544, -0.458863,
		-0.836515, -0.204867, -0.508204,
		32.371143, 28.370611, 27.360485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114998, 28.293003, 27.060593>,  <32.956703, 28.514019, 27.716228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114998, 28.293003, 27.060593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.737591, 28.417664, 27.015606>,  <32.511147, 28.492460, 26.988613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.737591, 28.417664, 27.015606>,  <33.114998, 28.293003, 27.060593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737591, 28.417664, 27.015606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263669, 0.500716, -0.824477,
		-0.200633, -0.807563, -0.554607,
		-0.943518, 0.311650, -0.112469,
		32.454536, 28.511158, 26.981865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910343, 28.149639, 26.252880>,  <33.114998, 28.293003, 27.060593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910343, 28.149639, 26.252880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.672302, 28.429085, 26.411774>,  <32.529476, 28.596752, 26.507111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.672302, 28.429085, 26.411774>,  <32.910343, 28.149639, 26.252880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672302, 28.429085, 26.411774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027765, 0.511865, -0.858617,
		-0.803171, -0.499934, -0.324008,
		-0.595101, 0.698612, 0.397235,
		32.493771, 28.638668, 26.530945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426624, 28.199924, 25.737791>,  <32.910343, 28.149639, 26.252880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426624, 28.199924, 25.737791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.408493, 28.520065, 25.976917>,  <32.397614, 28.712151, 26.120392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.408493, 28.520065, 25.976917>,  <32.426624, 28.199924, 25.737791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408493, 28.520065, 25.976917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118977, 0.589844, -0.798704,
		-0.991862, -0.107329, 0.068488,
		-0.045327, 0.800353, 0.597814,
		32.394894, 28.760172, 26.156261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844027, 28.590519, 25.525408>,  <32.426624, 28.199924, 25.737791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844027, 28.590519, 25.525408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.078239, 28.832817, 25.740898>,  <32.218765, 28.978195, 25.870193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.078239, 28.832817, 25.740898>,  <31.844027, 28.590519, 25.525408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078239, 28.832817, 25.740898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008783, 0.669264, -0.742973,
		-0.810603, 0.430301, 0.397194,
		0.585530, 0.605745, 0.538728,
		32.253899, 29.014540, 25.902517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532894, 29.245598, 25.303154>,  <31.844027, 28.590519, 25.525408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532894, 29.245598, 25.303154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.882368, 29.324265, 25.481140>,  <32.092052, 29.371464, 25.587933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.882368, 29.324265, 25.481140>,  <31.532894, 29.245598, 25.303154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882368, 29.324265, 25.481140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247075, 0.608530, -0.754085,
		-0.419079, 0.768774, 0.483073,
		0.873686, 0.196666, 0.444967,
		32.144474, 29.383265, 25.614630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913443, 29.465397, 25.541876>,  <31.532894, 29.245598, 25.303154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913443, 29.465397, 25.541876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.567690, 29.450001, 25.341331>,  <30.360239, 29.440763, 25.221004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.567690, 29.450001, 25.341331>,  <30.913443, 29.465397, 25.541876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567690, 29.450001, 25.341331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264731, -0.812862, 0.518819,
		-0.427509, 0.581183, 0.692432,
		-0.864380, -0.038492, -0.501363,
		30.308376, 29.438454, 25.190922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367579, 29.366671, 26.001146>,  <30.913443, 29.465397, 25.541876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367579, 29.366671, 26.001146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.194403, 29.225330, 25.669434>,  <30.090496, 29.140526, 25.470406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.194403, 29.225330, 25.669434>,  <30.367579, 29.366671, 26.001146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194403, 29.225330, 25.669434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294503, -0.814040, 0.500607,
		-0.851956, 0.460959, 0.248369,
		-0.432941, -0.353350, -0.829280,
		30.064520, 29.119326, 25.420649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679600, 29.095152, 26.145697>,  <30.367579, 29.366671, 26.001146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679600, 29.095152, 26.145697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.741371, 28.922508, 25.790199>,  <29.778433, 28.818922, 25.576900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.741371, 28.922508, 25.790199>,  <29.679600, 29.095152, 26.145697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741371, 28.922508, 25.790199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303500, -0.876765, 0.373056,
		-0.940234, 0.212124, -0.266389,
		0.154426, -0.431609, -0.888744,
		29.787699, 28.793026, 25.523577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104345, 28.607191, 26.000683>,  <29.679600, 29.095152, 26.145697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104345, 28.607191, 26.000683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.410707, 28.479012, 25.777721>,  <29.594524, 28.402103, 25.643944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.410707, 28.479012, 25.777721>,  <29.104345, 28.607191, 26.000683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410707, 28.479012, 25.777721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177022, -0.938539, 0.296324,
		-0.618103, -0.128284, -0.775559,
		0.765906, -0.320450, -0.557404,
		29.640480, 28.382877, 25.610500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869343, 28.005926, 25.607275>,  <29.104345, 28.607191, 26.000683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869343, 28.005926, 25.607275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.267057, 27.990425, 25.567482>,  <29.505686, 27.981125, 25.543606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.267057, 27.990425, 25.567482>,  <28.869343, 28.005926, 25.607275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267057, 27.990425, 25.567482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036202, -0.998971, 0.027325,
		-0.100441, -0.023568, -0.994664,
		0.994284, -0.038754, -0.099484,
		29.565342, 27.978800, 25.537636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916800, 27.470222, 25.147484>,  <28.869343, 28.005926, 25.607275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916800, 27.470222, 25.147484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.263765, 27.519161, 25.340408>,  <29.471945, 27.548525, 25.456163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.263765, 27.519161, 25.340408>,  <28.916800, 27.470222, 25.147484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263765, 27.519161, 25.340408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098567, -0.907846, 0.407553,
		0.487729, -0.401057, -0.775418,
		0.867413, 0.122345, 0.482314,
		29.523989, 27.555864, 25.485102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331871, 26.848803, 25.036938>,  <28.916800, 27.470222, 25.147484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331871, 26.848803, 25.036938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.459826, 27.007023, 25.381313>,  <29.536598, 27.101955, 25.587938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.459826, 27.007023, 25.381313>,  <29.331871, 26.848803, 25.036938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459826, 27.007023, 25.381313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114620, -0.885853, 0.449585,
		0.940497, -0.242497, -0.238035,
		0.319887, 0.395550, 0.860937,
		29.555792, 27.125689, 25.639595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814056, 26.269880, 25.404543>,  <29.331871, 26.848803, 25.036938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814056, 26.269880, 25.404543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.729280, 26.536709, 25.690228>,  <29.678415, 26.696806, 25.861637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.729280, 26.536709, 25.690228>,  <29.814056, 26.269880, 25.404543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729280, 26.536709, 25.690228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073041, -0.739580, 0.669094,
		0.974550, 0.089640, 0.205469,
		-0.211939, 0.667073, 0.714210,
		29.665699, 26.736830, 25.904491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265162, 26.152077, 25.981964>,  <29.814056, 26.269880, 25.404543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265162, 26.152077, 25.981964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.986835, 26.381901, 26.154346>,  <29.819839, 26.519796, 26.257776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.986835, 26.381901, 26.154346>,  <30.265162, 26.152077, 25.981964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986835, 26.381901, 26.154346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066204, -0.648784, 0.758087,
		0.715164, 0.498957, 0.489472,
		-0.695814, 0.574561, 0.430954,
		29.778091, 26.554270, 26.283632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411964, 26.079210, 26.730247>,  <30.265162, 26.152077, 25.981964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411964, 26.079210, 26.730247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.025633, 26.167229, 26.675476>,  <29.793833, 26.220039, 26.642612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.025633, 26.167229, 26.675476>,  <30.411964, 26.079210, 26.730247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025633, 26.167229, 26.675476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248919, -0.640449, 0.726542,
		0.072178, 0.735801, 0.673340,
		-0.965831, 0.220048, -0.136929,
		29.735884, 26.233242, 26.634398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074236, 26.348555, 27.297594>,  <30.411964, 26.079210, 26.730247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074236, 26.348555, 27.297594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.768139, 26.184612, 27.099030>,  <29.584480, 26.086246, 26.979891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.768139, 26.184612, 27.099030>,  <30.074236, 26.348555, 27.297594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768139, 26.184612, 27.099030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296255, -0.460407, 0.836814,
		-0.571525, 0.787429, 0.230901,
		-0.765240, -0.409854, -0.496414,
		29.538567, 26.061655, 26.950106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503611, 26.334099, 27.741119>,  <30.074236, 26.348555, 27.297594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503611, 26.334099, 27.741119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.387621, 26.072613, 27.461529>,  <29.318027, 25.915720, 27.293774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.387621, 26.072613, 27.461529>,  <29.503611, 26.334099, 27.741119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387621, 26.072613, 27.461529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387295, -0.587725, 0.710340,
		-0.875167, 0.476691, -0.082756,
		-0.289975, -0.653717, -0.698977,
		29.300629, 25.876497, 27.251835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682268, 26.287977, 27.777069>,  <29.503611, 26.334099, 27.741119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682268, 26.287977, 27.777069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.845758, 25.954922, 27.627586>,  <28.943851, 25.755089, 27.537897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.845758, 25.954922, 27.627586>,  <28.682268, 26.287977, 27.777069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845758, 25.954922, 27.627586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493199, -0.546041, 0.677195,
		-0.767919, -0.092474, -0.633837,
		0.408724, -0.832639, -0.373708,
		28.968376, 25.705130, 27.515474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102110, 25.820930, 27.707418>,  <28.682268, 26.287977, 27.777069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102110, 25.820930, 27.707418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.427565, 25.590698, 27.740173>,  <28.622837, 25.452559, 27.759827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.427565, 25.590698, 27.740173>,  <28.102110, 25.820930, 27.707418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427565, 25.590698, 27.740173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462430, -0.555353, 0.691189,
		-0.352358, -0.600243, -0.718020,
		0.813635, -0.575580, 0.081887,
		28.671656, 25.418024, 27.764740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506817, 25.409590, 27.431900>,  <28.102110, 25.820930, 27.707418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506817, 25.409590, 27.431900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.111807, 25.461777, 27.396626>,  <26.874802, 25.493090, 27.375460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.111807, 25.461777, 27.396626>,  <27.506817, 25.409590, 27.431900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111807, 25.461777, 27.396626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154602, 0.696735, -0.700470,
		-0.029945, -0.705364, -0.708212,
		-0.987523, 0.130467, -0.088187,
		26.815550, 25.500917, 27.370169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483288, 25.635956, 26.710842>,  <27.506817, 25.409590, 27.431900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483288, 25.635956, 26.710842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.131115, 25.739346, 26.869854>,  <26.919811, 25.801380, 26.965261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.131115, 25.739346, 26.869854>,  <27.483288, 25.635956, 26.710842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131115, 25.739346, 26.869854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105712, 0.924262, -0.366832,
		-0.462241, -0.280946, -0.841072,
		-0.880431, 0.258476, 0.397532,
		26.866985, 25.816889, 26.989113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042894, 25.895435, 26.203115>,  <27.483288, 25.635956, 26.710842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042894, 25.895435, 26.203115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.895098, 26.049637, 26.541313>,  <26.806419, 26.142157, 26.744232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.895098, 26.049637, 26.541313>,  <27.042894, 25.895435, 26.203115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895098, 26.049637, 26.541313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093186, 0.920671, -0.379054,
		-0.924550, -0.061269, -0.376104,
		-0.369492, 0.385502, 0.845496,
		26.784250, 26.165287, 26.794962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658159, 26.373299, 25.874741>,  <27.042894, 25.895435, 26.203115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658159, 26.373299, 25.874741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.669092, 26.469372, 26.262878>,  <26.675652, 26.527016, 26.495760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.669092, 26.469372, 26.262878>,  <26.658159, 26.373299, 25.874741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669092, 26.469372, 26.262878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214667, 0.949469, -0.228967,
		-0.976305, -0.202043, 0.077509,
		0.027331, 0.240181, 0.970343,
		26.677292, 26.541426, 26.553982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974480, 26.738995, 26.133472>,  <26.658159, 26.373299, 25.874741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974480, 26.738995, 26.133472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.294281, 26.833176, 26.354507>,  <26.486162, 26.889685, 26.487129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.294281, 26.833176, 26.354507>,  <25.974480, 26.738995, 26.133472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294281, 26.833176, 26.354507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188096, 0.971838, -0.141951,
		-0.570450, 0.009551, 0.821277,
		0.799504, 0.235455, 0.552589,
		26.534132, 26.903812, 26.520285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704407, 27.234898, 26.589281>,  <25.974480, 26.738995, 26.133472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704407, 27.234898, 26.589281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.097059, 27.309361, 26.572567>,  <26.332651, 27.354038, 26.562538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.097059, 27.309361, 26.572567>,  <25.704407, 27.234898, 26.589281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097059, 27.309361, 26.572567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184795, 0.982173, 0.034470,
		0.047459, -0.026114, 0.998532,
		0.981631, 0.186159, -0.041787,
		26.391548, 27.365208, 26.560032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774389, 27.826149, 27.173231>,  <25.704407, 27.234898, 26.589281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774389, 27.826149, 27.173231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.108875, 27.813366, 26.954243>,  <26.309566, 27.805696, 26.822849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.108875, 27.813366, 26.954243>,  <25.774389, 27.826149, 27.173231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108875, 27.813366, 26.954243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008511, 0.998937, -0.045309,
		0.548336, 0.033228, 0.835597,
		0.836215, -0.031956, -0.547470,
		26.359739, 27.803780, 26.790001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203732, 28.371765, 27.410837>,  <25.774389, 27.826149, 27.173231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203732, 28.371765, 27.410837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.375826, 28.291214, 27.058849>,  <26.479082, 28.242884, 26.847656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.375826, 28.291214, 27.058849>,  <26.203732, 28.371765, 27.410837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375826, 28.291214, 27.058849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131046, 0.978407, -0.159832,
		0.893155, -0.046551, 0.447333,
		0.430234, -0.201376, -0.879970,
		26.504896, 28.230801, 26.794859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876062, 28.762524, 27.341448>,  <26.203732, 28.371765, 27.410837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876062, 28.762524, 27.341448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.779354, 28.686050, 26.960922>,  <26.721329, 28.640165, 26.732607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.779354, 28.686050, 26.960922>,  <26.876062, 28.762524, 27.341448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779354, 28.686050, 26.960922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156317, 0.959918, -0.232642,
		0.957660, -0.204952, -0.202195,
		-0.241771, -0.191185, -0.951312,
		26.706821, 28.628695, 26.675529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341946, 29.032356, 27.027719>,  <26.876062, 28.762524, 27.341448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341946, 29.032356, 27.027719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.084465, 28.961670, 26.729881>,  <26.929977, 28.919258, 26.551178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.084465, 28.961670, 26.729881>,  <27.341946, 29.032356, 27.027719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084465, 28.961670, 26.729881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179370, 0.911030, -0.371282,
		0.743958, -0.372553, -0.554735,
		-0.643703, -0.176715, -0.744593,
		26.891354, 28.908655, 26.506504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644732, 29.211308, 26.312281>,  <27.341946, 29.032356, 27.027719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644732, 29.211308, 26.312281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.245234, 29.224579, 26.297298>,  <27.005535, 29.232542, 26.288309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.245234, 29.224579, 26.297298>,  <27.644732, 29.211308, 26.312281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245234, 29.224579, 26.297298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046042, 0.902487, -0.428249,
		0.019595, -0.429437, -0.902884,
		-0.998747, 0.033179, -0.037456,
		26.945610, 29.234533, 26.286062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508297, 29.316059, 25.652136>,  <27.644732, 29.211308, 26.312281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508297, 29.316059, 25.652136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.205082, 29.447315, 25.877598>,  <27.023153, 29.526070, 26.012875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.205082, 29.447315, 25.877598>,  <27.508297, 29.316059, 25.652136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205082, 29.447315, 25.877598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012445, 0.856783, -0.515527,
		-0.652094, -0.397803, -0.645389,
		-0.758036, 0.328140, 0.563653,
		26.977671, 29.545757, 26.046694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020630, 29.733896, 25.179836>,  <27.508297, 29.316059, 25.652136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020630, 29.733896, 25.179836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.914982, 29.855976, 25.545807>,  <26.851593, 29.929224, 25.765390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.914982, 29.855976, 25.545807>,  <27.020630, 29.733896, 25.179836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914982, 29.855976, 25.545807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041359, 0.944157, -0.326889,
		-0.963602, -0.124178, -0.236749,
		-0.264121, 0.305199, 0.914928,
		26.835745, 29.947536, 25.820286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448622, 30.203485, 25.055683>,  <27.020630, 29.733896, 25.179836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448622, 30.203485, 25.055683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.565786, 30.299778, 25.425819>,  <26.636086, 30.357553, 25.647902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.565786, 30.299778, 25.425819>,  <26.448622, 30.203485, 25.055683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565786, 30.299778, 25.425819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027980, 0.969529, -0.243372,
		-0.955730, 0.045396, 0.290721,
		0.292910, 0.240733, 0.925339,
		26.653660, 30.371998, 25.703421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.824997, 32.833626, 30.097139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.201836, 32.726601, 30.178005>,  <38.427937, 32.662384, 30.226524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.201836, 32.726601, 30.178005>,  <37.824997, 32.833626, 30.097139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201836, 32.726601, 30.178005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330134, 0.634056, -0.699274,
		0.058917, 0.725523, 0.685672,
		0.942094, -0.267563, 0.202163,
		38.484463, 32.646332, 30.238653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227837, 33.475632, 30.036417>,  <37.824997, 32.833626, 30.097139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227837, 33.475632, 30.036417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.487492, 33.174145, 29.995384>,  <38.643284, 32.993252, 29.970764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.487492, 33.174145, 29.995384>,  <38.227837, 33.475632, 30.036417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487492, 33.174145, 29.995384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462659, 0.498262, -0.733268,
		0.603791, 0.428534, 0.672157,
		0.649140, -0.753720, -0.102580,
		38.682232, 32.948029, 29.964611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844608, 33.807011, 29.890944>,  <38.227837, 33.475632, 30.036417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844608, 33.807011, 29.890944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.923286, 33.441448, 29.748905>,  <38.970493, 33.222111, 29.663681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.923286, 33.441448, 29.748905>,  <38.844608, 33.807011, 29.890944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923286, 33.441448, 29.748905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443977, 0.405936, -0.798812,
		0.874182, -0.000530, 0.485598,
		0.196698, -0.913901, -0.355097,
		38.982296, 33.167278, 29.642376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448486, 33.887695, 29.561821>,  <38.844608, 33.807011, 29.890944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448486, 33.887695, 29.561821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.323349, 33.537308, 29.414959>,  <39.248268, 33.327072, 29.326841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.323349, 33.537308, 29.414959>,  <39.448486, 33.887695, 29.561821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323349, 33.537308, 29.414959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488603, 0.183063, -0.853085,
		0.814492, -0.446271, 0.370734,
		-0.312840, -0.875974, -0.367153,
		39.229496, 33.274517, 29.304813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041451, 33.616825, 29.192183>,  <39.448486, 33.887695, 29.561821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041451, 33.616825, 29.192183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.713322, 33.447254, 29.038631>,  <39.516445, 33.345512, 28.946501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.713322, 33.447254, 29.038631>,  <40.041451, 33.616825, 29.192183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713322, 33.447254, 29.038631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434855, -0.026393, -0.900113,
		0.371447, -0.905313, 0.205996,
		-0.820321, -0.423923, -0.383877,
		39.467224, 33.320076, 28.923468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222977, 33.057888, 28.876148>,  <40.041451, 33.616825, 29.192183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222977, 33.057888, 28.876148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.875668, 33.138863, 28.694988>,  <39.667282, 33.187447, 28.586292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.875668, 33.138863, 28.694988>,  <40.222977, 33.057888, 28.876148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875668, 33.138863, 28.694988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464963, 0.013831, -0.885222,
		-0.172936, -0.979198, -0.106134,
		-0.868276, 0.202435, -0.452898,
		39.615185, 33.199593, 28.559118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310551, 32.764980, 28.240347>,  <40.222977, 33.057888, 28.876148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310551, 32.764980, 28.240347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.991543, 32.999268, 28.182514>,  <39.800140, 33.139839, 28.147814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.991543, 32.999268, 28.182514>,  <40.310551, 32.764980, 28.240347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991543, 32.999268, 28.182514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325243, 0.215573, -0.920731,
		-0.508116, -0.781324, -0.362423,
		-0.797518, 0.585714, -0.144584,
		39.752289, 33.174980, 28.139139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170731, 32.677589, 27.604784>,  <40.310551, 32.764980, 28.240347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170731, 32.677589, 27.604784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.945286, 33.003056, 27.661758>,  <39.810017, 33.198334, 27.695944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.945286, 33.003056, 27.661758>,  <40.170731, 32.677589, 27.604784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945286, 33.003056, 27.661758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214866, 0.310908, -0.925834,
		-0.797604, -0.491208, -0.350061,
		-0.563614, 0.813665, 0.142437,
		39.776203, 33.247154, 27.704489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725666, 32.728802, 27.107124>,  <40.170731, 32.677589, 27.604784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725666, 32.728802, 27.107124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.702423, 33.109356, 27.228107>,  <39.688477, 33.337688, 27.300697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.702423, 33.109356, 27.228107>,  <39.725666, 32.728802, 27.107124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702423, 33.109356, 27.228107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194963, 0.307950, -0.931212,
		-0.979088, 0.004858, -0.203380,
		-0.058107, 0.951390, 0.302457,
		39.684990, 33.394772, 27.318844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429199, 33.067249, 26.577562>,  <39.725666, 32.728802, 27.107124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429199, 33.067249, 26.577562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.630207, 33.349888, 26.776836>,  <39.750813, 33.519470, 26.896400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.630207, 33.349888, 26.776836>,  <39.429199, 33.067249, 26.577562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630207, 33.349888, 26.776836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294333, 0.401983, -0.867051,
		-0.812920, 0.582345, -0.005970,
		0.502523, 0.706600, 0.498184,
		39.780964, 33.561867, 26.926292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303368, 33.529213, 26.153610>,  <39.429199, 33.067249, 26.577562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303368, 33.529213, 26.153610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.610928, 33.658936, 26.374016>,  <39.795464, 33.736771, 26.506260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.610928, 33.658936, 26.374016>,  <39.303368, 33.529213, 26.153610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610928, 33.658936, 26.374016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325986, 0.542532, -0.774204,
		-0.550022, 0.774910, 0.311434,
		0.768901, 0.324306, 0.551014,
		39.841599, 33.756226, 26.539320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344971, 34.304043, 26.022209>,  <39.303368, 33.529213, 26.153610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344971, 34.304043, 26.022209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.701271, 34.169716, 26.144714>,  <39.915051, 34.089119, 26.218218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.701271, 34.169716, 26.144714>,  <39.344971, 34.304043, 26.022209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701271, 34.169716, 26.144714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407874, 0.293331, -0.864636,
		0.200521, 0.895089, 0.398255,
		0.890747, -0.335816, 0.306265,
		39.968494, 34.068970, 26.236593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922527, 34.927002, 26.020842>,  <39.344971, 34.304043, 26.022209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922527, 34.927002, 26.020842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.100868, 34.569206, 26.007587>,  <40.207870, 34.354527, 25.999636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.100868, 34.569206, 26.007587>,  <39.922527, 34.927002, 26.020842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100868, 34.569206, 26.007587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487571, 0.273734, -0.829063,
		0.750661, 0.353483, 0.558173,
		0.445850, -0.894494, -0.033134,
		40.234623, 34.300858, 25.997648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392162, 35.011230, 25.512672>,  <39.922527, 34.927002, 26.020842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392162, 35.011230, 25.512672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.458492, 34.620659, 25.567924>,  <40.498291, 34.386314, 25.601076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.458492, 34.620659, 25.567924>,  <40.392162, 35.011230, 25.512672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458492, 34.620659, 25.567924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514198, -0.033908, -0.857001,
		0.841487, 0.213143, 0.496457,
		0.165829, -0.976433, 0.138131,
		40.508240, 34.327728, 25.609364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032848, 35.023972, 25.217720>,  <40.392162, 35.011230, 25.512672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032848, 35.023972, 25.217720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.884140, 34.653053, 25.200294>,  <40.794914, 34.430500, 25.189838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.884140, 34.653053, 25.200294>,  <41.032848, 35.023972, 25.217720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884140, 34.653053, 25.200294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301016, -0.076026, -0.950584,
		0.878164, -0.366517, 0.307397,
		-0.371775, -0.927300, -0.043564,
		40.772606, 34.374863, 25.187225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522999, 34.668839, 24.958424>,  <41.032848, 35.023972, 25.217720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522999, 34.668839, 24.958424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.212444, 34.440098, 24.852440>,  <41.026112, 34.302853, 24.788851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.212444, 34.440098, 24.852440>,  <41.522999, 34.668839, 24.958424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212444, 34.440098, 24.852440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460926, -0.228466, -0.857526,
		0.429847, -0.787899, 0.440962,
		-0.776389, -0.571856, -0.264958,
		40.979527, 34.268539, 24.772953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815742, 34.168179, 24.482470>,  <41.522999, 34.668839, 24.958424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815742, 34.168179, 24.482470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.420662, 34.157696, 24.420818>,  <41.183613, 34.151405, 24.383827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.420662, 34.157696, 24.420818>,  <41.815742, 34.168179, 24.482470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420662, 34.157696, 24.420818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155816, -0.245551, -0.956779,
		-0.012770, -0.969029, 0.246616,
		-0.987704, -0.026208, -0.154126,
		41.124352, 34.149834, 24.374580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669872, 33.513542, 24.091682>,  <41.815742, 34.168179, 24.482470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669872, 33.513542, 24.091682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.364513, 33.763496, 24.026272>,  <41.181297, 33.913467, 23.987024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.364513, 33.763496, 24.026272>,  <41.669872, 33.513542, 24.091682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364513, 33.763496, 24.026272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282833, 0.095775, -0.954375,
		-0.580712, -0.774821, -0.249853,
		-0.763400, 0.624884, -0.163527,
		41.135494, 33.950962, 23.977213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278580, 33.235096, 23.584930>,  <41.669872, 33.513542, 24.091682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278580, 33.235096, 23.584930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.199875, 33.627277, 23.584736>,  <41.152653, 33.862587, 23.584620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.199875, 33.627277, 23.584736>,  <41.278580, 33.235096, 23.584930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199875, 33.627277, 23.584736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068945, 0.013342, -0.997531,
		-0.978024, -0.196310, -0.070222,
		-0.196762, 0.980451, -0.000486,
		41.140846, 33.921413, 23.584591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887547, 33.235767, 22.984167>,  <41.278580, 33.235096, 23.584930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887547, 33.235767, 22.984167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.964962, 33.623161, 23.046879>,  <41.011410, 33.855598, 23.084505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.964962, 33.623161, 23.046879>,  <40.887547, 33.235767, 22.984167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964962, 33.623161, 23.046879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020082, 0.155857, -0.987576,
		-0.980887, 0.194283, 0.010716,
		0.193539, 0.968485, 0.156779,
		41.023026, 33.913708, 23.093912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474613, 33.710922, 22.615921>,  <40.887547, 33.235767, 22.984167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474613, 33.710922, 22.615921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.790661, 33.948490, 22.676552>,  <40.980289, 34.091030, 22.712931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.790661, 33.948490, 22.676552>,  <40.474613, 33.710922, 22.615921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790661, 33.948490, 22.676552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083341, 0.140897, -0.986510,
		-0.607261, 0.792093, 0.061828,
		0.790119, 0.593916, 0.151575,
		41.027695, 34.126663, 22.722025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968113, 33.977818, 22.301367>,  <40.474613, 33.710922, 22.615921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968113, 33.977818, 22.301367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.717335, 33.714695, 22.134399>,  <39.566868, 33.556824, 22.034220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.717335, 33.714695, 22.134399>,  <39.968113, 33.977818, 22.301367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717335, 33.714695, 22.134399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417773, -0.168374, 0.892813,
		-0.657577, 0.734130, -0.169251,
		-0.626944, -0.657802, -0.417419,
		39.529251, 33.517353, 22.009174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262768, 34.107037, 22.531855>,  <39.968113, 33.977818, 22.301367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262768, 34.107037, 22.531855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.296581, 33.718487, 22.443062>,  <39.316872, 33.485355, 22.389786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.296581, 33.718487, 22.443062>,  <39.262768, 34.107037, 22.531855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296581, 33.718487, 22.443062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541334, -0.231808, 0.808222,
		-0.836547, 0.051844, -0.545437,
		0.084535, -0.971379, -0.221983,
		39.321941, 33.427074, 22.376467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566612, 33.934971, 22.552019>,  <39.262768, 34.107037, 22.531855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566612, 33.934971, 22.552019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.773621, 33.593372, 22.573418>,  <38.897823, 33.388412, 22.586256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.773621, 33.593372, 22.573418>,  <38.566612, 33.934971, 22.552019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773621, 33.593372, 22.573418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585933, -0.308120, 0.749496,
		-0.623586, -0.419222, -0.659843,
		0.517516, -0.854000, 0.053496,
		38.928875, 33.337173, 22.589466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026749, 33.477413, 22.837885>,  <38.566612, 33.934971, 22.552019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026749, 33.477413, 22.837885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359241, 33.258717, 22.878143>,  <38.558739, 33.127499, 22.902298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359241, 33.258717, 22.878143>,  <38.026749, 33.477413, 22.837885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359241, 33.258717, 22.878143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385198, -0.435901, 0.813395,
		-0.400836, -0.714894, -0.572937,
		0.831236, -0.546733, 0.100651,
		38.608612, 33.094696, 22.908337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865425, 32.682301, 22.882587>,  <38.026749, 33.477413, 22.837885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865425, 32.682301, 22.882587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.218895, 32.759056, 23.053375>,  <38.430977, 32.805111, 23.155848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.218895, 32.759056, 23.053375>,  <37.865425, 32.682301, 22.882587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218895, 32.759056, 23.053375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328972, -0.394330, 0.858068,
		0.333022, -0.898711, -0.285332,
		0.883671, 0.191889, 0.426971,
		38.483997, 32.816624, 23.181467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198883, 32.073124, 23.122658>,  <37.865425, 32.682301, 22.882587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198883, 32.073124, 23.122658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.371918, 32.357925, 23.343895>,  <38.475739, 32.528809, 23.476637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.371918, 32.357925, 23.343895>,  <38.198883, 32.073124, 23.122658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371918, 32.357925, 23.343895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295144, -0.467824, 0.833085,
		0.851913, -0.523626, 0.007768,
		0.432591, 0.712008, 0.553091,
		38.501694, 32.571529, 23.509823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539108, 31.634611, 23.620771>,  <38.198883, 32.073124, 23.122658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539108, 31.634611, 23.620771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.508850, 32.006767, 23.764244>,  <38.490696, 32.230061, 23.850328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.508850, 32.006767, 23.764244>,  <38.539108, 31.634611, 23.620771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508850, 32.006767, 23.764244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151430, -0.366261, 0.918108,
		0.985569, 0.015135, 0.168595,
		-0.075646, 0.930389, 0.358683,
		38.486156, 32.285885, 23.871849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829098, 31.645521, 24.335594>,  <38.539108, 31.634611, 23.620771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829098, 31.645521, 24.335594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.624836, 31.989399, 24.330612>,  <38.502277, 32.195724, 24.327623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.624836, 31.989399, 24.330612>,  <38.829098, 31.645521, 24.335594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624836, 31.989399, 24.330612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139368, -0.068471, 0.987871,
		0.848415, 0.506197, 0.154780,
		-0.510655, 0.859696, -0.012456,
		38.471638, 32.247307, 24.326876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061516, 32.021202, 24.963882>,  <38.829098, 31.645521, 24.335594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061516, 32.021202, 24.963882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.697319, 32.152840, 24.863724>,  <38.478802, 32.231823, 24.803629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.697319, 32.152840, 24.863724>,  <39.061516, 32.021202, 24.963882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697319, 32.152840, 24.863724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294008, -0.089363, 0.951616,
		0.290797, 0.940059, 0.178121,
		-0.910492, 0.329096, -0.250399,
		38.424171, 32.251568, 24.788605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857128, 32.504810, 25.544472>,  <39.061516, 32.021202, 24.963882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857128, 32.504810, 25.544472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.515667, 32.403973, 25.362164>,  <38.310791, 32.343472, 25.252779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.515667, 32.403973, 25.362164>,  <38.857128, 32.504810, 25.544472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515667, 32.403973, 25.362164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500118, 0.152350, 0.852450,
		-0.145457, 0.955636, -0.256129,
		-0.853653, -0.252090, -0.455771,
		38.259571, 32.328346, 25.225431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366337, 33.002121, 25.824064>,  <38.857128, 32.504810, 25.544472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366337, 33.002121, 25.824064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.152927, 32.696167, 25.679668>,  <38.024883, 32.512596, 25.593031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.152927, 32.696167, 25.679668>,  <38.366337, 33.002121, 25.824064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152927, 32.696167, 25.679668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551648, -0.008837, 0.834031,
		-0.641124, 0.644111, -0.417230,
		-0.533521, -0.764881, -0.360988,
		37.992870, 32.466702, 25.571373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643150, 33.221745, 25.870705>,  <38.366337, 33.002121, 25.824064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643150, 33.221745, 25.870705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.639744, 32.821918, 25.859348>,  <37.637699, 32.582024, 25.852535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.639744, 32.821918, 25.859348>,  <37.643150, 33.221745, 25.870705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639744, 32.821918, 25.859348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596790, -0.017697, 0.802203,
		-0.802353, 0.023778, -0.596377,
		-0.008520, -0.999561, -0.028390,
		37.637188, 32.522049, 25.850832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947342, 33.063705, 25.982758>,  <37.643150, 33.221745, 25.870705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947342, 33.063705, 25.982758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.112144, 32.709427, 26.068359>,  <37.211025, 32.496861, 26.119720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.112144, 32.709427, 26.068359>,  <36.947342, 33.063705, 25.982758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112144, 32.709427, 26.068359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594897, -0.083570, 0.799446,
		-0.690179, -0.456688, -0.561328,
		0.412007, -0.885693, 0.214004,
		37.235748, 32.443718, 26.132561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299656, 32.592247, 26.236177>,  <36.947342, 33.063705, 25.982758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299656, 32.592247, 26.236177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.657536, 32.461723, 26.358185>,  <36.872261, 32.383408, 26.431389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.657536, 32.461723, 26.358185>,  <36.299656, 32.592247, 26.236177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657536, 32.461723, 26.358185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417864, -0.370178, 0.829673,
		-0.157821, -0.869763, -0.467552,
		0.894697, -0.326312, 0.305021,
		36.925945, 32.363831, 26.449692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221527, 31.868996, 26.497610>,  <36.299656, 32.592247, 26.236177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221527, 31.868996, 26.497610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.553673, 31.996284, 26.680576>,  <36.752960, 32.072659, 26.790356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.553673, 31.996284, 26.680576>,  <36.221527, 31.868996, 26.497610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553673, 31.996284, 26.680576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306229, -0.425204, 0.851719,
		0.465532, -0.847311, -0.255625,
		0.830364, 0.318223, 0.457417,
		36.802780, 32.091751, 26.817802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405304, 31.291325, 26.871025>,  <36.221527, 31.868996, 26.497610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405304, 31.291325, 26.871025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.596581, 31.581749, 27.068680>,  <36.711346, 31.756004, 27.187273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.596581, 31.581749, 27.068680>,  <36.405304, 31.291325, 26.871025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596581, 31.581749, 27.068680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255240, -0.423461, 0.869214,
		0.840350, -0.541772, -0.017174,
		0.478188, 0.726061, 0.494137,
		36.740036, 31.799568, 27.216921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675865, 31.002506, 27.379381>,  <36.405304, 31.291325, 26.871025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675865, 31.002506, 27.379381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.710777, 31.381508, 27.502422>,  <36.731724, 31.608910, 27.576246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.710777, 31.381508, 27.502422>,  <36.675865, 31.002506, 27.379381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710777, 31.381508, 27.502422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083217, -0.300768, 0.950060,
		0.992702, -0.108515, 0.052598,
		0.087276, 0.947504, 0.307603,
		36.736961, 31.665758, 27.594704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174244, 31.069889, 27.950951>,  <36.675865, 31.002506, 27.379381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174244, 31.069889, 27.950951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.919765, 31.378292, 27.962288>,  <36.767078, 31.563334, 27.969090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.919765, 31.378292, 27.962288>,  <37.174244, 31.069889, 27.950951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919765, 31.378292, 27.962288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262687, -0.251005, 0.931661,
		0.725432, 0.585272, 0.362221,
		-0.636194, 0.771008, 0.028344,
		36.728909, 31.609594, 27.970791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406136, 31.406994, 28.518929>,  <37.174244, 31.069889, 27.950951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406136, 31.406994, 28.518929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.031925, 31.531704, 28.452484>,  <36.807400, 31.606529, 28.412617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.031925, 31.531704, 28.452484>,  <37.406136, 31.406994, 28.518929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031925, 31.531704, 28.452484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231509, -0.185910, 0.954904,
		0.266833, 0.931791, 0.246102,
		-0.935523, 0.311775, -0.166111,
		36.751266, 31.625237, 28.402651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294052, 31.839432, 29.115934>,  <37.406136, 31.406994, 28.518929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294052, 31.839432, 29.115934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.935974, 31.718582, 28.984882>,  <36.721127, 31.646072, 28.906252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.935974, 31.718582, 28.984882>,  <37.294052, 31.839432, 29.115934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935974, 31.718582, 28.984882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246584, -0.276590, 0.928813,
		-0.371237, 0.912260, 0.173104,
		-0.895198, -0.302125, -0.327629,
		36.667416, 31.627945, 28.886593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864845, 32.148613, 29.591562>,  <37.294052, 31.839432, 29.115934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864845, 32.148613, 29.591562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.692322, 31.841049, 29.402775>,  <36.588810, 31.656511, 29.289503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.692322, 31.841049, 29.402775>,  <36.864845, 32.148613, 29.591562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692322, 31.841049, 29.402775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240635, -0.406136, 0.881560,
		-0.869523, 0.493794, -0.009858,
		-0.431305, -0.768909, -0.471969,
		36.562931, 31.610376, 29.261185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.110418, 28.182362, 28.108362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.302881, 28.135624, 28.455887>,  <27.418360, 28.107580, 28.664402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.302881, 28.135624, 28.455887>,  <27.110418, 28.182362, 28.108362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302881, 28.135624, 28.455887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434385, -0.892628, 0.120518,
		0.761445, -0.435387, -0.480250,
		0.481157, -0.116846, 0.868812,
		27.447227, 28.100571, 28.716530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277119, 27.467804, 28.145546>,  <27.110418, 28.182362, 28.108362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277119, 27.467804, 28.145546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.303576, 27.605534, 28.520153>,  <27.319450, 27.688171, 28.744917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.303576, 27.605534, 28.520153>,  <27.277119, 27.467804, 28.145546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303576, 27.605534, 28.520153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534176, -0.780530, 0.324699,
		0.842782, -0.521743, 0.132301,
		0.066144, 0.344322, 0.936519,
		27.323420, 27.708830, 28.801109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397038, 26.834047, 28.553349>,  <27.277119, 27.467804, 28.145546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397038, 26.834047, 28.553349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.259989, 27.109749, 28.808704>,  <27.177759, 27.275169, 28.961918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.259989, 27.109749, 28.808704>,  <27.397038, 26.834047, 28.553349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259989, 27.109749, 28.808704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668156, -0.656464, 0.350174,
		0.660438, -0.306566, 0.685448,
		-0.342621, 0.689254, 0.638388,
		27.157202, 27.316525, 29.000221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228394, 26.458265, 28.997845>,  <27.397038, 26.834047, 28.553349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228394, 26.458265, 28.997845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.044170, 26.790451, 29.123203>,  <26.933636, 26.989761, 29.198418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.044170, 26.790451, 29.123203>,  <27.228394, 26.458265, 28.997845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044170, 26.790451, 29.123203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581918, -0.549100, 0.599883,
		0.670267, 0.093910, 0.736154,
		-0.460557, 0.830463, 0.313396,
		26.906004, 27.039591, 29.217222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190674, 26.398233, 29.678921>,  <27.228394, 26.458265, 28.997845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190674, 26.398233, 29.678921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.924019, 26.684704, 29.596275>,  <26.764025, 26.856586, 29.546688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.924019, 26.684704, 29.596275>,  <27.190674, 26.398233, 29.678921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924019, 26.684704, 29.596275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683714, -0.477128, 0.552162,
		0.296864, 0.509356, 0.807730,
		-0.666638, 0.716174, -0.206612,
		26.724028, 26.899555, 29.534292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821823, 26.617950, 30.343149>,  <27.190674, 26.398233, 29.678921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821823, 26.617950, 30.343149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.581539, 26.735107, 30.045597>,  <26.437368, 26.805403, 29.867065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.581539, 26.735107, 30.045597>,  <26.821823, 26.617950, 30.343149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581539, 26.735107, 30.045597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797603, -0.283057, 0.532643,
		-0.054553, 0.913286, 0.403648,
		-0.600711, 0.292894, -0.743882,
		26.401325, 26.822975, 29.822433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269693, 27.044529, 30.660358>,  <26.821823, 26.617950, 30.343149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269693, 27.044529, 30.660358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.121901, 26.896866, 30.319252>,  <26.033224, 26.808268, 30.114588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.121901, 26.896866, 30.319252>,  <26.269693, 27.044529, 30.660358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121901, 26.896866, 30.319252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759611, -0.408599, 0.506002,
		-0.535233, 0.834728, -0.129445,
		-0.369483, -0.369156, -0.852764,
		26.011055, 26.786119, 30.063423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518473, 27.347431, 30.581697>,  <26.269693, 27.044529, 30.660358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518473, 27.347431, 30.581697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.521721, 27.031391, 30.336529>,  <25.523670, 26.841766, 30.189426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.521721, 27.031391, 30.336529>,  <25.518473, 27.347431, 30.581697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521721, 27.031391, 30.336529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721980, -0.428721, 0.543087,
		-0.691867, 0.438109, -0.573917,
		0.008119, -0.790100, -0.612924,
		25.524157, 26.794361, 30.152651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.860086, 27.179047, 30.429218>,  <25.518473, 27.347431, 30.581697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.860086, 27.179047, 30.429218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.034044, 26.832584, 30.330719>,  <25.138418, 26.624706, 30.271620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.034044, 26.832584, 30.330719>,  <24.860086, 27.179047, 30.429218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.034044, 26.832584, 30.330719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657069, -0.492230, 0.570937,
		-0.615733, -0.086494, -0.783193,
		0.434894, -0.866158, -0.246250,
		25.164513, 26.572737, 30.256844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.327732, 26.800463, 30.223042>,  <24.860086, 27.179047, 30.429218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.327732, 26.800463, 30.223042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.619600, 26.541229, 30.310280>,  <24.794722, 26.385689, 30.362623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.619600, 26.541229, 30.310280>,  <24.327732, 26.800463, 30.223042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.619600, 26.541229, 30.310280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672912, -0.623872, 0.397458,
		-0.121522, -0.436773, -0.891326,
		0.729672, -0.648084, 0.218096,
		24.838503, 26.346804, 30.375708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.160543, 26.183002, 29.906193>,  <24.327732, 26.800463, 30.223042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.160543, 26.183002, 29.906193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.405224, 26.062511, 30.198792>,  <24.552032, 25.990217, 30.374350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.405224, 26.062511, 30.198792>,  <24.160543, 26.183002, 29.906193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.405224, 26.062511, 30.198792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722800, -0.588639, 0.362028,
		0.321534, -0.750177, -0.577798,
		0.611699, -0.301227, 0.731496,
		24.588734, 25.972143, 30.418240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.033749, 25.425573, 30.017624>,  <24.160543, 26.183002, 29.906193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.033749, 25.425573, 30.017624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.207924, 25.558071, 30.352448>,  <24.312429, 25.637569, 30.553343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.207924, 25.558071, 30.352448>,  <24.033749, 25.425573, 30.017624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.207924, 25.558071, 30.352448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597252, -0.589425, 0.543938,
		0.673561, -0.736788, -0.058821,
		0.435437, 0.331244, 0.837061,
		24.338554, 25.657444, 30.603565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.120455, 24.883785, 30.469034>,  <24.033749, 25.425573, 30.017624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.120455, 24.883785, 30.469034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.116920, 25.182575, 30.734951>,  <24.114799, 25.361849, 30.894501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.116920, 25.182575, 30.734951>,  <24.120455, 24.883785, 30.469034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.116920, 25.182575, 30.734951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655569, -0.506342, 0.560221,
		0.755084, -0.430867, 0.494168,
		-0.008838, 0.746975, 0.664794,
		24.114269, 25.406668, 30.934389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.398195, 24.660728, 31.139099>,  <24.120455, 24.883785, 30.469034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.398195, 24.660728, 31.139099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.121096, 24.948231, 31.162712>,  <23.954836, 25.120733, 31.176880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.121096, 24.948231, 31.162712>,  <24.398195, 24.660728, 31.139099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.121096, 24.948231, 31.162712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584308, -0.607371, 0.538224,
		0.422708, 0.338361, 0.840732,
		-0.692750, 0.718758, 0.059034,
		23.913271, 25.163858, 31.180422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.260668, 23.886312, 31.094976>,  <24.398195, 24.660728, 31.139099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.260668, 23.886312, 31.094976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.516237, 23.662506, 31.306152>,  <24.669579, 23.528223, 31.432858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.516237, 23.662506, 31.306152>,  <24.260668, 23.886312, 31.094976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516237, 23.662506, 31.306152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419521, -0.321821, -0.848783,
		0.644808, 0.763790, 0.029109,
		0.638924, -0.559514, 0.527939,
		24.707914, 23.494652, 31.464535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930908, 24.128769, 30.905746>,  <24.260668, 23.886312, 31.094976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930908, 24.128769, 30.905746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.952091, 23.744530, 31.014885>,  <24.964800, 23.513987, 31.080368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.952091, 23.744530, 31.014885>,  <24.930908, 24.128769, 30.905746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952091, 23.744530, 31.014885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495630, -0.211918, -0.842283,
		0.866918, 0.179835, 0.464879,
		0.052956, -0.960599, 0.272848,
		24.967978, 23.456350, 31.096739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655094, 23.939283, 30.710670>,  <24.930908, 24.128769, 30.905746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655094, 23.939283, 30.710670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.431885, 23.607681, 30.725422>,  <25.297958, 23.408720, 30.734272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.431885, 23.607681, 30.725422>,  <25.655094, 23.939283, 30.710670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431885, 23.607681, 30.725422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532232, -0.391648, -0.750561,
		0.636662, -0.399203, 0.659772,
		-0.558025, -0.829004, 0.036879,
		25.264477, 23.358980, 30.736486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124100, 23.378534, 30.614048>,  <25.655094, 23.939283, 30.710670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124100, 23.378534, 30.614048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.768307, 23.220818, 30.521652>,  <25.554831, 23.126188, 30.466215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.768307, 23.220818, 30.521652>,  <26.124100, 23.378534, 30.614048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768307, 23.220818, 30.521652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310580, -0.150824, -0.938505,
		0.335206, -0.906524, 0.256614,
		-0.889481, -0.394292, -0.230991,
		25.501463, 23.102530, 30.452354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.250219, 22.777737, 30.247545>,  <26.124100, 23.378534, 30.614048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.250219, 22.777737, 30.247545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.878551, 22.892231, 30.153980>,  <25.655550, 22.960928, 30.097841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.878551, 22.892231, 30.153980>,  <26.250219, 22.777737, 30.247545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878551, 22.892231, 30.153980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207080, -0.121118, -0.970798,
		-0.306207, -0.950474, 0.053266,
		-0.929169, 0.286234, -0.233912,
		25.599800, 22.978102, 30.083807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158773, 22.372276, 29.706306>,  <26.250219, 22.777737, 30.247545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158773, 22.372276, 29.706306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.898411, 22.675076, 29.683414>,  <25.742193, 22.856756, 29.669680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.898411, 22.675076, 29.683414>,  <26.158773, 22.372276, 29.706306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898411, 22.675076, 29.683414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216642, 0.112969, -0.969693,
		-0.727592, -0.643576, -0.237530,
		-0.650905, 0.756999, -0.057230,
		25.703140, 22.902176, 29.666245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737837, 22.398764, 29.024517>,  <26.158773, 22.372276, 29.706306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737837, 22.398764, 29.024517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.726040, 22.767708, 29.178600>,  <25.718962, 22.989075, 29.271049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.726040, 22.767708, 29.178600>,  <25.737837, 22.398764, 29.024517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726040, 22.767708, 29.178600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242310, 0.380477, -0.892481,
		-0.969751, 0.067020, -0.234717,
		-0.029490, 0.922358, 0.385208,
		25.717194, 23.044415, 29.294163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.522842, 22.791237, 28.426891>,  <25.737837, 22.398764, 29.024517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.522842, 22.791237, 28.426891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.643627, 23.052670, 28.704494>,  <25.716099, 23.209530, 28.871056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.643627, 23.052670, 28.704494>,  <25.522842, 22.791237, 28.426891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643627, 23.052670, 28.704494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154628, 0.684772, -0.712163,
		-0.940695, 0.322361, 0.105714,
		0.301964, 0.653583, 0.694008,
		25.734217, 23.248745, 28.912697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.249155, 23.445747, 28.229233>,  <25.522842, 22.791237, 28.426891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.249155, 23.445747, 28.229233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.538828, 23.552639, 28.483524>,  <25.712631, 23.616774, 28.636099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.538828, 23.552639, 28.483524>,  <25.249155, 23.445747, 28.229233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.538828, 23.552639, 28.483524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167073, 0.826414, -0.537705,
		-0.669066, 0.495608, 0.553826,
		0.724181, 0.267231, 0.635728,
		25.756083, 23.632809, 28.674242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149673, 24.129208, 28.452435>,  <25.249155, 23.445747, 28.229233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149673, 24.129208, 28.452435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.536129, 24.039440, 28.503368>,  <25.768002, 23.985580, 28.533930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.536129, 24.039440, 28.503368>,  <25.149673, 24.129208, 28.452435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536129, 24.039440, 28.503368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254632, 0.749467, -0.611115,
		0.041710, 0.622845, 0.781232,
		0.966138, -0.224417, 0.127337,
		25.825970, 23.972115, 28.541569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380299, 24.691931, 28.691919>,  <25.149673, 24.129208, 28.452435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380299, 24.691931, 28.691919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.690258, 24.503712, 28.523102>,  <25.876234, 24.390781, 28.421812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.690258, 24.503712, 28.523102>,  <25.380299, 24.691931, 28.691919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690258, 24.503712, 28.523102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165779, 0.795619, -0.582673,
		0.609960, 0.381546, 0.694530,
		0.774897, -0.470546, -0.422044,
		25.922728, 24.362549, 28.396488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931263, 25.179274, 28.721962>,  <25.380299, 24.691931, 28.691919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931263, 25.179274, 28.721962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.049349, 24.913422, 28.447411>,  <26.120199, 24.753910, 28.282681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.049349, 24.913422, 28.447411>,  <25.931263, 25.179274, 28.721962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049349, 24.913422, 28.447411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553752, 0.704453, -0.443964,
		0.778593, -0.249019, 0.576005,
		0.295214, -0.664631, -0.686377,
		26.137913, 24.714033, 28.241497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681406, 25.238850, 28.629271>,  <25.931263, 25.179274, 28.721962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681406, 25.238850, 28.629271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.525780, 25.117260, 28.281425>,  <26.432404, 25.044306, 28.072718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.525780, 25.117260, 28.281425>,  <26.681406, 25.238850, 28.629271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525780, 25.117260, 28.281425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475505, 0.742247, -0.472192,
		0.789003, -0.597218, -0.144240,
		-0.389063, -0.303974, -0.869615,
		26.409061, 25.026068, 28.020540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114847, 25.536217, 28.163485>,  <26.681406, 25.238850, 28.629271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114847, 25.536217, 28.163485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.823671, 25.402958, 27.923779>,  <26.648966, 25.323002, 27.779955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.823671, 25.402958, 27.923779>,  <27.114847, 25.536217, 28.163485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823671, 25.402958, 27.923779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291644, 0.640558, -0.710372,
		0.620515, -0.691883, -0.369133,
		-0.727946, -0.333141, -0.599259,
		26.605289, 25.303013, 27.743999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783087, 25.168486, 28.043173>,  <27.114847, 25.536217, 28.163485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783087, 25.168486, 28.043173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.178461, 25.146358, 28.099655>,  <28.415686, 25.133081, 28.133545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.178461, 25.146358, 28.099655>,  <27.783087, 25.168486, 28.043173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178461, 25.146358, 28.099655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140938, -0.678863, 0.720612,
		0.055997, -0.732178, -0.678807,
		0.988434, -0.055318, 0.141206,
		28.474991, 25.129763, 28.142017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810135, 24.557753, 28.359690>,  <27.783087, 25.168486, 28.043173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810135, 24.557753, 28.359690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.174524, 24.713718, 28.413502>,  <28.393158, 24.807297, 28.445789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.174524, 24.713718, 28.413502>,  <27.810135, 24.557753, 28.359690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174524, 24.713718, 28.413502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178301, -0.666370, 0.723989,
		0.371940, -0.635547, -0.676566,
		0.910972, 0.389912, 0.134531,
		28.447815, 24.830692, 28.453861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360130, 24.006105, 28.311369>,  <27.810135, 24.557753, 28.359690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360130, 24.006105, 28.311369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.507978, 24.312267, 28.522095>,  <28.596687, 24.495964, 28.648531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.507978, 24.312267, 28.522095>,  <28.360130, 24.006105, 28.311369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507978, 24.312267, 28.522095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036289, -0.578425, 0.814928,
		0.928474, -0.282096, -0.241573,
		0.369620, 0.765406, 0.526816,
		28.618864, 24.541889, 28.680140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871023, 23.756872, 28.609951>,  <28.360130, 24.006105, 28.311369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871023, 23.756872, 28.609951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.735540, 24.059940, 28.833096>,  <28.654251, 24.241781, 28.966984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.735540, 24.059940, 28.833096>,  <28.871023, 23.756872, 28.609951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735540, 24.059940, 28.833096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069962, -0.611549, 0.788107,
		0.938287, 0.227909, 0.260145,
		-0.338708, 0.757671, 0.557864,
		28.633928, 24.287241, 29.000454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241005, 23.713175, 29.212540>,  <28.871023, 23.756872, 28.609951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241005, 23.713175, 29.212540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.922134, 23.934650, 29.308823>,  <28.730812, 24.067535, 29.366592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.922134, 23.934650, 29.308823>,  <29.241005, 23.713175, 29.212540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922134, 23.934650, 29.308823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071507, -0.482470, 0.872989,
		0.599498, 0.678713, 0.424206,
		-0.797176, 0.553688, 0.240707,
		28.682981, 24.100758, 29.381035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309671, 24.007935, 29.939829>,  <29.241005, 23.713175, 29.212540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309671, 24.007935, 29.939829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.921974, 23.997345, 29.841961>,  <28.689356, 23.990992, 29.783239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.921974, 23.997345, 29.841961>,  <29.309671, 24.007935, 29.939829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921974, 23.997345, 29.841961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213305, -0.405493, 0.888862,
		-0.122744, 0.913714, 0.387375,
		-0.969244, -0.026474, -0.244672,
		28.631201, 23.989403, 29.768559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967529, 24.155756, 30.575802>,  <29.309671, 24.007935, 29.939829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967529, 24.155756, 30.575802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.635784, 24.013527, 30.403419>,  <28.436737, 23.928190, 30.299990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.635784, 24.013527, 30.403419>,  <28.967529, 24.155756, 30.575802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635784, 24.013527, 30.403419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312096, -0.344937, 0.885220,
		-0.463411, 0.868670, 0.175106,
		-0.829365, -0.355571, -0.430956,
		28.386974, 23.906857, 30.274132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003372, 24.747431, 31.112785>,  <28.967529, 24.155756, 30.575802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003372, 24.747431, 31.112785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.349005, 24.810524, 31.303986>,  <29.556385, 24.848381, 31.418705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.349005, 24.810524, 31.303986>,  <29.003372, 24.747431, 31.112785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349005, 24.810524, 31.303986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300913, 0.599380, -0.741751,
		-0.403504, 0.784769, 0.470449,
		0.864081, 0.157735, 0.477999,
		29.608229, 24.857845, 31.447386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054440, 25.528627, 31.096693>,  <29.003372, 24.747431, 31.112785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054440, 25.528627, 31.096693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.419775, 25.393005, 31.186897>,  <29.638977, 25.311632, 31.241020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.419775, 25.393005, 31.186897>,  <29.054440, 25.528627, 31.096693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419775, 25.393005, 31.186897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394998, 0.603143, -0.692961,
		0.098936, 0.721984, 0.684800,
		0.913339, -0.339053, 0.225509,
		29.693777, 25.291288, 31.254551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425024, 26.069536, 31.249460>,  <29.054440, 25.528627, 31.096693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425024, 26.069536, 31.249460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.692625, 25.798683, 31.126869>,  <29.853186, 25.636171, 31.053314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.692625, 25.798683, 31.126869>,  <29.425024, 26.069536, 31.249460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692625, 25.798683, 31.126869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425363, 0.686945, -0.589214,
		0.609509, 0.263820, 0.747594,
		0.669003, -0.677130, -0.306480,
		29.893326, 25.595545, 31.034925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047354, 26.498114, 31.142389>,  <29.425024, 26.069536, 31.249460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047354, 26.498114, 31.142389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.150965, 26.154289, 30.966183>,  <30.213131, 25.947994, 30.860458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.150965, 26.154289, 30.966183>,  <30.047354, 26.498114, 31.142389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150965, 26.154289, 30.966183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687971, 0.484317, -0.540493,
		0.677938, -0.163060, 0.716806,
		0.259028, -0.859563, -0.440517,
		30.228674, 25.896420, 30.834028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779785, 26.505890, 31.063911>,  <30.047354, 26.498114, 31.142389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779785, 26.505890, 31.063911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.677683, 26.251747, 30.772388>,  <30.616421, 26.099260, 30.597475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.677683, 26.251747, 30.772388>,  <30.779785, 26.505890, 31.063911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677683, 26.251747, 30.772388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557234, 0.519333, -0.647907,
		0.790148, -0.571500, 0.221480,
		-0.255257, -0.635359, -0.728809,
		30.601105, 26.061140, 30.553745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372904, 26.517895, 30.665890>,  <30.779785, 26.505890, 31.063911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372904, 26.517895, 30.665890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117731, 26.338772, 30.415287>,  <30.964628, 26.231298, 30.264925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117731, 26.338772, 30.415287>,  <31.372904, 26.517895, 30.665890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117731, 26.338772, 30.415287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399256, 0.503349, -0.766312,
		0.658513, -0.738991, -0.142312,
		-0.637931, -0.447807, -0.626508,
		30.926352, 26.204430, 30.227335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770117, 26.166323, 30.108393>,  <31.372904, 26.517895, 30.665890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770117, 26.166323, 30.108393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.399181, 26.244152, 29.980526>,  <31.176620, 26.290850, 29.903807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.399181, 26.244152, 29.980526>,  <31.770117, 26.166323, 30.108393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399181, 26.244152, 29.980526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360485, 0.235122, -0.902645,
		-0.100470, -0.952292, -0.288178,
		-0.927338, 0.194573, -0.319664,
		31.120979, 26.302525, 29.884626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.967976, 24.906145, 33.519474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.806410, 25.144669, 33.241982>,  <25.709471, 25.287783, 33.075485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.806410, 25.144669, 33.241982>,  <25.967976, 24.906145, 33.519474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806410, 25.144669, 33.241982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741166, 0.657830, 0.133917,
		0.536215, -0.460080, -0.707672,
		-0.403915, 0.596310, -0.693734,
		25.685236, 25.323563, 33.033863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515186, 25.265532, 33.037579>,  <25.967976, 24.906145, 33.519474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515186, 25.265532, 33.037579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.191624, 25.498898, 33.008469>,  <25.997486, 25.638918, 32.991001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.191624, 25.498898, 33.008469>,  <26.515186, 25.265532, 33.037579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191624, 25.498898, 33.008469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587933, 0.803220, -0.095776,
		0.002579, -0.120261, -0.992739,
		-0.808906, 0.583417, -0.072777,
		25.948952, 25.673923, 32.986637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444153, 25.480982, 32.356030>,  <26.515186, 25.265532, 33.037579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444153, 25.480982, 32.356030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.257212, 25.744652, 32.591679>,  <26.145046, 25.902853, 32.733070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.257212, 25.744652, 32.591679>,  <26.444153, 25.480982, 32.356030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257212, 25.744652, 32.591679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639391, 0.712224, -0.289682,
		-0.610541, 0.241299, -0.754330,
		-0.467352, 0.659175, 0.589126,
		26.117006, 25.942404, 32.768417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377874, 26.109140, 31.997568>,  <26.444153, 25.480982, 32.356030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377874, 26.109140, 31.997568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.334265, 26.231606, 32.375854>,  <26.308100, 26.305084, 32.602825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.334265, 26.231606, 32.375854>,  <26.377874, 26.109140, 31.997568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334265, 26.231606, 32.375854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640594, 0.749126, -0.168671,
		-0.760101, 0.587430, -0.277799,
		-0.109025, 0.306163, 0.945715,
		26.301558, 26.323454, 32.659569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188517, 26.911125, 31.927187>,  <26.377874, 26.109140, 31.997568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188517, 26.911125, 31.927187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.311283, 26.848366, 32.302673>,  <26.384943, 26.810711, 32.527966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.311283, 26.848366, 32.302673>,  <26.188517, 26.911125, 31.927187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311283, 26.848366, 32.302673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424851, 0.905178, 0.012385,
		-0.851648, 0.395013, 0.344470,
		0.306915, -0.156897, 0.938716,
		26.403358, 26.801296, 32.584290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872587, 27.354742, 32.368988>,  <26.188517, 26.911125, 31.927187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872587, 27.354742, 32.368988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.210836, 27.265686, 32.563038>,  <26.413786, 27.212252, 32.679470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.210836, 27.265686, 32.563038>,  <25.872587, 27.354742, 32.368988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210836, 27.265686, 32.563038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231903, 0.971841, 0.041780,
		-0.480770, 0.077173, 0.873444,
		0.845625, -0.222641, 0.485129,
		26.464523, 27.198895, 32.708576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011152, 27.935415, 32.638348>,  <25.872587, 27.354742, 32.368988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011152, 27.935415, 32.638348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.351877, 27.754116, 32.743404>,  <26.556313, 27.645336, 32.806438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.351877, 27.754116, 32.743404>,  <26.011152, 27.935415, 32.638348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351877, 27.754116, 32.743404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421096, 0.890683, 0.171354,
		-0.311594, -0.035365, 0.949557,
		0.851814, -0.453247, 0.262639,
		26.607422, 27.618141, 32.822197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326952, 28.286633, 33.277988>,  <26.011152, 27.935415, 32.638348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326952, 28.286633, 33.277988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.594191, 28.091236, 33.053478>,  <26.754534, 27.973999, 32.918774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.594191, 28.091236, 33.053478>,  <26.326952, 28.286633, 33.277988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594191, 28.091236, 33.053478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588380, 0.808578, -0.003366,
		0.455475, -0.327992, 0.827625,
		0.668095, -0.488491, -0.561271,
		26.794619, 27.944689, 32.885098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933990, 28.511978, 33.538486>,  <26.326952, 28.286633, 33.277988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933990, 28.511978, 33.538486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.038792, 28.357037, 33.184917>,  <27.101673, 28.264072, 32.972778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.038792, 28.357037, 33.184917>,  <26.933990, 28.511978, 33.538486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038792, 28.357037, 33.184917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778753, 0.625827, -0.043418,
		0.569998, -0.676978, 0.465621,
		0.262005, -0.387352, -0.883918,
		27.117393, 28.240831, 32.919743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672625, 28.450846, 33.566032>,  <26.933990, 28.511978, 33.538486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672625, 28.450846, 33.566032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.530230, 28.473572, 33.192928>,  <27.444792, 28.487207, 32.969067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.530230, 28.473572, 33.192928>,  <27.672625, 28.450846, 33.566032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530230, 28.473572, 33.192928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614729, 0.766017, -0.187953,
		0.703832, -0.640304, -0.307621,
		-0.355990, 0.056816, -0.932761,
		27.423433, 28.490616, 32.913101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283112, 28.701975, 33.177082>,  <27.672625, 28.450846, 33.566032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283112, 28.701975, 33.177082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.973511, 28.779793, 32.936058>,  <27.787750, 28.826483, 32.791443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.973511, 28.779793, 32.936058>,  <28.283112, 28.701975, 33.177082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973511, 28.779793, 32.936058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456794, 0.830559, -0.318607,
		0.438474, -0.521846, -0.731722,
		-0.774002, 0.194546, -0.602555,
		27.741310, 28.838156, 32.755291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585451, 28.910009, 32.540886>,  <28.283112, 28.701975, 33.177082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585451, 28.910009, 32.540886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.215990, 29.063065, 32.532375>,  <27.994314, 29.154898, 32.527267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.215990, 29.063065, 32.532375>,  <28.585451, 28.910009, 32.540886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215990, 29.063065, 32.532375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374590, 0.889710, -0.260957,
		-0.080922, -0.249004, -0.965116,
		-0.923652, 0.382640, -0.021278,
		27.938894, 29.177856, 32.525993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795357, 28.554789, 31.896610>,  <28.585451, 28.910009, 32.540886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795357, 28.554789, 31.896610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.164141, 28.416351, 31.966133>,  <29.385412, 28.333290, 32.007847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.164141, 28.416351, 31.966133>,  <28.795357, 28.554789, 31.896610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164141, 28.416351, 31.966133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383994, -0.758540, 0.526465,
		-0.050367, -0.552120, -0.832242,
		0.921961, -0.346092, 0.173806,
		29.440729, 28.312523, 32.018276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699518, 27.889942, 32.019016>,  <28.795357, 28.554789, 31.896610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699518, 27.889942, 32.019016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.074421, 27.927181, 32.153408>,  <29.299362, 27.949524, 32.234043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.074421, 27.927181, 32.153408>,  <28.699518, 27.889942, 32.019016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074421, 27.927181, 32.153408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144937, -0.772418, 0.618356,
		0.317083, -0.628254, -0.710461,
		0.937258, 0.093098, 0.335978,
		29.355598, 27.955111, 32.254200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008919, 27.222574, 32.104492>,  <28.699518, 27.889942, 32.019016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008919, 27.222574, 32.104492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.204720, 27.464867, 32.355404>,  <29.322201, 27.610243, 32.505951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.204720, 27.464867, 32.355404>,  <29.008919, 27.222574, 32.104492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204720, 27.464867, 32.355404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118803, -0.666319, 0.736142,
		0.863871, -0.434866, -0.254202,
		0.489503, 0.605732, 0.627277,
		29.351570, 27.646585, 32.543587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452471, 26.707785, 32.439659>,  <29.008919, 27.222574, 32.104492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452471, 26.707785, 32.439659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.469503, 27.021343, 32.687431>,  <29.479723, 27.209478, 32.836094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.469503, 27.021343, 32.687431>,  <29.452471, 26.707785, 32.439659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469503, 27.021343, 32.687431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049201, -0.617592, 0.784959,
		0.997881, -0.063901, 0.012270,
		0.042581, 0.783899, 0.619427,
		29.482277, 27.256514, 32.873260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935026, 26.518934, 32.951363>,  <29.452471, 26.707785, 32.439659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935026, 26.518934, 32.951363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.746807, 26.813515, 33.145771>,  <29.633875, 26.990263, 33.262417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.746807, 26.813515, 33.145771>,  <29.935026, 26.518934, 32.951363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746807, 26.813515, 33.145771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202204, -0.626156, 0.753022,
		0.858892, 0.256059, 0.443551,
		-0.470550, 0.736453, 0.486024,
		29.605642, 27.034451, 33.291580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013542, 26.218801, 33.658028>,  <29.935026, 26.518934, 32.951363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013542, 26.218801, 33.658028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.745209, 26.515224, 33.669430>,  <29.584208, 26.693079, 33.676273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.745209, 26.515224, 33.669430>,  <30.013542, 26.218801, 33.658028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745209, 26.515224, 33.669430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357848, -0.357127, 0.862789,
		0.649558, 0.568587, 0.504760,
		-0.670834, 0.741059, 0.028507,
		29.543959, 26.737543, 33.677982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070419, 26.600340, 34.317135>,  <30.013542, 26.218801, 33.658028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070419, 26.600340, 34.317135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.700468, 26.639812, 34.170242>,  <29.478497, 26.663496, 34.082108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.700468, 26.639812, 34.170242>,  <30.070419, 26.600340, 34.317135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700468, 26.639812, 34.170242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365827, -0.494458, 0.788468,
		-0.103775, 0.863582, 0.493414,
		-0.924879, 0.098681, -0.367234,
		29.423004, 26.669416, 34.060074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689693, 26.773333, 34.838764>,  <30.070419, 26.600340, 34.317135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689693, 26.773333, 34.838764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.436750, 26.611500, 34.574509>,  <29.284985, 26.514400, 34.415955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.436750, 26.611500, 34.574509>,  <29.689693, 26.773333, 34.838764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436750, 26.611500, 34.574509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289437, -0.667639, 0.685918,
		-0.718575, 0.624958, 0.305087,
		-0.632358, -0.404580, -0.660635,
		29.247044, 26.490126, 34.376320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043446, 26.565063, 35.202003>,  <29.689693, 26.773333, 34.838764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043446, 26.565063, 35.202003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.050522, 26.342152, 34.869949>,  <29.054768, 26.208405, 34.670715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.050522, 26.342152, 34.869949>,  <29.043446, 26.565063, 35.202003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050522, 26.342152, 34.869949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437773, -0.750770, 0.494672,
		-0.898912, 0.354659, -0.257244,
		0.017691, -0.557281, -0.830136,
		29.055828, 26.174967, 34.620907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307188, 26.291868, 35.172092>,  <29.043446, 26.565063, 35.202003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307188, 26.291868, 35.172092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.544127, 26.053455, 34.955254>,  <28.686291, 25.910408, 34.825150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.544127, 26.053455, 34.955254>,  <28.307188, 26.291868, 35.172092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544127, 26.053455, 34.955254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551529, -0.790457, 0.266444,
		-0.587316, 0.141157, -0.796953,
		0.592348, -0.596030, -0.542100,
		28.721830, 25.874647, 34.792622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868898, 25.790024, 34.949524>,  <28.307188, 26.291868, 35.172092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868898, 25.790024, 34.949524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.227623, 25.625851, 34.883465>,  <28.442858, 25.527346, 34.843830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.227623, 25.625851, 34.883465>,  <27.868898, 25.790024, 34.949524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227623, 25.625851, 34.883465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393779, -0.910679, 0.124906,
		-0.201661, -0.046986, -0.978328,
		0.896811, -0.410434, -0.165146,
		28.496666, 25.502720, 34.833920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769346, 25.202522, 34.513508>,  <27.868898, 25.790024, 34.949524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769346, 25.202522, 34.513508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.111450, 25.146564, 34.713093>,  <28.316711, 25.112989, 34.832844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.111450, 25.146564, 34.713093>,  <27.769346, 25.202522, 34.513508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111450, 25.146564, 34.713093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230998, -0.964835, 0.125437,
		0.463867, -0.222540, -0.857498,
		0.855259, -0.139894, 0.498961,
		28.368029, 25.104597, 34.862782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008049, 24.469259, 34.254047>,  <27.769346, 25.202522, 34.513508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008049, 24.469259, 34.254047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.216143, 24.512577, 34.592899>,  <28.341000, 24.538568, 34.796211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.216143, 24.512577, 34.592899>,  <28.008049, 24.469259, 34.254047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216143, 24.512577, 34.592899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222289, -0.940567, 0.256752,
		0.824586, -0.321879, -0.465244,
		0.520236, 0.108296, 0.847129,
		28.372213, 24.545065, 34.847038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553934, 23.912407, 34.332989>,  <28.008049, 24.469259, 34.254047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553934, 23.912407, 34.332989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.494846, 24.045753, 34.705452>,  <28.459394, 24.125761, 34.928928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.494846, 24.045753, 34.705452>,  <28.553934, 23.912407, 34.332989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494846, 24.045753, 34.705452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240667, -0.925299, 0.293089,
		0.959301, -0.180803, 0.216913,
		-0.147718, 0.333365, 0.931154,
		28.450531, 24.145763, 34.984798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149817, 24.268566, 34.491615>,  <28.553934, 23.912407, 34.332989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149817, 24.268566, 34.491615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.219824, 23.950985, 34.258717>,  <29.261829, 23.760437, 34.118977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.219824, 23.950985, 34.258717>,  <29.149817, 24.268566, 34.491615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219824, 23.950985, 34.258717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298232, 0.606342, -0.737162,
		0.938310, -0.044627, 0.342903,
		0.175019, -0.793951, -0.582246,
		29.272329, 23.712799, 34.084042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776342, 24.457380, 34.021442>,  <29.149817, 24.268566, 34.491615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776342, 24.457380, 34.021442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.672985, 24.123066, 33.827663>,  <29.610970, 23.922478, 33.711395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.672985, 24.123066, 33.827663>,  <29.776342, 24.457380, 34.021442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672985, 24.123066, 33.827663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214740, 0.439242, -0.872327,
		0.941870, -0.329436, 0.065978,
		-0.258395, -0.835786, -0.484452,
		29.595467, 23.872330, 33.682327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388474, 24.183764, 33.538326>,  <29.776342, 24.457380, 34.021442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388474, 24.183764, 33.538326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.029514, 24.066975, 33.406002>,  <29.814138, 23.996901, 33.326607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.029514, 24.066975, 33.406002>,  <30.388474, 24.183764, 33.538326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029514, 24.066975, 33.406002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183074, 0.435766, -0.881245,
		0.401450, -0.851388, -0.337603,
		-0.897397, -0.291970, -0.330805,
		29.760296, 23.979383, 33.306759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573086, 23.936970, 32.956818>,  <30.388474, 24.183764, 33.538326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573086, 23.936970, 32.956818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.177279, 23.992840, 32.942146>,  <29.939795, 24.026361, 32.933346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.177279, 23.992840, 32.942146>,  <30.573086, 23.936970, 32.956818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177279, 23.992840, 32.942146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087171, 0.375270, -0.922808,
		-0.115129, -0.916332, -0.383512,
		-0.989519, 0.139673, -0.036673,
		29.880423, 24.034742, 32.931145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267576, 23.645988, 32.255760>,  <30.573086, 23.936970, 32.956818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267576, 23.645988, 32.255760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.007402, 23.921310, 32.384243>,  <29.851297, 24.086502, 32.461330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.007402, 23.921310, 32.384243>,  <30.267576, 23.645988, 32.255760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007402, 23.921310, 32.384243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063436, 0.470631, -0.880047,
		-0.756907, -0.552038, -0.349779,
		-0.650436, 0.688303, 0.321205,
		29.812271, 24.127802, 32.480606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759466, 23.754232, 31.631250>,  <30.267576, 23.645988, 32.255760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759466, 23.754232, 31.631250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.698027, 24.069435, 31.869728>,  <29.661163, 24.258556, 32.012814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.698027, 24.069435, 31.869728>,  <29.759466, 23.754232, 31.631250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698027, 24.069435, 31.869728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011818, 0.601848, -0.798523,
		-0.988062, -0.129699, -0.083131,
		-0.153600, 0.788008, 0.596196,
		29.651947, 24.305838, 32.048588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116402, 24.084255, 31.461309>,  <29.759466, 23.754232, 31.631250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116402, 24.084255, 31.461309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.345629, 24.352703, 31.649433>,  <29.483166, 24.513773, 31.762306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.345629, 24.352703, 31.649433>,  <29.116402, 24.084255, 31.461309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345629, 24.352703, 31.649433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008446, 0.578697, -0.815499,
		-0.819465, 0.463364, 0.337300,
		0.573067, 0.671122, 0.470308,
		29.517550, 24.554039, 31.790525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532791, 24.192904, 31.164871>,  <29.116402, 24.084255, 31.461309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532791, 24.192904, 31.164871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.310802, 24.000214, 30.893593>,  <28.177610, 23.884600, 30.730825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.310802, 24.000214, 30.893593>,  <28.532791, 24.192904, 31.164871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310802, 24.000214, 30.893593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608102, -0.321386, 0.725895,
		-0.567644, 0.815262, -0.114578,
		-0.554971, -0.481725, -0.678195,
		28.144312, 23.855696, 30.690134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866610, 24.364748, 31.294514>,  <28.532791, 24.192904, 31.164871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866610, 24.364748, 31.294514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.841560, 24.024902, 31.085045>,  <27.826530, 23.820995, 30.959364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.841560, 24.024902, 31.085045>,  <27.866610, 24.364748, 31.294514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841560, 24.024902, 31.085045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676127, -0.349836, 0.648435,
		-0.734119, 0.394676, -0.552540,
		-0.062623, -0.849615, -0.523672,
		27.822773, 23.770018, 30.927944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197477, 24.155199, 31.259268>,  <27.866610, 24.364748, 31.294514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197477, 24.155199, 31.259268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.389797, 23.813576, 31.179852>,  <27.505188, 23.608603, 31.132202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.389797, 23.813576, 31.179852>,  <27.197477, 24.155199, 31.259268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389797, 23.813576, 31.179852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536242, -0.465554, 0.704062,
		-0.693742, -0.232045, -0.681819,
		0.480798, -0.854057, -0.198542,
		27.534037, 23.557358, 31.120289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711378, 23.685917, 31.153091>,  <27.197477, 24.155199, 31.259268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711378, 23.685917, 31.153091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.040600, 23.490948, 31.269711>,  <27.238132, 23.373966, 31.339682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.040600, 23.490948, 31.269711>,  <26.711378, 23.685917, 31.153091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040600, 23.490948, 31.269711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492119, -0.355744, 0.794522,
		-0.283549, -0.797413, -0.532666,
		0.823054, -0.487421, 0.291551,
		27.287516, 23.344721, 31.357176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532393, 23.073910, 31.324389>,  <26.711378, 23.685917, 31.153091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532393, 23.073910, 31.324389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.889303, 23.091820, 31.504093>,  <27.103451, 23.102566, 31.611916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.889303, 23.091820, 31.504093>,  <26.532393, 23.073910, 31.324389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889303, 23.091820, 31.504093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416112, -0.304554, 0.856795,
		0.175187, -0.951442, -0.253116,
		0.892278, 0.044775, 0.449260,
		27.156986, 23.105253, 31.638870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527540, 22.485607, 31.706615>,  <26.532393, 23.073910, 31.324389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527540, 22.485607, 31.706615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.810341, 22.708626, 31.880646>,  <26.980021, 22.842438, 31.985064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.810341, 22.708626, 31.880646>,  <26.527540, 22.485607, 31.706615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810341, 22.708626, 31.880646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346725, -0.262918, 0.900364,
		0.616384, -0.787410, 0.007432,
		0.707002, 0.557547, 0.435074,
		27.022442, 22.875891, 32.011169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778709, 22.143782, 32.204540>,  <26.527540, 22.485607, 31.706615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778709, 22.143782, 32.204540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.909653, 22.501305, 32.327141>,  <26.988218, 22.715818, 32.400700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.909653, 22.501305, 32.327141>,  <26.778709, 22.143782, 32.204540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909653, 22.501305, 32.327141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345751, -0.188571, 0.919183,
		0.879371, -0.406875, 0.247305,
		0.327358, 0.893809, 0.306502,
		27.007860, 22.769447, 32.419090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012470, 22.041595, 32.918476>,  <26.778709, 22.143782, 32.204540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012470, 22.041595, 32.918476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.963354, 22.437180, 32.885303>,  <26.933884, 22.674530, 32.865402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.963354, 22.437180, 32.885303>,  <27.012470, 22.041595, 32.918476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963354, 22.437180, 32.885303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389022, 0.028907, 0.920775,
		0.913008, 0.145325, 0.381179,
		-0.122793, 0.988961, -0.082927,
		26.926516, 22.733868, 32.860424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329432, 22.359001, 33.495014>,  <27.012470, 22.041595, 32.918476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329432, 22.359001, 33.495014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.044590, 22.595058, 33.342888>,  <26.873684, 22.736692, 33.251614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.044590, 22.595058, 33.342888>,  <27.329432, 22.359001, 33.495014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044590, 22.595058, 33.342888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505252, -0.054651, 0.861239,
		0.487468, 0.805448, 0.337087,
		-0.712106, 0.590141, -0.380314,
		26.830957, 22.772100, 33.228794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.077894, 34.056767, 23.296703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703060, 34.064240, 23.436146>,  <30.478161, 34.068726, 23.519812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703060, 34.064240, 23.436146>,  <31.077894, 34.056767, 23.296703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703060, 34.064240, 23.436146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084414, -0.956808, 0.278195,
		0.338745, 0.290119, 0.895032,
		-0.937084, 0.018685, 0.348604,
		30.421934, 34.069843, 23.540728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158882, 33.815174, 23.999018>,  <31.077894, 34.056767, 23.296703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158882, 33.815174, 23.999018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766954, 33.774414, 23.930237>,  <30.531797, 33.749958, 23.888969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766954, 33.774414, 23.930237>,  <31.158882, 33.815174, 23.999018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766954, 33.774414, 23.930237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020250, -0.906469, 0.421786,
		-0.198847, 0.409793, 0.890241,
		-0.979821, -0.101898, -0.171951,
		30.473007, 33.743843, 23.878651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844084, 33.594112, 24.685686>,  <31.158882, 33.815174, 23.999018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844084, 33.594112, 24.685686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587769, 33.488689, 24.397263>,  <30.433979, 33.425434, 24.224209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587769, 33.488689, 24.397263>,  <30.844084, 33.594112, 24.685686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587769, 33.488689, 24.397263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061420, -0.918614, 0.390353,
		-0.765257, 0.294421, 0.572449,
		-0.640788, -0.263561, -0.721059,
		30.395533, 33.409622, 24.180944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297640, 33.296078, 24.991734>,  <30.844084, 33.594112, 24.685686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297640, 33.296078, 24.991734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299721, 33.131565, 24.627136>,  <30.300970, 33.032856, 24.408379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299721, 33.131565, 24.627136>,  <30.297640, 33.296078, 24.991734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299721, 33.131565, 24.627136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121698, -0.904471, 0.408806,
		-0.992554, -0.113054, 0.045345,
		0.005204, -0.411281, -0.911494,
		30.301283, 33.008183, 24.353687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126438, 32.558136, 25.110785>,  <30.297640, 33.296078, 24.991734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126438, 32.558136, 25.110785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181234, 32.536587, 24.715141>,  <30.214111, 32.523659, 24.477757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181234, 32.536587, 24.715141>,  <30.126438, 32.558136, 25.110785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181234, 32.536587, 24.715141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008170, -0.998548, 0.053254,
		-0.990538, 0.000786, -0.137231,
		0.136990, -0.053871, -0.989107,
		30.222332, 32.520424, 24.418409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610590, 32.144394, 24.827803>,  <30.126438, 32.558136, 25.110785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610590, 32.144394, 24.827803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959988, 32.138073, 24.633171>,  <30.169626, 32.134281, 24.516392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959988, 32.138073, 24.633171>,  <29.610590, 32.144394, 24.827803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959988, 32.138073, 24.633171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043105, -0.998059, -0.044958,
		-0.484925, 0.060244, -0.872478,
		0.873493, -0.015807, -0.486580,
		30.222036, 32.133331, 24.487198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432144, 31.684402, 24.224287>,  <29.610590, 32.144394, 24.827803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432144, 31.684402, 24.224287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828110, 31.690716, 24.280605>,  <30.065689, 31.694504, 24.314396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828110, 31.690716, 24.280605>,  <29.432144, 31.684402, 24.224287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828110, 31.690716, 24.280605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019184, -0.999556, -0.022816,
		0.140375, 0.025287, -0.989775,
		0.989912, 0.015785, 0.140798,
		30.125084, 31.695452, 24.322845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620710, 31.182051, 23.713848>,  <29.432144, 31.684402, 24.224287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620710, 31.182051, 23.713848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935459, 31.211193, 23.958969>,  <30.124308, 31.228680, 24.106041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935459, 31.211193, 23.958969>,  <29.620710, 31.182051, 23.713848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935459, 31.211193, 23.958969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072898, -0.975080, 0.209535,
		0.612796, -0.209549, -0.761952,
		0.786872, 0.072857, 0.612801,
		30.171520, 31.233049, 24.142809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141094, 30.673162, 23.502350>,  <29.620710, 31.182051, 23.713848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141094, 30.673162, 23.502350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233271, 30.754318, 23.883030>,  <30.288576, 30.803011, 24.111439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233271, 30.754318, 23.883030>,  <30.141094, 30.673162, 23.502350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233271, 30.754318, 23.883030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037083, -0.975481, 0.216936,
		0.972380, -0.085283, -0.217265,
		0.230439, 0.202888, 0.951701,
		30.302402, 30.815184, 24.168541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670555, 30.083479, 23.639023>,  <30.141094, 30.673162, 23.502350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670555, 30.083479, 23.639023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516638, 30.239773, 23.973511>,  <30.424288, 30.333549, 24.174204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516638, 30.239773, 23.973511>,  <30.670555, 30.083479, 23.639023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516638, 30.239773, 23.973511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005327, -0.905020, 0.425335,
		0.922988, 0.168120, 0.346163,
		-0.384792, 0.390735, 0.836218,
		30.401199, 30.356993, 24.224377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883472, 29.658928, 24.172199>,  <30.670555, 30.083479, 23.639023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883472, 29.658928, 24.172199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603119, 29.855042, 24.379421>,  <30.434906, 29.972710, 24.503754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603119, 29.855042, 24.379421>,  <30.883472, 29.658928, 24.172199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603119, 29.855042, 24.379421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135828, -0.804757, 0.577855,
		0.700222, 0.334644, 0.630637,
		-0.700885, 0.490285, 0.518054,
		30.392853, 30.002127, 24.534838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104660, 29.679327, 24.886837>,  <30.883472, 29.658928, 24.172199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104660, 29.679327, 24.886837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709599, 29.741333, 24.877792>,  <30.472561, 29.778536, 24.872366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709599, 29.741333, 24.877792>,  <31.104660, 29.679327, 24.886837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709599, 29.741333, 24.877792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131426, -0.741369, 0.658103,
		0.085251, 0.652949, 0.752589,
		-0.987654, 0.155014, -0.022612,
		30.413303, 29.787838, 24.871008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727144, 29.993738, 25.172876>,  <31.104660, 29.679327, 24.886837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727144, 29.993738, 25.172876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080181, 29.830811, 25.266788>,  <32.292004, 29.733055, 25.323135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080181, 29.830811, 25.266788>,  <31.727144, 29.993738, 25.172876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080181, 29.830811, 25.266788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468216, 0.716452, -0.517175,
		0.042446, 0.566383, 0.823049,
		0.882594, -0.407317, 0.234779,
		32.344959, 29.708616, 25.337223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127777, 30.508671, 25.412704>,  <31.727144, 29.993738, 25.172876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127777, 30.508671, 25.412704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402557, 30.245438, 25.289402>,  <32.567425, 30.087498, 25.215422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402557, 30.245438, 25.289402>,  <32.127777, 30.508671, 25.412704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402557, 30.245438, 25.289402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471898, 0.726546, -0.499442,
		0.552636, 0.197629, 0.809652,
		0.686954, -0.658083, -0.308255,
		32.608643, 30.048012, 25.196926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734673, 30.729534, 25.598072>,  <32.127777, 30.508671, 25.412704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734673, 30.729534, 25.598072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781746, 30.492672, 25.279198>,  <32.809990, 30.350555, 25.087873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781746, 30.492672, 25.279198>,  <32.734673, 30.729534, 25.598072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781746, 30.492672, 25.279198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595893, 0.684283, -0.420319,
		0.794393, -0.425571, 0.433392,
		0.117687, -0.592154, -0.797184,
		32.817051, 30.315025, 25.040043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454533, 30.930206, 25.364693>,  <32.734673, 30.729534, 25.598072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454533, 30.930206, 25.364693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283821, 30.712563, 25.075748>,  <33.181393, 30.581976, 24.902382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283821, 30.712563, 25.075748>,  <33.454533, 30.930206, 25.364693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283821, 30.712563, 25.075748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516322, 0.509180, -0.688583,
		0.742476, -0.666844, 0.063628,
		-0.426779, -0.544109, -0.722360,
		33.155788, 30.549330, 24.859041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074718, 30.727253, 25.044849>,  <33.454533, 30.930206, 25.364693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074718, 30.727253, 25.044849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763626, 30.659950, 24.802586>,  <33.576969, 30.619570, 24.657227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763626, 30.659950, 24.802586>,  <34.074718, 30.727253, 25.044849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763626, 30.659950, 24.802586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506588, 0.402677, -0.762378,
		0.372158, -0.899746, -0.227940,
		-0.777732, -0.168253, -0.605659,
		33.530308, 30.609474, 24.620888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280308, 30.327450, 24.539181>,  <34.074718, 30.727253, 25.044849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280308, 30.327450, 24.539181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970299, 30.537773, 24.398975>,  <33.784294, 30.663967, 24.314852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970299, 30.537773, 24.398975>,  <34.280308, 30.327450, 24.539181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970299, 30.537773, 24.398975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584779, 0.386516, -0.713189,
		-0.239522, -0.757713, -0.607043,
		-0.775024, 0.525810, -0.350515,
		33.737793, 30.695517, 24.293821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305115, 30.422962, 23.785517>,  <34.280308, 30.327450, 24.539181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305115, 30.422962, 23.785517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046936, 30.711765, 23.885193>,  <33.892029, 30.885048, 23.944998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046936, 30.711765, 23.885193>,  <34.305115, 30.422962, 23.785517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046936, 30.711765, 23.885193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365949, 0.578691, -0.728833,
		-0.670429, -0.379235, -0.637735,
		-0.645451, 0.722010, 0.249191,
		33.853302, 30.928368, 23.959949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938210, 30.671274, 23.135778>,  <34.305115, 30.422962, 23.785517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938210, 30.671274, 23.135778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908142, 30.961445, 23.409451>,  <33.890102, 31.135548, 23.573654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908142, 30.961445, 23.409451>,  <33.938210, 30.671274, 23.135778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908142, 30.961445, 23.409451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645700, 0.558263, -0.520974,
		-0.759882, 0.402615, -0.510373,
		-0.075170, 0.725427, 0.684182,
		33.885590, 31.179073, 23.614706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991871, 31.274841, 22.766180>,  <33.938210, 30.671274, 23.135778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991871, 31.274841, 22.766180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050144, 31.411182, 23.137684>,  <34.085110, 31.492987, 23.360586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050144, 31.411182, 23.137684>,  <33.991871, 31.274841, 22.766180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050144, 31.411182, 23.137684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695550, 0.632315, -0.341158,
		-0.703553, 0.695700, -0.144961,
		0.145682, 0.340850, 0.928761,
		34.093849, 31.513437, 23.416313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896690, 31.959503, 22.615559>,  <33.991871, 31.274841, 22.766180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896690, 31.959503, 22.615559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119576, 31.905006, 22.943207>,  <34.253304, 31.872309, 23.139795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119576, 31.905006, 22.943207>,  <33.896690, 31.959503, 22.615559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119576, 31.905006, 22.943207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659452, 0.672073, -0.336811,
		-0.504621, 0.727844, 0.464328,
		0.557208, -0.136240, 0.819120,
		34.286739, 31.864134, 23.188942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223923, 32.684570, 22.746805>,  <33.896690, 31.959503, 22.615559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223923, 32.684570, 22.746805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438717, 32.442139, 22.981522>,  <34.567593, 32.296680, 23.122351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438717, 32.442139, 22.981522>,  <34.223923, 32.684570, 22.746805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438717, 32.442139, 22.981522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827564, 0.513417, -0.227025,
		-0.163673, 0.607514, 0.777263,
		0.536981, -0.606077, 0.586790,
		34.599812, 32.260315, 23.157558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649670, 33.057331, 23.290962>,  <34.223923, 32.684570, 22.746805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649670, 33.057331, 23.290962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825504, 32.707710, 23.208218>,  <34.931007, 32.497936, 23.158571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825504, 32.707710, 23.208218>,  <34.649670, 33.057331, 23.290962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825504, 32.707710, 23.208218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821469, 0.484369, -0.300957,
		0.363250, -0.037632, 0.930932,
		0.439589, -0.874054, -0.206860,
		34.957382, 32.445496, 23.146160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342274, 33.143276, 23.548210>,  <34.649670, 33.057331, 23.290962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342274, 33.143276, 23.548210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371605, 32.813496, 23.323746>,  <35.389202, 32.615627, 23.189068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371605, 32.813496, 23.323746>,  <35.342274, 33.143276, 23.548210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371605, 32.813496, 23.323746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890689, 0.307267, -0.335051,
		0.448660, -0.475253, 0.756861,
		0.073324, -0.824452, -0.561162,
		35.393600, 32.566158, 23.155397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970901, 32.977566, 23.667343>,  <35.342274, 33.143276, 23.548210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970901, 32.977566, 23.667343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848507, 32.804417, 23.328171>,  <35.775070, 32.700527, 23.124666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848507, 32.804417, 23.328171>,  <35.970901, 32.977566, 23.667343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848507, 32.804417, 23.328171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859908, 0.256561, -0.441288,
		0.408569, -0.864173, 0.293729,
		-0.305990, -0.432876, -0.847932,
		35.756710, 32.674553, 23.073792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771778, 32.976196, 24.435064>,  <35.970901, 32.977566, 23.667343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771778, 32.976196, 24.435064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788231, 32.984108, 24.834648>,  <35.798103, 32.988853, 25.074398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788231, 32.984108, 24.834648>,  <35.771778, 32.976196, 24.435064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788231, 32.984108, 24.834648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024703, 0.999478, -0.020804,
		-0.998848, 0.025533, 0.040625,
		0.041135, 0.019777, 0.998958,
		35.800571, 32.990040, 25.134335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252029, 33.423199, 24.496851>,  <35.771778, 32.976196, 24.435064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252029, 33.423199, 24.496851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468708, 33.473530, 24.829292>,  <35.598717, 33.503731, 25.028757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468708, 33.473530, 24.829292>,  <35.252029, 33.423199, 24.496851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468708, 33.473530, 24.829292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182929, 0.982682, -0.029550,
		-0.820427, -0.136026, 0.555335,
		0.541698, 0.125830, 0.831102,
		35.631218, 33.511280, 25.078623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945614, 34.003666, 24.834068>,  <35.252029, 33.423199, 24.496851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945614, 34.003666, 24.834068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691074, 34.195297, 25.075909>,  <34.538349, 34.310276, 25.221012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691074, 34.195297, 25.075909>,  <34.945614, 34.003666, 24.834068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691074, 34.195297, 25.075909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041739, -0.804005, 0.593155,
		0.770270, 0.352219, 0.531626,
		-0.636351, 0.479079, 0.604600,
		34.500168, 34.339020, 25.257288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085537, 33.897247, 25.556210>,  <34.945614, 34.003666, 24.834068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085537, 33.897247, 25.556210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703003, 34.014004, 25.562134>,  <34.473480, 34.084057, 25.565687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703003, 34.014004, 25.562134>,  <35.085537, 33.897247, 25.556210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703003, 34.014004, 25.562134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263906, -0.884206, 0.385401,
		0.125589, 0.364665, 0.922630,
		-0.956338, 0.291889, 0.014809,
		34.416103, 34.101570, 25.566576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825012, 33.726280, 26.264500>,  <35.085537, 33.897247, 25.556210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825012, 33.726280, 26.264500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497997, 33.790234, 26.043205>,  <34.301788, 33.828606, 25.910429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497997, 33.790234, 26.043205>,  <34.825012, 33.726280, 26.264500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497997, 33.790234, 26.043205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495370, -0.685156, 0.534013,
		-0.293672, 0.710632, 0.639343,
		-0.817536, 0.159886, -0.553236,
		34.252735, 33.838200, 25.877234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180927, 33.907753, 26.720242>,  <34.825012, 33.726280, 26.264500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180927, 33.907753, 26.720242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030365, 33.781078, 26.371983>,  <33.940025, 33.705074, 26.163027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030365, 33.781078, 26.371983>,  <34.180927, 33.907753, 26.720242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030365, 33.781078, 26.371983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611501, -0.621048, 0.490271,
		-0.695976, 0.716944, 0.040112,
		-0.376409, -0.316688, -0.870646,
		33.917442, 33.686073, 26.110788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493484, 33.818504, 26.843822>,  <34.180927, 33.907753, 26.720242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493484, 33.818504, 26.843822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540970, 33.590706, 26.518471>,  <33.569462, 33.454029, 26.323259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540970, 33.590706, 26.518471>,  <33.493484, 33.818504, 26.843822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540970, 33.590706, 26.518471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667909, -0.651943, 0.358981,
		-0.734714, 0.500649, -0.457762,
		0.118712, -0.569492, -0.813380,
		33.576584, 33.419857, 26.274456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819065, 33.743076, 26.596115>,  <33.493484, 33.818504, 26.843822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819065, 33.743076, 26.596115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044476, 33.439579, 26.465424>,  <33.179722, 33.257481, 26.387009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044476, 33.439579, 26.465424>,  <32.819065, 33.743076, 26.596115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044476, 33.439579, 26.465424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741304, -0.638991, 0.205328,
		-0.364568, 0.126499, -0.922544,
		0.563524, -0.758741, -0.326730,
		33.213531, 33.211956, 26.367405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324707, 33.153683, 26.389601>,  <32.819065, 33.743076, 26.596115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324707, 33.153683, 26.389601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665039, 32.945728, 26.420090>,  <32.869240, 32.820957, 26.438383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665039, 32.945728, 26.420090>,  <32.324707, 33.153683, 26.389601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665039, 32.945728, 26.420090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485092, -0.721436, 0.494183,
		-0.201930, -0.457439, -0.866010,
		0.850829, -0.519885, 0.076221,
		32.920288, 32.789764, 26.442955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120243, 32.517422, 26.199717>,  <32.324707, 33.153683, 26.389601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120243, 32.517422, 26.199717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456123, 32.476017, 26.412956>,  <32.657650, 32.451176, 26.540899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456123, 32.476017, 26.412956>,  <32.120243, 32.517422, 26.199717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456123, 32.476017, 26.412956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431297, -0.723623, 0.538845,
		0.329987, -0.682390, -0.652267,
		0.839697, -0.103509, 0.533098,
		32.708031, 32.444965, 26.572886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364449, 31.745037, 26.171721>,  <32.120243, 32.517422, 26.199717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364449, 31.745037, 26.171721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525181, 31.927986, 26.489044>,  <32.621620, 32.037754, 26.679440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525181, 31.927986, 26.489044>,  <32.364449, 31.745037, 26.171721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525181, 31.927986, 26.489044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412323, -0.683166, 0.602722,
		0.817631, -0.569293, -0.085933,
		0.401832, 0.457372, 0.793311,
		32.645729, 32.065197, 26.727037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394024, 31.163002, 26.673735>,  <32.364449, 31.745037, 26.171721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394024, 31.163002, 26.673735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465462, 31.472893, 26.916355>,  <32.508324, 31.658827, 27.061928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465462, 31.472893, 26.916355>,  <32.394024, 31.163002, 26.673735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465462, 31.472893, 26.916355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593666, -0.406757, 0.694341,
		0.784642, -0.484096, 0.387283,
		0.178598, 0.774726, 0.606550,
		32.519043, 31.705311, 27.098320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768154, 30.929823, 27.298033>,  <32.394024, 31.163002, 26.673735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768154, 30.929823, 27.298033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567806, 31.266544, 27.378521>,  <32.447598, 31.468578, 27.426815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567806, 31.266544, 27.378521>,  <32.768154, 30.929823, 27.298033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567806, 31.266544, 27.378521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318144, -0.395275, 0.861709,
		0.804929, 0.367589, 0.465798,
		-0.500873, 0.841805, 0.201222,
		32.417545, 31.519085, 27.438887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910294, 31.095943, 27.905342>,  <32.768154, 30.929823, 27.298033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910294, 31.095943, 27.905342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569523, 31.299934, 27.857784>,  <32.365059, 31.422329, 27.829248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569523, 31.299934, 27.857784>,  <32.910294, 31.095943, 27.905342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569523, 31.299934, 27.857784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336241, -0.358682, 0.870798,
		0.401443, 0.781837, 0.477048,
		-0.851931, 0.509979, -0.118896,
		32.313942, 31.452929, 27.822115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699078, 31.357492, 28.576345>,  <32.910294, 31.095943, 27.905342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699078, 31.357492, 28.576345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350712, 31.463623, 28.410885>,  <32.141693, 31.527302, 28.311609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350712, 31.463623, 28.410885>,  <32.699078, 31.357492, 28.576345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350712, 31.463623, 28.410885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475225, -0.240319, 0.846409,
		0.125167, 0.933728, 0.335387,
		-0.870916, 0.265327, -0.413652,
		32.089436, 31.543221, 28.286789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306725, 31.750515, 29.154428>,  <32.699078, 31.357492, 28.576345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306725, 31.750515, 29.154428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068691, 31.602802, 28.868908>,  <31.925871, 31.514175, 28.697596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068691, 31.602802, 28.868908>,  <32.306725, 31.750515, 29.154428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068691, 31.602802, 28.868908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515289, -0.506265, 0.691500,
		-0.616729, 0.779312, 0.110983,
		-0.595081, -0.369280, -0.713800,
		31.890167, 31.492018, 28.654768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520449, 31.951233, 29.376888>,  <32.306725, 31.750515, 29.154428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520449, 31.951233, 29.376888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493820, 31.640160, 29.126839>,  <31.477842, 31.453516, 28.976809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493820, 31.640160, 29.126839>,  <31.520449, 31.951233, 29.376888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493820, 31.640160, 29.126839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450295, -0.535667, 0.714350,
		-0.890394, 0.329045, -0.314526,
		-0.066572, -0.777683, -0.625122,
		31.473848, 31.406855, 28.939302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904913, 31.669828, 29.414589>,  <31.520449, 31.951233, 29.376888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904913, 31.669828, 29.414589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090612, 31.344810, 29.273594>,  <31.202032, 31.149799, 29.188997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090612, 31.344810, 29.273594>,  <30.904913, 31.669828, 29.414589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090612, 31.344810, 29.273594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518004, -0.571900, 0.636083,
		-0.718433, -0.112710, -0.686404,
		0.464248, -0.812543, -0.352487,
		31.229887, 31.101048, 29.167849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479412, 31.149048, 29.182430>,  <30.904913, 31.669828, 29.414589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479412, 31.149048, 29.182430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809317, 30.950668, 29.291096>,  <31.007259, 30.831640, 29.356295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809317, 30.950668, 29.291096>,  <30.479412, 31.149048, 29.182430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809317, 30.950668, 29.291096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565473, -0.725481, 0.392324,
		0.002515, -0.477193, -0.878795,
		0.824763, -0.495948, 0.271665,
		31.056746, 30.801884, 29.372595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224899, 30.492277, 29.099268>,  <30.479412, 31.149048, 29.182430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224899, 30.492277, 29.099268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547688, 30.480915, 29.335232>,  <30.741360, 30.474098, 29.476810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547688, 30.480915, 29.335232>,  <30.224899, 30.492277, 29.099268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547688, 30.480915, 29.335232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303813, -0.876512, 0.373396,
		0.506454, -0.480541, -0.715950,
		0.806971, -0.028407, 0.589907,
		30.789780, 30.472393, 29.512203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356262, 29.791794, 29.195604>,  <30.224899, 30.492277, 29.099268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356262, 29.791794, 29.195604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579365, 29.953350, 29.485649>,  <30.713226, 30.050283, 29.659676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579365, 29.953350, 29.485649>,  <30.356262, 29.791794, 29.195604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579365, 29.953350, 29.485649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230455, -0.763912, 0.602767,
		0.797371, -0.503301, -0.332997,
		0.557754, 0.403889, 0.725110,
		30.746691, 30.074516, 29.703182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772102, 29.270290, 29.466892>,  <30.356262, 29.791794, 29.195604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772102, 29.270290, 29.466892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794041, 29.559650, 29.742191>,  <30.807203, 29.733267, 29.907372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794041, 29.559650, 29.742191>,  <30.772102, 29.270290, 29.466892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794041, 29.559650, 29.742191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142423, -0.676571, 0.722473,
		0.988285, -0.137647, 0.065922,
		0.054845, 0.723398, 0.688250,
		30.810493, 29.776670, 29.948666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247124, 29.055958, 29.989046>,  <30.772102, 29.270290, 29.466892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247124, 29.055958, 29.989046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004578, 29.331326, 30.148247>,  <30.859051, 29.496546, 30.243767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004578, 29.331326, 30.148247>,  <31.247124, 29.055958, 29.989046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004578, 29.331326, 30.148247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122493, -0.575402, 0.808646,
		0.785696, 0.441582, 0.433229,
		-0.606365, 0.688417, 0.398000,
		30.822668, 29.537851, 30.267647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391081, 29.213871, 30.784929>,  <31.247124, 29.055958, 29.989046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391081, 29.213871, 30.784929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010958, 29.325790, 30.730328>,  <30.782885, 29.392942, 30.697567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010958, 29.325790, 30.730328>,  <31.391081, 29.213871, 30.784929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010958, 29.325790, 30.730328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267824, -0.511224, 0.816652,
		0.158713, 0.812628, 0.560755,
		-0.950306, 0.279796, -0.136503,
		30.725866, 29.409729, 30.689377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130352, 29.385082, 31.471813>,  <31.391081, 29.213871, 30.784929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130352, 29.385082, 31.471813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805523, 29.327442, 31.245621>,  <30.610624, 29.292858, 31.109905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805523, 29.327442, 31.245621>,  <31.130352, 29.385082, 31.471813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805523, 29.327442, 31.245621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428687, -0.510162, 0.745629,
		-0.395933, 0.847921, 0.352516,
		-0.812075, -0.144100, -0.565482,
		30.561901, 29.284212, 31.075975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500952, 29.534832, 31.891056>,  <31.130352, 29.385082, 31.471813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500952, 29.534832, 31.891056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336281, 29.312107, 31.602478>,  <30.237478, 29.178473, 31.429331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336281, 29.312107, 31.602478>,  <30.500952, 29.534832, 31.891056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336281, 29.312107, 31.602478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465790, -0.551866, 0.691725,
		-0.783301, 0.620810, -0.032166,
		-0.411678, -0.556812, -0.721444,
		30.212778, 29.145063, 31.386045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826092, 29.564241, 31.967779>,  <30.500952, 29.534832, 31.891056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826092, 29.564241, 31.967779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864218, 29.222858, 31.762829>,  <29.887094, 29.018028, 31.639858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864218, 29.222858, 31.762829>,  <29.826092, 29.564241, 31.967779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864218, 29.222858, 31.762829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510730, -0.483736, 0.710742,
		-0.854441, 0.193940, -0.481994,
		0.095316, -0.853456, -0.512375,
		29.892813, 28.966822, 31.609116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192299, 29.173727, 32.002026>,  <29.826092, 29.564241, 31.967779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192299, 29.173727, 32.002026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466473, 28.896687, 31.912155>,  <29.630978, 28.730461, 31.858232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466473, 28.896687, 31.912155>,  <29.192299, 29.173727, 32.002026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466473, 28.896687, 31.912155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307126, -0.554781, 0.773234,
		-0.660191, -0.460997, -0.592983,
		0.685435, -0.692603, -0.224677,
		29.672104, 28.688906, 31.844751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542391, 29.275181, 31.838478>,  <29.192299, 29.173727, 32.002026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542391, 29.275181, 31.838478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253002, 29.440773, 32.059460>,  <28.079369, 29.540129, 32.192047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253002, 29.440773, 32.059460>,  <28.542391, 29.275181, 31.838478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253002, 29.440773, 32.059460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258026, 0.904405, -0.339816,
		-0.640320, -0.103299, -0.761130,
		-0.723472, 0.413983, 0.552455,
		28.035961, 29.564968, 32.225197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075201, 29.601831, 31.313204>,  <28.542391, 29.275181, 31.838478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075201, 29.601831, 31.313204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029587, 29.774632, 31.671059>,  <28.002218, 29.878311, 31.885771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029587, 29.774632, 31.671059>,  <28.075201, 29.601831, 31.313204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029587, 29.774632, 31.671059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077537, 0.901633, -0.425495,
		-0.990446, 0.020845, -0.136314,
		-0.114036, 0.431999, 0.894635,
		27.995377, 29.904232, 31.939449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642384, 30.175833, 31.173580>,  <28.075201, 29.601831, 31.313204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642384, 30.175833, 31.173580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813862, 30.253117, 31.526600>,  <27.916748, 30.299486, 31.738411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813862, 30.253117, 31.526600>,  <27.642384, 30.175833, 31.173580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813862, 30.253117, 31.526600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015330, 0.975169, -0.220932,
		-0.903320, 0.108242, 0.415087,
		0.428694, 0.193209, 0.882549,
		27.942471, 30.311079, 31.791365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446358, 30.875723, 31.243509>,  <27.642384, 30.175833, 31.173580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446358, 30.875723, 31.243509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716261, 30.840385, 31.536602>,  <27.878202, 30.819183, 31.712458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716261, 30.840385, 31.536602>,  <27.446358, 30.875723, 31.243509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716261, 30.840385, 31.536602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301120, 0.939371, -0.164038,
		-0.673814, 0.331326, 0.660452,
		0.674760, -0.088344, 0.732731,
		27.918690, 30.813883, 31.756422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406797, 31.510406, 31.631723>,  <27.446358, 30.875723, 31.243509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406797, 31.510406, 31.631723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766924, 31.344509, 31.684513>,  <27.983000, 31.244970, 31.716187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766924, 31.344509, 31.684513>,  <27.406797, 31.510406, 31.631723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766924, 31.344509, 31.684513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428227, 0.898306, -0.098321,
		-0.077775, 0.145035, 0.986365,
		0.900318, -0.414741, 0.131973,
		28.037020, 31.220087, 31.724106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
