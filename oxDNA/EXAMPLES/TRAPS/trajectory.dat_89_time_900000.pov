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
	<36.174759, 52.475880, 49.649334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964832, 52.791145, 49.520729>,  <35.838879, 52.980305, 49.443565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964832, 52.791145, 49.520729>,  <36.174759, 52.475880, 49.649334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964832, 52.791145, 49.520729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500672, 0.591286, 0.632225,
		0.688402, 0.170827, -0.704926,
		-0.524814, 0.788162, -0.321514,
		35.807388, 53.027596, 49.424274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648098, 52.998459, 49.798084>,  <36.174759, 52.475880, 49.649334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648098, 52.998459, 49.798084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302368, 53.184349, 49.721161>,  <36.094933, 53.295883, 49.675007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302368, 53.184349, 49.721161>,  <36.648098, 52.998459, 49.798084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302368, 53.184349, 49.721161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332812, 0.815158, 0.474081,
		0.377077, 0.345756, -0.859224,
		-0.864320, 0.464725, -0.192305,
		36.043072, 53.323765, 49.663471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270348, 52.954838, 50.369282>,  <36.648098, 52.998459, 49.798084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270348, 52.954838, 50.369282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645840, 52.963070, 50.231667>,  <37.871136, 52.968010, 50.149097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645840, 52.963070, 50.231667>,  <37.270348, 52.954838, 50.369282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645840, 52.963070, 50.231667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231136, -0.778063, 0.584118,
		-0.255660, -0.627848, -0.735149,
		0.938730, 0.020584, -0.344038,
		37.927460, 52.969246, 50.128456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462555, 52.410549, 49.887005>,  <37.270348, 52.954838, 50.369282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462555, 52.410549, 49.887005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790428, 52.506420, 50.095108>,  <37.987152, 52.563942, 50.219971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790428, 52.506420, 50.095108>,  <37.462555, 52.410549, 49.887005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790428, 52.506420, 50.095108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041645, -0.880914, 0.471441,
		0.571300, -0.408099, -0.712090,
		0.819685, 0.239679, 0.520261,
		38.036335, 52.578323, 50.251186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938313, 51.863167, 49.890076>,  <37.462555, 52.410549, 49.887005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938313, 51.863167, 49.890076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038227, 52.077583, 50.212631>,  <38.098175, 52.206234, 50.406166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038227, 52.077583, 50.212631>,  <37.938313, 51.863167, 49.890076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038227, 52.077583, 50.212631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072732, -0.840824, 0.536400,
		0.965566, -0.075334, -0.249012,
		0.249785, 0.536041, 0.806392,
		38.113163, 52.238396, 50.454548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013447, 51.285599, 50.246197>,  <37.938313, 51.863167, 49.890076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013447, 51.285599, 50.246197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110275, 51.598312, 50.476051>,  <38.168373, 51.785942, 50.613964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110275, 51.598312, 50.476051>,  <38.013447, 51.285599, 50.246197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110275, 51.598312, 50.476051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341401, -0.623010, 0.703778,
		0.908212, 0.025821, -0.417714,
		0.242067, 0.781788, 0.574641,
		38.182896, 51.832848, 50.648445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730370, 51.281231, 50.270752>,  <38.013447, 51.285599, 50.246197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730370, 51.281231, 50.270752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505787, 51.431366, 50.565750>,  <38.371037, 51.521446, 50.742748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505787, 51.431366, 50.565750>,  <38.730370, 51.281231, 50.270752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505787, 51.431366, 50.565750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164852, -0.822624, 0.544163,
		0.810920, 0.427100, 0.399992,
		-0.561455, 0.375333, 0.737491,
		38.337349, 51.543964, 50.786999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343147, 50.919861, 50.499611>,  <38.730370, 51.281231, 50.270752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343147, 50.919861, 50.499611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725689, 50.842018, 50.586800>,  <39.955215, 50.795311, 50.639111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725689, 50.842018, 50.586800>,  <39.343147, 50.919861, 50.499611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725689, 50.842018, 50.586800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288433, 0.748128, -0.597589,
		-0.046774, 0.634377, 0.771608,
		0.956357, -0.194605, 0.217968,
		40.012596, 50.783638, 50.652191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754593, 51.500244, 50.907787>,  <39.343147, 50.919861, 50.499611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754593, 51.500244, 50.907787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929089, 51.260246, 50.639549>,  <40.033787, 51.116245, 50.478607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929089, 51.260246, 50.639549>,  <39.754593, 51.500244, 50.907787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929089, 51.260246, 50.639549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202945, 0.791650, -0.576285,
		0.876648, 0.115301, 0.467112,
		0.436236, -0.599997, -0.670598,
		40.059959, 51.080246, 50.438370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460514, 51.550655, 50.923206>,  <39.754593, 51.500244, 50.907787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460514, 51.550655, 50.923206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292278, 51.483696, 50.566536>,  <40.191338, 51.443520, 50.352535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292278, 51.483696, 50.566536>,  <40.460514, 51.550655, 50.923206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292278, 51.483696, 50.566536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116500, 0.964728, -0.236067,
		0.899740, -0.203168, -0.386252,
		-0.420589, -0.167401, -0.891674,
		40.166103, 51.433475, 50.299034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463898, 51.718624, 51.602997>,  <40.460514, 51.550655, 50.923206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463898, 51.718624, 51.602997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198788, 51.507545, 51.815510>,  <40.039722, 51.380898, 51.943016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198788, 51.507545, 51.815510>,  <40.463898, 51.718624, 51.602997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198788, 51.507545, 51.815510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742340, -0.369928, 0.558645,
		-0.098260, 0.764650, 0.636911,
		-0.662779, -0.527698, 0.531281,
		39.999954, 51.349236, 51.974895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412037, 51.892380, 52.361294>,  <40.463898, 51.718624, 51.602997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412037, 51.892380, 52.361294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371918, 51.530960, 52.194664>,  <40.347847, 51.314106, 52.094685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371918, 51.530960, 52.194664>,  <40.412037, 51.892380, 52.361294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371918, 51.530960, 52.194664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721753, -0.354263, 0.594617,
		-0.684844, -0.241024, 0.687674,
		-0.100301, -0.903551, -0.416575,
		40.341827, 51.259895, 52.069691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683544, 51.389576, 52.747597>,  <40.412037, 51.892380, 52.361294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683544, 51.389576, 52.747597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676178, 51.156761, 52.422417>,  <40.671757, 51.017071, 52.227306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676178, 51.156761, 52.422417>,  <40.683544, 51.389576, 52.747597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676178, 51.156761, 52.422417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912778, -0.341618, 0.223906,
		-0.408041, -0.737921, 0.537564,
		-0.018417, -0.582039, -0.812952,
		40.670654, 50.982151, 52.178532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003311, 50.765900, 52.929607>,  <40.683544, 51.389576, 52.747597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003311, 50.765900, 52.929607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055786, 50.802395, 52.534748>,  <41.087269, 50.824291, 52.297832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055786, 50.802395, 52.534748>,  <41.003311, 50.765900, 52.929607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055786, 50.802395, 52.534748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951051, -0.292632, 0.099341,
		-0.279808, -0.951862, -0.125161,
		0.131186, 0.091238, -0.987150,
		41.095142, 50.829765, 52.238602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202354, 50.064541, 52.703758>,  <41.003311, 50.765900, 52.929607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202354, 50.064541, 52.703758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368290, 50.349251, 52.477032>,  <41.467854, 50.520077, 52.340996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368290, 50.349251, 52.477032>,  <41.202354, 50.064541, 52.703758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368290, 50.349251, 52.477032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899953, -0.412802, 0.140285,
		-0.134133, -0.568307, -0.811810,
		0.414841, 0.711774, -0.566820,
		41.492741, 50.562782, 52.306984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701851, 49.771477, 52.208965>,  <41.202354, 50.064541, 52.703758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701851, 49.771477, 52.208965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802265, 50.154900, 52.262867>,  <41.862514, 50.384953, 52.295208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802265, 50.154900, 52.262867>,  <41.701851, 49.771477, 52.208965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802265, 50.154900, 52.262867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959786, -0.264559, 0.093911,
		0.125668, 0.105756, -0.986419,
		0.251034, 0.958553, 0.134750,
		41.877575, 50.442467, 52.303291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336891, 49.872498, 52.020916>,  <41.701851, 49.771477, 52.208965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336891, 49.872498, 52.020916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309284, 50.226559, 52.204979>,  <42.292721, 50.438995, 52.315414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309284, 50.226559, 52.204979>,  <42.336891, 49.872498, 52.020916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309284, 50.226559, 52.204979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988473, -0.001621, 0.151386,
		0.134746, 0.465300, -0.874837,
		-0.069022, 0.885152, 0.460155,
		42.288578, 50.492104, 52.343025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833115, 50.276375, 51.712353>,  <42.336891, 49.872498, 52.020916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833115, 50.276375, 51.712353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815380, 50.424435, 52.083519>,  <42.804741, 50.513271, 52.306217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815380, 50.424435, 52.083519>,  <42.833115, 50.276375, 51.712353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815380, 50.424435, 52.083519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999015, 0.018229, 0.040459,
		-0.001939, 0.928794, -0.370592,
		-0.044334, 0.370148, 0.927914,
		42.802078, 50.535480, 52.361893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520874, 50.662724, 51.862171>,  <42.833115, 50.276375, 51.712353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520874, 50.662724, 51.862171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347488, 50.596863, 52.216572>,  <43.243458, 50.557346, 52.429211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347488, 50.596863, 52.216572>,  <43.520874, 50.662724, 51.862171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347488, 50.596863, 52.216572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900438, -0.118744, 0.418463,
		0.036309, 0.979179, 0.199726,
		-0.433467, -0.164647, 0.886001,
		43.217449, 50.547470, 52.482372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.815800, 51.045685, 52.375652>,  <43.520874, 50.662724, 51.862171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.815800, 51.045685, 52.375652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654285, 50.754463, 52.597244>,  <43.557377, 50.579731, 52.730198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654285, 50.754463, 52.597244>,  <43.815800, 51.045685, 52.375652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654285, 50.754463, 52.597244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804680, 0.005447, 0.593684,
		-0.435253, 0.685497, 0.583652,
		-0.403789, -0.728055, 0.553976,
		43.533150, 50.536045, 52.763435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556030, 50.809505, 52.296352>,  <43.815800, 51.045685, 52.375652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556030, 50.809505, 52.296352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754803, 51.140987, 52.193356>,  <44.874065, 51.339878, 52.131557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754803, 51.140987, 52.193356>,  <44.556030, 50.809505, 52.296352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754803, 51.140987, 52.193356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570866, -0.088698, 0.816238,
		0.653583, -0.552610, -0.517157,
		0.496932, 0.828707, -0.257495,
		44.903881, 51.389599, 52.116108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.214268, 50.763172, 52.045128>,  <44.556030, 50.809505, 52.296352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.214268, 50.763172, 52.045128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156803, 51.100380, 52.252464>,  <45.122326, 51.302704, 52.376865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156803, 51.100380, 52.252464>,  <45.214268, 50.763172, 52.045128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156803, 51.100380, 52.252464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547136, -0.368789, 0.751423,
		0.824624, 0.391552, -0.408267,
		-0.143657, 0.843019, 0.518344,
		45.113705, 51.353287, 52.407967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835506, 50.916222, 52.332050>,  <45.214268, 50.763172, 52.045128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835506, 50.916222, 52.332050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570133, 51.116066, 52.554852>,  <45.410912, 51.235973, 52.688534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570133, 51.116066, 52.554852>,  <45.835506, 50.916222, 52.332050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570133, 51.116066, 52.554852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461214, -0.313126, 0.830201,
		0.589187, 0.807678, -0.022689,
		-0.663431, 0.499608, 0.557002,
		45.371105, 51.265949, 52.721951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152077, 51.512058, 52.689163>,  <45.835506, 50.916222, 52.332050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152077, 51.512058, 52.689163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849598, 51.291805, 52.830566>,  <45.668110, 51.159653, 52.915409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849598, 51.291805, 52.830566>,  <46.152077, 51.512058, 52.689163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849598, 51.291805, 52.830566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564999, -0.276935, 0.777228,
		-0.330068, 0.787470, 0.520524,
		-0.756196, -0.550634, 0.353512,
		45.622738, 51.126614, 52.936619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967506, 51.643265, 53.356831>,  <46.152077, 51.512058, 52.689163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.967506, 51.643265, 53.356831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911888, 51.256714, 53.270321>,  <45.878517, 51.024784, 53.218414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911888, 51.256714, 53.270321>,  <45.967506, 51.643265, 53.356831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911888, 51.256714, 53.270321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552645, -0.256948, 0.792819,
		-0.821737, -0.009288, 0.569792,
		-0.139043, -0.966380, -0.216277,
		45.870174, 50.966801, 53.205437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564648, 51.310856, 53.384102>,  <45.967506, 51.643265, 53.356831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564648, 51.310856, 53.384102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748821, 51.203949, 53.045502>,  <46.859325, 51.139805, 52.842342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748821, 51.203949, 53.045502>,  <46.564648, 51.310856, 53.384102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748821, 51.203949, 53.045502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860041, 0.370466, 0.350833,
		0.219834, -0.889564, 0.400437,
		0.460437, -0.267267, -0.846502,
		46.886951, 51.123768, 52.791550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.213024, 50.874310, 53.554039>,  <46.564648, 51.310856, 53.384102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.213024, 50.874310, 53.554039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231556, 51.053123, 53.196712>,  <47.242676, 51.160412, 52.982315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231556, 51.053123, 53.196712>,  <47.213024, 50.874310, 53.554039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.231556, 51.053123, 53.196712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901415, 0.366662, 0.230241,
		0.430471, -0.815915, -0.385976,
		0.046334, 0.447036, -0.893315,
		47.245457, 51.187233, 52.928719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.852245, 50.688599, 53.168839>,  <47.213024, 50.874310, 53.554039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.852245, 50.688599, 53.168839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.736210, 51.062088, 53.084930>,  <47.666588, 51.286182, 53.034588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.736210, 51.062088, 53.084930>,  <47.852245, 50.688599, 53.168839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.736210, 51.062088, 53.084930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944212, 0.314967, 0.096221,
		0.155914, -0.170152, -0.973005,
		-0.290092, 0.933726, -0.209767,
		47.649181, 51.342205, 53.021999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.323376, 51.047974, 52.621456>,  <47.852245, 50.688599, 53.168839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.323376, 51.047974, 52.621456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.149826, 51.323654, 52.853577>,  <48.045696, 51.489063, 52.992851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.149826, 51.323654, 52.853577>,  <48.323376, 51.047974, 52.621456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.149826, 51.323654, 52.853577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899598, 0.366945, 0.236800,
		-0.049737, 0.624783, -0.779213,
		-0.433877, 0.689201, 0.580304,
		48.019665, 51.530415, 53.027668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.598969, 51.662354, 52.402760>,  <48.323376, 51.047974, 52.621456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.598969, 51.662354, 52.402760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.477329, 51.681812, 52.783318>,  <48.404346, 51.693485, 53.011654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.477329, 51.681812, 52.783318>,  <48.598969, 51.662354, 52.402760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.477329, 51.681812, 52.783318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879373, 0.398420, 0.260701,
		-0.366374, 0.915912, -0.163934,
		-0.304094, 0.048645, 0.951399,
		48.386101, 51.696407, 53.068737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.951851, 52.321129, 52.465107>,  <48.598969, 51.662354, 52.402760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.951851, 52.321129, 52.465107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.803448, 52.136227, 52.787270>,  <48.714405, 52.025284, 52.980568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.803448, 52.136227, 52.787270>,  <48.951851, 52.321129, 52.465107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.803448, 52.136227, 52.787270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745045, 0.369537, 0.555293,
		-0.554314, 0.806078, 0.207302,
		-0.371004, -0.462256, 0.805404,
		48.692146, 51.997551, 53.028893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.741764, 52.787502, 53.017670>,  <48.951851, 52.321129, 52.465107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.741764, 52.787502, 53.017670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.862118, 52.433975, 53.160965>,  <48.934330, 52.221859, 53.246941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.862118, 52.433975, 53.160965>,  <48.741764, 52.787502, 53.017670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.862118, 52.433975, 53.160965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747217, 0.451892, 0.487299,
		-0.592569, 0.121061, 0.796371,
		0.300881, -0.883820, 0.358236,
		48.952381, 52.168831, 53.268436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.881317, 52.803848, 53.758106>,  <48.741764, 52.787502, 53.017670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.881317, 52.803848, 53.758106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.103825, 52.498569, 53.626595>,  <49.237328, 52.315403, 53.547688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.103825, 52.498569, 53.626595>,  <48.881317, 52.803848, 53.758106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.103825, 52.498569, 53.626595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753650, 0.296637, 0.586532,
		-0.350114, -0.574049, 0.740194,
		0.556267, -0.763200, -0.328775,
		49.270706, 52.269611, 53.527962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.243679, 52.578224, 54.329353>,  <48.881317, 52.803848, 53.758106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.243679, 52.578224, 54.329353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.462933, 52.423470, 54.032742>,  <49.594486, 52.330616, 53.854774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.462933, 52.423470, 54.032742>,  <49.243679, 52.578224, 54.329353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.462933, 52.423470, 54.032742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835371, 0.209495, 0.508199,
		-0.041266, -0.898016, 0.438023,
		0.548135, -0.386883, -0.741532,
		49.627373, 52.307404, 53.810284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.850155, 52.314690, 54.647831>,  <49.243679, 52.578224, 54.329353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.850155, 52.314690, 54.647831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.951344, 52.388901, 54.268024>,  <50.012058, 52.433426, 54.040138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.951344, 52.388901, 54.268024>,  <49.850155, 52.314690, 54.647831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.951344, 52.388901, 54.268024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953627, 0.117634, 0.277052,
		0.163095, -0.975573, -0.147162,
		0.252973, 0.185524, -0.949518,
		50.027237, 52.444557, 53.983170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.561085, 51.963089, 54.528130>,  <49.850155, 52.314690, 54.647831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.561085, 51.963089, 54.528130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.513889, 52.220970, 54.226021>,  <50.485573, 52.375698, 54.044758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.513889, 52.220970, 54.226021>,  <50.561085, 51.963089, 54.528130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.513889, 52.220970, 54.226021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992764, 0.059495, -0.104304,
		-0.022311, -0.762111, -0.647062,
		-0.117988, 0.644708, -0.755269,
		50.478493, 52.414383, 53.999439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.920429, 51.781345, 53.924625>,  <50.561085, 51.963089, 54.528130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.920429, 51.781345, 53.924625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.889088, 52.179928, 53.912354>,  <50.870281, 52.419075, 53.904991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.889088, 52.179928, 53.912354>,  <50.920429, 51.781345, 53.924625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.889088, 52.179928, 53.912354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970223, 0.069146, -0.232134,
		-0.229189, -0.047952, -0.972200,
		-0.078355, 0.996453, -0.030677,
		50.865582, 52.478863, 53.903149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.001900, 52.071404, 53.218292>,  <50.920429, 51.781345, 53.924625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.001900, 52.071404, 53.218292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.122139, 52.347637, 53.481422>,  <51.194283, 52.513378, 53.639301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.122139, 52.347637, 53.481422>,  <51.001900, 52.071404, 53.218292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.122139, 52.347637, 53.481422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946076, -0.128590, -0.297330,
		-0.120742, 0.711729, -0.691999,
		0.300603, 0.690584, 0.657824,
		51.212318, 52.554813, 53.678768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.299599, 52.712330, 52.887695>,  <51.001900, 52.071404, 53.218292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.299599, 52.712330, 52.887695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.475437, 52.638702, 53.239349>,  <51.580940, 52.594524, 53.450340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.475437, 52.638702, 53.239349>,  <51.299599, 52.712330, 52.887695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.475437, 52.638702, 53.239349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878526, -0.115602, -0.463496,
		0.186944, 0.976092, 0.110890,
		0.439595, -0.184067, 0.879133,
		51.607315, 52.583481, 53.503090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.995617, 53.058071, 52.989712>,  <51.299599, 52.712330, 52.887695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.995617, 53.058071, 52.989712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.000504, 52.728451, 53.216263>,  <52.003437, 52.530678, 53.352196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.000504, 52.728451, 53.216263>,  <51.995617, 53.058071, 52.989712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.000504, 52.728451, 53.216263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965015, -0.138643, -0.222539,
		0.261908, 0.549284, 0.793531,
		0.012220, -0.824054, 0.566379,
		52.004169, 52.481236, 53.386177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.640457, 53.134571, 53.220894>,  <51.995617, 53.058071, 52.989712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.640457, 53.134571, 53.220894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.548000, 52.746571, 53.250999>,  <52.492527, 52.513771, 53.269062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.548000, 52.746571, 53.250999>,  <52.640457, 53.134571, 53.220894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.548000, 52.746571, 53.250999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954627, -0.241044, -0.174890,
		0.187786, 0.031425, 0.981707,
		-0.231139, -0.970005, 0.075264,
		52.478661, 52.455570, 53.273579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.113079, 52.898167, 53.629517>,  <52.640457, 53.134571, 53.220894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.113079, 52.898167, 53.629517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.990158, 52.572853, 53.431873>,  <52.916405, 52.377666, 53.313290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.990158, 52.572853, 53.431873>,  <53.113079, 52.898167, 53.629517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.990158, 52.572853, 53.431873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950695, -0.239573, -0.196935,
		0.041789, -0.530262, 0.846803,
		-0.307298, -0.813282, -0.494106,
		52.897968, 52.328869, 53.283642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.507092, 52.373829, 53.980549>,  <53.113079, 52.898167, 53.629517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.507092, 52.373829, 53.980549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.398682, 52.230911, 53.623028>,  <53.333637, 52.145161, 53.408516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.398682, 52.230911, 53.623028>,  <53.507092, 52.373829, 53.980549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.398682, 52.230911, 53.623028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937421, -0.308853, -0.160787,
		-0.218607, -0.881450, 0.418637,
		-0.271022, -0.357290, -0.893807,
		53.317375, 52.123726, 53.354885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.248856, 52.289169, 53.920242>,  <53.507092, 52.373829, 53.980549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.248856, 52.289169, 53.920242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.066856, 52.230598, 53.568893>,  <53.957657, 52.195454, 53.358086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.066856, 52.230598, 53.568893>,  <54.248856, 52.289169, 53.920242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.066856, 52.230598, 53.568893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889262, -0.022901, -0.456824,
		0.046778, -0.988956, 0.140636,
		-0.454999, -0.146431, -0.878369,
		53.930355, 52.186668, 53.305382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.685036, 52.028759, 53.501842>,  <54.248856, 52.289169, 53.920242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.685036, 52.028759, 53.501842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.426674, 52.113541, 53.208481>,  <54.271656, 52.164410, 53.032463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.426674, 52.113541, 53.208481>,  <54.685036, 52.028759, 53.501842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.426674, 52.113541, 53.208481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743842, -0.041438, -0.667070,
		-0.171779, -0.976401, -0.130894,
		-0.645904, 0.211953, -0.733406,
		54.232903, 52.177128, 52.988461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.841122, 51.521000, 52.982372>,  <54.685036, 52.028759, 53.501842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.841122, 51.521000, 52.982372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.719673, 51.869785, 52.828758>,  <54.646805, 52.079056, 52.736588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.719673, 51.869785, 52.828758>,  <54.841122, 51.521000, 52.982372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.719673, 51.869785, 52.828758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865883, 0.084334, -0.493086,
		-0.397568, -0.482244, -0.780628,
		-0.303622, 0.871968, -0.384039,
		54.628586, 52.131374, 52.713547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.623146, 51.524593, 52.156441>,  <54.841122, 51.521000, 52.982372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.623146, 51.524593, 52.156441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.780685, 51.859356, 52.308483>,  <54.875210, 52.060211, 52.399708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.780685, 51.859356, 52.308483>,  <54.623146, 51.524593, 52.156441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.780685, 51.859356, 52.308483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857285, -0.185278, -0.480349,
		-0.331581, 0.515041, -0.790435,
		0.393849, 0.836902, 0.380102,
		54.898842, 52.110428, 52.422512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.881443, 51.321110, 51.478954>,  <54.623146, 51.524593, 52.156441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.881443, 51.321110, 51.478954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.064110, 51.501949, 51.785435>,  <55.173710, 51.610455, 51.969322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.064110, 51.501949, 51.785435>,  <54.881443, 51.321110, 51.478954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.064110, 51.501949, 51.785435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855590, -0.459172, -0.239014,
		0.243758, 0.764700, -0.596503,
		0.456671, 0.452100, 0.766196,
		55.201111, 51.637581, 52.015293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.581696, 51.720726, 51.409161>,  <54.881443, 51.321110, 51.478954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.581696, 51.720726, 51.409161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.585243, 51.635445, 51.799946>,  <55.587372, 51.584274, 52.034416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.585243, 51.635445, 51.799946>,  <55.581696, 51.720726, 51.409161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.585243, 51.635445, 51.799946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951525, -0.298586, -0.073795,
		0.307443, 0.930263, 0.200223,
		0.008865, -0.213204, 0.976967,
		55.587902, 51.571484, 52.093037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.246250, 52.020184, 51.681805>,  <55.581696, 51.720726, 51.409161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.246250, 52.020184, 51.681805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.114510, 51.728661, 51.921928>,  <56.035465, 51.553745, 52.066002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.114510, 51.728661, 51.921928>,  <56.246250, 52.020184, 51.681805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.114510, 51.728661, 51.921928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870575, -0.480535, -0.105763,
		0.365549, 0.487779, 0.792746,
		-0.329353, -0.728806, 0.600307,
		56.015705, 51.510017, 52.102020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.899002, 51.674202, 51.794113>,  <56.246250, 52.020184, 51.681805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.899002, 51.674202, 51.794113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.604126, 51.437988, 51.925461>,  <56.427200, 51.296261, 52.004269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.604126, 51.437988, 51.925461>,  <56.899002, 51.674202, 51.794113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.604126, 51.437988, 51.925461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576220, -0.803240, -0.150914,
		0.352879, 0.077961, 0.932415,
		-0.737188, -0.590531, 0.328370,
		56.382969, 51.260830, 52.023972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.188362, 50.975994, 51.802902>,  <56.899002, 51.674202, 51.794113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.188362, 50.975994, 51.802902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.835533, 50.873577, 51.961086>,  <56.623837, 50.812126, 52.055996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.835533, 50.873577, 51.961086>,  <57.188362, 50.975994, 51.802902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.835533, 50.873577, 51.961086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172233, -0.956572, -0.235172,
		0.438496, -0.139329, 0.887867,
		-0.882075, -0.256042, 0.395456,
		56.570911, 50.796764, 52.079723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.940434, 51.140823, 51.900509>,  <57.188362, 50.975994, 51.802902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.940434, 51.140823, 51.900509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.159340, 50.960648, 51.618347>,  <58.290684, 50.852543, 51.449051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.159340, 50.960648, 51.618347>,  <57.940434, 51.140823, 51.900509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.159340, 50.960648, 51.618347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726748, 0.673792, 0.133571,
		0.415132, -0.585754, 0.696102,
		0.547267, -0.450441, -0.705408,
		58.323521, 50.825516, 51.406723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.413422, 50.735233, 52.288727>,  <57.940434, 51.140823, 51.900509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.413422, 50.735233, 52.288727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.511841, 50.860870, 51.921944>,  <58.570892, 50.936253, 51.701874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.511841, 50.860870, 51.921944>,  <58.413422, 50.735233, 52.288727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.511841, 50.860870, 51.921944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734880, 0.556401, 0.387776,
		0.631993, -0.769262, -0.093922,
		0.246043, 0.314094, -0.916956,
		58.585655, 50.955097, 51.646858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.186993, 50.671200, 52.147835>,  <58.413422, 50.735233, 52.288727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.186993, 50.671200, 52.147835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.979408, 50.962200, 51.968315>,  <58.854858, 51.136799, 51.860603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.979408, 50.962200, 51.968315>,  <59.186993, 50.671200, 52.147835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.979408, 50.962200, 51.968315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579852, 0.685376, 0.440491,
		0.628057, -0.031644, -0.777524,
		-0.518957, 0.727502, -0.448803,
		58.823723, 51.180450, 51.833675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.855461, 50.948719, 52.304298>,  <59.186993, 50.671200, 52.147835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.855461, 50.948719, 52.304298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.108284, 50.736275, 52.078583>,  <60.259975, 50.608807, 51.943153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.108284, 50.736275, 52.078583>,  <59.855461, 50.948719, 52.304298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.108284, 50.736275, 52.078583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746056, 0.613962, 0.257780,
		0.209544, -0.583925, 0.784298,
		0.632053, -0.531114, -0.564293,
		60.297901, 50.576939, 51.909294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.540287, 50.979317, 52.979652>,  <59.855461, 50.948719, 52.304298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.540287, 50.979317, 52.979652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.331718, 51.014538, 53.319153>,  <59.206577, 51.035671, 53.522854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.331718, 51.014538, 53.319153>,  <59.540287, 50.979317, 52.979652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.331718, 51.014538, 53.319153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837272, 0.244683, 0.488985,
		-0.164618, 0.965597, -0.201304,
		-0.521418, 0.088050, 0.848746,
		59.175293, 51.040955, 53.573776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.527912, 51.714897, 53.294670>,  <59.540287, 50.979317, 52.979652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.527912, 51.714897, 53.294670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.485413, 51.442307, 53.584305>,  <59.459911, 51.278751, 53.758083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.485413, 51.442307, 53.584305>,  <59.527912, 51.714897, 53.294670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.485413, 51.442307, 53.584305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801913, 0.371832, 0.467629,
		-0.587916, 0.630339, 0.506979,
		-0.106254, -0.681480, 0.724083,
		59.453537, 51.237862, 53.801529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.667053, 51.921715, 54.036045>,  <59.527912, 51.714897, 53.294670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.667053, 51.921715, 54.036045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.760361, 51.532787, 54.041370>,  <59.816345, 51.299431, 54.044563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.760361, 51.532787, 54.041370>,  <59.667053, 51.921715, 54.036045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.760361, 51.532787, 54.041370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626147, 0.160663, 0.762973,
		-0.743993, -0.169645, 0.646293,
		0.233270, -0.972321, 0.013309,
		59.830341, 51.241093, 54.045364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.733307, 51.596222, 54.764088>,  <59.667053, 51.921715, 54.036045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.733307, 51.596222, 54.764088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.966629, 51.392715, 54.510818>,  <60.106621, 51.270611, 54.358856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.966629, 51.392715, 54.510818>,  <59.733307, 51.596222, 54.764088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.966629, 51.392715, 54.510818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784572, 0.151143, 0.601333,
		-0.210241, -0.847530, 0.487330,
		0.583305, -0.508771, -0.633173,
		60.141621, 51.240086, 54.320866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.178730, 52.200172, 55.011330>,  <59.733307, 51.596222, 54.764088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.178730, 52.200172, 55.011330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.196259, 52.567886, 55.167793>,  <60.206776, 52.788513, 55.261673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.196259, 52.567886, 55.167793>,  <60.178730, 52.200172, 55.011330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.196259, 52.567886, 55.167793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672209, 0.262518, -0.692257,
		-0.739064, 0.293273, -0.606445,
		0.043817, 0.919280, 0.391158,
		60.209404, 52.843670, 55.285141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.085804, 52.746880, 54.483997>,  <60.178730, 52.200172, 55.011330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.085804, 52.746880, 54.483997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.330223, 52.871838, 54.774933>,  <60.476875, 52.946812, 54.949493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.330223, 52.871838, 54.774933>,  <60.085804, 52.746880, 54.483997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.330223, 52.871838, 54.774933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719224, 0.164712, -0.674972,
		-0.330662, 0.935562, -0.124037,
		0.611048, 0.312398, 0.727343,
		60.513538, 52.965557, 54.993137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.372177, 53.364391, 54.378098>,  <60.085804, 52.746880, 54.483997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.372177, 53.364391, 54.378098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.624374, 53.146709, 54.599480>,  <60.775692, 53.016102, 54.732311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.624374, 53.146709, 54.599480>,  <60.372177, 53.364391, 54.378098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.624374, 53.146709, 54.599480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736545, 0.194497, -0.647821,
		0.244902, 0.816096, 0.523461,
		0.630496, -0.544205, 0.553459,
		60.813522, 52.983448, 54.765518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.043652, 53.689342, 54.708717>,  <60.372177, 53.364391, 54.378098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.043652, 53.689342, 54.708717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.043648, 53.322708, 54.548782>,  <61.043648, 53.102726, 54.452820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.043648, 53.322708, 54.548782>,  <61.043652, 53.689342, 54.708717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.043648, 53.322708, 54.548782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685416, 0.291138, -0.667416,
		0.728152, -0.274060, 0.628240,
		-0.000008, -0.916586, -0.399838,
		61.043644, 53.047733, 54.428829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.776421, 53.823738, 54.824242>,  <61.043652, 53.689342, 54.708717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.776421, 53.823738, 54.824242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.747070, 54.176449, 55.010612>,  <61.729462, 54.388077, 55.122433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.747070, 54.176449, 55.010612>,  <61.776421, 53.823738, 54.824242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.747070, 54.176449, 55.010612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969729, 0.046020, -0.239808,
		-0.232899, -0.469415, 0.851709,
		-0.073374, 0.881778, 0.465923,
		61.725060, 54.440983, 55.150391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.440342, 53.437225, 54.663689>,  <61.776421, 53.823738, 54.824242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.440342, 53.437225, 54.663689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.125969, 53.234966, 54.521347>,  <61.937347, 53.113609, 54.435944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.125969, 53.234966, 54.521347>,  <62.440342, 53.437225, 54.663689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.125969, 53.234966, 54.521347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554862, 0.830722, 0.045042,
		0.272841, 0.232850, -0.933455,
		-0.785930, -0.505650, -0.355855,
		61.890190, 53.083271, 54.414589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.045551, 53.443695, 55.111172>,  <62.440342, 53.437225, 54.663689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.045551, 53.443695, 55.111172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.440926, 53.406822, 55.159332>,  <63.678150, 53.384697, 55.188229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.440926, 53.406822, 55.159332>,  <63.045551, 53.443695, 55.111172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.440926, 53.406822, 55.159332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098866, 0.210297, 0.972626,
		-0.114978, -0.973282, 0.198751,
		0.988436, -0.092181, 0.120404,
		63.737457, 53.379169, 55.195454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.279190, 52.830540, 55.657299>,  <63.045551, 53.443695, 55.111172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.279190, 52.830540, 55.657299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.555412, 53.115761, 55.608826>,  <63.721146, 53.286892, 55.579742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.555412, 53.115761, 55.608826>,  <63.279190, 52.830540, 55.657299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.555412, 53.115761, 55.608826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132708, 0.039783, 0.990356,
		0.710997, -0.699981, -0.067155,
		0.690559, 0.713052, -0.121179,
		63.762581, 53.329678, 55.572472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.799164, 52.582184, 56.183903>,  <63.279190, 52.830540, 55.657299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.799164, 52.582184, 56.183903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.868187, 52.967175, 56.100136>,  <63.909599, 53.198170, 56.049877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.868187, 52.967175, 56.100136>,  <63.799164, 52.582184, 56.183903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.868187, 52.967175, 56.100136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174308, 0.179415, 0.968208,
		0.969454, -0.203572, -0.136810,
		0.172554, 0.962481, -0.209419,
		63.919952, 53.255920, 56.037312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.592918, 52.848763, 56.229076>,  <63.799164, 52.582184, 56.183903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.592918, 52.848763, 56.229076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.278969, 53.073036, 56.334610>,  <64.090599, 53.207600, 56.397930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.278969, 53.073036, 56.334610>,  <64.592918, 52.848763, 56.229076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.278969, 53.073036, 56.334610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267045, -0.078145, 0.960510,
		0.559163, 0.824332, -0.088395,
		-0.784872, 0.560687, 0.263830,
		64.043510, 53.241241, 56.413757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.825615, 53.318356, 56.698490>,  <64.592918, 52.848763, 56.229076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.825615, 53.318356, 56.698490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.441208, 53.223934, 56.756088>,  <64.210564, 53.167282, 56.790646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.441208, 53.223934, 56.756088>,  <64.825615, 53.318356, 56.698490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.441208, 53.223934, 56.756088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166229, -0.077067, 0.983071,
		-0.220956, 0.968680, 0.113300,
		-0.961013, -0.236049, 0.143995,
		64.152901, 53.153118, 56.799286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.436768, 53.861317, 57.084785>,  <64.825615, 53.318356, 56.698490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.436768, 53.861317, 57.084785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.268570, 53.509762, 57.174889>,  <64.167648, 53.298828, 57.228951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.268570, 53.509762, 57.174889>,  <64.436768, 53.861317, 57.084785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.268570, 53.509762, 57.174889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481279, -0.005611, 0.876550,
		-0.769122, 0.477002, 0.425348,
		-0.420503, -0.878884, 0.225256,
		64.142418, 53.246098, 57.242466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.930012, 53.873978, 57.686848>,  <64.436768, 53.861317, 57.084785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.930012, 53.873978, 57.686848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.096771, 53.510403, 57.688576>,  <64.196831, 53.292255, 57.689613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.096771, 53.510403, 57.688576>,  <63.930012, 53.873978, 57.686848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.096771, 53.510403, 57.688576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384538, 0.180677, 0.905255,
		-0.823605, -0.375739, 0.424847,
		0.416900, -0.908942, 0.004320,
		64.221840, 53.237720, 57.689873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.927818, 53.598251, 58.409813>,  <63.930012, 53.873978, 57.686848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.927818, 53.598251, 58.409813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.224739, 53.430298, 58.200935>,  <64.402893, 53.329525, 58.075607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.224739, 53.430298, 58.200935>,  <63.927818, 53.598251, 58.409813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.224739, 53.430298, 58.200935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650552, 0.264903, 0.711764,
		-0.160527, -0.868058, 0.469794,
		0.742303, -0.419883, -0.522193,
		64.447433, 53.304333, 58.044277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.327072, 53.062275, 58.763676>,  <63.927818, 53.598251, 58.409813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.327072, 53.062275, 58.763676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.568542, 53.202721, 58.477379>,  <64.713425, 53.286987, 58.305599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.568542, 53.202721, 58.477379>,  <64.327072, 53.062275, 58.763676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.568542, 53.202721, 58.477379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584735, 0.415247, 0.696889,
		0.541897, -0.839219, 0.045368,
		0.603682, 0.351114, -0.715742,
		64.749649, 53.308056, 58.262657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.952385, 52.681435, 58.884205>,  <64.327072, 53.062275, 58.763676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.952385, 52.681435, 58.884205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.980217, 53.040985, 58.711143>,  <64.996918, 53.256714, 58.607307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.980217, 53.040985, 58.711143>,  <64.952385, 52.681435, 58.884205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.980217, 53.040985, 58.711143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671041, 0.278734, 0.687030,
		0.738147, -0.338135, -0.583784,
		0.069589, 0.898873, -0.432649,
		65.001091, 53.310646, 58.581348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.633820, 53.018784, 59.002880>,  <64.952385, 52.681435, 58.884205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.633820, 53.018784, 59.002880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.415810, 53.343697, 58.919800>,  <65.285004, 53.538643, 58.869953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.415810, 53.343697, 58.919800>,  <65.633820, 53.018784, 59.002880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.415810, 53.343697, 58.919800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573914, 0.542046, 0.613847,
		0.611200, 0.215364, -0.761612,
		-0.545030, 0.812283, -0.207698,
		65.252304, 53.587383, 58.857491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.994331, 53.530605, 58.495266>,  <65.633820, 53.018784, 59.002880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.994331, 53.530605, 58.495266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.759087, 53.657963, 58.792656>,  <65.617943, 53.734375, 58.971088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.759087, 53.657963, 58.792656>,  <65.994331, 53.530605, 58.495266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.759087, 53.657963, 58.792656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807909, 0.273879, 0.521797,
		-0.037487, 0.907534, -0.418302,
		-0.588113, 0.318389, 0.743472,
		65.582649, 53.753479, 59.015697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.678879, 53.688934, 58.747025>,  <65.994331, 53.530605, 58.495266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.678879, 53.688934, 58.747025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.648178, 54.005432, 58.989693>,  <66.629761, 54.195332, 59.135292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.648178, 54.005432, 58.989693>,  <66.678879, 53.688934, 58.747025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.648178, 54.005432, 58.989693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913310, -0.188293, 0.361125,
		0.399968, 0.581795, -0.708195,
		-0.076753, 0.791240, 0.606670,
		66.625153, 54.242805, 59.171692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.145836, 54.204918, 58.641445>,  <66.678879, 53.688934, 58.747025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.145836, 54.204918, 58.641445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.036461, 54.168121, 59.024437>,  <66.970833, 54.146042, 59.254230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.036461, 54.168121, 59.024437>,  <67.145836, 54.204918, 58.641445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.036461, 54.168121, 59.024437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919357, -0.317721, 0.232027,
		0.282867, 0.943711, 0.171451,
		-0.273440, -0.091992, 0.957480,
		66.954430, 54.140522, 59.311680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.419662, 54.659256, 59.106190>,  <67.145836, 54.204918, 58.641445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.419662, 54.659256, 59.106190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.367157, 54.327778, 59.323822>,  <67.335655, 54.128891, 59.454403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.367157, 54.327778, 59.323822>,  <67.419662, 54.659256, 59.106190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.367157, 54.327778, 59.323822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971967, 0.000406, 0.235116,
		-0.195062, 0.559694, 0.805415,
		-0.131266, -0.828699, 0.544083,
		67.327774, 54.079166, 59.487045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.755089, 54.694504, 59.836315>,  <67.419662, 54.659256, 59.106190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.755089, 54.694504, 59.836315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.746811, 54.305290, 59.744423>,  <67.741844, 54.071762, 59.689289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.746811, 54.305290, 59.744423>,  <67.755089, 54.694504, 59.836315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.746811, 54.305290, 59.744423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897214, -0.119458, 0.425130,
		-0.441110, -0.197314, 0.875494,
		-0.020701, -0.973035, -0.229727,
		67.740601, 54.013378, 59.675507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.896202, 54.277386, 60.413723>,  <67.755089, 54.694504, 59.836315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.896202, 54.277386, 60.413723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.048401, 54.111797, 60.082939>,  <68.139717, 54.012444, 59.884468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.048401, 54.111797, 60.082939>,  <67.896202, 54.277386, 60.413723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.048401, 54.111797, 60.082939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920868, 0.087375, 0.379958,
		-0.085036, -0.906087, 0.414459,
		0.380488, -0.413972, -0.826956,
		68.162544, 53.987606, 59.834854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.460640, 53.733776, 60.478664>,  <67.896202, 54.277386, 60.413723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.460640, 53.733776, 60.478664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.523048, 53.830330, 60.095543>,  <68.560493, 53.888260, 59.865669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.523048, 53.830330, 60.095543>,  <68.460640, 53.733776, 60.478664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.523048, 53.830330, 60.095543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970954, 0.140605, 0.193596,
		0.181403, -0.960190, -0.212432,
		0.156020, 0.241381, -0.957806,
		68.569855, 53.902744, 59.808201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.957565, 53.287796, 60.215080>,  <68.460640, 53.733776, 60.478664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.957565, 53.287796, 60.215080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.962738, 53.650005, 60.045441>,  <68.965843, 53.867332, 59.943657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.962738, 53.650005, 60.045441>,  <68.957565, 53.287796, 60.215080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.962738, 53.650005, 60.045441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965767, 0.098586, 0.239947,
		0.259088, -0.412681, -0.873251,
		0.012931, 0.905525, -0.424096,
		68.966614, 53.921661, 59.918213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.725502, 53.424229, 60.126751>,  <68.957565, 53.287796, 60.215080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.725502, 53.424229, 60.126751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.513855, 53.761143, 60.085594>,  <69.386871, 53.963291, 60.060898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.513855, 53.761143, 60.085594>,  <69.725502, 53.424229, 60.126751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.513855, 53.761143, 60.085594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804063, 0.536420, 0.256391,
		0.271150, 0.052926, -0.961081,
		-0.529113, 0.842290, -0.102894,
		69.355118, 54.013828, 60.054726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.044365, 53.849525, 59.552341>,  <69.725502, 53.424229, 60.126751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.044365, 53.849525, 59.552341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.866600, 54.028080, 59.863014>,  <69.759941, 54.135212, 60.049419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.866600, 54.028080, 59.863014>,  <70.044365, 53.849525, 59.552341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.866600, 54.028080, 59.863014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846764, 0.492307, 0.201555,
		-0.292396, 0.747242, -0.596770,
		-0.444405, 0.446389, 0.776686,
		69.733276, 54.161995, 60.096020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.084358, 54.625420, 59.477654>,  <70.044365, 53.849525, 59.552341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.084358, 54.625420, 59.477654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.070465, 54.510334, 59.860489>,  <70.062126, 54.441280, 60.090191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.070465, 54.510334, 59.860489>,  <70.084358, 54.625420, 59.477654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.070465, 54.510334, 59.860489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878122, 0.448461, 0.166689,
		-0.477174, 0.846228, 0.237072,
		-0.034740, -0.287718, 0.957085,
		70.060043, 54.424019, 60.147614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.350601, 55.156258, 59.851379>,  <70.084358, 54.625420, 59.477654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.350601, 55.156258, 59.851379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.397858, 54.822643, 60.066948>,  <70.426208, 54.622475, 60.196289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.397858, 54.822643, 60.066948>,  <70.350601, 55.156258, 59.851379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.397858, 54.822643, 60.066948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948813, 0.254900, 0.186496,
		-0.292913, 0.489299, 0.821455,
		0.118136, -0.834034, 0.538917,
		70.433296, 54.572433, 60.228622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.691444, 55.257351, 60.504654>,  <70.350601, 55.156258, 59.851379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.691444, 55.257351, 60.504654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.842896, 54.888325, 60.474976>,  <70.933769, 54.666908, 60.457169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.842896, 54.888325, 60.474976>,  <70.691444, 55.257351, 60.504654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.842896, 54.888325, 60.474976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861529, 0.322019, 0.392519,
		-0.338233, -0.212542, 0.916747,
		0.378636, -0.922567, -0.074194,
		70.956490, 54.611553, 60.452717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.069099, 55.113655, 61.149677>,  <70.691444, 55.257351, 60.504654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.069099, 55.113655, 61.149677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.234474, 54.835323, 60.914764>,  <71.333694, 54.668324, 60.773819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.234474, 54.835323, 60.914764>,  <71.069099, 55.113655, 61.149677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.234474, 54.835323, 60.914764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897662, 0.203399, 0.390937,
		-0.152574, -0.688802, 0.708712,
		0.413429, -0.695831, -0.587278,
		71.358505, 54.626575, 60.738583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.382271, 54.585850, 61.577053>,  <71.069099, 55.113655, 61.149677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.382271, 54.585850, 61.577053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.552429, 54.658546, 61.222427>,  <71.654526, 54.702164, 61.009651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.552429, 54.658546, 61.222427>,  <71.382271, 54.585850, 61.577053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.552429, 54.658546, 61.222427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852622, 0.247962, 0.459947,
		0.303428, -0.951569, -0.049476,
		0.425403, 0.181745, -0.886567,
		71.680054, 54.713070, 60.956459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.024803, 54.246853, 61.594124>,  <71.382271, 54.585850, 61.577053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.024803, 54.246853, 61.594124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.055611, 54.535622, 61.319054>,  <72.074097, 54.708881, 61.154011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.055611, 54.535622, 61.319054>,  <72.024803, 54.246853, 61.594124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.055611, 54.535622, 61.319054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876246, 0.280047, 0.392132,
		0.475669, -0.632777, -0.611009,
		0.077021, 0.721919, -0.687678,
		72.078720, 54.752197, 61.112751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.602974, 54.155693, 61.095299>,  <72.024803, 54.246853, 61.594124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.602974, 54.155693, 61.095299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.495064, 54.521236, 61.216675>,  <72.430321, 54.740562, 61.289501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.495064, 54.521236, 61.216675>,  <72.602974, 54.155693, 61.095299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.495064, 54.521236, 61.216675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870917, 0.097137, 0.481735,
		0.410763, 0.394234, -0.822103,
		-0.269773, 0.913862, 0.303445,
		72.414131, 54.795395, 61.307709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.996040, 54.673054, 60.952610>,  <72.602974, 54.155693, 61.095299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.996040, 54.673054, 60.952610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.841087, 54.762295, 61.310417>,  <72.748116, 54.815838, 61.525101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.841087, 54.762295, 61.310417>,  <72.996040, 54.673054, 60.952610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.841087, 54.762295, 61.310417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910571, -0.059168, 0.409096,
		0.144196, 0.972998, -0.180226,
		-0.387386, 0.223099, 0.894516,
		72.724869, 54.829224, 61.578773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.049202, 55.445374, 60.866390>,  <72.996040, 54.673054, 60.952610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.049202, 55.445374, 60.866390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.447556, 55.410343, 60.875832>,  <73.686569, 55.389324, 60.881496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.447556, 55.410343, 60.875832>,  <73.049202, 55.445374, 60.866390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.447556, 55.410343, 60.875832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055414, 0.381405, -0.922746,
		0.071807, 0.920250, 0.384686,
		0.995878, -0.087577, 0.023607,
		73.746323, 55.384071, 60.882915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.479195, 56.122532, 60.867313>,  <73.049202, 55.445374, 60.866390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.479195, 56.122532, 60.867313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.655602, 55.801907, 60.705818>,  <73.761444, 55.609531, 60.608921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.655602, 55.801907, 60.705818>,  <73.479195, 56.122532, 60.867313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.655602, 55.801907, 60.705818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011203, 0.454729, -0.890559,
		0.897428, 0.388230, 0.209524,
		0.441018, -0.801560, -0.403738,
		73.787910, 55.561440, 60.584698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<74.126236, 56.400520, 60.670944>,  <73.479195, 56.122532, 60.867313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<74.126236, 56.400520, 60.670944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.996284, 56.102413, 60.438034>,  <73.918312, 55.923550, 60.298290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.996284, 56.102413, 60.438034>,  <74.126236, 56.400520, 60.670944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.996284, 56.102413, 60.438034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042734, 0.603470, -0.796239,
		0.944793, -0.283557, -0.164201,
		-0.324869, -0.745265, -0.582272,
		73.898827, 55.878834, 60.263351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.699539, 56.812542, 60.281826>,  <74.126236, 56.400520, 60.670944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.699539, 56.812542, 60.281826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.600395, 57.182308, 60.165886>,  <73.540909, 57.404167, 60.096321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.600395, 57.182308, 60.165886>,  <73.699539, 56.812542, 60.281826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.600395, 57.182308, 60.165886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643523, 0.066539, 0.762529,
		0.724183, 0.375528, 0.578393,
		-0.247865, 0.924419, -0.289848,
		73.526039, 57.459633, 60.078930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.815880, 57.178669, 60.800213>,  <73.699539, 56.812542, 60.281826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.815880, 57.178669, 60.800213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.542091, 57.367313, 60.577827>,  <73.377823, 57.480499, 60.444397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.542091, 57.367313, 60.577827>,  <73.815880, 57.178669, 60.800213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.542091, 57.367313, 60.577827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583244, 0.103321, 0.805699,
		0.437419, 0.875732, 0.204346,
		-0.684464, 0.471612, -0.555960,
		73.336754, 57.508797, 60.411037>
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
