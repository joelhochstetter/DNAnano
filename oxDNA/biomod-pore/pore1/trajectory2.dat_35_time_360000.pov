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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<39.855804, 43.025074, 44.574791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014900, 42.975479, 44.938423>,  <40.110359, 42.945721, 45.156601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014900, 42.975479, 44.938423>,  <39.855804, 43.025074, 44.574791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014900, 42.975479, 44.938423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884453, -0.315336, 0.343956,
		0.244020, -0.940845, -0.235083,
		0.397739, -0.123988, 0.909081,
		40.134224, 42.938282, 45.211147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972115, 42.339996, 44.665012>,  <39.855804, 43.025074, 44.574791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972115, 42.339996, 44.665012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919533, 42.514259, 45.021198>,  <39.887985, 42.618816, 45.234909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919533, 42.514259, 45.021198>,  <39.972115, 42.339996, 44.665012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919533, 42.514259, 45.021198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774541, -0.605766, 0.182027,
		0.618713, -0.665771, 0.417065,
		-0.131455, 0.435656, 0.890462,
		39.880096, 42.644955, 45.288338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937363, 41.810795, 45.115829>,  <39.972115, 42.339996, 44.665012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937363, 41.810795, 45.115829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787750, 42.112259, 45.332012>,  <39.697983, 42.293137, 45.461723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787750, 42.112259, 45.332012>,  <39.937363, 41.810795, 45.115829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787750, 42.112259, 45.332012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746547, -0.590428, 0.306696,
		0.550247, -0.288765, 0.783482,
		-0.374026, 0.753664, 0.540458,
		39.675541, 42.338360, 45.494148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659176, 41.547241, 45.653038>,  <39.937363, 41.810795, 45.115829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659176, 41.547241, 45.653038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495625, 41.910583, 45.688171>,  <39.397495, 42.128590, 45.709251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495625, 41.910583, 45.688171>,  <39.659176, 41.547241, 45.653038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495625, 41.910583, 45.688171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825518, -0.409174, 0.388712,
		0.389027, 0.086425, 0.917163,
		-0.408874, 0.908354, 0.087834,
		39.372963, 42.183090, 45.714523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471531, 41.595390, 46.344929>,  <39.659176, 41.547241, 45.653038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471531, 41.595390, 46.344929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249565, 41.860550, 46.143875>,  <39.116386, 42.019646, 46.023243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249565, 41.860550, 46.143875>,  <39.471531, 41.595390, 46.344929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249565, 41.860550, 46.143875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788929, -0.227637, 0.570765,
		0.263939, 0.713268, 0.649296,
		-0.554912, 0.662895, -0.502636,
		39.083092, 42.059418, 45.993084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943821, 41.891129, 46.821571>,  <39.471531, 41.595390, 46.344929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943821, 41.891129, 46.821571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794090, 41.945091, 46.454597>,  <38.704250, 41.977467, 46.234413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794090, 41.945091, 46.454597>,  <38.943821, 41.891129, 46.821571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794090, 41.945091, 46.454597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892663, -0.320285, 0.317126,
		-0.251058, 0.937666, 0.240316,
		-0.374328, 0.134904, -0.917431,
		38.681793, 41.985561, 46.179367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266644, 41.974773, 46.967548>,  <38.943821, 41.891129, 46.821571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266644, 41.974773, 46.967548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236153, 41.929108, 46.571335>,  <38.217857, 41.901707, 46.333607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236153, 41.929108, 46.571335>,  <38.266644, 41.974773, 46.967548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236153, 41.929108, 46.571335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949057, -0.296312, 0.107189,
		-0.305744, 0.948243, -0.085763,
		-0.076229, -0.114166, -0.990533,
		38.213284, 41.894859, 46.274174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760513, 42.417393, 46.704132>,  <38.266644, 41.974773, 46.967548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760513, 42.417393, 46.704132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774536, 42.130333, 46.425922>,  <37.782951, 41.958099, 46.258995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774536, 42.130333, 46.425922>,  <37.760513, 42.417393, 46.704132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774536, 42.130333, 46.425922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888829, -0.340562, 0.306594,
		-0.456896, 0.607456, -0.649803,
		0.035056, -0.717646, -0.695526,
		37.785053, 41.915039, 46.217266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096615, 42.283154, 46.527420>,  <37.760513, 42.417393, 46.704132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096615, 42.283154, 46.527420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257835, 41.952461, 46.370419>,  <37.354568, 41.754044, 46.276218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257835, 41.952461, 46.370419>,  <37.096615, 42.283154, 46.527420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257835, 41.952461, 46.370419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769399, -0.538338, 0.343829,
		-0.495556, 0.163412, -0.853065,
		0.403051, -0.826734, -0.392505,
		37.378750, 41.704441, 46.252666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506001, 42.013054, 46.192867>,  <37.096615, 42.283154, 46.527420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506001, 42.013054, 46.192867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781551, 41.735580, 46.277012>,  <36.946880, 41.569096, 46.327499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781551, 41.735580, 46.277012>,  <36.506001, 42.013054, 46.192867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781551, 41.735580, 46.277012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697561, -0.555473, 0.452612,
		-0.197117, -0.458537, -0.866539,
		0.688878, -0.693681, 0.210364,
		36.988216, 41.527477, 46.340122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297867, 41.403175, 45.888752>,  <36.506001, 42.013054, 46.192867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297867, 41.403175, 45.888752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537521, 41.302414, 46.192745>,  <36.681316, 41.241959, 46.375141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537521, 41.302414, 46.192745>,  <36.297867, 41.403175, 45.888752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537521, 41.302414, 46.192745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734248, -0.551346, 0.396103,
		0.319237, -0.795339, -0.515290,
		0.599139, -0.251900, 0.759986,
		36.717262, 41.226845, 46.420742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203350, 40.654892, 45.966545>,  <36.297867, 41.403175, 45.888752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203350, 40.654892, 45.966545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353386, 40.779274, 46.315857>,  <36.443409, 40.853901, 46.525444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353386, 40.779274, 46.315857>,  <36.203350, 40.654892, 45.966545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353386, 40.779274, 46.315857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666867, -0.563844, 0.487205,
		0.643891, -0.765106, -0.004129,
		0.375092, 0.310953, 0.873278,
		36.465912, 40.872559, 46.577839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076092, 40.112095, 46.455902>,  <36.203350, 40.654892, 45.966545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076092, 40.112095, 46.455902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168491, 40.404778, 46.712418>,  <36.223930, 40.580387, 46.866325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168491, 40.404778, 46.712418>,  <36.076092, 40.112095, 46.455902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168491, 40.404778, 46.712418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610613, -0.404126, 0.681053,
		0.757489, -0.548903, 0.353434,
		0.231000, 0.731702, 0.641288,
		36.237793, 40.624287, 46.904804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281097, 39.760658, 47.046886>,  <36.076092, 40.112095, 46.455902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281097, 39.760658, 47.046886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191589, 40.119675, 47.198853>,  <36.137882, 40.335087, 47.290031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191589, 40.119675, 47.198853>,  <36.281097, 39.760658, 47.046886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191589, 40.119675, 47.198853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206527, -0.424618, 0.881502,
		0.952508, 0.118795, 0.280386,
		-0.223775, 0.897545, 0.379917,
		36.124458, 40.388939, 47.312828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660103, 39.802071, 47.703255>,  <36.281097, 39.760658, 47.046886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660103, 39.802071, 47.703255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347237, 40.051033, 47.714741>,  <36.159515, 40.200409, 47.721634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347237, 40.051033, 47.714741>,  <36.660103, 39.802071, 47.703255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347237, 40.051033, 47.714741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356536, -0.484898, 0.798596,
		0.510977, 0.614396, 0.601181,
		-0.782166, 0.622407, 0.028717,
		36.112587, 40.237755, 47.723354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693871, 40.209023, 48.363583>,  <36.660103, 39.802071, 47.703255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693871, 40.209023, 48.363583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315224, 40.200958, 48.234898>,  <36.088036, 40.196117, 48.157684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315224, 40.200958, 48.234898>,  <36.693871, 40.209023, 48.363583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315224, 40.200958, 48.234898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281986, -0.431753, 0.856781,
		-0.156178, 0.901766, 0.403021,
		-0.946622, -0.020164, -0.321716,
		36.031239, 40.194908, 48.138382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276848, 40.324688, 49.043945>,  <36.693871, 40.209023, 48.363583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276848, 40.324688, 49.043945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022129, 40.163811, 48.780815>,  <35.869297, 40.067284, 48.622936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022129, 40.163811, 48.780815>,  <36.276848, 40.324688, 49.043945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022129, 40.163811, 48.780815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406002, -0.550401, 0.729535,
		-0.655479, 0.731644, 0.187204,
		-0.636797, -0.402189, -0.657825,
		35.831089, 40.043156, 48.583469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622948, 40.393047, 49.374725>,  <36.276848, 40.324688, 49.043945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622948, 40.393047, 49.374725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605637, 40.098831, 49.104286>,  <35.595249, 39.922302, 48.942024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605637, 40.098831, 49.104286>,  <35.622948, 40.393047, 49.374725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605637, 40.098831, 49.104286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362825, -0.618958, 0.696598,
		-0.930852, 0.275453, -0.240085,
		-0.043278, -0.735538, -0.676099,
		35.592655, 39.878170, 48.901455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956154, 40.160702, 49.428093>,  <35.622948, 40.393047, 49.374725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956154, 40.160702, 49.428093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115475, 39.843094, 49.244400>,  <35.211067, 39.652531, 49.134186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115475, 39.843094, 49.244400>,  <34.956154, 40.160702, 49.428093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115475, 39.843094, 49.244400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549288, -0.607433, 0.573853,
		-0.734603, 0.023687, -0.678084,
		0.398298, -0.794018, -0.459233,
		35.234962, 39.604889, 49.106628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386036, 39.673328, 49.368042>,  <34.956154, 40.160702, 49.428093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386036, 39.673328, 49.368042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737198, 39.483978, 49.339218>,  <34.947895, 39.370369, 49.321922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737198, 39.483978, 49.339218>,  <34.386036, 39.673328, 49.368042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737198, 39.483978, 49.339218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319530, -0.691253, 0.648128,
		-0.356623, -0.545969, -0.758114,
		0.877907, -0.473378, -0.072063,
		35.000568, 39.341965, 49.317600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311104, 39.006317, 49.162983>,  <34.386036, 39.673328, 49.368042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311104, 39.006317, 49.162983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672947, 38.945854, 49.322403>,  <34.890053, 38.909576, 49.418053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672947, 38.945854, 49.322403>,  <34.311104, 39.006317, 49.162983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672947, 38.945854, 49.322403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400725, -0.620287, 0.674287,
		0.145289, -0.769672, -0.621688,
		0.904605, -0.151159, 0.398548,
		34.944328, 38.900505, 49.441967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511127, 38.270905, 49.170223>,  <34.311104, 39.006317, 49.162983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511127, 38.270905, 49.170223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757881, 38.412560, 49.451378>,  <34.905933, 38.497551, 49.620071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757881, 38.412560, 49.451378>,  <34.511127, 38.270905, 49.170223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757881, 38.412560, 49.451378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444078, -0.580714, 0.682324,
		0.649809, -0.733048, -0.200968,
		0.616881, 0.354135, 0.702884,
		34.942947, 38.518799, 49.662243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803093, 37.722012, 49.530647>,  <34.511127, 38.270905, 49.170223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803093, 37.722012, 49.530647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837791, 38.031639, 49.781498>,  <34.858612, 38.217415, 49.932011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837791, 38.031639, 49.781498>,  <34.803093, 37.722012, 49.530647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837791, 38.031639, 49.781498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269063, -0.587905, 0.762871,
		0.959208, -0.234916, 0.157273,
		0.086749, 0.774068, 0.627131,
		34.863815, 38.263859, 49.969639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966827, 37.425873, 50.165478>,  <34.803093, 37.722012, 49.530647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966827, 37.425873, 50.165478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842628, 37.790985, 50.271622>,  <34.768108, 38.010052, 50.335308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842628, 37.790985, 50.271622>,  <34.966827, 37.425873, 50.165478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842628, 37.790985, 50.271622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336094, -0.366543, 0.867576,
		0.889175, 0.180195, 0.420592,
		-0.310498, 0.912785, 0.265358,
		34.749477, 38.064819, 50.351231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136799, 37.483658, 50.893539>,  <34.966827, 37.425873, 50.165478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136799, 37.483658, 50.893539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857208, 37.757530, 50.810936>,  <34.689453, 37.921852, 50.761375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857208, 37.757530, 50.810936>,  <35.136799, 37.483658, 50.893539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857208, 37.757530, 50.810936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539515, -0.315310, 0.780707,
		0.469421, 0.657109, 0.589790,
		-0.698976, 0.684681, -0.206507,
		34.647514, 37.962933, 50.748985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000278, 37.767437, 51.578236>,  <35.136799, 37.483658, 50.893539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000278, 37.767437, 51.578236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699051, 37.873955, 51.337582>,  <34.518314, 37.937866, 51.193188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699051, 37.873955, 51.337582>,  <35.000278, 37.767437, 51.578236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699051, 37.873955, 51.337582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652312, -0.421503, 0.629940,
		-0.085843, 0.866846, 0.491130,
		-0.753074, 0.266294, -0.601637,
		34.473129, 37.953842, 51.157089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536205, 38.104332, 51.981400>,  <35.000278, 37.767437, 51.578236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536205, 38.104332, 51.981400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319969, 37.971176, 51.672352>,  <34.190228, 37.891285, 51.486923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319969, 37.971176, 51.672352>,  <34.536205, 38.104332, 51.981400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319969, 37.971176, 51.672352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671995, -0.381669, 0.634627,
		-0.506146, 0.862273, -0.017372,
		-0.540591, -0.332888, -0.772624,
		34.157791, 37.871311, 51.440563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954266, 38.173199, 52.162956>,  <34.536205, 38.104332, 51.981400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954266, 38.173199, 52.162956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870369, 37.921783, 51.863373>,  <33.820030, 37.770935, 51.683620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870369, 37.921783, 51.863373>,  <33.954266, 38.173199, 52.162956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870369, 37.921783, 51.863373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754673, -0.382967, 0.532733,
		-0.621672, 0.676959, -0.394019,
		-0.209742, -0.628540, -0.748963,
		33.807446, 37.733223, 51.638683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281048, 38.269318, 51.943851>,  <33.954266, 38.173199, 52.162956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281048, 38.269318, 51.943851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363533, 37.894463, 51.831242>,  <33.413025, 37.669552, 51.763676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363533, 37.894463, 51.831242>,  <33.281048, 38.269318, 51.943851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363533, 37.894463, 51.831242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786726, -0.329861, 0.521780,
		-0.581842, 0.113886, -0.805289,
		0.206210, -0.937135, -0.281523,
		33.425396, 37.613323, 51.746784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650059, 37.956814, 51.667065>,  <33.281048, 38.269318, 51.943851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650059, 37.956814, 51.667065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881405, 37.649139, 51.775757>,  <33.020214, 37.464535, 51.840973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881405, 37.649139, 51.775757>,  <32.650059, 37.956814, 51.667065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881405, 37.649139, 51.775757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782319, -0.428563, 0.452008,
		-0.231228, -0.474004, -0.849619,
		0.578369, -0.769190, 0.271727,
		33.054916, 37.418381, 51.857273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283882, 37.326344, 51.417194>,  <32.650059, 37.956814, 51.667065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283882, 37.326344, 51.417194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547119, 37.178032, 51.679321>,  <32.705059, 37.089046, 51.836597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547119, 37.178032, 51.679321>,  <32.283882, 37.326344, 51.417194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547119, 37.178032, 51.679321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737165, -0.494501, 0.460496,
		0.153314, -0.786125, -0.598750,
		0.658090, -0.370777, 0.655318,
		32.744545, 37.066799, 51.875916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121902, 36.690296, 51.600380>,  <32.283882, 37.326344, 51.417194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121902, 36.690296, 51.600380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329796, 36.801376, 51.923553>,  <32.454533, 36.868023, 52.117458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329796, 36.801376, 51.923553>,  <32.121902, 36.690296, 51.600380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329796, 36.801376, 51.923553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568136, -0.593935, 0.569617,
		0.638044, -0.755066, -0.150916,
		0.519733, 0.277699, 0.807936,
		32.485714, 36.884686, 52.165936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007450, 36.149799, 51.988140>,  <32.121902, 36.690296, 51.600380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007450, 36.149799, 51.988140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148994, 36.414154, 52.252869>,  <32.233921, 36.572769, 52.411705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148994, 36.414154, 52.252869>,  <32.007450, 36.149799, 51.988140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148994, 36.414154, 52.252869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495309, -0.467817, 0.731995,
		0.793378, -0.586832, 0.161801,
		0.353864, 0.660890, 0.661819,
		32.255154, 36.612423, 52.451416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268818, 35.771206, 52.587063>,  <32.007450, 36.149799, 51.988140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268818, 35.771206, 52.587063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154869, 36.136116, 52.704773>,  <32.086498, 36.355061, 52.775398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154869, 36.136116, 52.704773>,  <32.268818, 35.771206, 52.587063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154869, 36.136116, 52.704773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589925, -0.408826, 0.696311,
		0.755536, 0.024760, 0.654639,
		-0.284874, 0.912276, 0.294276,
		32.069408, 36.409798, 52.793056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345802, 35.651588, 53.183735>,  <32.268818, 35.771206, 52.587063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345802, 35.651588, 53.183735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144417, 35.996475, 53.206001>,  <32.023586, 36.203407, 53.219360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144417, 35.996475, 53.206001>,  <32.345802, 35.651588, 53.183735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144417, 35.996475, 53.206001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414743, -0.297690, 0.859866,
		0.757964, 0.409828, 0.507477,
		-0.503468, 0.862220, 0.055665,
		31.993376, 36.255142, 53.222702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448746, 35.894707, 53.863605>,  <32.345802, 35.651588, 53.183735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448746, 35.894707, 53.863605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118736, 36.058792, 53.708141>,  <31.920731, 36.157242, 53.614864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118736, 36.058792, 53.708141>,  <32.448746, 35.894707, 53.863605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118736, 36.058792, 53.708141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537482, -0.357277, 0.763850,
		0.174482, 0.839094, 0.515245,
		-0.825027, 0.410213, -0.388660,
		31.871229, 36.181854, 53.591545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120354, 36.282234, 54.352333>,  <32.448746, 35.894707, 53.863605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120354, 36.282234, 54.352333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824728, 36.200104, 54.095703>,  <31.647352, 36.150826, 53.941727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824728, 36.200104, 54.095703>,  <32.120354, 36.282234, 54.352333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824728, 36.200104, 54.095703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511032, -0.449627, 0.732586,
		-0.438891, 0.869296, 0.227375,
		-0.739068, -0.205329, -0.641575,
		31.603008, 36.138504, 53.903229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568359, 36.381813, 54.768993>,  <32.120354, 36.282234, 54.352333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568359, 36.381813, 54.768993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416912, 36.169418, 54.465755>,  <31.326044, 36.041981, 54.283813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416912, 36.169418, 54.465755>,  <31.568359, 36.381813, 54.768993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416912, 36.169418, 54.465755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647297, -0.433533, 0.626942,
		-0.661555, 0.728082, -0.179562,
		-0.378619, -0.530986, -0.758091,
		31.303326, 36.010124, 54.238327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885283, 36.652954, 54.696060>,  <31.568359, 36.381813, 54.768993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885283, 36.652954, 54.696060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909988, 36.273766, 54.571136>,  <30.924812, 36.046253, 54.496181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909988, 36.273766, 54.571136>,  <30.885283, 36.652954, 54.696060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909988, 36.273766, 54.571136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702111, -0.263659, 0.661455,
		-0.709383, 0.178418, -0.681867,
		0.061765, -0.947972, -0.312305,
		30.928518, 35.989372, 54.477444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252581, 36.326809, 54.875530>,  <30.885283, 36.652954, 54.696060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252581, 36.326809, 54.875530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459492, 35.987762, 54.828255>,  <30.583639, 35.784336, 54.799889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459492, 35.987762, 54.828255>,  <30.252581, 36.326809, 54.875530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459492, 35.987762, 54.828255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570748, -0.444574, 0.690363,
		-0.637708, -0.289652, -0.713744,
		0.517276, -0.847618, -0.118190,
		30.614676, 35.733479, 54.792797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732916, 35.789120, 54.763405>,  <30.252581, 36.326809, 54.875530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732916, 35.789120, 54.763405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063406, 35.604477, 54.892567>,  <30.261700, 35.493690, 54.970066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063406, 35.604477, 54.892567>,  <29.732916, 35.789120, 54.763405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063406, 35.604477, 54.892567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540156, -0.486423, 0.686749,
		-0.159938, -0.741831, -0.651235,
		0.826227, -0.461606, 0.322907,
		30.311274, 35.465996, 54.989437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514782, 35.075352, 54.777576>,  <29.732916, 35.789120, 54.763405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514782, 35.075352, 54.777576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835030, 35.115845, 55.013802>,  <30.027178, 35.140141, 55.155537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835030, 35.115845, 55.013802>,  <29.514782, 35.075352, 54.777576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835030, 35.115845, 55.013802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437115, -0.575439, 0.691231,
		0.409808, -0.811555, -0.416456,
		0.800617, 0.101233, 0.590563,
		30.075214, 35.146214, 55.190971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675161, 34.401409, 55.082375>,  <29.514782, 35.075352, 54.777576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675161, 34.401409, 55.082375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845863, 34.687965, 55.303162>,  <29.948284, 34.859898, 55.435635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845863, 34.687965, 55.303162>,  <29.675161, 34.401409, 55.082375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845863, 34.687965, 55.303162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532425, -0.294331, 0.793658,
		0.731029, -0.632577, 0.255817,
		0.426755, 0.716390, 0.551965,
		29.973890, 34.902882, 55.468750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878511, 34.179661, 55.751610>,  <29.675161, 34.401409, 55.082375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878511, 34.179661, 55.751610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814827, 34.569061, 55.817276>,  <29.776617, 34.802700, 55.856674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814827, 34.569061, 55.817276>,  <29.878511, 34.179661, 55.751610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814827, 34.569061, 55.817276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551757, -0.225634, 0.802903,
		0.818667, 0.037252, 0.573058,
		-0.159212, 0.973500, 0.164165,
		29.767063, 34.861111, 55.866524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915667, 34.278221, 56.488728>,  <29.878511, 34.179661, 55.751610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915667, 34.278221, 56.488728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710680, 34.587044, 56.338367>,  <29.587688, 34.772339, 56.248150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710680, 34.587044, 56.338367>,  <29.915667, 34.278221, 56.488728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710680, 34.587044, 56.338367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610327, -0.019547, 0.791909,
		0.604053, 0.635248, 0.481227,
		-0.512465, 0.772061, -0.375901,
		29.556940, 34.818661, 56.225597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700945, 33.646782, 56.750980>,  <29.915667, 34.278221, 56.488728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700945, 33.646782, 56.750980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551111, 34.010132, 56.825325>,  <29.461210, 34.228142, 56.869930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551111, 34.010132, 56.825325>,  <29.700945, 33.646782, 56.750980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551111, 34.010132, 56.825325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253838, -0.293267, 0.921716,
		0.891769, 0.298084, 0.340433,
		-0.374587, 0.908372, 0.185861,
		29.438736, 34.282642, 56.881084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997351, 33.914455, 57.468845>,  <29.700945, 33.646782, 56.750980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997351, 33.914455, 57.468845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638227, 34.069000, 57.384312>,  <29.422752, 34.161728, 57.333591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638227, 34.069000, 57.384312>,  <29.997351, 33.914455, 57.468845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638227, 34.069000, 57.384312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264298, -0.088879, 0.960337,
		0.352256, 0.918054, 0.181912,
		-0.897810, 0.386364, -0.211331,
		29.368885, 34.184910, 57.320911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144123, 34.328651, 58.048203>,  <29.997351, 33.914455, 57.468845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144123, 34.328651, 58.048203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232883, 34.568977, 58.355392>,  <30.286140, 34.713173, 58.539707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232883, 34.568977, 58.355392>,  <30.144123, 34.328651, 58.048203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232883, 34.568977, 58.355392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171292, 0.751342, -0.637295,
		-0.959905, 0.272965, 0.063810,
		0.221902, 0.600813, 0.767974,
		30.299454, 34.749222, 58.585785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866718, 34.906216, 57.901505>,  <30.144123, 34.328651, 58.048203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866718, 34.906216, 57.901505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185740, 34.953056, 58.138214>,  <30.377151, 34.981159, 58.280239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185740, 34.953056, 58.138214>,  <29.866718, 34.906216, 57.901505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185740, 34.953056, 58.138214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290404, 0.785298, -0.546784,
		-0.528748, 0.607943, 0.592310,
		0.797553, 0.117102, 0.591774,
		30.425005, 34.988186, 58.315746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029350, 35.567764, 57.713306>,  <29.866718, 34.906216, 57.901505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029350, 35.567764, 57.713306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358929, 35.416862, 57.882439>,  <30.556677, 35.326321, 57.983917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358929, 35.416862, 57.882439>,  <30.029350, 35.567764, 57.713306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358929, 35.416862, 57.882439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566383, 0.571851, -0.593461,
		-0.017911, 0.728467, 0.684847,
		0.823947, -0.377256, 0.422834,
		30.606113, 35.303684, 58.009289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491421, 36.120499, 57.896317>,  <30.029350, 35.567764, 57.713306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491421, 36.120499, 57.896317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730610, 35.802551, 57.855110>,  <30.874123, 35.611782, 57.830387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730610, 35.802551, 57.855110>,  <30.491421, 36.120499, 57.896317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730610, 35.802551, 57.855110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660330, 0.561402, -0.498791,
		0.454306, 0.230240, 0.860579,
		0.597972, -0.794869, -0.103014,
		30.910002, 35.564091, 57.824207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228157, 36.228371, 58.199528>,  <30.491421, 36.120499, 57.896317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228157, 36.228371, 58.199528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216314, 35.972031, 57.892689>,  <31.209209, 35.818226, 57.708588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216314, 35.972031, 57.892689>,  <31.228157, 36.228371, 58.199528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216314, 35.972031, 57.892689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602432, 0.600948, -0.525297,
		0.797621, -0.477675, 0.368276,
		-0.029607, -0.640849, -0.767096,
		31.207432, 35.779778, 57.662560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895668, 36.127178, 58.051975>,  <31.228157, 36.228371, 58.199528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895668, 36.127178, 58.051975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712715, 36.029106, 57.710056>,  <31.602943, 35.970261, 57.504906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712715, 36.029106, 57.710056>,  <31.895668, 36.127178, 58.051975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712715, 36.029106, 57.710056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701088, 0.491915, -0.516231,
		0.547061, -0.835407, -0.053098,
		-0.457383, -0.245184, -0.854801,
		31.575500, 35.955551, 57.453617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426079, 35.889996, 57.667923>,  <31.895668, 36.127178, 58.051975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426079, 35.889996, 57.667923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141609, 35.993462, 57.406445>,  <31.970926, 36.055542, 57.249557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141609, 35.993462, 57.406445>,  <32.426079, 35.889996, 57.667923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141609, 35.993462, 57.406445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676915, 0.502966, -0.537412,
		0.189776, -0.824692, -0.532793,
		-0.711176, 0.258668, -0.653697,
		31.928257, 36.071060, 57.210335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689514, 35.745010, 57.068085>,  <32.426079, 35.889996, 57.667923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689514, 35.745010, 57.068085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379234, 35.979103, 56.973595>,  <32.193066, 36.119556, 56.916901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379234, 35.979103, 56.973595>,  <32.689514, 35.745010, 57.068085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379234, 35.979103, 56.973595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577413, 0.507037, -0.639929,
		-0.254733, -0.632788, -0.731226,
		-0.775697, 0.585230, -0.236221,
		32.146526, 36.154671, 56.902729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730659, 35.752159, 56.376732>,  <32.689514, 35.745010, 57.068085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730659, 35.752159, 56.376732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526924, 36.077164, 56.490154>,  <32.404682, 36.272167, 56.558208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526924, 36.077164, 56.490154>,  <32.730659, 35.752159, 56.376732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526924, 36.077164, 56.490154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585978, 0.568762, -0.577183,
		-0.630245, -0.127819, -0.765803,
		-0.509334, 0.812510, 0.283560,
		32.374123, 36.320915, 56.575222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838802, 36.115891, 55.836555>,  <32.730659, 35.752159, 56.376732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838802, 36.115891, 55.836555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711708, 36.392723, 56.095806>,  <32.635452, 36.558823, 56.251358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711708, 36.392723, 56.095806>,  <32.838802, 36.115891, 55.836555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711708, 36.392723, 56.095806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424806, 0.715011, -0.555247,
		-0.847694, 0.098907, -0.521184,
		-0.317734, 0.692081, 0.648127,
		32.616386, 36.600346, 56.290245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611282, 36.635288, 55.410236>,  <32.838802, 36.115891, 55.836555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611282, 36.635288, 55.410236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701954, 36.797546, 55.764427>,  <32.756355, 36.894901, 55.976940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701954, 36.797546, 55.764427>,  <32.611282, 36.635288, 55.410236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701954, 36.797546, 55.764427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318370, 0.828340, -0.460970,
		-0.920466, 0.386400, 0.058620,
		0.226676, 0.405645, 0.885477,
		32.769958, 36.919239, 56.030071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379234, 37.310993, 55.375729>,  <32.611282, 36.635288, 55.410236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379234, 37.310993, 55.375729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644348, 37.347099, 55.673069>,  <32.803417, 37.368763, 55.851475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644348, 37.347099, 55.673069>,  <32.379234, 37.310993, 55.375729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644348, 37.347099, 55.673069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396219, 0.800079, -0.450426,
		-0.635395, 0.593065, 0.494517,
		0.662785, 0.090262, 0.743350,
		32.843185, 37.374176, 55.896072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638870, 37.971294, 55.273579>,  <32.379234, 37.310993, 55.375729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638870, 37.971294, 55.273579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907974, 37.825310, 55.531013>,  <33.069435, 37.737720, 55.685474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907974, 37.825310, 55.531013>,  <32.638870, 37.971294, 55.273579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907974, 37.825310, 55.531013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653553, 0.700874, -0.285734,
		-0.346792, 0.612847, 0.710038,
		0.672758, -0.364957, 0.643586,
		33.109802, 37.715824, 55.724091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957035, 38.629372, 55.676842>,  <32.638870, 37.971294, 55.273579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957035, 38.629372, 55.676842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189552, 38.304123, 55.689056>,  <33.329063, 38.108974, 55.696384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189552, 38.304123, 55.689056>,  <32.957035, 38.629372, 55.676842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189552, 38.304123, 55.689056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787075, 0.552367, -0.274599,
		0.206416, 0.183656, 0.961074,
		0.581297, -0.813118, 0.030534,
		33.363941, 38.060188, 55.698215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557858, 38.911812, 55.904388>,  <32.957035, 38.629372, 55.676842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557858, 38.911812, 55.904388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661102, 38.554276, 55.757729>,  <33.723049, 38.339756, 55.669731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661102, 38.554276, 55.757729>,  <33.557858, 38.911812, 55.904388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661102, 38.554276, 55.757729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813549, 0.405780, -0.416510,
		0.521071, -0.190782, 0.831918,
		0.258113, -0.893837, -0.366651,
		33.738537, 38.286125, 55.647732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276337, 38.868958, 56.096264>,  <33.557858, 38.911812, 55.904388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276337, 38.868958, 56.096264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187157, 38.641228, 55.779743>,  <34.133648, 38.504589, 55.589828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187157, 38.641228, 55.779743>,  <34.276337, 38.868958, 56.096264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187157, 38.641228, 55.779743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739223, 0.430429, -0.517958,
		0.635487, -0.700427, 0.324896,
		-0.222948, -0.569326, -0.791304,
		34.120274, 38.470428, 55.542351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942226, 38.691418, 55.816597>,  <34.276337, 38.868958, 56.096264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942226, 38.691418, 55.816597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680523, 38.596954, 55.529213>,  <34.523502, 38.540276, 55.356785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680523, 38.596954, 55.529213>,  <34.942226, 38.691418, 55.816597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680523, 38.596954, 55.529213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628799, 0.357958, -0.690273,
		0.420193, -0.903379, -0.085697,
		-0.654254, -0.236162, -0.718456,
		34.484245, 38.526108, 55.313675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344288, 38.364933, 55.277897>,  <34.942226, 38.691418, 55.816597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344288, 38.364933, 55.277897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011345, 38.468224, 55.081734>,  <34.811581, 38.530197, 54.964035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011345, 38.468224, 55.081734>,  <35.344288, 38.364933, 55.277897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011345, 38.468224, 55.081734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552974, 0.446621, -0.703384,
		0.037390, -0.856649, -0.514543,
		-0.832359, 0.258230, -0.490404,
		34.761639, 38.545692, 54.934612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470646, 38.189846, 54.548424>,  <35.344288, 38.364933, 55.277897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470646, 38.189846, 54.548424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173374, 38.457458, 54.552097>,  <34.995010, 38.618027, 54.554302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173374, 38.457458, 54.552097>,  <35.470646, 38.189846, 54.548424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173374, 38.457458, 54.552097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383367, 0.437030, -0.813655,
		-0.548372, -0.601172, -0.581275,
		-0.743181, 0.669027, 0.009186,
		34.950420, 38.658165, 54.554852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198544, 38.182068, 53.873718>,  <35.470646, 38.189846, 54.548424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198544, 38.182068, 53.873718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127926, 38.536423, 54.045315>,  <35.085556, 38.749035, 54.148273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127926, 38.536423, 54.045315>,  <35.198544, 38.182068, 53.873718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127926, 38.536423, 54.045315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577289, 0.446203, -0.683842,
		-0.797225, 0.126923, -0.590189,
		-0.176549, 0.885886, 0.428996,
		35.074963, 38.802189, 54.174015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185165, 38.617805, 53.254524>,  <35.198544, 38.182068, 53.873718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185165, 38.617805, 53.254524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208382, 38.875244, 53.559788>,  <35.222309, 39.029709, 53.742947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208382, 38.875244, 53.559788>,  <35.185165, 38.617805, 53.254524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208382, 38.875244, 53.559788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533907, 0.625927, -0.568471,
		-0.843549, 0.440449, -0.307294,
		0.058039, 0.643599, 0.763159,
		35.225792, 39.068325, 53.788734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069336, 39.299370, 52.994221>,  <35.185165, 38.617805, 53.254524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069336, 39.299370, 52.994221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261436, 39.367622, 53.338371>,  <35.376698, 39.408573, 53.544861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261436, 39.367622, 53.338371>,  <35.069336, 39.299370, 52.994221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261436, 39.367622, 53.338371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599736, 0.651902, -0.464048,
		-0.640060, 0.738857, 0.210744,
		0.480250, 0.170628, 0.860376,
		35.405510, 39.418812, 53.596485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158993, 40.018238, 52.984146>,  <35.069336, 39.299370, 52.994221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158993, 40.018238, 52.984146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446983, 39.905075, 53.237633>,  <35.619778, 39.837177, 53.389725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446983, 39.905075, 53.237633>,  <35.158993, 40.018238, 52.984146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446983, 39.905075, 53.237633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681561, 0.460320, -0.568841,
		-0.130784, 0.841469, 0.524238,
		0.719979, -0.282905, 0.633715,
		35.662975, 39.820202, 53.427746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658493, 40.588875, 52.981155>,  <35.158993, 40.018238, 52.984146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658493, 40.588875, 52.981155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904030, 40.338486, 53.173553>,  <36.051353, 40.188251, 53.288994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904030, 40.338486, 53.173553>,  <35.658493, 40.588875, 52.981155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904030, 40.338486, 53.173553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761995, 0.310599, -0.568236,
		0.206303, 0.715323, 0.667647,
		0.613843, -0.625972, 0.480995,
		36.088184, 40.150696, 53.317852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292439, 40.963058, 53.209877>,  <35.658493, 40.588875, 52.981155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292439, 40.963058, 53.209877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402958, 40.578651, 53.213867>,  <36.469269, 40.348007, 53.216263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402958, 40.578651, 53.213867>,  <36.292439, 40.963058, 53.209877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402958, 40.578651, 53.213867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859831, 0.242547, -0.449290,
		0.429356, 0.132718, 0.893330,
		0.276303, -0.961019, 0.009976,
		36.485847, 40.290344, 53.216862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985260, 40.955082, 53.384613>,  <36.292439, 40.963058, 53.209877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985260, 40.955082, 53.384613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933624, 40.604050, 53.199921>,  <36.902641, 40.393433, 53.089108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933624, 40.604050, 53.199921>,  <36.985260, 40.955082, 53.384613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933624, 40.604050, 53.199921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860226, 0.132529, -0.492390,
		0.493303, -0.460751, 0.737808,
		-0.129088, -0.877579, -0.461727,
		36.894897, 40.340775, 53.061401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733795, 40.624081, 53.312538>,  <36.985260, 40.955082, 53.384613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733795, 40.624081, 53.312538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515823, 40.436058, 53.034805>,  <37.385040, 40.323242, 52.868164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515823, 40.436058, 53.034805>,  <37.733795, 40.624081, 53.312538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515823, 40.436058, 53.034805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837203, -0.259264, -0.481532,
		0.046332, -0.843698, 0.534814,
		-0.544926, -0.470059, -0.694335,
		37.352345, 40.295040, 52.826504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128574, 40.037529, 53.051979>,  <37.733795, 40.624081, 53.312538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128574, 40.037529, 53.051979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849850, 40.092552, 52.770405>,  <37.682613, 40.125565, 52.601460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849850, 40.092552, 52.770405>,  <38.128574, 40.037529, 53.051979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849850, 40.092552, 52.770405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707431, -0.030072, -0.706143,
		-0.118305, -0.990037, -0.076359,
		-0.696811, 0.137559, -0.703940,
		37.640808, 40.133820, 52.559223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271812, 39.562668, 52.489288>,  <38.128574, 40.037529, 53.051979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271812, 39.562668, 52.489288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062317, 39.868355, 52.338730>,  <37.936619, 40.051765, 52.248394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062317, 39.868355, 52.338730>,  <38.271812, 39.562668, 52.489288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062317, 39.868355, 52.338730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639651, 0.060974, -0.766244,
		-0.562626, -0.642071, -0.520766,
		-0.523736, 0.764217, -0.376395,
		37.905197, 40.097618, 52.225811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294804, 39.456028, 51.755032>,  <38.271812, 39.562668, 52.489288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294804, 39.456028, 51.755032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175022, 39.836296, 51.787437>,  <38.103153, 40.064457, 51.806881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175022, 39.836296, 51.787437>,  <38.294804, 39.456028, 51.755032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175022, 39.836296, 51.787437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538311, 0.238443, -0.808311,
		-0.787751, -0.198439, -0.583156,
		-0.299450, 0.950667, 0.081011,
		38.085186, 40.121494, 51.811741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003613, 39.694729, 51.157555>,  <38.294804, 39.456028, 51.755032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003613, 39.694729, 51.157555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097946, 40.045372, 51.325336>,  <38.154549, 40.255756, 51.426006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097946, 40.045372, 51.325336>,  <38.003613, 39.694729, 51.157555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097946, 40.045372, 51.325336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293036, 0.347393, -0.890757,
		-0.926559, 0.332990, -0.174949,
		0.235837, 0.876605, 0.419459,
		38.168697, 40.308353, 51.451176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020000, 40.074326, 50.567482>,  <38.003613, 39.694729, 51.157555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020000, 40.074326, 50.567482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205879, 40.296623, 50.843224>,  <38.317406, 40.430000, 51.008667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205879, 40.296623, 50.843224>,  <38.020000, 40.074326, 50.567482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205879, 40.296623, 50.843224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494501, 0.482923, -0.722671,
		-0.734524, 0.676708, -0.050404,
		0.464696, 0.555744, 0.689352,
		38.345287, 40.463348, 51.050030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997482, 40.767090, 50.294331>,  <38.020000, 40.074326, 50.567482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997482, 40.767090, 50.294331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289642, 40.752388, 50.567142>,  <38.464939, 40.743568, 50.730827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289642, 40.752388, 50.567142>,  <37.997482, 40.767090, 50.294331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289642, 40.752388, 50.567142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621119, 0.451106, -0.640870,
		-0.284114, 0.891713, 0.352316,
		0.730404, -0.036750, 0.682026,
		38.508762, 40.741364, 50.771751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263741, 41.450684, 50.393692>,  <37.997482, 40.767090, 50.294331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263741, 41.450684, 50.393692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561028, 41.220161, 50.529633>,  <38.739399, 41.081848, 50.611195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561028, 41.220161, 50.529633>,  <38.263741, 41.450684, 50.393692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561028, 41.220161, 50.529633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641002, 0.467831, -0.608483,
		0.191680, 0.670079, 0.717114,
		0.743220, -0.576305, 0.339848,
		38.783993, 41.047272, 50.631588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849483, 41.936920, 50.623100>,  <38.263741, 41.450684, 50.393692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849483, 41.936920, 50.623100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013924, 41.576683, 50.566639>,  <39.112587, 41.360538, 50.532764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013924, 41.576683, 50.566639>,  <38.849483, 41.936920, 50.623100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013924, 41.576683, 50.566639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545944, 0.367234, -0.753050,
		0.730029, 0.232519, 0.642645,
		0.411099, -0.900596, -0.141150,
		39.137253, 41.306503, 50.524296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415279, 42.199356, 50.247448>,  <38.849483, 41.936920, 50.623100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415279, 42.199356, 50.247448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491249, 41.809837, 50.197411>,  <39.536831, 41.576126, 50.167389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491249, 41.809837, 50.197411>,  <39.415279, 42.199356, 50.247448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491249, 41.809837, 50.197411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690885, 0.223091, -0.687684,
		0.697571, 0.044184, 0.715152,
		0.189928, -0.973796, -0.125096,
		39.548229, 41.517700, 50.159882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144958, 42.092037, 50.310738>,  <39.415279, 42.199356, 50.247448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144958, 42.092037, 50.310738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973869, 41.799797, 50.097843>,  <39.871216, 41.624454, 49.970108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973869, 41.799797, 50.097843>,  <40.144958, 42.092037, 50.310738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973869, 41.799797, 50.097843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625686, 0.185650, -0.757662,
		0.652357, -0.657083, 0.377719,
		-0.427724, -0.730600, -0.532237,
		39.845551, 41.580616, 49.938171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760494, 41.654736, 50.018036>,  <40.144958, 42.092037, 50.310738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760494, 41.654736, 50.018036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427307, 41.578842, 49.810127>,  <40.227394, 41.533306, 49.685383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427307, 41.578842, 49.810127>,  <40.760494, 41.654736, 50.018036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427307, 41.578842, 49.810127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496771, 0.157267, -0.853514,
		0.243681, -0.969159, -0.036746,
		-0.832970, -0.189731, -0.519773,
		40.177418, 41.521923, 49.654194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047447, 41.443405, 49.404526>,  <40.760494, 41.654736, 50.018036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047447, 41.443405, 49.404526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664604, 41.510948, 49.310349>,  <40.434898, 41.551476, 49.253841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664604, 41.510948, 49.310349>,  <41.047447, 41.443405, 49.404526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664604, 41.510948, 49.310349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286202, 0.424474, -0.859017,
		-0.045117, -0.889555, -0.454596,
		-0.957106, 0.168862, -0.235442,
		40.377472, 41.561607, 49.239716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845432, 41.329258, 48.650711>,  <41.047447, 41.443405, 49.404526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845432, 41.329258, 48.650711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568092, 41.591034, 48.771355>,  <40.401688, 41.748100, 48.843742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568092, 41.591034, 48.771355>,  <40.845432, 41.329258, 48.650711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568092, 41.591034, 48.771355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147633, 0.538684, -0.829472,
		-0.705314, -0.530589, -0.470115,
		-0.693352, 0.654442, 0.301609,
		40.360088, 41.787365, 48.861835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562588, 41.546574, 48.021709>,  <40.845432, 41.329258, 48.650711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562588, 41.546574, 48.021709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431717, 41.812759, 48.290070>,  <40.353195, 41.972473, 48.451084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431717, 41.812759, 48.290070>,  <40.562588, 41.546574, 48.021709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431717, 41.812759, 48.290070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087558, 0.728269, -0.679675,
		-0.940898, -0.163631, -0.296539,
		-0.327176, 0.665469, 0.670900,
		40.333565, 42.012402, 48.491341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958134, 41.940136, 47.803352>,  <40.562588, 41.546574, 48.021709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958134, 41.940136, 47.803352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143398, 42.180023, 48.064369>,  <40.254559, 42.323956, 48.220982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143398, 42.180023, 48.064369>,  <39.958134, 41.940136, 47.803352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143398, 42.180023, 48.064369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118628, 0.687706, -0.716231,
		-0.878297, 0.409143, 0.247378,
		0.463164, 0.599718, 0.652546,
		40.282349, 42.359940, 48.260132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728584, 42.613010, 47.598202>,  <39.958134, 41.940136, 47.803352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728584, 42.613010, 47.598202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023361, 42.708992, 47.850975>,  <40.200226, 42.766582, 48.002640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023361, 42.708992, 47.850975>,  <39.728584, 42.613010, 47.598202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023361, 42.708992, 47.850975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150539, 0.853132, -0.499503,
		-0.658979, 0.463235, 0.592587,
		0.736943, 0.239954, 0.631931,
		40.244446, 42.780979, 48.040554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702351, 43.392673, 47.656624>,  <39.728584, 42.613010, 47.598202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702351, 43.392673, 47.656624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078754, 43.314171, 47.766884>,  <40.304596, 43.267067, 47.833042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078754, 43.314171, 47.766884>,  <39.702351, 43.392673, 47.656624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078754, 43.314171, 47.766884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319931, 0.781345, -0.535858,
		-0.110213, 0.592437, 0.798042,
		0.941009, -0.196260, 0.275653,
		40.361057, 43.255295, 47.849579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015408, 43.991821, 47.967117>,  <39.702351, 43.392673, 47.656624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015408, 43.991821, 47.967117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321651, 43.761795, 47.851784>,  <40.505398, 43.623779, 47.782581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321651, 43.761795, 47.851784>,  <40.015408, 43.991821, 47.967117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321651, 43.761795, 47.851784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299077, 0.715016, -0.631906,
		0.569553, 0.397561, 0.719413,
		0.765613, -0.575064, -0.288338,
		40.551334, 43.589275, 47.765282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502953, 43.785717, 48.345688>,  <40.015408, 43.991821, 47.967117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502953, 43.785717, 48.345688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562210, 44.162636, 48.465775>,  <39.597767, 44.388786, 48.537827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562210, 44.162636, 48.465775>,  <39.502953, 43.785717, 48.345688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562210, 44.162636, 48.465775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319362, -0.241722, 0.916285,
		0.935981, -0.231623, 0.265123,
		0.148146, 0.942296, 0.300219,
		39.606655, 44.445324, 48.555840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981136, 43.705910, 48.874729>,  <39.502953, 43.785717, 48.345688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981136, 43.705910, 48.874729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798729, 44.056610, 48.935860>,  <39.689285, 44.267029, 48.972538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798729, 44.056610, 48.935860>,  <39.981136, 43.705910, 48.874729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798729, 44.056610, 48.935860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139346, -0.239944, 0.960734,
		0.878996, 0.416812, 0.231590,
		-0.456014, 0.876752, 0.152828,
		39.661926, 44.319637, 48.981709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220390, 43.845451, 49.498398>,  <39.981136, 43.705910, 48.874729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220390, 43.845451, 49.498398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877495, 44.040642, 49.432648>,  <39.671757, 44.157757, 49.393196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877495, 44.040642, 49.432648>,  <40.220390, 43.845451, 49.498398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877495, 44.040642, 49.432648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293461, -0.200674, 0.934671,
		0.423114, 0.849474, 0.315228,
		-0.857237, 0.487979, -0.164380,
		39.620323, 44.187035, 49.383335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082138, 44.300526, 50.114346>,  <40.220390, 43.845451, 49.498398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082138, 44.300526, 50.114346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729877, 44.272766, 49.926884>,  <39.518520, 44.256111, 49.814407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729877, 44.272766, 49.926884>,  <40.082138, 44.300526, 50.114346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729877, 44.272766, 49.926884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445458, -0.215487, 0.868984,
		-0.161296, 0.974037, 0.158854,
		-0.880654, -0.069401, -0.468650,
		39.465683, 44.251945, 49.786289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619724, 44.549438, 50.603973>,  <40.082138, 44.300526, 50.114346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619724, 44.549438, 50.603973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393303, 44.373962, 50.324791>,  <39.257450, 44.268677, 50.157284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393303, 44.373962, 50.324791>,  <39.619724, 44.549438, 50.603973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393303, 44.373962, 50.324791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702963, -0.185391, 0.686639,
		-0.430614, 0.879309, -0.203440,
		-0.566052, -0.438687, -0.697953,
		39.223488, 44.242355, 50.115406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999714, 44.874191, 50.671253>,  <39.619724, 44.549438, 50.603973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999714, 44.874191, 50.671253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950283, 44.501480, 50.534714>,  <38.920624, 44.277855, 50.452789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950283, 44.501480, 50.534714>,  <38.999714, 44.874191, 50.671253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950283, 44.501480, 50.534714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729398, -0.147944, 0.667900,
		-0.672835, 0.331516, -0.661355,
		-0.123576, -0.931778, -0.341349,
		38.913212, 44.221947, 50.432308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231129, 44.795212, 50.534985>,  <38.999714, 44.874191, 50.671253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231129, 44.795212, 50.534985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335533, 44.409210, 50.524780>,  <38.398174, 44.177608, 50.518658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335533, 44.409210, 50.524780>,  <38.231129, 44.795212, 50.534985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335533, 44.409210, 50.524780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778755, -0.226102, 0.585165,
		-0.570452, -0.132867, -0.810513,
		0.261008, -0.964999, -0.025509,
		38.413837, 44.119709, 50.517128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606575, 44.401722, 50.483978>,  <38.231129, 44.795212, 50.534985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606575, 44.401722, 50.483978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877380, 44.144157, 50.626541>,  <38.039864, 43.989620, 50.712078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877380, 44.144157, 50.626541>,  <37.606575, 44.401722, 50.483978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877380, 44.144157, 50.626541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657237, -0.311043, 0.686507,
		-0.331195, -0.699018, -0.633786,
		0.677015, -0.643915, 0.356404,
		38.080486, 43.950985, 50.733463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303440, 43.702736, 50.304714>,  <37.606575, 44.401722, 50.483978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303440, 43.702736, 50.304714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576683, 43.649002, 50.591858>,  <37.740627, 43.616760, 50.764145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576683, 43.649002, 50.591858>,  <37.303440, 43.702736, 50.304714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576683, 43.649002, 50.591858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675466, -0.489956, 0.551079,
		0.277691, -0.861335, -0.425429,
		0.683106, -0.134333, 0.717859,
		37.781616, 43.608704, 50.807217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362648, 42.889297, 50.455753>,  <37.303440, 43.702736, 50.304714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362648, 42.889297, 50.455753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489040, 43.112320, 50.762814>,  <37.564877, 43.246136, 50.947048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489040, 43.112320, 50.762814>,  <37.362648, 42.889297, 50.455753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489040, 43.112320, 50.762814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668285, -0.443525, 0.597227,
		0.673460, -0.701721, 0.232462,
		0.315984, 0.557560, 0.767647,
		37.583836, 43.279587, 50.993107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444920, 42.491489, 50.984966>,  <37.362648, 42.889297, 50.455753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444920, 42.491489, 50.984966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384041, 42.857086, 51.135414>,  <37.347515, 43.076443, 51.225681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384041, 42.857086, 51.135414>,  <37.444920, 42.491489, 50.984966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384041, 42.857086, 51.135414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694259, -0.369717, 0.617506,
		0.703450, -0.167143, 0.690812,
		-0.152193, 0.913987, 0.376118,
		37.338383, 43.131283, 51.248249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270866, 42.328957, 51.690792>,  <37.444920, 42.491489, 50.984966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270866, 42.328957, 51.690792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201912, 42.722847, 51.680996>,  <37.160538, 42.959183, 51.675117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201912, 42.722847, 51.680996>,  <37.270866, 42.328957, 51.690792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201912, 42.722847, 51.680996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666678, -0.098332, 0.738831,
		0.725137, 0.143692, 0.673445,
		-0.172386, 0.984725, -0.024492,
		37.150196, 43.018265, 51.673649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534389, 42.558807, 52.293663>,  <37.270866, 42.328957, 51.690792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534389, 42.558807, 52.293663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246578, 42.791565, 52.142044>,  <37.073891, 42.931217, 52.051071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246578, 42.791565, 52.142044>,  <37.534389, 42.558807, 52.293663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246578, 42.791565, 52.142044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552838, -0.149612, 0.819748,
		0.420292, 0.799387, 0.429341,
		-0.719531, 0.581890, -0.379051,
		37.030720, 42.966133, 52.028328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372643, 42.870125, 52.924721>,  <37.534389, 42.558807, 52.293663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372643, 42.870125, 52.924721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072777, 42.940056, 52.669395>,  <36.892857, 42.982014, 52.516201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072777, 42.940056, 52.669395>,  <37.372643, 42.870125, 52.924721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072777, 42.940056, 52.669395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648783, -0.003620, 0.760965,
		0.130727, 0.984592, 0.116139,
		-0.749661, 0.174827, -0.638313,
		36.847878, 42.992504, 52.477901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013962, 43.382282, 53.173836>,  <37.372643, 42.870125, 52.924721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013962, 43.382282, 53.173836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740406, 43.192345, 52.952271>,  <36.576271, 43.078381, 52.819332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740406, 43.192345, 52.952271>,  <37.013962, 43.382282, 53.173836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740406, 43.192345, 52.952271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628148, -0.002960, 0.778088,
		-0.371109, 0.880066, -0.296247,
		-0.683892, -0.474842, -0.553910,
		36.535240, 43.049892, 52.786098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394058, 43.579826, 53.432629>,  <37.013962, 43.382282, 53.173836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394058, 43.579826, 53.432629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273521, 43.274445, 53.204128>,  <36.201199, 43.091217, 53.067028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273521, 43.274445, 53.204128>,  <36.394058, 43.579826, 53.432629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273521, 43.274445, 53.204128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750843, -0.179282, 0.635682,
		-0.587730, 0.620480, -0.519209,
		-0.301343, -0.763454, -0.571253,
		36.183117, 43.045410, 53.032753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589233, 43.669514, 53.233978>,  <36.394058, 43.579826, 53.432629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589233, 43.669514, 53.233978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703266, 43.287270, 53.204231>,  <35.771687, 43.057922, 53.186382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703266, 43.287270, 53.204231>,  <35.589233, 43.669514, 53.233978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703266, 43.287270, 53.204231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719721, -0.264662, 0.641838,
		-0.633032, -0.129450, -0.763226,
		0.285083, -0.955614, -0.074371,
		35.788792, 43.000587, 53.181919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940838, 43.160915, 53.060173>,  <35.589233, 43.669514, 53.233978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940838, 43.160915, 53.060173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222351, 42.926842, 53.221294>,  <35.391258, 42.786396, 53.317966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222351, 42.926842, 53.221294>,  <34.940838, 43.160915, 53.060173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222351, 42.926842, 53.221294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677773, -0.383186, 0.627529,
		-0.212876, -0.714649, -0.666304,
		0.703781, -0.585189, 0.402799,
		35.433487, 42.751286, 53.342133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641033, 42.507267, 53.112133>,  <34.940838, 43.160915, 53.060173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641033, 42.507267, 53.112133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962730, 42.458801, 53.344860>,  <35.155750, 42.429722, 53.484497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962730, 42.458801, 53.344860>,  <34.641033, 42.507267, 53.112133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962730, 42.458801, 53.344860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525485, -0.602270, 0.600947,
		0.277596, -0.789043, -0.548043,
		0.804243, -0.121168, 0.581818,
		35.204002, 42.422451, 53.519405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606125, 41.830200, 53.259777>,  <34.641033, 42.507267, 53.112133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606125, 41.830200, 53.259777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840302, 42.002495, 53.534504>,  <34.980808, 42.105873, 53.699341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840302, 42.002495, 53.534504>,  <34.606125, 41.830200, 53.259777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840302, 42.002495, 53.534504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431281, -0.551886, 0.713736,
		0.686481, -0.714062, -0.137327,
		0.585441, 0.430739, 0.686821,
		35.015934, 42.131718, 53.740551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775875, 41.300148, 53.678299>,  <34.606125, 41.830200, 53.259777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775875, 41.300148, 53.678299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887901, 41.611168, 53.903503>,  <34.955116, 41.797779, 54.038624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887901, 41.611168, 53.903503>,  <34.775875, 41.300148, 53.678299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887901, 41.611168, 53.903503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243665, -0.509695, 0.825129,
		0.928543, -0.368273, 0.046716,
		0.280062, 0.777552, 0.563009,
		34.971920, 41.844433, 54.072407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215275, 40.938316, 54.193176>,  <34.775875, 41.300148, 53.678299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215275, 40.938316, 54.193176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068985, 41.282410, 54.335300>,  <34.981213, 41.488865, 54.420574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068985, 41.282410, 54.335300>,  <35.215275, 40.938316, 54.193176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068985, 41.282410, 54.335300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423300, -0.493729, 0.759637,
		0.828893, 0.127412, 0.544705,
		-0.365723, 0.860231, 0.355315,
		34.959267, 41.540478, 54.441895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325581, 40.888100, 54.996716>,  <35.215275, 40.938316, 54.193176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325581, 40.888100, 54.996716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055992, 41.178185, 54.940388>,  <34.894238, 41.352234, 54.906590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055992, 41.178185, 54.940388>,  <35.325581, 40.888100, 54.996716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055992, 41.178185, 54.940388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545829, -0.360379, 0.756437,
		0.497830, 0.586679, 0.638727,
		-0.673970, 0.725213, -0.140819,
		34.853802, 41.395748, 54.898144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124813, 41.174564, 55.699780>,  <35.325581, 40.888100, 54.996716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124813, 41.174564, 55.699780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834595, 41.256729, 55.437057>,  <34.660465, 41.306026, 55.279423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834595, 41.256729, 55.437057>,  <35.124813, 41.174564, 55.699780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834595, 41.256729, 55.437057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687123, -0.268971, 0.674920,
		-0.038027, 0.940990, 0.336291,
		-0.725545, 0.205408, -0.656804,
		34.616932, 41.318352, 55.240017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616997, 41.367657, 56.078484>,  <35.124813, 41.174564, 55.699780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616997, 41.367657, 56.078484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409081, 41.294037, 55.744789>,  <34.284332, 41.249863, 55.544575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409081, 41.294037, 55.744789>,  <34.616997, 41.367657, 56.078484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409081, 41.294037, 55.744789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742243, -0.386172, 0.547673,
		-0.422958, 0.903878, 0.064117,
		-0.519790, -0.184052, -0.834232,
		34.253143, 41.238823, 55.494518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882000, 41.538277, 56.252743>,  <34.616997, 41.367657, 56.078484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882000, 41.538277, 56.252743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899986, 41.276581, 55.950764>,  <33.910778, 41.119564, 55.769577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899986, 41.276581, 55.950764>,  <33.882000, 41.538277, 56.252743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899986, 41.276581, 55.950764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856931, -0.413689, 0.307460,
		-0.513467, 0.633115, -0.579239,
		0.044967, -0.654238, -0.754951,
		33.913475, 41.080311, 55.724277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138088, 41.379848, 56.087017>,  <33.882000, 41.538277, 56.252743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138088, 41.379848, 56.087017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340439, 41.089264, 55.900967>,  <33.461849, 40.914913, 55.789337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340439, 41.089264, 55.900967>,  <33.138088, 41.379848, 56.087017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340439, 41.089264, 55.900967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822309, -0.569013, -0.005627,
		-0.260576, 0.385326, -0.885226,
		0.505873, -0.726463, -0.465128,
		33.492199, 40.871326, 55.761429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652901, 41.150650, 55.604229>,  <33.138088, 41.379848, 56.087017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652901, 41.150650, 55.604229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898941, 40.835701, 55.620743>,  <33.046566, 40.646732, 55.630650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898941, 40.835701, 55.620743>,  <32.652901, 41.150650, 55.604229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898941, 40.835701, 55.620743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788412, -0.614749, 0.022161,
		0.007929, -0.046178, -0.998902,
		0.615097, -0.787370, 0.041281,
		33.083469, 40.599491, 55.633125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560570, 40.707664, 55.000229>,  <32.652901, 41.150650, 55.604229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560570, 40.707664, 55.000229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668808, 40.489960, 55.317860>,  <32.733753, 40.359337, 55.508438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668808, 40.489960, 55.317860>,  <32.560570, 40.707664, 55.000229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668808, 40.489960, 55.317860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798554, -0.587583, -0.130603,
		0.537668, -0.598772, -0.593621,
		0.270600, -0.544260, 0.794076,
		32.749989, 40.326683, 55.556084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366985, 40.051350, 54.726780>,  <32.560570, 40.707664, 55.000229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366985, 40.051350, 54.726780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453598, 39.971245, 55.108986>,  <32.505566, 39.923180, 55.338310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453598, 39.971245, 55.108986>,  <32.366985, 40.051350, 54.726780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453598, 39.971245, 55.108986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698000, -0.716052, 0.008102,
		0.682575, -0.668702, -0.294837,
		0.216536, -0.200266, 0.955513,
		32.518559, 39.911163, 55.395641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458538, 39.340508, 54.795673>,  <32.366985, 40.051350, 54.726780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458538, 39.340508, 54.795673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370239, 39.438698, 55.173248>,  <32.317261, 39.497612, 55.399792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370239, 39.438698, 55.173248>,  <32.458538, 39.340508, 54.795673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370239, 39.438698, 55.173248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769574, -0.638405, -0.013953,
		0.599187, -0.729508, 0.329838,
		-0.220749, 0.245474, 0.943934,
		32.304016, 39.512341, 55.456429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163177, 38.671501, 55.060108>,  <32.458538, 39.340508, 54.795673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163177, 38.671501, 55.060108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056313, 38.941620, 55.335091>,  <31.992193, 39.103691, 55.500080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056313, 38.941620, 55.335091>,  <32.163177, 38.671501, 55.060108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056313, 38.941620, 55.335091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818938, -0.535103, 0.207378,
		0.507901, -0.507579, 0.695988,
		-0.267165, 0.675299, 0.687455,
		31.976164, 39.144211, 55.541328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972359, 38.275196, 55.688396>,  <32.163177, 38.671501, 55.060108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972359, 38.275196, 55.688396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802853, 38.635437, 55.727051>,  <31.701149, 38.851582, 55.750244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802853, 38.635437, 55.727051>,  <31.972359, 38.275196, 55.688396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802853, 38.635437, 55.727051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820073, -0.426783, 0.381229,
		0.384579, 0.082301, 0.919416,
		-0.423767, 0.900601, 0.096639,
		31.675722, 38.905617, 55.756042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727802, 38.378353, 56.385498>,  <31.972359, 38.275196, 55.688396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727802, 38.378353, 56.385498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517632, 38.634514, 56.161423>,  <31.391529, 38.788212, 56.026978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517632, 38.634514, 56.161423>,  <31.727802, 38.378353, 56.385498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517632, 38.634514, 56.161423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849083, -0.352381, 0.393554,
		0.054635, 0.682428, 0.728908,
		-0.525426, 0.640405, -0.560186,
		31.360004, 38.826637, 55.993366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208372, 38.675789, 56.827602>,  <31.727802, 38.378353, 56.385498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208372, 38.675789, 56.827602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063334, 38.753311, 56.462975>,  <30.976311, 38.799824, 56.244198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063334, 38.753311, 56.462975>,  <31.208372, 38.675789, 56.827602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063334, 38.753311, 56.462975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890645, -0.360023, 0.277731,
		-0.274361, 0.912592, 0.303155,
		-0.362598, 0.193805, -0.911572,
		30.954554, 38.811451, 56.189503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575481, 38.931694, 56.974487>,  <31.208372, 38.675789, 56.827602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575481, 38.931694, 56.974487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565496, 38.819641, 56.590633>,  <30.559505, 38.752407, 56.360321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565496, 38.819641, 56.590633>,  <30.575481, 38.931694, 56.974487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565496, 38.819641, 56.590633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981094, -0.177418, 0.077311,
		-0.191915, 0.943423, -0.270411,
		-0.024962, -0.280136, -0.959636,
		30.558008, 38.735600, 56.302742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955887, 39.237614, 56.691311>,  <30.575481, 38.931694, 56.974487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955887, 39.237614, 56.691311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047390, 38.955032, 56.423401>,  <30.102291, 38.785484, 56.262653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047390, 38.955032, 56.423401>,  <29.955887, 39.237614, 56.691311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047390, 38.955032, 56.423401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970443, -0.219819, -0.099594,
		-0.076871, 0.672761, -0.735855,
		0.228758, -0.706450, -0.669775,
		30.116018, 38.743099, 56.222469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480547, 39.300045, 56.100964>,  <29.955887, 39.237614, 56.691311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480547, 39.300045, 56.100964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602621, 38.919128, 56.101551>,  <29.675865, 38.690578, 56.101906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602621, 38.919128, 56.101551>,  <29.480547, 39.300045, 56.100964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602621, 38.919128, 56.101551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947265, -0.303735, -0.102144,
		0.097718, 0.029780, -0.994769,
		0.305188, -0.952291, 0.001471,
		29.694178, 38.633442, 56.101994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809450, 39.765823, 55.781502>,  <29.480547, 39.300045, 56.100964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809450, 39.765823, 55.781502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585684, 39.964455, 56.046974>,  <29.451424, 40.083633, 56.206257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585684, 39.964455, 56.046974>,  <29.809450, 39.765823, 55.781502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585684, 39.964455, 56.046974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367085, 0.866305, -0.338768,
		-0.743170, 0.054114, -0.666910,
		-0.559416, 0.496575, 0.663677,
		29.417858, 40.113426, 56.246078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530233, 40.358669, 55.486767>,  <29.809450, 39.765823, 55.781502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530233, 40.358669, 55.486767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535936, 40.441772, 55.877998>,  <29.539358, 40.491634, 56.112736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535936, 40.441772, 55.877998>,  <29.530233, 40.358669, 55.486767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535936, 40.441772, 55.877998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435051, 0.879446, -0.193145,
		-0.900293, 0.428267, -0.077846,
		0.014257, 0.207754, 0.978077,
		29.540213, 40.504097, 56.171421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390100, 41.030975, 55.526447>,  <29.530233, 40.358669, 55.486767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390100, 41.030975, 55.526447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571877, 40.942291, 55.871544>,  <29.680943, 40.889080, 56.078602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571877, 40.942291, 55.871544>,  <29.390100, 41.030975, 55.526447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571877, 40.942291, 55.871544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539861, 0.838940, -0.068770,
		-0.708544, 0.497014, 0.500941,
		0.454439, -0.221711, 0.862745,
		29.708208, 40.875778, 56.130367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412670, 41.662907, 55.893890>,  <29.390100, 41.030975, 55.526447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412670, 41.662907, 55.893890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672138, 41.436005, 56.096848>,  <29.827818, 41.299862, 56.218624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672138, 41.436005, 56.096848>,  <29.412670, 41.662907, 55.893890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672138, 41.436005, 56.096848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520606, 0.817028, 0.247859,
		-0.555156, 0.103375, 0.825297,
		0.648668, -0.567255, 0.507396,
		29.866739, 41.265827, 56.249065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619869, 42.136257, 56.505867>,  <29.412670, 41.662907, 55.893890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619869, 42.136257, 56.505867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903111, 41.871841, 56.406578>,  <30.073055, 41.713192, 56.347004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903111, 41.871841, 56.406578>,  <29.619869, 42.136257, 56.505867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903111, 41.871841, 56.406578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671100, 0.739358, -0.054546,
		0.219584, -0.127960, 0.967165,
		0.708101, -0.661042, -0.248225,
		30.115541, 41.673531, 56.332111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143913, 42.351555, 56.865303>,  <29.619869, 42.136257, 56.505867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143913, 42.351555, 56.865303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350340, 42.112511, 56.619854>,  <30.474195, 41.969086, 56.472584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350340, 42.112511, 56.619854>,  <30.143913, 42.351555, 56.865303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350340, 42.112511, 56.619854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705165, 0.703090, -0.091687,
		0.486228, -0.385390, 0.784256,
		0.516067, -0.597610, -0.613626,
		30.505159, 41.933228, 56.435764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761679, 42.338718, 57.144810>,  <30.143913, 42.351555, 56.865303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761679, 42.338718, 57.144810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841261, 42.253593, 56.762161>,  <30.889009, 42.202518, 56.532570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841261, 42.253593, 56.762161>,  <30.761679, 42.338718, 57.144810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841261, 42.253593, 56.762161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747495, 0.664222, 0.007700,
		0.633773, -0.716604, 0.291223,
		0.198955, -0.212808, -0.956624,
		30.900948, 42.189751, 56.475174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442915, 42.547749, 57.010212>,  <30.761679, 42.338718, 57.144810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442915, 42.547749, 57.010212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340000, 42.463470, 56.632977>,  <31.278252, 42.412903, 56.406635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340000, 42.463470, 56.632977>,  <31.442915, 42.547749, 57.010212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340000, 42.463470, 56.632977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718102, 0.611371, -0.332498,
		0.646632, -0.762778, -0.005994,
		-0.257287, -0.210700, -0.943085,
		31.262814, 42.400261, 56.350052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112999, 42.311394, 56.700008>,  <31.442915, 42.547749, 57.010212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112999, 42.311394, 56.700008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848312, 42.448471, 56.433266>,  <31.689501, 42.530716, 56.273220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848312, 42.448471, 56.433266>,  <32.112999, 42.311394, 56.700008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848312, 42.448471, 56.433266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728977, 0.502010, -0.465380,
		0.175286, -0.794071, -0.582002,
		-0.661716, 0.342691, -0.666855,
		31.649797, 42.551277, 56.233208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418377, 42.155914, 56.024273>,  <32.112999, 42.311394, 56.700008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418377, 42.155914, 56.024273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147148, 42.442451, 55.958454>,  <31.984411, 42.614372, 55.918964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147148, 42.442451, 55.958454>,  <32.418377, 42.155914, 56.024273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147148, 42.442451, 55.958454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675683, 0.519421, -0.523120,
		-0.289265, -0.465892, -0.836224,
		-0.678069, 0.716343, -0.164545,
		31.943727, 42.657352, 55.909092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591034, 42.253246, 55.320683>,  <32.418377, 42.155914, 56.024273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591034, 42.253246, 55.320683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376625, 42.564766, 55.451004>,  <32.247978, 42.751678, 55.529198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376625, 42.564766, 55.451004>,  <32.591034, 42.253246, 55.320683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376625, 42.564766, 55.451004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600743, 0.623034, -0.500935,
		-0.593116, -0.072789, -0.801820,
		-0.536024, 0.778801, 0.325804,
		32.215816, 42.798405, 55.548744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326859, 42.619877, 54.716972>,  <32.591034, 42.253246, 55.320683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326859, 42.619877, 54.716972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270992, 42.895943, 55.000992>,  <32.237473, 43.061581, 55.171402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270992, 42.895943, 55.000992>,  <32.326859, 42.619877, 54.716972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270992, 42.895943, 55.000992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289918, 0.714155, -0.637126,
		-0.946805, 0.116868, -0.299836,
		-0.139670, 0.690162, 0.710048,
		32.229092, 43.102993, 55.214005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965488, 43.242329, 54.426327>,  <32.326859, 42.619877, 54.716972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965488, 43.242329, 54.426327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178879, 43.352051, 54.746368>,  <32.306911, 43.417885, 54.938393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178879, 43.352051, 54.746368>,  <31.965488, 43.242329, 54.426327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178879, 43.352051, 54.746368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332025, 0.802104, -0.496375,
		-0.777923, 0.530457, 0.336826,
		0.533475, 0.274307, 0.800100,
		32.338921, 43.434341, 54.986397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980753, 43.995266, 54.426968>,  <31.965488, 43.242329, 54.426327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980753, 43.995266, 54.426968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285866, 43.909607, 54.671036>,  <32.468933, 43.858212, 54.817474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285866, 43.909607, 54.671036>,  <31.980753, 43.995266, 54.426968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285866, 43.909607, 54.671036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570994, 0.665945, -0.480087,
		-0.303527, 0.714604, 0.630248,
		0.762783, -0.214149, 0.610167,
		32.514702, 43.845364, 54.854084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272305, 44.598335, 54.679119>,  <31.980753, 43.995266, 54.426968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272305, 44.598335, 54.679119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575523, 44.338814, 54.705727>,  <32.757454, 44.183102, 54.721691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575523, 44.338814, 54.705727>,  <32.272305, 44.598335, 54.679119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575523, 44.338814, 54.705727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628496, 0.699428, -0.340284,
		0.174250, 0.299758, 0.937967,
		0.758043, -0.648803, 0.066522,
		32.802937, 44.144173, 54.725681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778618, 45.043991, 54.964504>,  <32.272305, 44.598335, 54.679119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778618, 45.043991, 54.964504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002972, 44.750366, 54.811367>,  <33.137585, 44.574192, 54.719486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002972, 44.750366, 54.811367>,  <32.778618, 45.043991, 54.964504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002972, 44.750366, 54.811367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622933, 0.678780, -0.388860,
		0.545312, -0.020381, 0.837985,
		0.560883, -0.734058, -0.382843,
		33.171238, 44.530148, 54.696514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468216, 45.334545, 54.978535>,  <32.778618, 45.043991, 54.964504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468216, 45.334545, 54.978535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504883, 45.022774, 54.730637>,  <33.526882, 44.835709, 54.581898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504883, 45.022774, 54.730637>,  <33.468216, 45.334545, 54.978535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504883, 45.022774, 54.730637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669015, 0.509186, -0.541433,
		0.737575, -0.364985, 0.568128,
		0.091668, -0.779433, -0.619743,
		33.532383, 44.788944, 54.544712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183807, 45.141323, 54.902363>,  <33.468216, 45.334545, 54.978535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183807, 45.141323, 54.902363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999161, 44.984756, 54.583942>,  <33.888371, 44.890816, 54.392891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999161, 44.984756, 54.583942>,  <34.183807, 45.141323, 54.902363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999161, 44.984756, 54.583942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727961, 0.345674, -0.592100,
		0.506934, -0.852819, 0.125368,
		-0.461618, -0.391418, -0.796053,
		33.860676, 44.867332, 54.345127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588577, 44.740696, 54.526478>,  <34.183807, 45.141323, 54.902363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588577, 44.740696, 54.526478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317574, 44.822746, 54.243942>,  <34.154972, 44.871975, 54.074421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317574, 44.822746, 54.243942>,  <34.588577, 44.740696, 54.526478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317574, 44.822746, 54.243942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734327, 0.243249, -0.633714,
		0.041825, -0.948026, -0.315431,
		-0.677506, 0.205124, -0.706336,
		34.114323, 44.884285, 54.032043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855438, 44.415119, 54.026810>,  <34.588577, 44.740696, 54.526478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855438, 44.415119, 54.026810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593304, 44.660240, 53.850170>,  <34.436024, 44.807312, 53.744186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593304, 44.660240, 53.850170>,  <34.855438, 44.415119, 54.026810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593304, 44.660240, 53.850170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711208, 0.303691, -0.633999,
		-0.254407, -0.729550, -0.634850,
		-0.655332, 0.612804, -0.441601,
		34.396706, 44.844082, 53.717690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932995, 44.280781, 53.336983>,  <34.855438, 44.415119, 54.026810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932995, 44.280781, 53.336983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736870, 44.629181, 53.324619>,  <34.619194, 44.838223, 53.317204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736870, 44.629181, 53.324619>,  <34.932995, 44.280781, 53.336983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736870, 44.629181, 53.324619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660912, 0.348462, -0.664657,
		-0.568147, -0.346314, -0.746509,
		-0.490310, 0.871000, -0.030906,
		34.589775, 44.890480, 53.315346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705292, 44.319946, 52.614296>,  <34.932995, 44.280781, 53.336983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705292, 44.319946, 52.614296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734840, 44.674507, 52.797092>,  <34.752571, 44.887241, 52.906769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734840, 44.674507, 52.797092>,  <34.705292, 44.319946, 52.614296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734840, 44.674507, 52.797092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637662, 0.310345, -0.705035,
		-0.766767, 0.343486, -0.542297,
		0.073871, 0.886399, 0.456990,
		34.757000, 44.940426, 52.934189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765251, 44.813564, 52.028702>,  <34.705292, 44.319946, 52.614296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765251, 44.813564, 52.028702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879593, 45.008446, 52.358772>,  <34.948200, 45.125374, 52.556816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879593, 45.008446, 52.358772>,  <34.765251, 44.813564, 52.028702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879593, 45.008446, 52.358772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690833, 0.491996, -0.529802,
		-0.664105, 0.721509, -0.195933,
		0.285858, 0.487201, 0.825179,
		34.965351, 45.154606, 52.606327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664558, 45.614830, 51.931065>,  <34.765251, 44.813564, 52.028702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664558, 45.614830, 51.931065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942596, 45.528000, 52.205212>,  <35.109421, 45.475903, 52.369698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942596, 45.528000, 52.205212>,  <34.664558, 45.614830, 51.931065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942596, 45.528000, 52.205212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688987, 0.473356, -0.548846,
		-0.205281, 0.853706, 0.478587,
		0.695095, -0.217073, 0.685363,
		35.151123, 45.462879, 52.410820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156048, 46.114655, 51.747658>,  <34.664558, 45.614830, 51.931065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156048, 46.114655, 51.747658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369987, 45.887985, 51.998360>,  <35.498352, 45.751984, 52.148781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369987, 45.887985, 51.998360>,  <35.156048, 46.114655, 51.747658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369987, 45.887985, 51.998360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828812, 0.207585, -0.519595,
		0.164337, 0.797363, 0.580694,
		0.534849, -0.566675, 0.626750,
		35.530441, 45.717983, 52.186386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668770, 46.470173, 51.873569>,  <35.156048, 46.114655, 51.747658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668770, 46.470173, 51.873569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802914, 46.107185, 51.974792>,  <35.883400, 45.889393, 52.035526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802914, 46.107185, 51.974792>,  <35.668770, 46.470173, 51.873569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802914, 46.107185, 51.974792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877764, 0.203427, -0.433760,
		0.342145, 0.367588, 0.864764,
		0.335361, -0.907467, 0.253053,
		35.903522, 45.834946, 52.050709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350288, 46.579575, 52.244415>,  <35.668770, 46.470173, 51.873569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350288, 46.579575, 52.244415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329479, 46.209999, 52.092823>,  <36.316994, 45.988255, 52.001869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329479, 46.209999, 52.092823>,  <36.350288, 46.579575, 52.244415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329479, 46.209999, 52.092823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866603, 0.146822, -0.476910,
		0.496279, -0.353238, 0.793051,
		-0.052025, -0.923941, -0.378982,
		36.313873, 45.932816, 51.979130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014389, 46.257332, 52.301289>,  <36.350288, 46.579575, 52.244415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014389, 46.257332, 52.301289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838837, 46.057854, 52.002308>,  <36.733505, 45.938168, 51.822918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838837, 46.057854, 52.002308>,  <37.014389, 46.257332, 52.301289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838837, 46.057854, 52.002308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843440, 0.058186, -0.534063,
		0.309824, -0.864824, 0.395081,
		-0.438882, -0.498692, -0.747455,
		36.707172, 45.908245, 51.778072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489697, 45.716850, 52.119301>,  <37.014389, 46.257332, 52.301289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489697, 45.716850, 52.119301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246792, 45.795990, 51.811512>,  <37.101048, 45.843475, 51.626839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246792, 45.795990, 51.811512>,  <37.489697, 45.716850, 52.119301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246792, 45.795990, 51.811512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786979, 0.016833, -0.616750,
		-0.109071, -0.980088, -0.165925,
		-0.607262, 0.197849, -0.769472,
		37.064613, 45.855343, 51.580669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833492, 45.415462, 51.579197>,  <37.489697, 45.716850, 52.119301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833492, 45.415462, 51.579197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575638, 45.638008, 51.369469>,  <37.420925, 45.771534, 51.243633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575638, 45.638008, 51.369469>,  <37.833492, 45.415462, 51.579197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575638, 45.638008, 51.369469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694879, 0.140470, -0.705274,
		-0.318737, -0.818980, -0.477156,
		-0.644631, 0.556363, -0.524319,
		37.382248, 45.804916, 51.212173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092056, 45.403229, 50.965038>,  <37.833492, 45.415462, 51.579197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092056, 45.403229, 50.965038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833710, 45.705093, 50.918831>,  <37.678703, 45.886211, 50.891106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833710, 45.705093, 50.918831>,  <38.092056, 45.403229, 50.965038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833710, 45.705093, 50.918831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589222, 0.396512, -0.703985,
		-0.485466, -0.522746, -0.700757,
		-0.645864, 0.754662, -0.115521,
		37.639950, 45.931492, 50.884174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991001, 45.523525, 50.263077>,  <38.092056, 45.403229, 50.965038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991001, 45.523525, 50.263077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853798, 45.875153, 50.395496>,  <37.771477, 46.086128, 50.474949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853798, 45.875153, 50.395496>,  <37.991001, 45.523525, 50.263077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853798, 45.875153, 50.395496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499752, 0.469191, -0.728085,
		-0.795357, -0.084298, -0.600250,
		-0.343008, 0.879064, 0.331046,
		37.750896, 46.138870, 50.494812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714867, 45.873398, 49.710003>,  <37.991001, 45.523525, 50.263077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714867, 45.873398, 49.710003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790817, 46.167076, 49.970741>,  <37.836388, 46.343285, 50.127182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790817, 46.167076, 49.970741>,  <37.714867, 45.873398, 49.710003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790817, 46.167076, 49.970741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314155, 0.583583, -0.748824,
		-0.930190, 0.346966, -0.119841,
		0.189880, 0.734197, 0.651844,
		37.847782, 46.387337, 50.166294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531380, 46.529945, 49.345898>,  <37.714867, 45.873398, 49.710003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531380, 46.529945, 49.345898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750797, 46.674660, 49.647415>,  <37.882446, 46.761490, 49.828327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750797, 46.674660, 49.647415>,  <37.531380, 46.529945, 49.345898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750797, 46.674660, 49.647415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437895, 0.643702, -0.627611,
		-0.712283, 0.674355, 0.194672,
		0.548544, 0.361790, 0.753796,
		37.915359, 46.783195, 49.873554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460815, 47.250427, 49.250374>,  <37.531380, 46.529945, 49.345898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460815, 47.250427, 49.250374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785328, 47.189537, 49.476173>,  <37.980034, 47.153004, 49.611652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785328, 47.189537, 49.476173>,  <37.460815, 47.250427, 49.250374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785328, 47.189537, 49.476173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520384, 0.628125, -0.578497,
		-0.266515, 0.763077, 0.588798,
		0.811277, -0.152223, 0.564498,
		38.028709, 47.143871, 49.645523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661774, 47.830067, 49.224834>,  <37.460815, 47.250427, 49.250374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661774, 47.830067, 49.224834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985519, 47.617691, 49.325268>,  <38.179768, 47.490265, 49.385529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985519, 47.617691, 49.325268>,  <37.661774, 47.830067, 49.224834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985519, 47.617691, 49.325268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535892, 0.492680, -0.685628,
		0.240325, 0.689471, 0.683281,
		0.809360, -0.530939, 0.251079,
		38.228329, 47.458408, 49.400593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320892, 48.271549, 49.308914>,  <37.661774, 47.830067, 49.224834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320892, 48.271549, 49.308914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423004, 47.894310, 49.223694>,  <38.484272, 47.667965, 49.172562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423004, 47.894310, 49.223694>,  <38.320892, 48.271549, 49.308914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423004, 47.894310, 49.223694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505321, 0.318002, -0.802200,
		0.824308, 0.097121, 0.557748,
		0.255276, -0.943102, -0.213055,
		38.499588, 47.611378, 49.159779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014961, 48.241787, 49.345459>,  <38.320892, 48.271549, 49.308914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014961, 48.241787, 49.345459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917213, 47.929214, 49.115799>,  <38.858562, 47.741673, 48.978004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917213, 47.929214, 49.115799>,  <39.014961, 48.241787, 49.345459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917213, 47.929214, 49.115799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657263, 0.301851, -0.690573,
		0.712943, -0.546124, 0.439841,
		-0.244372, -0.781431, -0.574150,
		38.843903, 47.694786, 48.943554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642895, 47.908234, 49.212566>,  <39.014961, 48.241787, 49.345459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642895, 47.908234, 49.212566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398491, 47.782280, 48.922047>,  <39.251850, 47.706707, 48.747734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398491, 47.782280, 48.922047>,  <39.642895, 47.908234, 49.212566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398491, 47.782280, 48.922047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679668, 0.261711, -0.685243,
		0.405856, -0.912334, 0.054111,
		-0.611009, -0.314888, -0.726302,
		39.215187, 47.687813, 48.704155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191730, 47.492874, 48.779308>,  <39.642895, 47.908234, 49.212566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191730, 47.492874, 48.779308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849728, 47.569069, 48.586365>,  <39.644524, 47.614784, 48.470596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849728, 47.569069, 48.586365>,  <40.191730, 47.492874, 48.779308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849728, 47.569069, 48.586365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496797, 0.033911, -0.867204,
		-0.148833, -0.981104, -0.123627,
		-0.855010, 0.190487, -0.482362,
		39.593224, 47.626213, 48.441654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.885096, 41.354191, 50.423428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.957174, 41.016876, 50.220886>,  <32.000423, 40.814487, 50.099361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.957174, 41.016876, 50.220886>,  <31.885096, 41.354191, 50.423428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957174, 41.016876, 50.220886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669424, 0.482313, -0.565019,
		0.720694, -0.237149, 0.651429,
		0.180199, -0.843288, -0.506353,
		32.011234, 40.763889, 50.068981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657135, 41.083492, 50.446102>,  <31.885096, 41.354191, 50.423428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657135, 41.083492, 50.446102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.500053, 40.924232, 50.114498>,  <32.405804, 40.828678, 49.915535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.500053, 40.924232, 50.114498>,  <32.657135, 41.083492, 50.446102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500053, 40.924232, 50.114498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703860, 0.450063, -0.549568,
		0.591919, -0.799324, 0.103503,
		-0.392700, -0.398151, -0.829013,
		32.382244, 40.804787, 49.865795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154339, 40.790062, 50.086807>,  <32.657135, 41.083492, 50.446102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154339, 40.790062, 50.086807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.894581, 40.791077, 49.782627>,  <32.738728, 40.791683, 49.600121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.894581, 40.791077, 49.782627>,  <33.154339, 40.790062, 50.086807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894581, 40.791077, 49.782627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718702, 0.328837, -0.612645,
		0.248511, -0.944384, -0.215365,
		-0.649392, 0.002534, -0.760449,
		32.699764, 40.791836, 49.554493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454220, 40.474823, 49.500313>,  <33.154339, 40.790062, 50.086807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454220, 40.474823, 49.500313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.171066, 40.708740, 49.341862>,  <33.001175, 40.849091, 49.246792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.171066, 40.708740, 49.341862>,  <33.454220, 40.474823, 49.500313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171066, 40.708740, 49.341862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631947, 0.273861, -0.725013,
		-0.315499, -0.763557, -0.563420,
		-0.707887, 0.584792, -0.396124,
		32.958698, 40.884178, 49.223026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467716, 40.328377, 48.772903>,  <33.454220, 40.474823, 49.500313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467716, 40.328377, 48.772903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.273476, 40.676270, 48.808144>,  <33.156929, 40.885006, 48.829288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.273476, 40.676270, 48.808144>,  <33.467716, 40.328377, 48.772903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273476, 40.676270, 48.808144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504894, 0.361313, -0.783923,
		-0.713633, -0.336193, -0.614575,
		-0.485603, 0.869728, 0.088103,
		33.127796, 40.937187, 48.834576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504726, 40.553284, 48.077309>,  <33.467716, 40.328377, 48.772903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504726, 40.553284, 48.077309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.413322, 40.892143, 48.269196>,  <33.358482, 41.095459, 48.384327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.413322, 40.892143, 48.269196>,  <33.504726, 40.553284, 48.077309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413322, 40.892143, 48.269196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421581, 0.530264, -0.735588,
		-0.877527, 0.034154, -0.478310,
		-0.228508, 0.847144, 0.479720,
		33.344769, 41.146286, 48.413113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464680, 41.069885, 47.573330>,  <33.504726, 40.553284, 48.077309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464680, 41.069885, 47.573330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.441849, 41.327995, 47.878056>,  <33.428150, 41.482861, 48.060890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.441849, 41.327995, 47.878056>,  <33.464680, 41.069885, 47.573330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441849, 41.327995, 47.878056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476928, 0.687982, -0.547010,
		-0.877087, 0.332107, -0.347021,
		-0.057078, 0.645279, 0.761811,
		33.424725, 41.521580, 48.106598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188309, 41.748104, 47.332790>,  <33.464680, 41.069885, 47.573330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188309, 41.748104, 47.332790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.430519, 41.779221, 47.649597>,  <33.575844, 41.797890, 47.839680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.430519, 41.779221, 47.649597>,  <33.188309, 41.748104, 47.332790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430519, 41.779221, 47.649597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546459, 0.682857, -0.484860,
		-0.578550, 0.726399, 0.370978,
		0.605527, 0.077791, 0.792014,
		33.612179, 41.802559, 47.887203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233192, 42.407219, 47.430630>,  <33.188309, 41.748104, 47.332790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233192, 42.407219, 47.430630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562759, 42.284210, 47.621040>,  <33.760498, 42.210403, 47.735287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562759, 42.284210, 47.621040>,  <33.233192, 42.407219, 47.430630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562759, 42.284210, 47.621040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514267, 0.758628, -0.400016,
		-0.238112, 0.574382, 0.783191,
		0.823913, -0.307521, 0.476024,
		33.809933, 42.191956, 47.763847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651394, 43.065453, 47.530773>,  <33.233192, 42.407219, 47.430630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651394, 43.065453, 47.530773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.925575, 42.785728, 47.611874>,  <34.090084, 42.617893, 47.660534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.925575, 42.785728, 47.611874>,  <33.651394, 43.065453, 47.530773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925575, 42.785728, 47.611874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726906, 0.641210, -0.245882,
		0.041940, 0.315925, 0.947857,
		0.685455, -0.699315, 0.202755,
		34.131210, 42.575935, 47.672699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182018, 43.309341, 47.991730>,  <33.651394, 43.065453, 47.530773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182018, 43.309341, 47.991730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.357574, 43.002014, 47.805367>,  <34.462910, 42.817619, 47.693550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.357574, 43.002014, 47.805367>,  <34.182018, 43.309341, 47.991730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357574, 43.002014, 47.805367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787205, 0.578781, -0.212888,
		0.433221, -0.273326, 0.858844,
		0.438894, -0.768314, -0.465904,
		34.489243, 42.771519, 47.665596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875179, 43.332935, 48.232990>,  <34.182018, 43.309341, 47.991730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875179, 43.332935, 48.232990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.880711, 43.155418, 47.874580>,  <34.884029, 43.048908, 47.659534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.880711, 43.155418, 47.874580>,  <34.875179, 43.332935, 48.232990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880711, 43.155418, 47.874580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762456, 0.584422, -0.277689,
		0.646892, -0.679339, 0.346452,
		0.013829, -0.443790, -0.896024,
		34.884861, 43.022282, 47.605774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594860, 43.235252, 48.118168>,  <34.875179, 43.332935, 48.232990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594860, 43.235252, 48.118168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.417664, 43.227188, 47.759647>,  <35.311348, 43.222347, 47.544537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.417664, 43.227188, 47.759647>,  <35.594860, 43.235252, 48.118168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417664, 43.227188, 47.759647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751579, 0.536683, -0.383535,
		0.488762, -0.843543, -0.222591,
		-0.442989, -0.020163, -0.896300,
		35.284767, 43.221138, 47.490757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175652, 43.109680, 47.657986>,  <35.594860, 43.235252, 48.118168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175652, 43.109680, 47.657986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899529, 43.246872, 47.403164>,  <35.733856, 43.329189, 47.250271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899529, 43.246872, 47.403164>,  <36.175652, 43.109680, 47.657986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899529, 43.246872, 47.403164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721965, 0.384221, -0.575448,
		0.047402, -0.857167, -0.512852,
		-0.690304, 0.342984, -0.637058,
		35.692436, 43.349766, 47.212048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366272, 43.005859, 47.024147>,  <36.175652, 43.109680, 47.657986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366272, 43.005859, 47.024147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.095322, 43.288773, 46.943237>,  <35.932751, 43.458519, 46.894691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.095322, 43.288773, 46.943237>,  <36.366272, 43.005859, 47.024147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095322, 43.288773, 46.943237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645235, 0.439170, -0.625141,
		-0.353314, -0.553974, -0.753845,
		-0.677378, 0.707278, -0.202278,
		35.892109, 43.500957, 46.882553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506039, 43.241680, 46.322765>,  <36.366272, 43.005859, 47.024147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506039, 43.241680, 46.322765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.259331, 43.537460, 46.430702>,  <36.111305, 43.714928, 46.495464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.259331, 43.537460, 46.430702>,  <36.506039, 43.241680, 46.322765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259331, 43.537460, 46.430702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567019, 0.655145, -0.499275,
		-0.545975, -0.154928, -0.823352,
		-0.616766, 0.739447, 0.269846,
		36.074303, 43.759296, 46.511658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343113, 43.623550, 45.744705>,  <36.506039, 43.241680, 46.322765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343113, 43.623550, 45.744705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285408, 43.864449, 46.058773>,  <36.250786, 44.008987, 46.247215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285408, 43.864449, 46.058773>,  <36.343113, 43.623550, 45.744705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285408, 43.864449, 46.058773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580552, 0.694072, -0.425703,
		-0.801342, 0.394422, -0.449758,
		-0.144258, 0.602242, 0.785172,
		36.242130, 44.045120, 46.294323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138012, 44.265945, 45.467888>,  <36.343113, 43.623550, 45.744705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138012, 44.265945, 45.467888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275822, 44.339211, 45.836182>,  <36.358509, 44.383171, 46.057159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275822, 44.339211, 45.836182>,  <36.138012, 44.265945, 45.467888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275822, 44.339211, 45.836182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475397, 0.811685, -0.339360,
		-0.809505, 0.554633, 0.192571,
		0.344527, 0.183166, 0.920734,
		36.379181, 44.394161, 46.112400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273277, 44.894432, 45.383335>,  <36.138012, 44.265945, 45.467888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273277, 44.894432, 45.383335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.484158, 44.833939, 45.717804>,  <36.610687, 44.797642, 45.918488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.484158, 44.833939, 45.717804>,  <36.273277, 44.894432, 45.383335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484158, 44.833939, 45.717804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559650, 0.802265, -0.207756,
		-0.639416, 0.577495, 0.507589,
		0.527199, -0.151229, 0.836176,
		36.642319, 44.788570, 45.968658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179432, 45.497761, 45.785370>,  <36.273277, 44.894432, 45.383335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179432, 45.497761, 45.785370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518883, 45.307411, 45.877781>,  <36.722553, 45.193203, 45.933228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518883, 45.307411, 45.877781>,  <36.179432, 45.497761, 45.785370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518883, 45.307411, 45.877781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528537, 0.780791, -0.333188,
		-0.021833, 0.404862, 0.914117,
		0.848629, -0.475870, 0.231032,
		36.773472, 45.164650, 45.947090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665676, 46.023487, 45.985909>,  <36.179432, 45.497761, 45.785370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665676, 46.023487, 45.985909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899811, 45.716835, 45.880333>,  <37.040291, 45.532845, 45.816986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899811, 45.716835, 45.880333>,  <36.665676, 46.023487, 45.985909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899811, 45.716835, 45.880333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469995, 0.586080, -0.660012,
		0.660675, 0.262276, 0.703364,
		0.585332, -0.766630, -0.263940,
		37.075409, 45.486847, 45.801151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437263, 46.076031, 46.201645>,  <36.665676, 46.023487, 45.985909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437263, 46.076031, 46.201645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412216, 45.851990, 45.871223>,  <37.397186, 45.717567, 45.672970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412216, 45.851990, 45.871223>,  <37.437263, 46.076031, 46.201645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412216, 45.851990, 45.871223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702907, 0.562831, -0.434906,
		0.708520, -0.607874, 0.358454,
		-0.062619, -0.560099, -0.826056,
		37.393429, 45.683960, 45.623405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312786, 46.767933, 46.447090>,  <37.437263, 46.076031, 46.201645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312786, 46.767933, 46.447090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.226578, 47.130775, 46.591709>,  <37.174854, 47.348480, 46.678482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.226578, 47.130775, 46.591709>,  <37.312786, 46.767933, 46.447090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226578, 47.130775, 46.591709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389802, -0.419388, 0.819858,
		0.895325, 0.035762, 0.443976,
		-0.215518, 0.907102, 0.361548,
		37.161922, 47.402905, 46.700172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392899, 46.791069, 47.154678>,  <37.312786, 46.767933, 46.447090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392899, 46.791069, 47.154678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.132233, 47.091064, 47.109325>,  <36.975834, 47.271061, 47.082111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.132233, 47.091064, 47.109325>,  <37.392899, 46.791069, 47.154678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132233, 47.091064, 47.109325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576860, -0.392969, 0.716106,
		0.492515, 0.532065, 0.688720,
		-0.651661, 0.749988, -0.113384,
		36.936733, 47.316059, 47.075310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162472, 46.816227, 47.742409>,  <37.392899, 46.791069, 47.154678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162472, 46.816227, 47.742409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888634, 47.011940, 47.526287>,  <36.724331, 47.129368, 47.396614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888634, 47.011940, 47.526287>,  <37.162472, 46.816227, 47.742409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888634, 47.011940, 47.526287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726496, -0.397609, 0.560455,
		0.059392, 0.776215, 0.627665,
		-0.684599, 0.489283, -0.540302,
		36.683254, 47.158726, 47.364197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795414, 47.169010, 48.216095>,  <37.162472, 46.816227, 47.742409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795414, 47.169010, 48.216095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563072, 47.133598, 47.892422>,  <36.423668, 47.112350, 47.698219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563072, 47.133598, 47.892422>,  <36.795414, 47.169010, 48.216095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563072, 47.133598, 47.892422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634784, -0.573024, 0.518357,
		-0.509569, 0.814743, 0.276646,
		-0.580852, -0.088528, -0.809181,
		36.388817, 47.107040, 47.649666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036537, 47.265179, 48.426888>,  <36.795414, 47.169010, 48.216095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036537, 47.265179, 48.426888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.992302, 47.074799, 48.077888>,  <35.965759, 46.960571, 47.868488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.992302, 47.074799, 48.077888>,  <36.036537, 47.265179, 48.426888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992302, 47.074799, 48.077888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584167, -0.679098, 0.444495,
		-0.804064, 0.558839, -0.202929,
		-0.110592, -0.475946, -0.872493,
		35.959126, 46.932014, 47.816139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388561, 47.108662, 48.397339>,  <36.036537, 47.265179, 48.426888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388561, 47.108662, 48.397339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531754, 46.841019, 48.136833>,  <35.617668, 46.680431, 47.980530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531754, 46.841019, 48.136833>,  <35.388561, 47.108662, 48.397339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531754, 46.841019, 48.136833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563960, -0.710831, 0.420320,
		-0.744179, 0.216824, -0.631811,
		0.357975, -0.669109, -0.651265,
		35.639145, 46.640285, 47.941456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826088, 46.866669, 48.058571>,  <35.388561, 47.108662, 48.397339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826088, 46.866669, 48.058571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.108601, 46.585075, 48.028706>,  <35.278107, 46.416119, 48.010784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.108601, 46.585075, 48.028706>,  <34.826088, 46.866669, 48.058571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108601, 46.585075, 48.028706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612023, -0.660198, 0.435392,
		-0.355803, -0.261812, -0.897139,
		0.706280, -0.703984, -0.074665,
		35.320484, 46.373878, 48.006306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503746, 46.306107, 47.761276>,  <34.826088, 46.866669, 48.058571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503746, 46.306107, 47.761276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.825550, 46.136765, 47.927910>,  <35.018631, 46.035160, 48.027889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.825550, 46.136765, 47.927910>,  <34.503746, 46.306107, 47.761276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825550, 46.136765, 47.927910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587929, -0.667192, 0.457378,
		0.084311, -0.612886, -0.785661,
		0.804507, -0.423351, 0.416585,
		35.066902, 46.009758, 48.052887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383553, 45.560532, 47.602066>,  <34.503746, 46.306107, 47.761276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383553, 45.560532, 47.602066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661572, 45.586021, 47.888519>,  <34.828384, 45.601315, 48.060390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661572, 45.586021, 47.888519>,  <34.383553, 45.560532, 47.602066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661572, 45.586021, 47.888519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455174, -0.732026, 0.506906,
		0.556529, -0.678290, -0.479789,
		0.695048, 0.063721, 0.716134,
		34.870087, 45.605137, 48.103359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624245, 44.862965, 47.750141>,  <34.383553, 45.560532, 47.602066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624245, 44.862965, 47.750141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.751045, 45.070534, 48.067692>,  <34.827126, 45.195076, 48.258221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.751045, 45.070534, 48.067692>,  <34.624245, 44.862965, 47.750141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751045, 45.070534, 48.067692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259978, -0.757438, 0.598915,
		0.912099, -0.396244, -0.105198,
		0.316997, 0.518920, 0.793873,
		34.846146, 45.226212, 48.305855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959507, 44.370651, 48.145382>,  <34.624245, 44.862965, 47.750141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959507, 44.370651, 48.145382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878029, 44.664192, 48.404602>,  <34.829140, 44.840317, 48.560135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878029, 44.664192, 48.404602>,  <34.959507, 44.370651, 48.145382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878029, 44.664192, 48.404602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466121, -0.654786, 0.594967,
		0.860952, -0.180874, 0.475444,
		-0.203700, 0.733852, 0.648049,
		34.816917, 44.884346, 48.599018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261902, 44.221085, 48.778393>,  <34.959507, 44.370651, 48.145382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261902, 44.221085, 48.778393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952110, 44.464165, 48.848679>,  <34.766235, 44.610012, 48.890850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952110, 44.464165, 48.848679>,  <35.261902, 44.221085, 48.778393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952110, 44.464165, 48.848679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374143, -0.664014, 0.647381,
		0.510094, 0.435641, 0.741634,
		-0.774481, 0.607703, 0.175718,
		34.719765, 44.646477, 48.901394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148895, 44.094002, 49.454224>,  <35.261902, 44.221085, 48.778393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148895, 44.094002, 49.454224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.814102, 44.280609, 49.339806>,  <34.613228, 44.392574, 49.271156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.814102, 44.280609, 49.339806>,  <35.148895, 44.094002, 49.454224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814102, 44.280609, 49.339806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534139, -0.582830, 0.612376,
		0.118966, 0.665338, 0.737003,
		-0.836984, 0.466514, -0.286046,
		34.563007, 44.420563, 49.253990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833797, 44.348564, 50.067280>,  <35.148895, 44.094002, 49.454224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833797, 44.348564, 50.067280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.566433, 44.286514, 49.776306>,  <34.406013, 44.249287, 49.601723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.566433, 44.286514, 49.776306>,  <34.833797, 44.348564, 50.067280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566433, 44.286514, 49.776306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578758, -0.505837, 0.639663,
		-0.467189, 0.848568, 0.248329,
		-0.668411, -0.155121, -0.727437,
		34.365910, 44.239979, 49.558075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247093, 44.455780, 50.436935>,  <34.833797, 44.348564, 50.067280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247093, 44.455780, 50.436935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113068, 44.251778, 50.120045>,  <34.032654, 44.129375, 49.929909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113068, 44.251778, 50.120045>,  <34.247093, 44.455780, 50.436935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113068, 44.251778, 50.120045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738787, -0.379624, 0.556847,
		-0.584745, 0.771868, -0.249587,
		-0.335063, -0.510005, -0.792230,
		34.012550, 44.098778, 49.882378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519032, 44.536659, 50.448147>,  <34.247093, 44.455780, 50.436935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519032, 44.536659, 50.448147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.599983, 44.222809, 50.213741>,  <33.648556, 44.034500, 50.073097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.599983, 44.222809, 50.213741>,  <33.519032, 44.536659, 50.448147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599983, 44.222809, 50.213741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680428, -0.543025, 0.492079,
		-0.704314, 0.299149, -0.643779,
		0.202383, -0.784623, -0.586010,
		33.660698, 43.987423, 50.037937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881027, 44.190762, 50.345619>,  <33.519032, 44.536659, 50.448147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881027, 44.190762, 50.345619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.136345, 43.908096, 50.223495>,  <33.289536, 43.738499, 50.150219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.136345, 43.908096, 50.223495>,  <32.881027, 44.190762, 50.345619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136345, 43.908096, 50.223495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614654, -0.706631, 0.350531,
		-0.463450, -0.036079, -0.885388,
		0.638290, -0.706662, -0.305312,
		33.327831, 43.696098, 50.131901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534191, 43.757431, 49.918747>,  <32.881027, 44.190762, 50.345619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534191, 43.757431, 49.918747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.846375, 43.556503, 50.067638>,  <33.033684, 43.435947, 50.156975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.846375, 43.556503, 50.067638>,  <32.534191, 43.757431, 49.918747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846375, 43.556503, 50.067638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617074, -0.714604, 0.329485,
		0.100489, -0.486843, -0.867690,
		0.780462, -0.502319, 0.372228,
		33.080513, 43.405807, 50.179306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.510010, 43.009384, 49.627563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721581, 43.010818, 49.967026>,  <32.848522, 43.011681, 50.170704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721581, 43.010818, 49.967026>,  <32.510010, 43.009384, 49.627563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721581, 43.010818, 49.967026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634494, -0.662429, 0.398253,
		0.563605, -0.749116, -0.348101,
		0.528930, 0.003590, 0.848658,
		32.880260, 43.011894, 50.221622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526936, 42.326664, 49.854683>,  <32.510010, 43.009384, 49.627563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526936, 42.326664, 49.854683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.615318, 42.517723, 50.194809>,  <32.668346, 42.632359, 50.398884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.615318, 42.517723, 50.194809>,  <32.526936, 42.326664, 49.854683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615318, 42.517723, 50.194809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621063, -0.603321, 0.500285,
		0.751972, -0.638638, 0.163343,
		0.220953, 0.477646, 0.850315,
		32.681602, 42.661018, 50.449902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524166, 41.804588, 50.418198>,  <32.526936, 42.326664, 49.854683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524166, 41.804588, 50.418198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.516289, 42.140739, 50.634853>,  <32.511562, 42.342430, 50.764847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.516289, 42.140739, 50.634853>,  <32.524166, 41.804588, 50.418198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516289, 42.140739, 50.634853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619384, -0.435519, 0.653212,
		0.784841, -0.322621, 0.529094,
		-0.019690, 0.840380, 0.541640,
		32.510384, 42.392853, 50.797344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676773, 41.618141, 51.135921>,  <32.524166, 41.804588, 50.418198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676773, 41.618141, 51.135921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.480225, 41.966515, 51.133541>,  <32.362297, 42.175537, 51.132114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.480225, 41.966515, 51.133541>,  <32.676773, 41.618141, 51.135921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480225, 41.966515, 51.133541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734542, -0.410728, 0.540139,
		0.467980, 0.269777, 0.841555,
		-0.491367, 0.870932, -0.005950,
		32.332813, 42.227795, 51.131756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657864, 41.782059, 51.801537>,  <32.676773, 41.618141, 51.135921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657864, 41.782059, 51.801537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360947, 41.993546, 51.636875>,  <32.182796, 42.120438, 51.538078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360947, 41.993546, 51.636875>,  <32.657864, 41.782059, 51.801537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360947, 41.993546, 51.636875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635936, -0.362248, 0.681441,
		0.211170, 0.767613, 0.605125,
		-0.742288, 0.528721, -0.411657,
		32.138260, 42.152161, 51.513378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237797, 41.840935, 52.319298>,  <32.657864, 41.782059, 51.801537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237797, 41.840935, 52.319298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.998415, 41.964897, 52.023781>,  <31.854784, 42.039272, 51.846474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.998415, 41.964897, 52.023781>,  <32.237797, 41.840935, 52.319298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998415, 41.964897, 52.023781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795218, -0.341823, 0.500785,
		-0.097340, 0.887196, 0.451007,
		-0.598459, 0.309902, -0.738788,
		31.818878, 42.057869, 51.802143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703293, 42.225395, 52.631176>,  <32.237797, 41.840935, 52.319298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703293, 42.225395, 52.631176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593431, 42.079254, 52.275406>,  <31.527514, 41.991570, 52.061943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593431, 42.079254, 52.275406>,  <31.703293, 42.225395, 52.631176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593431, 42.079254, 52.275406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798547, -0.428594, 0.422647,
		-0.535619, 0.826331, -0.174036,
		-0.274655, -0.365354, -0.889427,
		31.511034, 41.969646, 52.008579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056177, 42.477928, 52.433216>,  <31.703293, 42.225395, 52.631176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056177, 42.477928, 52.433216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.111067, 42.126839, 52.249577>,  <31.144001, 41.916183, 52.139393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.111067, 42.126839, 52.249577>,  <31.056177, 42.477928, 52.433216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111067, 42.126839, 52.249577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726920, -0.404076, 0.555258,
		-0.672872, 0.257530, -0.693485,
		0.137225, -0.877725, -0.459095,
		31.152235, 41.863522, 52.111847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379427, 42.328960, 52.279190>,  <31.056177, 42.477928, 52.433216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379427, 42.328960, 52.279190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.567152, 41.976204, 52.261250>,  <30.679787, 41.764549, 52.250484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.567152, 41.976204, 52.261250>,  <30.379427, 42.328960, 52.279190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567152, 41.976204, 52.261250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764985, -0.431420, 0.478199,
		-0.441073, -0.190109, -0.877105,
		0.469310, -0.881893, -0.044857,
		30.707947, 41.711636, 52.247795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751802, 41.915161, 52.217274>,  <30.379427, 42.328960, 52.279190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751802, 41.915161, 52.217274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.066856, 41.687019, 52.310509>,  <30.255888, 41.550133, 52.366447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.066856, 41.687019, 52.310509>,  <29.751802, 41.915161, 52.217274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066856, 41.687019, 52.310509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590103, -0.589475, 0.551632,
		-0.177228, -0.572029, -0.800858,
		0.787635, -0.570353, 0.233084,
		30.303146, 41.515915, 52.380432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714651, 41.133888, 52.030109>,  <29.751802, 41.915161, 52.217274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714651, 41.133888, 52.030109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.987103, 41.150574, 52.322498>,  <30.150574, 41.160583, 52.497932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.987103, 41.150574, 52.322498>,  <29.714651, 41.133888, 52.030109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987103, 41.150574, 52.322498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622958, -0.491549, 0.608525,
		0.384694, -0.869850, -0.308822,
		0.681127, 0.041712, 0.730977,
		30.191441, 41.163086, 52.541790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497671, 40.614407, 52.404236>,  <29.714651, 41.133888, 52.030109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497671, 40.614407, 52.404236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.763195, 40.768875, 52.660431>,  <29.922508, 40.861557, 52.814148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.763195, 40.768875, 52.660431>,  <29.497671, 40.614407, 52.404236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763195, 40.768875, 52.660431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529823, -0.361623, 0.767148,
		0.527869, -0.848586, -0.035443,
		0.663808, 0.386175, 0.640490,
		29.962337, 40.884727, 52.852577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762144, 40.076721, 52.812168>,  <29.497671, 40.614407, 52.404236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762144, 40.076721, 52.812168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.787573, 40.427574, 53.002579>,  <29.802830, 40.638084, 53.116825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.787573, 40.427574, 53.002579>,  <29.762144, 40.076721, 52.812168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787573, 40.427574, 53.002579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600761, -0.347249, 0.720072,
		0.796897, -0.331755, 0.504870,
		0.063572, 0.877130, 0.476028,
		29.806644, 40.690712, 53.145386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869831, 39.933430, 53.487598>,  <29.762144, 40.076721, 52.812168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869831, 39.933430, 53.487598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.734167, 40.309067, 53.509773>,  <29.652769, 40.534451, 53.523079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.734167, 40.309067, 53.509773>,  <29.869831, 39.933430, 53.487598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734167, 40.309067, 53.509773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578770, -0.254757, 0.774677,
		0.741616, 0.230657, 0.629923,
		-0.339162, 0.939093, 0.055435,
		29.632418, 40.590794, 53.526405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833708, 40.025848, 54.234856>,  <29.869831, 39.933430, 53.487598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833708, 40.025848, 54.234856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.590019, 40.262306, 54.023422>,  <29.443806, 40.404182, 53.896564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.590019, 40.262306, 54.023422>,  <29.833708, 40.025848, 54.234856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590019, 40.262306, 54.023422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765388, -0.263973, 0.586940,
		0.207435, 0.762147, 0.613273,
		-0.609222, 0.591144, -0.528581,
		29.407253, 40.439648, 53.864849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390848, 40.271320, 54.795578>,  <29.833708, 40.025848, 54.234856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390848, 40.271320, 54.795578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.206032, 40.388435, 54.460724>,  <29.095142, 40.458702, 54.259811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.206032, 40.388435, 54.460724>,  <29.390848, 40.271320, 54.795578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206032, 40.388435, 54.460724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886834, -0.145377, 0.438624,
		0.006722, 0.945062, 0.326822,
		-0.462039, 0.292785, -0.837136,
		29.067421, 40.476273, 54.209583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863745, 40.731476, 55.029961>,  <29.390848, 40.271320, 54.795578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863745, 40.731476, 55.029961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.765160, 40.561340, 54.681629>,  <28.706009, 40.459259, 54.472630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.765160, 40.561340, 54.681629>,  <28.863745, 40.731476, 55.029961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765160, 40.561340, 54.681629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909717, -0.208293, 0.359206,
		-0.334172, 0.880739, -0.335601,
		-0.246463, -0.425339, -0.870829,
		28.691221, 40.433739, 54.420380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248169, 41.055408, 54.935402>,  <28.863745, 40.731476, 55.029961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248169, 41.055408, 54.935402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.269920, 40.736557, 54.694859>,  <28.282970, 40.545246, 54.550533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.269920, 40.736557, 54.694859>,  <28.248169, 41.055408, 54.935402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269920, 40.736557, 54.694859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922411, -0.270719, 0.275444,
		-0.382363, 0.539717, -0.750003,
		0.054379, -0.797130, -0.601354,
		28.286234, 40.497417, 54.514454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622343, 40.997898, 54.670456>,  <28.248169, 41.055408, 54.935402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622343, 40.997898, 54.670456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.782715, 40.638161, 54.600666>,  <27.878939, 40.422318, 54.558792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.782715, 40.638161, 54.600666>,  <27.622343, 40.997898, 54.670456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782715, 40.638161, 54.600666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847037, -0.436465, 0.303360,
		-0.348976, 0.026162, -0.936766,
		0.400929, -0.899341, -0.174476,
		27.902994, 40.368359, 54.548325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155891, 40.597637, 54.217480>,  <27.622343, 40.997898, 54.670456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155891, 40.597637, 54.217480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.379929, 40.336235, 54.421135>,  <27.514351, 40.179394, 54.543327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.379929, 40.336235, 54.421135>,  <27.155891, 40.597637, 54.217480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379929, 40.336235, 54.421135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828365, -0.434042, 0.354144,
		-0.010448, -0.620107, -0.784448,
		0.560091, -0.653510, 0.509140,
		27.547956, 40.140182, 54.573875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738272, 39.998489, 54.125301>,  <27.155891, 40.597637, 54.217480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738272, 39.998489, 54.125301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.970760, 39.940384, 54.445572>,  <27.110254, 39.905521, 54.637733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.970760, 39.940384, 54.445572>,  <26.738272, 39.998489, 54.125301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970760, 39.940384, 54.445572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794351, -0.314811, 0.519519,
		0.176594, -0.937972, -0.298366,
		0.581223, -0.145263, 0.800674,
		27.145128, 39.896805, 54.685776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560322, 39.337421, 54.291958>,  <26.738272, 39.998489, 54.125301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560322, 39.337421, 54.291958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.720184, 39.520180, 54.609833>,  <26.816101, 39.629833, 54.800556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.720184, 39.520180, 54.609833>,  <26.560322, 39.337421, 54.291958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720184, 39.520180, 54.609833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797627, -0.253898, 0.547108,
		0.451738, -0.852517, 0.262958,
		0.399654, 0.456892, 0.794687,
		26.840080, 39.657246, 54.848240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474535, 38.980862, 54.925915>,  <26.560322, 39.337421, 54.291958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474535, 38.980862, 54.925915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.529301, 39.350792, 55.067875>,  <26.562160, 39.572750, 55.153049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.529301, 39.350792, 55.067875>,  <26.474535, 38.980862, 54.925915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529301, 39.350792, 55.067875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659993, -0.182006, 0.728892,
		0.738691, -0.334026, 0.585459,
		0.136912, 0.924824, 0.354901,
		26.570374, 39.628239, 55.174347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981527, 38.407188, 54.910789>,  <26.474535, 38.980862, 54.925915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981527, 38.407188, 54.910789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.915150, 38.020866, 54.990479>,  <26.875324, 37.789074, 55.038292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.915150, 38.020866, 54.990479>,  <26.981527, 38.407188, 54.910789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915150, 38.020866, 54.990479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798370, -0.250162, -0.547744,
		0.578850, 0.068159, 0.812580,
		-0.165943, -0.965802, 0.199222,
		26.865366, 37.731125, 55.050243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608631, 38.069286, 55.219078>,  <26.981527, 38.407188, 54.910789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608631, 38.069286, 55.219078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.398590, 37.800873, 55.009705>,  <27.272566, 37.639824, 54.884083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.398590, 37.800873, 55.009705>,  <27.608631, 38.069286, 55.219078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398590, 37.800873, 55.009705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808856, -0.202279, -0.552119,
		0.264611, -0.713300, 0.648987,
		-0.525103, -0.671034, -0.523432,
		27.241058, 37.599564, 54.852676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970501, 37.396461, 55.210087>,  <27.608631, 38.069286, 55.219078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970501, 37.396461, 55.210087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.716499, 37.388779, 54.901180>,  <27.564098, 37.384171, 54.715836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.716499, 37.388779, 54.901180>,  <27.970501, 37.396461, 55.210087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716499, 37.388779, 54.901180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770316, -0.091007, -0.631135,
		-0.058161, -0.995665, 0.072584,
		-0.635005, -0.019205, -0.772269,
		27.525997, 37.383015, 54.669498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108208, 36.787632, 54.835163>,  <27.970501, 37.396461, 55.210087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108208, 36.787632, 54.835163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.933590, 37.049622, 54.588444>,  <27.828819, 37.206814, 54.440414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.933590, 37.049622, 54.588444>,  <28.108208, 36.787632, 54.835163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933590, 37.049622, 54.588444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801102, -0.029035, -0.597823,
		-0.409468, -0.755092, -0.512027,
		-0.436545, 0.654975, -0.616795,
		27.802626, 37.246113, 54.403404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210321, 36.550770, 54.211552>,  <28.108208, 36.787632, 54.835163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210321, 36.550770, 54.211552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.085224, 36.905113, 54.074474>,  <28.010166, 37.117722, 53.992226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.085224, 36.905113, 54.074474>,  <28.210321, 36.550770, 54.211552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085224, 36.905113, 54.074474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689464, -0.036442, -0.723403,
		-0.653324, -0.462515, -0.599373,
		-0.312742, 0.885862, -0.342695,
		27.991402, 37.170872, 53.971664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183523, 36.481159, 53.481884>,  <28.210321, 36.550770, 54.211552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183523, 36.481159, 53.481884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.229824, 36.873039, 53.547344>,  <28.257605, 37.108170, 53.586620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.229824, 36.873039, 53.547344>,  <28.183523, 36.481159, 53.481884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229824, 36.873039, 53.547344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773149, 0.014566, -0.634058,
		-0.623572, 0.199923, -0.755770,
		0.115754, 0.979703, 0.163653,
		28.264551, 37.166950, 53.596439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485283, 36.720802, 52.863083>,  <28.183523, 36.481159, 53.481884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485283, 36.720802, 52.863083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.541122, 37.023491, 53.118546>,  <28.574625, 37.205105, 53.271824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.541122, 37.023491, 53.118546>,  <28.485283, 36.720802, 52.863083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541122, 37.023491, 53.118546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826894, 0.265741, -0.495608,
		-0.544755, 0.597288, -0.588633,
		0.139597, 0.756722, 0.638658,
		28.583002, 37.250507, 53.310143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578835, 37.392117, 52.425018>,  <28.485283, 36.720802, 52.863083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578835, 37.392117, 52.425018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.721914, 37.471130, 52.790100>,  <28.807762, 37.518539, 53.009148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.721914, 37.471130, 52.790100>,  <28.578835, 37.392117, 52.425018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721914, 37.471130, 52.790100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852245, 0.330488, -0.405532,
		-0.381745, 0.922907, -0.050134,
		0.357700, 0.197536, 0.912705,
		28.829224, 37.530392, 53.063911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771769, 38.076084, 52.448441>,  <28.578835, 37.392117, 52.425018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771769, 38.076084, 52.448441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.974361, 37.926125, 52.759033>,  <29.095917, 37.836147, 52.945389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.974361, 37.926125, 52.759033>,  <28.771769, 38.076084, 52.448441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974361, 37.926125, 52.759033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826994, 0.466090, -0.314391,
		-0.244046, 0.801380, 0.546106,
		0.506481, -0.374901, 0.776483,
		29.126307, 37.813656, 52.991978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095436, 38.698929, 52.915459>,  <28.771769, 38.076084, 52.448441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095436, 38.698929, 52.915459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.298027, 38.359573, 52.977066>,  <29.419582, 38.155960, 53.014030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.298027, 38.359573, 52.977066>,  <29.095436, 38.698929, 52.915459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298027, 38.359573, 52.977066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861750, 0.491952, -0.123976,
		0.029411, 0.195515, 0.980260,
		0.506480, -0.848385, 0.154016,
		29.449970, 38.105057, 53.023270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539783, 38.923183, 53.343552>,  <29.095436, 38.698929, 52.915459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539783, 38.923183, 53.343552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713793, 38.610268, 53.165215>,  <29.818199, 38.422516, 53.058212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713793, 38.610268, 53.165215>,  <29.539783, 38.923183, 53.343552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713793, 38.610268, 53.165215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826932, 0.543029, -0.145955,
		0.356284, -0.305186, 0.883132,
		0.435023, -0.782292, -0.445841,
		29.844299, 38.375580, 53.031464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223461, 38.991219, 53.454594>,  <29.539783, 38.923183, 53.343552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223461, 38.991219, 53.454594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.235603, 38.741211, 53.142586>,  <30.242889, 38.591206, 52.955383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.235603, 38.741211, 53.142586>,  <30.223461, 38.991219, 53.454594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235603, 38.741211, 53.142586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610690, 0.629384, -0.480555,
		0.791288, -0.461759, 0.400802,
		0.030357, -0.625023, -0.780016,
		30.244711, 38.553703, 52.908581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871195, 39.142014, 53.153690>,  <30.223461, 38.991219, 53.454594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871195, 39.142014, 53.153690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.704384, 38.941620, 52.850349>,  <30.604298, 38.821384, 52.668346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.704384, 38.941620, 52.850349>,  <30.871195, 39.142014, 53.153690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704384, 38.941620, 52.850349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449526, 0.611485, -0.651163,
		0.789947, -0.612451, -0.029797,
		-0.417026, -0.500989, -0.758353,
		30.579277, 38.791325, 52.622845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413485, 39.047630, 52.654671>,  <30.871195, 39.142014, 53.153690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413485, 39.047630, 52.654671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096384, 38.945442, 52.433300>,  <30.906124, 38.884129, 52.300476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096384, 38.945442, 52.433300>,  <31.413485, 39.047630, 52.654671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096384, 38.945442, 52.433300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400392, 0.466336, -0.788807,
		0.459587, -0.846919, -0.267410,
		-0.792759, -0.255456, -0.553422,
		30.858559, 38.868801, 52.267273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584887, 38.569798, 52.013630>,  <31.413485, 39.047630, 52.654671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584887, 38.569798, 52.013630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.241642, 38.753952, 51.922695>,  <31.035694, 38.864445, 51.868134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.241642, 38.753952, 51.922695>,  <31.584887, 38.569798, 52.013630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241642, 38.753952, 51.922695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406779, 0.339370, -0.848151,
		-0.313328, -0.820286, -0.478495,
		-0.858113, 0.460391, -0.227341,
		30.984209, 38.892071, 51.854492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572714, 38.504559, 51.293266>,  <31.584887, 38.569798, 52.013630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572714, 38.504559, 51.293266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.309999, 38.798782, 51.359692>,  <31.152370, 38.975319, 51.399548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.309999, 38.798782, 51.359692>,  <31.572714, 38.504559, 51.293266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309999, 38.798782, 51.359692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335771, 0.482458, -0.809007,
		-0.675196, -0.475584, -0.563853,
		-0.656787, 0.735563, 0.166066,
		31.112963, 39.019451, 51.409512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307222, 38.718014, 50.563698>,  <31.572714, 38.504559, 51.293266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307222, 38.718014, 50.563698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.220385, 39.021362, 50.809540>,  <31.168282, 39.203373, 50.957047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.220385, 39.021362, 50.809540>,  <31.307222, 38.718014, 50.563698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220385, 39.021362, 50.809540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241455, 0.651776, -0.718949,
		-0.945817, -0.007680, -0.324610,
		-0.217094, 0.758373, 0.614606,
		31.155256, 39.248875, 50.993923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932024, 39.145199, 50.075035>,  <31.307222, 38.718014, 50.563698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932024, 39.145199, 50.075035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076391, 39.360680, 50.379547>,  <31.163012, 39.489967, 50.562252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076391, 39.360680, 50.379547>,  <30.932024, 39.145199, 50.075035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076391, 39.360680, 50.379547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385025, 0.657410, -0.647741,
		-0.849408, 0.526891, 0.029857,
		0.360917, 0.538701, 0.761275,
		31.184666, 39.522289, 50.607929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642986, 39.819885, 50.019859>,  <30.932024, 39.145199, 50.075035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642986, 39.819885, 50.019859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.973713, 39.834831, 50.244350>,  <31.172148, 39.843800, 50.379047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.973713, 39.834831, 50.244350>,  <30.642986, 39.819885, 50.019859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973713, 39.834831, 50.244350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368518, 0.717822, -0.590700,
		-0.424938, 0.695223, 0.579734,
		0.826814, 0.037368, 0.561232,
		31.221758, 39.846043, 50.412720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794102, 40.551003, 50.057732>,  <30.642986, 39.819885, 50.019859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794102, 40.551003, 50.057732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.135668, 40.382507, 50.179966>,  <31.340607, 40.281410, 50.253307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.135668, 40.382507, 50.179966>,  <30.794102, 40.551003, 50.057732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135668, 40.382507, 50.179966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515781, 0.763202, -0.389221,
		-0.069271, 0.489979, 0.868978,
		0.853916, -0.421240, 0.305589,
		31.391842, 40.256134, 50.271645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228985, 41.103085, 50.272629>,  <30.794102, 40.551003, 50.057732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228985, 41.103085, 50.272629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472738, 40.790871, 50.216904>,  <31.618990, 40.603542, 50.183468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472738, 40.790871, 50.216904>,  <31.228985, 41.103085, 50.272629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472738, 40.790871, 50.216904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708795, 0.615033, -0.345463,
		0.355330, 0.111775, 0.928034,
		0.609386, -0.780539, -0.139314,
		31.655554, 40.556709, 50.175110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.824314, 45.512276, 49.157551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.097778, 45.237373, 49.059341>,  <34.261856, 45.072433, 49.000416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.097778, 45.237373, 49.059341>,  <33.824314, 45.512276, 49.157551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097778, 45.237373, 49.059341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641047, 0.726313, -0.248050,
		0.348801, 0.012191, 0.937118,
		0.683665, -0.687256, -0.245524,
		34.302879, 45.031197, 48.985683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482250, 45.815823, 49.494667>,  <33.824314, 45.512276, 49.157551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482250, 45.815823, 49.494667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.584999, 45.536354, 49.227573>,  <34.646648, 45.368671, 49.067318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.584999, 45.536354, 49.227573>,  <34.482250, 45.815823, 49.494667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584999, 45.536354, 49.227573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710971, 0.604609, -0.359121,
		0.654628, -0.382493, 0.652044,
		0.256870, -0.698675, -0.667736,
		34.662060, 45.326752, 49.027252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232296, 45.913094, 49.359825>,  <34.482250, 45.815823, 49.494667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232296, 45.913094, 49.359825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.119507, 45.696152, 49.043259>,  <35.051834, 45.565987, 48.853317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.119507, 45.696152, 49.043259>,  <35.232296, 45.913094, 49.359825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119507, 45.696152, 49.043259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721950, 0.423338, -0.547333,
		0.631885, -0.725699, 0.272182,
		-0.281974, -0.542353, -0.791419,
		35.034916, 45.533447, 48.805832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846695, 45.624794, 49.010925>,  <35.232296, 45.913094, 49.359825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846695, 45.624794, 49.010925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.543415, 45.642372, 48.750710>,  <35.361446, 45.652920, 48.594582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.543415, 45.642372, 48.750710>,  <35.846695, 45.624794, 49.010925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543415, 45.642372, 48.750710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601697, 0.431520, -0.672124,
		0.251185, -0.901032, -0.353618,
		-0.758199, 0.043943, -0.650540,
		35.315956, 45.655556, 48.555546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204281, 45.587963, 48.427826>,  <35.846695, 45.624794, 49.010925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204281, 45.587963, 48.427826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.834076, 45.682747, 48.309662>,  <35.611954, 45.739616, 48.238762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.834076, 45.682747, 48.309662>,  <36.204281, 45.587963, 48.427826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834076, 45.682747, 48.309662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378117, 0.621699, -0.685943,
		0.021117, -0.746553, -0.664991,
		-0.925516, 0.236959, -0.295413,
		35.556419, 45.753834, 48.221039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141853, 45.455471, 47.714512>,  <36.204281, 45.587963, 48.427826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141853, 45.455471, 47.714512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.897350, 45.745247, 47.841976>,  <35.750648, 45.919113, 47.918453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.897350, 45.745247, 47.841976>,  <36.141853, 45.455471, 47.714512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897350, 45.745247, 47.841976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398008, 0.629401, -0.667415,
		-0.684067, -0.281137, -0.673063,
		-0.611262, 0.724442, 0.318658,
		35.713970, 45.962578, 47.937572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037815, 45.791435, 47.086151>,  <36.141853, 45.455471, 47.714512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037815, 45.791435, 47.086151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.927269, 46.043312, 47.376564>,  <35.860943, 46.194435, 47.550812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.927269, 46.043312, 47.376564>,  <36.037815, 45.791435, 47.086151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927269, 46.043312, 47.376564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513140, 0.735435, -0.442518,
		-0.812595, 0.250258, -0.526366,
		-0.276364, 0.629687, 0.726028,
		35.844360, 46.232220, 47.594372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837826, 46.405743, 46.637642>,  <36.037815, 45.791435, 47.086151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837826, 46.405743, 46.637642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.871052, 46.549225, 47.009541>,  <35.890987, 46.635315, 47.232681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.871052, 46.549225, 47.009541>,  <35.837826, 46.405743, 46.637642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871052, 46.549225, 47.009541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465788, 0.810813, -0.354435,
		-0.880989, 0.462505, -0.099735,
		0.083062, 0.358709, 0.929747,
		35.895969, 46.656837, 47.288464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661339, 47.091145, 46.622139>,  <35.837826, 46.405743, 46.637642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661339, 47.091145, 46.622139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.885941, 47.091484, 46.953129>,  <36.020702, 47.091690, 47.151722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.885941, 47.091484, 46.953129>,  <35.661339, 47.091145, 46.622139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885941, 47.091484, 46.953129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567379, 0.727511, -0.385758,
		-0.602325, 0.686095, 0.408017,
		0.561503, 0.000851, 0.827474,
		36.054390, 47.091740, 47.201370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733437, 47.794731, 46.726139>,  <35.661339, 47.091145, 46.622139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733437, 47.794731, 46.726139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.025707, 47.589828, 46.906673>,  <36.201069, 47.466888, 47.014992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.025707, 47.589828, 46.906673>,  <35.733437, 47.794731, 46.726139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025707, 47.589828, 46.906673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677609, 0.624885, -0.387769,
		-0.083394, 0.589162, 0.803700,
		0.730679, -0.512256, 0.451333,
		36.244911, 47.436153, 47.042072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133507, 48.310219, 46.938778>,  <35.733437, 47.794731, 46.726139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133507, 48.310219, 46.938778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380932, 47.998428, 46.978371>,  <36.529388, 47.811356, 47.002125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380932, 47.998428, 46.978371>,  <36.133507, 48.310219, 46.938778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380932, 47.998428, 46.978371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750023, 0.548202, -0.370054,
		0.234185, 0.303142, 0.923722,
		0.618565, -0.779474, 0.098983,
		36.566502, 47.764587, 47.008064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750439, 48.624981, 47.021133>,  <36.133507, 48.310219, 46.938778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750439, 48.624981, 47.021133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.864525, 48.254440, 46.922722>,  <36.932976, 48.032116, 46.863674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.864525, 48.254440, 46.922722>,  <36.750439, 48.624981, 47.021133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864525, 48.254440, 46.922722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772324, 0.374139, -0.513357,
		0.567596, -0.043595, 0.822152,
		0.285219, -0.926347, -0.246029,
		36.950092, 47.976536, 46.848911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465324, 48.468121, 47.282627>,  <36.750439, 48.624981, 47.021133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465324, 48.468121, 47.282627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.332481, 48.287880, 46.951168>,  <37.252773, 48.179737, 46.752293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.332481, 48.287880, 46.951168>,  <37.465324, 48.468121, 47.282627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332481, 48.287880, 46.951168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768687, 0.379842, -0.514626,
		0.546647, -0.807886, 0.220221,
		-0.332110, -0.450600, -0.828651,
		37.232849, 48.152699, 46.702572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005871, 48.057278, 47.204979>,  <37.465324, 48.468121, 47.282627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005871, 48.057278, 47.204979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.785458, 48.171791, 46.891441>,  <37.653210, 48.240498, 46.703320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.785458, 48.171791, 46.891441>,  <38.005871, 48.057278, 47.204979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785458, 48.171791, 46.891441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833463, 0.235277, -0.499985,
		0.041282, -0.928809, -0.368253,
		-0.551032, 0.286285, -0.783840,
		37.620148, 48.257675, 46.656288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553364, 47.790905, 47.626274>,  <38.005871, 48.057278, 47.204979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553364, 47.790905, 47.626274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.872322, 47.718353, 47.856495>,  <39.063698, 47.674824, 47.994625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.872322, 47.718353, 47.856495>,  <38.553364, 47.790905, 47.626274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872322, 47.718353, 47.856495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592450, -0.416588, 0.689534,
		0.114702, -0.890818, -0.439643,
		0.797400, -0.181376, 0.575548,
		39.111542, 47.663940, 48.029160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416965, 47.170361, 47.837643>,  <38.553364, 47.790905, 47.626274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416965, 47.170361, 47.837643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.667618, 47.325890, 48.107796>,  <38.818008, 47.419209, 48.269886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.667618, 47.325890, 48.107796>,  <38.416965, 47.170361, 47.837643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667618, 47.325890, 48.107796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546323, -0.398849, 0.736512,
		0.555751, -0.830502, -0.037508,
		0.626635, 0.388826, 0.675383,
		38.855610, 47.442539, 48.310410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562744, 46.631359, 48.242134>,  <38.416965, 47.170361, 47.837643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562744, 46.631359, 48.242134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640148, 46.958130, 48.459457>,  <38.686588, 47.154194, 48.589851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640148, 46.958130, 48.459457>,  <38.562744, 46.631359, 48.242134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640148, 46.958130, 48.459457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517702, -0.385382, 0.763849,
		0.833390, -0.429084, 0.348350,
		0.193508, 0.816926, 0.543311,
		38.698200, 47.203209, 48.622452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809109, 46.440910, 48.861938>,  <38.562744, 46.631359, 48.242134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809109, 46.440910, 48.861938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712639, 46.816025, 48.961845>,  <38.654758, 47.041096, 49.021790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712639, 46.816025, 48.961845>,  <38.809109, 46.440910, 48.861938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712639, 46.816025, 48.961845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404038, -0.331027, 0.852745,
		0.882377, 0.104743, 0.458738,
		-0.241174, 0.937790, 0.249770,
		38.640285, 47.097363, 49.036777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194695, 46.555435, 49.529430>,  <38.809109, 46.440910, 48.861938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194695, 46.555435, 49.529430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.912010, 46.838203, 49.517899>,  <38.742401, 47.007862, 49.510979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.912010, 46.838203, 49.517899>,  <39.194695, 46.555435, 49.529430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912010, 46.838203, 49.517899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199245, -0.159750, 0.966841,
		0.678871, 0.689019, 0.253746,
		-0.706708, 0.706917, -0.028834,
		38.699997, 47.050278, 49.509247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110115, 46.750385, 50.224274>,  <39.194695, 46.555435, 49.529430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110115, 46.750385, 50.224274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.783051, 46.925346, 50.074547>,  <38.586811, 47.030323, 49.984711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.783051, 46.925346, 50.074547>,  <39.110115, 46.750385, 50.224274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783051, 46.925346, 50.074547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506137, -0.236345, 0.829437,
		0.274332, 0.867651, 0.414636,
		-0.817660, 0.437404, -0.374314,
		38.537754, 47.056568, 49.962254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830612, 47.127773, 50.775314>,  <39.110115, 46.750385, 50.224274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830612, 47.127773, 50.775314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.550110, 47.036537, 50.505142>,  <38.381809, 46.981796, 50.343037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.550110, 47.036537, 50.505142>,  <38.830612, 47.127773, 50.775314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550110, 47.036537, 50.505142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592115, -0.341301, 0.730009,
		-0.397037, 0.911859, 0.104282,
		-0.701257, -0.228094, -0.675434,
		38.339733, 46.968109, 50.302513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188538, 47.235249, 51.046326>,  <38.830612, 47.127773, 50.775314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188538, 47.235249, 51.046326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.070503, 46.983253, 50.758984>,  <37.999683, 46.832058, 50.586578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.070503, 46.983253, 50.758984>,  <38.188538, 47.235249, 51.046326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070503, 46.983253, 50.758984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637730, -0.429994, 0.639065,
		-0.711493, 0.646699, -0.274877,
		-0.295088, -0.629988, -0.718358,
		37.981976, 46.794258, 50.543476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457012, 47.257565, 51.068371>,  <38.188538, 47.235249, 51.046326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457012, 47.257565, 51.068371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.549591, 46.920921, 50.873177>,  <37.605141, 46.718937, 50.756062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.549591, 46.920921, 50.873177>,  <37.457012, 47.257565, 51.068371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549591, 46.920921, 50.873177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644647, -0.508348, 0.570976,
		-0.728602, 0.182422, -0.660198,
		0.231451, -0.841608, -0.487981,
		37.619026, 46.668438, 50.726784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764854, 46.957058, 50.957809>,  <37.457012, 47.257565, 51.068371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764854, 46.957058, 50.957809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.031296, 46.661057, 50.920494>,  <37.191162, 46.483456, 50.898106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.031296, 46.661057, 50.920494>,  <36.764854, 46.957058, 50.957809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031296, 46.661057, 50.920494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632568, -0.626760, 0.455005,
		-0.395176, -0.244067, -0.885589,
		0.666104, -0.740002, -0.093291,
		37.231129, 46.439056, 50.892506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476559, 46.498978, 50.587154>,  <36.764854, 46.957058, 50.957809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476559, 46.498978, 50.587154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.748138, 46.284126, 50.787361>,  <36.911087, 46.155216, 50.907486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.748138, 46.284126, 50.787361>,  <36.476559, 46.498978, 50.587154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748138, 46.284126, 50.787361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734152, -0.490484, 0.469517,
		-0.006698, -0.686233, -0.727350,
		0.678952, -0.537130, 0.500515,
		36.951824, 46.122986, 50.937515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226437, 45.861450, 50.549984>,  <36.476559, 46.498978, 50.587154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226437, 45.861450, 50.549984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.468102, 45.877197, 50.868340>,  <36.613098, 45.886646, 51.059353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.468102, 45.877197, 50.868340>,  <36.226437, 45.861450, 50.549984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468102, 45.877197, 50.868340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676404, -0.502682, 0.538320,
		0.421271, -0.863575, -0.277073,
		0.604159, 0.039365, 0.795891,
		36.649349, 45.889008, 51.107105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194130, 45.171112, 50.840782>,  <36.226437, 45.861450, 50.549984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194130, 45.171112, 50.840782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.334179, 45.396194, 51.140324>,  <36.418209, 45.531242, 51.320049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.334179, 45.396194, 51.140324>,  <36.194130, 45.171112, 50.840782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334179, 45.396194, 51.140324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619002, -0.461026, 0.635839,
		0.703030, -0.686161, 0.186901,
		0.350122, 0.562706, 0.748850,
		36.439217, 45.565006, 51.364979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227745, 44.725834, 51.452755>,  <36.194130, 45.171112, 50.840782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227745, 44.725834, 51.452755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.257389, 45.091141, 51.612980>,  <36.275173, 45.310326, 51.709114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.257389, 45.091141, 51.612980>,  <36.227745, 44.725834, 51.452755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257389, 45.091141, 51.612980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655629, -0.258041, 0.709624,
		0.751438, -0.315207, 0.579642,
		0.074107, 0.913269, 0.400560,
		36.279621, 45.365120, 51.733147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760880, 44.210278, 51.569691>,  <36.227745, 44.725834, 51.452755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760880, 44.210278, 51.569691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.916409, 43.846115, 51.626221>,  <37.009727, 43.627617, 51.660141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.916409, 43.846115, 51.626221>,  <36.760880, 44.210278, 51.569691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916409, 43.846115, 51.626221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779232, 0.243129, -0.577655,
		0.491541, 0.334733, 0.803953,
		0.388824, -0.910408, 0.141328,
		37.033054, 43.572994, 51.668617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435291, 44.231422, 51.949383>,  <36.760880, 44.210278, 51.569691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435291, 44.231422, 51.949383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.411903, 43.889954, 51.742374>,  <37.397869, 43.685074, 51.618172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.411903, 43.889954, 51.742374>,  <37.435291, 44.231422, 51.949383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411903, 43.889954, 51.742374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858416, 0.221644, -0.462598,
		0.509612, -0.471292, 0.719847,
		-0.058469, -0.853673, -0.517517,
		37.394363, 43.633850, 51.587120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090343, 43.979519, 52.013477>,  <37.435291, 44.231422, 51.949383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090343, 43.979519, 52.013477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.932983, 43.776054, 51.707146>,  <37.838566, 43.653976, 51.523346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.932983, 43.776054, 51.707146>,  <38.090343, 43.979519, 52.013477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932983, 43.776054, 51.707146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867301, 0.071008, -0.492693,
		0.304995, -0.858032, 0.413231,
		-0.393403, -0.508664, -0.765829,
		37.814960, 43.623455, 51.477398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618153, 43.649189, 51.806709>,  <38.090343, 43.979519, 52.013477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618153, 43.649189, 51.806709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.372330, 43.599632, 51.495075>,  <38.224834, 43.569897, 51.308094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.372330, 43.599632, 51.495075>,  <38.618153, 43.649189, 51.806709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372330, 43.599632, 51.495075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780159, 0.050939, -0.623504,
		0.116933, -0.990987, 0.065351,
		-0.614556, -0.123893, -0.779084,
		38.187962, 43.562466, 51.261349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998528, 43.218868, 51.229713>,  <38.618153, 43.649189, 51.806709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998528, 43.218868, 51.229713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.704292, 43.419533, 51.047619>,  <38.527752, 43.539932, 50.938362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.704292, 43.419533, 51.047619>,  <38.998528, 43.218868, 51.229713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704292, 43.419533, 51.047619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639853, 0.293824, -0.710109,
		-0.222478, -0.813633, -0.537126,
		-0.735589, 0.501665, -0.455236,
		38.483616, 43.570034, 50.911049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891579, 42.873039, 50.578468>,  <38.998528, 43.218868, 51.229713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891579, 42.873039, 50.578468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.763466, 43.251968, 50.579231>,  <38.686600, 43.479324, 50.579689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.763466, 43.251968, 50.579231>,  <38.891579, 42.873039, 50.578468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763466, 43.251968, 50.579231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551256, 0.188012, -0.812876,
		-0.770413, -0.259298, -0.582433,
		-0.320281, 0.947321, 0.001908,
		38.667381, 43.536163, 50.579803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706371, 43.074192, 49.888474>,  <38.891579, 42.873039, 50.578468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706371, 43.074192, 49.888474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.754917, 43.439102, 50.044945>,  <38.784046, 43.658051, 50.138828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.754917, 43.439102, 50.044945>,  <38.706371, 43.074192, 49.888474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754917, 43.439102, 50.044945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385009, 0.319970, -0.865671,
		-0.914898, 0.255667, -0.312403,
		0.121364, 0.912279, 0.391174,
		38.791325, 43.712788, 50.162296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536167, 43.493858, 49.361057>,  <38.706371, 43.074192, 49.888474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536167, 43.493858, 49.361057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744484, 43.719200, 49.617622>,  <38.869473, 43.854404, 49.771561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744484, 43.719200, 49.617622>,  <38.536167, 43.493858, 49.361057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744484, 43.719200, 49.617622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428212, 0.477596, -0.767161,
		-0.738521, 0.674189, 0.007490,
		0.520788, 0.563358, 0.641411,
		38.900719, 43.888206, 49.810047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332348, 44.130054, 49.160225>,  <38.536167, 43.493858, 49.361057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332348, 44.130054, 49.160225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686417, 44.162354, 49.343506>,  <38.898857, 44.181732, 49.453476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686417, 44.162354, 49.343506>,  <38.332348, 44.130054, 49.160225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686417, 44.162354, 49.343506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357047, 0.513537, -0.780255,
		-0.298309, 0.854259, 0.425737,
		0.885172, 0.080749, 0.458204,
		38.951969, 44.186577, 49.480968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477917, 44.869961, 49.038445>,  <38.332348, 44.130054, 49.160225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477917, 44.869961, 49.038445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.817596, 44.691895, 49.152073>,  <39.021404, 44.585056, 49.220249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.817596, 44.691895, 49.152073>,  <38.477917, 44.869961, 49.038445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817596, 44.691895, 49.152073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497573, 0.494331, -0.712781,
		0.176877, 0.746638, 0.641285,
		0.849197, -0.445161, 0.284071,
		39.072357, 44.558346, 49.237293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013382, 45.419010, 49.233955>,  <38.477917, 44.869961, 49.038445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013382, 45.419010, 49.233955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195259, 45.076485, 49.135994>,  <39.304386, 44.870972, 49.077217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195259, 45.076485, 49.135994>,  <39.013382, 45.419010, 49.233955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195259, 45.076485, 49.135994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454227, 0.459485, -0.763251,
		0.766112, 0.235804, 0.597887,
		0.454697, -0.856312, -0.244908,
		39.331669, 44.819592, 49.062523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699886, 45.581760, 49.114964>,  <39.013382, 45.419010, 49.233955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699886, 45.581760, 49.114964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.649620, 45.241676, 48.910473>,  <39.619461, 45.037624, 48.787777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.649620, 45.241676, 48.910473>,  <39.699886, 45.581760, 49.114964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649620, 45.241676, 48.910473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268724, 0.466875, -0.842505,
		0.954984, -0.243254, 0.169801,
		-0.125667, -0.850209, -0.511226,
		39.611919, 44.986614, 48.757107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.207279, 42.824348, 54.926956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128624, 42.542473, 54.654266>,  <35.081432, 42.373348, 54.490654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128624, 42.542473, 54.654266>,  <35.207279, 42.824348, 54.926956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128624, 42.542473, 54.654266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722682, 0.365724, -0.586496,
		0.662620, -0.607994, 0.437353,
		-0.196635, -0.704691, -0.681722,
		35.069633, 42.331066, 54.449749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775280, 42.677109, 54.678864>,  <35.207279, 42.824348, 54.926956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775280, 42.677109, 54.678864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574242, 42.476410, 54.397255>,  <35.453621, 42.355991, 54.228291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574242, 42.476410, 54.397255>,  <35.775280, 42.677109, 54.678864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574242, 42.476410, 54.397255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615811, 0.363783, -0.698884,
		0.606776, -0.784799, 0.126147,
		-0.502594, -0.501749, -0.704022,
		35.423462, 42.325886, 54.186047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153675, 42.180779, 54.351864>,  <35.775280, 42.677109, 54.678864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153675, 42.180779, 54.351864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864716, 42.264374, 54.088207>,  <35.691341, 42.314533, 53.930016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864716, 42.264374, 54.088207>,  <36.153675, 42.180779, 54.351864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864716, 42.264374, 54.088207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691003, 0.253529, -0.676933,
		0.025638, -0.944482, -0.327562,
		-0.722397, 0.208991, -0.659139,
		35.647995, 42.327072, 53.890465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409115, 42.006863, 53.724930>,  <36.153675, 42.180779, 54.351864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409115, 42.006863, 53.724930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089943, 42.215591, 53.604256>,  <35.898441, 42.340828, 53.531853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089943, 42.215591, 53.604256>,  <36.409115, 42.006863, 53.724930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089943, 42.215591, 53.604256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448103, 0.178802, -0.875919,
		-0.403136, -0.834103, -0.376502,
		-0.797926, 0.521826, -0.301682,
		35.850567, 42.372139, 53.513752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167278, 41.793983, 53.081291>,  <36.409115, 42.006863, 53.724930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167278, 41.793983, 53.081291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047577, 42.174156, 53.115070>,  <35.975754, 42.402260, 53.135338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047577, 42.174156, 53.115070>,  <36.167278, 41.793983, 53.081291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047577, 42.174156, 53.115070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369354, 0.196993, -0.908169,
		-0.879785, -0.240584, -0.409996,
		-0.299257, 0.950428, 0.084451,
		35.957798, 42.459286, 53.140404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768963, 41.979542, 52.405403>,  <36.167278, 41.793983, 53.081291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768963, 41.979542, 52.405403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883953, 42.316483, 52.587746>,  <35.952946, 42.518646, 52.697151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883953, 42.316483, 52.587746>,  <35.768963, 41.979542, 52.405403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883953, 42.316483, 52.587746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533558, 0.254411, -0.806592,
		-0.795408, 0.475102, -0.376305,
		0.287477, 0.842350, 0.455855,
		35.970196, 42.569187, 52.724503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619053, 42.526165, 51.987144>,  <35.768963, 41.979542, 52.405403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619053, 42.526165, 51.987144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889343, 42.702675, 52.223335>,  <36.051517, 42.808582, 52.365051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889343, 42.702675, 52.223335>,  <35.619053, 42.526165, 51.987144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889343, 42.702675, 52.223335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480845, 0.343286, -0.806810,
		-0.558729, 0.829115, 0.019783,
		0.675730, 0.441276, 0.590479,
		36.092064, 42.835056, 52.400478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791401, 43.239574, 51.742931>,  <35.619053, 42.526165, 51.987144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791401, 43.239574, 51.742931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114754, 43.139526, 51.956085>,  <36.308765, 43.079498, 52.083977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114754, 43.139526, 51.956085>,  <35.791401, 43.239574, 51.742931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114754, 43.139526, 51.956085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586737, 0.415466, -0.695074,
		-0.047544, 0.874545, 0.482608,
		0.808381, -0.250117, 0.532881,
		36.357269, 43.064491, 52.115948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147446, 43.889011, 51.776775>,  <35.791401, 43.239574, 51.742931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147446, 43.889011, 51.776775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405338, 43.590195, 51.841576>,  <36.560074, 43.410904, 51.880455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405338, 43.590195, 51.841576>,  <36.147446, 43.889011, 51.776775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405338, 43.590195, 51.841576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648834, 0.422782, -0.632668,
		0.404141, 0.513012, 0.757290,
		0.644735, -0.747043, 0.161996,
		36.598759, 43.366081, 51.890175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127163, 44.570660, 52.196575>,  <36.147446, 43.889011, 51.776775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127163, 44.570660, 52.196575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079704, 44.966690, 52.166428>,  <36.051228, 45.204308, 52.148338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079704, 44.966690, 52.166428>,  <36.127163, 44.570660, 52.196575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079704, 44.966690, 52.166428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770638, -0.043956, 0.635756,
		0.626130, 0.133516, 0.768202,
		-0.118650, 0.990071, -0.075370,
		36.044109, 45.263710, 52.143818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143906, 44.710663, 52.853451>,  <36.127163, 44.570660, 52.196575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143906, 44.710663, 52.853451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963661, 45.025612, 52.685165>,  <35.855515, 45.214581, 52.584194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963661, 45.025612, 52.685165>,  <36.143906, 44.710663, 52.853451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963661, 45.025612, 52.685165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652492, 0.031148, 0.757155,
		0.609267, 0.615692, 0.499717,
		-0.450609, 0.787371, -0.420711,
		35.828480, 45.261822, 52.558952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999889, 45.231922, 53.386333>,  <36.143906, 44.710663, 52.853451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999889, 45.231922, 53.386333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742683, 45.311745, 53.090572>,  <35.588360, 45.359638, 52.913116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742683, 45.311745, 53.090572>,  <35.999889, 45.231922, 53.386333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742683, 45.311745, 53.090572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761841, -0.067954, 0.644189,
		0.078307, 0.977527, 0.195726,
		-0.643013, 0.199556, -0.739399,
		35.549778, 45.371613, 52.868752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453548, 45.825401, 53.575119>,  <35.999889, 45.231922, 53.386333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453548, 45.825401, 53.575119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291397, 45.586876, 53.297966>,  <35.194107, 45.443760, 53.131676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291397, 45.586876, 53.297966>,  <35.453548, 45.825401, 53.575119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291397, 45.586876, 53.297966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836506, -0.063712, 0.544242,
		-0.368682, 0.800222, -0.472989,
		-0.405379, -0.596310, -0.692880,
		35.169785, 45.407982, 53.090103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782784, 46.172657, 53.431595>,  <35.453548, 45.825401, 53.575119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782784, 46.172657, 53.431595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758171, 45.792397, 53.309952>,  <34.743404, 45.564240, 53.236965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758171, 45.792397, 53.309952>,  <34.782784, 46.172657, 53.431595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758171, 45.792397, 53.309952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915804, -0.067384, 0.395933,
		-0.396885, 0.302869, -0.866460,
		-0.061530, -0.950647, -0.304112,
		34.739712, 45.507202, 53.218719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113342, 46.099701, 53.258698>,  <34.782784, 46.172657, 53.431595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113342, 46.099701, 53.258698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255104, 45.725906, 53.272175>,  <34.340160, 45.501629, 53.280262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255104, 45.725906, 53.272175>,  <34.113342, 46.099701, 53.258698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255104, 45.725906, 53.272175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830740, -0.298102, 0.470113,
		-0.429269, -0.194601, -0.881963,
		0.354400, -0.934487, 0.033697,
		34.361423, 45.445560, 53.282284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527054, 45.728374, 53.202328>,  <34.113342, 46.099701, 53.258698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527054, 45.728374, 53.202328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776917, 45.456009, 53.355251>,  <33.926834, 45.292591, 53.447006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776917, 45.456009, 53.355251>,  <33.527054, 45.728374, 53.202328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776917, 45.456009, 53.355251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763116, -0.428386, 0.483880,
		-0.165706, -0.594003, -0.787211,
		0.624657, -0.680915, 0.382307,
		33.964314, 45.251736, 53.469944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134789, 45.147232, 53.245213>,  <33.527054, 45.728374, 53.202328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134789, 45.147232, 53.245213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436180, 45.074814, 53.498035>,  <33.617016, 45.031361, 53.649731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436180, 45.074814, 53.498035>,  <33.134789, 45.147232, 53.245213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436180, 45.074814, 53.498035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615308, -0.532920, 0.580855,
		0.231674, -0.826570, -0.512942,
		0.753475, -0.181048, 0.632059,
		33.662224, 45.020500, 53.687653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222649, 44.389767, 53.337563>,  <33.134789, 45.147232, 53.245213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222649, 44.389767, 53.337563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424942, 44.551750, 53.642258>,  <33.546318, 44.648941, 53.825073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424942, 44.551750, 53.642258>,  <33.222649, 44.389767, 53.337563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424942, 44.551750, 53.642258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363248, -0.700930, 0.613798,
		0.782487, -0.587117, -0.207382,
		0.505732, 0.404958, 0.761738,
		33.576660, 44.673237, 53.870781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561684, 43.804420, 53.635208>,  <33.222649, 44.389767, 53.337563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561684, 43.804420, 53.635208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540012, 44.095482, 53.908730>,  <33.527012, 44.270119, 54.072842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540012, 44.095482, 53.908730>,  <33.561684, 43.804420, 53.635208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540012, 44.095482, 53.908730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360738, -0.652821, 0.666102,
		0.931092, -0.210588, 0.297859,
		-0.054175, 0.727652, 0.683804,
		33.523762, 44.313778, 54.113873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793045, 43.489395, 54.323341>,  <33.561684, 43.804420, 53.635208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793045, 43.489395, 54.323341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595978, 43.826859, 54.408676>,  <33.477737, 44.029339, 54.459877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595978, 43.826859, 54.408676>,  <33.793045, 43.489395, 54.323341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595978, 43.826859, 54.408676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568891, -0.497760, 0.654674,
		0.658514, 0.201173, 0.725182,
		-0.492669, 0.843661, 0.213336,
		33.448177, 44.079956, 54.472675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798977, 43.285042, 54.988613>,  <33.793045, 43.489395, 54.323341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798977, 43.285042, 54.988613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505928, 43.552650, 54.938526>,  <33.330101, 43.713215, 54.908474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505928, 43.552650, 54.938526>,  <33.798977, 43.285042, 54.988613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505928, 43.552650, 54.938526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559935, -0.487818, 0.669706,
		0.386964, 0.560754, 0.731993,
		-0.732620, 0.669021, -0.125217,
		33.286140, 43.753357, 54.900963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487904, 43.432419, 55.604702>,  <33.798977, 43.285042, 54.988613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487904, 43.432419, 55.604702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203407, 43.575661, 55.362743>,  <33.032711, 43.661606, 55.217567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203407, 43.575661, 55.362743>,  <33.487904, 43.432419, 55.604702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203407, 43.575661, 55.362743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702339, -0.397984, 0.590194,
		-0.029387, 0.844611, 0.534573,
		-0.711236, 0.358107, -0.604899,
		32.990036, 43.683094, 55.181274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969994, 43.874214, 56.034531>,  <33.487904, 43.432419, 55.604702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969994, 43.874214, 56.034531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779327, 43.723732, 55.716724>,  <32.664928, 43.633442, 55.526039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779327, 43.723732, 55.716724>,  <32.969994, 43.874214, 56.034531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779327, 43.723732, 55.716724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625923, -0.489367, 0.607239,
		-0.617259, 0.786757, -0.002213,
		-0.476666, -0.376210, -0.794516,
		32.636326, 43.610870, 55.478371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.604267, 36.892769, 50.650391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.675804, 37.135765, 50.959965>,  <33.718727, 37.281563, 51.145710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.675804, 37.135765, 50.959965>,  <33.604267, 36.892769, 50.650391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675804, 37.135765, 50.959965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601784, 0.554776, -0.574525,
		-0.778377, 0.568491, -0.266359,
		0.178843, 0.607488, 0.773934,
		33.729458, 37.318012, 51.192146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555466, 37.477165, 50.373722>,  <33.604267, 36.892769, 50.650391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555466, 37.477165, 50.373722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.725025, 37.607887, 50.711601>,  <33.826759, 37.686321, 50.914330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.725025, 37.607887, 50.711601>,  <33.555466, 37.477165, 50.373722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725025, 37.607887, 50.711601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530895, 0.665959, -0.524069,
		-0.733800, 0.670597, 0.108800,
		0.423895, 0.326801, 0.844698,
		33.852192, 37.705929, 50.965012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502171, 38.250156, 50.361755>,  <33.555466, 37.477165, 50.373722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502171, 38.250156, 50.361755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.793240, 38.165886, 50.622864>,  <33.967880, 38.115326, 50.779530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.793240, 38.165886, 50.622864>,  <33.502171, 38.250156, 50.361755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793240, 38.165886, 50.622864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629627, 0.582730, -0.513805,
		-0.272144, 0.784883, 0.556683,
		0.727673, -0.210673, 0.652771,
		34.011539, 38.102684, 50.818695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784199, 38.872070, 50.580559>,  <33.502171, 38.250156, 50.361755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784199, 38.872070, 50.580559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.056099, 38.581085, 50.617970>,  <34.219238, 38.406494, 50.640415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.056099, 38.581085, 50.617970>,  <33.784199, 38.872070, 50.580559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056099, 38.581085, 50.617970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641714, 0.528123, -0.556138,
		0.355173, 0.438052, 0.825810,
		0.679747, -0.727459, 0.093529,
		34.260021, 38.362846, 50.646027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416397, 39.215027, 50.850891>,  <33.784199, 38.872070, 50.580559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416397, 39.215027, 50.850891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.524544, 38.869476, 50.680893>,  <34.589432, 38.662148, 50.578892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.524544, 38.869476, 50.680893>,  <34.416397, 39.215027, 50.850891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524544, 38.869476, 50.680893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732341, 0.471091, -0.491681,
		0.624963, -0.178310, 0.760017,
		0.270366, -0.863874, -0.424998,
		34.605652, 38.610313, 50.553394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113571, 39.235477, 50.776558>,  <34.416397, 39.215027, 50.850891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113571, 39.235477, 50.776558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.043175, 38.928673, 50.529747>,  <35.000938, 38.744591, 50.381660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.043175, 38.928673, 50.529747>,  <35.113571, 39.235477, 50.776558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043175, 38.928673, 50.529747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672660, 0.363942, -0.644263,
		0.718718, -0.528433, 0.451888,
		-0.175988, -0.767010, -0.617028,
		34.990379, 38.698570, 50.344639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724068, 39.079861, 50.520473>,  <35.113571, 39.235477, 50.776558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724068, 39.079861, 50.520473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.470459, 38.899338, 50.269287>,  <35.318295, 38.791023, 50.118576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.470459, 38.899338, 50.269287>,  <35.724068, 39.079861, 50.520473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470459, 38.899338, 50.269287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568158, 0.279039, -0.774167,
		0.524613, -0.847621, 0.079497,
		-0.634017, -0.451305, -0.627970,
		35.280254, 38.763947, 50.080894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139172, 38.864502, 49.932697>,  <35.724068, 39.079861, 50.520473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139172, 38.864502, 49.932697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.767056, 38.877350, 49.786537>,  <35.543785, 38.885059, 49.698841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.767056, 38.877350, 49.786537>,  <36.139172, 38.864502, 49.932697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767056, 38.877350, 49.786537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328746, 0.514907, -0.791705,
		0.162720, -0.856644, -0.489575,
		-0.930295, 0.032119, -0.365404,
		35.487968, 38.886986, 49.676914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193062, 38.831032, 49.185932>,  <36.139172, 38.864502, 49.932697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193062, 38.831032, 49.185932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.819298, 38.960510, 49.245392>,  <35.595039, 39.038197, 49.281067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.819298, 38.960510, 49.245392>,  <36.193062, 38.831032, 49.185932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819298, 38.960510, 49.245392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054436, 0.542186, -0.838493,
		-0.352015, -0.775405, -0.524245,
		-0.934410, 0.323700, 0.148648,
		35.538975, 39.057621, 49.289986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835133, 38.599411, 48.509266>,  <36.193062, 38.831032, 49.185932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835133, 38.599411, 48.509266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.661331, 38.901306, 48.705872>,  <35.557049, 39.082443, 48.823833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.661331, 38.901306, 48.705872>,  <35.835133, 38.599411, 48.509266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661331, 38.901306, 48.705872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115926, 0.588043, -0.800479,
		-0.893178, -0.290833, -0.343000,
		-0.434504, 0.754733, 0.491512,
		35.530979, 39.127728, 48.853325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532810, 38.934334, 47.985828>,  <35.835133, 38.599411, 48.509266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532810, 38.934334, 47.985828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.514725, 39.230476, 48.254105>,  <35.503872, 39.408161, 48.415070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.514725, 39.230476, 48.254105>,  <35.532810, 38.934334, 47.985828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514725, 39.230476, 48.254105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281781, 0.653570, -0.702456,
		-0.958413, 0.157228, -0.238168,
		-0.045214, 0.740355, 0.670694,
		35.501160, 39.452583, 48.455315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039333, 39.406029, 47.742100>,  <35.532810, 38.934334, 47.985828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039333, 39.406029, 47.742100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.256737, 39.633049, 47.989483>,  <35.387180, 39.769260, 48.137913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.256737, 39.633049, 47.989483>,  <35.039333, 39.406029, 47.742100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256737, 39.633049, 47.989483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087774, 0.694311, -0.714302,
		-0.834802, 0.442513, 0.327547,
		0.543508, 0.567551, 0.618454,
		35.419788, 39.803314, 48.175018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795067, 40.098068, 47.804920>,  <35.039333, 39.406029, 47.742100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795067, 40.098068, 47.804920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.178703, 40.155365, 47.902599>,  <35.408886, 40.189743, 47.961208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.178703, 40.155365, 47.902599>,  <34.795067, 40.098068, 47.804920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178703, 40.155365, 47.902599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102469, 0.628446, -0.771074,
		-0.263913, 0.764551, 0.588058,
		0.959088, 0.143238, 0.244198,
		35.466431, 40.198338, 47.975861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961033, 40.888897, 47.723370>,  <34.795067, 40.098068, 47.804920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961033, 40.888897, 47.723370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.319252, 40.710983, 47.728378>,  <35.534184, 40.604237, 47.731384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.319252, 40.710983, 47.728378>,  <34.961033, 40.888897, 47.723370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319252, 40.710983, 47.728378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361045, 0.709924, -0.604694,
		0.260072, 0.546053, 0.796360,
		0.895550, -0.444786, 0.012519,
		35.587917, 40.577549, 47.732136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012909, 41.648773, 47.803406>,  <34.961033, 40.888897, 47.723370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012909, 41.648773, 47.803406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.726868, 41.922974, 47.748688>,  <34.555241, 42.087494, 47.715858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.726868, 41.922974, 47.748688>,  <35.012909, 41.648773, 47.803406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726868, 41.922974, 47.748688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638002, -0.560111, 0.528421,
		0.285614, 0.465152, 0.837889,
		-0.715107, 0.685499, -0.136792,
		34.512337, 42.128624, 47.707649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821072, 41.868080, 48.468159>,  <35.012909, 41.648773, 47.803406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821072, 41.868080, 48.468159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.500298, 41.959930, 48.247551>,  <34.307835, 42.015041, 48.115185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.500298, 41.959930, 48.247551>,  <34.821072, 41.868080, 48.468159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500298, 41.959930, 48.247551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597330, -0.292866, 0.746610,
		0.009917, 0.928172, 0.372020,
		-0.801935, 0.229623, -0.551520,
		34.259716, 42.028816, 48.082096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361763, 41.860584, 48.914165>,  <34.821072, 41.868080, 48.468159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361763, 41.860584, 48.914165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.103947, 41.863533, 48.608353>,  <33.949257, 41.865303, 48.424866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.103947, 41.863533, 48.608353>,  <34.361763, 41.860584, 48.914165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103947, 41.863533, 48.608353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666331, -0.495772, 0.556967,
		-0.374929, 0.868421, 0.324457,
		-0.644539, 0.007373, -0.764536,
		33.910583, 41.865746, 48.378990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796825, 42.133099, 49.182129>,  <34.361763, 41.860584, 48.914165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796825, 42.133099, 49.182129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.655342, 41.940300, 48.861488>,  <33.570450, 41.824619, 48.669106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.655342, 41.940300, 48.861488>,  <33.796825, 42.133099, 49.182129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655342, 41.940300, 48.861488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685857, -0.449067, 0.572660,
		-0.635993, 0.752342, -0.171741,
		-0.353713, -0.481997, -0.801602,
		33.549229, 41.795700, 48.621006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151398, 42.243385, 49.146053>,  <33.796825, 42.133099, 49.182129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151398, 42.243385, 49.146053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.181313, 41.911621, 48.924610>,  <33.199261, 41.712563, 48.791744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.181313, 41.911621, 48.924610>,  <33.151398, 42.243385, 49.146053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181313, 41.911621, 48.924610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707802, -0.435219, 0.556417,
		-0.702441, 0.350235, -0.619607,
		0.074788, -0.829409, -0.553613,
		33.203751, 41.662800, 48.758526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501732, 42.136639, 48.924671>,  <33.151398, 42.243385, 49.146053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501732, 42.136639, 48.924671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.686424, 41.781898, 48.917664>,  <32.797241, 41.569054, 48.913460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.686424, 41.781898, 48.917664>,  <32.501732, 42.136639, 48.924671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686424, 41.781898, 48.917664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742865, -0.397412, 0.538716,
		-0.484724, -0.235723, -0.842305,
		0.461730, -0.886847, -0.017525,
		32.824944, 41.515846, 48.912407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996548, 41.643223, 48.784504>,  <32.501732, 42.136639, 48.924671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996548, 41.643223, 48.784504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.288147, 41.417381, 48.939312>,  <32.463108, 41.281876, 49.032196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.288147, 41.417381, 48.939312>,  <31.996548, 41.643223, 48.784504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288147, 41.417381, 48.939312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669820, -0.471863, 0.573312,
		-0.141075, -0.677176, -0.722171,
		0.728999, -0.564605, 0.387018,
		32.506847, 41.248001, 49.055416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736130, 40.924065, 48.664082>,  <31.996548, 41.643223, 48.784504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736130, 40.924065, 48.664082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.023415, 40.902924, 48.941608>,  <32.195786, 40.890240, 49.108124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.023415, 40.902924, 48.941608>,  <31.736130, 40.924065, 48.664082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023415, 40.902924, 48.941608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583844, -0.588227, 0.559566,
		0.378549, -0.806967, -0.453326,
		0.718211, -0.052849, 0.693816,
		32.238876, 40.887070, 49.149754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783789, 40.221279, 48.876396>,  <31.736130, 40.924065, 48.664082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783789, 40.221279, 48.876396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.971487, 40.407288, 49.176682>,  <32.084106, 40.518890, 49.356853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.971487, 40.407288, 49.176682>,  <31.783789, 40.221279, 48.876396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971487, 40.407288, 49.176682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391289, -0.652614, 0.648836,
		0.791645, -0.598209, -0.124279,
		0.469246, 0.465018, 0.750710,
		32.112263, 40.546791, 49.401894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213638, 39.710258, 49.339191>,  <31.783789, 40.221279, 48.876396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213638, 39.710258, 49.339191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.146118, 40.036331, 49.560818>,  <32.105606, 40.231976, 49.693794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.146118, 40.036331, 49.560818>,  <32.213638, 39.710258, 49.339191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146118, 40.036331, 49.560818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494343, -0.556339, 0.667915,
		0.852719, -0.161153, 0.496890,
		-0.168802, 0.815179, 0.554066,
		32.095478, 40.280884, 49.727039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353188, 39.466778, 49.997402>,  <32.213638, 39.710258, 49.339191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353188, 39.466778, 49.997402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.141167, 39.802917, 50.042747>,  <32.013954, 40.004601, 50.069954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.141167, 39.802917, 50.042747>,  <32.353188, 39.466778, 49.997402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141167, 39.802917, 50.042747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430414, -0.381816, 0.817900,
		0.730609, 0.384736, 0.564082,
		-0.530051, 0.840354, 0.113363,
		31.982151, 40.055023, 50.076756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541439, 39.767120, 50.675396>,  <32.353188, 39.466778, 49.997402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541439, 39.767120, 50.675396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.176994, 39.894768, 50.571056>,  <31.958328, 39.971355, 50.508453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.176994, 39.894768, 50.571056>,  <32.541439, 39.767120, 50.675396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176994, 39.894768, 50.571056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399428, -0.527496, 0.749804,
		0.101677, 0.787345, 0.608071,
		-0.911109, 0.319118, -0.260853,
		31.903662, 39.990501, 50.492802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228485, 39.963268, 51.233910>,  <32.541439, 39.767120, 50.675396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228485, 39.963268, 51.233910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.905293, 39.954018, 50.998405>,  <31.711378, 39.948467, 50.857101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.905293, 39.954018, 50.998405>,  <32.228485, 39.963268, 51.233910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905293, 39.954018, 50.998405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487238, -0.535645, 0.689698,
		-0.331319, 0.844126, 0.421519,
		-0.807977, -0.023130, -0.588760,
		31.662899, 39.947079, 50.821777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657055, 40.339062, 51.514889>,  <32.228485, 39.963268, 51.233910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657055, 40.339062, 51.514889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.516665, 40.063469, 51.261238>,  <31.432430, 39.898113, 51.109047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.516665, 40.063469, 51.261238>,  <31.657055, 40.339062, 51.514889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516665, 40.063469, 51.261238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526858, -0.414545, 0.742006,
		-0.774104, 0.594522, -0.217501,
		-0.350975, -0.688981, -0.634130,
		31.411371, 39.856773, 51.070999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245970, 40.878277, 51.280663>,  <31.657055, 40.339062, 51.514889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245970, 40.878277, 51.280663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.215681, 41.182266, 51.538876>,  <31.197508, 41.364658, 51.693802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.215681, 41.182266, 51.538876>,  <31.245970, 40.878277, 51.280663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215681, 41.182266, 51.538876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395559, 0.617164, -0.680178,
		-0.915314, 0.203842, -0.347345,
		-0.075720, 0.759972, 0.645530,
		31.192965, 41.410259, 51.732536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112970, 41.517345, 50.880165>,  <31.245970, 40.878277, 51.280663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112970, 41.517345, 50.880165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.240349, 41.642067, 51.238243>,  <31.316776, 41.716900, 51.453091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.240349, 41.642067, 51.238243>,  <31.112970, 41.517345, 50.880165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240349, 41.642067, 51.238243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561243, 0.699031, -0.443128,
		-0.763936, 0.643534, 0.047608,
		0.318447, 0.311802, 0.895193,
		31.335882, 41.735607, 51.506802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058762, 42.245220, 50.825848>,  <31.112970, 41.517345, 50.880165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058762, 42.245220, 50.825848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.306931, 42.189629, 51.134590>,  <31.455832, 42.156273, 51.319836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.306931, 42.189629, 51.134590>,  <31.058762, 42.245220, 50.825848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306931, 42.189629, 51.134590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579318, 0.744608, -0.331587,
		-0.528648, 0.652874, 0.542481,
		0.620420, -0.138976, 0.771858,
		31.493057, 42.147934, 51.366146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254749, 42.930531, 50.838234>,  <31.058762, 42.245220, 50.825848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254749, 42.930531, 50.838234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.502104, 42.693466, 51.044670>,  <31.650517, 42.551228, 51.168533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.502104, 42.693466, 51.044670>,  <31.254749, 42.930531, 50.838234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502104, 42.693466, 51.044670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761055, 0.615364, -0.205239,
		-0.195946, 0.519691, 0.831581,
		0.618385, -0.592663, 0.516091,
		31.687620, 42.515667, 51.199497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645742, 43.312386, 51.339470>,  <31.254749, 42.930531, 50.838234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645742, 43.312386, 51.339470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849134, 42.975822, 51.266273>,  <31.971170, 42.773884, 51.222355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849134, 42.975822, 51.266273>,  <31.645742, 43.312386, 51.339470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849134, 42.975822, 51.266273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803298, 0.540061, -0.251091,
		0.310097, -0.019323, 0.950509,
		0.508480, -0.841404, -0.182993,
		32.001678, 42.723400, 51.211376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302254, 43.472336, 51.533718>,  <31.645742, 43.312386, 51.339470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302254, 43.472336, 51.533718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.367039, 43.146858, 51.310406>,  <32.405910, 42.951572, 51.176418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.367039, 43.146858, 51.310406>,  <32.302254, 43.472336, 51.533718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367039, 43.146858, 51.310406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782671, 0.450487, -0.429522,
		0.600996, -0.367384, 0.709812,
		0.161961, -0.813690, -0.558281,
		32.415627, 42.902752, 51.142921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041653, 43.212044, 51.590115>,  <32.302254, 43.472336, 51.533718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041653, 43.212044, 51.590115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.921856, 43.057281, 51.241264>,  <32.849979, 42.964424, 51.031952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.921856, 43.057281, 51.241264>,  <33.041653, 43.212044, 51.590115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921856, 43.057281, 51.241264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843458, 0.319898, -0.431559,
		0.445966, -0.864852, 0.230533,
		-0.299487, -0.386906, -0.872130,
		32.832008, 42.941208, 50.979626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623398, 42.936054, 51.284054>,  <33.041653, 43.212044, 51.590115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623398, 42.936054, 51.284054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.395409, 42.941139, 50.955429>,  <33.258614, 42.944191, 50.758255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.395409, 42.941139, 50.955429>,  <33.623398, 42.936054, 51.284054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395409, 42.941139, 50.955429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758877, 0.391480, -0.520431,
		0.315011, -0.920099, -0.232780,
		-0.569977, 0.012710, -0.821562,
		33.224415, 42.944950, 50.708961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069157, 42.727962, 50.671371>,  <33.623398, 42.936054, 51.284054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069157, 42.727962, 50.671371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.761997, 42.926926, 50.509918>,  <33.577702, 43.046303, 50.413044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.761997, 42.926926, 50.509918>,  <34.069157, 42.727962, 50.671371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761997, 42.926926, 50.509918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634386, 0.503144, -0.586856,
		-0.088820, -0.706705, -0.701911,
		-0.767897, 0.497407, -0.403635,
		33.531628, 43.076149, 50.388828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214783, 42.812904, 49.913429>,  <34.069157, 42.727962, 50.671371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214783, 42.812904, 49.913429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.928776, 43.083275, 49.984844>,  <33.757172, 43.245499, 50.027691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.928776, 43.083275, 49.984844>,  <34.214783, 42.812904, 49.913429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928776, 43.083275, 49.984844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354053, 0.570307, -0.741213,
		-0.602823, -0.466770, -0.647093,
		-0.715017, 0.675926, 0.178533,
		33.714272, 43.286053, 50.038403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872807, 42.888260, 49.332260>,  <34.214783, 42.812904, 49.913429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872807, 42.888260, 49.332260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.823669, 43.228035, 49.537537>,  <33.794186, 43.431900, 49.660702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.823669, 43.228035, 49.537537>,  <33.872807, 42.888260, 49.332260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823669, 43.228035, 49.537537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216303, 0.527592, -0.821498,
		-0.968567, 0.010087, -0.248548,
		-0.122845, 0.849438, 0.513191,
		33.786816, 43.482868, 49.691494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381615, 43.453312, 48.972191>,  <33.872807, 42.888260, 49.332260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381615, 43.453312, 48.972191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.609207, 43.652451, 49.234001>,  <33.745762, 43.771935, 49.391087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.609207, 43.652451, 49.234001>,  <33.381615, 43.453312, 48.972191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609207, 43.652451, 49.234001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225248, 0.671135, -0.706287,
		-0.790901, 0.549295, 0.269724,
		0.568981, 0.497848, 0.654529,
		33.779903, 43.801804, 49.430359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366188, 44.181026, 48.747520>,  <33.381615, 43.453312, 48.972191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366188, 44.181026, 48.747520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682472, 44.214119, 48.990150>,  <33.872242, 44.233974, 49.135727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682472, 44.214119, 48.990150>,  <33.366188, 44.181026, 48.747520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682472, 44.214119, 48.990150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395903, 0.686641, -0.609741,
		-0.466945, 0.722273, 0.510180,
		0.790711, 0.082733, 0.606574,
		33.919685, 44.238937, 49.172123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501659, 44.896534, 48.676449>,  <33.366188, 44.181026, 48.747520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501659, 44.896534, 48.676449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.823776, 44.740158, 48.854736>,  <34.017048, 44.646332, 48.961708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.823776, 44.740158, 48.854736>,  <33.501659, 44.896534, 48.676449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823776, 44.740158, 48.854736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585847, 0.640120, -0.497021,
		-0.091013, 0.661374, 0.744514,
		0.805295, -0.390936, 0.445723,
		34.065365, 44.622879, 48.988453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.143623, 43.885174, 56.236481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.168472, 43.660385, 55.906555>,  <32.183380, 43.525513, 55.708599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.168472, 43.660385, 55.906555>,  <32.143623, 43.885174, 56.236481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168472, 43.660385, 55.906555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799147, -0.523090, 0.296210,
		-0.597917, 0.640750, -0.481596,
		0.062122, -0.561975, -0.824818,
		32.187107, 43.491791, 55.659111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434832, 43.836643, 55.922653>,  <32.143623, 43.885174, 56.236481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434832, 43.836643, 55.922653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.658329, 43.524849, 55.809372>,  <31.792427, 43.337772, 55.741405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.658329, 43.524849, 55.809372>,  <31.434832, 43.836643, 55.922653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658329, 43.524849, 55.809372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732408, -0.623981, 0.272445,
		-0.389080, 0.055191, -0.919549,
		0.558744, -0.779488, -0.283201,
		31.825953, 43.291004, 55.724411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017347, 43.506161, 55.612099>,  <31.434832, 43.836643, 55.922653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017347, 43.506161, 55.612099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.305328, 43.244858, 55.705845>,  <31.478117, 43.088078, 55.762093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.305328, 43.244858, 55.705845>,  <31.017347, 43.506161, 55.612099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305328, 43.244858, 55.705845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694006, -0.675192, 0.249943,
		-0.005037, -0.342596, -0.939469,
		0.719951, -0.653257, 0.234363,
		31.521315, 43.048882, 55.776154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764040, 42.989639, 55.306374>,  <31.017347, 43.506161, 55.612099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764040, 42.989639, 55.306374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.041527, 42.826714, 55.543980>,  <31.208019, 42.728958, 55.686543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.041527, 42.826714, 55.543980>,  <30.764040, 42.989639, 55.306374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041527, 42.826714, 55.543980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661567, -0.686410, 0.301945,
		0.284752, -0.602445, -0.745638,
		0.693719, -0.407310, 0.594014,
		31.249643, 42.704521, 55.722183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889530, 42.252186, 55.102692>,  <30.764040, 42.989639, 55.306374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889530, 42.252186, 55.102692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.005926, 42.286934, 55.483803>,  <31.075764, 42.307781, 55.712467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.005926, 42.286934, 55.483803>,  <30.889530, 42.252186, 55.102692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005926, 42.286934, 55.483803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572585, -0.782014, 0.246172,
		0.766468, -0.617177, -0.177817,
		0.290987, 0.086868, 0.952775,
		31.093222, 42.312996, 55.769634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168785, 41.601654, 55.344959>,  <30.889530, 42.252186, 55.102692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168785, 41.601654, 55.344959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.064526, 41.808693, 55.670940>,  <31.001970, 41.932915, 55.866531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.064526, 41.808693, 55.670940>,  <31.168785, 41.601654, 55.344959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064526, 41.808693, 55.670940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423999, -0.819743, 0.385029,
		0.867345, -0.245183, 0.433127,
		-0.260650, 0.517598, 0.814956,
		30.986330, 41.963974, 55.915428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235174, 41.140335, 55.756462>,  <31.168785, 41.601654, 55.344959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235174, 41.140335, 55.756462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.995840, 41.415199, 55.921295>,  <30.852240, 41.580116, 56.020195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.995840, 41.415199, 55.921295>,  <31.235174, 41.140335, 55.756462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995840, 41.415199, 55.921295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592589, -0.725665, 0.349641,
		0.539290, -0.034992, 0.841392,
		-0.598334, 0.687158, 0.412080,
		30.816339, 41.621346, 56.044918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057846, 40.739956, 56.236195>,  <31.235174, 41.140335, 55.756462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057846, 40.739956, 56.236195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.779850, 41.025803, 56.267967>,  <30.613052, 41.197311, 56.287029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.779850, 41.025803, 56.267967>,  <31.057846, 40.739956, 56.236195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779850, 41.025803, 56.267967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670704, -0.684135, 0.286557,
		0.259121, 0.145879, 0.954765,
		-0.694991, 0.714618, 0.079433,
		30.571352, 41.240189, 56.291798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845150, 40.691986, 56.904133>,  <31.057846, 40.739956, 56.236195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845150, 40.691986, 56.904133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.546341, 40.865318, 56.702465>,  <30.367056, 40.969318, 56.581467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.546341, 40.865318, 56.702465>,  <30.845150, 40.691986, 56.904133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546341, 40.865318, 56.702465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627355, -0.710424, 0.318942,
		-0.219963, 0.554547, 0.802554,
		-0.747022, 0.433331, -0.504165,
		30.322235, 40.995319, 56.551216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240585, 40.621094, 57.329540>,  <30.845150, 40.691986, 56.904133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240585, 40.621094, 57.329540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.071806, 40.709518, 56.977837>,  <29.970539, 40.762573, 56.766815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.071806, 40.709518, 56.977837>,  <30.240585, 40.621094, 57.329540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071806, 40.709518, 56.977837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719282, -0.671996, 0.176226,
		-0.551900, 0.706791, 0.442553,
		-0.421948, 0.221061, -0.879256,
		29.945221, 40.775837, 56.714058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503469, 40.663918, 57.470581>,  <30.240585, 40.621094, 57.329540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503469, 40.663918, 57.470581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.525461, 40.626900, 57.072906>,  <29.538656, 40.604687, 56.834301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.525461, 40.626900, 57.072906>,  <29.503469, 40.663918, 57.470581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525461, 40.626900, 57.072906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712472, -0.701224, 0.025876,
		-0.699544, 0.706909, -0.104488,
		0.054977, -0.092546, -0.994190,
		29.541954, 40.599136, 56.774651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727325, 40.816349, 57.103920>,  <29.503469, 40.663918, 57.470581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727325, 40.816349, 57.103920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.961954, 40.568794, 56.894958>,  <29.102732, 40.420261, 56.769581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.961954, 40.568794, 56.894958>,  <28.727325, 40.816349, 57.103920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961954, 40.568794, 56.894958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653159, -0.742876, 0.146694,
		-0.478869, 0.255166, -0.839985,
		0.586573, -0.618891, -0.522404,
		29.137926, 40.383125, 56.738235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458086, 40.600960, 56.397190>,  <28.727325, 40.816349, 57.103920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458086, 40.600960, 56.397190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.668549, 40.320328, 56.589417>,  <28.794827, 40.151951, 56.704754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.668549, 40.320328, 56.589417>,  <28.458086, 40.600960, 56.397190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668549, 40.320328, 56.589417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806518, -0.590856, 0.020438,
		0.269610, -0.398342, -0.876718,
		0.526155, -0.701578, 0.480571,
		28.826395, 40.109856, 56.733589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046822, 39.952541, 56.270844>,  <28.458086, 40.600960, 56.397190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046822, 39.952541, 56.270844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.292976, 39.881004, 56.577911>,  <28.440670, 39.838081, 56.762150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.292976, 39.881004, 56.577911>,  <28.046822, 39.952541, 56.270844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292976, 39.881004, 56.577911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640753, -0.680710, 0.355063,
		0.459058, -0.710386, -0.533495,
		0.615387, -0.178843, 0.767667,
		28.477592, 39.827351, 56.808212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374039, 40.069473, 55.928551>,  <28.046822, 39.952541, 56.270844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374039, 40.069473, 55.928551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.211967, 39.956169, 55.580853>,  <27.114725, 39.888187, 55.372234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.211967, 39.956169, 55.580853>,  <27.374039, 40.069473, 55.928551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211967, 39.956169, 55.580853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875976, 0.151899, -0.457813,
		0.261718, -0.946938, 0.186582,
		-0.405179, -0.283260, -0.869249,
		27.090414, 39.871193, 55.320076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827461, 39.570839, 55.715569>,  <27.374039, 40.069473, 55.928551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827461, 39.570839, 55.715569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.639166, 39.661873, 55.374603>,  <27.526188, 39.716492, 55.170025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.639166, 39.661873, 55.374603>,  <27.827461, 39.570839, 55.715569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639166, 39.661873, 55.374603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881583, 0.159527, -0.444254,
		0.034877, -0.960602, -0.275732,
		-0.470738, 0.227587, -0.852414,
		27.497944, 39.730148, 55.118877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314487, 39.275230, 55.144249>,  <27.827461, 39.570839, 55.715569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314487, 39.275230, 55.144249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.055563, 39.527451, 54.972954>,  <27.900208, 39.678783, 54.870174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.055563, 39.527451, 54.972954>,  <28.314487, 39.275230, 55.144249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055563, 39.527451, 54.972954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681390, 0.226903, -0.695861,
		-0.341608, -0.742238, -0.576530,
		-0.647311, 0.630553, -0.428242,
		27.861370, 39.716618, 54.844482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399612, 39.192101, 54.363831>,  <28.314487, 39.275230, 55.144249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399612, 39.192101, 54.363831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.251770, 39.555801, 54.440418>,  <28.163065, 39.774021, 54.486370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.251770, 39.555801, 54.440418>,  <28.399612, 39.192101, 54.363831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251770, 39.555801, 54.440418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600108, 0.390903, -0.697901,
		-0.709410, -0.143047, -0.690126,
		-0.369605, 0.909248, 0.191467,
		28.140888, 39.828575, 54.497860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312027, 39.393883, 53.747082>,  <28.399612, 39.192101, 54.363831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312027, 39.393883, 53.747082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.312294, 39.724564, 53.972137>,  <28.312454, 39.922970, 54.107170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.312294, 39.724564, 53.972137>,  <28.312027, 39.393883, 53.747082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312294, 39.724564, 53.972137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585033, 0.455985, -0.670681,
		-0.811009, 0.329614, -0.483341,
		0.000670, 0.826699, 0.562643,
		28.312494, 39.972572, 54.140930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214590, 40.022484, 53.289894>,  <28.312027, 39.393883, 53.747082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214590, 40.022484, 53.289894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.385048, 40.131187, 53.635044>,  <28.487322, 40.196411, 53.842133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.385048, 40.131187, 53.635044>,  <28.214590, 40.022484, 53.289894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385048, 40.131187, 53.635044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737226, 0.448476, -0.505338,
		-0.524308, 0.851478, -0.009234,
		0.426143, 0.271761, 0.862872,
		28.512892, 40.212715, 53.893906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363678, 40.724495, 53.149029>,  <28.214590, 40.022484, 53.289894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363678, 40.724495, 53.149029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.583523, 40.636612, 53.471436>,  <28.715429, 40.583881, 53.664879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.583523, 40.636612, 53.471436>,  <28.363678, 40.724495, 53.149029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583523, 40.636612, 53.471436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786677, 0.460842, -0.410810,
		-0.281188, 0.859857, 0.426121,
		0.549612, -0.219705, 0.806013,
		28.748407, 40.570702, 53.713238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645273, 41.349449, 53.395008>,  <28.363678, 40.724495, 53.149029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645273, 41.349449, 53.395008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.889400, 41.060501, 53.525051>,  <29.035877, 40.887131, 53.603077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.889400, 41.060501, 53.525051>,  <28.645273, 41.349449, 53.395008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889400, 41.060501, 53.525051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759368, 0.416654, -0.499760,
		0.225553, 0.551889, 0.802835,
		0.610316, -0.722369, 0.325110,
		29.072495, 40.843792, 53.622585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204500, 41.794487, 53.564129>,  <28.645273, 41.349449, 53.395008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204500, 41.794487, 53.564129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.332294, 41.415543, 53.555809>,  <29.408970, 41.188175, 53.550816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.332294, 41.415543, 53.555809>,  <29.204500, 41.794487, 53.564129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332294, 41.415543, 53.555809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856409, 0.298066, -0.421569,
		0.405578, 0.116873, 0.906558,
		0.319484, -0.947363, -0.020798,
		29.428141, 41.131332, 53.549568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940935, 41.865250, 53.720558>,  <29.204500, 41.794487, 53.564129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940935, 41.865250, 53.720558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.914688, 41.500061, 53.559471>,  <29.898939, 41.280949, 53.462818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.914688, 41.500061, 53.559471>,  <29.940935, 41.865250, 53.720558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914688, 41.500061, 53.559471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768337, 0.211278, -0.604169,
		0.636673, -0.349066, 0.687605,
		-0.065619, -0.912970, -0.402716,
		29.895002, 41.226170, 53.438656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576647, 41.584759, 53.712906>,  <29.940935, 41.865250, 53.720558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576647, 41.584759, 53.712906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.413904, 41.340233, 53.441387>,  <30.316257, 41.193516, 53.278477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.413904, 41.340233, 53.441387>,  <30.576647, 41.584759, 53.712906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413904, 41.340233, 53.441387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688438, 0.283229, -0.667709,
		0.600434, -0.738971, 0.305618,
		-0.406858, -0.611314, -0.678795,
		30.291847, 41.156837, 53.237747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116514, 41.220150, 53.464523>,  <30.576647, 41.584759, 53.712906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116514, 41.220150, 53.464523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.819515, 41.198586, 53.197453>,  <30.641315, 41.185646, 53.037212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.819515, 41.198586, 53.197453>,  <31.116514, 41.220150, 53.464523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819515, 41.198586, 53.197453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622864, 0.311156, -0.717790,
		0.246448, -0.948828, -0.197453,
		-0.742498, -0.053912, -0.667675,
		30.596766, 41.182411, 52.997150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339901, 40.800282, 52.824673>,  <31.116514, 41.220150, 53.464523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339901, 40.800282, 52.824673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.036951, 41.022148, 52.686848>,  <30.855181, 41.155270, 52.604153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.036951, 41.022148, 52.686848>,  <31.339901, 40.800282, 52.824673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036951, 41.022148, 52.686848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564406, 0.290731, -0.772607,
		-0.328370, -0.779625, -0.533252,
		-0.757377, 0.554671, -0.344558,
		30.809738, 41.188549, 52.583481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346272, 40.621071, 52.130974>,  <31.339901, 40.800282, 52.824673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346272, 40.621071, 52.130974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.133879, 40.958763, 52.160172>,  <31.006443, 41.161381, 52.177689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.133879, 40.958763, 52.160172>,  <31.346272, 40.621071, 52.130974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133879, 40.958763, 52.160172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448329, 0.352979, -0.821223,
		-0.719067, -0.403333, -0.565920,
		-0.530984, 0.844232, 0.072990,
		30.974583, 41.212032, 52.182068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897665, 40.323364, 51.705502>,  <31.346272, 40.621071, 52.130974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897665, 40.323364, 51.705502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.974739, 39.994385, 51.491417>,  <31.020983, 39.796997, 51.362965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.974739, 39.994385, 51.491417>,  <30.897665, 40.323364, 51.705502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974739, 39.994385, 51.491417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551907, -0.541818, 0.633903,
		-0.811340, 0.173246, -0.558313,
		0.192683, -0.822447, -0.535214,
		31.032545, 39.747650, 51.330853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280643, 39.969246, 51.672382>,  <30.897665, 40.323364, 51.705502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280643, 39.969246, 51.672382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.541115, 39.676971, 51.590343>,  <30.697397, 39.501606, 51.541119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.541115, 39.676971, 51.590343>,  <30.280643, 39.969246, 51.672382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541115, 39.676971, 51.590343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474110, -0.602690, 0.641860,
		-0.592609, -0.320727, -0.738884,
		0.651180, -0.730684, -0.205099,
		30.736469, 39.457767, 51.528812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838354, 39.451805, 51.596027>,  <30.280643, 39.969246, 51.672382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838354, 39.451805, 51.596027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.203045, 39.311989, 51.682350>,  <30.421860, 39.228100, 51.734142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.203045, 39.311989, 51.682350>,  <29.838354, 39.451805, 51.596027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203045, 39.311989, 51.682350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403898, -0.666917, 0.626169,
		-0.074947, -0.658060, -0.749226,
		0.911729, -0.349541, 0.215806,
		30.476564, 39.207127, 51.747093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844831, 38.736565, 51.497166>,  <29.838354, 39.451805, 51.596027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844831, 38.736565, 51.497166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.164043, 38.754181, 51.737568>,  <30.355570, 38.764751, 51.881809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.164043, 38.754181, 51.737568>,  <29.844831, 38.736565, 51.497166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164043, 38.754181, 51.737568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417792, -0.678289, 0.604462,
		0.434279, -0.733474, -0.522893,
		0.798030, 0.044045, 0.601006,
		30.403452, 38.767395, 51.917870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062424, 38.028934, 51.635574>,  <29.844831, 38.736565, 51.497166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062424, 38.028934, 51.635574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.189520, 38.256599, 51.938915>,  <30.265778, 38.393196, 52.120918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.189520, 38.256599, 51.938915>,  <30.062424, 38.028934, 51.635574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189520, 38.256599, 51.938915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316528, -0.690247, 0.650668,
		0.893784, -0.446784, -0.039164,
		0.317741, 0.569161, 0.758352,
		30.284842, 38.427349, 52.166420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313669, 37.531712, 52.081890>,  <30.062424, 38.028934, 51.635574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313669, 37.531712, 52.081890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.296379, 37.853615, 52.318699>,  <30.286005, 38.046757, 52.460785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.296379, 37.853615, 52.318699>,  <30.313669, 37.531712, 52.081890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296379, 37.853615, 52.318699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241999, -0.583363, 0.775322,
		0.969313, -0.109754, 0.219968,
		-0.043227, 0.804762, 0.592022,
		30.283411, 38.095043, 52.496307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597872, 37.342472, 52.715240>,  <30.313669, 37.531712, 52.081890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597872, 37.342472, 52.715240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.348186, 37.649124, 52.775429>,  <30.198376, 37.833115, 52.811543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.348186, 37.649124, 52.775429>,  <30.597872, 37.342472, 52.715240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348186, 37.649124, 52.775429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519745, -0.551286, 0.652647,
		0.583288, 0.329185, 0.742571,
		-0.624211, 0.766629, 0.150466,
		30.160923, 37.879112, 52.820568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175976, 37.314537, 53.286461>,  <30.597872, 37.342472, 52.715240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175976, 37.314537, 53.286461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.423126, 37.000809, 53.264309>,  <31.571417, 36.812572, 53.251019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.423126, 37.000809, 53.264309>,  <31.175976, 37.314537, 53.286461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423126, 37.000809, 53.264309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610759, 0.523115, -0.594411,
		0.495180, 0.333449, 0.802253,
		0.617876, -0.784323, -0.055379,
		31.608488, 36.765511, 53.247696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876921, 37.582157, 53.226608>,  <31.175976, 37.314537, 53.286461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876921, 37.582157, 53.226608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.963463, 37.208412, 53.113358>,  <32.015388, 36.984165, 53.045406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.963463, 37.208412, 53.113358>,  <31.876921, 37.582157, 53.226608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963463, 37.208412, 53.113358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694272, 0.351127, -0.628249,
		0.686424, -0.060640, 0.724669,
		0.216354, -0.934362, -0.283122,
		32.028370, 36.928104, 53.028419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587479, 37.520947, 53.245907>,  <31.876921, 37.582157, 53.226608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587479, 37.520947, 53.245907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501129, 37.211601, 53.007477>,  <32.449318, 37.025993, 52.864418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501129, 37.211601, 53.007477>,  <32.587479, 37.520947, 53.245907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501129, 37.211601, 53.007477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714902, 0.290617, -0.635969,
		0.665066, -0.563423, 0.490145,
		-0.215875, -0.773367, -0.596071,
		32.436367, 36.979591, 52.828655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230412, 37.291031, 53.127110>,  <32.587479, 37.520947, 53.245907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230412, 37.291031, 53.127110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.005928, 37.128815, 52.838505>,  <32.871239, 37.031487, 52.665340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.005928, 37.128815, 52.838505>,  <33.230412, 37.291031, 53.127110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005928, 37.128815, 52.838505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727653, 0.173670, -0.663597,
		0.394418, -0.897429, 0.197624,
		-0.561210, -0.405536, -0.721515,
		32.837566, 37.007153, 52.622051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626530, 36.821583, 52.788845>,  <33.230412, 37.291031, 53.127110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626530, 36.821583, 52.788845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.346634, 36.894043, 52.512424>,  <33.178696, 36.937519, 52.346573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.346634, 36.894043, 52.512424>,  <33.626530, 36.821583, 52.788845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346634, 36.894043, 52.512424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713200, 0.233184, -0.661038,
		0.041392, -0.955410, -0.292366,
		-0.699738, 0.181154, -0.691050,
		33.136711, 36.948387, 52.305111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886662, 36.417446, 52.122940>,  <33.626530, 36.821583, 52.788845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886662, 36.417446, 52.122940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.632210, 36.709023, 52.021759>,  <33.479538, 36.883968, 51.961048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.632210, 36.709023, 52.021759>,  <33.886662, 36.417446, 52.122940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632210, 36.709023, 52.021759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665574, 0.352558, -0.657810,
		-0.390324, -0.586811, -0.709436,
		-0.636127, 0.728942, -0.252954,
		33.441372, 36.927704, 51.945873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676426, 36.373497, 51.356537>,  <33.886662, 36.417446, 52.122940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676426, 36.373497, 51.356537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624958, 36.751427, 51.477039>,  <33.594078, 36.978184, 51.549339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624958, 36.751427, 51.477039>,  <33.676426, 36.373497, 51.356537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624958, 36.751427, 51.477039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501834, 0.324049, -0.801970,
		-0.855341, 0.047993, -0.515838,
		-0.128668, 0.944822, 0.301257,
		33.586357, 37.034874, 51.567417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.297743, 37.480076, 56.052013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.094889, 37.824814, 56.054379>,  <29.973175, 38.031658, 56.055798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.094889, 37.824814, 56.054379>,  <30.297743, 37.480076, 56.052013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094889, 37.824814, 56.054379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775970, 0.459567, -0.432052,
		-0.375077, -0.214524, -0.901830,
		-0.507137, 0.861845, 0.005909,
		29.942747, 38.083366, 56.056152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230202, 37.820026, 55.311577>,  <30.297743, 37.480076, 56.052013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230202, 37.820026, 55.311577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.211079, 38.099335, 55.597271>,  <30.199604, 38.266918, 55.768688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.211079, 38.099335, 55.597271>,  <30.230202, 37.820026, 55.311577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211079, 38.099335, 55.597271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820407, 0.435340, -0.370690,
		-0.569777, 0.568244, -0.593677,
		-0.047809, 0.698268, 0.714239,
		30.196735, 38.308815, 55.811543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515909, 38.399738, 55.020626>,  <30.230202, 37.820026, 55.311577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515909, 38.399738, 55.020626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.530075, 38.473839, 55.413448>,  <30.538574, 38.518299, 55.649139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.530075, 38.473839, 55.413448>,  <30.515909, 38.399738, 55.020626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530075, 38.473839, 55.413448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765013, 0.627267, -0.145916,
		-0.643041, 0.756450, -0.119508,
		0.035415, 0.185255, 0.982052,
		30.540699, 38.529415, 55.708065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417564, 39.058994, 55.040310>,  <30.515909, 38.399738, 55.020626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417564, 39.058994, 55.040310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.583715, 38.998817, 55.399158>,  <30.683405, 38.962711, 55.614468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.583715, 38.998817, 55.399158>,  <30.417564, 39.058994, 55.040310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583715, 38.998817, 55.399158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773173, 0.577970, -0.261064,
		-0.479235, 0.802071, 0.356392,
		0.415376, -0.150442, 0.897123,
		30.708328, 38.953686, 55.668297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648926, 39.729576, 55.347980>,  <30.417564, 39.058994, 55.040310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648926, 39.729576, 55.347980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872116, 39.459007, 55.540279>,  <31.006031, 39.296665, 55.655659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872116, 39.459007, 55.540279>,  <30.648926, 39.729576, 55.347980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872116, 39.459007, 55.540279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753115, 0.656062, 0.048997,
		-0.348542, 0.334718, 0.875490,
		0.557976, -0.676422, 0.480747,
		31.039509, 39.256081, 55.684502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079979, 40.091400, 55.785194>,  <30.648926, 39.729576, 55.347980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079979, 40.091400, 55.785194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264818, 39.740479, 55.837036>,  <31.375721, 39.529926, 55.868141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264818, 39.740479, 55.837036>,  <31.079979, 40.091400, 55.785194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264818, 39.740479, 55.837036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883590, 0.467947, 0.017185,
		-0.075726, 0.106579, 0.991416,
		0.462098, -0.877307, 0.129608,
		31.403448, 39.477287, 55.875919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517960, 40.181057, 56.265636>,  <31.079979, 40.091400, 55.785194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517960, 40.181057, 56.265636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.651817, 39.864624, 56.060814>,  <31.732132, 39.674767, 55.937920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.651817, 39.864624, 56.060814>,  <31.517960, 40.181057, 56.265636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651817, 39.864624, 56.060814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935461, 0.344434, 0.079232,
		0.113693, -0.505527, 0.855287,
		0.334644, -0.791080, -0.512061,
		31.752211, 39.627300, 55.907196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095112, 40.057137, 56.593819>,  <31.517960, 40.181057, 56.265636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095112, 40.057137, 56.593819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.140884, 39.859131, 56.249290>,  <32.168350, 39.740326, 56.042576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.140884, 39.859131, 56.249290>,  <32.095112, 40.057137, 56.593819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140884, 39.859131, 56.249290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965115, 0.260925, -0.021732,
		0.235496, -0.828782, 0.507605,
		0.114436, -0.495015, -0.861316,
		32.175217, 39.710625, 55.990894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661201, 39.721596, 56.691982>,  <32.095112, 40.057137, 56.593819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661201, 39.721596, 56.691982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.629261, 39.755714, 56.294724>,  <32.610096, 39.776184, 56.056366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.629261, 39.755714, 56.294724>,  <32.661201, 39.721596, 56.691982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629261, 39.755714, 56.294724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946649, 0.318559, -0.048753,
		0.312219, -0.944058, -0.106181,
		-0.079851, 0.085294, -0.993151,
		32.605305, 39.781303, 55.996777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212414, 39.468369, 56.392540>,  <32.661201, 39.721596, 56.691982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212414, 39.468369, 56.392540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.076000, 39.730759, 56.123203>,  <32.994152, 39.888191, 55.961601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.076000, 39.730759, 56.123203>,  <33.212414, 39.468369, 56.392540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076000, 39.730759, 56.123203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918221, 0.385917, -0.089098,
		0.201409, -0.648663, -0.733942,
		-0.341036, 0.655976, -0.673342,
		32.973690, 39.927551, 55.921200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867073, 39.627972, 56.011635>,  <33.212414, 39.468369, 56.392540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867073, 39.627972, 56.011635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.609062, 39.908569, 55.890419>,  <33.454254, 40.076927, 55.817688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.609062, 39.908569, 55.890419>,  <33.867073, 39.627972, 56.011635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609062, 39.908569, 55.890419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763197, 0.571532, -0.301467,
		-0.038279, -0.425738, -0.904037,
		-0.645031, 0.701497, -0.303044,
		33.415554, 40.119019, 55.799507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173195, 39.842651, 55.374775>,  <33.867073, 39.627972, 56.011635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173195, 39.842651, 55.374775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.958435, 40.157860, 55.495281>,  <33.829578, 40.346985, 55.567585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.958435, 40.157860, 55.495281>,  <34.173195, 39.842651, 55.374775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958435, 40.157860, 55.495281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675869, 0.615487, -0.405433,
		-0.504916, -0.014060, -0.863054,
		-0.536899, 0.788021, 0.301266,
		33.797367, 40.394268, 55.585663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035236, 39.547054, 54.623390>,  <34.173195, 39.842651, 55.374775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035236, 39.547054, 54.623390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.308689, 39.259537, 54.572819>,  <34.472759, 39.087025, 54.542477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.308689, 39.259537, 54.572819>,  <34.035236, 39.547054, 54.623390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308689, 39.259537, 54.572819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556147, -0.625243, 0.547514,
		-0.472599, -0.303985, -0.827190,
		0.683631, -0.718794, -0.126428,
		34.513779, 39.043900, 54.534889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719204, 39.002392, 54.364655>,  <34.035236, 39.547054, 54.623390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719204, 39.002392, 54.364655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.049343, 38.850128, 54.531464>,  <34.247425, 38.758770, 54.631550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.049343, 38.850128, 54.531464>,  <33.719204, 39.002392, 54.364655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049343, 38.850128, 54.531464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539192, -0.750546, 0.382038,
		0.167567, -0.540166, -0.824707,
		0.825344, -0.380659, 0.417020,
		34.296947, 38.735931, 54.656570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780518, 38.200100, 54.255230>,  <33.719204, 39.002392, 54.364655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780518, 38.200100, 54.255230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975960, 38.301659, 54.589127>,  <34.093227, 38.362595, 54.789467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975960, 38.301659, 54.589127>,  <33.780518, 38.200100, 54.255230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975960, 38.301659, 54.589127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498398, -0.704053, 0.505874,
		0.716143, -0.663210, -0.217468,
		0.488610, 0.253893, 0.834745,
		34.122543, 38.377827, 54.839550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819317, 37.579948, 54.631981>,  <33.780518, 38.200100, 54.255230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819317, 37.579948, 54.631981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.934227, 37.852890, 54.900864>,  <34.003174, 38.016655, 55.062195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.934227, 37.852890, 54.900864>,  <33.819317, 37.579948, 54.631981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934227, 37.852890, 54.900864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384542, -0.560595, 0.733390,
		0.877268, -0.469179, 0.101347,
		0.287277, 0.682352, 0.672211,
		34.020409, 38.057594, 55.102528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326618, 37.255318, 55.080505>,  <33.819317, 37.579948, 54.631981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326618, 37.255318, 55.080505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.119156, 37.554512, 55.246162>,  <33.994678, 37.734028, 55.345554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.119156, 37.554512, 55.246162>,  <34.326618, 37.255318, 55.080505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119156, 37.554512, 55.246162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382295, -0.636152, 0.670196,
		0.764753, 0.189277, 0.615895,
		-0.518656, 0.747988, 0.414139,
		33.963558, 37.778908, 55.370403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202583, 37.040222, 55.785770>,  <34.326618, 37.255318, 55.080505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202583, 37.040222, 55.785770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.958702, 37.356056, 55.757996>,  <33.812374, 37.545555, 55.741333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.958702, 37.356056, 55.757996>,  <34.202583, 37.040222, 55.785770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958702, 37.356056, 55.757996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685028, -0.480838, 0.547295,
		0.398748, 0.381251, 0.834055,
		-0.609702, 0.789584, -0.069434,
		33.775791, 37.592930, 55.737164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932934, 37.090427, 56.449421>,  <34.202583, 37.040222, 55.785770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932934, 37.090427, 56.449421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.688595, 37.300140, 56.212105>,  <33.541992, 37.425968, 56.069714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.688595, 37.300140, 56.212105>,  <33.932934, 37.090427, 56.449421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688595, 37.300140, 56.212105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791477, -0.384714, 0.474931,
		0.020753, 0.759685, 0.649961,
		-0.610847, 0.524285, -0.593289,
		33.505341, 37.457424, 56.034119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626762, 37.514961, 56.872658>,  <33.932934, 37.090427, 56.449421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626762, 37.514961, 56.872658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.367252, 37.462257, 56.572861>,  <33.211548, 37.430634, 56.392982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.367252, 37.462257, 56.572861>,  <33.626762, 37.514961, 56.872658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367252, 37.462257, 56.572861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569630, -0.568986, 0.593107,
		-0.504597, 0.811723, 0.294088,
		-0.648771, -0.131759, -0.749490,
		33.172623, 37.422729, 56.348015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970142, 37.569328, 57.155537>,  <33.626762, 37.514961, 56.872658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970142, 37.569328, 57.155537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.903683, 37.379524, 56.809765>,  <32.863808, 37.265640, 56.602303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.903683, 37.379524, 56.809765>,  <32.970142, 37.569328, 57.155537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903683, 37.379524, 56.809765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686949, -0.573211, 0.446688,
		-0.707458, 0.668033, -0.230729,
		-0.166147, -0.474512, -0.864427,
		32.853840, 37.237171, 56.550438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277966, 37.434162, 57.192429>,  <32.970142, 37.569328, 57.155537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277966, 37.434162, 57.192429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.383636, 37.188362, 56.895081>,  <32.447041, 37.040882, 56.716671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.383636, 37.188362, 56.895081>,  <32.277966, 37.434162, 57.192429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383636, 37.188362, 56.895081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736552, -0.626134, 0.255825,
		-0.622654, 0.479946, -0.618024,
		0.264184, -0.614497, -0.743370,
		32.462891, 37.004013, 56.672070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670298, 37.367413, 56.847469>,  <32.277966, 37.434162, 57.192429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670298, 37.367413, 56.847469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.894125, 37.046242, 56.765301>,  <32.028419, 36.853539, 56.716000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.894125, 37.046242, 56.765301>,  <31.670298, 37.367413, 56.847469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894125, 37.046242, 56.765301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715848, -0.593144, 0.368431,
		-0.417669, -0.059109, -0.906675,
		0.559566, -0.802924, -0.205425,
		32.061996, 36.805367, 56.703674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209909, 37.010639, 56.563885>,  <31.670298, 37.367413, 56.847469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209909, 37.010639, 56.563885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.504663, 36.766319, 56.679764>,  <31.681517, 36.619728, 56.749290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.504663, 36.766319, 56.679764>,  <31.209909, 37.010639, 56.563885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504663, 36.766319, 56.679764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666764, -0.586011, 0.460453,
		-0.111475, -0.532463, -0.839081,
		0.736884, -0.610798, 0.289702,
		31.725729, 36.583080, 56.766674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962141, 36.391197, 56.437126>,  <31.209909, 37.010639, 56.563885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962141, 36.391197, 56.437126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.270657, 36.297928, 56.674023>,  <31.455765, 36.241966, 56.816162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.270657, 36.297928, 56.674023>,  <30.962141, 36.391197, 56.437126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270657, 36.297928, 56.674023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580891, -0.638197, 0.505243,
		0.260159, -0.733715, -0.627678,
		0.771287, -0.233169, 0.592240,
		31.502043, 36.227978, 56.851696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049170, 35.586533, 56.352074>,  <30.962141, 36.391197, 56.437126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049170, 35.586533, 56.352074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189375, 35.721245, 56.701637>,  <31.273499, 35.802071, 56.911377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189375, 35.721245, 56.701637>,  <31.049170, 35.586533, 56.352074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189375, 35.721245, 56.701637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461090, -0.750136, 0.474017,
		0.815191, -0.569101, -0.107649,
		0.350514, 0.336778, 0.873911,
		31.294529, 35.822277, 56.963810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219778, 35.113636, 55.853073>,  <31.049170, 35.586533, 56.352074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219778, 35.113636, 55.853073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.883104, 35.110054, 55.637115>,  <30.681101, 35.107903, 55.507542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.883104, 35.110054, 55.637115>,  <31.219778, 35.113636, 55.853073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883104, 35.110054, 55.637115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480681, 0.443082, -0.756719,
		0.245996, -0.896436, -0.368630,
		-0.841684, -0.008956, -0.539896,
		30.630600, 35.107368, 55.475147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441374, 34.866093, 55.179943>,  <31.219778, 35.113636, 55.853073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441374, 34.866093, 55.179943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.081104, 35.030273, 55.122929>,  <30.864943, 35.128784, 55.088718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.081104, 35.030273, 55.122929>,  <31.441374, 34.866093, 55.179943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081104, 35.030273, 55.122929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339638, 0.460472, -0.820129,
		-0.270992, -0.787078, -0.554140,
		-0.900672, 0.410456, -0.142538,
		30.810904, 35.153412, 55.080166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357674, 34.674335, 54.558392>,  <31.441374, 34.866093, 55.179943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357674, 34.674335, 54.558392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.131157, 34.996559, 54.628117>,  <30.995247, 35.189896, 54.669952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.131157, 34.996559, 54.628117>,  <31.357674, 34.674335, 54.558392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131157, 34.996559, 54.628117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368749, 0.436769, -0.820522,
		-0.737113, -0.400381, -0.544389,
		-0.566294, 0.805561, 0.174308,
		30.961269, 35.238228, 54.680408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089527, 34.798988, 53.986759>,  <31.357674, 34.674335, 54.558392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089527, 34.798988, 53.986759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.043337, 35.168343, 54.133198>,  <31.015623, 35.389954, 54.221062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.043337, 35.168343, 54.133198>,  <31.089527, 34.798988, 53.986759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043337, 35.168343, 54.133198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197752, 0.382558, -0.902520,
		-0.973427, -0.031820, -0.226776,
		-0.115474, 0.923383, 0.366100,
		31.008696, 35.445358, 54.243027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765049, 35.185730, 53.450459>,  <31.089527, 34.798988, 53.986759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765049, 35.185730, 53.450459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.925417, 35.470505, 53.681076>,  <31.021639, 35.641369, 53.819447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.925417, 35.470505, 53.681076>,  <30.765049, 35.185730, 53.450459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925417, 35.470505, 53.681076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336999, 0.470596, -0.815458,
		-0.851876, 0.521230, -0.051251,
		0.400922, 0.711941, 0.576543,
		31.045694, 35.684086, 53.854038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693953, 35.782303, 53.045452>,  <30.765049, 35.185730, 53.450459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693953, 35.782303, 53.045452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.952534, 35.906082, 53.324402>,  <31.107683, 35.980350, 53.491772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.952534, 35.906082, 53.324402>,  <30.693953, 35.782303, 53.045452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952534, 35.906082, 53.324402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467247, 0.562013, -0.682512,
		-0.603141, 0.767060, 0.218724,
		0.646453, 0.309453, 0.697379,
		31.146469, 35.998917, 53.533615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699205, 36.559299, 53.235039>,  <30.693953, 35.782303, 53.045452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699205, 36.559299, 53.235039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.068350, 36.434364, 53.325169>,  <31.289837, 36.359402, 53.379246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.068350, 36.434364, 53.325169>,  <30.699205, 36.559299, 53.235039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068350, 36.434364, 53.325169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382363, 0.673050, -0.633089,
		0.046086, 0.670408, 0.740560,
		0.922862, -0.312339, 0.225321,
		31.345209, 36.340664, 53.392765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139854, 37.057327, 53.289040>,  <30.699205, 36.559299, 53.235039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139854, 37.057327, 53.289040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.940643, 37.391891, 53.197495>,  <29.821115, 37.592632, 53.142567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.940643, 37.391891, 53.197495>,  <30.139854, 37.057327, 53.289040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940643, 37.391891, 53.197495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810526, -0.355181, 0.465718,
		0.308243, 0.417444, 0.854825,
		-0.498029, 0.836413, -0.228867,
		29.791235, 37.642815, 53.128834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909990, 37.291550, 53.926945>,  <30.139854, 37.057327, 53.289040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909990, 37.291550, 53.926945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666521, 37.446823, 53.650154>,  <29.520439, 37.539986, 53.484081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666521, 37.446823, 53.650154>,  <29.909990, 37.291550, 53.926945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666521, 37.446823, 53.650154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770214, -0.079688, 0.632787,
		0.190495, 0.918131, 0.347488,
		-0.608672, 0.388183, -0.691977,
		29.483919, 37.563278, 53.442562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397289, 37.702225, 54.233257>,  <29.909990, 37.291550, 53.926945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397289, 37.702225, 54.233257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.226208, 37.659523, 53.874222>,  <29.123558, 37.633904, 53.658798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.226208, 37.659523, 53.874222>,  <29.397289, 37.702225, 54.233257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226208, 37.659523, 53.874222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871673, -0.214151, 0.440824,
		-0.239280, 0.970950, -0.001460,
		-0.427706, -0.106752, -0.897592,
		29.097897, 37.627499, 53.604942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836224, 38.161995, 54.215637>,  <29.397289, 37.702225, 54.233257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836224, 38.161995, 54.215637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.748444, 37.898628, 53.927654>,  <28.695776, 37.740608, 53.754864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.748444, 37.898628, 53.927654>,  <28.836224, 38.161995, 54.215637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748444, 37.898628, 53.927654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843209, -0.243198, 0.479431,
		-0.490755, 0.712284, -0.501808,
		-0.219452, -0.658412, -0.719955,
		28.682608, 37.701103, 53.711666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305765, 38.441727, 53.871460>,  <28.836224, 38.161995, 54.215637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305765, 38.441727, 53.871460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.294308, 38.052193, 53.781288>,  <28.287434, 37.818470, 53.727184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.294308, 38.052193, 53.781288>,  <28.305765, 38.441727, 53.871460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294308, 38.052193, 53.781288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918881, -0.063126, 0.389453,
		-0.393495, 0.218299, -0.893033,
		-0.028644, -0.973838, -0.225431,
		28.285715, 37.760040, 53.713657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632776, 38.361427, 53.619484>,  <28.305765, 38.441727, 53.871460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632776, 38.361427, 53.619484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731575, 37.984596, 53.710251>,  <27.790854, 37.758499, 53.764709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731575, 37.984596, 53.710251>,  <27.632776, 38.361427, 53.619484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731575, 37.984596, 53.710251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857187, -0.103210, 0.504557,
		-0.451910, -0.319131, -0.833026,
		0.246996, -0.942074, 0.226914,
		27.805674, 37.701973, 53.778324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074278, 37.987606, 53.558880>,  <27.632776, 38.361427, 53.619484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074278, 37.987606, 53.558880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.299282, 37.767097, 53.805355>,  <27.434284, 37.634792, 53.953239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.299282, 37.767097, 53.805355>,  <27.074278, 37.987606, 53.558880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299282, 37.767097, 53.805355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798027, -0.167138, 0.578979,
		-0.216189, -0.817412, -0.533948,
		0.562507, -0.551274, 0.616184,
		27.468035, 37.601715, 53.990211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768351, 37.342880, 53.633770>,  <27.074278, 37.987606, 53.558880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768351, 37.342880, 53.633770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.002678, 37.355431, 53.957703>,  <27.143274, 37.362961, 54.152061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.002678, 37.355431, 53.957703>,  <26.768351, 37.342880, 53.633770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002678, 37.355431, 53.957703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808077, -0.053659, 0.586628,
		0.061863, -0.998066, -0.006079,
		0.585820, 0.031378, 0.809833,
		27.178425, 37.364845, 54.200653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607859, 36.772835, 54.099819>,  <26.768351, 37.342880, 53.633770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607859, 36.772835, 54.099819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.773911, 37.057709, 54.326256>,  <26.873541, 37.228634, 54.462116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.773911, 37.057709, 54.326256>,  <26.607859, 36.772835, 54.099819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773911, 37.057709, 54.326256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768867, -0.057983, 0.636775,
		0.486326, -0.699591, 0.523507,
		0.415127, 0.712187, 0.566091,
		26.898449, 37.271366, 54.496082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.599045, 44.826885, 44.830128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.612488, 45.099869, 45.122189>,  <37.620556, 45.263660, 45.297424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.612488, 45.099869, 45.122189>,  <37.599045, 44.826885, 44.830128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612488, 45.099869, 45.122189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457581, -0.638990, 0.618314,
		0.888533, -0.354885, 0.290803,
		0.033610, 0.682458, 0.730152,
		37.622570, 45.304607, 45.341232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772480, 44.455456, 45.384872>,  <37.599045, 44.826885, 44.830128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772480, 44.455456, 45.384872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588631, 44.777946, 45.533863>,  <37.478321, 44.971443, 45.623257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588631, 44.777946, 45.533863>,  <37.772480, 44.455456, 45.384872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588631, 44.777946, 45.533863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548565, -0.587556, 0.594857,
		0.698441, 0.069086, 0.712326,
		-0.459627, 0.806229, 0.372475,
		37.450741, 45.019814, 45.645607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837284, 44.462650, 46.181377>,  <37.772480, 44.455456, 45.384872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837284, 44.462650, 46.181377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518631, 44.704071, 46.168056>,  <37.327438, 44.848923, 46.160065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518631, 44.704071, 46.168056>,  <37.837284, 44.462650, 46.181377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518631, 44.704071, 46.168056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559716, -0.715730, 0.417671,
		0.228253, 0.351367, 0.907988,
		-0.796630, 0.603550, -0.033298,
		37.279640, 44.885136, 46.158066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420605, 44.472038, 46.891495>,  <37.837284, 44.462650, 46.181377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420605, 44.472038, 46.891495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.148048, 44.607941, 46.632179>,  <36.984516, 44.689484, 46.476589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.148048, 44.607941, 46.632179>,  <37.420605, 44.472038, 46.891495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148048, 44.607941, 46.632179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711859, -0.513595, 0.479038,
		-0.170202, 0.787900, 0.591816,
		-0.681387, 0.339756, -0.648288,
		36.943634, 44.709866, 46.437695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869541, 44.814373, 47.222790>,  <37.420605, 44.472038, 46.891495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869541, 44.814373, 47.222790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.714584, 44.673866, 46.881840>,  <36.621609, 44.589561, 46.677269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.714584, 44.673866, 46.881840>,  <36.869541, 44.814373, 47.222790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714584, 44.673866, 46.881840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628070, -0.576258, 0.522929,
		-0.674874, 0.737928, 0.002618,
		-0.387393, -0.351266, -0.852372,
		36.598366, 44.568485, 46.626129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070702, 44.875446, 47.275349>,  <36.869541, 44.814373, 47.222790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070702, 44.875446, 47.275349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136780, 44.608238, 46.985119>,  <36.176426, 44.447914, 46.810982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136780, 44.608238, 46.985119>,  <36.070702, 44.875446, 47.275349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136780, 44.608238, 46.985119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723842, -0.581820, 0.370861,
		-0.669897, 0.463939, -0.579654,
		0.165198, -0.668017, -0.725578,
		36.186340, 44.407833, 46.767445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414764, 44.773930, 46.904278>,  <36.070702, 44.875446, 47.275349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414764, 44.773930, 46.904278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.618992, 44.445679, 46.801598>,  <35.741528, 44.248730, 46.739990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.618992, 44.445679, 46.801598>,  <35.414764, 44.773930, 46.904278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618992, 44.445679, 46.801598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765751, -0.569753, 0.298340,
		-0.391083, 0.044248, -0.919291,
		0.510568, -0.820624, -0.256704,
		35.772163, 44.199493, 46.724586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937927, 44.307285, 46.642544>,  <35.414764, 44.773930, 46.904278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937927, 44.307285, 46.642544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.247665, 44.076759, 46.747047>,  <35.433510, 43.938446, 46.809750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.247665, 44.076759, 46.747047>,  <34.937927, 44.307285, 46.642544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247665, 44.076759, 46.747047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632270, -0.688377, 0.355488,
		-0.025028, -0.440455, -0.897425,
		0.774344, -0.576312, 0.261258,
		35.479969, 43.903866, 46.825424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751987, 43.694000, 46.375458>,  <34.937927, 44.307285, 46.642544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751987, 43.694000, 46.375458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032990, 43.601807, 46.644787>,  <35.201591, 43.546490, 46.806385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032990, 43.601807, 46.644787>,  <34.751987, 43.694000, 46.375458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032990, 43.601807, 46.644787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635480, -0.629075, 0.447693,
		0.320384, -0.742390, -0.588397,
		0.702509, -0.230481, 0.673320,
		35.243744, 43.532661, 46.846783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762539, 43.081757, 46.275692>,  <34.751987, 43.694000, 46.375458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762539, 43.081757, 46.275692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909954, 43.133423, 46.643929>,  <34.998402, 43.164425, 46.864872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909954, 43.133423, 46.643929>,  <34.762539, 43.081757, 46.275692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909954, 43.133423, 46.643929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642720, -0.680075, 0.352719,
		0.671634, -0.721675, -0.167613,
		0.368538, 0.129169, 0.920595,
		35.020515, 43.172173, 46.920109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932938, 42.440979, 46.442795>,  <34.762539, 43.081757, 46.275692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932938, 42.440979, 46.442795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909462, 42.630333, 46.794353>,  <34.895378, 42.743946, 47.005287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909462, 42.630333, 46.794353>,  <34.932938, 42.440979, 46.442795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909462, 42.630333, 46.794353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609810, -0.714056, 0.343883,
		0.790372, -0.515780, 0.330580,
		-0.058684, 0.473387, 0.878898,
		34.891857, 42.772350, 47.058022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187580, 41.891556, 46.999973>,  <34.932938, 42.440979, 46.442795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187580, 41.891556, 46.999973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958618, 42.156136, 47.193817>,  <34.821243, 42.314884, 47.310123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958618, 42.156136, 47.193817>,  <35.187580, 41.891556, 46.999973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958618, 42.156136, 47.193817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589599, -0.742736, 0.317358,
		0.569851, -0.104067, 0.815132,
		-0.572402, 0.661448, 0.484607,
		34.786900, 42.354568, 47.339199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710060, 41.594353, 47.599537>,  <35.187580, 41.891556, 46.999973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710060, 41.594353, 47.599537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.867523, 41.230080, 47.549427>,  <35.962002, 41.011517, 47.519360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.867523, 41.230080, 47.549427>,  <35.710060, 41.594353, 47.599537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867523, 41.230080, 47.549427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649808, 0.372066, -0.662810,
		0.650220, 0.179512, 0.738234,
		0.393654, -0.910682, -0.125276,
		35.985619, 40.956875, 47.511845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454643, 41.656303, 47.695244>,  <35.710060, 41.594353, 47.599537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454643, 41.656303, 47.695244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.392029, 41.341705, 47.456276>,  <36.354458, 41.152946, 47.312893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.392029, 41.341705, 47.456276>,  <36.454643, 41.656303, 47.695244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392029, 41.341705, 47.456276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782089, 0.270699, -0.561300,
		0.603184, -0.555103, 0.572738,
		-0.156540, -0.786500, -0.597422,
		36.345066, 41.105755, 47.277050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072205, 41.233807, 47.660938>,  <36.454643, 41.656303, 47.695244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072205, 41.233807, 47.660938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877068, 41.125153, 47.329102>,  <36.759987, 41.059959, 47.129997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877068, 41.125153, 47.329102>,  <37.072205, 41.233807, 47.660938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877068, 41.125153, 47.329102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783698, 0.282300, -0.553286,
		0.384485, -0.920066, 0.075161,
		-0.487841, -0.271633, -0.829594,
		36.730717, 41.043663, 47.080223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520298, 40.893715, 47.417511>,  <37.072205, 41.233807, 47.660938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520298, 40.893715, 47.417511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280296, 40.988411, 47.111847>,  <37.136295, 41.045227, 46.928448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280296, 40.988411, 47.111847>,  <37.520298, 40.893715, 47.417511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280296, 40.988411, 47.111847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779515, 0.387763, -0.491930,
		0.179854, -0.890839, -0.417204,
		-0.600007, 0.236742, -0.764163,
		37.100296, 41.059433, 46.882599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764610, 40.571236, 46.710236>,  <37.520298, 40.893715, 47.417511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764610, 40.571236, 46.710236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.528191, 40.867035, 46.581360>,  <37.386337, 41.044514, 46.504036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.528191, 40.867035, 46.581360>,  <37.764610, 40.571236, 46.710236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528191, 40.867035, 46.581360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761592, 0.379997, -0.524957,
		-0.265775, -0.555650, -0.787793,
		-0.591051, 0.739497, -0.322185,
		37.350876, 41.088882, 46.484703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867691, 40.574657, 45.944057>,  <37.764610, 40.571236, 46.710236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867691, 40.574657, 45.944057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.723743, 40.933014, 46.048271>,  <37.637375, 41.148026, 46.110802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.723743, 40.933014, 46.048271>,  <37.867691, 40.574657, 45.944057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723743, 40.933014, 46.048271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733718, 0.444235, -0.514114,
		-0.576329, 0.006150, -0.817195,
		-0.359865, 0.895889, 0.260537,
		37.615784, 41.201782, 46.126431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149494, 40.964600, 45.380596>,  <37.867691, 40.574657, 45.944057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149494, 40.964600, 45.380596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028942, 41.258812, 45.623302>,  <37.956612, 41.435341, 45.768929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028942, 41.258812, 45.623302>,  <38.149494, 40.964600, 45.380596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028942, 41.258812, 45.623302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773274, 0.560853, -0.295790,
		-0.557870, 0.380054, -0.737794,
		-0.301378, 0.735529, 0.606768,
		37.938530, 41.479469, 45.805332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247940, 41.595081, 45.024864>,  <38.149494, 40.964600, 45.380596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247940, 41.595081, 45.024864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201401, 41.730331, 45.398415>,  <38.173477, 41.811481, 45.622547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201401, 41.730331, 45.398415>,  <38.247940, 41.595081, 45.024864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201401, 41.730331, 45.398415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637947, 0.746103, -0.190664,
		-0.761240, 0.573584, -0.302515,
		-0.116345, 0.338130, 0.933880,
		38.166496, 41.831772, 45.678577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169415, 42.349831, 45.007423>,  <38.247940, 41.595081, 45.024864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169415, 42.349831, 45.007423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.323719, 42.245979, 45.361549>,  <38.416302, 42.183670, 45.574024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.323719, 42.245979, 45.361549>,  <38.169415, 42.349831, 45.007423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323719, 42.245979, 45.361549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805842, 0.562058, -0.186306,
		-0.449229, 0.785294, 0.426036,
		0.385762, -0.259624, 0.885315,
		38.439449, 42.168091, 45.627144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357307, 42.944035, 45.293217>,  <38.169415, 42.349831, 45.007423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357307, 42.944035, 45.293217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578201, 42.676300, 45.492027>,  <38.710735, 42.515659, 45.611313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578201, 42.676300, 45.492027>,  <38.357307, 42.944035, 45.293217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578201, 42.676300, 45.492027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771259, 0.636521, 0.000265,
		-0.316545, 0.383190, 0.867736,
		0.552231, -0.669333, 0.497026,
		38.743870, 42.475502, 45.641136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811089, 43.359848, 45.610378>,  <38.357307, 42.944035, 45.293217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811089, 43.359848, 45.610378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966698, 42.997276, 45.676163>,  <39.060062, 42.779732, 45.715633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966698, 42.997276, 45.676163>,  <38.811089, 43.359848, 45.610378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966698, 42.997276, 45.676163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886828, 0.416807, 0.199518,
		-0.249400, 0.068237, 0.965993,
		0.389019, -0.906430, 0.164466,
		39.083405, 42.725346, 45.725502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128426, 43.301693, 46.214321>,  <38.811089, 43.359848, 45.610378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128426, 43.301693, 46.214321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.312237, 43.018181, 46.000233>,  <39.422523, 42.848072, 45.871780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.312237, 43.018181, 46.000233>,  <39.128426, 43.301693, 46.214321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312237, 43.018181, 46.000233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853219, 0.519662, 0.044373,
		0.246685, -0.477055, 0.843543,
		0.459526, -0.708781, -0.535225,
		39.450096, 42.805546, 45.839664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777256, 43.198910, 46.482868>,  <39.128426, 43.301693, 46.214321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777256, 43.198910, 46.482868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.812992, 43.052353, 46.112404>,  <39.834435, 42.964417, 45.890125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.812992, 43.052353, 46.112404>,  <39.777256, 43.198910, 46.482868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812992, 43.052353, 46.112404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888217, 0.450045, -0.092358,
		0.450653, -0.814379, 0.365649,
		0.089344, -0.366397, -0.926159,
		39.839794, 42.942432, 45.834557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420193, 42.929398, 46.497433>,  <39.777256, 43.198910, 46.482868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420193, 42.929398, 46.497433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.335041, 42.957832, 46.107635>,  <40.283951, 42.974892, 45.873756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.335041, 42.957832, 46.107635>,  <40.420193, 42.929398, 46.497433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335041, 42.957832, 46.107635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920631, 0.348675, -0.175684,
		0.327292, -0.934544, -0.139669,
		-0.212883, 0.071083, -0.974489,
		40.271175, 42.979156, 45.815289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120770, 42.635483, 46.686108>,  <40.420193, 42.929398, 46.497433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120770, 42.635483, 46.686108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.784813, 42.423065, 46.641254>,  <40.583241, 42.295616, 46.614342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.784813, 42.423065, 46.641254>,  <41.120770, 42.635483, 46.686108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784813, 42.423065, 46.641254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047523, 0.277755, -0.959476,
		0.540668, -0.800528, -0.258521,
		-0.839893, -0.531044, -0.112130,
		40.532845, 42.263752, 46.607616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183842, 43.387592, 46.802128>,  <41.120770, 42.635483, 46.686108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183842, 43.387592, 46.802128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.106628, 43.609558, 47.125809>,  <41.060299, 43.742737, 47.320019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.106628, 43.609558, 47.125809>,  <41.183842, 43.387592, 46.802128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106628, 43.609558, 47.125809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048417, -0.829098, 0.557003,
		0.979997, 0.068340, 0.186910,
		-0.193032, 0.554911, 0.809205,
		41.048717, 43.776031, 47.368568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558334, 43.006756, 47.383739>,  <41.183842, 43.387592, 46.802128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558334, 43.006756, 47.383739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.261826, 43.222183, 47.543972>,  <41.083920, 43.351440, 47.640110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.261826, 43.222183, 47.543972>,  <41.558334, 43.006756, 47.383739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261826, 43.222183, 47.543972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089605, -0.670866, 0.736145,
		0.665200, 0.509787, 0.545550,
		-0.741269, 0.538568, 0.400581,
		41.039444, 43.383755, 47.664146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602825, 42.986683, 48.098415>,  <41.558334, 43.006756, 47.383739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602825, 42.986683, 48.098415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.217201, 43.073685, 48.037376>,  <40.985828, 43.125885, 48.000751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.217201, 43.073685, 48.037376>,  <41.602825, 42.986683, 48.098415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217201, 43.073685, 48.037376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262555, -0.691795, 0.672669,
		0.040739, 0.688557, 0.724037,
		-0.964057, 0.217503, -0.152601,
		40.927982, 43.138935, 47.991596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280804, 43.022564, 48.826992>,  <41.602825, 42.986683, 48.098415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280804, 43.022564, 48.826992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.970924, 42.951881, 48.584137>,  <40.784996, 42.909470, 48.438423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.970924, 42.951881, 48.584137>,  <41.280804, 43.022564, 48.826992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970924, 42.951881, 48.584137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326254, -0.710781, 0.623176,
		-0.541661, 0.680855, 0.492991,
		-0.774701, -0.176710, -0.607134,
		40.738514, 42.898869, 48.401997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739376, 42.990227, 49.287048>,  <41.280804, 43.022564, 48.826992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739376, 42.990227, 49.287048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.610455, 42.809105, 48.954521>,  <40.533100, 42.700432, 48.755005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.610455, 42.809105, 48.954521>,  <40.739376, 42.990227, 49.287048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610455, 42.809105, 48.954521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454391, -0.696395, 0.555484,
		-0.830449, 0.556780, 0.018704,
		-0.322308, -0.452802, -0.831317,
		40.513763, 42.673264, 48.705128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054501, 42.860859, 49.410530>,  <40.739376, 42.990227, 49.287048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054501, 42.860859, 49.410530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.136780, 42.594185, 49.123974>,  <40.186150, 42.434181, 48.952038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.136780, 42.594185, 49.123974>,  <40.054501, 42.860859, 49.410530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136780, 42.594185, 49.123974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546158, -0.685647, 0.481248,
		-0.812033, 0.292271, -0.505153,
		0.205702, -0.666682, -0.716394,
		40.198490, 42.394180, 48.909054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393085, 42.491646, 49.224350>,  <40.054501, 42.860859, 49.410530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393085, 42.491646, 49.224350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.715225, 42.274239, 49.129692>,  <39.908508, 42.143795, 49.072895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.715225, 42.274239, 49.129692>,  <39.393085, 42.491646, 49.224350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715225, 42.274239, 49.129692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430723, -0.810786, 0.396364,
		-0.407303, -0.217280, -0.887070,
		0.805346, -0.543522, -0.236648,
		39.956829, 42.111183, 49.058697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100246, 41.888538, 48.982021>,  <39.393085, 42.491646, 49.224350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100246, 41.888538, 48.982021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.477890, 41.799858, 49.079597>,  <39.704475, 41.746651, 49.138145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.477890, 41.799858, 49.079597>,  <39.100246, 41.888538, 48.982021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477890, 41.799858, 49.079597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317438, -0.810917, 0.491576,
		0.088836, -0.541538, -0.835969,
		0.944109, -0.221699, 0.243943,
		39.761124, 41.733349, 49.152779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118862, 41.156193, 48.923107>,  <39.100246, 41.888538, 48.982021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118862, 41.156193, 48.923107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.437531, 41.259903, 49.141499>,  <39.628731, 41.322128, 49.272533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.437531, 41.259903, 49.141499>,  <39.118862, 41.156193, 48.923107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437531, 41.259903, 49.141499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272426, -0.652325, 0.707288,
		0.539538, -0.712214, -0.449055,
		0.796670, 0.259275, 0.545980,
		39.676533, 41.337685, 49.305294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389633, 40.546444, 49.198536>,  <39.118862, 41.156193, 48.923107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389633, 40.546444, 49.198536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.510368, 40.855537, 49.421883>,  <39.582809, 41.040993, 49.555889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.510368, 40.855537, 49.421883>,  <39.389633, 40.546444, 49.198536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510368, 40.855537, 49.421883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460916, -0.394401, 0.794987,
		0.834535, -0.497317, 0.237121,
		0.301840, 0.772738, 0.558363,
		39.600922, 41.087360, 49.589390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644440, 40.256832, 49.753719>,  <39.389633, 40.546444, 49.198536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644440, 40.256832, 49.753719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566780, 40.626884, 49.884224>,  <39.520184, 40.848915, 49.962528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566780, 40.626884, 49.884224>,  <39.644440, 40.256832, 49.753719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566780, 40.626884, 49.884224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395024, -0.378162, 0.837227,
		0.897921, 0.033668, 0.438868,
		-0.194151, 0.925127, 0.326260,
		39.508533, 40.904423, 49.982101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630928, 40.105671, 50.459068>,  <39.644440, 40.256832, 49.753719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630928, 40.105671, 50.459068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.478577, 40.475471, 50.465164>,  <39.387165, 40.697353, 50.468822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.478577, 40.475471, 50.465164>,  <39.630928, 40.105671, 50.459068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478577, 40.475471, 50.465164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453884, -0.201298, 0.868025,
		0.805557, 0.323695, 0.496286,
		-0.380877, 0.924500, 0.015237,
		39.364315, 40.752823, 50.469734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779606, 40.296276, 51.071907>,  <39.630928, 40.105671, 50.459068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779606, 40.296276, 51.071907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.473198, 40.521294, 50.947487>,  <39.289352, 40.656303, 50.872837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.473198, 40.521294, 50.947487>,  <39.779606, 40.296276, 51.071907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473198, 40.521294, 50.947487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546352, -0.314824, 0.776135,
		0.338687, 0.764478, 0.548511,
		-0.766023, 0.562547, -0.311048,
		39.243393, 40.690056, 50.854172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407383, 40.663021, 51.661076>,  <39.779606, 40.296276, 51.071907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407383, 40.663021, 51.661076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.141430, 40.713745, 51.366634>,  <38.981857, 40.744179, 51.189968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.141430, 40.713745, 51.366634>,  <39.407383, 40.663021, 51.661076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141430, 40.713745, 51.366634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746751, -0.135308, 0.651195,
		-0.017024, 0.982656, 0.184658,
		-0.664886, 0.126807, -0.736102,
		38.941963, 40.751789, 51.145805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025230, 41.152912, 51.905682>,  <39.407383, 40.663021, 51.661076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025230, 41.152912, 51.905682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.816597, 40.932114, 51.645451>,  <38.691418, 40.799633, 51.489311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.816597, 40.932114, 51.645451>,  <39.025230, 41.152912, 51.905682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816597, 40.932114, 51.645451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761240, -0.043280, 0.647024,
		-0.385314, 0.832720, -0.397630,
		-0.521581, -0.552000, -0.650576,
		38.660122, 40.766514, 51.450279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385288, 41.470592, 51.992069>,  <39.025230, 41.152912, 51.905682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385288, 41.470592, 51.992069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306992, 41.112610, 51.831703>,  <38.260014, 40.897820, 51.735485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306992, 41.112610, 51.831703>,  <38.385288, 41.470592, 51.992069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306992, 41.112610, 51.831703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760211, -0.119776, 0.638539,
		-0.619487, 0.429770, -0.656913,
		-0.195743, -0.894959, -0.400915,
		38.248268, 40.844124, 51.711430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642994, 41.352421, 51.921215>,  <38.385288, 41.470592, 51.992069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642994, 41.352421, 51.921215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791115, 40.982498, 51.886333>,  <37.879990, 40.760544, 51.865406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791115, 40.982498, 51.886333>,  <37.642994, 41.352421, 51.921215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791115, 40.982498, 51.886333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750789, -0.353257, 0.558145,
		-0.546982, -0.141213, -0.825148,
		0.370307, -0.924807, -0.087204,
		37.902206, 40.705055, 51.860172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106499, 40.915207, 51.710964>,  <37.642994, 41.352421, 51.921215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106499, 40.915207, 51.710964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.373634, 40.668839, 51.878120>,  <37.533916, 40.521015, 51.978416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.373634, 40.668839, 51.878120>,  <37.106499, 40.915207, 51.710964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373634, 40.668839, 51.878120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744267, -0.558652, 0.366026,
		0.008013, -0.555469, -0.831498,
		0.667835, -0.615924, 0.417894,
		37.573986, 40.484062, 52.003487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807590, 40.205688, 51.599663>,  <37.106499, 40.915207, 51.710964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807590, 40.205688, 51.599663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055733, 40.207756, 51.913387>,  <37.204617, 40.208996, 52.101620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055733, 40.207756, 51.913387>,  <36.807590, 40.205688, 51.599663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055733, 40.207756, 51.913387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727218, -0.370791, 0.577640,
		0.293800, -0.928702, -0.226262,
		0.620351, 0.005169, 0.784307,
		37.241837, 40.209309, 52.148678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599255, 39.640587, 52.004799>,  <36.807590, 40.205688, 51.599663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599255, 39.640587, 52.004799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816315, 39.859749, 52.259460>,  <36.946548, 39.991245, 52.412258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816315, 39.859749, 52.259460>,  <36.599255, 39.640587, 52.004799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816315, 39.859749, 52.259460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648450, -0.208514, 0.732143,
		0.533898, -0.810136, 0.242141,
		0.542646, 0.547907, 0.636658,
		36.979107, 40.024120, 52.450459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630959, 39.185532, 52.602291>,  <36.599255, 39.640587, 52.004799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630959, 39.185532, 52.602291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723442, 39.549316, 52.740517>,  <36.778934, 39.767590, 52.823452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723442, 39.549316, 52.740517>,  <36.630959, 39.185532, 52.602291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723442, 39.549316, 52.740517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672395, -0.107330, 0.732369,
		0.703154, -0.401686, 0.586705,
		0.231211, 0.909466, 0.345561,
		36.792805, 39.822155, 52.844185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875870, 39.074982, 53.253456>,  <36.630959, 39.185532, 52.602291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875870, 39.074982, 53.253456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725510, 39.444153, 53.220215>,  <36.635296, 39.665657, 53.200272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725510, 39.444153, 53.220215>,  <36.875870, 39.074982, 53.253456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725510, 39.444153, 53.220215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689057, -0.218427, 0.691006,
		0.619597, 0.317009, 0.718056,
		-0.375898, 0.922928, -0.083101,
		36.612740, 39.721031, 53.195286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714558, 39.200096, 53.922932>,  <36.875870, 39.074982, 53.253456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714558, 39.200096, 53.922932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.511852, 39.480293, 53.721935>,  <36.390228, 39.648411, 53.601337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.511852, 39.480293, 53.721935>,  <36.714558, 39.200096, 53.922932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511852, 39.480293, 53.721935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745551, -0.063467, 0.663420,
		0.432829, 0.710832, 0.554416,
		-0.506767, 0.700492, -0.502491,
		36.359821, 39.690441, 53.571190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554928, 39.619949, 54.344963>,  <36.714558, 39.200096, 53.922932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554928, 39.619949, 54.344963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274673, 39.654930, 54.061707>,  <36.106522, 39.675919, 53.891754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274673, 39.654930, 54.061707>,  <36.554928, 39.619949, 54.344963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274673, 39.654930, 54.061707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695677, -0.304288, 0.650725,
		-0.158573, 0.948557, 0.274031,
		-0.700634, 0.087450, -0.708141,
		36.064484, 39.681164, 53.849266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005592, 39.618530, 54.676155>,  <36.554928, 39.619949, 54.344963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005592, 39.618530, 54.676155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801506, 39.569290, 54.335678>,  <35.679054, 39.539745, 54.131393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801506, 39.569290, 54.335678>,  <36.005592, 39.618530, 54.676155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801506, 39.569290, 54.335678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730792, -0.459769, 0.504535,
		-0.453460, 0.879465, 0.144619,
		-0.510213, -0.123100, -0.851193,
		35.648441, 39.532360, 54.080318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324577, 39.893204, 54.827320>,  <36.005592, 39.618530, 54.676155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324577, 39.893204, 54.827320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303436, 39.653648, 54.507687>,  <35.290752, 39.509914, 54.315907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303436, 39.653648, 54.507687>,  <35.324577, 39.893204, 54.827320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303436, 39.653648, 54.507687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843041, -0.402145, 0.357158,
		-0.535246, 0.692539, -0.483633,
		-0.052855, -0.598890, -0.799086,
		35.287579, 39.473980, 54.267960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698788, 39.941574, 54.718407>,  <35.324577, 39.893204, 54.827320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698788, 39.941574, 54.718407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818684, 39.604187, 54.540100>,  <34.890621, 39.401752, 54.433117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818684, 39.604187, 54.540100>,  <34.698788, 39.941574, 54.718407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818684, 39.604187, 54.540100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804370, -0.474681, 0.357304,
		-0.512975, 0.251465, -0.820745,
		0.299743, -0.843471, -0.445770,
		34.908607, 39.351147, 54.406368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079712, 40.386822, 54.635750>,  <34.698788, 39.941574, 54.718407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079712, 40.386822, 54.635750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003296, 40.596878, 54.967468>,  <33.957447, 40.722912, 55.166500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003296, 40.596878, 54.967468>,  <34.079712, 40.386822, 54.635750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003296, 40.596878, 54.967468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526692, 0.767775, -0.364852,
		-0.828311, 0.367082, -0.423263,
		-0.191040, 0.525141, 0.829295,
		33.945984, 40.754421, 55.216255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604000, 40.934135, 54.443649>,  <34.079712, 40.386822, 54.635750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604000, 40.934135, 54.443649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.813583, 41.021576, 54.772934>,  <33.939335, 41.074039, 54.970505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.813583, 41.021576, 54.772934>,  <33.604000, 40.934135, 54.443649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813583, 41.021576, 54.772934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618941, 0.566252, -0.544307,
		-0.585131, 0.794716, 0.161395,
		0.523960, 0.218597, 0.823214,
		33.970772, 41.087154, 55.019897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600605, 41.593254, 54.471134>,  <33.604000, 40.934135, 54.443649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600605, 41.593254, 54.471134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.933807, 41.511360, 54.676727>,  <34.133728, 41.462223, 54.800083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.933807, 41.511360, 54.676727>,  <33.600605, 41.593254, 54.471134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933807, 41.511360, 54.676727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497444, 0.683794, -0.533830,
		-0.242170, 0.700365, 0.671448,
		0.833008, -0.204730, 0.513987,
		34.183708, 41.449940, 54.830925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915798, 42.211227, 54.719635>,  <33.600605, 41.593254, 54.471134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915798, 42.211227, 54.719635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.214035, 41.952957, 54.785610>,  <34.392975, 41.797997, 54.825195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.214035, 41.952957, 54.785610>,  <33.915798, 42.211227, 54.719635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214035, 41.952957, 54.785610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588311, 0.521472, -0.618028,
		0.313032, 0.557830, 0.768659,
		0.745588, -0.645673, 0.164940,
		34.437710, 41.759254, 54.835091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494869, 42.591743, 55.046417>,  <33.915798, 42.211227, 54.719635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494869, 42.591743, 55.046417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.639900, 42.272430, 54.854053>,  <34.726921, 42.080841, 54.738636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.639900, 42.272430, 54.854053>,  <34.494869, 42.591743, 55.046417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639900, 42.272430, 54.854053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585439, 0.596600, -0.548935,
		0.725118, -0.082511, 0.683663,
		0.362581, -0.798286, -0.480911,
		34.748672, 42.032944, 54.709782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
