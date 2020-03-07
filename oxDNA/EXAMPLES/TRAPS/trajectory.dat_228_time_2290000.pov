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
	<36.516563, 52.992607, 50.051472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593235, 53.263073, 49.766922>,  <36.639236, 53.425354, 49.596191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593235, 53.263073, 49.766922>,  <36.516563, 52.992607, 50.051472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593235, 53.263073, 49.766922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857124, 0.237770, 0.456950,
		0.478119, -0.697326, -0.533983,
		0.191678, 0.676167, -0.711378,
		36.650738, 53.465923, 49.553509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324806, 52.941891, 49.776234>,  <36.516563, 52.992607, 50.051472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324806, 52.941891, 49.776234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151543, 53.302177, 49.789417>,  <37.047585, 53.518349, 49.797329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151543, 53.302177, 49.789417>,  <37.324806, 52.941891, 49.776234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151543, 53.302177, 49.789417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804395, 0.369825, 0.464949,
		0.406595, 0.227914, -0.884724,
		-0.433161, 0.900714, 0.032964,
		37.021595, 53.572392, 49.799305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771206, 53.547310, 49.497704>,  <37.324806, 52.941891, 49.776234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771206, 53.547310, 49.497704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541965, 53.673508, 49.800232>,  <37.404419, 53.749226, 49.981747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541965, 53.673508, 49.800232>,  <37.771206, 53.547310, 49.497704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541965, 53.673508, 49.800232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787408, 0.467687, 0.401569,
		-0.227029, 0.825672, -0.516453,
		-0.573103, 0.315492, 0.756319,
		37.370033, 53.768154, 50.027126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552795, 54.242630, 49.625519>,  <37.771206, 53.547310, 49.497704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552795, 54.242630, 49.625519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612446, 54.032196, 49.960423>,  <37.648235, 53.905937, 50.161366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612446, 54.032196, 49.960423>,  <37.552795, 54.242630, 49.625519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612446, 54.032196, 49.960423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754628, 0.607711, 0.247436,
		-0.638981, 0.594918, 0.487622,
		0.149129, -0.526080, 0.837258,
		37.657185, 53.874371, 50.211601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664127, 54.722008, 50.231903>,  <37.552795, 54.242630, 49.625519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664127, 54.722008, 50.231903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837112, 54.372120, 50.319386>,  <37.940903, 54.162186, 50.371876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837112, 54.372120, 50.319386>,  <37.664127, 54.722008, 50.231903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837112, 54.372120, 50.319386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834856, 0.480091, 0.269310,
		-0.340572, 0.066125, 0.937890,
		0.432465, -0.874723, 0.218711,
		37.966850, 54.109703, 50.384998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256008, 54.843872, 50.722446>,  <37.664127, 54.722008, 50.231903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256008, 54.843872, 50.722446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345840, 54.458790, 50.662102>,  <38.399742, 54.227741, 50.625893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345840, 54.458790, 50.662102>,  <38.256008, 54.843872, 50.722446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345840, 54.458790, 50.662102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934379, 0.168808, 0.313750,
		-0.276582, -0.211429, 0.937443,
		0.224584, -0.962705, -0.150866,
		38.413216, 54.169979, 50.616840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493855, 54.574787, 51.335846>,  <38.256008, 54.843872, 50.722446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493855, 54.574787, 51.335846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669147, 54.381466, 51.032696>,  <38.774323, 54.265472, 50.850807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669147, 54.381466, 51.032696>,  <38.493855, 54.574787, 51.335846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669147, 54.381466, 51.032696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895610, 0.163145, 0.413844,
		-0.076367, -0.860119, 0.504344,
		0.438237, -0.483299, -0.757872,
		38.800617, 54.236477, 50.805332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042328, 54.224407, 51.564789>,  <38.493855, 54.574787, 51.335846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042328, 54.224407, 51.564789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135281, 54.245415, 51.176308>,  <39.191051, 54.258018, 50.943218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135281, 54.245415, 51.176308>,  <39.042328, 54.224407, 51.564789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135281, 54.245415, 51.176308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953456, 0.184964, 0.238140,
		0.192144, -0.981341, -0.007090,
		0.232385, 0.052517, -0.971205,
		39.204998, 54.261169, 50.884945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670666, 53.803734, 51.324589>,  <39.042328, 54.224407, 51.564789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670666, 53.803734, 51.324589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651802, 54.123100, 51.084488>,  <39.640484, 54.314720, 50.940426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651802, 54.123100, 51.084488>,  <39.670666, 53.803734, 51.324589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651802, 54.123100, 51.084488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987667, 0.127087, 0.091453,
		0.149302, -0.588535, -0.794566,
		-0.047156, 0.798420, -0.600251,
		39.637653, 54.362625, 50.904411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133877, 53.641582, 50.715294>,  <39.670666, 53.803734, 51.324589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133877, 53.641582, 50.715294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079399, 54.032986, 50.777222>,  <40.046711, 54.267826, 50.814381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079399, 54.032986, 50.777222>,  <40.133877, 53.641582, 50.715294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079399, 54.032986, 50.777222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983937, 0.115404, 0.136199,
		0.115404, 0.170886, -0.978509,
		-0.136199, 0.978509, 0.154823,
		40.038540, 54.326538, 50.823669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485420, 54.093464, 50.155491>,  <40.133877, 53.641582, 50.715294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485420, 54.093464, 50.155491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502098, 54.286621, 50.505363>,  <40.512104, 54.402515, 50.715286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502098, 54.286621, 50.505363>,  <40.485420, 54.093464, 50.155491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502098, 54.286621, 50.505363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982901, 0.137327, -0.122667,
		-0.179353, 0.864844, -0.468910,
		0.041694, 0.482893, 0.874686,
		40.514606, 54.431488, 50.767769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951664, 54.068909, 49.579384>,  <40.485420, 54.093464, 50.155491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951664, 54.068909, 49.579384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095222, 53.885685, 49.254082>,  <40.181358, 53.775753, 49.058903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095222, 53.885685, 49.254082>,  <39.951664, 54.068909, 49.579384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095222, 53.885685, 49.254082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833389, -0.235092, 0.500194,
		-0.420306, -0.857272, 0.297367,
		0.358894, -0.458057, -0.813252,
		40.202892, 53.748268, 49.010105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042732, 53.266560, 49.720387>,  <39.951664, 54.068909, 49.579384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042732, 53.266560, 49.720387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275852, 53.405640, 49.426598>,  <40.415726, 53.489086, 49.250324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275852, 53.405640, 49.426598>,  <40.042732, 53.266560, 49.720387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275852, 53.405640, 49.426598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786571, -0.468367, 0.402415,
		-0.204085, -0.812243, -0.546452,
		0.582799, 0.347696, -0.734474,
		40.450691, 53.509949, 49.206257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298180, 52.686695, 49.308922>,  <40.042732, 53.266560, 49.720387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298180, 52.686695, 49.308922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513783, 53.021015, 49.350708>,  <40.643143, 53.221607, 49.375778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513783, 53.021015, 49.350708>,  <40.298180, 52.686695, 49.308922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513783, 53.021015, 49.350708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718540, -0.520973, 0.460746,
		0.439513, -0.173285, -0.881363,
		0.539007, 0.835799, 0.104463,
		40.675484, 53.271755, 49.382046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081547, 52.461464, 49.250980>,  <40.298180, 52.686695, 49.308922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081547, 52.461464, 49.250980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047707, 52.839005, 49.378723>,  <41.027401, 53.065529, 49.455368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047707, 52.839005, 49.378723>,  <41.081547, 52.461464, 49.250980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047707, 52.839005, 49.378723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761105, -0.145639, 0.632067,
		0.643087, 0.296538, -0.706048,
		-0.084604, 0.943851, 0.319355,
		41.022327, 53.122158, 49.474529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677013, 52.786816, 49.125130>,  <41.081547, 52.461464, 49.250980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677013, 52.786816, 49.125130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485794, 52.918327, 49.450920>,  <41.371063, 52.997234, 49.646393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485794, 52.918327, 49.450920>,  <41.677013, 52.786816, 49.125130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485794, 52.918327, 49.450920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747770, -0.334107, 0.573770,
		0.460767, 0.883332, -0.086133,
		-0.478052, 0.328782, 0.814475,
		41.342377, 53.016960, 49.695263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028812, 53.325352, 49.559498>,  <41.677013, 52.786816, 49.125130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028812, 53.325352, 49.559498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769512, 53.106728, 49.771553>,  <41.613934, 52.975552, 49.898785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769512, 53.106728, 49.771553>,  <42.028812, 53.325352, 49.559498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769512, 53.106728, 49.771553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753853, -0.362727, 0.547845,
		-0.107138, 0.754783, 0.647166,
		-0.648249, -0.546563, 0.530134,
		41.575039, 52.942760, 49.930592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779678, 53.646492, 49.541332>,  <42.028812, 53.325352, 49.559498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779678, 53.646492, 49.541332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838234, 53.535259, 49.161598>,  <42.873367, 53.468521, 48.933758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838234, 53.535259, 49.161598>,  <42.779678, 53.646492, 49.541332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838234, 53.535259, 49.161598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872173, 0.489119, -0.008784,
		0.466781, -0.826700, 0.314137,
		0.146389, -0.278082, -0.949337,
		42.882149, 53.451836, 48.876797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426643, 53.322891, 49.512363>,  <42.779678, 53.646492, 49.541332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426643, 53.322891, 49.512363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343357, 53.483231, 49.155495>,  <43.293385, 53.579433, 48.941376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343357, 53.483231, 49.155495>,  <43.426643, 53.322891, 49.512363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343357, 53.483231, 49.155495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955158, 0.279663, -0.097268,
		0.210517, -0.872415, -0.441106,
		-0.208219, 0.400850, -0.892168,
		43.280891, 53.603485, 48.887844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899010, 52.999863, 49.041439>,  <43.426643, 53.322891, 49.512363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899010, 52.999863, 49.041439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783146, 53.369255, 48.940819>,  <43.713627, 53.590889, 48.880447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783146, 53.369255, 48.940819>,  <43.899010, 52.999863, 49.041439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783146, 53.369255, 48.940819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949170, 0.310978, 0.048665,
		0.123169, -0.224672, -0.966619,
		-0.289664, 0.923480, -0.251555,
		43.696247, 53.646297, 48.865353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609924, 52.748009, 48.844582>,  <43.899010, 52.999863, 49.041439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609924, 52.748009, 48.844582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460983, 52.541313, 49.152954>,  <44.371620, 52.417297, 49.337978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460983, 52.541313, 49.152954>,  <44.609924, 52.748009, 48.844582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460983, 52.541313, 49.152954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544452, -0.794333, -0.269457,
		0.751615, 0.319402, 0.577112,
		-0.372354, -0.516737, 0.770931,
		44.349277, 52.386292, 49.384235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184277, 52.530575, 49.102135>,  <44.609924, 52.748009, 48.844582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184277, 52.530575, 49.102135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875931, 52.303280, 49.217285>,  <44.690922, 52.166904, 49.286377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875931, 52.303280, 49.217285>,  <45.184277, 52.530575, 49.102135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875931, 52.303280, 49.217285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547762, -0.822005, -0.155769,
		0.325151, 0.037612, 0.944914,
		-0.770865, -0.568237, 0.287878,
		44.644672, 52.132809, 49.303650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189800, 52.356964, 49.816875>,  <45.184277, 52.530575, 49.102135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189800, 52.356964, 49.816875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060097, 52.099792, 49.539314>,  <44.982273, 51.945492, 49.372776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060097, 52.099792, 49.539314>,  <45.189800, 52.356964, 49.816875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060097, 52.099792, 49.539314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803442, -0.574382, 0.156738,
		-0.499336, -0.506686, 0.702804,
		-0.324262, -0.642927, -0.693902,
		44.962818, 51.906914, 49.331142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993881, 51.669144, 50.049992>,  <45.189800, 52.356964, 49.816875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993881, 51.669144, 50.049992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142769, 51.655067, 49.679001>,  <45.232101, 51.646622, 49.456406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142769, 51.655067, 49.679001>,  <44.993881, 51.669144, 50.049992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142769, 51.655067, 49.679001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790170, -0.512214, 0.336553,
		-0.486910, -0.858136, -0.162852,
		0.372223, -0.035191, -0.927476,
		45.254436, 51.644508, 49.400757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087383, 50.917545, 49.822704>,  <44.993881, 51.669144, 50.049992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087383, 50.917545, 49.822704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328491, 51.196198, 49.667076>,  <45.473156, 51.363388, 49.573700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328491, 51.196198, 49.667076>,  <45.087383, 50.917545, 49.822704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328491, 51.196198, 49.667076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792801, -0.467748, 0.390741,
		0.090213, -0.543984, -0.834232,
		0.602767, 0.696629, -0.389075,
		45.509323, 51.405186, 49.550354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619560, 50.614330, 49.456627>,  <45.087383, 50.917545, 49.822704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619560, 50.614330, 49.456627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758221, 50.968300, 49.581036>,  <45.841419, 51.180683, 49.655682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758221, 50.968300, 49.581036>,  <45.619560, 50.614330, 49.456627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758221, 50.968300, 49.581036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798634, -0.452358, 0.396932,
		0.491949, 0.110794, -0.863545,
		0.346654, 0.884928, 0.311021,
		45.862217, 51.233780, 49.674343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342754, 50.675705, 49.441483>,  <45.619560, 50.614330, 49.456627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342754, 50.675705, 49.441483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271694, 50.921265, 49.749134>,  <46.229057, 51.068600, 49.933727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271694, 50.921265, 49.749134>,  <46.342754, 50.675705, 49.441483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271694, 50.921265, 49.749134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624061, -0.534037, 0.570397,
		0.760913, 0.581315, -0.288243,
		-0.177647, 0.613904, 0.769132,
		46.218399, 51.105434, 49.979874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.983150, 50.938683, 49.500340>,  <46.342754, 50.675705, 49.441483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.983150, 50.938683, 49.500340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.760826, 50.913620, 49.831917>,  <46.627430, 50.898582, 50.030865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.760826, 50.913620, 49.831917>,  <46.983150, 50.938683, 49.500340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.760826, 50.913620, 49.831917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727474, -0.519235, 0.448528,
		0.402313, 0.852332, 0.334178,
		-0.555811, -0.062657, 0.828944,
		46.594082, 50.894821, 50.080601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.501633, 51.030674, 50.126762>,  <46.983150, 50.938683, 49.500340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.501633, 51.030674, 50.126762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.157486, 50.858818, 50.236439>,  <46.950996, 50.755703, 50.302242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.157486, 50.858818, 50.236439>,  <47.501633, 51.030674, 50.126762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.157486, 50.858818, 50.236439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486993, -0.534289, 0.690922,
		-0.150352, 0.727974, 0.668916,
		-0.860368, -0.429639, 0.274187,
		46.899376, 50.729927, 50.318695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.190281, 51.206551, 50.895374>,  <47.501633, 51.030674, 50.126762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.190281, 51.206551, 50.895374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.124489, 50.847542, 50.731720>,  <47.085014, 50.632137, 50.633526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.124489, 50.847542, 50.731720>,  <47.190281, 51.206551, 50.895374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.124489, 50.847542, 50.731720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456805, -0.436937, 0.774865,
		-0.874228, -0.059444, 0.481863,
		-0.164483, -0.897526, -0.409136,
		47.075146, 50.578285, 50.608978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.842735, 50.916363, 50.845318>,  <47.190281, 51.206551, 50.895374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.842735, 50.916363, 50.845318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.930561, 50.818722, 50.467491>,  <47.983257, 50.760136, 50.240795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.930561, 50.818722, 50.467491>,  <47.842735, 50.916363, 50.845318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.930561, 50.818722, 50.467491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974782, 0.015310, 0.222632,
		-0.039883, -0.969629, 0.241307,
		0.219565, -0.244101, -0.944566,
		47.996429, 50.745491, 50.184120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.069645, 50.246330, 50.791599>,  <47.842735, 50.916363, 50.845318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.069645, 50.246330, 50.791599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.239059, 50.525066, 50.560074>,  <48.340710, 50.692307, 50.421158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.239059, 50.525066, 50.560074>,  <48.069645, 50.246330, 50.791599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.239059, 50.525066, 50.560074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822284, -0.027651, 0.568405,
		0.380083, -0.716693, -0.584712,
		0.423540, 0.696840, -0.578816,
		48.366123, 50.734119, 50.386429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.732525, 49.983253, 50.395473>,  <48.069645, 50.246330, 50.791599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.732525, 49.983253, 50.395473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.710506, 50.375595, 50.470203>,  <48.697296, 50.611000, 50.515041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.710506, 50.375595, 50.470203>,  <48.732525, 49.983253, 50.395473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.710506, 50.375595, 50.470203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733060, -0.087340, 0.674533,
		0.677933, 0.174082, -0.714214,
		-0.055045, 0.980850, 0.186823,
		48.693993, 50.669849, 50.526249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.192623, 50.670021, 50.131828>,  <48.732525, 49.983253, 50.395473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.192623, 50.670021, 50.131828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.321819, 50.847855, 50.466019>,  <49.399338, 50.954556, 50.666534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.321819, 50.847855, 50.466019>,  <49.192623, 50.670021, 50.131828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.321819, 50.847855, 50.466019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121235, 0.856085, -0.502415,
		-0.938605, 0.263565, 0.222608,
		0.322990, 0.444582, 0.835479,
		49.418716, 50.981228, 50.716663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.844051, 51.352554, 50.333797>,  <49.192623, 50.670021, 50.131828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.844051, 51.352554, 50.333797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.221046, 51.325378, 50.464703>,  <49.447243, 51.309074, 50.543247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.221046, 51.325378, 50.464703>,  <48.844051, 51.352554, 50.333797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.221046, 51.325378, 50.464703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204007, 0.892514, -0.402245,
		-0.264759, 0.445875, 0.855043,
		0.942488, -0.067937, 0.327262,
		49.503792, 51.304996, 50.562881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.065483, 52.024193, 50.705547>,  <48.844051, 51.352554, 50.333797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.065483, 52.024193, 50.705547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.394348, 51.854572, 50.553635>,  <49.591667, 51.752800, 50.462486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.394348, 51.854572, 50.553635>,  <49.065483, 52.024193, 50.705547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.394348, 51.854572, 50.553635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357783, 0.903840, -0.234657,
		0.442764, 0.057049, 0.894821,
		0.822163, -0.424049, -0.379777,
		49.640999, 51.727356, 50.439701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.661198, 52.355091, 51.012848>,  <49.065483, 52.024193, 50.705547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.661198, 52.355091, 51.012848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.729218, 52.221046, 50.642166>,  <49.770031, 52.140621, 50.419758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.729218, 52.221046, 50.642166>,  <49.661198, 52.355091, 51.012848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.729218, 52.221046, 50.642166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229602, 0.927995, -0.293441,
		0.958314, -0.162873, 0.234749,
		0.170052, -0.335107, -0.926707,
		49.780231, 52.120514, 50.364155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.351616, 52.290001, 50.818401>,  <49.661198, 52.355091, 51.012848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.351616, 52.290001, 50.818401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.101604, 52.369827, 50.516537>,  <49.951595, 52.417725, 50.335419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.101604, 52.369827, 50.516537>,  <50.351616, 52.290001, 50.818401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.101604, 52.369827, 50.516537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457328, 0.877093, -0.146829,
		0.632603, -0.436899, -0.639479,
		-0.625032, 0.199567, -0.754658,
		49.914093, 52.429699, 50.290138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.651798, 52.176704, 50.067139>,  <50.351616, 52.290001, 50.818401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.651798, 52.176704, 50.067139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.391098, 52.457920, 50.180946>,  <50.234676, 52.626648, 50.249229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.391098, 52.457920, 50.180946>,  <50.651798, 52.176704, 50.067139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.391098, 52.457920, 50.180946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736874, 0.675787, 0.018122,
		-0.179532, 0.221464, -0.958500,
		-0.651755, 0.703040, 0.284517,
		50.195572, 52.668831, 50.266300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.907417, 52.841385, 49.756664>,  <50.651798, 52.176704, 50.067139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.907417, 52.841385, 49.756664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.687069, 52.923889, 50.080147>,  <50.554859, 52.973392, 50.274235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.687069, 52.923889, 50.080147>,  <50.907417, 52.841385, 49.756664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.687069, 52.923889, 50.080147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493065, 0.862231, 0.115950,
		-0.673371, 0.462616, -0.576678,
		-0.550870, 0.206262, 0.808702,
		50.521809, 52.985767, 50.322758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.584427, 53.571587, 49.947929>,  <50.907417, 52.841385, 49.756664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.584427, 53.571587, 49.947929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.671040, 53.405468, 50.301346>,  <50.723007, 53.305798, 50.513397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.671040, 53.405468, 50.301346>,  <50.584427, 53.571587, 49.947929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.671040, 53.405468, 50.301346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493973, 0.827219, 0.267766,
		-0.842084, 0.378466, 0.384262,
		0.216529, -0.415297, 0.883540,
		50.736000, 53.280880, 50.566406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.388599, 54.087822, 50.535496>,  <50.584427, 53.571587, 49.947929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.388599, 54.087822, 50.535496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.664581, 53.811165, 50.620911>,  <50.830170, 53.645172, 50.672161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.664581, 53.811165, 50.620911>,  <50.388599, 54.087822, 50.535496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.664581, 53.811165, 50.620911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534625, 0.685785, 0.493837,
		-0.487999, -0.226562, 0.842927,
		0.689952, -0.691642, 0.213537,
		50.871567, 53.603672, 50.684971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.666115, 53.766106, 51.096935>,  <50.388599, 54.087822, 50.535496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.666115, 53.766106, 51.096935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.574356, 53.427959, 51.289909>,  <50.519302, 53.225071, 51.405693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.574356, 53.427959, 51.289909>,  <50.666115, 53.766106, 51.096935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.574356, 53.427959, 51.289909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518349, -0.525617, -0.674567,
		0.823828, 0.095328, 0.558766,
		-0.229392, -0.845363, 0.482431,
		50.505539, 53.174351, 51.434639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.253986, 53.352192, 51.195755>,  <50.666115, 53.766106, 51.096935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.253986, 53.352192, 51.195755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.925446, 53.124699, 51.178154>,  <50.728321, 52.988205, 51.167595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.925446, 53.124699, 51.178154>,  <51.253986, 53.352192, 51.195755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.925446, 53.124699, 51.178154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483532, -0.653229, -0.582656,
		0.302630, -0.499839, 0.811527,
		-0.821347, -0.568729, -0.044001,
		50.679043, 52.954079, 51.164955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.410358, 52.643230, 51.378166>,  <51.253986, 53.352192, 51.195755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.410358, 52.643230, 51.378166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.101631, 52.631172, 51.124115>,  <50.916393, 52.623936, 50.971684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.101631, 52.631172, 51.124115>,  <51.410358, 52.643230, 51.378166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.101631, 52.631172, 51.124115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493479, -0.658294, -0.568444,
		-0.400962, -0.752158, 0.522962,
		-0.771822, -0.030146, -0.635125,
		50.870087, 52.622128, 50.933578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.168362, 52.413185, 51.612164>,  <51.410358, 52.643230, 51.378166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.168362, 52.413185, 51.612164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.960396, 52.746170, 51.688797>,  <51.835617, 52.945961, 51.734776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.960396, 52.746170, 51.688797>,  <52.168362, 52.413185, 51.612164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.960396, 52.746170, 51.688797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788993, 0.382026, 0.481192,
		0.327383, 0.401334, -0.855425,
		-0.519913, 0.832458, 0.191581,
		51.804420, 52.995907, 51.746273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.400791, 53.090782, 51.195408>,  <52.168362, 52.413185, 51.612164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.400791, 53.090782, 51.195408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.725739, 52.875839, 51.104805>,  <52.920708, 52.746872, 51.050442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.725739, 52.875839, 51.104805>,  <52.400791, 53.090782, 51.195408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.725739, 52.875839, 51.104805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290035, 0.709291, -0.642485,
		0.505903, 0.456239, 0.732058,
		0.812368, -0.537358, -0.226507,
		52.969448, 52.714630, 51.036854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.992531, 53.462406, 51.062489>,  <52.400791, 53.090782, 51.195408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.992531, 53.462406, 51.062489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.103596, 53.138992, 50.854961>,  <53.170235, 52.944942, 50.730446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.103596, 53.138992, 50.854961>,  <52.992531, 53.462406, 51.062489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.103596, 53.138992, 50.854961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352692, 0.588138, -0.727806,
		0.893596, 0.019099, 0.448467,
		0.277661, -0.808535, -0.518822,
		53.186893, 52.896431, 50.699314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.354263, 54.114250, 51.115303>,  <52.992531, 53.462406, 51.062489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.354263, 54.114250, 51.115303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.454987, 54.464497, 50.950432>,  <53.515423, 54.674644, 50.851509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.454987, 54.464497, 50.950432>,  <53.354263, 54.114250, 51.115303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.454987, 54.464497, 50.950432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320633, -0.326366, -0.889202,
		-0.913118, 0.356070, 0.198567,
		0.251813, 0.875614, -0.412178,
		53.530529, 54.727180, 50.826778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.578991, 54.657673, 51.521286>,  <53.354263, 54.114250, 51.115303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.578991, 54.657673, 51.521286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.940617, 54.814377, 51.452946>,  <54.157593, 54.908398, 51.411942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.940617, 54.814377, 51.452946>,  <53.578991, 54.657673, 51.521286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.940617, 54.814377, 51.452946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198383, -0.030574, 0.979648,
		0.378561, -0.919560, -0.105359,
		0.904066, 0.391758, -0.170851,
		54.211838, 54.931904, 51.401691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.146133, 54.170410, 51.774632>,  <53.578991, 54.657673, 51.521286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.146133, 54.170410, 51.774632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.249649, 54.556263, 51.754555>,  <54.311756, 54.787773, 51.742508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.249649, 54.556263, 51.754555>,  <54.146133, 54.170410, 51.774632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.249649, 54.556263, 51.754555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628291, -0.128634, 0.767271,
		0.733676, -0.230094, -0.639357,
		0.258787, 0.964630, -0.050190,
		54.327286, 54.845654, 51.739498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.882889, 54.066563, 51.800060>,  <54.146133, 54.170410, 51.774632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.882889, 54.066563, 51.800060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.806015, 54.457588, 51.834549>,  <54.759892, 54.692204, 51.855244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.806015, 54.457588, 51.834549>,  <54.882889, 54.066563, 51.800060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.806015, 54.457588, 51.834549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816256, 0.110457, 0.567033,
		0.544787, 0.179354, -0.819170,
		-0.192182, 0.977564, 0.086224,
		54.748360, 54.750858, 51.860416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.454388, 54.337662, 51.599876>,  <54.882889, 54.066563, 51.800060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.454388, 54.337662, 51.599876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.259705, 54.604164, 51.825874>,  <55.142895, 54.764065, 51.961472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.259705, 54.604164, 51.825874>,  <55.454388, 54.337662, 51.599876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.259705, 54.604164, 51.825874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829369, 0.149304, 0.538382,
		0.274347, 0.730620, -0.625243,
		-0.486704, 0.666260, 0.564993,
		55.113693, 54.804043, 51.995373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.592560, 55.074253, 51.536346>,  <55.454388, 54.337662, 51.599876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.592560, 55.074253, 51.536346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.520546, 54.936970, 51.905083>,  <55.477337, 54.854599, 52.126324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.520546, 54.936970, 51.905083>,  <55.592560, 55.074253, 51.536346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.520546, 54.936970, 51.905083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975791, 0.055995, 0.211417,
		-0.124178, 0.937588, 0.324820,
		-0.180034, -0.343210, 0.921843,
		55.466537, 54.834007, 52.181637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.759586, 55.556152, 52.025501>,  <55.592560, 55.074253, 51.536346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.759586, 55.556152, 52.025501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.828461, 55.187233, 52.163902>,  <55.869785, 54.965881, 52.246944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.828461, 55.187233, 52.163902>,  <55.759586, 55.556152, 52.025501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.828461, 55.187233, 52.163902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971221, 0.217627, 0.096791,
		-0.164570, 0.319382, 0.933226,
		0.172182, -0.922298, 0.346006,
		55.880116, 54.910545, 52.267704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.232136, 55.527748, 52.727432>,  <55.759586, 55.556152, 52.025501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.232136, 55.527748, 52.727432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.252907, 55.168938, 52.551868>,  <56.265369, 54.953651, 52.446529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.252907, 55.168938, 52.551868>,  <56.232136, 55.527748, 52.727432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.252907, 55.168938, 52.551868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959506, -0.077031, 0.270951,
		-0.276861, -0.435206, 0.856705,
		0.051926, -0.897030, -0.438909,
		56.268486, 54.899830, 52.420197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.383747, 55.017170, 53.261963>,  <56.232136, 55.527748, 52.727432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.383747, 55.017170, 53.261963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.526627, 54.888332, 52.911270>,  <56.612354, 54.811028, 52.700855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.526627, 54.888332, 52.911270>,  <56.383747, 55.017170, 53.261963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.526627, 54.888332, 52.911270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933899, 0.107479, 0.341002,
		-0.015605, -0.940586, 0.339198,
		0.357198, -0.322098, -0.876734,
		56.633785, 54.791702, 52.648251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.792992, 54.279129, 53.111729>,  <56.383747, 55.017170, 53.261963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.792992, 54.279129, 53.111729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.916008, 54.570866, 52.867275>,  <56.989819, 54.745907, 52.720604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.916008, 54.570866, 52.867275>,  <56.792992, 54.279129, 53.111729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.916008, 54.570866, 52.867275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912586, -0.044200, 0.406488,
		0.269454, -0.682725, -0.679177,
		0.307539, 0.729337, -0.611136,
		57.008270, 54.789665, 52.683933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.560955, 54.243027, 53.195011>,  <56.792992, 54.279129, 53.111729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.560955, 54.243027, 53.195011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.542458, 54.606842, 53.029800>,  <57.531357, 54.825130, 52.930672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.542458, 54.606842, 53.029800>,  <57.560955, 54.243027, 53.195011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.542458, 54.606842, 53.029800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881220, 0.231868, 0.411932,
		0.470439, -0.344919, -0.812231,
		-0.046247, 0.909543, -0.413029,
		57.528584, 54.879704, 52.905891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.281578, 54.366631, 53.148590>,  <57.560955, 54.243027, 53.195011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.281578, 54.366631, 53.148590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.105301, 54.725204, 53.129837>,  <57.999535, 54.940350, 53.118587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.105301, 54.725204, 53.129837>,  <58.281578, 54.366631, 53.148590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.105301, 54.725204, 53.129837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791240, 0.412583, 0.451348,
		0.423945, 0.161812, -0.891116,
		-0.440693, 0.896433, -0.046880,
		57.973091, 54.994133, 53.115772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.804211, 54.890648, 52.924740>,  <58.281578, 54.366631, 53.148590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.804211, 54.890648, 52.924740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.520691, 55.041874, 53.162952>,  <58.350578, 55.132610, 53.305882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.520691, 55.041874, 53.162952>,  <58.804211, 54.890648, 52.924740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.520691, 55.041874, 53.162952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704800, 0.414550, 0.575679,
		-0.029232, 0.827775, -0.560298,
		-0.708804, 0.378070, 0.595533,
		58.308048, 55.155296, 53.341614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.678898, 55.637611, 52.869343>,  <58.804211, 54.890648, 52.924740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.678898, 55.637611, 52.869343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.625450, 55.487091, 53.236069>,  <58.593380, 55.396778, 53.456104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.625450, 55.487091, 53.236069>,  <58.678898, 55.637611, 52.869343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.625450, 55.487091, 53.236069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712223, 0.606813, 0.352869,
		-0.689118, 0.700125, 0.186927,
		-0.133623, -0.376302, 0.916811,
		58.585361, 55.374199, 53.511112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.800911, 56.213341, 53.206749>,  <58.678898, 55.637611, 52.869343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.800911, 56.213341, 53.206749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.816696, 55.887260, 53.437881>,  <58.826168, 55.691612, 53.576561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.816696, 55.887260, 53.437881>,  <58.800911, 56.213341, 53.206749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.816696, 55.887260, 53.437881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846097, 0.334893, 0.414690,
		-0.531567, 0.472537, 0.702955,
		0.039458, -0.815203, 0.577830,
		58.828533, 55.642700, 53.611229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.794510, 56.439644, 53.855484>,  <58.800911, 56.213341, 53.206749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.794510, 56.439644, 53.855484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.996429, 56.099228, 53.797646>,  <59.117580, 55.894978, 53.762943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.996429, 56.099228, 53.797646>,  <58.794510, 56.439644, 53.855484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.996429, 56.099228, 53.797646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763960, 0.362445, 0.533853,
		-0.401923, -0.379954, 0.833123,
		0.504801, -0.851040, -0.144594,
		59.147869, 55.843918, 53.754269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.301273, 56.420113, 54.367443>,  <58.794510, 56.439644, 53.855484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.301273, 56.420113, 54.367443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.486885, 56.116581, 54.184639>,  <59.598251, 55.934464, 54.074959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.486885, 56.116581, 54.184639>,  <59.301273, 56.420113, 54.367443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.486885, 56.116581, 54.184639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872194, 0.301258, 0.385384,
		-0.154762, -0.577430, 0.801638,
		0.464032, -0.758827, -0.457008,
		59.626095, 55.888931, 54.047535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.628395, 56.013390, 54.961765>,  <59.301273, 56.420113, 54.367443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.628395, 56.013390, 54.961765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.787140, 56.079380, 54.600594>,  <59.882389, 56.118977, 54.383892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.787140, 56.079380, 54.600594>,  <59.628395, 56.013390, 54.961765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.787140, 56.079380, 54.600594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788332, 0.442598, 0.427364,
		0.470142, -0.881413, 0.045591,
		0.396862, 0.164980, -0.902929,
		59.906200, 56.128872, 54.329716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.357346, 56.074512, 55.016457>,  <59.628395, 56.013390, 54.961765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.357346, 56.074512, 55.016457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.282379, 56.244133, 54.662045>,  <60.237400, 56.345905, 54.449398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.282379, 56.244133, 54.662045>,  <60.357346, 56.074512, 55.016457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.282379, 56.244133, 54.662045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808287, 0.579132, 0.106197,
		0.558163, -0.696265, -0.451297,
		-0.187419, 0.424053, -0.886032,
		60.226154, 56.371349, 54.396236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.003197, 56.180027, 54.645241>,  <60.357346, 56.074512, 55.016457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.003197, 56.180027, 54.645241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.744492, 56.433098, 54.474869>,  <60.589268, 56.584942, 54.372646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.744492, 56.433098, 54.474869>,  <61.003197, 56.180027, 54.645241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.744492, 56.433098, 54.474869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679769, 0.731419, 0.054231,
		0.345841, -0.254456, -0.903131,
		-0.646767, 0.632676, -0.425926,
		60.550461, 56.622902, 54.347092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.145390, 55.806473, 55.353626>,  <61.003197, 56.180027, 54.645241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.145390, 55.806473, 55.353626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.141853, 55.408058, 55.318214>,  <61.139732, 55.169010, 55.296967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.141853, 55.408058, 55.318214>,  <61.145390, 55.806473, 55.353626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.141853, 55.408058, 55.318214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782960, -0.061965, 0.618978,
		-0.622009, -0.063846, 0.780403,
		-0.008839, -0.996034, -0.088532,
		61.139202, 55.109249, 55.291656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.058929, 55.513973, 56.030342>,  <61.145390, 55.806473, 55.353626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.058929, 55.513973, 56.030342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.233688, 55.243759, 55.792763>,  <61.338543, 55.081631, 55.650215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.233688, 55.243759, 55.792763>,  <61.058929, 55.513973, 56.030342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.233688, 55.243759, 55.792763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800306, -0.009524, 0.599517,
		-0.410650, -0.737268, 0.536473,
		0.436894, -0.675534, -0.593951,
		61.364758, 55.041100, 55.614578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.682606, 55.256783, 56.370171>,  <61.058929, 55.513973, 56.030342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.682606, 55.256783, 56.370171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.808792, 55.323921, 56.743759>,  <61.884502, 55.364204, 56.967915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.808792, 55.323921, 56.743759>,  <61.682606, 55.256783, 56.370171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.808792, 55.323921, 56.743759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947131, 0.116412, 0.298984,
		-0.058544, -0.978916, 0.195695,
		0.315462, 0.167845, 0.933976,
		61.903431, 55.374275, 57.023952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.191185, 54.890167, 56.735985>,  <61.682606, 55.256783, 56.370171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.191185, 54.890167, 56.735985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.355957, 55.146061, 56.995537>,  <61.454823, 55.299599, 57.151268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.355957, 55.146061, 56.995537>,  <61.191185, 54.890167, 56.735985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.355957, 55.146061, 56.995537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904902, 0.203538, 0.373797,
		0.107059, -0.741156, 0.662741,
		0.411935, 0.639734, 0.648883,
		61.479538, 55.337982, 57.190201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.990974, 54.730316, 57.403152>,  <61.191185, 54.890167, 56.735985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.990974, 54.730316, 57.403152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.089203, 55.115479, 57.358429>,  <61.148140, 55.346577, 57.331596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.089203, 55.115479, 57.358429>,  <60.990974, 54.730316, 57.403152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.089203, 55.115479, 57.358429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903777, 0.269131, 0.332799,
		0.350546, 0.019323, 0.936346,
		0.245570, 0.962910, -0.111807,
		61.162872, 55.404350, 57.324886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.380371, 55.280628, 57.619232>,  <60.990974, 54.730316, 57.403152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.380371, 55.280628, 57.619232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.524155, 55.491959, 57.926910>,  <60.610424, 55.618755, 58.111519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.524155, 55.491959, 57.926910>,  <60.380371, 55.280628, 57.619232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.524155, 55.491959, 57.926910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885798, 0.066088, -0.459341,
		-0.293515, 0.846467, -0.444232,
		0.359459, 0.528323, 0.769197,
		60.631992, 55.650455, 58.157669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.765007, 55.862343, 57.342625>,  <60.380371, 55.280628, 57.619232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.765007, 55.862343, 57.342625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.905891, 55.785240, 57.708969>,  <60.990421, 55.738979, 57.928776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.905891, 55.785240, 57.708969>,  <60.765007, 55.862343, 57.342625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.905891, 55.785240, 57.708969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926595, 0.209614, -0.312223,
		-0.131794, 0.958597, 0.252433,
		0.352210, -0.192754, 0.915857,
		61.011555, 55.727413, 57.983727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.284836, 56.444622, 57.429356>,  <60.765007, 55.862343, 57.342625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.284836, 56.444622, 57.429356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.366081, 56.087467, 57.590103>,  <61.414829, 55.873177, 57.686550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.366081, 56.087467, 57.590103>,  <61.284836, 56.444622, 57.429356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.366081, 56.087467, 57.590103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797356, -0.087380, -0.597150,
		0.568302, 0.441724, 0.694199,
		0.203116, -0.892885, 0.401870,
		61.427017, 55.819603, 57.710663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.923622, 56.382198, 57.906261>,  <61.284836, 56.444622, 57.429356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.923622, 56.382198, 57.906261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.829086, 56.047001, 57.709526>,  <61.772366, 55.845882, 57.591484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.829086, 56.047001, 57.709526>,  <61.923622, 56.382198, 57.906261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.829086, 56.047001, 57.709526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862464, 0.052223, -0.503417,
		0.447547, -0.543170, 0.710399,
		-0.236342, -0.837997, -0.491837,
		61.758183, 55.795601, 57.561974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.573025, 55.883915, 57.885769>,  <61.923622, 56.382198, 57.906261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.573025, 55.883915, 57.885769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.326141, 55.806137, 57.580811>,  <62.178013, 55.759472, 57.397835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.326141, 55.806137, 57.580811>,  <62.573025, 55.883915, 57.885769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.326141, 55.806137, 57.580811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752848, 0.135635, -0.644068,
		0.228643, -0.971491, 0.062673,
		-0.617205, -0.194445, -0.762397,
		62.140980, 55.747803, 57.352093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.319767, 56.011890, 58.260708>,  <62.573025, 55.883915, 57.885769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.319767, 56.011890, 58.260708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.432083, 56.394257, 58.226341>,  <63.499474, 56.623676, 58.205723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.432083, 56.394257, 58.226341>,  <63.319767, 56.011890, 58.260708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.432083, 56.394257, 58.226341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273585, -0.006084, -0.961829,
		-0.919949, 0.293582, 0.259815,
		0.280795, 0.955914, -0.085916,
		63.516323, 56.681030, 58.200565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.757435, 55.442112, 58.470722>,  <63.319767, 56.011890, 58.260708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.757435, 55.442112, 58.470722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.748344, 55.648937, 58.812981>,  <63.742889, 55.773033, 59.018333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.748344, 55.648937, 58.812981>,  <63.757435, 55.442112, 58.470722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.748344, 55.648937, 58.812981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934628, 0.314812, -0.165421,
		-0.354900, 0.795949, -0.490420,
		-0.022724, 0.517068, 0.855643,
		63.741528, 55.804058, 59.069672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.519394, 55.423656, 58.568642>,  <63.757435, 55.442112, 58.470722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.519394, 55.423656, 58.568642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.430260, 55.699802, 58.843956>,  <64.376778, 55.865490, 59.009144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.430260, 55.699802, 58.843956>,  <64.519394, 55.423656, 58.568642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.430260, 55.699802, 58.843956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959955, 0.278371, 0.031574,
		-0.169801, 0.667759, -0.724752,
		-0.222833, 0.690368, 0.688286,
		64.363411, 55.906914, 59.050442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.762306, 56.229954, 58.489281>,  <64.519394, 55.423656, 58.568642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.762306, 56.229954, 58.489281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.747948, 56.117989, 58.873024>,  <64.739334, 56.050808, 59.103268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.747948, 56.117989, 58.873024>,  <64.762306, 56.229954, 58.489281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.747948, 56.117989, 58.873024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983733, 0.159182, 0.083252,
		-0.176015, 0.946736, 0.269647,
		-0.035895, -0.279914, 0.959354,
		64.737183, 56.034016, 59.160831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.249786, 56.594997, 58.763111>,  <64.762306, 56.229954, 58.489281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.249786, 56.594997, 58.763111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.190399, 56.367580, 59.086769>,  <65.154762, 56.231129, 59.280964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.190399, 56.367580, 59.086769>,  <65.249786, 56.594997, 58.763111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.190399, 56.367580, 59.086769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984858, -0.010966, 0.173014,
		-0.089493, 0.822579, 0.561564,
		-0.148476, -0.568545, 0.809143,
		65.145859, 56.197018, 59.329514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.637650, 56.957310, 59.183567>,  <65.249786, 56.594997, 58.763111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.637650, 56.957310, 59.183567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.573799, 56.584267, 59.313034>,  <65.535484, 56.360439, 59.390713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.573799, 56.584267, 59.313034>,  <65.637650, 56.957310, 59.183567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.573799, 56.584267, 59.313034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962151, -0.073632, 0.262381,
		-0.220867, 0.353299, 0.909064,
		-0.159635, -0.932608, 0.323664,
		65.525909, 56.304485, 59.410133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.798630, 56.998497, 59.895264>,  <65.637650, 56.957310, 59.183567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.798630, 56.998497, 59.895264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.855446, 56.635422, 59.737312>,  <65.889534, 56.417576, 59.642540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.855446, 56.635422, 59.737312>,  <65.798630, 56.998497, 59.895264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.855446, 56.635422, 59.737312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987716, 0.103724, 0.116867,
		-0.065121, -0.406628, 0.911270,
		0.142042, -0.907687, -0.394878,
		65.898056, 56.363117, 59.618851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.291351, 56.548916, 60.353413>,  <65.798630, 56.998497, 59.895264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.291351, 56.548916, 60.353413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.298561, 56.468979, 59.961548>,  <66.302887, 56.421017, 59.726429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.298561, 56.468979, 59.961548>,  <66.291351, 56.548916, 60.353413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.298561, 56.468979, 59.961548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991350, 0.130968, -0.008475,
		0.129998, -0.971036, 0.200474,
		0.018026, -0.199841, -0.979662,
		66.303970, 56.409027, 59.667648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.561378, 55.953590, 60.221672>,  <66.291351, 56.548916, 60.353413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.561378, 55.953590, 60.221672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.637207, 56.201935, 59.917412>,  <66.682709, 56.350941, 59.734856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.637207, 56.201935, 59.917412>,  <66.561378, 55.953590, 60.221672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.637207, 56.201935, 59.917412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963274, 0.032432, 0.266553,
		0.190162, -0.783250, -0.591910,
		0.189581, 0.620860, -0.760652,
		66.694084, 56.388191, 59.689217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.339233, 55.841892, 60.037910>,  <66.561378, 55.953590, 60.221672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.339233, 55.841892, 60.037910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.222313, 56.211227, 59.938301>,  <67.152161, 56.432827, 59.878536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.222313, 56.211227, 59.938301>,  <67.339233, 55.841892, 60.037910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.222313, 56.211227, 59.938301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882050, 0.360912, 0.302870,
		0.369527, -0.131124, -0.919922,
		-0.292297, 0.923336, -0.249025,
		67.134621, 56.488228, 59.863594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.935265, 56.069889, 59.601669>,  <67.339233, 55.841892, 60.037910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.935265, 56.069889, 59.601669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.738419, 56.368721, 59.780426>,  <67.620316, 56.548019, 59.887680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.738419, 56.368721, 59.780426>,  <67.935265, 56.069889, 59.601669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.738419, 56.368721, 59.780426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868354, 0.384950, 0.312689,
		0.061574, 0.541933, -0.838163,
		-0.492107, 0.747076, 0.446887,
		67.590790, 56.592842, 59.914494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.086624, 56.748104, 59.430264>,  <67.935265, 56.069889, 59.601669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.086624, 56.748104, 59.430264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.999474, 56.719353, 59.819595>,  <67.947182, 56.702103, 60.053192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.999474, 56.719353, 59.819595>,  <68.086624, 56.748104, 59.430264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.999474, 56.719353, 59.819595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926638, 0.297845, 0.229414,
		-0.306391, 0.951904, 0.001711,
		-0.217871, -0.071876, 0.973327,
		67.934113, 56.697788, 60.111595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.452080, 57.306358, 59.642769>,  <68.086624, 56.748104, 59.430264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.452080, 57.306358, 59.642769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.395432, 57.060760, 59.953369>,  <68.361443, 56.913403, 60.139729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.395432, 57.060760, 59.953369>,  <68.452080, 57.306358, 59.642769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.395432, 57.060760, 59.953369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880388, 0.280530, 0.382388,
		-0.452616, 0.737777, 0.500823,
		-0.141622, -0.613993, 0.776502,
		68.352943, 56.876564, 60.186321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.342712, 57.278202, 59.644917>,  <68.452080, 57.306358, 59.642769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.342712, 57.278202, 59.644917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.497375, 56.952049, 59.472565>,  <69.590172, 56.756359, 59.369156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.497375, 56.952049, 59.472565>,  <69.342712, 57.278202, 59.644917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.497375, 56.952049, 59.472565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921774, 0.356308, 0.152895,
		0.028857, -0.456287, 0.889365,
		0.386652, -0.815381, -0.430876,
		69.613373, 56.707436, 59.343304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.810387, 56.812042, 60.139225>,  <69.342712, 57.278202, 59.644917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.810387, 56.812042, 60.139225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.892075, 56.837139, 59.748459>,  <69.941086, 56.852196, 59.514000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.892075, 56.837139, 59.748459>,  <69.810387, 56.812042, 60.139225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.892075, 56.837139, 59.748459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865493, 0.454716, 0.210132,
		0.457401, -0.888424, 0.038565,
		0.204222, 0.062737, -0.976912,
		69.953339, 56.855961, 59.455383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.416893, 56.466103, 59.872852>,  <69.810387, 56.812042, 60.139225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.416893, 56.466103, 59.872852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.368179, 56.792168, 59.646339>,  <70.338951, 56.987808, 59.510433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.368179, 56.792168, 59.646339>,  <70.416893, 56.466103, 59.872852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.368179, 56.792168, 59.646339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835759, 0.391983, 0.384519,
		0.535419, -0.426444, -0.729021,
		-0.121788, 0.815165, -0.566280,
		70.331642, 57.036716, 59.476456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.038727, 56.614334, 59.729073>,  <70.416893, 56.466103, 59.872852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.038727, 56.614334, 59.729073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.824577, 56.949547, 59.686958>,  <70.696091, 57.150673, 59.661690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.824577, 56.949547, 59.686958>,  <71.038727, 56.614334, 59.729073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.824577, 56.949547, 59.686958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746563, 0.527821, 0.405030,
		0.395000, 0.138237, -0.908221,
		-0.535368, 0.838031, -0.105286,
		70.663963, 57.200954, 59.655373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.397415, 57.241283, 59.956284>,  <71.038727, 56.614334, 59.729073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.397415, 57.241283, 59.956284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.155312, 57.533615, 59.830078>,  <71.010048, 57.709015, 59.754353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.155312, 57.533615, 59.830078>,  <71.397415, 57.241283, 59.956284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.155312, 57.533615, 59.830078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722457, 0.670754, 0.167765,
		0.334241, -0.126406, -0.933972,
		-0.605259, 0.730829, -0.315516,
		70.973732, 57.752865, 59.735424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.861526, 57.721920, 60.031700>,  <71.397415, 57.241283, 59.956284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.861526, 57.721920, 60.031700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.572746, 57.918503, 59.836868>,  <71.399475, 58.036453, 59.719971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.572746, 57.918503, 59.836868>,  <71.861526, 57.721920, 60.031700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.572746, 57.918503, 59.836868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574941, 0.817747, -0.027089,
		0.384991, -0.299596, -0.872940,
		-0.721959, 0.491460, -0.487075,
		71.356155, 58.065941, 59.690746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.434776, 58.287170, 59.870338>,  <71.861526, 57.721920, 60.031700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.434776, 58.287170, 59.870338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.612724, 58.074608, 60.158699>,  <72.719490, 57.947071, 60.331715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.612724, 58.074608, 60.158699>,  <72.434776, 58.287170, 59.870338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.612724, 58.074608, 60.158699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072038, -0.823564, -0.562630,
		0.892696, 0.198363, -0.404656,
		0.444865, -0.531408, 0.720902,
		72.746185, 57.915184, 60.374969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.907280, 57.830082, 59.522606>,  <72.434776, 58.287170, 59.870338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.907280, 57.830082, 59.522606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.808571, 57.678471, 59.879356>,  <72.749344, 57.587505, 60.093407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.808571, 57.678471, 59.879356>,  <72.907280, 57.830082, 59.522606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.808571, 57.678471, 59.879356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287678, -0.850198, -0.440913,
		0.925387, -0.365382, 0.100776,
		-0.246781, -0.379024, 0.891875,
		72.734535, 57.564762, 60.146919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.185783, 57.207733, 60.020714>,  <72.907280, 57.830082, 59.522606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.185783, 57.207733, 60.020714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.790024, 57.265213, 60.029274>,  <72.552567, 57.299702, 60.034409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.790024, 57.265213, 60.029274>,  <73.185783, 57.207733, 60.020714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.790024, 57.265213, 60.029274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139861, -0.902229, -0.407949,
		-0.039315, -0.406613, 0.912754,
		-0.989390, 0.143697, 0.021399,
		72.493210, 57.308323, 60.035694>
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
