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
	<36.507072, 52.811741, 49.337151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522781, 52.450344, 49.507874>,  <36.532207, 52.233505, 49.610310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522781, 52.450344, 49.507874>,  <36.507072, 52.811741, 49.337151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522781, 52.450344, 49.507874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839174, 0.261700, 0.476760,
		-0.542444, 0.339444, 0.768461,
		0.039273, -0.903488, 0.426810,
		36.534565, 52.179298, 49.635918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436596, 52.947468, 50.062252>,  <36.507072, 52.811741, 49.337151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436596, 52.947468, 50.062252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657280, 52.645184, 49.921104>,  <36.789692, 52.463814, 49.836418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657280, 52.645184, 49.921104>,  <36.436596, 52.947468, 50.062252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657280, 52.645184, 49.921104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793937, 0.346266, 0.499764,
		-0.255492, -0.555879, 0.791026,
		0.551714, -0.755711, -0.352864,
		36.822796, 52.418468, 49.815247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863232, 52.558926, 50.587654>,  <36.436596, 52.947468, 50.062252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863232, 52.558926, 50.587654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049290, 52.552895, 50.233612>,  <37.160927, 52.549274, 50.021187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049290, 52.552895, 50.233612>,  <36.863232, 52.558926, 50.587654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049290, 52.552895, 50.233612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883606, 0.068491, 0.463195,
		0.053638, -0.997538, 0.045181,
		0.465149, -0.015077, -0.885104,
		37.188835, 52.548370, 49.968082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367626, 52.042572, 50.521626>,  <36.863232, 52.558926, 50.587654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367626, 52.042572, 50.521626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489681, 52.335598, 50.278236>,  <37.562916, 52.511414, 50.132202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489681, 52.335598, 50.278236>,  <37.367626, 52.042572, 50.521626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489681, 52.335598, 50.278236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925990, -0.079071, 0.369174,
		0.222333, -0.676086, -0.702478,
		0.305139, 0.732568, -0.608469,
		37.581223, 52.555367, 50.095695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029408, 51.733723, 50.229294>,  <37.367626, 52.042572, 50.521626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029408, 51.733723, 50.229294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006054, 52.132607, 50.210670>,  <37.992043, 52.371937, 50.199497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006054, 52.132607, 50.210670>,  <38.029408, 51.733723, 50.229294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006054, 52.132607, 50.210670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933681, 0.071049, 0.350987,
		0.353315, -0.022976, -0.935222,
		-0.058382, 0.997208, -0.046555,
		37.988541, 52.431770, 50.196705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491909, 51.983387, 49.773090>,  <38.029408, 51.733723, 50.229294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491909, 51.983387, 49.773090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414440, 52.259174, 50.052269>,  <38.367958, 52.424648, 50.219776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414440, 52.259174, 50.052269>,  <38.491909, 51.983387, 49.773090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414440, 52.259174, 50.052269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897175, -0.163373, 0.410349,
		0.396948, 0.705650, -0.586933,
		-0.193674, 0.689469, 0.697942,
		38.356339, 52.466015, 50.261650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125042, 51.837238, 49.519104>,  <38.491909, 51.983387, 49.773090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125042, 51.837238, 49.519104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405033, 52.067284, 49.349739>,  <39.573029, 52.205311, 49.248119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405033, 52.067284, 49.349739>,  <39.125042, 51.837238, 49.519104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405033, 52.067284, 49.349739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712287, -0.605189, 0.355518,
		-0.051778, -0.550443, -0.833266,
		0.699975, 0.575116, -0.423409,
		39.615025, 52.239819, 49.222717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614613, 51.528175, 49.145863>,  <39.125042, 51.837238, 49.519104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614613, 51.528175, 49.145863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817135, 51.854965, 49.256287>,  <39.938648, 52.051037, 49.322540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817135, 51.854965, 49.256287>,  <39.614613, 51.528175, 49.145863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817135, 51.854965, 49.256287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671048, -0.574316, 0.468888,
		0.541614, -0.052153, -0.839008,
		0.506309, 0.816971, 0.276060,
		39.969028, 52.100056, 49.339104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372501, 51.411789, 49.154934>,  <39.614613, 51.528175, 49.145863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372501, 51.411789, 49.154934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342365, 51.702682, 49.427830>,  <40.324284, 51.877220, 49.591568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342365, 51.702682, 49.427830>,  <40.372501, 51.411789, 49.154934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342365, 51.702682, 49.427830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555525, -0.537562, 0.634365,
		0.828080, 0.426794, -0.363498,
		-0.075340, 0.727237, 0.682239,
		40.319763, 51.920853, 49.632500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064346, 51.552124, 49.486320>,  <40.372501, 51.411789, 49.154934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064346, 51.552124, 49.486320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773899, 51.656570, 49.740746>,  <40.599632, 51.719238, 49.893398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773899, 51.656570, 49.740746>,  <41.064346, 51.552124, 49.486320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773899, 51.656570, 49.740746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479985, -0.469871, 0.740834,
		0.492307, 0.843233, 0.215852,
		-0.726118, 0.261112, 0.636060,
		40.556065, 51.734905, 49.931564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317677, 51.892639, 50.180813>,  <41.064346, 51.552124, 49.486320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317677, 51.892639, 50.180813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970989, 51.696175, 50.215611>,  <40.762978, 51.578297, 50.236488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970989, 51.696175, 50.215611>,  <41.317677, 51.892639, 50.180813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970989, 51.696175, 50.215611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403677, -0.588237, 0.700730,
		-0.292998, 0.642450, 0.708104,
		-0.866716, -0.491158, 0.086990,
		40.710976, 51.548828, 50.241707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254780, 51.726646, 50.953690>,  <41.317677, 51.892639, 50.180813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254780, 51.726646, 50.953690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008884, 51.446938, 50.807747>,  <40.861347, 51.279114, 50.720181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008884, 51.446938, 50.807747>,  <41.254780, 51.726646, 50.953690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008884, 51.446938, 50.807747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413757, 0.679732, -0.605615,
		0.671481, -0.221347, -0.707191,
		-0.614751, -0.699264, -0.364843,
		40.824463, 51.237156, 50.698292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656281, 52.403473, 50.670021>,  <41.254780, 51.726646, 50.953690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656281, 52.403473, 50.670021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781857, 52.753132, 50.521805>,  <41.857204, 52.962929, 50.432877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781857, 52.753132, 50.521805>,  <41.656281, 52.403473, 50.670021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781857, 52.753132, 50.521805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465014, 0.198687, 0.862720,
		0.827769, -0.443150, -0.344117,
		0.313943, 0.874152, -0.370538,
		41.876038, 53.015377, 50.410645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406929, 52.362110, 50.704411>,  <41.656281, 52.403473, 50.670021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406929, 52.362110, 50.704411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274731, 52.735420, 50.760666>,  <42.195412, 52.959404, 50.794418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274731, 52.735420, 50.760666>,  <42.406929, 52.362110, 50.704411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274731, 52.735420, 50.760666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356423, -0.014560, 0.934211,
		0.873921, 0.358874, -0.327828,
		-0.330491, 0.933272, 0.140636,
		42.175583, 53.015404, 50.802856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582230, 52.437149, 51.354298>,  <42.406929, 52.362110, 50.704411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582230, 52.437149, 51.354298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428669, 52.802872, 51.302670>,  <42.336533, 53.022305, 51.271694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428669, 52.802872, 51.302670>,  <42.582230, 52.437149, 51.354298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428669, 52.802872, 51.302670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264645, 0.242864, 0.933263,
		0.884639, 0.324119, -0.335203,
		-0.383897, 0.914311, -0.129070,
		42.313499, 53.077164, 51.263950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089245, 53.078644, 51.339787>,  <42.582230, 52.437149, 51.354298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089245, 53.078644, 51.339787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731754, 53.121498, 51.514038>,  <42.517262, 53.147213, 51.618587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731754, 53.121498, 51.514038>,  <43.089245, 53.078644, 51.339787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731754, 53.121498, 51.514038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446863, 0.126961, 0.885548,
		0.039569, 0.986104, -0.161345,
		-0.893727, 0.107139, 0.435630,
		42.463634, 53.153641, 51.644726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825768, 53.113682, 51.233334>,  <43.089245, 53.078644, 51.339787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825768, 53.113682, 51.233334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593807, 53.048012, 51.552525>,  <43.454632, 53.008610, 51.744038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593807, 53.048012, 51.552525>,  <43.825768, 53.113682, 51.233334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593807, 53.048012, 51.552525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809452, 0.226988, -0.541538,
		-0.092224, -0.959960, -0.264521,
		-0.579898, -0.164174, 0.797976,
		43.419838, 52.998760, 51.791916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342937, 52.935364, 51.768410>,  <43.825768, 53.113682, 51.233334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342937, 52.935364, 51.768410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140244, 53.165283, 52.025417>,  <44.018627, 53.303234, 52.179623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140244, 53.165283, 52.025417>,  <44.342937, 52.935364, 51.768410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140244, 53.165283, 52.025417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834223, 0.514935, 0.197268,
		-0.217467, 0.635966, -0.740442,
		-0.506735, 0.574794, 0.642519,
		43.988224, 53.337723, 52.218174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499935, 53.594788, 51.482536>,  <44.342937, 52.935364, 51.768410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499935, 53.594788, 51.482536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416611, 53.619709, 51.872967>,  <44.366615, 53.634663, 52.107224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416611, 53.619709, 51.872967>,  <44.499935, 53.594788, 51.482536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416611, 53.619709, 51.872967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902822, 0.396095, 0.167394,
		-0.376190, 0.916093, -0.138757,
		-0.208309, 0.062301, 0.976077,
		44.354118, 53.638401, 52.165791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170673, 54.244774, 51.746201>,  <44.499935, 53.594788, 51.482536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170673, 54.244774, 51.746201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391098, 54.518463, 51.937267>,  <44.523354, 54.682678, 52.051907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391098, 54.518463, 51.937267>,  <44.170673, 54.244774, 51.746201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391098, 54.518463, 51.937267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529665, -0.729136, 0.433377,
		0.644812, 0.014187, -0.764209,
		0.551064, 0.684222, 0.477670,
		44.556416, 54.723728, 52.080566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.959072, 54.149914, 51.511837>,  <44.170673, 54.244774, 51.746201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.959072, 54.149914, 51.511837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893471, 54.278614, 51.884842>,  <44.854111, 54.355835, 52.108646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893471, 54.278614, 51.884842>,  <44.959072, 54.149914, 51.511837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893471, 54.278614, 51.884842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555367, -0.751151, 0.356848,
		0.815273, 0.576411, -0.055497,
		-0.164005, 0.321750, 0.932512,
		44.844269, 54.375137, 52.164597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527504, 53.792694, 51.604027>,  <44.959072, 54.149914, 51.511837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527504, 53.792694, 51.604027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852734, 53.964615, 51.761093>,  <46.047871, 54.067768, 51.855331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852734, 53.964615, 51.761093>,  <45.527504, 53.792694, 51.604027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852734, 53.964615, 51.761093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352462, 0.900250, -0.255578,
		-0.463344, 0.069404, 0.883457,
		0.813070, 0.429805, 0.392663,
		46.096653, 54.093555, 51.878891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333206, 54.445198, 52.051605>,  <45.527504, 53.792694, 51.604027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333206, 54.445198, 52.051605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.711479, 54.487122, 51.928513>,  <45.938442, 54.512276, 51.854656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.711479, 54.487122, 51.928513>,  <45.333206, 54.445198, 52.051605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711479, 54.487122, 51.928513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220287, 0.902737, -0.369512,
		0.239073, 0.417230, 0.876791,
		0.945684, 0.104806, -0.307731,
		45.995186, 54.518562, 51.836193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591324, 55.162132, 52.144737>,  <45.333206, 54.445198, 52.051605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591324, 55.162132, 52.144737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828068, 55.009010, 51.861000>,  <45.970112, 54.917137, 51.690758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828068, 55.009010, 51.861000>,  <45.591324, 55.162132, 52.144737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.828068, 55.009010, 51.861000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146446, 0.814316, -0.561643,
		0.792628, 0.436292, 0.425898,
		0.591856, -0.382803, -0.709343,
		46.005623, 54.894169, 51.648197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.138062, 55.674664, 52.131783>,  <45.591324, 55.162132, 52.144737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.138062, 55.674664, 52.131783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.053116, 55.451382, 51.810959>,  <46.002148, 55.317413, 51.618465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.053116, 55.451382, 51.810959>,  <46.138062, 55.674664, 52.131783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.053116, 55.451382, 51.810959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206827, 0.827866, -0.521403,
		0.955052, 0.055161, -0.291262,
		-0.212365, -0.558208, -0.802063,
		45.989407, 55.283920, 51.570339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.417698, 55.929462, 51.375465>,  <46.138062, 55.674664, 52.131783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.417698, 55.929462, 51.375465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058071, 55.756748, 51.346519>,  <45.842297, 55.653118, 51.329151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058071, 55.756748, 51.346519>,  <46.417698, 55.929462, 51.375465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058071, 55.756748, 51.346519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365396, 0.831088, -0.419259,
		0.241171, -0.350501, -0.904978,
		-0.899067, -0.431789, -0.072362,
		45.788349, 55.627213, 51.324810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.769398, 56.338573, 50.883629>,  <46.417698, 55.929462, 51.375465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.769398, 56.338573, 50.883629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.943508, 56.693268, 50.945900>,  <47.047974, 56.906086, 50.983261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.943508, 56.693268, 50.945900>,  <46.769398, 56.338573, 50.883629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.943508, 56.693268, 50.945900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799818, -0.460252, 0.385305,
		0.413314, -0.043202, -0.909563,
		0.435274, 0.886737, 0.155675,
		47.074089, 56.959290, 50.992603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.588863, 56.439056, 50.584782>,  <46.769398, 56.338573, 50.883629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.588863, 56.439056, 50.584782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.532906, 56.660435, 50.913200>,  <47.499332, 56.793262, 51.110252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.532906, 56.660435, 50.913200>,  <47.588863, 56.439056, 50.584782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.532906, 56.660435, 50.913200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891433, -0.290557, 0.347740,
		0.431018, 0.780558, -0.452717,
		-0.139891, 0.553449, 0.821051,
		47.490940, 56.826469, 51.159515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.064789, 56.978428, 50.722569>,  <47.588863, 56.439056, 50.584782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.064789, 56.978428, 50.722569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.938984, 56.842438, 51.077084>,  <47.863499, 56.760845, 51.289791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.938984, 56.842438, 51.077084>,  <48.064789, 56.978428, 50.722569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.938984, 56.842438, 51.077084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949069, -0.094239, 0.300646,
		-0.018690, 0.935701, 0.352298,
		-0.314515, -0.339974, 0.886283,
		47.844631, 56.740444, 51.342968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.206749, 57.419930, 51.392006>,  <48.064789, 56.978428, 50.722569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.206749, 57.419930, 51.392006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.201088, 57.033318, 51.494465>,  <48.197693, 56.801350, 51.555943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.201088, 57.033318, 51.494465>,  <48.206749, 57.419930, 51.392006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.201088, 57.033318, 51.494465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916607, 0.089821, 0.389569,
		-0.399539, 0.240303, 0.884660,
		-0.014153, -0.966533, 0.256150,
		48.196842, 56.743359, 51.571308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.412933, 57.276848, 52.155315>,  <48.206749, 57.419930, 51.392006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.412933, 57.276848, 52.155315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.505894, 56.958549, 51.931610>,  <48.561668, 56.767570, 51.797386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.505894, 56.958549, 51.931610>,  <48.412933, 57.276848, 52.155315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.505894, 56.958549, 51.931610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891768, -0.055203, 0.449115,
		-0.388255, -0.603105, 0.696794,
		0.232398, -0.795749, -0.559262,
		48.575615, 56.719826, 51.763832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.520351, 56.640114, 52.565563>,  <48.412933, 57.276848, 52.155315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.520351, 56.640114, 52.565563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.739933, 56.694069, 52.235603>,  <48.871681, 56.726440, 52.037628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.739933, 56.694069, 52.235603>,  <48.520351, 56.640114, 52.565563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.739933, 56.694069, 52.235603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826681, 0.058187, 0.559654,
		0.123486, -0.989151, -0.079564,
		0.548953, 0.134884, -0.824898,
		48.904617, 56.734535, 51.988132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.956234, 55.991287, 52.294563>,  <48.520351, 56.640114, 52.565563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.956234, 55.991287, 52.294563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.095554, 56.364983, 52.263893>,  <49.179146, 56.589199, 52.245491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.095554, 56.364983, 52.263893>,  <48.956234, 55.991287, 52.294563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.095554, 56.364983, 52.263893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799568, -0.253409, 0.544495,
		0.489260, -0.250956, -0.835252,
		0.348305, 0.934240, -0.076673,
		49.200047, 56.645256, 52.240891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.775257, 55.930420, 52.258770>,  <48.956234, 55.991287, 52.294563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.775257, 55.930420, 52.258770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.642059, 56.289001, 52.375725>,  <49.562141, 56.504150, 52.445896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.642059, 56.289001, 52.375725>,  <49.775257, 55.930420, 52.258770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.642059, 56.289001, 52.375725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838206, 0.139399, 0.527237,
		0.431884, 0.420646, -0.797830,
		-0.332997, 0.896451, 0.292384,
		49.542160, 56.557938, 52.463440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.170826, 56.511139, 51.977413>,  <49.775257, 55.930420, 52.258770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.170826, 56.511139, 51.977413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.016186, 56.515427, 52.346287>,  <49.923401, 56.517998, 52.567612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.016186, 56.515427, 52.346287>,  <50.170826, 56.511139, 51.977413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.016186, 56.515427, 52.346287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922245, 0.002155, 0.386600,
		0.002155, 0.999940, -0.010716,
		-0.386600, 0.010716, 0.922185,
		49.900208, 56.518642, 52.622944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.534027, 56.989853, 52.411892>,  <50.170826, 56.511139, 51.977413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.534027, 56.989853, 52.411892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.373981, 56.730427, 52.670895>,  <50.277954, 56.574772, 52.826298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.373981, 56.730427, 52.670895>,  <50.534027, 56.989853, 52.411892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.373981, 56.730427, 52.670895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846428, 0.009367, 0.532421,
		-0.351376, 0.761100, 0.545217,
		-0.400118, -0.648567, 0.647508,
		50.253944, 56.535858, 52.865147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.504585, 57.261700, 53.175819>,  <50.534027, 56.989853, 52.411892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.504585, 57.261700, 53.175819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.530361, 56.868214, 53.242931>,  <50.545826, 56.632122, 53.283199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.530361, 56.868214, 53.242931>,  <50.504585, 57.261700, 53.175819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.530361, 56.868214, 53.242931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586818, 0.173343, 0.790947,
		-0.807150, 0.047485, 0.588433,
		0.064442, -0.983716, 0.167778,
		50.549694, 56.573097, 53.293266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.452099, 57.237091, 53.969696>,  <50.504585, 57.261700, 53.175819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.452099, 57.237091, 53.969696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.663925, 56.969364, 53.761246>,  <50.791023, 56.808727, 53.636173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.663925, 56.969364, 53.761246>,  <50.452099, 57.237091, 53.969696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.663925, 56.969364, 53.761246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795831, 0.179376, 0.578340,
		-0.293614, -0.721000, 0.627654,
		0.529569, -0.669315, -0.521127,
		50.822796, 56.768570, 53.604908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.875443, 56.753258, 54.354153>,  <50.452099, 57.237091, 53.969696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.875443, 56.753258, 54.354153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.072239, 56.741413, 54.006115>,  <51.190319, 56.734306, 53.797291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.072239, 56.741413, 54.006115>,  <50.875443, 56.753258, 54.354153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.072239, 56.741413, 54.006115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865037, 0.129422, 0.484728,
		0.098254, -0.991147, 0.089295,
		0.491993, -0.029617, -0.870095,
		51.219837, 56.732529, 53.745087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.296158, 56.239639, 54.434666>,  <50.875443, 56.753258, 54.354153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.296158, 56.239639, 54.434666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.451309, 56.473129, 54.149342>,  <51.544399, 56.613224, 53.978146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.451309, 56.473129, 54.149342>,  <51.296158, 56.239639, 54.434666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.451309, 56.473129, 54.149342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868520, 0.027626, 0.494883,
		0.308581, -0.811482, -0.496260,
		0.387879, 0.583723, -0.713314,
		51.567673, 56.648247, 53.935349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.007782, 55.996857, 54.250027>,  <51.296158, 56.239639, 54.434666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.007782, 55.996857, 54.250027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.971889, 56.390442, 54.188362>,  <51.950352, 56.626595, 54.151363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.971889, 56.390442, 54.188362>,  <52.007782, 55.996857, 54.250027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.971889, 56.390442, 54.188362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847151, 0.156798, 0.507690,
		0.523720, -0.085041, -0.847635,
		-0.089733, 0.983963, -0.154161,
		51.944969, 56.685631, 54.142113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.637474, 56.112740, 54.119541>,  <52.007782, 55.996857, 54.250027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.637474, 56.112740, 54.119541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.455837, 56.442375, 54.255001>,  <52.346855, 56.640156, 54.336277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.455837, 56.442375, 54.255001>,  <52.637474, 56.112740, 54.119541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.455837, 56.442375, 54.255001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789163, 0.195595, 0.582206,
		0.413551, 0.531623, -0.739157,
		-0.454090, 0.824087, 0.338649,
		52.319611, 56.689602, 54.356594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.037640, 56.650188, 53.985592>,  <52.637474, 56.112740, 54.119541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.037640, 56.650188, 53.985592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.819199, 56.698715, 54.317146>,  <52.688133, 56.727833, 54.516079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.819199, 56.698715, 54.317146>,  <53.037640, 56.650188, 53.985592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.819199, 56.698715, 54.317146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837411, 0.105853, 0.536225,
		-0.022686, 0.986953, -0.159401,
		-0.546102, 0.121320, 0.828887,
		52.655369, 56.735111, 54.565811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.304642, 57.236423, 54.337433>,  <53.037640, 56.650188, 53.985592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.304642, 57.236423, 54.337433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.106457, 57.027996, 54.615425>,  <52.987545, 56.902939, 54.782223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.106457, 57.027996, 54.615425>,  <53.304642, 57.236423, 54.337433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.106457, 57.027996, 54.615425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773968, 0.098380, 0.625535,
		-0.394321, 0.847825, 0.354548,
		-0.495464, -0.521070, 0.694983,
		52.957817, 56.871674, 54.823921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.938843, 57.356266, 54.654938>,  <53.304642, 57.236423, 54.337433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.938843, 57.356266, 54.654938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.797653, 57.599274, 54.939564>,  <53.712940, 57.745079, 55.110340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.797653, 57.599274, 54.939564>,  <53.938843, 57.356266, 54.654938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.797653, 57.599274, 54.939564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842108, 0.537719, -0.041367,
		-0.407755, 0.584615, -0.701399,
		-0.352972, 0.607522, 0.711567,
		53.691761, 57.781528, 55.153034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.959400, 58.088810, 54.395332>,  <53.938843, 57.356266, 54.654938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.959400, 58.088810, 54.395332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.966660, 58.046642, 54.793037>,  <53.971016, 58.021343, 55.031662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.966660, 58.046642, 54.793037>,  <53.959400, 58.088810, 54.395332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.966660, 58.046642, 54.793037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898125, 0.438707, 0.030124,
		-0.439366, 0.892426, 0.102637,
		0.018144, -0.105417, 0.994263,
		53.972103, 58.015018, 55.091316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.082207, 58.775196, 54.667416>,  <53.959400, 58.088810, 54.395332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.082207, 58.775196, 54.667416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.188744, 58.533352, 54.967686>,  <54.252666, 58.388245, 55.147846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.188744, 58.533352, 54.967686>,  <54.082207, 58.775196, 54.667416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.188744, 58.533352, 54.967686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797681, 0.575449, 0.180454,
		-0.541079, 0.550736, 0.635550,
		0.266344, -0.604606, 0.750675,
		54.268646, 58.351971, 55.192886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.371620, 59.205112, 55.390396>,  <54.082207, 58.775196, 54.667416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.371620, 59.205112, 55.390396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.535172, 58.848732, 55.311378>,  <54.633305, 58.634903, 55.263969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.535172, 58.848732, 55.311378>,  <54.371620, 59.205112, 55.390396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.535172, 58.848732, 55.311378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912557, 0.397393, 0.096537,
		-0.007507, -0.219742, 0.975529,
		0.408882, -0.890950, -0.197543,
		54.657837, 58.581448, 55.252117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.055130, 59.297379, 55.665649>,  <54.371620, 59.205112, 55.390396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.055130, 59.297379, 55.665649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.065308, 58.941074, 55.484146>,  <55.071415, 58.727291, 55.375244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.065308, 58.941074, 55.484146>,  <55.055130, 59.297379, 55.665649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.065308, 58.941074, 55.484146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999674, 0.021575, 0.013693,
		-0.002408, -0.453959, 0.891019,
		0.025440, -0.890761, -0.453759,
		55.072941, 58.673847, 55.348019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.438080, 58.781593, 56.119492>,  <55.055130, 59.297379, 55.665649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.438080, 58.781593, 56.119492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.460213, 58.680885, 55.733009>,  <55.473492, 58.620461, 55.501122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.460213, 58.680885, 55.733009>,  <55.438080, 58.781593, 56.119492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.460213, 58.680885, 55.733009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993729, 0.108051, 0.028754,
		0.097160, -0.961736, 0.256172,
		0.055333, -0.251772, -0.966203,
		55.476814, 58.605354, 55.443150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.897362, 58.231808, 56.010933>,  <55.438080, 58.781593, 56.119492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.897362, 58.231808, 56.010933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.865517, 58.443977, 55.673340>,  <55.846409, 58.571278, 55.470783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.865517, 58.443977, 55.673340>,  <55.897362, 58.231808, 56.010933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.865517, 58.443977, 55.673340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995629, 0.000837, -0.093393,
		-0.048831, -0.847733, -0.528171,
		-0.079615, 0.530423, -0.843986,
		55.841633, 58.603104, 55.420143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.233631, 57.914768, 55.418381>,  <55.897362, 58.231808, 56.010933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.233631, 57.914768, 55.418381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.260040, 58.303970, 55.329926>,  <56.275887, 58.537491, 55.276852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.260040, 58.303970, 55.329926>,  <56.233631, 57.914768, 55.418381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.260040, 58.303970, 55.329926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985134, -0.098786, -0.140540,
		-0.158592, -0.208570, -0.965063,
		0.066023, 0.973006, -0.221136,
		56.279846, 58.595871, 55.263584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.563896, 57.996006, 54.733219>,  <56.233631, 57.914768, 55.418381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.563896, 57.996006, 54.733219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.641777, 58.334511, 54.931587>,  <56.688507, 58.537613, 55.050610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.641777, 58.334511, 54.931587>,  <56.563896, 57.996006, 54.733219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.641777, 58.334511, 54.931587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978717, -0.134196, -0.155257,
		-0.064837, 0.515595, -0.854376,
		0.194704, 0.846259, 0.495920,
		56.700188, 58.588387, 55.080364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.084457, 58.313118, 54.325966>,  <56.563896, 57.996006, 54.733219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.084457, 58.313118, 54.325966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.117180, 58.417923, 54.710602>,  <57.136814, 58.480808, 54.941383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.117180, 58.417923, 54.710602>,  <57.084457, 58.313118, 54.325966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.117180, 58.417923, 54.710602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978770, -0.203050, -0.027938,
		0.187931, 0.943461, -0.273062,
		0.081804, 0.262014, 0.961591,
		57.141720, 58.496529, 54.999081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.613346, 58.890724, 54.312527>,  <57.084457, 58.313118, 54.325966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.613346, 58.890724, 54.312527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.561157, 58.670456, 54.642311>,  <57.529842, 58.538296, 54.840183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.561157, 58.670456, 54.642311>,  <57.613346, 58.890724, 54.312527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.561157, 58.670456, 54.642311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987817, -0.143344, 0.060587,
		0.084819, 0.822324, 0.562663,
		-0.130477, -0.550669, 0.824463,
		57.522015, 58.505257, 54.889648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.166710, 58.972744, 54.687824>,  <57.613346, 58.890724, 54.312527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.166710, 58.972744, 54.687824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.019661, 58.645470, 54.864655>,  <57.931431, 58.449104, 54.970753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.019661, 58.645470, 54.864655>,  <58.166710, 58.972744, 54.687824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.019661, 58.645470, 54.864655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927210, -0.359099, 0.106438,
		0.071663, 0.449026, 0.890640,
		-0.367621, -0.818183, 0.442076,
		57.909374, 58.400013, 54.997276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.511307, 58.868935, 55.423088>,  <58.166710, 58.972744, 54.687824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.511307, 58.868935, 55.423088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.372993, 58.527042, 55.268234>,  <58.290005, 58.321907, 55.175320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.372993, 58.527042, 55.268234>,  <58.511307, 58.868935, 55.423088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.372993, 58.527042, 55.268234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885783, -0.433461, 0.165834,
		-0.309551, -0.285577, 0.906986,
		-0.345784, -0.854727, -0.387138,
		58.269257, 58.270626, 55.152092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.660500, 58.313721, 56.006683>,  <58.511307, 58.868935, 55.423088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.660500, 58.313721, 56.006683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.629906, 58.207523, 55.622253>,  <58.611549, 58.143806, 55.391594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.629906, 58.207523, 55.622253>,  <58.660500, 58.313721, 56.006683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.629906, 58.207523, 55.622253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849714, -0.521668, 0.076486,
		-0.521668, -0.810787, 0.265493,
		-0.076486, -0.265493, -0.961074,
		58.606960, 58.127876, 55.333931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.541882, 57.555866, 55.866737>,  <58.660500, 58.313721, 56.006683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.541882, 57.555866, 55.866737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.766953, 57.795277, 55.638649>,  <58.901997, 57.938923, 55.501797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.766953, 57.795277, 55.638649>,  <58.541882, 57.555866, 55.866737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.766953, 57.795277, 55.638649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823636, -0.464999, 0.324653,
		-0.070840, -0.652333, -0.754615,
		0.562677, 0.598530, -0.570225,
		58.935757, 57.974834, 55.467583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.090252, 57.142754, 55.435085>,  <58.541882, 57.555866, 55.866737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.090252, 57.142754, 55.435085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.218529, 57.517605, 55.490150>,  <59.295494, 57.742516, 55.523190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.218529, 57.517605, 55.490150>,  <59.090252, 57.142754, 55.435085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.218529, 57.517605, 55.490150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864802, -0.348970, 0.361023,
		0.386365, 0.003275, -0.922340,
		0.320687, 0.937128, 0.137662,
		59.314735, 57.798744, 55.531448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.692860, 57.482845, 55.046322>,  <59.090252, 57.142754, 55.435085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.692860, 57.482845, 55.046322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.686104, 57.662098, 55.403847>,  <59.682049, 57.769650, 55.618362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.686104, 57.662098, 55.403847>,  <59.692860, 57.482845, 55.046322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.686104, 57.662098, 55.403847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952812, -0.263771, 0.150250,
		0.303092, 0.854170, -0.422526,
		-0.016888, 0.448128, 0.893810,
		59.681038, 57.796535, 55.671989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.446762, 57.383186, 55.394672>,  <59.692860, 57.482845, 55.046322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.446762, 57.383186, 55.394672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.692329, 57.682911, 55.295364>,  <60.839668, 57.862747, 55.235779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.692329, 57.682911, 55.295364>,  <60.446762, 57.383186, 55.394672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.692329, 57.682911, 55.295364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399807, -0.023969, 0.916286,
		0.680633, -0.661784, -0.314295,
		0.613916, 0.749312, -0.248272,
		60.876503, 57.907703, 55.220882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.054760, 57.148647, 55.562366>,  <60.446762, 57.383186, 55.394672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.054760, 57.148647, 55.562366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.073494, 57.546745, 55.596512>,  <61.084736, 57.785606, 55.617001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.073494, 57.546745, 55.596512>,  <61.054760, 57.148647, 55.562366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.073494, 57.546745, 55.596512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472733, -0.097364, 0.875810,
		0.879960, -0.000664, -0.475047,
		0.046833, 0.995249, 0.085363,
		61.087543, 57.845322, 55.622120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.698772, 57.443779, 55.687363>,  <61.054760, 57.148647, 55.562366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.698772, 57.443779, 55.687363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.478996, 57.732353, 55.855957>,  <61.347130, 57.905499, 55.957115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.478996, 57.732353, 55.855957>,  <61.698772, 57.443779, 55.687363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.478996, 57.732353, 55.855957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414515, -0.202642, 0.887194,
		0.725464, 0.662170, -0.187706,
		-0.549436, 0.721434, 0.421489,
		61.314167, 57.948784, 55.982403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.008102, 58.171898, 55.885834>,  <61.698772, 57.443779, 55.687363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.008102, 58.171898, 55.885834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.721680, 58.038494, 56.131119>,  <61.549824, 57.958450, 56.278290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.721680, 58.038494, 56.131119>,  <62.008102, 58.171898, 55.885834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.721680, 58.038494, 56.131119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673974, -0.101648, 0.731729,
		-0.181706, 0.937251, 0.297562,
		-0.716060, -0.333509, 0.613212,
		61.506863, 57.938442, 56.315083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.866287, 58.644741, 56.437962>,  <62.008102, 58.171898, 55.885834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.866287, 58.644741, 56.437962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.789528, 58.280533, 56.584457>,  <61.743473, 58.062008, 56.672356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.789528, 58.280533, 56.584457>,  <61.866287, 58.644741, 56.437962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.789528, 58.280533, 56.584457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555701, 0.206780, 0.805256,
		-0.808931, 0.358050, 0.466294,
		-0.191902, -0.910517, 0.366240,
		61.731956, 58.007378, 56.694328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.727482, 58.642315, 57.240608>,  <61.866287, 58.644741, 56.437962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.727482, 58.642315, 57.240608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.910362, 58.318665, 57.092941>,  <62.020092, 58.124474, 57.004341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.910362, 58.318665, 57.092941>,  <61.727482, 58.642315, 57.240608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.910362, 58.318665, 57.092941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791339, 0.180663, 0.584075,
		-0.405893, -0.559180, 0.722889,
		0.457203, -0.809122, -0.369171,
		62.047523, 58.075928, 56.982189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.875828, 58.174625, 57.777184>,  <61.727482, 58.642315, 57.240608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.875828, 58.174625, 57.777184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.115555, 58.180386, 57.457031>,  <62.259392, 58.183842, 57.264942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.115555, 58.180386, 57.457031>,  <61.875828, 58.174625, 57.777184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.115555, 58.180386, 57.457031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738113, 0.377053, 0.559483,
		0.309842, -0.926080, 0.215346,
		0.599323, 0.014401, -0.800378,
		62.295353, 58.184708, 57.216919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.795963, 58.033257, 58.545280>,  <61.875828, 58.174625, 57.777184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.795963, 58.033257, 58.545280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.171318, 58.127594, 58.444244>,  <62.396530, 58.184196, 58.383621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.171318, 58.127594, 58.444244>,  <61.795963, 58.033257, 58.545280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.171318, 58.127594, 58.444244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339167, 0.768661, -0.542333,
		0.066250, 0.594590, 0.801294,
		0.938390, 0.235843, -0.252589,
		62.452835, 58.198345, 58.368469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.107075, 58.714157, 58.743420>,  <61.795963, 58.033257, 58.545280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.107075, 58.714157, 58.743420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.233696, 58.594631, 58.383308>,  <62.309669, 58.522915, 58.167240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.233696, 58.594631, 58.383308>,  <62.107075, 58.714157, 58.743420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.233696, 58.594631, 58.383308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335948, 0.852253, -0.401002,
		0.887091, 0.429387, 0.169401,
		0.316558, -0.298815, -0.900278,
		62.328663, 58.504986, 58.113224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.571430, 59.270008, 58.429169>,  <62.107075, 58.714157, 58.743420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.571430, 59.270008, 58.429169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.394676, 59.039074, 58.154526>,  <62.288624, 58.900513, 57.989742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.394676, 59.039074, 58.154526>,  <62.571430, 59.270008, 58.429169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.394676, 59.039074, 58.154526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345282, 0.815876, -0.463817,
		0.827961, 0.032120, -0.559865,
		-0.441882, -0.577334, -0.686604,
		62.262112, 58.865875, 57.948544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.094631, 58.933052, 58.900673>,  <62.571430, 59.270008, 58.429169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.094631, 58.933052, 58.900673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.343163, 58.620735, 58.926964>,  <63.492279, 58.433346, 58.942738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.343163, 58.620735, 58.926964>,  <63.094631, 58.933052, 58.900673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.343163, 58.620735, 58.926964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782339, -0.613507, 0.107489,
		-0.043604, -0.118204, -0.992031,
		0.621324, -0.780792, 0.065724,
		63.529560, 58.386497, 58.946682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.398788, 59.467621, 59.351173>,  <63.094631, 58.933052, 58.900673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.398788, 59.467621, 59.351173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.165054, 59.647224, 59.080780>,  <63.024815, 59.754986, 58.918545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.165054, 59.647224, 59.080780>,  <63.398788, 59.467621, 59.351173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.165054, 59.647224, 59.080780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371315, 0.888606, 0.269265,
		0.721582, -0.093662, -0.685963,
		-0.584332, 0.449005, -0.675981,
		62.989754, 59.781925, 58.877987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.141075, 59.361717, 59.571705>,  <63.398788, 59.467621, 59.351173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.141075, 59.361717, 59.571705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.950340, 59.020226, 59.655388>,  <63.835896, 58.815331, 59.705597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.950340, 59.020226, 59.655388>,  <64.141075, 59.361717, 59.571705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.950340, 59.020226, 59.655388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827811, -0.516205, -0.219683,
		0.295544, 0.068430, 0.952875,
		-0.476846, -0.853727, 0.209208,
		63.807285, 58.764107, 59.718151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.564034, 58.911629, 59.952179>,  <64.141075, 59.361717, 59.571705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.564034, 58.911629, 59.952179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.297379, 58.690163, 59.752556>,  <64.137390, 58.557281, 59.632782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.297379, 58.690163, 59.752556>,  <64.564034, 58.911629, 59.952179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.297379, 58.690163, 59.752556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722793, -0.643753, -0.251303,
		-0.182131, -0.528240, 0.829332,
		-0.666633, -0.553665, -0.499055,
		64.097389, 58.524063, 59.602840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.504601, 58.120529, 60.117256>,  <64.564034, 58.911629, 59.952179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.504601, 58.120529, 60.117256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.417267, 58.189919, 59.733124>,  <64.364868, 58.231552, 59.502644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.417267, 58.189919, 59.733124>,  <64.504601, 58.120529, 60.117256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.417267, 58.189919, 59.733124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734914, -0.618221, -0.278755,
		-0.642054, -0.766623, 0.007491,
		-0.218331, 0.173470, -0.960333,
		64.351768, 58.241959, 59.445023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.557686, 57.541130, 59.809422>,  <64.504601, 58.120529, 60.117256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.557686, 57.541130, 59.809422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.616623, 57.809067, 59.518326>,  <64.651985, 57.969830, 59.343670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.616623, 57.809067, 59.518326>,  <64.557686, 57.541130, 59.809422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.616623, 57.809067, 59.518326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762286, -0.545734, -0.347986,
		-0.630248, -0.503476, -0.591016,
		0.147335, 0.669840, -0.727741,
		64.660820, 58.010017, 59.300003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.520531, 57.325459, 59.085072>,  <64.557686, 57.541130, 59.809422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.520531, 57.325459, 59.085072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.764847, 57.641068, 59.058578>,  <64.911438, 57.830433, 59.042683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.764847, 57.641068, 59.058578>,  <64.520531, 57.325459, 59.085072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.764847, 57.641068, 59.058578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729516, -0.593294, -0.340306,
		-0.307801, 0.159539, -0.937980,
		0.610790, 0.789018, -0.066230,
		64.948082, 57.877773, 59.038708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.753777, 57.481594, 58.421875>,  <64.520531, 57.325459, 59.085072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.753777, 57.481594, 58.421875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.056236, 57.560444, 58.671478>,  <65.237709, 57.607754, 58.821239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.056236, 57.560444, 58.671478>,  <64.753777, 57.481594, 58.421875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.056236, 57.560444, 58.671478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624333, -0.503049, -0.597620,
		0.196102, 0.841477, -0.503449,
		0.756143, 0.197125, 0.624010,
		65.283081, 57.619583, 58.858681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.306252, 57.664024, 58.022511>,  <64.753777, 57.481594, 58.421875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.306252, 57.664024, 58.022511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.439095, 57.524948, 58.373238>,  <65.518799, 57.441502, 58.583675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.439095, 57.524948, 58.373238>,  <65.306252, 57.664024, 58.022511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.439095, 57.524948, 58.373238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648227, -0.591148, -0.479943,
		0.685201, 0.727774, 0.029053,
		0.332116, -0.347691, 0.876818,
		65.538727, 57.420639, 58.636284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.004471, 57.702549, 57.948311>,  <65.306252, 57.664024, 58.022511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.004471, 57.702549, 57.948311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.942451, 57.412128, 58.216286>,  <65.905243, 57.237877, 58.377071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.942451, 57.412128, 58.216286>,  <66.004471, 57.702549, 57.948311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.942451, 57.412128, 58.216286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752890, -0.525903, -0.395705,
		0.639623, 0.443038, 0.628172,
		-0.155045, -0.726047, 0.669938,
		65.895935, 57.194313, 58.417267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.793007, 57.310345, 57.354725>,  <66.004471, 57.702549, 57.948311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.793007, 57.310345, 57.354725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.068825, 57.198814, 57.087357>,  <66.234314, 57.131897, 56.926933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.068825, 57.198814, 57.087357>,  <65.793007, 57.310345, 57.354725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.068825, 57.198814, 57.087357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628091, -0.229310, 0.743585,
		-0.360605, -0.932564, 0.017008,
		0.689540, -0.278823, -0.668425,
		66.275688, 57.115166, 56.886829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.171860, 56.715004, 57.562424>,  <65.793007, 57.310345, 57.354725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.171860, 56.715004, 57.562424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.420128, 56.913223, 57.319374>,  <66.569092, 57.032154, 57.173546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.420128, 56.913223, 57.319374>,  <66.171860, 56.715004, 57.562424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.420128, 56.913223, 57.319374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680981, 0.043420, 0.731013,
		0.388634, -0.867495, -0.310509,
		0.620668, 0.495547, -0.607622,
		66.606331, 57.061886, 57.137089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.843529, 56.423836, 57.373894>,  <66.171860, 56.715004, 57.562424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.843529, 56.423836, 57.373894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.858482, 56.822693, 57.400139>,  <66.867455, 57.062008, 57.415886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.858482, 56.822693, 57.400139>,  <66.843529, 56.423836, 57.373894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.858482, 56.822693, 57.400139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787890, -0.069797, 0.611848,
		0.614680, 0.028828, -0.788249,
		0.037379, 0.997145, 0.065616,
		66.869698, 57.121838, 57.419823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.496391, 56.697254, 57.065266>,  <66.843529, 56.423836, 57.373894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.496391, 56.697254, 57.065266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.342781, 56.909435, 57.367561>,  <67.250618, 57.036743, 57.548939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.342781, 56.909435, 57.367561>,  <67.496391, 56.697254, 57.065266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.342781, 56.909435, 57.367561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779190, -0.252944, 0.573482,
		0.495366, 0.809097, -0.316188,
		-0.384024, 0.530454, 0.755740,
		67.227577, 57.068573, 57.594284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.843262, 57.285172, 57.181576>,  <67.496391, 56.697254, 57.065266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.843262, 57.285172, 57.181576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.687233, 57.118664, 57.510101>,  <67.593613, 57.018757, 57.707218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.687233, 57.118664, 57.510101>,  <67.843262, 57.285172, 57.181576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.687233, 57.118664, 57.510101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907636, -0.324023, 0.266845,
		0.155044, 0.849544, 0.504218,
		-0.390075, -0.416273, 0.821315,
		67.570213, 56.993782, 57.756496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.280373, 57.452122, 57.687958>,  <67.843262, 57.285172, 57.181576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.280373, 57.452122, 57.687958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.061516, 57.139763, 57.808510>,  <67.930199, 56.952347, 57.880840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.061516, 57.139763, 57.808510>,  <68.280373, 57.452122, 57.687958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.061516, 57.139763, 57.808510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825705, -0.444492, 0.347331,
		-0.137268, 0.438893, 0.887993,
		-0.547146, -0.780897, 0.301381,
		67.897369, 56.905495, 57.898926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.524651, 57.222656, 58.278858>,  <68.280373, 57.452122, 57.687958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.524651, 57.222656, 58.278858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.312416, 56.891701, 58.205193>,  <68.185074, 56.693127, 58.160995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.312416, 56.891701, 58.205193>,  <68.524651, 57.222656, 58.278858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.312416, 56.891701, 58.205193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749805, -0.559461, 0.353265,
		-0.395317, 0.049352, 0.917218,
		-0.530582, -0.827386, -0.184160,
		68.153244, 56.643486, 58.149944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.440712, 56.851070, 58.896507>,  <68.524651, 57.222656, 58.278858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.440712, 56.851070, 58.896507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.483566, 56.656181, 58.549835>,  <68.509277, 56.539249, 58.341831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.483566, 56.656181, 58.549835>,  <68.440712, 56.851070, 58.896507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.483566, 56.656181, 58.549835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891678, -0.338523, 0.300522,
		-0.439812, -0.804997, 0.398177,
		0.107127, -0.487218, -0.866685,
		68.515701, 56.510017, 58.289829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.626213, 56.244175, 59.074314>,  <68.440712, 56.851070, 58.896507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.626213, 56.244175, 59.074314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.761353, 56.298615, 58.701790>,  <68.842438, 56.331276, 58.478275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.761353, 56.298615, 58.701790>,  <68.626213, 56.244175, 59.074314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.761353, 56.298615, 58.701790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923235, -0.240325, 0.299802,
		-0.183015, -0.961104, -0.206843,
		0.337851, 0.136097, -0.931308,
		68.862709, 56.339443, 58.422398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.074829, 55.697197, 59.051956>,  <68.626213, 56.244175, 59.074314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.074829, 55.697197, 59.051956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.171677, 56.010574, 58.823013>,  <69.229782, 56.198601, 58.685646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.171677, 56.010574, 58.823013>,  <69.074829, 55.697197, 59.051956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.171677, 56.010574, 58.823013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933147, -0.026466, 0.358518,
		0.265732, -0.620897, -0.737478,
		0.242120, 0.783445, -0.572356,
		69.244316, 56.245609, 58.651306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.833687, 55.673660, 58.797432>,  <69.074829, 55.697197, 59.051956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.833687, 55.673660, 58.797432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.755890, 56.064522, 58.763168>,  <69.709213, 56.299038, 58.742611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.755890, 56.064522, 58.763168>,  <69.833687, 55.673660, 58.797432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.755890, 56.064522, 58.763168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940428, 0.210588, 0.266921,
		0.278862, -0.028639, -0.959904,
		-0.194500, 0.977155, -0.085658,
		69.697540, 56.357670, 58.737473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.249779, 56.144085, 58.231033>,  <69.833687, 55.673660, 58.797432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.249779, 56.144085, 58.231033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.161911, 56.369484, 58.549583>,  <70.109192, 56.504723, 58.740715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.161911, 56.369484, 58.549583>,  <70.249779, 56.144085, 58.231033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.161911, 56.369484, 58.549583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974902, 0.096503, 0.200632,
		0.036203, 0.820461, -0.570555,
		-0.219671, 0.563498, 0.796376,
		70.096008, 56.538532, 58.788498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.540390, 56.878654, 58.370213>,  <70.249779, 56.144085, 58.231033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.540390, 56.878654, 58.370213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.449936, 56.785027, 58.748436>,  <70.395660, 56.728851, 58.975368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.449936, 56.785027, 58.748436>,  <70.540390, 56.878654, 58.370213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.449936, 56.785027, 58.748436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939195, 0.205120, 0.275390,
		-0.258413, 0.950336, 0.173450,
		-0.226134, -0.234068, 0.945556,
		70.382095, 56.714806, 59.032104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.777565, 57.421612, 58.691525>,  <70.540390, 56.878654, 58.370213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.777565, 57.421612, 58.691525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.763863, 57.132133, 58.967232>,  <70.755646, 56.958447, 59.132656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.763863, 57.132133, 58.967232>,  <70.777565, 57.421612, 58.691525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.763863, 57.132133, 58.967232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918357, 0.249287, 0.307369,
		-0.394267, 0.643524, 0.656071,
		-0.034249, -0.723694, 0.689271,
		70.753586, 56.915024, 59.174011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.780045, 57.652775, 59.413773>,  <70.777565, 57.421612, 58.691525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.780045, 57.652775, 59.413773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.963135, 57.300793, 59.362907>,  <71.072990, 57.089603, 59.332390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.963135, 57.300793, 59.362907>,  <70.780045, 57.652775, 59.413773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.963135, 57.300793, 59.362907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856371, 0.397893, 0.329104,
		-0.239000, -0.259535, 0.935692,
		0.457720, -0.879956, -0.127162,
		71.100449, 57.036804, 59.324760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.220322, 57.619179, 59.949657>,  <70.780045, 57.652775, 59.413773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.220322, 57.619179, 59.949657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.394218, 57.391228, 59.670731>,  <71.498558, 57.254459, 59.503376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.394218, 57.391228, 59.670731>,  <71.220322, 57.619179, 59.949657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.394218, 57.391228, 59.670731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897388, 0.209227, 0.388482,
		-0.075489, -0.794650, 0.602356,
		0.434736, -0.569873, -0.697315,
		71.524643, 57.220264, 59.461536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.581078, 57.109886, 60.278500>,  <71.220322, 57.619179, 59.949657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.581078, 57.109886, 60.278500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.712311, 57.226589, 59.919113>,  <71.791054, 57.296612, 59.703484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.712311, 57.226589, 59.919113>,  <71.581078, 57.109886, 60.278500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.712311, 57.226589, 59.919113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855294, 0.312035, 0.413650,
		0.401037, -0.904164, -0.147162,
		0.328088, 0.291756, -0.898463,
		71.810738, 57.314117, 59.649574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.372200, 57.096348, 60.200119>,  <71.581078, 57.109886, 60.278500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.372200, 57.096348, 60.200119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.628036, 57.395332, 60.128326>,  <72.781540, 57.574722, 60.085251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.628036, 57.395332, 60.128326>,  <72.372200, 57.096348, 60.200119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.628036, 57.395332, 60.128326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469656, 0.564816, 0.678532,
		0.608552, -0.349692, 0.712306,
		0.639599, 0.747461, -0.179485,
		72.819916, 57.619572, 60.074482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.759399, 57.328648, 60.874706>,  <72.372200, 57.096348, 60.200119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.759399, 57.328648, 60.874706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.675568, 57.560501, 60.559723>,  <72.625267, 57.699612, 60.370731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.675568, 57.560501, 60.559723>,  <72.759399, 57.328648, 60.874706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.675568, 57.560501, 60.559723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746477, 0.425314, 0.511743,
		0.631542, 0.695077, 0.343544,
		-0.209587, 0.579634, -0.787462,
		72.612694, 57.734390, 60.323483>
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
