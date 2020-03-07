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
	<36.302135, 53.448055, 49.195621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991447, 53.673061, 49.308960>,  <35.805035, 53.808067, 49.376965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991447, 53.673061, 49.308960>,  <36.302135, 53.448055, 49.195621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991447, 53.673061, 49.308960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285661, -0.086320, 0.954435,
		0.561345, 0.822267, -0.093643,
		-0.776717, 0.562518, 0.283345,
		35.758430, 53.841816, 49.393963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750702, 52.827637, 49.205658>,  <36.302135, 53.448055, 49.195621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750702, 52.827637, 49.205658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786137, 52.699867, 49.583042>,  <36.807396, 52.623207, 49.809475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786137, 52.699867, 49.583042>,  <36.750702, 52.827637, 49.205658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786137, 52.699867, 49.583042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993802, 0.035526, 0.105338,
		-0.067165, -0.946946, -0.314297,
		0.088584, -0.319424, 0.943462,
		36.812714, 52.604042, 49.866081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463341, 52.196259, 49.295532>,  <36.750702, 52.827637, 49.205658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463341, 52.196259, 49.295532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457577, 52.376781, 49.652435>,  <36.454117, 52.485096, 49.866577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457577, 52.376781, 49.652435>,  <36.463341, 52.196259, 49.295532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457577, 52.376781, 49.652435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985059, -0.159563, 0.064794,
		0.171612, -0.877988, 0.446863,
		-0.014414, 0.451306, 0.892253,
		36.453251, 52.512173, 49.920113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823849, 51.603592, 49.224407>,  <36.463341, 52.196259, 49.295532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823849, 51.603592, 49.224407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424828, 51.576309, 49.230553>,  <36.185413, 51.559940, 49.234241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424828, 51.576309, 49.230553>,  <36.823849, 51.603592, 49.224407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424828, 51.576309, 49.230553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057608, 0.677374, -0.733380,
		0.039613, -0.732471, -0.679645,
		-0.997553, -0.068205, 0.015363,
		36.125561, 51.555847, 49.235161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435207, 51.561180, 48.854446>,  <36.823849, 51.603592, 49.224407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435207, 51.561180, 48.854446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378353, 51.957115, 48.856354>,  <37.344238, 52.194675, 48.857498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378353, 51.957115, 48.856354>,  <37.435207, 51.561180, 48.854446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378353, 51.957115, 48.856354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864590, 0.121809, 0.487491,
		0.481955, 0.073411, -0.873115,
		-0.142140, 0.989835, 0.004764,
		37.335712, 52.254066, 48.857784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043568, 51.837364, 48.778088>,  <37.435207, 51.561180, 48.854446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043568, 51.837364, 48.778088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855545, 52.149853, 48.942398>,  <37.742733, 52.337345, 49.040985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855545, 52.149853, 48.942398>,  <38.043568, 51.837364, 48.778088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855545, 52.149853, 48.942398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816362, 0.207869, 0.538835,
		0.335563, 0.588624, -0.735472,
		-0.470053, 0.781225, 0.410777,
		37.714531, 52.384220, 49.065632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356300, 52.460430, 48.720322>,  <38.043568, 51.837364, 48.778088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356300, 52.460430, 48.720322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194218, 52.536003, 49.078117>,  <38.096970, 52.581348, 49.292793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194218, 52.536003, 49.078117>,  <38.356300, 52.460430, 48.720322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194218, 52.536003, 49.078117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902483, 0.238982, 0.358347,
		-0.146062, 0.952466, -0.267348,
		-0.405205, 0.188935, 0.894490,
		38.072655, 52.592682, 49.346466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714516, 53.032318, 48.681442>,  <38.356300, 52.460430, 48.720322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714516, 53.032318, 48.681442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617855, 52.886517, 49.041164>,  <38.559856, 52.799038, 49.256996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617855, 52.886517, 49.041164>,  <38.714516, 53.032318, 48.681442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617855, 52.886517, 49.041164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965307, 0.004174, 0.261083,
		-0.098919, 0.931194, 0.350847,
		-0.241655, -0.364501, 0.899301,
		38.545361, 52.777164, 49.310955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908249, 53.506680, 49.163780>,  <38.714516, 53.032318, 48.681442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908249, 53.506680, 49.163780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927448, 53.123466, 49.276829>,  <38.938969, 52.893539, 49.344658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927448, 53.123466, 49.276829>,  <38.908249, 53.506680, 49.163780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927448, 53.123466, 49.276829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940647, 0.138527, 0.309828,
		-0.335975, 0.250976, 0.907817,
		0.047998, -0.958030, 0.282622,
		38.941849, 52.836056, 49.361614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466858, 53.506004, 49.586372>,  <38.908249, 53.506680, 49.163780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466858, 53.506004, 49.586372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382019, 53.123199, 49.507233>,  <39.331116, 52.893517, 49.459751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382019, 53.123199, 49.507233>,  <39.466858, 53.506004, 49.586372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382019, 53.123199, 49.507233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962157, -0.239939, 0.129165,
		-0.171083, -0.162964, 0.971686,
		-0.212096, -0.957012, -0.197846,
		39.318390, 52.836098, 49.447880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885044, 53.134727, 50.071423>,  <39.466858, 53.506004, 49.586372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885044, 53.134727, 50.071423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799965, 52.926815, 49.740463>,  <39.748917, 52.802067, 49.541885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799965, 52.926815, 49.740463>,  <39.885044, 53.134727, 50.071423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799965, 52.926815, 49.740463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956349, -0.284399, -0.067184,
		-0.200391, -0.805574, 0.557579,
		-0.212697, -0.519777, -0.827401,
		39.736156, 52.770882, 49.492245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188190, 53.449234, 50.759785>,  <39.885044, 53.134727, 50.071423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188190, 53.449234, 50.759785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407013, 53.201973, 50.534000>,  <40.538307, 53.053616, 50.398529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407013, 53.201973, 50.534000>,  <40.188190, 53.449234, 50.759785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407013, 53.201973, 50.534000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590693, 0.762856, -0.262933,
		0.593136, -0.189586, 0.782462,
		0.547057, -0.618149, -0.564464,
		40.571129, 53.016529, 50.364662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892139, 53.504955, 50.896801>,  <40.188190, 53.449234, 50.759785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892139, 53.504955, 50.896801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879009, 53.337566, 50.533749>,  <40.871132, 53.237133, 50.315918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879009, 53.337566, 50.533749>,  <40.892139, 53.504955, 50.896801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879009, 53.337566, 50.533749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571891, 0.736900, -0.360443,
		0.819672, -0.530901, 0.215131,
		-0.032830, -0.418476, -0.907634,
		40.869160, 53.212025, 50.261459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610100, 53.487465, 50.705025>,  <40.892139, 53.504955, 50.896801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610100, 53.487465, 50.705025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352032, 53.494141, 50.399483>,  <41.197189, 53.498146, 50.216156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352032, 53.494141, 50.399483>,  <41.610100, 53.487465, 50.705025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352032, 53.494141, 50.399483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225049, 0.959559, -0.169115,
		0.730144, -0.281013, -0.622834,
		-0.645169, 0.016690, -0.763858,
		41.158482, 53.499149, 50.170326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848881, 53.877560, 50.100815>,  <41.610100, 53.487465, 50.705025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848881, 53.877560, 50.100815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461178, 53.903034, 50.005745>,  <41.228558, 53.918320, 49.948704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461178, 53.903034, 50.005745>,  <41.848881, 53.877560, 50.100815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461178, 53.903034, 50.005745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133566, 0.947408, -0.290822,
		0.206658, -0.313626, -0.926786,
		-0.969254, 0.063686, -0.237679,
		41.170403, 53.922142, 49.934441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614902, 53.997456, 50.079849>,  <41.848881, 53.877560, 50.100815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614902, 53.997456, 50.079849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924961, 54.129528, 49.864395>,  <43.110996, 54.208771, 49.735123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924961, 54.129528, 49.864395>,  <42.614902, 53.997456, 50.079849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924961, 54.129528, 49.864395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482035, 0.242042, 0.842056,
		0.408406, -0.912357, 0.028457,
		0.775143, 0.330183, -0.538639,
		43.157505, 54.228584, 49.702805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256844, 53.580322, 50.230904>,  <42.614902, 53.997456, 50.079849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256844, 53.580322, 50.230904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363186, 53.944679, 50.104668>,  <43.426991, 54.163292, 50.028927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363186, 53.944679, 50.104668>,  <43.256844, 53.580322, 50.230904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363186, 53.944679, 50.104668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479598, 0.159005, 0.862962,
		0.836246, -0.380778, -0.394590,
		0.265855, 0.910893, -0.315587,
		43.442944, 54.217949, 50.009991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013214, 53.655151, 50.262207>,  <43.256844, 53.580322, 50.230904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013214, 53.655151, 50.262207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812748, 53.998669, 50.304722>,  <43.692467, 54.204781, 50.330231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812748, 53.998669, 50.304722>,  <44.013214, 53.655151, 50.262207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812748, 53.998669, 50.304722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388167, 0.113328, 0.914594,
		0.773405, 0.499625, -0.390153,
		-0.501170, 0.858796, 0.106290,
		43.662395, 54.256310, 50.336609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465641, 54.271938, 50.402809>,  <44.013214, 53.655151, 50.262207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465641, 54.271938, 50.402809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107685, 54.291370, 50.580265>,  <43.892914, 54.303028, 50.686741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107685, 54.291370, 50.580265>,  <44.465641, 54.271938, 50.402809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107685, 54.291370, 50.580265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445682, 0.149392, 0.882638,
		-0.023400, 0.987584, -0.155340,
		-0.894885, 0.048578, 0.443644,
		43.839218, 54.305943, 50.713360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.367992, 54.871780, 50.733128>,  <44.465641, 54.271938, 50.402809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.367992, 54.871780, 50.733128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203571, 54.546162, 50.897255>,  <44.104919, 54.350792, 50.995731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203571, 54.546162, 50.897255>,  <44.367992, 54.871780, 50.733128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203571, 54.546162, 50.897255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565588, 0.125267, 0.815118,
		-0.714945, 0.567128, 0.408924,
		-0.411052, -0.814048, 0.410320,
		44.080257, 54.301949, 51.020351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021046, 54.752377, 51.024620>,  <44.367992, 54.871780, 50.733128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021046, 54.752377, 51.024620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087414, 54.980015, 51.346764>,  <45.127235, 55.116600, 51.540051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087414, 54.980015, 51.346764>,  <45.021046, 54.752377, 51.024620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087414, 54.980015, 51.346764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910201, -0.402646, 0.097001,
		0.379477, 0.716941, -0.584802,
		0.165924, 0.569097, 0.805356,
		45.137192, 55.150745, 51.588371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587914, 55.213589, 51.022297>,  <45.021046, 54.752377, 51.024620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587914, 55.213589, 51.022297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534286, 55.108002, 51.404366>,  <45.502110, 55.044651, 51.633606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534286, 55.108002, 51.404366>,  <45.587914, 55.213589, 51.022297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534286, 55.108002, 51.404366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873109, -0.487373, -0.012141,
		0.468729, 0.832341, 0.295807,
		-0.134063, -0.263963, 0.955171,
		45.494068, 55.028812, 51.690918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.900925, 55.556973, 51.594391>,  <45.587914, 55.213589, 51.022297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.900925, 55.556973, 51.594391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.146214, 55.793655, 51.385071>,  <46.293385, 55.935665, 51.259480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.146214, 55.793655, 51.385071>,  <45.900925, 55.556973, 51.594391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.146214, 55.793655, 51.385071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731916, -0.176467, 0.658148,
		0.297087, -0.786600, -0.541294,
		0.613220, 0.591709, -0.523300,
		46.330181, 55.971169, 51.228081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.710400, 55.210655, 51.550808>,  <45.900925, 55.556973, 51.594391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.710400, 55.210655, 51.550808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714153, 55.605579, 51.487400>,  <46.716404, 55.842533, 51.449356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714153, 55.605579, 51.487400>,  <46.710400, 55.210655, 51.550808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.714153, 55.605579, 51.487400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835297, 0.079411, 0.544034,
		0.549719, -0.137511, -0.823954,
		0.009380, 0.987312, -0.158516,
		46.716969, 55.901772, 51.439846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.277969, 55.442017, 51.177555>,  <46.710400, 55.210655, 51.550808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.277969, 55.442017, 51.177555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164528, 55.743885, 51.414207>,  <47.096462, 55.925007, 51.556198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164528, 55.743885, 51.414207>,  <47.277969, 55.442017, 51.177555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.164528, 55.743885, 51.414207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930275, 0.066797, 0.360732,
		0.232716, 0.652689, -0.721000,
		-0.283606, 0.754676, 0.591635,
		47.079445, 55.970287, 51.591698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.749195, 56.005852, 50.992134>,  <47.277969, 55.442017, 51.177555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.749195, 56.005852, 50.992134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.594254, 56.045094, 51.358814>,  <47.501289, 56.068638, 51.578823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.594254, 56.045094, 51.358814>,  <47.749195, 56.005852, 50.992134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.594254, 56.045094, 51.358814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914138, -0.088141, 0.395706,
		0.119618, 0.991265, -0.055538,
		-0.387355, 0.098103, 0.916696,
		47.478046, 56.074524, 51.633823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.084232, 56.615726, 51.303905>,  <47.749195, 56.005852, 50.992134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.084232, 56.615726, 51.303905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.961674, 56.309547, 51.530254>,  <47.888138, 56.125839, 51.666061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.961674, 56.309547, 51.530254>,  <48.084232, 56.615726, 51.303905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.961674, 56.309547, 51.530254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931451, -0.118512, 0.344027,
		-0.196274, 0.632486, 0.749291,
		-0.306392, -0.765452, 0.565869,
		47.869755, 56.079910, 51.700016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.395302, 56.579166, 52.013298>,  <48.084232, 56.615726, 51.303905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.395302, 56.579166, 52.013298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.303097, 56.211681, 51.885025>,  <48.247776, 55.991192, 51.808060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.303097, 56.211681, 51.885025>,  <48.395302, 56.579166, 52.013298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.303097, 56.211681, 51.885025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948477, -0.285757, 0.136876,
		-0.217386, -0.272608, 0.937245,
		-0.230511, -0.918710, -0.320682,
		48.233944, 55.936069, 51.788822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.328720, 56.011581, 52.510620>,  <48.395302, 56.579166, 52.013298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.328720, 56.011581, 52.510620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.476025, 55.976288, 52.140411>,  <48.564407, 55.955112, 51.918285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.476025, 55.976288, 52.140411>,  <48.328720, 56.011581, 52.510620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.476025, 55.976288, 52.140411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928462, 0.086718, 0.361162,
		0.048391, -0.992317, 0.113861,
		0.368261, -0.088239, -0.925526,
		48.586502, 55.949818, 51.862755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.890362, 55.569607, 52.496201>,  <48.328720, 56.011581, 52.510620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.890362, 55.569607, 52.496201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.914597, 55.857590, 52.219650>,  <48.929138, 56.030380, 52.053722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.914597, 55.857590, 52.219650>,  <48.890362, 55.569607, 52.496201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.914597, 55.857590, 52.219650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822565, 0.356353, 0.443170,
		0.565435, -0.595550, -0.570617,
		0.060589, 0.719953, -0.691373,
		48.932774, 56.073574, 52.012238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.530540, 55.651211, 52.278530>,  <48.890362, 55.569607, 52.496201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.530540, 55.651211, 52.278530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.397968, 56.001457, 52.137989>,  <49.318424, 56.211605, 52.053665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.397968, 56.001457, 52.137989>,  <49.530540, 55.651211, 52.278530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.397968, 56.001457, 52.137989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817627, 0.452382, 0.356141,
		0.470789, -0.169238, -0.865862,
		-0.331428, 0.875619, -0.351350,
		49.298538, 56.264141, 52.032585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.307175, 55.372028, 52.382198>,  <49.530540, 55.651211, 52.278530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.307175, 55.372028, 52.382198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.479446, 55.728733, 52.437725>,  <50.582809, 55.942757, 52.471043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.479446, 55.728733, 52.437725>,  <50.307175, 55.372028, 52.382198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.479446, 55.728733, 52.437725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596996, -0.396851, 0.697212,
		0.676840, -0.217399, -0.703296,
		0.430677, 0.891766, 0.138818,
		50.608650, 55.996262, 52.479370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.076584, 55.348763, 52.386456>,  <50.307175, 55.372028, 52.382198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.076584, 55.348763, 52.386456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.936951, 55.638535, 52.624226>,  <50.853172, 55.812397, 52.766888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.936951, 55.638535, 52.624226>,  <51.076584, 55.348763, 52.386456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.936951, 55.638535, 52.624226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604694, -0.310454, 0.733460,
		0.715882, 0.615485, -0.329684,
		-0.349082, 0.724429, 0.594428,
		50.832226, 55.855862, 52.802555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.647408, 55.855877, 52.641853>,  <51.076584, 55.348763, 52.386456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.647408, 55.855877, 52.641853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.339901, 55.787495, 52.888359>,  <51.155399, 55.746464, 53.036263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.339901, 55.787495, 52.888359>,  <51.647408, 55.855877, 52.641853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.339901, 55.787495, 52.888359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638315, -0.264562, 0.722883,
		0.039459, 0.949095, 0.312509,
		-0.768763, -0.170955, 0.616261,
		51.109272, 55.736210, 53.073238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.608841, 56.298828, 53.277473>,  <51.647408, 55.855877, 52.641853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.608841, 56.298828, 53.277473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.481533, 55.922916, 53.327293>,  <51.405148, 55.697369, 53.357185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.481533, 55.922916, 53.327293>,  <51.608841, 56.298828, 53.277473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.481533, 55.922916, 53.327293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793965, -0.192459, 0.576696,
		-0.517997, 0.282436, 0.807409,
		-0.318273, -0.939782, 0.124551,
		51.386051, 55.640984, 53.364658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.682652, 56.190918, 54.029182>,  <51.608841, 56.298828, 53.277473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.682652, 56.190918, 54.029182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.685379, 55.849640, 53.820564>,  <51.687016, 55.644875, 53.695393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.685379, 55.849640, 53.820564>,  <51.682652, 56.190918, 54.029182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.685379, 55.849640, 53.820564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839019, -0.278884, 0.467194,
		-0.544059, -0.440773, 0.713946,
		0.006818, -0.853196, -0.521546,
		51.687424, 55.593681, 53.664101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.616016, 55.521671, 54.417488>,  <51.682652, 56.190918, 54.029182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.616016, 55.521671, 54.417488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.832653, 55.470192, 54.085197>,  <51.962635, 55.439304, 53.885822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.832653, 55.470192, 54.085197>,  <51.616016, 55.521671, 54.417488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.832653, 55.470192, 54.085197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790363, -0.258673, 0.555350,
		-0.286362, -0.957353, -0.038376,
		0.541593, -0.128700, -0.830731,
		51.995132, 55.431580, 53.835979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.808979, 54.882790, 54.451527>,  <51.616016, 55.521671, 54.417488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.808979, 54.882790, 54.451527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.042515, 55.150604, 54.267853>,  <52.182636, 55.311295, 54.157650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.042515, 55.150604, 54.267853>,  <51.808979, 54.882790, 54.451527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.042515, 55.150604, 54.267853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600519, 0.024475, 0.799236,
		0.546358, -0.742374, -0.387780,
		0.583841, 0.669538, -0.459182,
		52.217667, 55.351467, 54.130096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.544258, 54.653908, 54.388241>,  <51.808979, 54.882790, 54.451527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.544258, 54.653908, 54.388241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.524948, 55.053421, 54.384060>,  <52.513363, 55.293129, 54.381550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.524948, 55.053421, 54.384060>,  <52.544258, 54.653908, 54.388241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.524948, 55.053421, 54.384060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719075, 0.042012, 0.693662,
		0.693255, 0.025967, -0.720225,
		-0.048270, 0.998780, -0.010453,
		52.510468, 55.353054, 54.380924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.155781, 54.916973, 54.029411>,  <52.544258, 54.653908, 54.388241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.155781, 54.916973, 54.029411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.983219, 55.125805, 54.323708>,  <52.879681, 55.251106, 54.500286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.983219, 55.125805, 54.323708>,  <53.155781, 54.916973, 54.029411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.983219, 55.125805, 54.323708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822080, -0.108408, 0.558957,
		0.371583, 0.845977, -0.382426,
		-0.431406, 0.522083, 0.735743,
		52.853798, 55.282429, 54.544430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.421680, 55.598255, 54.196434>,  <53.155781, 54.916973, 54.029411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.421680, 55.598255, 54.196434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.285164, 55.438637, 54.536854>,  <53.203255, 55.342865, 54.741104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.285164, 55.438637, 54.536854>,  <53.421680, 55.598255, 54.196434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.285164, 55.438637, 54.536854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939861, -0.157922, 0.302855,
		0.013548, 0.903230, 0.428942,
		-0.341287, -0.399043, 0.851051,
		53.182777, 55.318924, 54.792168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.698009, 56.008362, 54.794201>,  <53.421680, 55.598255, 54.196434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.698009, 56.008362, 54.794201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.615292, 55.624119, 54.868465>,  <53.565662, 55.393574, 54.913025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.615292, 55.624119, 54.868465>,  <53.698009, 56.008362, 54.794201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.615292, 55.624119, 54.868465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959811, -0.162384, 0.228896,
		-0.189730, 0.225538, 0.955581,
		-0.206795, -0.960606, 0.185665,
		53.553253, 55.335938, 54.924164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.825321, 55.600819, 55.542213>,  <53.698009, 56.008362, 54.794201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.825321, 55.600819, 55.542213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.887527, 55.377621, 55.216156>,  <53.924850, 55.243702, 55.020523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.887527, 55.377621, 55.216156>,  <53.825321, 55.600819, 55.542213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.887527, 55.377621, 55.216156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931145, -0.192714, 0.309565,
		-0.329824, -0.807160, 0.489601,
		0.155515, -0.557991, -0.815145,
		53.934181, 55.210224, 54.971611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.188751, 54.943092, 55.706902>,  <53.825321, 55.600819, 55.542213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.188751, 54.943092, 55.706902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.302917, 55.053543, 55.339798>,  <54.371418, 55.119816, 55.119534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.302917, 55.053543, 55.339798>,  <54.188751, 54.943092, 55.706902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.302917, 55.053543, 55.339798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935809, -0.286995, 0.204682,
		-0.206874, -0.917271, -0.340318,
		0.285418, 0.276130, -0.917763,
		54.388542, 55.136383, 55.064468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.449745, 54.359299, 55.303890>,  <54.188751, 54.943092, 55.706902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.449745, 54.359299, 55.303890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.616730, 54.715851, 55.233276>,  <54.716923, 54.929783, 55.190907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.616730, 54.715851, 55.233276>,  <54.449745, 54.359299, 55.303890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.616730, 54.715851, 55.233276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889901, -0.361733, 0.277896,
		0.183852, -0.273111, -0.944250,
		0.417463, 0.891381, -0.176536,
		54.741970, 54.983265, 55.180317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.091431, 54.335945, 54.812057>,  <54.449745, 54.359299, 55.303890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.091431, 54.335945, 54.812057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.082420, 54.602272, 55.110367>,  <55.077015, 54.762070, 55.289352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.082420, 54.602272, 55.110367>,  <55.091431, 54.335945, 54.812057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.082420, 54.602272, 55.110367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873454, -0.349811, 0.338689,
		0.486385, 0.659027, -0.573683,
		-0.022525, 0.665819, 0.745773,
		55.075665, 54.802017, 55.334099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.809101, 54.521355, 54.962395>,  <55.091431, 54.335945, 54.812057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.809101, 54.521355, 54.962395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.586555, 54.643993, 55.271317>,  <55.453030, 54.717579, 55.456669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.586555, 54.643993, 55.271317>,  <55.809101, 54.521355, 54.962395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.586555, 54.643993, 55.271317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696725, -0.334358, 0.634649,
		0.452812, 0.891179, -0.027593,
		-0.556360, 0.306601, 0.772308,
		55.419647, 54.735973, 55.503010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.272472, 55.021477, 55.450451>,  <55.809101, 54.521355, 54.962395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.272472, 55.021477, 55.450451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.971260, 54.818565, 55.618080>,  <55.790535, 54.696819, 55.718658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.971260, 54.818565, 55.618080>,  <56.272472, 55.021477, 55.450451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.971260, 54.818565, 55.618080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533604, -0.098156, 0.840019,
		-0.384988, 0.856175, 0.344599,
		-0.753028, -0.507277, 0.419069,
		55.745350, 54.666382, 55.743801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.896938, 54.972900, 55.900745>,  <56.272472, 55.021477, 55.450451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.896938, 54.972900, 55.900745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.011391, 54.887817, 56.274460>,  <57.080063, 54.836769, 56.498688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.011391, 54.887817, 56.274460>,  <56.896938, 54.972900, 55.900745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.011391, 54.887817, 56.274460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715580, 0.601016, 0.355983,
		-0.637240, -0.770412, 0.019758,
		0.286129, -0.212708, 0.934284,
		57.097229, 54.824005, 56.554745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.369678, 55.518791, 56.172653>,  <56.896938, 54.972900, 55.900745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.369678, 55.518791, 56.172653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.104874, 55.572510, 56.467598>,  <56.945992, 55.604740, 56.644566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.104874, 55.572510, 56.467598>,  <57.369678, 55.518791, 56.172653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.104874, 55.572510, 56.467598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742929, -0.012303, 0.669258,
		0.098951, 0.990865, -0.091629,
		-0.662017, 0.134298, 0.737359,
		56.906269, 55.612801, 56.688805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.541424, 56.090424, 56.492542>,  <57.369678, 55.518791, 56.172653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.541424, 56.090424, 56.492542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.368340, 55.833271, 56.745354>,  <57.264488, 55.678978, 56.897041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.368340, 55.833271, 56.745354>,  <57.541424, 56.090424, 56.492542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.368340, 55.833271, 56.745354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832611, -0.016133, 0.553623,
		-0.345719, 0.765793, 0.542254,
		-0.432709, -0.642885, 0.632030,
		57.238525, 55.640404, 56.934963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.605076, 56.444504, 57.124550>,  <57.541424, 56.090424, 56.492542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.605076, 56.444504, 57.124550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.588989, 56.047916, 57.174156>,  <57.579338, 55.809963, 57.203918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.588989, 56.047916, 57.174156>,  <57.605076, 56.444504, 57.124550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.588989, 56.047916, 57.174156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813527, 0.039570, 0.580180,
		-0.580136, 0.124221, 0.804992,
		-0.040217, -0.991465, 0.124013,
		57.576923, 55.750477, 57.211361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.400856, 56.265305, 57.809799>,  <57.605076, 56.444504, 57.124550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.400856, 56.265305, 57.809799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.637558, 55.994522, 57.634735>,  <57.779579, 55.832050, 57.529697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.637558, 55.994522, 57.634735>,  <57.400856, 56.265305, 57.809799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.637558, 55.994522, 57.634735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786617, 0.366238, 0.497095,
		-0.176225, -0.638431, 0.749233,
		0.591759, -0.676960, -0.437660,
		57.815086, 55.791435, 57.503437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.573425, 56.839191, 58.358376>,  <57.400856, 56.265305, 57.809799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.573425, 56.839191, 58.358376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.546341, 56.441200, 58.328911>,  <57.530090, 56.202404, 58.311230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.546341, 56.441200, 58.328911>,  <57.573425, 56.839191, 58.358376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.546341, 56.441200, 58.328911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712884, 0.003410, -0.701273,
		0.698006, -0.099996, 0.709076,
		-0.067707, -0.994982, -0.073666,
		57.526028, 56.142704, 58.306812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.214096, 56.637661, 58.204067>,  <57.573425, 56.839191, 58.358376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.214096, 56.637661, 58.204067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.017906, 56.298576, 58.123253>,  <57.900192, 56.095127, 58.074764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.017906, 56.298576, 58.123253>,  <58.214096, 56.637661, 58.204067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.017906, 56.298576, 58.123253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762482, -0.305193, -0.570507,
		0.421967, -0.433866, 0.796055,
		-0.490474, -0.847713, -0.202034,
		57.870766, 56.044262, 58.062641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.537449, 55.956520, 58.467880>,  <58.214096, 56.637661, 58.204067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.537449, 55.956520, 58.467880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.332634, 55.904388, 58.128273>,  <58.209743, 55.873108, 57.924511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.332634, 55.904388, 58.128273>,  <58.537449, 55.956520, 58.467880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.332634, 55.904388, 58.128273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785367, -0.471335, -0.401301,
		-0.347868, -0.872271, 0.343701,
		-0.512042, -0.130332, -0.849015,
		58.179020, 55.865288, 57.873569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.176533, 56.346382, 58.649288>,  <58.537449, 55.956520, 58.467880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.176533, 56.346382, 58.649288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.396439, 56.264210, 58.973152>,  <59.528381, 56.214905, 59.167473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.396439, 56.264210, 58.973152>,  <59.176533, 56.346382, 58.649288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.396439, 56.264210, 58.973152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691318, 0.432167, 0.579061,
		-0.468868, -0.878083, 0.095572,
		0.549767, -0.205433, 0.809663,
		59.561367, 56.202579, 59.216049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.844448, 55.959488, 59.249580>,  <59.176533, 56.346382, 58.649288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.844448, 55.959488, 59.249580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.117371, 56.208519, 59.402870>,  <59.281124, 56.357937, 59.494843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.117371, 56.208519, 59.402870>,  <58.844448, 55.959488, 59.249580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.117371, 56.208519, 59.402870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676757, 0.339608, 0.653198,
		0.276516, -0.705031, 0.653047,
		0.682304, 0.622574, 0.383227,
		59.322063, 56.395290, 59.517838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.000210, 55.843361, 60.046040>,  <58.844448, 55.959488, 59.249580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.000210, 55.843361, 60.046040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.008583, 56.194450, 59.854553>,  <59.013607, 56.405102, 59.739662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.008583, 56.194450, 59.854553>,  <59.000210, 55.843361, 60.046040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.008583, 56.194450, 59.854553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642268, 0.378756, 0.666360,
		0.766194, 0.293513, 0.571661,
		0.020935, 0.877721, -0.478715,
		59.014862, 56.457767, 59.710938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.341141, 56.458870, 60.441395>,  <59.000210, 55.843361, 60.046040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.341141, 56.458870, 60.441395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.040276, 56.555725, 60.196243>,  <58.859756, 56.613838, 60.049152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.040276, 56.555725, 60.196243>,  <59.341141, 56.458870, 60.441395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.040276, 56.555725, 60.196243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525924, 0.339805, 0.779703,
		0.397055, 0.908791, -0.128243,
		-0.752165, 0.242139, -0.612876,
		58.814625, 56.628368, 60.012379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.593121, 56.372253, 61.101849>,  <59.341141, 56.458870, 60.441395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.593121, 56.372253, 61.101849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.646065, 56.014507, 61.272774>,  <59.677830, 55.799858, 61.375328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.646065, 56.014507, 61.272774>,  <59.593121, 56.372253, 61.101849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.646065, 56.014507, 61.272774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829106, -0.136358, -0.542207,
		0.543198, 0.426051, 0.723475,
		0.132356, -0.894364, 0.427311,
		59.685772, 55.746197, 61.400967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.305492, 56.354881, 61.240009>,  <59.593121, 56.372253, 61.101849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.305492, 56.354881, 61.240009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.146469, 55.990906, 61.192734>,  <60.051056, 55.772522, 61.164368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.146469, 55.990906, 61.192734>,  <60.305492, 56.354881, 61.240009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.146469, 55.990906, 61.192734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745828, -0.245418, -0.619282,
		0.534501, -0.334346, 0.776222,
		-0.397553, -0.909935, -0.118189,
		60.027203, 55.717926, 61.157276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.899635, 56.235294, 60.901360>,  <60.305492, 56.354881, 61.240009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.899635, 56.235294, 60.901360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.209869, 56.190296, 60.652901>,  <61.396008, 56.163300, 60.503826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.209869, 56.190296, 60.652901>,  <60.899635, 56.235294, 60.901360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.209869, 56.190296, 60.652901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070881, 0.962250, -0.262774,
		0.627256, 0.247830, 0.738329,
		0.775581, -0.112493, -0.621144,
		61.442543, 56.156548, 60.466557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.481369, 56.632805, 61.101208>,  <60.899635, 56.235294, 60.901360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.481369, 56.632805, 61.101208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.452316, 56.598858, 60.703712>,  <61.434883, 56.578491, 60.465214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.452316, 56.598858, 60.703712>,  <61.481369, 56.632805, 61.101208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.452316, 56.598858, 60.703712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072917, 0.993255, -0.090157,
		0.994690, -0.079009, -0.065956,
		-0.072634, -0.084869, -0.993741,
		61.430527, 56.573399, 60.405590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.222485, 56.497322, 61.335743>,  <61.481369, 56.632805, 61.101208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.222485, 56.497322, 61.335743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.998810, 56.166500, 61.312775>,  <61.864605, 55.968006, 61.298992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.998810, 56.166500, 61.312775>,  <62.222485, 56.497322, 61.335743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.998810, 56.166500, 61.312775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314806, -0.275903, 0.908171,
		-0.766947, 0.489760, 0.414642,
		-0.559187, -0.827050, -0.057423,
		61.831055, 55.918385, 61.295547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.633171, 56.528149, 61.789406>,  <62.222485, 56.497322, 61.335743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.633171, 56.528149, 61.789406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.758217, 56.149765, 61.754906>,  <61.833244, 55.922737, 61.734207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.758217, 56.149765, 61.754906>,  <61.633171, 56.528149, 61.789406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.758217, 56.149765, 61.754906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334972, 0.024821, 0.941901,
		-0.888855, -0.323347, 0.324628,
		0.312618, -0.945955, -0.086250,
		61.852001, 55.865978, 61.729031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.290604, 56.197601, 62.258820>,  <61.633171, 56.528149, 61.789406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.290604, 56.197601, 62.258820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.650101, 56.034519, 62.194267>,  <61.865799, 55.936668, 62.155537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.650101, 56.034519, 62.194267>,  <61.290604, 56.197601, 62.258820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.650101, 56.034519, 62.194267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250180, 0.174528, 0.952339,
		-0.360110, -0.896278, 0.258855,
		0.898738, -0.407707, -0.161382,
		61.919724, 55.912209, 62.145851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.506149, 55.826416, 62.818230>,  <61.290604, 56.197601, 62.258820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.506149, 55.826416, 62.818230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.849251, 55.912380, 62.631439>,  <62.055111, 55.963959, 62.519363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.849251, 55.912380, 62.631439>,  <61.506149, 55.826416, 62.818230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.849251, 55.912380, 62.631439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398394, 0.296168, 0.868082,
		0.324868, -0.930643, 0.168419,
		0.857755, 0.214916, -0.466978,
		62.106579, 55.976852, 62.491348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.985611, 55.830128, 63.397030>,  <61.506149, 55.826416, 62.818230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.985611, 55.830128, 63.397030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.046219, 55.464516, 63.246513>,  <62.082584, 55.245148, 63.156204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.046219, 55.464516, 63.246513>,  <61.985611, 55.830128, 63.397030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.046219, 55.464516, 63.246513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908200, 0.278993, -0.311989,
		0.390149, -0.294474, 0.872393,
		0.151519, -0.914029, -0.376290,
		62.091675, 55.190308, 63.133625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.755371, 55.366779, 63.571804>,  <61.985611, 55.830128, 63.397030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.755371, 55.366779, 63.571804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.565430, 55.355133, 63.219971>,  <62.451466, 55.348145, 63.008873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.565430, 55.355133, 63.219971>,  <62.755371, 55.366779, 63.571804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.565430, 55.355133, 63.219971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798205, 0.406679, -0.444388,
		0.370647, -0.913107, -0.169873,
		-0.474858, -0.029117, -0.879581,
		62.422974, 55.346397, 62.956097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.888557, 54.589142, 63.468533>,  <62.755371, 55.366779, 63.571804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.888557, 54.589142, 63.468533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.967293, 54.431377, 63.109489>,  <63.014534, 54.336720, 62.894066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.967293, 54.431377, 63.109489>,  <62.888557, 54.589142, 63.468533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.967293, 54.431377, 63.109489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883984, 0.324584, -0.336480,
		0.424059, 0.859700, -0.284762,
		0.196843, -0.394413, -0.897604,
		63.026344, 54.313053, 62.840210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.980663, 55.118469, 62.845860>,  <62.888557, 54.589142, 63.468533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.980663, 55.118469, 62.845860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.836411, 54.759003, 62.745987>,  <62.749859, 54.543324, 62.686066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.836411, 54.759003, 62.745987>,  <62.980663, 55.118469, 62.845860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.836411, 54.759003, 62.745987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792058, 0.436431, -0.426815,
		0.492533, 0.043839, -0.869189,
		-0.360630, -0.898669, -0.249680,
		62.728222, 54.489403, 62.671085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.710213, 55.162567, 62.083282>,  <62.980663, 55.118469, 62.845860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.710213, 55.162567, 62.083282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.525345, 54.896645, 62.318039>,  <62.414425, 54.737091, 62.458893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.525345, 54.896645, 62.318039>,  <62.710213, 55.162567, 62.083282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.525345, 54.896645, 62.318039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882475, 0.279568, -0.378258,
		0.087391, -0.692733, -0.715879,
		-0.462169, -0.664802, 0.586888,
		62.386696, 54.697205, 62.494106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.962498, 55.405354, 61.374218>,  <62.710213, 55.162567, 62.083282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.962498, 55.405354, 61.374218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.974510, 55.798447, 61.447243>,  <62.981720, 56.034302, 61.491058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.974510, 55.798447, 61.447243>,  <62.962498, 55.405354, 61.374218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.974510, 55.798447, 61.447243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772092, -0.138806, 0.620166,
		0.634800, 0.122330, -0.762931,
		0.030034, 0.982735, 0.182564,
		62.983521, 56.093266, 61.502010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.652084, 55.577610, 61.233738>,  <62.962498, 55.405354, 61.374218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.652084, 55.577610, 61.233738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.473038, 55.835594, 61.481499>,  <63.365608, 55.990387, 61.630157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.473038, 55.835594, 61.481499>,  <63.652084, 55.577610, 61.233738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.473038, 55.835594, 61.481499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832278, 0.047159, 0.552349,
		0.327034, 0.762758, -0.557897,
		-0.447619, 0.644962, 0.619404,
		63.338753, 56.029083, 61.667320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.035233, 56.242897, 61.276680>,  <63.652084, 55.577610, 61.233738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.035233, 56.242897, 61.276680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.835228, 56.115459, 61.598793>,  <63.715225, 56.038998, 61.792061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.835228, 56.115459, 61.598793>,  <64.035233, 56.242897, 61.276680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.835228, 56.115459, 61.598793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861507, -0.088243, 0.500018,
		-0.088243, 0.943774, 0.318596,
		-0.500018, -0.318596, 0.805282,
		63.685223, 56.019882, 61.840378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.452995, 56.500889, 61.747242>,  <64.035233, 56.242897, 61.276680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.452995, 56.500889, 61.747242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.230705, 56.199127, 61.886978>,  <64.097328, 56.018070, 61.970821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.230705, 56.199127, 61.886978>,  <64.452995, 56.500889, 61.747242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.230705, 56.199127, 61.886978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748505, -0.271151, 0.605158,
		-0.361812, 0.597786, 0.715363,
		-0.555726, -0.754407, 0.349340,
		64.063988, 55.972805, 61.991779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.979935, 56.233421, 62.205379>,  <64.452995, 56.500889, 61.747242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.979935, 56.233421, 62.205379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.663078, 55.994038, 62.253319>,  <64.472969, 55.850407, 62.282082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.663078, 55.994038, 62.253319>,  <64.979935, 56.233421, 62.205379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.663078, 55.994038, 62.253319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514653, -0.549376, 0.658270,
		-0.328104, 0.583122, 0.743180,
		-0.792136, -0.598461, 0.119852,
		64.425438, 55.814499, 62.289276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.724258, 55.939201, 62.478825>,  <64.979935, 56.233421, 62.205379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.724258, 55.939201, 62.478825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.732780, 56.150944, 62.139572>,  <65.737892, 56.277988, 61.936020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.732780, 56.150944, 62.139572>,  <65.724258, 55.939201, 62.478825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.732780, 56.150944, 62.139572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989310, 0.111246, 0.094288,
		0.144263, -0.841074, -0.521328,
		0.021307, 0.529358, -0.848131,
		65.739174, 56.309750, 61.885132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.077454, 55.582333, 61.908245>,  <65.724258, 55.939201, 62.478825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.077454, 55.582333, 61.908245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.111267, 55.980873, 61.903511>,  <66.131554, 56.219997, 61.900673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.111267, 55.980873, 61.903511>,  <66.077454, 55.582333, 61.908245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.111267, 55.980873, 61.903511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975057, -0.085169, -0.204964,
		-0.205224, 0.005790, -0.978698,
		0.084541, 0.996350, -0.011833,
		66.136627, 56.279778, 61.899960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.173317, 55.362003, 62.540936>,  <66.077454, 55.582333, 61.908245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.173317, 55.362003, 62.540936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.120476, 55.329803, 62.936119>,  <66.088768, 55.310482, 63.173229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.120476, 55.329803, 62.936119>,  <66.173317, 55.362003, 62.540936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.120476, 55.329803, 62.936119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990970, -0.033810, 0.129752,
		0.022959, 0.996181, 0.084238,
		-0.132105, -0.080498, 0.987962,
		66.080841, 55.305653, 63.232506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.400398, 55.932583, 63.077892>,  <66.173317, 55.362003, 62.540936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.400398, 55.932583, 63.077892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.423981, 55.545982, 63.177811>,  <66.438133, 55.314022, 63.237762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.423981, 55.545982, 63.177811>,  <66.400398, 55.932583, 63.077892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.423981, 55.545982, 63.177811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994762, 0.077817, 0.066288,
		-0.083506, 0.244576, 0.966028,
		0.058960, -0.966503, 0.249793,
		66.441666, 55.256031, 63.252750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.761749, 55.780525, 63.665703>,  <66.400398, 55.932583, 63.077892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.761749, 55.780525, 63.665703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.823196, 55.431107, 63.480957>,  <66.860062, 55.221455, 63.370110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.823196, 55.431107, 63.480957>,  <66.761749, 55.780525, 63.665703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.823196, 55.431107, 63.480957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980285, 0.193508, -0.039953,
		0.124276, -0.446624, 0.886049,
		0.153614, -0.873546, -0.461867,
		66.869278, 55.169044, 63.342396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.194954, 55.964783, 62.997139>,  <66.761749, 55.780525, 63.665703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.194954, 55.964783, 62.997139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.053383, 56.337776, 63.026016>,  <66.968437, 56.561573, 63.043343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.053383, 56.337776, 63.026016>,  <67.194954, 55.964783, 62.997139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.053383, 56.337776, 63.026016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921260, 0.360894, -0.145035,
		-0.161298, 0.015178, -0.986789,
		-0.353925, 0.932483, 0.072194,
		66.947205, 56.617519, 63.047676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.280838, 56.378353, 62.395496>,  <67.194954, 55.964783, 62.997139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.280838, 56.378353, 62.395496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.294380, 56.610130, 62.721222>,  <67.302505, 56.749195, 62.916656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.294380, 56.610130, 62.721222>,  <67.280838, 56.378353, 62.395496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.294380, 56.610130, 62.721222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972371, 0.169199, -0.160833,
		-0.230973, 0.797257, -0.557702,
		0.033863, 0.579441, 0.814310,
		67.304543, 56.783962, 62.965515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.617310, 55.847168, 62.152496>,  <67.280838, 56.378353, 62.395496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.617310, 55.847168, 62.152496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.964958, 55.701660, 62.018448>,  <68.173546, 55.614357, 61.938019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.964958, 55.701660, 62.018448>,  <67.617310, 55.847168, 62.152496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.964958, 55.701660, 62.018448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123005, 0.497293, -0.858819,
		0.479062, 0.787638, 0.387462,
		0.869120, -0.363768, -0.335117,
		68.225693, 55.592529, 61.917912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.106903, 56.316196, 61.972744>,  <67.617310, 55.847168, 62.152496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.106903, 56.316196, 61.972744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.168686, 55.999828, 61.735901>,  <68.205757, 55.810009, 61.593796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.168686, 55.999828, 61.735901>,  <68.106903, 56.316196, 61.972744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.168686, 55.999828, 61.735901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123377, 0.579170, -0.805817,
		0.980265, 0.197521, -0.008121,
		0.154462, -0.790916, -0.592109,
		68.215027, 55.762554, 61.558270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.268555, 56.680275, 61.354660>,  <68.106903, 56.316196, 61.972744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.268555, 56.680275, 61.354660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.305092, 56.299782, 61.236801>,  <68.327019, 56.071487, 61.166084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.305092, 56.299782, 61.236801>,  <68.268555, 56.680275, 61.354660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.305092, 56.299782, 61.236801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103401, 0.303344, -0.947254,
		0.990436, 0.056062, 0.126067,
		0.091346, -0.951231, -0.294646,
		68.332497, 56.014412, 61.148407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.794182, 56.629642, 60.761703>,  <68.268555, 56.680275, 61.354660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.794182, 56.629642, 60.761703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.534134, 56.327240, 60.731216>,  <68.378105, 56.145798, 60.712925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.534134, 56.327240, 60.731216>,  <68.794182, 56.629642, 60.761703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.534134, 56.327240, 60.731216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034923, 0.129928, -0.990908,
		0.759032, -0.641544, -0.110870,
		-0.650116, -0.756003, -0.076215,
		68.339096, 56.100441, 60.708351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.285843, 56.526974, 61.112526>,  <68.794182, 56.629642, 60.761703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.285843, 56.526974, 61.112526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.173264, 56.909271, 61.078247>,  <69.105713, 57.138649, 61.057682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.173264, 56.909271, 61.078247>,  <69.285843, 56.526974, 61.112526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.173264, 56.909271, 61.078247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934810, -0.293244, -0.200347,
		-0.216609, 0.023719, 0.975970,
		-0.281446, 0.955743, -0.085692,
		69.088829, 57.195995, 61.052540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.614189, 55.911961, 61.529953>,  <69.285843, 56.526974, 61.112526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.614189, 55.911961, 61.529953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.818596, 55.865601, 61.870644>,  <69.941238, 55.837784, 62.075058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.818596, 55.865601, 61.870644>,  <69.614189, 55.911961, 61.529953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.818596, 55.865601, 61.870644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618498, 0.737685, -0.270703,
		-0.596931, 0.665123, 0.448648,
		0.511012, -0.115897, 0.851724,
		69.971901, 55.830833, 62.126160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.130898, 56.326263, 61.552925>,  <69.614189, 55.911961, 61.529953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.130898, 56.326263, 61.552925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.929817, 56.158585, 61.855331>,  <69.809166, 56.057976, 62.036774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.929817, 56.158585, 61.855331>,  <70.130898, 56.326263, 61.552925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.929817, 56.158585, 61.855331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450834, 0.619069, 0.643041,
		-0.737587, 0.664099, -0.122223,
		-0.502707, -0.419196, 0.756016,
		69.779007, 56.032825, 62.082134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.128578, 56.588387, 60.823231>,  <70.130898, 56.326263, 61.552925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.128578, 56.588387, 60.823231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.817993, 56.509796, 60.583733>,  <69.631638, 56.462643, 60.440033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.817993, 56.509796, 60.583733>,  <70.128578, 56.588387, 60.823231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.817993, 56.509796, 60.583733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599391, 0.523534, 0.605510,
		0.194494, 0.829041, -0.524274,
		-0.776468, -0.196477, -0.598744,
		69.585052, 56.450851, 60.404110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.759567, 57.118427, 61.116573>,  <70.128578, 56.588387, 60.823231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.759567, 57.118427, 61.116573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.112038, 57.022034, 61.279274>,  <70.323524, 56.964199, 61.376896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.112038, 57.022034, 61.279274>,  <69.759567, 57.118427, 61.116573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.112038, 57.022034, 61.279274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416758, 0.802153, -0.427625,
		-0.223228, 0.546333, 0.807273,
		0.881182, -0.240980, 0.406752,
		70.376389, 56.949741, 61.401299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.905190, 57.769398, 61.501106>,  <69.759567, 57.118427, 61.116573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.905190, 57.769398, 61.501106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.227905, 57.552490, 61.407272>,  <70.421532, 57.422344, 61.350971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.227905, 57.552490, 61.407272>,  <69.905190, 57.769398, 61.501106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.227905, 57.552490, 61.407272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402907, 0.795350, -0.452863,
		0.432149, 0.270851, 0.860167,
		0.806792, -0.542271, -0.234582,
		70.469940, 57.389809, 61.336899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.451668, 58.234604, 61.397720>,  <69.905190, 57.769398, 61.501106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.451668, 58.234604, 61.397720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.569916, 57.894737, 61.223053>,  <70.640862, 57.690819, 61.118252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.569916, 57.894737, 61.223053>,  <70.451668, 58.234604, 61.397720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.569916, 57.894737, 61.223053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489852, 0.527252, -0.694298,
		0.820156, -0.008659, 0.572074,
		0.295615, -0.849665, -0.436671,
		70.658600, 57.639839, 61.092052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.111984, 58.480366, 61.142735>,  <70.451668, 58.234604, 61.397720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.111984, 58.480366, 61.142735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.030617, 58.137466, 60.953529>,  <70.981796, 57.931725, 60.840004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.030617, 58.137466, 60.953529>,  <71.111984, 58.480366, 61.142735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.030617, 58.137466, 60.953529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561114, 0.293836, -0.773829,
		0.802354, -0.422827, 0.421244,
		-0.203419, -0.857250, -0.473015,
		70.969589, 57.880291, 60.811626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.687126, 58.114651, 61.140034>,  <71.111984, 58.480366, 61.142735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.687126, 58.114651, 61.140034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.535759, 57.972275, 60.798248>,  <71.444939, 57.886848, 60.593178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.535759, 57.972275, 60.798248>,  <71.687126, 58.114651, 61.140034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.535759, 57.972275, 60.798248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880152, 0.147453, -0.451210,
		0.286598, -0.922802, 0.257485,
		-0.378410, -0.355941, -0.854465,
		71.422234, 57.865494, 60.541908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.111313, 57.580982, 60.793564>,  <71.687126, 58.114651, 61.140034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.111313, 57.580982, 60.793564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.918495, 57.769325, 60.498016>,  <71.802803, 57.882332, 60.320686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.918495, 57.769325, 60.498016>,  <72.111313, 57.580982, 60.793564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.918495, 57.769325, 60.498016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829927, -0.024904, -0.557316,
		-0.280819, -0.881856, -0.378775,
		-0.482040, 0.470860, -0.738870,
		71.773880, 57.910583, 60.276356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.807793, 57.659378, 60.372673>,  <72.111313, 57.580982, 60.793564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.807793, 57.659378, 60.372673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.494225, 57.799004, 60.167297>,  <72.306084, 57.882778, 60.044071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.494225, 57.799004, 60.167297>,  <72.807793, 57.659378, 60.372673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.494225, 57.799004, 60.167297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601807, 0.630508, -0.490193,
		0.152615, -0.693262, -0.704341,
		-0.783924, 0.349067, -0.513435,
		72.259048, 57.903725, 60.013268>
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
