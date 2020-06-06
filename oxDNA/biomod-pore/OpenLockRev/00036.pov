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
	<40.080391, 34.251568, 48.661011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185368, 34.636349, 48.630630>,  <40.248356, 34.867218, 48.612404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185368, 34.636349, 48.630630>,  <40.080391, 34.251568, 48.661011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185368, 34.636349, 48.630630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704511, -0.137235, 0.696298,
		0.659384, -0.236246, -0.713723,
		0.262445, 0.961954, -0.075948,
		40.264103, 34.924934, 48.607845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737900, 34.383259, 48.389164>,  <40.080391, 34.251568, 48.661011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737900, 34.383259, 48.389164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672043, 34.705158, 48.617294>,  <40.632526, 34.898300, 48.754173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672043, 34.705158, 48.617294>,  <40.737900, 34.383259, 48.389164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672043, 34.705158, 48.617294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927985, -0.069570, 0.366065,
		0.334269, 0.589522, -0.735342,
		-0.164646, 0.804751, 0.570323,
		40.622650, 34.946583, 48.788391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307369, 34.929874, 48.226799>,  <40.737900, 34.383259, 48.389164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307369, 34.929874, 48.226799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176361, 35.022743, 48.593151>,  <41.097755, 35.078465, 48.812962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176361, 35.022743, 48.593151>,  <41.307369, 34.929874, 48.226799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176361, 35.022743, 48.593151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919322, -0.145477, 0.365628,
		0.218127, 0.961734, -0.165794,
		-0.327517, 0.232172, 0.915876,
		41.078106, 35.092396, 48.867912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720951, 35.513603, 48.446537>,  <41.307369, 34.929874, 48.226799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720951, 35.513603, 48.446537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574760, 35.328506, 48.769596>,  <41.487045, 35.217449, 48.963432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574760, 35.328506, 48.769596>,  <41.720951, 35.513603, 48.446537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574760, 35.328506, 48.769596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929235, -0.130782, 0.345571,
		-0.054286, 0.876791, 0.477797,
		-0.365481, -0.462745, 0.807645,
		41.465115, 35.189682, 49.011890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111847, 35.830769, 49.037045>,  <41.720951, 35.513603, 48.446537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111847, 35.830769, 49.037045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958565, 35.487476, 49.173630>,  <41.866596, 35.281502, 49.255581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958565, 35.487476, 49.173630>,  <42.111847, 35.830769, 49.037045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958565, 35.487476, 49.173630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886768, -0.238399, 0.395992,
		-0.258448, 0.454542, 0.852406,
		-0.383207, -0.858229, 0.341460,
		41.843601, 35.230007, 49.276066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223034, 35.974701, 49.757641>,  <42.111847, 35.830769, 49.037045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223034, 35.974701, 49.757641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154606, 35.591164, 49.666992>,  <42.113548, 35.361042, 49.612602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154606, 35.591164, 49.666992>,  <42.223034, 35.974701, 49.757641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154606, 35.591164, 49.666992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814218, -0.267098, 0.515469,
		-0.554782, -0.096332, 0.826400,
		-0.171074, -0.958842, -0.226617,
		42.103283, 35.303513, 49.599007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216358, 35.708290, 50.485111>,  <42.223034, 35.974701, 49.757641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216358, 35.708290, 50.485111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301151, 35.413410, 50.228489>,  <42.352028, 35.236481, 50.074516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301151, 35.413410, 50.228489>,  <42.216358, 35.708290, 50.485111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301151, 35.413410, 50.228489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848897, -0.186345, 0.494621,
		-0.484186, -0.649469, 0.586305,
		0.211986, -0.737201, -0.641557,
		42.364746, 35.192249, 50.036022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701786, 35.288357, 50.904163>,  <42.216358, 35.708290, 50.485111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701786, 35.288357, 50.904163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739613, 35.141258, 50.534122>,  <42.762310, 35.052998, 50.312096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739613, 35.141258, 50.534122>,  <42.701786, 35.288357, 50.904163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739613, 35.141258, 50.534122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945211, -0.258502, 0.199382,
		-0.312464, -0.893275, 0.323151,
		0.094568, -0.367746, -0.925105,
		42.767982, 35.030933, 50.256592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975063, 34.552200, 50.904682>,  <42.701786, 35.288357, 50.904163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975063, 34.552200, 50.904682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064529, 34.679192, 50.536079>,  <43.118210, 34.755386, 50.314919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064529, 34.679192, 50.536079>,  <42.975063, 34.552200, 50.904682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064529, 34.679192, 50.536079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967568, -0.186215, 0.170692,
		-0.117408, -0.929802, -0.348831,
		0.223667, 0.317477, -0.921510,
		43.131630, 34.774433, 50.259624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349667, 34.027462, 50.599834>,  <42.975063, 34.552200, 50.904682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349667, 34.027462, 50.599834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442204, 34.364349, 50.405045>,  <43.497726, 34.566483, 50.288170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442204, 34.364349, 50.405045>,  <43.349667, 34.027462, 50.599834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442204, 34.364349, 50.405045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957487, -0.108436, 0.267322,
		0.172339, -0.528111, -0.831503,
		0.231341, 0.842223, -0.486972,
		43.511604, 34.617016, 50.258953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111771, 33.948296, 50.390789>,  <43.349667, 34.027462, 50.599834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111771, 33.948296, 50.390789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044144, 34.339569, 50.342514>,  <44.003567, 34.574333, 50.313549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044144, 34.339569, 50.342514>,  <44.111771, 33.948296, 50.390789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044144, 34.339569, 50.342514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976371, 0.182946, 0.115026,
		0.134596, -0.098388, -0.986004,
		-0.169068, 0.978188, -0.120686,
		43.993423, 34.633026, 50.306309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494713, 34.153599, 49.890553>,  <44.111771, 33.948296, 50.390789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494713, 34.153599, 49.890553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405247, 34.468109, 50.120941>,  <44.351566, 34.656815, 50.259174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405247, 34.468109, 50.120941>,  <44.494713, 34.153599, 49.890553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405247, 34.468109, 50.120941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937422, 0.011739, 0.347998,
		0.266861, 0.617765, -0.739697,
		-0.223664, 0.786275, 0.575974,
		44.338146, 34.703991, 50.293732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966705, 34.529884, 49.684608>,  <44.494713, 34.153599, 49.890553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966705, 34.529884, 49.684608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869267, 34.675678, 50.044121>,  <44.810802, 34.763153, 50.259830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869267, 34.675678, 50.044121>,  <44.966705, 34.529884, 49.684608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869267, 34.675678, 50.044121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966650, 0.015703, 0.255621,
		0.079056, 0.931077, -0.356155,
		-0.243596, 0.364486, 0.898783,
		44.796188, 34.785023, 50.313755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467037, 34.977959, 49.903194>,  <44.966705, 34.529884, 49.684608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467037, 34.977959, 49.903194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280613, 34.940716, 50.255131>,  <45.168758, 34.918369, 50.466293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280613, 34.940716, 50.255131>,  <45.467037, 34.977959, 49.903194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280613, 34.940716, 50.255131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846841, 0.241047, 0.474084,
		-0.256223, 0.966037, -0.033496,
		-0.466057, -0.093106, 0.879842,
		45.140797, 34.912785, 50.519085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755974, 35.583435, 50.290089>,  <45.467037, 34.977959, 49.903194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755974, 35.583435, 50.290089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602985, 35.307365, 50.535812>,  <45.511192, 35.141724, 50.683247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602985, 35.307365, 50.535812>,  <45.755974, 35.583435, 50.290089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602985, 35.307365, 50.535812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724661, 0.188401, 0.662850,
		-0.573221, 0.698684, 0.428087,
		-0.382471, -0.690178, 0.614305,
		45.488243, 35.100311, 50.720104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667110, 35.913914, 50.928856>,  <45.755974, 35.583435, 50.290089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667110, 35.913914, 50.928856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717323, 35.519718, 50.974556>,  <45.747452, 35.283199, 51.001976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717323, 35.519718, 50.974556>,  <45.667110, 35.913914, 50.928856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717323, 35.519718, 50.974556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694572, 0.169532, 0.699162,
		-0.708386, -0.008413, 0.705775,
		0.125534, -0.985489, 0.114251,
		45.754982, 35.224072, 51.008831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653641, 35.880093, 51.647537>,  <45.667110, 35.913914, 50.928856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653641, 35.880093, 51.647537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815277, 35.542976, 51.505318>,  <45.912258, 35.340706, 51.419987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815277, 35.542976, 51.505318>,  <45.653641, 35.880093, 51.647537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815277, 35.542976, 51.505318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733150, 0.065975, 0.676859,
		-0.546995, -0.534178, 0.644554,
		0.404088, -0.842793, -0.355545,
		45.936504, 35.290138, 51.398655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131245, 35.560261, 52.154373>,  <45.653641, 35.880093, 51.647537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131245, 35.560261, 52.154373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277847, 35.351482, 51.846283>,  <46.365807, 35.226215, 51.661430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277847, 35.351482, 51.846283>,  <46.131245, 35.560261, 52.154373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277847, 35.351482, 51.846283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904966, 0.007678, 0.425415,
		-0.216131, -0.852943, 0.475159,
		0.366502, -0.521948, -0.770225,
		46.387798, 35.194897, 51.615215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.622662, 35.175900, 52.505646>,  <46.131245, 35.560261, 52.154373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.622662, 35.175900, 52.505646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730446, 35.139263, 52.122189>,  <46.795116, 35.117279, 51.892113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730446, 35.139263, 52.122189>,  <46.622662, 35.175900, 52.505646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.730446, 35.139263, 52.122189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962279, -0.013209, 0.271745,
		-0.037554, -0.995709, 0.084581,
		0.269462, -0.091596, -0.958645,
		46.811283, 35.111786, 51.834595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.177113, 34.641373, 52.426361>,  <46.622662, 35.175900, 52.505646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.177113, 34.641373, 52.426361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.220898, 34.884640, 52.111874>,  <47.247169, 35.030602, 51.923180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.220898, 34.884640, 52.111874>,  <47.177113, 34.641373, 52.426361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.220898, 34.884640, 52.111874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959666, 0.141405, 0.242995,
		0.258958, -0.781110, -0.568162,
		0.109465, 0.608171, -0.786222,
		47.253738, 35.067089, 51.876007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.851604, 34.522617, 52.050156>,  <47.177113, 34.641373, 52.426361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.851604, 34.522617, 52.050156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735355, 34.887310, 51.934032>,  <47.665604, 35.106125, 51.864357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735355, 34.887310, 51.934032>,  <47.851604, 34.522617, 52.050156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.735355, 34.887310, 51.934032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937836, 0.331592, 0.102523,
		0.189738, -0.242468, -0.951425,
		-0.290626, 0.911733, -0.290311,
		47.648167, 35.160831, 51.846939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.266373, 34.704819, 51.643806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.353331, 35.080124, 51.751442>,  <24.405504, 35.305305, 51.816025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.353331, 35.080124, 51.751442>,  <24.266373, 34.704819, 51.643806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353331, 35.080124, 51.751442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949502, -0.139378, -0.281105,
		-0.226244, 0.316613, -0.921179,
		0.217393, 0.938259, 0.269092,
		24.418549, 35.361603, 51.832169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.341446, 34.997635, 51.044426>,  <24.266373, 34.704819, 51.643806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.341446, 34.997635, 51.044426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.529510, 35.212185, 51.324783>,  <24.642349, 35.340916, 51.492996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.529510, 35.212185, 51.324783>,  <24.341446, 34.997635, 51.044426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529510, 35.212185, 51.324783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882172, -0.261494, -0.391654,
		-0.026795, 0.802448, -0.596120,
		0.470164, 0.536375, 0.700891,
		24.670559, 35.373096, 51.535049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923782, 34.977512, 50.750782>,  <24.341446, 34.997635, 51.044426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.923782, 34.977512, 50.750782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.035309, 35.200161, 51.063812>,  <25.102224, 35.333752, 51.251633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.035309, 35.200161, 51.063812>,  <24.923782, 34.977512, 50.750782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.035309, 35.200161, 51.063812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948315, -0.031007, -0.315811,
		-0.151522, 0.830186, -0.536500,
		0.278817, 0.556623, 0.782580,
		25.118954, 35.367149, 51.298588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177546, 35.587818, 50.442909>,  <24.923782, 34.977512, 50.750782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177546, 35.587818, 50.442909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.320814, 35.515217, 50.809246>,  <25.406776, 35.471657, 51.029049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.320814, 35.515217, 50.809246>,  <25.177546, 35.587818, 50.442909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320814, 35.515217, 50.809246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919509, -0.101539, -0.379728,
		0.161914, 0.978135, 0.130522,
		0.358172, -0.181499, 0.915844,
		25.428267, 35.460766, 51.084000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790249, 36.035477, 50.441776>,  <25.177546, 35.587818, 50.442909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790249, 36.035477, 50.441776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.834042, 35.763329, 50.731632>,  <25.860317, 35.600040, 50.905548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.834042, 35.763329, 50.731632>,  <25.790249, 36.035477, 50.441776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834042, 35.763329, 50.731632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969606, -0.087380, -0.228534,
		0.218808, 0.727639, 0.650126,
		0.109483, -0.680372, 0.724643,
		25.866886, 35.559216, 50.949024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383709, 36.179905, 50.683346>,  <25.790249, 36.035477, 50.441776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383709, 36.179905, 50.683346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.338440, 35.812019, 50.833717>,  <26.311277, 35.591290, 50.923939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.338440, 35.812019, 50.833717>,  <26.383709, 36.179905, 50.683346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338440, 35.812019, 50.833717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962402, -0.195505, -0.188575,
		0.246930, 0.340450, 0.907259,
		-0.113173, -0.919713, 0.375926,
		26.304487, 35.536106, 50.946495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926029, 36.079819, 51.181053>,  <26.383709, 36.179905, 50.683346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926029, 36.079819, 51.181053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.803247, 35.716454, 51.067520>,  <26.729578, 35.498436, 50.999401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.803247, 35.716454, 51.067520>,  <26.926029, 36.079819, 51.181053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803247, 35.716454, 51.067520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936041, -0.234236, -0.262604,
		0.172069, -0.346290, 0.922212,
		-0.306952, -0.908415, -0.283837,
		26.711163, 35.443928, 50.982368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355875, 35.542980, 51.460812>,  <26.926029, 36.079819, 51.181053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355875, 35.542980, 51.460812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.199278, 35.381073, 51.130260>,  <27.105320, 35.283928, 50.931931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.199278, 35.381073, 51.130260>,  <27.355875, 35.542980, 51.460812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199278, 35.381073, 51.130260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912195, -0.288783, -0.290698,
		-0.120977, -0.867621, 0.482285,
		-0.391491, -0.404770, -0.826375,
		27.081831, 35.259644, 50.882347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647673, 34.879631, 51.387833>,  <27.355875, 35.542980, 51.460812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647673, 34.879631, 51.387833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.507217, 34.938995, 51.018036>,  <27.422945, 34.974613, 50.796158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.507217, 34.938995, 51.018036>,  <27.647673, 34.879631, 51.387833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507217, 34.938995, 51.018036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880856, -0.282428, -0.379904,
		-0.317484, -0.947738, -0.031562,
		-0.351136, 0.148415, -0.924488,
		27.401876, 34.983521, 50.740688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909616, 34.267479, 50.893372>,  <27.647673, 34.879631, 51.387833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909616, 34.267479, 50.893372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.816830, 34.589390, 50.674824>,  <27.761158, 34.782536, 50.543694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.816830, 34.589390, 50.674824>,  <27.909616, 34.267479, 50.893372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816830, 34.589390, 50.674824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877454, -0.069313, -0.474626,
		-0.419840, -0.589511, -0.690080,
		-0.231966, 0.804781, -0.546369,
		27.747240, 34.830826, 50.510914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976131, 34.026730, 50.241379>,  <27.909616, 34.267479, 50.893372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976131, 34.026730, 50.241379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.996397, 34.424515, 50.204571>,  <28.008556, 34.663185, 50.182484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.996397, 34.424515, 50.204571>,  <27.976131, 34.026730, 50.241379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996397, 34.424515, 50.204571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921938, -0.082000, -0.378559,
		-0.384011, -0.065661, -0.920991,
		0.050665, 0.994467, -0.092025,
		28.011597, 34.722855, 50.176964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359106, 34.164742, 49.597824>,  <27.976131, 34.026730, 50.241379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359106, 34.164742, 49.597824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.390383, 34.510872, 49.795853>,  <28.409149, 34.718552, 49.914669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.390383, 34.510872, 49.795853>,  <28.359106, 34.164742, 49.597824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390383, 34.510872, 49.795853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871845, 0.181487, -0.454917,
		-0.483501, 0.467198, -0.740239,
		0.078192, 0.865326, 0.495073,
		28.413841, 34.770470, 49.944374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706091, 34.509342, 49.072659>,  <28.359106, 34.164742, 49.597824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706091, 34.509342, 49.072659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.764915, 34.695599, 49.421726>,  <28.800211, 34.807354, 49.631168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.764915, 34.695599, 49.421726>,  <28.706091, 34.509342, 49.072659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764915, 34.695599, 49.421726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948840, 0.182820, -0.257449,
		-0.279420, 0.865884, -0.414932,
		0.147064, 0.465641, 0.872669,
		28.809034, 34.835289, 49.683525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021015, 35.206081, 48.863682>,  <28.706091, 34.509342, 49.072659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021015, 35.206081, 48.863682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.116016, 35.149696, 49.248123>,  <29.173018, 35.115864, 49.478786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.116016, 35.149696, 49.248123>,  <29.021015, 35.206081, 48.863682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116016, 35.149696, 49.248123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971365, 0.041091, -0.234013,
		-0.006505, 0.989162, 0.146686,
		0.237504, -0.140963, 0.961104,
		29.187267, 35.107407, 49.536453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398306, 35.747746, 49.142433>,  <29.021015, 35.206081, 48.863682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398306, 35.747746, 49.142433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.490101, 35.426861, 49.362904>,  <29.545177, 35.234329, 49.495186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.490101, 35.426861, 49.362904>,  <29.398306, 35.747746, 49.142433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490101, 35.426861, 49.362904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970818, 0.229172, -0.070658,
		-0.069631, 0.551305, 0.831393,
		0.229486, -0.802211, 0.551174,
		29.558947, 35.186199, 49.528255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963556, 35.948135, 49.493031>,  <29.398306, 35.747746, 49.142433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963556, 35.948135, 49.493031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.972801, 35.553905, 49.560089>,  <29.978348, 35.317368, 49.600323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.972801, 35.553905, 49.560089>,  <29.963556, 35.948135, 49.493031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972801, 35.553905, 49.560089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998921, 0.016011, -0.043585,
		0.040272, 0.168473, 0.984883,
		0.023112, -0.985576, 0.167646,
		29.979734, 35.258232, 49.610382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410439, 35.901943, 49.929222>,  <29.963556, 35.948135, 49.493031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410439, 35.901943, 49.929222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.401718, 35.537537, 49.764507>,  <30.396486, 35.318893, 49.665680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.401718, 35.537537, 49.764507>,  <30.410439, 35.901943, 49.929222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401718, 35.537537, 49.764507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995614, 0.017700, -0.091874,
		0.090987, -0.411985, 0.906637,
		-0.021803, -0.911019, -0.411788,
		30.395178, 35.264233, 49.640972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903931, 35.591274, 50.215183>,  <30.410439, 35.901943, 49.929222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903931, 35.591274, 50.215183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.827042, 35.370602, 49.890541>,  <30.780909, 35.238197, 49.695755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.827042, 35.370602, 49.890541>,  <30.903931, 35.591274, 50.215183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827042, 35.370602, 49.890541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979135, -0.163369, -0.120851,
		-0.065920, -0.817899, 0.571574,
		-0.192221, -0.551682, -0.811602,
		30.769375, 35.205097, 49.647060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282299, 34.927204, 50.316307>,  <30.903931, 35.591274, 50.215183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282299, 34.927204, 50.316307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.218876, 34.942448, 49.921661>,  <31.180822, 34.951595, 49.684875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.218876, 34.942448, 49.921661>,  <31.282299, 34.927204, 50.316307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218876, 34.942448, 49.921661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984781, -0.065927, -0.160810,
		-0.071173, -0.997096, -0.027077,
		-0.158558, 0.038110, -0.986614,
		31.171309, 34.953880, 49.625679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718880, 34.567677, 50.011227>,  <31.282299, 34.927204, 50.316307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718880, 34.567677, 50.011227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.647743, 34.781883, 49.680992>,  <31.605062, 34.910408, 49.482849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.647743, 34.781883, 49.680992>,  <31.718880, 34.567677, 50.011227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647743, 34.781883, 49.680992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967712, -0.057117, -0.245501,
		-0.178624, -0.842593, -0.508065,
		-0.177839, 0.535513, -0.825590,
		31.594391, 34.942535, 49.433315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139408, 34.252304, 49.634857>,  <31.718880, 34.567677, 50.011227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139408, 34.252304, 49.634857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.071152, 34.587978, 49.428303>,  <32.030197, 34.789383, 49.304371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.071152, 34.587978, 49.428303>,  <32.139408, 34.252304, 49.634857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071152, 34.587978, 49.428303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906591, -0.071576, -0.415896,
		-0.385974, -0.539118, -0.748582,
		-0.170636, 0.839183, -0.516387,
		32.019962, 34.839733, 49.273388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.803213, 35.334553, 34.913967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.526190, 35.073170, 35.036186>,  <24.359976, 34.916340, 35.109516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.526190, 35.073170, 35.036186>,  <24.803213, 35.334553, 34.913967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.526190, 35.073170, 35.036186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502202, -0.132699, 0.854508,
		-0.517839, 0.745241, 0.420070,
		-0.692557, -0.653458, 0.305544,
		24.318422, 34.877132, 35.127850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.425604, 35.471336, 35.504169>,  <24.803213, 35.334553, 34.913967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.425604, 35.471336, 35.504169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.417154, 35.071922, 35.484268>,  <24.412085, 34.832272, 35.472328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.417154, 35.071922, 35.484268>,  <24.425604, 35.471336, 35.504169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.417154, 35.071922, 35.484268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543751, -0.053237, 0.837556,
		-0.838980, -0.009364, 0.544081,
		-0.021122, -0.998538, -0.049756,
		24.410818, 34.772362, 35.469341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.362221, 35.242908, 36.218025>,  <24.425604, 35.471336, 35.504169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.362221, 35.242908, 36.218025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.501663, 34.933735, 36.005970>,  <24.585329, 34.748230, 35.878735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.501663, 34.933735, 36.005970>,  <24.362221, 35.242908, 36.218025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.501663, 34.933735, 36.005970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643925, -0.213492, 0.734698,
		-0.681052, -0.597493, 0.423285,
		0.348609, -0.772931, -0.530140,
		24.606245, 34.701855, 35.846928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.019405, 35.058636, 36.566132>,  <24.362221, 35.242908, 36.218025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.019405, 35.058636, 36.566132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.068579, 34.731327, 36.790745>,  <25.098083, 34.534943, 36.925514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.068579, 34.731327, 36.790745>,  <25.019405, 35.058636, 36.566132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.068579, 34.731327, 36.790745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329531, 0.500065, 0.800840,
		-0.936107, -0.283493, -0.208172,
		0.122933, -0.818271, 0.561534,
		25.105459, 34.485847, 36.959206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.506697, 34.864971, 36.931824>,  <25.019405, 35.058636, 36.566132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.506697, 34.864971, 36.931824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.802944, 34.741398, 37.170502>,  <24.980692, 34.667255, 37.313709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.802944, 34.741398, 37.170502>,  <24.506697, 34.864971, 36.931824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802944, 34.741398, 37.170502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385975, 0.531304, 0.754148,
		-0.550007, -0.788845, 0.274254,
		0.740618, -0.308932, 0.596696,
		25.025129, 34.648720, 37.349510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.150682, 34.610207, 37.508057>,  <24.506697, 34.864971, 36.931824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.150682, 34.610207, 37.508057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.516436, 34.723938, 37.623341>,  <24.735888, 34.792175, 37.692513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.516436, 34.723938, 37.623341>,  <24.150682, 34.610207, 37.508057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516436, 34.723938, 37.623341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386199, 0.398990, 0.831659,
		0.121469, -0.871760, 0.474635,
		0.914383, 0.284324, 0.288208,
		24.790751, 34.809235, 37.709805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.061329, 34.614933, 38.234108>,  <24.150682, 34.610207, 37.508057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.061329, 34.614933, 38.234108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.412369, 34.788841, 38.153316>,  <24.622993, 34.893185, 38.104843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.412369, 34.788841, 38.153316>,  <24.061329, 34.614933, 38.234108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.412369, 34.788841, 38.153316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099296, 0.577034, 0.810661,
		0.468995, -0.691382, 0.549577,
		0.877601, 0.434767, -0.201975,
		24.675650, 34.919273, 38.092724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.504930, 34.630421, 38.805313>,  <24.061329, 34.614933, 38.234108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.504930, 34.630421, 38.805313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.596180, 34.940639, 38.569862>,  <24.650930, 35.126770, 38.428593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.596180, 34.940639, 38.569862>,  <24.504930, 34.630421, 38.805313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.596180, 34.940639, 38.569862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079856, 0.617435, 0.782558,
		0.970352, -0.131515, 0.202784,
		0.228124, 0.775550, -0.588627,
		24.664618, 35.173306, 38.393272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130472, 34.986130, 38.969261>,  <24.504930, 34.630421, 38.805313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130472, 34.986130, 38.969261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.816690, 35.196083, 38.837120>,  <24.628422, 35.322056, 38.757835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.816690, 35.196083, 38.837120>,  <25.130472, 34.986130, 38.969261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.816690, 35.196083, 38.837120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081054, 0.614869, 0.784453,
		0.614869, 0.588590, -0.524879,
		-0.784453, 0.524879, -0.330356,
		24.581354, 35.353546, 38.738014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403137, 35.639874, 39.024414>,  <25.130472, 34.986130, 38.969261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403137, 35.639874, 39.024414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.003551, 35.658012, 39.025692>,  <24.763800, 35.668896, 39.026459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.003551, 35.658012, 39.025692>,  <25.403137, 35.639874, 39.024414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.003551, 35.658012, 39.025692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031933, 0.649997, 0.759265,
		0.032354, 0.758582, -0.650773,
		-0.998966, 0.045346, 0.003194,
		24.703861, 35.671616, 39.026649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186184, 36.330627, 38.980446>,  <25.403137, 35.639874, 39.024414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186184, 36.330627, 38.980446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.890671, 36.125263, 39.155083>,  <24.713364, 36.002045, 39.259865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.890671, 36.125263, 39.155083>,  <25.186184, 36.330627, 38.980446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890671, 36.125263, 39.155083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111910, 0.732277, 0.671748,
		-0.664587, 0.447417, -0.598450,
		-0.738783, -0.513408, 0.436592,
		24.669037, 35.971241, 39.286060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899767, 36.781216, 38.869766>,  <25.186184, 36.330627, 38.980446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899767, 36.781216, 38.869766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.965988, 37.175694, 38.867958>,  <26.005722, 37.412380, 38.866871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.965988, 37.175694, 38.867958>,  <25.899767, 36.781216, 38.869766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965988, 37.175694, 38.867958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769541, -0.126314, 0.625981,
		0.616764, -0.107115, -0.779826,
		0.165555, 0.986190, -0.004524,
		26.015656, 37.471550, 38.866600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666592, 36.897888, 38.733730>,  <25.899767, 36.781216, 38.869766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666592, 36.897888, 38.733730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.474884, 37.187962, 38.931480>,  <26.359859, 37.362007, 39.050129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.474884, 37.187962, 38.931480>,  <26.666592, 36.897888, 38.733730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474884, 37.187962, 38.931480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674517, -0.056053, 0.736128,
		0.561540, 0.686269, -0.462285,
		-0.479270, 0.725185, 0.494376,
		26.331102, 37.405518, 39.079792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000500, 37.645195, 38.865303>,  <26.666592, 36.897888, 38.733730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000500, 37.645195, 38.865303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.765728, 37.496685, 39.153099>,  <26.624865, 37.407578, 39.325775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.765728, 37.496685, 39.153099>,  <27.000500, 37.645195, 38.865303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765728, 37.496685, 39.153099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776574, -0.006795, 0.629989,
		-0.229012, 0.928497, 0.292314,
		-0.586929, -0.371279, 0.719490,
		26.589649, 37.385300, 39.368946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001310, 38.170685, 39.391701>,  <27.000500, 37.645195, 38.865303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001310, 38.170685, 39.391701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.934093, 37.811127, 39.553566>,  <26.893763, 37.595394, 39.650684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.934093, 37.811127, 39.553566>,  <27.001310, 38.170685, 39.391701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934093, 37.811127, 39.553566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724299, 0.165872, 0.669237,
		-0.668695, 0.405557, 0.623194,
		-0.168043, -0.898894, 0.404663,
		26.883680, 37.541458, 39.674965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919657, 38.392014, 40.041531>,  <27.001310, 38.170685, 39.391701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919657, 38.392014, 40.041531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.073923, 38.027210, 39.985668>,  <27.166483, 37.808327, 39.952152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.073923, 38.027210, 39.985668>,  <26.919657, 38.392014, 40.041531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073923, 38.027210, 39.985668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688440, 0.183683, 0.701649,
		-0.614257, -0.366747, 0.698703,
		0.385667, -0.912007, -0.139655,
		27.189623, 37.753609, 39.943771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766920, 37.832458, 40.592907>,  <26.919657, 38.392014, 40.041531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766920, 37.832458, 40.592907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.096512, 37.912968, 40.381042>,  <27.294268, 37.961273, 40.253922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.096512, 37.912968, 40.381042>,  <26.766920, 37.832458, 40.592907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096512, 37.912968, 40.381042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463748, 0.297546, 0.834508,
		0.325565, -0.933249, 0.151831,
		0.823981, 0.201276, -0.529663,
		27.343706, 37.973351, 40.222145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309206, 37.431747, 40.930283>,  <26.766920, 37.832458, 40.592907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309206, 37.431747, 40.930283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.477375, 37.754559, 40.764416>,  <27.578276, 37.948246, 40.664898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.477375, 37.754559, 40.764416>,  <27.309206, 37.431747, 40.930283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477375, 37.754559, 40.764416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483259, 0.187626, 0.855135,
		0.767923, -0.559907, -0.311124,
		0.420422, 0.807032, -0.414663,
		27.603502, 37.996670, 40.640018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019199, 37.444588, 41.085838>,  <27.309206, 37.431747, 40.930283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019199, 37.444588, 41.085838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.884151, 37.818665, 41.043060>,  <27.803123, 38.043110, 41.017391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.884151, 37.818665, 41.043060>,  <28.019199, 37.444588, 41.085838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884151, 37.818665, 41.043060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647345, 0.313171, 0.694888,
		0.683344, 0.165374, -0.711121,
		-0.337618, 0.935188, -0.106949,
		27.782866, 38.099220, 41.010975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651068, 38.003265, 41.059399>,  <28.019199, 37.444588, 41.085838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651068, 38.003265, 41.059399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.329782, 38.165260, 41.234138>,  <28.137011, 38.262455, 41.338982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.329782, 38.165260, 41.234138>,  <28.651068, 38.003265, 41.059399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329782, 38.165260, 41.234138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594318, 0.495056, 0.633802,
		0.040415, 0.768705, -0.638325,
		-0.803214, 0.404983, 0.436848,
		28.088818, 38.286755, 41.365192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728657, 38.799187, 41.109249>,  <28.651068, 38.003265, 41.059399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728657, 38.799187, 41.109249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.526146, 38.624306, 41.406582>,  <28.404640, 38.519379, 41.584980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.526146, 38.624306, 41.406582>,  <28.728657, 38.799187, 41.109249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526146, 38.624306, 41.406582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679722, 0.328161, 0.655964,
		-0.530719, 0.837357, 0.131034,
		-0.506275, -0.437199, 0.743332,
		28.374264, 38.493145, 41.629581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783602, 39.304985, 41.688259>,  <28.728657, 38.799187, 41.109249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783602, 39.304985, 41.688259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.723093, 38.937637, 41.834530>,  <28.686789, 38.717228, 41.922291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.723093, 38.937637, 41.834530>,  <28.783602, 39.304985, 41.688259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723093, 38.937637, 41.834530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657967, 0.182529, 0.730590,
		-0.737697, 0.351120, 0.576644,
		-0.151270, -0.918367, 0.365677,
		28.677711, 38.662128, 41.944233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703789, 39.302052, 42.406345>,  <28.783602, 39.304985, 41.688259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703789, 39.302052, 42.406345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.860996, 38.948082, 42.306385>,  <28.955320, 38.735703, 42.246410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.860996, 38.948082, 42.306385>,  <28.703789, 39.302052, 42.406345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860996, 38.948082, 42.306385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608929, 0.046829, 0.791841,
		-0.689016, -0.463379, 0.557259,
		0.393018, -0.884922, -0.249899,
		28.978901, 38.682606, 42.231415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743431, 38.993553, 43.004795>,  <28.703789, 39.302052, 42.406345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743431, 38.993553, 43.004795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.022722, 38.860542, 42.751209>,  <29.190296, 38.780735, 42.599060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.022722, 38.860542, 42.751209>,  <28.743431, 38.993553, 43.004795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022722, 38.860542, 42.751209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683903, 0.048139, 0.727983,
		-0.211556, -0.941864, 0.261028,
		0.698227, -0.332527, -0.633960,
		29.232191, 38.760784, 42.561020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953449, 38.426311, 43.328709>,  <28.743431, 38.993553, 43.004795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953449, 38.426311, 43.328709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.237862, 38.589214, 43.099422>,  <29.408508, 38.686954, 42.961849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.237862, 38.589214, 43.099422>,  <28.953449, 38.426311, 43.328709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237862, 38.589214, 43.099422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622476, 0.014604, 0.782503,
		0.327049, -0.913198, -0.243122,
		0.711029, 0.407254, -0.573220,
		29.451170, 38.711391, 42.927456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658369, 38.133041, 43.454315>,  <28.953449, 38.426311, 43.328709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658369, 38.133041, 43.454315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663408, 38.517700, 43.344711>,  <29.666431, 38.748493, 43.278950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663408, 38.517700, 43.344711>,  <29.658369, 38.133041, 43.454315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663408, 38.517700, 43.344711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619087, 0.207694, 0.757360,
		0.785221, -0.179178, -0.592725,
		0.012597, 0.961644, -0.274012,
		29.667187, 38.806194, 43.262508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365921, 38.350971, 43.244778>,  <29.658369, 38.133041, 43.454315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365921, 38.350971, 43.244778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.133675, 38.624275, 43.421883>,  <29.994328, 38.788258, 43.528145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.133675, 38.624275, 43.421883>,  <30.365921, 38.350971, 43.244778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133675, 38.624275, 43.421883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625786, 0.026620, 0.779541,
		0.520843, 0.729690, -0.443030,
		-0.580616, 0.683260, 0.442765,
		29.959490, 38.829254, 43.554710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840042, 38.976475, 43.312294>,  <30.365921, 38.350971, 43.244778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840042, 38.976475, 43.312294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.536299, 38.963535, 43.572239>,  <30.354052, 38.955772, 43.728207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.536299, 38.963535, 43.572239>,  <30.840042, 38.976475, 43.312294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536299, 38.963535, 43.572239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648571, 0.042522, 0.759965,
		-0.052216, 0.998572, -0.011311,
		-0.759361, -0.032346, 0.649865,
		30.308491, 38.953831, 43.767197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900703, 39.587486, 43.695892>,  <30.840042, 38.976475, 43.312294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900703, 39.587486, 43.695892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.724184, 39.289875, 43.896561>,  <30.618273, 39.111309, 44.016964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.724184, 39.289875, 43.896561>,  <30.900703, 39.587486, 43.695892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724184, 39.289875, 43.896561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618463, 0.152900, 0.770795,
		-0.650200, 0.650417, 0.392680,
		-0.441297, -0.744029, 0.501675,
		30.591795, 39.066666, 44.047062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759293, 39.815731, 44.494881>,  <30.900703, 39.587486, 43.695892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759293, 39.815731, 44.494881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.738480, 39.416893, 44.472618>,  <30.725992, 39.177589, 44.459259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.738480, 39.416893, 44.472618>,  <30.759293, 39.815731, 44.494881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738480, 39.416893, 44.472618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689248, -0.076185, 0.720509,
		-0.722655, -0.000871, 0.691209,
		-0.052032, -0.997093, -0.055656,
		30.722870, 39.117764, 44.455921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716261, 39.527664, 45.160328>,  <30.759293, 39.815731, 44.494881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716261, 39.527664, 45.160328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.881435, 39.228901, 44.951866>,  <30.980539, 39.049641, 44.826790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.881435, 39.228901, 44.951866>,  <30.716261, 39.527664, 45.160328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881435, 39.228901, 44.951866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772527, -0.015823, 0.634785,
		-0.482375, -0.664734, 0.570476,
		0.412936, -0.746912, -0.521158,
		31.005316, 39.004826, 44.795517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933220, 38.901836, 45.611835>,  <30.716261, 39.527664, 45.160328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933220, 38.901836, 45.611835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.162397, 38.963081, 45.289768>,  <31.299904, 38.999828, 45.096527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.162397, 38.963081, 45.289768>,  <30.933220, 38.901836, 45.611835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162397, 38.963081, 45.289768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805980, 0.073060, 0.587416,
		0.148769, -0.985504, -0.081550,
		0.572943, 0.153117, -0.805166,
		31.334280, 39.009018, 45.048218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464670, 38.454815, 45.375828>,  <30.933220, 38.901836, 45.611835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464670, 38.454815, 45.375828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.608986, 38.816196, 45.283222>,  <31.695576, 39.033028, 45.227661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.608986, 38.816196, 45.283222>,  <31.464670, 38.454815, 45.375828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608986, 38.816196, 45.283222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742708, -0.128178, 0.657233,
		0.564107, -0.409068, -0.717250,
		0.360789, 0.903457, -0.231512,
		31.717222, 39.087234, 45.213768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116501, 38.353912, 45.026165>,  <31.464670, 38.454815, 45.375828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116501, 38.353912, 45.026165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028370, 38.655445, 45.273777>,  <31.975492, 38.836365, 45.422344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028370, 38.655445, 45.273777>,  <32.116501, 38.353912, 45.026165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028370, 38.655445, 45.273777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699601, -0.320106, 0.638819,
		0.679717, 0.573818, -0.456856,
		-0.220324, 0.753834, 0.619025,
		31.962273, 38.881596, 45.459484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698753, 38.515522, 45.186104>,  <32.116501, 38.353912, 45.026165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698753, 38.515522, 45.186104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.460083, 38.670490, 45.467213>,  <32.316883, 38.763470, 45.635880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.460083, 38.670490, 45.467213>,  <32.698753, 38.515522, 45.186104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460083, 38.670490, 45.467213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679710, -0.221545, 0.699223,
		0.426588, 0.894888, -0.131143,
		-0.596672, 0.387419, 0.702772,
		32.281082, 38.786716, 45.678043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030457, 38.412682, 45.906040>,  <32.698753, 38.515522, 45.186104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030457, 38.412682, 45.906040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770870, 38.629894, 46.119194>,  <32.615120, 38.760223, 46.247086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770870, 38.629894, 46.119194>,  <33.030457, 38.412682, 45.906040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770870, 38.629894, 46.119194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227072, -0.530238, 0.816876,
		0.726144, 0.651125, 0.220798,
		-0.648964, 0.543032, 0.532881,
		32.576180, 38.792805, 46.279057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320534, 38.756470, 46.433525>,  <33.030457, 38.412682, 45.906040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320534, 38.756470, 46.433525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949608, 38.624386, 46.503998>,  <32.727051, 38.545135, 46.546280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949608, 38.624386, 46.503998>,  <33.320534, 38.756470, 46.433525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949608, 38.624386, 46.503998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358515, -0.648564, 0.671440,
		-0.107451, 0.685803, 0.719812,
		-0.927320, -0.330210, 0.176182,
		32.671413, 38.525322, 46.556850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205856, 38.764984, 47.174351>,  <33.320534, 38.756470, 46.433525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205856, 38.764984, 47.174351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991913, 38.481216, 46.990761>,  <32.863548, 38.310955, 46.880608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991913, 38.481216, 46.990761>,  <33.205856, 38.764984, 47.174351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991913, 38.481216, 46.990761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486782, -0.702712, 0.518883,
		-0.690632, 0.054106, 0.721179,
		-0.534855, -0.709415, -0.458978,
		32.831455, 38.268391, 46.853069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872124, 38.265041, 47.661060>,  <33.205856, 38.764984, 47.174351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872124, 38.265041, 47.661060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.976276, 38.116356, 47.304626>,  <33.038769, 38.027145, 47.090767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.976276, 38.116356, 47.304626>,  <32.872124, 38.265041, 47.661060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976276, 38.116356, 47.304626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659403, -0.605684, 0.445347,
		-0.705257, -0.703543, 0.087401,
		0.260384, -0.371717, -0.891082,
		33.054390, 38.004841, 47.037300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984344, 37.512878, 47.789734>,  <32.872124, 38.265041, 47.661060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984344, 37.512878, 47.789734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.194412, 37.637657, 47.473030>,  <33.320454, 37.712524, 47.283009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.194412, 37.637657, 47.473030>,  <32.984344, 37.512878, 47.789734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194412, 37.637657, 47.473030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789989, -0.524641, 0.317285,
		-0.316416, -0.792112, -0.521958,
		0.525166, 0.311947, -0.791764,
		33.351963, 37.731243, 47.235500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242649, 36.953510, 47.501667>,  <32.984344, 37.512878, 47.789734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242649, 36.953510, 47.501667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.471561, 37.268265, 47.409313>,  <33.608910, 37.457115, 47.353901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.471561, 37.268265, 47.409313>,  <33.242649, 36.953510, 47.501667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471561, 37.268265, 47.409313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800536, -0.474999, 0.365401,
		0.177859, -0.393942, -0.901763,
		0.572283, 0.786883, -0.230882,
		33.643246, 37.504330, 47.340050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124142, 36.407604, 47.913235>,  <33.242649, 36.953510, 47.501667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124142, 36.407604, 47.913235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127083, 36.132477, 48.203575>,  <33.128849, 35.967400, 48.377777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127083, 36.132477, 48.203575>,  <33.124142, 36.407604, 47.913235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127083, 36.132477, 48.203575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989089, 0.111807, 0.095923,
		-0.147132, 0.717224, 0.681133,
		0.007357, -0.687815, 0.725849,
		33.129292, 35.926132, 48.421329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479057, 36.691498, 48.475842>,  <33.124142, 36.407604, 47.913235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479057, 36.691498, 48.475842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.512810, 36.293888, 48.503529>,  <33.533062, 36.055321, 48.520142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.512810, 36.293888, 48.503529>,  <33.479057, 36.691498, 48.475842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512810, 36.293888, 48.503529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994782, 0.080040, -0.063266,
		0.057348, 0.074197, 0.995593,
		0.084382, -0.994026, 0.069220,
		33.538124, 35.995682, 48.524296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115017, 36.638309, 48.696575>,  <33.479057, 36.691498, 48.475842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115017, 36.638309, 48.696575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.045231, 36.257069, 48.597649>,  <34.003361, 36.028324, 48.538292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.045231, 36.257069, 48.597649>,  <34.115017, 36.638309, 48.696575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045231, 36.257069, 48.597649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982600, -0.152263, -0.106365,
		0.063720, -0.261566, 0.963080,
		-0.174463, -0.953100, -0.247312,
		33.992893, 35.971138, 48.523457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538868, 36.170506, 49.130585>,  <34.115017, 36.638309, 48.696575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538868, 36.170506, 49.130585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.449661, 35.984966, 48.787632>,  <34.396137, 35.873642, 48.581860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.449661, 35.984966, 48.787632>,  <34.538868, 36.170506, 49.130585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449661, 35.984966, 48.787632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969975, -0.018071, -0.242532,
		0.097005, -0.885730, 0.453952,
		-0.223021, -0.463849, -0.857383,
		34.382755, 35.845810, 48.530418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053841, 35.731628, 49.017036>,  <34.538868, 36.170506, 49.130585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053841, 35.731628, 49.017036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883068, 35.774220, 48.657841>,  <34.780605, 35.799774, 48.442322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883068, 35.774220, 48.657841>,  <35.053841, 35.731628, 49.017036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883068, 35.774220, 48.657841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903508, 0.009124, -0.428475,
		-0.037429, -0.994274, -0.100096,
		-0.426935, 0.106475, -0.897992,
		34.754990, 35.806164, 48.388443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387932, 35.265148, 48.548023>,  <35.053841, 35.731628, 49.017036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387932, 35.265148, 48.548023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226658, 35.541958, 48.308510>,  <35.129894, 35.708046, 48.164803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226658, 35.541958, 48.308510>,  <35.387932, 35.265148, 48.548023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226658, 35.541958, 48.308510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835130, 0.010703, -0.549948,
		-0.374170, -0.721793, -0.582247,
		-0.403181, 0.692026, -0.598786,
		35.105705, 35.749565, 48.128876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583679, 35.040104, 47.946953>,  <35.387932, 35.265148, 48.548023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583679, 35.040104, 47.946953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.501938, 35.429264, 47.903679>,  <35.452892, 35.662762, 47.877712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.501938, 35.429264, 47.903679>,  <35.583679, 35.040104, 47.946953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501938, 35.429264, 47.903679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894621, 0.140755, -0.424077,
		-0.397357, -0.183449, -0.899141,
		-0.204355, 0.972900, -0.108187,
		35.440632, 35.721134, 47.871223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824116, 35.210331, 47.297211>,  <35.583679, 35.040104, 47.946953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824116, 35.210331, 47.297211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805561, 35.559147, 47.492107>,  <35.794430, 35.768436, 47.609043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805561, 35.559147, 47.492107>,  <35.824116, 35.210331, 47.297211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805561, 35.559147, 47.492107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884794, 0.262273, -0.385166,
		-0.463668, 0.413240, -0.783737,
		-0.046387, 0.872035, 0.487240,
		35.791645, 35.820759, 47.638279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187439, 35.608700, 46.887962>,  <35.824116, 35.210331, 47.297211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187439, 35.608700, 46.887962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137371, 35.855659, 47.198616>,  <36.107330, 36.003834, 47.385006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137371, 35.855659, 47.198616>,  <36.187439, 35.608700, 46.887962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137371, 35.855659, 47.198616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884141, 0.424569, -0.195026,
		-0.450142, 0.662241, -0.599007,
		-0.125166, 0.617396, 0.776631,
		36.099823, 36.040878, 47.431606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408543, 36.188137, 46.660412>,  <36.187439, 35.608700, 46.887962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408543, 36.188137, 46.660412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443466, 36.195473, 47.058819>,  <36.464420, 36.199875, 47.297863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443466, 36.195473, 47.058819>,  <36.408543, 36.188137, 46.660412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443466, 36.195473, 47.058819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975902, 0.199142, -0.089208,
		-0.199984, 0.979799, -0.000510,
		0.087305, 0.018338, 0.996013,
		36.469658, 36.200974, 47.357624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826969, 36.812447, 46.825592>,  <36.408543, 36.188137, 46.660412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826969, 36.812447, 46.825592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.848652, 36.542011, 47.119518>,  <36.861664, 36.379749, 47.295876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.848652, 36.542011, 47.119518>,  <36.826969, 36.812447, 46.825592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848652, 36.542011, 47.119518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997795, 0.008455, -0.065832,
		0.038295, 0.736768, 0.675060,
		0.054211, -0.676093, 0.734820,
		36.864914, 36.339184, 47.339966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275463, 37.116413, 47.332813>,  <36.826969, 36.812447, 46.825592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275463, 37.116413, 47.332813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267887, 36.723106, 47.405277>,  <37.263344, 36.487122, 47.448757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267887, 36.723106, 47.405277>,  <37.275463, 37.116413, 47.332813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267887, 36.723106, 47.405277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997378, -0.031236, -0.065283,
		0.069850, 0.179449, 0.981284,
		-0.018936, -0.983271, 0.181160,
		37.262207, 36.428123, 47.459625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848866, 36.940479, 47.577175>,  <37.275463, 37.116413, 47.332813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848866, 36.940479, 47.577175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.713680, 36.576462, 47.481178>,  <37.632568, 36.358051, 47.423580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.713680, 36.576462, 47.481178>,  <37.848866, 36.940479, 47.577175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713680, 36.576462, 47.481178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940840, -0.320021, -0.111386,
		0.024564, -0.263437, 0.964364,
		-0.337959, -0.910048, -0.239991,
		37.612293, 36.303448, 47.409180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045475, 36.317101, 47.882355>,  <37.848866, 36.940479, 47.577175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045475, 36.317101, 47.882355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.015030, 36.167332, 47.512703>,  <37.996761, 36.077469, 47.290913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.015030, 36.167332, 47.512703>,  <38.045475, 36.317101, 47.882355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015030, 36.167332, 47.512703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995641, -0.078655, -0.050134,
		-0.053916, -0.923916, 0.378777,
		-0.076113, -0.374423, -0.924129,
		37.992195, 36.055004, 47.235466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653667, 35.891979, 47.796490>,  <38.045475, 36.317101, 47.882355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653667, 35.891979, 47.796490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.514721, 35.839470, 47.425091>,  <38.431355, 35.807964, 47.202251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.514721, 35.839470, 47.425091>,  <38.653667, 35.891979, 47.796490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514721, 35.839470, 47.425091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917604, -0.251626, -0.307714,
		-0.193241, -0.958881, 0.207858,
		-0.347363, -0.131268, -0.928497,
		38.410511, 35.800091, 47.146542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978138, 35.330032, 47.458546>,  <38.653667, 35.891979, 47.796490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978138, 35.330032, 47.458546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891106, 35.583576, 47.161663>,  <38.838886, 35.735703, 46.983532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891106, 35.583576, 47.161663>,  <38.978138, 35.330032, 47.458546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891106, 35.583576, 47.161663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912704, -0.137338, -0.384851,
		-0.345876, -0.761155, -0.548646,
		-0.217582, 0.633863, -0.742210,
		38.825832, 35.773735, 46.938999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084904, 34.523956, 47.351360>,  <38.978138, 35.330032, 47.458546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084904, 34.523956, 47.351360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311764, 34.297478, 47.590611>,  <39.447880, 34.161591, 47.734161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311764, 34.297478, 47.590611>,  <39.084904, 34.523956, 47.351360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311764, 34.297478, 47.590611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821844, -0.341496, 0.456020,
		-0.053939, -0.750201, -0.659006,
		0.567154, -0.566197, 0.598129,
		39.481911, 34.127617, 47.770050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658642, 33.914883, 47.485954>,  <39.084904, 34.523956, 47.351360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658642, 33.914883, 47.485954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924500, 33.955154, 47.782093>,  <39.084015, 33.979317, 47.959774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924500, 33.955154, 47.782093>,  <38.658642, 33.914883, 47.485954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924500, 33.955154, 47.782093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670550, -0.356675, 0.650496,
		0.329554, -0.928787, -0.169552,
		0.664647, 0.100681, 0.740342,
		39.123894, 33.985359, 48.004196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690136, 33.251511, 47.884396>,  <38.658642, 33.914883, 47.485954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690136, 33.251511, 47.884396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792889, 33.582733, 48.083729>,  <38.854538, 33.781467, 48.203331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792889, 33.582733, 48.083729>,  <38.690136, 33.251511, 47.884396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792889, 33.582733, 48.083729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665496, -0.222352, 0.712513,
		0.700806, -0.514671, 0.493949,
		0.256879, 0.828054, 0.498336,
		38.869953, 33.831150, 48.233231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565556, 33.033653, 48.479527>,  <38.690136, 33.251511, 47.884396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565556, 33.033653, 48.479527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594482, 33.430977, 48.515553>,  <38.611839, 33.669369, 48.537167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594482, 33.430977, 48.515553>,  <38.565556, 33.033653, 48.479527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594482, 33.430977, 48.515553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608583, -0.027594, 0.793010,
		0.790188, -0.112160, 0.602514,
		0.072318, 0.993307, 0.090063,
		38.616177, 33.728970, 48.542572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814529, 33.201832, 49.137306>,  <38.565556, 33.033653, 48.479527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814529, 33.201832, 49.137306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592674, 33.497910, 48.985264>,  <38.459560, 33.675556, 48.894039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592674, 33.497910, 48.985264>,  <38.814529, 33.201832, 49.137306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592674, 33.497910, 48.985264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510837, 0.057689, 0.857740,
		0.656825, 0.669910, 0.346124,
		-0.554642, 0.740198, -0.380106,
		38.426281, 33.719971, 48.871231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570347, 33.495792, 49.733978>,  <38.814529, 33.201832, 49.137306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570347, 33.495792, 49.733978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309811, 33.661106, 49.479435>,  <38.153488, 33.760292, 49.326710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309811, 33.661106, 49.479435>,  <38.570347, 33.495792, 49.733978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309811, 33.661106, 49.479435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721779, -0.078736, 0.687631,
		0.234079, 0.907194, 0.349580,
		-0.651339, 0.413280, -0.636363,
		38.114410, 33.785091, 49.288525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262424, 34.029366, 50.151138>,  <38.570347, 33.495792, 49.733978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262424, 34.029366, 50.151138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007408, 33.962120, 49.850399>,  <37.854397, 33.921772, 49.669956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007408, 33.962120, 49.850399>,  <38.262424, 34.029366, 50.151138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007408, 33.962120, 49.850399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769550, 0.092653, 0.631830,
		-0.036555, 0.981404, -0.188439,
		-0.637540, -0.168109, -0.751852,
		37.816147, 33.911686, 49.624844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841423, 34.569748, 50.118546>,  <38.262424, 34.029366, 50.151138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841423, 34.569748, 50.118546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645737, 34.279251, 49.925365>,  <37.528324, 34.104954, 49.809460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645737, 34.279251, 49.925365>,  <37.841423, 34.569748, 50.118546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645737, 34.279251, 49.925365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761419, 0.085598, 0.642584,
		-0.425332, 0.682089, -0.594850,
		-0.489218, -0.726242, -0.482948,
		37.498970, 34.061378, 49.780479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162468, 34.753704, 50.181553>,  <37.841423, 34.569748, 50.118546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162468, 34.753704, 50.181553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.146450, 34.370258, 50.068798>,  <37.136841, 34.140190, 50.001144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.146450, 34.370258, 50.068798>,  <37.162468, 34.753704, 50.181553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146450, 34.370258, 50.068798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852058, -0.114599, 0.510749,
		-0.521914, 0.260637, -0.812203,
		-0.040042, -0.958611, -0.281889,
		37.134438, 34.082676, 49.984230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460537, 34.606720, 49.950531>,  <37.162468, 34.753704, 50.181553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460537, 34.606720, 49.950531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.601360, 34.245014, 50.047169>,  <36.685852, 34.027992, 50.105152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.601360, 34.245014, 50.047169>,  <36.460537, 34.606720, 49.950531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601360, 34.245014, 50.047169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887117, -0.240063, 0.394199,
		-0.298462, -0.353100, -0.886702,
		0.352056, -0.904262, 0.241591,
		36.706978, 33.973736, 50.119648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979618, 34.008099, 49.786617>,  <36.460537, 34.606720, 49.950531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979618, 34.008099, 49.786617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.210705, 33.835506, 50.063766>,  <36.349358, 33.731953, 50.230057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.210705, 33.835506, 50.063766>,  <35.979618, 34.008099, 49.786617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210705, 33.835506, 50.063766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816156, -0.317552, 0.482753,
		0.011726, -0.844385, -0.535608,
		0.577713, -0.431479, 0.692873,
		36.384018, 33.706062, 50.271629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706005, 33.328426, 49.977154>,  <35.979618, 34.008099, 49.786617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706005, 33.328426, 49.977154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954163, 33.394028, 50.283932>,  <36.103058, 33.433388, 50.467999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954163, 33.394028, 50.283932>,  <35.706005, 33.328426, 49.977154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954163, 33.394028, 50.283932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606947, -0.518933, 0.601934,
		0.496712, -0.838936, -0.222405,
		0.620397, 0.164000, 0.766949,
		36.140282, 33.443226, 50.514015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669586, 32.764572, 50.302670>,  <35.706005, 33.328426, 49.977154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669586, 32.764572, 50.302670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.798683, 33.054165, 50.546535>,  <35.876141, 33.227921, 50.692856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.798683, 33.054165, 50.546535>,  <35.669586, 32.764572, 50.302670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798683, 33.054165, 50.546535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651545, -0.297275, 0.697938,
		0.686530, -0.622479, 0.375762,
		0.322747, 0.723981, 0.609661,
		35.895508, 33.271358, 50.729435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605129, 32.479153, 50.922531>,  <35.669586, 32.764572, 50.302670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605129, 32.479153, 50.922531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622772, 32.868679, 51.011742>,  <35.633358, 33.102394, 51.065269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622772, 32.868679, 51.011742>,  <35.605129, 32.479153, 50.922531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622772, 32.868679, 51.011742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703719, -0.128179, 0.698820,
		0.709108, -0.187771, 0.679638,
		0.044103, 0.973813, 0.223031,
		35.636002, 33.160824, 51.078651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704548, 32.518932, 51.700478>,  <35.605129, 32.479153, 50.922531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704548, 32.518932, 51.700478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520504, 32.847633, 51.566002>,  <35.410076, 33.044853, 51.485317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520504, 32.847633, 51.566002>,  <35.704548, 32.518932, 51.700478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520504, 32.847633, 51.566002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667332, -0.070317, 0.741433,
		0.585633, 0.565493, 0.580733,
		-0.460111, 0.821750, -0.336192,
		35.382469, 33.094158, 51.465145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576344, 32.867748, 52.268356>,  <35.704548, 32.518932, 51.700478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576344, 32.867748, 52.268356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313061, 33.058384, 52.035248>,  <35.155090, 33.172768, 51.895382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313061, 33.058384, 52.035248>,  <35.576344, 32.867748, 52.268356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313061, 33.058384, 52.035248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616318, 0.103433, 0.780675,
		0.432342, 0.873018, 0.225653,
		-0.658204, 0.476593, -0.582776,
		35.115601, 33.201363, 51.860416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284077, 33.379017, 52.660675>,  <35.576344, 32.867748, 52.268356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284077, 33.379017, 52.660675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015194, 33.361984, 52.365021>,  <34.853863, 33.351765, 52.187630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015194, 33.361984, 52.365021>,  <35.284077, 33.379017, 52.660675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015194, 33.361984, 52.365021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712760, 0.307269, 0.630523,
		0.200266, 0.950670, -0.236899,
		-0.672211, -0.042580, -0.739134,
		34.813530, 33.349209, 52.143280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831234, 34.117081, 52.698193>,  <35.284077, 33.379017, 52.660675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831234, 34.117081, 52.698193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629082, 33.833687, 52.501163>,  <34.507790, 33.663651, 52.382946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629082, 33.833687, 52.501163>,  <34.831234, 34.117081, 52.698193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629082, 33.833687, 52.501163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848167, 0.302852, 0.434620,
		-0.158746, 0.637436, -0.753973,
		-0.505384, -0.708489, -0.492575,
		34.477467, 33.621140, 52.353390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220680, 34.398918, 52.409107>,  <34.831234, 34.117081, 52.698193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220680, 34.398918, 52.409107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114513, 34.013367, 52.418037>,  <34.050816, 33.782036, 52.423397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114513, 34.013367, 52.418037>,  <34.220680, 34.398918, 52.409107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114513, 34.013367, 52.418037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921342, 0.260388, 0.288664,
		-0.284049, 0.056045, -0.957170,
		-0.265414, -0.963876, 0.022326,
		34.034889, 33.724205, 52.424736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575218, 34.347549, 52.090950>,  <34.220680, 34.398918, 52.409107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575218, 34.347549, 52.090950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.590652, 34.017235, 52.316017>,  <33.599915, 33.819046, 52.451057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.590652, 34.017235, 52.316017>,  <33.575218, 34.347549, 52.090950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590652, 34.017235, 52.316017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905118, 0.209709, 0.369842,
		-0.423406, -0.523550, -0.739339,
		0.038585, -0.825783, 0.562667,
		33.602226, 33.769501, 52.484818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826675, 34.080055, 52.045574>,  <33.575218, 34.347549, 52.090950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826675, 34.080055, 52.045574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003372, 33.891521, 52.350914>,  <33.109390, 33.778400, 52.534119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003372, 33.891521, 52.350914>,  <32.826675, 34.080055, 52.045574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003372, 33.891521, 52.350914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804618, 0.168198, 0.569472,
		-0.396808, -0.865766, -0.304947,
		0.441738, -0.471337, 0.763353,
		33.135895, 33.750122, 52.579922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291798, 33.851929, 52.320026>,  <32.826675, 34.080055, 52.045574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291798, 33.851929, 52.320026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.575470, 33.847546, 52.602001>,  <32.745674, 33.844913, 52.771187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.575470, 33.847546, 52.602001>,  <32.291798, 33.851929, 52.320026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575470, 33.847546, 52.602001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701056, 0.095009, 0.706749,
		-0.074723, -0.995416, 0.059694,
		0.709181, -0.010962, 0.704941,
		32.788223, 33.844257, 52.813484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226418, 33.222561, 52.725105>,  <32.291798, 33.851929, 52.320026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226418, 33.222561, 52.725105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.419384, 33.503624, 52.934315>,  <32.535164, 33.672260, 53.059841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.419384, 33.503624, 52.934315>,  <32.226418, 33.222561, 52.725105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419384, 33.503624, 52.934315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641156, -0.123581, 0.757394,
		0.596823, -0.700717, 0.390895,
		0.482412, 0.702654, 0.523025,
		32.564106, 33.714420, 53.091221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412281, 32.971359, 53.361782>,  <32.226418, 33.222561, 52.725105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412281, 32.971359, 53.361782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.429035, 33.367416, 53.415230>,  <32.439087, 33.605053, 53.447300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.429035, 33.367416, 53.415230>,  <32.412281, 32.971359, 53.361782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429035, 33.367416, 53.415230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551212, -0.088640, 0.829644,
		0.833313, -0.108407, 0.542067,
		0.041890, 0.990147, 0.133620,
		32.441601, 33.664459, 53.455315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532413, 33.025364, 53.997280>,  <32.412281, 32.971359, 53.361782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532413, 33.025364, 53.997280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.406784, 33.395573, 53.912647>,  <32.331406, 33.617699, 53.861866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.406784, 33.395573, 53.912647>,  <32.532413, 33.025364, 53.997280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406784, 33.395573, 53.912647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491303, 0.032259, 0.870391,
		0.812392, 0.377316, 0.444581,
		-0.314070, 0.925523, -0.211584,
		32.312561, 33.673229, 53.849171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615345, 33.406746, 54.650089>,  <32.532413, 33.025364, 53.997280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615345, 33.406746, 54.650089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.366611, 33.634720, 54.435242>,  <32.217369, 33.771503, 54.306332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.366611, 33.634720, 54.435242>,  <32.615345, 33.406746, 54.650089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366611, 33.634720, 54.435242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606313, 0.083742, 0.790804,
		0.495685, 0.817412, 0.293485,
		-0.621836, 0.569934, -0.537118,
		32.180061, 33.805698, 54.274105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429596, 33.896351, 55.121281>,  <32.615345, 33.406746, 54.650089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429596, 33.896351, 55.121281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145931, 33.918888, 54.840164>,  <31.975733, 33.932411, 54.671494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145931, 33.918888, 54.840164>,  <32.429596, 33.896351, 55.121281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145931, 33.918888, 54.840164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689299, 0.154118, 0.707895,
		0.148195, 0.986445, -0.070460,
		-0.709158, 0.056339, -0.702795,
		31.933184, 33.935791, 54.629326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106609, 34.548164, 55.238968>,  <32.429596, 33.896351, 55.121281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106609, 34.548164, 55.238968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.844799, 34.295536, 55.072739>,  <31.687712, 34.143959, 54.973000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.844799, 34.295536, 55.072739>,  <32.106609, 34.548164, 55.238968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844799, 34.295536, 55.072739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647205, 0.183945, 0.739790,
		-0.390790, 0.753178, -0.529156,
		-0.654529, -0.631575, -0.415577,
		31.648439, 34.106064, 54.948067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445164, 34.868904, 55.284359>,  <32.106609, 34.548164, 55.238968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445164, 34.868904, 55.284359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353447, 34.483463, 55.229382>,  <31.298416, 34.252197, 55.196396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353447, 34.483463, 55.229382>,  <31.445164, 34.868904, 55.284359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353447, 34.483463, 55.229382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649361, 0.046248, 0.759072,
		-0.725089, 0.263300, -0.636332,
		-0.229293, -0.963605, -0.137443,
		31.284658, 34.194382, 55.188148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687664, 34.898880, 55.364174>,  <31.445164, 34.868904, 55.284359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687664, 34.898880, 55.364174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.799324, 34.517403, 55.408962>,  <30.866320, 34.288517, 55.435833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.799324, 34.517403, 55.408962>,  <30.687664, 34.898880, 55.364174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799324, 34.517403, 55.408962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519395, -0.051889, 0.852957,
		-0.807654, -0.296257, -0.509831,
		0.279149, -0.953698, 0.111966,
		30.883068, 34.231293, 55.442551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099480, 34.528255, 55.492588>,  <30.687664, 34.898880, 55.364174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099480, 34.528255, 55.492588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378548, 34.283852, 55.642216>,  <30.545988, 34.137211, 55.731995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378548, 34.283852, 55.642216>,  <30.099480, 34.528255, 55.492588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378548, 34.283852, 55.642216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626157, -0.266331, 0.732799,
		-0.348116, -0.745480, -0.568396,
		0.697669, -0.611005, 0.374074,
		30.587849, 34.100548, 55.754436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730028, 33.936989, 55.849564>,  <30.099480, 34.528255, 55.492588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730028, 33.936989, 55.849564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.092867, 33.874985, 56.006100>,  <30.310570, 33.837780, 56.100021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.092867, 33.874985, 56.006100>,  <29.730028, 33.936989, 55.849564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092867, 33.874985, 56.006100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408612, -0.101063, 0.907096,
		-0.101063, -0.982729, -0.155014,
		-0.907096, 0.155014, -0.391342,
		30.364996, 33.828480, 56.123501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627554, 33.475540, 56.349072>,  <29.730028, 33.936989, 55.849564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627554, 33.475540, 56.349072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.985256, 33.630299, 56.439068>,  <30.199877, 33.723152, 56.493065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.985256, 33.630299, 56.439068>,  <29.627554, 33.475540, 56.349072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985256, 33.630299, 56.439068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213693, -0.072604, 0.974199,
		0.393250, -0.919260, 0.017751,
		0.894254, 0.386897, 0.224991,
		30.253532, 33.746368, 56.506565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944592, 33.040436, 56.748940>,  <29.627554, 33.475540, 56.349072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944592, 33.040436, 56.748940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.119133, 33.388355, 56.841057>,  <30.223858, 33.597107, 56.896328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.119133, 33.388355, 56.841057>,  <29.944592, 33.040436, 56.748940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119133, 33.388355, 56.841057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054938, -0.229716, 0.971706,
		0.898096, -0.436661, -0.052453,
		0.436355, 0.869803, 0.230296,
		30.250040, 33.649296, 56.910145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595001, 32.854416, 57.190475>,  <29.944592, 33.040436, 56.748940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595001, 32.854416, 57.190475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.459103, 33.223312, 57.264278>,  <30.377563, 33.444649, 57.308559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.459103, 33.223312, 57.264278>,  <30.595001, 32.854416, 57.190475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459103, 33.223312, 57.264278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073862, -0.221737, 0.972305,
		0.937613, 0.316707, 0.143452,
		-0.339745, 0.922241, 0.184511,
		30.357180, 33.499985, 57.319633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923763, 32.987064, 57.870701>,  <30.595001, 32.854416, 57.190475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923763, 32.987064, 57.870701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.656404, 33.284126, 57.854145>,  <30.495989, 33.462364, 57.844212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.656404, 33.284126, 57.854145>,  <30.923763, 32.987064, 57.870701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656404, 33.284126, 57.854145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189094, -0.115837, 0.975103,
		0.719368, 0.659582, 0.217856,
		-0.668396, 0.742653, -0.041394,
		30.455885, 33.506924, 57.841728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919670, 33.247360, 58.633877>,  <30.923763, 32.987064, 57.870701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919670, 33.247360, 58.633877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.592243, 33.404747, 58.466480>,  <30.395788, 33.499180, 58.366043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.592243, 33.404747, 58.466480>,  <30.919670, 33.247360, 58.633877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592243, 33.404747, 58.466480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407584, 0.115512, 0.905832,
		0.404752, 0.912055, 0.065815,
		-0.818566, 0.393463, -0.418493,
		30.346674, 33.522785, 58.340931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840996, 33.850342, 58.956158>,  <30.919670, 33.247360, 58.633877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840996, 33.850342, 58.956158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.486528, 33.738880, 58.808071>,  <30.273848, 33.672005, 58.719219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.486528, 33.738880, 58.808071>,  <30.840996, 33.850342, 58.956158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486528, 33.738880, 58.808071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405111, 0.078066, 0.910929,
		-0.224931, 0.957214, -0.182064,
		-0.886167, -0.278652, -0.370218,
		30.220678, 33.655285, 58.697006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398087, 34.297592, 59.285255>,  <30.840996, 33.850342, 58.956158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398087, 34.297592, 59.285255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.131237, 34.025810, 59.163082>,  <29.971128, 33.862740, 59.089779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.131237, 34.025810, 59.163082>,  <30.398087, 34.297592, 59.285255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131237, 34.025810, 59.163082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404115, -0.014359, 0.914595,
		-0.625811, 0.733578, -0.264998,
		-0.667122, -0.679454, -0.305436,
		29.931101, 33.821976, 59.071453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826788, 34.630024, 59.490105>,  <30.398087, 34.297592, 59.285255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826788, 34.630024, 59.490105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.721987, 34.248428, 59.431770>,  <29.659107, 34.019470, 59.396770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.721987, 34.248428, 59.431770>,  <29.826788, 34.630024, 59.490105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721987, 34.248428, 59.431770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488090, 0.000625, 0.872793,
		-0.832541, 0.299853, -0.465794,
		-0.262001, -0.953985, -0.145835,
		29.643387, 33.962234, 59.388020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022196, 34.627647, 59.535877>,  <29.826788, 34.630024, 59.490105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022196, 34.627647, 59.535877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.206381, 34.279312, 59.604721>,  <29.316893, 34.070312, 59.646027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.206381, 34.279312, 59.604721>,  <29.022196, 34.627647, 59.535877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206381, 34.279312, 59.604721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414982, -0.039779, 0.908959,
		-0.784706, -0.489965, -0.379698,
		0.460462, -0.870834, 0.172112,
		29.344519, 34.018063, 59.656353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575806, 34.225456, 59.726440>,  <29.022196, 34.627647, 59.535877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575806, 34.225456, 59.726440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.915997, 34.088840, 59.886459>,  <29.120111, 34.006870, 59.982471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.915997, 34.088840, 59.886459>,  <28.575806, 34.225456, 59.726440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915997, 34.088840, 59.886459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458877, -0.109949, 0.881671,
		-0.257142, -0.933414, -0.250234,
		0.850477, -0.341541, 0.400050,
		29.171139, 33.986378, 60.006474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413443, 33.738384, 60.138805>,  <28.575806, 34.225456, 59.726440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413443, 33.738384, 60.138805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.792177, 33.748318, 60.267109>,  <29.019419, 33.754276, 60.344090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.792177, 33.748318, 60.267109>,  <28.413443, 33.738384, 60.138805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792177, 33.748318, 60.267109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301772, -0.277007, 0.912250,
		0.111506, -0.960547, -0.254787,
		0.946837, 0.024834, 0.320754,
		29.076229, 33.755768, 60.363335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609671, 33.015053, 60.502754>,  <28.413443, 33.738384, 60.138805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609671, 33.015053, 60.502754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.861641, 33.286072, 60.654610>,  <29.012823, 33.448685, 60.745724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.861641, 33.286072, 60.654610>,  <28.609671, 33.015053, 60.502754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861641, 33.286072, 60.654610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238432, -0.296498, 0.924792,
		0.739151, -0.673068, -0.025223,
		0.629926, 0.677546, 0.379638,
		29.050619, 33.489334, 60.768501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927973, 32.658951, 61.157288>,  <28.609671, 33.015053, 60.502754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927973, 32.658951, 61.157288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.993122, 33.052402, 61.188114>,  <29.032211, 33.288475, 61.206608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.993122, 33.052402, 61.188114>,  <28.927973, 32.658951, 61.157288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993122, 33.052402, 61.188114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174116, -0.048225, 0.983544,
		0.971162, -0.173609, 0.163412,
		0.162872, 0.983633, 0.077062,
		29.041985, 33.347492, 61.211231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488094, 32.853619, 61.679871>,  <28.927973, 32.658951, 61.157288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488094, 32.853619, 61.679871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.199272, 33.129257, 61.655270>,  <29.025978, 33.294640, 61.640511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.199272, 33.129257, 61.655270>,  <29.488094, 32.853619, 61.679871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199272, 33.129257, 61.655270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082146, 0.002867, 0.996616,
		0.686942, 0.724664, 0.054537,
		-0.722055, 0.689097, -0.061498,
		28.982656, 33.335987, 61.636822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641214, 33.423878, 62.207062>,  <29.488094, 32.853619, 61.679871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641214, 33.423878, 62.207062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.264151, 33.327686, 62.114487>,  <29.037912, 33.269974, 62.058941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.264151, 33.327686, 62.114487>,  <29.641214, 33.423878, 62.207062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264151, 33.327686, 62.114487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248156, 0.041318, 0.967839,
		-0.223179, 0.969775, -0.098625,
		-0.942661, -0.240476, -0.231434,
		28.981352, 33.255543, 62.045055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304504, 33.909412, 62.558235>,  <29.641214, 33.423878, 62.207062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304504, 33.909412, 62.558235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.097231, 33.572689, 62.497765>,  <28.972868, 33.370655, 62.461483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.097231, 33.572689, 62.497765>,  <29.304504, 33.909412, 62.558235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097231, 33.572689, 62.497765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289194, 0.006112, 0.957251,
		-0.804894, 0.539748, -0.246611,
		-0.518182, -0.841804, -0.151172,
		28.941776, 33.320148, 62.452412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567242, 34.577866, 62.479446>,  <29.304504, 33.909412, 62.558235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567242, 34.577866, 62.479446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.960522, 34.545090, 62.544689>,  <30.196489, 34.525425, 62.583836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.960522, 34.545090, 62.544689>,  <29.567242, 34.577866, 62.479446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960522, 34.545090, 62.544689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178764, -0.251709, 0.951150,
		-0.036879, -0.964328, -0.262128,
		0.983201, -0.081937, 0.163104,
		30.255482, 34.520508, 62.593620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523615, 34.687145, 63.229752>,  <29.567242, 34.577866, 62.479446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523615, 34.687145, 63.229752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.605761, 34.955936, 62.945141>,  <29.655048, 35.117210, 62.774376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.605761, 34.955936, 62.945141>,  <29.523615, 34.687145, 63.229752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605761, 34.955936, 62.945141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714491, 0.599782, 0.360228,
		0.668827, 0.434400, 0.603297,
		0.205363, 0.671980, -0.711525,
		29.667370, 35.157532, 62.731682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594301, 35.394382, 63.571602>,  <29.523615, 34.687145, 63.229752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594301, 35.394382, 63.571602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.487228, 35.381653, 63.186409>,  <29.422985, 35.374016, 62.955292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.487228, 35.381653, 63.186409>,  <29.594301, 35.394382, 63.571602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487228, 35.381653, 63.186409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739593, 0.647360, 0.184191,
		0.617534, 0.761519, -0.196826,
		-0.267683, -0.031827, -0.962981,
		29.406923, 35.372105, 62.897514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321411, 36.000523, 63.297153>,  <29.594301, 35.394382, 63.571602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321411, 36.000523, 63.297153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.107891, 35.708214, 63.126965>,  <28.979778, 35.532829, 63.024849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.107891, 35.708214, 63.126965>,  <29.321411, 36.000523, 63.297153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107891, 35.708214, 63.126965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844972, 0.441417, 0.301951,
		-0.032844, 0.520698, -0.853109,
		-0.533802, -0.730770, -0.425477,
		28.947750, 35.488983, 62.999321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874836, 36.252483, 62.787430>,  <29.321411, 36.000523, 63.297153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874836, 36.252483, 62.787430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.694939, 35.932941, 62.947208>,  <28.587000, 35.741215, 63.043076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.694939, 35.932941, 62.947208>,  <28.874836, 36.252483, 62.787430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694939, 35.932941, 62.947208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766687, 0.574719, 0.286164,
		-0.458173, -0.177550, -0.870949,
		-0.449743, -0.798858, 0.399446,
		28.560017, 35.693283, 63.067043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118561, 36.542198, 62.121887>,  <28.874836, 36.252483, 62.787430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118561, 36.542198, 62.121887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.462666, 36.349174, 62.187717>,  <29.669128, 36.233360, 62.227215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.462666, 36.349174, 62.187717>,  <29.118561, 36.542198, 62.121887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462666, 36.349174, 62.187717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274231, 0.165816, -0.947261,
		0.429819, 0.860025, 0.274978,
		0.860264, -0.482558, 0.164574,
		29.720745, 36.204407, 62.237091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727779, 36.879429, 61.805500>,  <29.118561, 36.542198, 62.121887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727779, 36.879429, 61.805500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.818216, 36.491535, 61.842358>,  <29.872478, 36.258797, 61.864471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.818216, 36.491535, 61.842358>,  <29.727779, 36.879429, 61.805500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818216, 36.491535, 61.842358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326656, -0.013636, -0.945045,
		0.917703, 0.243764, 0.313688,
		0.226091, -0.969739, 0.092141,
		29.886044, 36.200615, 61.869999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428141, 36.924534, 61.730083>,  <29.727779, 36.879429, 61.805500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428141, 36.924534, 61.730083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.258564, 36.583904, 61.606735>,  <30.156818, 36.379524, 61.532726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.258564, 36.583904, 61.606735>,  <30.428141, 36.924534, 61.730083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258564, 36.583904, 61.606735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463264, 0.088678, -0.881773,
		0.778243, -0.516675, 0.356910,
		-0.423940, -0.851577, -0.308370,
		30.131382, 36.328430, 61.514225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967014, 36.518349, 61.468361>,  <30.428141, 36.924534, 61.730083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967014, 36.518349, 61.468361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630932, 36.362442, 61.317558>,  <30.429281, 36.268898, 61.227077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630932, 36.362442, 61.317558>,  <30.967014, 36.518349, 61.468361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630932, 36.362442, 61.317558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355346, 0.129411, -0.925733,
		0.409611, -0.911775, 0.029771,
		-0.840207, -0.389770, -0.377004,
		30.378870, 36.245510, 61.204456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019497, 35.869549, 61.229923>,  <30.967014, 36.518349, 61.468361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019497, 35.869549, 61.229923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702253, 36.000477, 61.024460>,  <30.511908, 36.079033, 60.901184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702253, 36.000477, 61.024460>,  <31.019497, 35.869549, 61.229923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702253, 36.000477, 61.024460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499786, -0.132281, -0.855988,
		-0.348132, -0.935607, -0.058679,
		-0.793107, 0.327324, -0.513655,
		30.464321, 36.098675, 60.870365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800138, 35.402550, 60.676865>,  <31.019497, 35.869549, 61.229923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800138, 35.402550, 60.676865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.617060, 35.738953, 60.561474>,  <30.507214, 35.940796, 60.492241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.617060, 35.738953, 60.561474>,  <30.800138, 35.402550, 60.676865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617060, 35.738953, 60.561474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487161, -0.034202, -0.872642,
		-0.743767, -0.539939, -0.394053,
		-0.457696, 0.841009, -0.288475,
		30.479752, 35.991257, 60.474930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610853, 35.254059, 60.091045>,  <30.800138, 35.402550, 60.676865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610853, 35.254059, 60.091045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.616468, 35.653927, 60.082413>,  <30.619839, 35.893848, 60.077232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.616468, 35.653927, 60.082413>,  <30.610853, 35.254059, 60.091045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616468, 35.653927, 60.082413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421529, -0.025488, -0.906456,
		-0.906706, 0.003630, -0.421748,
		0.014040, 0.999668, -0.021580,
		30.620680, 35.953827, 60.075939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502361, 35.362331, 59.449848>,  <30.610853, 35.254059, 60.091045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502361, 35.362331, 59.449848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.656740, 35.710709, 59.571507>,  <30.749367, 35.919735, 59.644501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.656740, 35.710709, 59.571507>,  <30.502361, 35.362331, 59.449848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656740, 35.710709, 59.571507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437022, 0.117739, -0.891711,
		-0.812439, 0.477072, -0.335179,
		0.385946, 0.870942, 0.304147,
		30.772524, 35.971992, 59.662750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374296, 35.756714, 58.794777>,  <30.502361, 35.362331, 59.449848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374296, 35.756714, 58.794777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630953, 35.964622, 59.020390>,  <30.784946, 36.089367, 59.155758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630953, 35.964622, 59.020390>,  <30.374296, 35.756714, 58.794777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630953, 35.964622, 59.020390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440676, 0.352063, -0.825746,
		-0.627776, 0.778388, -0.003154,
		0.641640, 0.519773, 0.564034,
		30.823444, 36.120556, 59.189598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499073, 36.492474, 58.436752>,  <30.374296, 35.756714, 58.794777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499073, 36.492474, 58.436752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.818888, 36.439144, 58.671005>,  <31.010777, 36.407146, 58.811558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.818888, 36.439144, 58.671005>,  <30.499073, 36.492474, 58.436752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818888, 36.439144, 58.671005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598400, 0.260506, -0.757663,
		-0.051544, 0.956222, 0.288067,
		0.799538, -0.133327, 0.585631,
		31.058748, 36.399147, 58.846695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819878, 37.108292, 58.335934>,  <30.499073, 36.492474, 58.436752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819878, 37.108292, 58.335934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079441, 36.831406, 58.462273>,  <31.235178, 36.665276, 58.538078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079441, 36.831406, 58.462273>,  <30.819878, 37.108292, 58.335934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079441, 36.831406, 58.462273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582047, 0.184247, -0.792007,
		0.490041, 0.697780, 0.522458,
		0.648908, -0.692211, 0.315852,
		31.274113, 36.623741, 58.557030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530708, 37.353268, 58.222870>,  <30.819878, 37.108292, 58.335934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530708, 37.353268, 58.222870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.562241, 36.956268, 58.260250>,  <31.581160, 36.718067, 58.282677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.562241, 36.956268, 58.260250>,  <31.530708, 37.353268, 58.222870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562241, 36.956268, 58.260250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604352, -0.026968, -0.796261,
		0.792808, 0.119246, 0.597693,
		0.078832, -0.992498, 0.093447,
		31.585890, 36.658520, 58.288284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083210, 37.248646, 57.851551>,  <31.530708, 37.353268, 58.222870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083210, 37.248646, 57.851551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.957169, 36.869926, 57.877743>,  <31.881542, 36.642696, 57.893459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.957169, 36.869926, 57.877743>,  <32.083210, 37.248646, 57.851551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957169, 36.869926, 57.877743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589857, -0.249429, -0.768020,
		0.743490, -0.203384, 0.637070,
		-0.315107, -0.946795, 0.065480,
		31.862637, 36.585888, 57.897388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590176, 36.927494, 57.939938>,  <32.083210, 37.248646, 57.851551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590176, 36.927494, 57.939938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359966, 36.629787, 57.804390>,  <32.221840, 36.451164, 57.723061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359966, 36.629787, 57.804390>,  <32.590176, 36.927494, 57.939938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359966, 36.629787, 57.804390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700655, -0.235080, -0.673662,
		0.421725, -0.625140, 0.656771,
		-0.575527, -0.744270, -0.338868,
		32.187309, 36.406506, 57.702728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953209, 36.311783, 57.873932>,  <32.590176, 36.927494, 57.939938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953209, 36.311783, 57.873932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653591, 36.318642, 57.609013>,  <32.473820, 36.322758, 57.450062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653591, 36.318642, 57.609013>,  <32.953209, 36.311783, 57.873932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653591, 36.318642, 57.609013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644777, -0.210938, -0.734689,
		-0.152303, -0.977349, 0.146944,
		-0.749044, 0.017149, -0.662298,
		32.428879, 36.323788, 57.410324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242546, 35.750175, 57.281147>,  <32.953209, 36.311783, 57.873932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242546, 35.750175, 57.281147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.937584, 35.941750, 57.107082>,  <32.754608, 36.056694, 57.002644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.937584, 35.941750, 57.107082>,  <33.242546, 35.750175, 57.281147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937584, 35.941750, 57.107082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455368, -0.080720, -0.886636,
		-0.459766, -0.874132, -0.156549,
		-0.762401, 0.478933, -0.435164,
		32.708862, 36.085430, 56.976532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964561, 35.290806, 56.735855>,  <33.242546, 35.750175, 57.281147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964561, 35.290806, 56.735855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.848209, 35.667721, 56.669540>,  <32.778397, 35.893871, 56.629753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.848209, 35.667721, 56.669540>,  <32.964561, 35.290806, 56.735855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848209, 35.667721, 56.669540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377095, -0.046339, -0.925015,
		-0.879311, -0.331587, -0.341852,
		-0.290882, 0.942286, -0.165786,
		32.760944, 35.950405, 56.619804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777275, 35.291294, 56.107784>,  <32.964561, 35.290806, 56.735855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777275, 35.291294, 56.107784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884041, 35.670223, 56.178585>,  <32.948101, 35.897583, 56.221066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884041, 35.670223, 56.178585>,  <32.777275, 35.291294, 56.107784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884041, 35.670223, 56.178585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668422, -0.049669, -0.742122,
		-0.694239, 0.316399, -0.646470,
		0.266916, 0.947325, 0.177006,
		32.964115, 35.954422, 56.231686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634903, 35.661079, 55.497028>,  <32.777275, 35.291294, 56.107784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634903, 35.661079, 55.497028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934422, 35.844200, 55.688747>,  <33.114132, 35.954071, 55.803780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934422, 35.844200, 55.688747>,  <32.634903, 35.661079, 55.497028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934422, 35.844200, 55.688747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590677, -0.132874, -0.795892,
		-0.300674, 0.879070, -0.369908,
		0.748796, 0.457801, 0.479295,
		33.159061, 35.981541, 55.832535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908302, 36.049114, 54.969898>,  <32.634903, 35.661079, 55.497028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908302, 36.049114, 54.969898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.192280, 36.085991, 55.249180>,  <33.362667, 36.108116, 55.416748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.192280, 36.085991, 55.249180>,  <32.908302, 36.049114, 54.969898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192280, 36.085991, 55.249180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698253, 0.037086, -0.714890,
		-0.091803, 0.995050, -0.038047,
		0.709940, 0.092196, 0.698201,
		33.405262, 36.113651, 55.458641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328674, 36.693493, 54.898315>,  <32.908302, 36.049114, 54.969898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328674, 36.693493, 54.898315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.585621, 36.449089, 55.083366>,  <33.739788, 36.302448, 55.194397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.585621, 36.449089, 55.083366>,  <33.328674, 36.693493, 54.898315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585621, 36.449089, 55.083366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728171, 0.298333, -0.617061,
		0.239013, 0.733255, 0.636561,
		0.642370, -0.611011, 0.462630,
		33.778332, 36.265785, 55.222157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944942, 37.052124, 54.796394>,  <33.328674, 36.693493, 54.898315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944942, 37.052124, 54.796394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.049980, 36.685135, 54.915920>,  <34.113003, 36.464943, 54.987637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.049980, 36.685135, 54.915920>,  <33.944942, 37.052124, 54.796394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049980, 36.685135, 54.915920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891472, 0.112189, -0.438966,
		0.369215, 0.381652, 0.847362,
		0.262597, -0.917472, 0.298810,
		34.128757, 36.409893, 55.005562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587868, 37.164818, 55.047226>,  <33.944942, 37.052124, 54.796394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587868, 37.164818, 55.047226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.574917, 36.770214, 54.983028>,  <34.567146, 36.533451, 54.944508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.574917, 36.770214, 54.983028>,  <34.587868, 37.164818, 55.047226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574917, 36.770214, 54.983028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914458, 0.035574, -0.403113,
		0.403383, -0.159819, 0.900966,
		-0.032374, -0.986505, -0.160498,
		34.565205, 36.474262, 54.934879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181881, 36.955601, 55.299694>,  <34.587868, 37.164818, 55.047226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181881, 36.955601, 55.299694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064892, 36.689754, 55.024670>,  <34.994698, 36.530247, 54.859653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064892, 36.689754, 55.024670>,  <35.181881, 36.955601, 55.299694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064892, 36.689754, 55.024670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882197, 0.089947, -0.462210,
		0.369038, -0.741748, 0.560019,
		-0.292471, -0.664620, -0.687562,
		34.977150, 36.490368, 54.818401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767513, 36.614811, 55.058506>,  <35.181881, 36.955601, 55.299694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767513, 36.614811, 55.058506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.526814, 36.474216, 54.771633>,  <35.382393, 36.389858, 54.599510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.526814, 36.474216, 54.771633>,  <35.767513, 36.614811, 55.058506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526814, 36.474216, 54.771633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796752, -0.326614, -0.508437,
		-0.055533, -0.877371, 0.476588,
		-0.601749, -0.351488, -0.717186,
		35.346291, 36.368771, 54.556477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152893, 36.117706, 54.732296>,  <35.767513, 36.614811, 55.058506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152893, 36.117706, 54.732296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.863663, 36.236881, 54.483013>,  <35.690125, 36.308384, 54.333443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.863663, 36.236881, 54.483013>,  <36.152893, 36.117706, 54.732296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863663, 36.236881, 54.483013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631365, -0.080969, -0.771247,
		-0.280241, -0.951146, -0.129558,
		-0.723078, 0.297933, -0.623212,
		35.646740, 36.326260, 54.296051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276695, 35.713074, 54.217556>,  <36.152893, 36.117706, 54.732296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276695, 35.713074, 54.217556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.060448, 36.005947, 54.051842>,  <35.930698, 36.181671, 53.952412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.060448, 36.005947, 54.051842>,  <36.276695, 35.713074, 54.217556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060448, 36.005947, 54.051842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599157, -0.010585, -0.800562,
		-0.590546, -0.681021, -0.432973,
		-0.540617, 0.732187, -0.414289,
		35.898262, 36.225605, 53.927555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157150, 35.468433, 53.591980>,  <36.276695, 35.713074, 54.217556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157150, 35.468433, 53.591980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085430, 35.861931, 53.595825>,  <36.042400, 36.098030, 53.598133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085430, 35.861931, 53.595825>,  <36.157150, 35.468433, 53.591980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085430, 35.861931, 53.595825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588872, 0.115146, -0.799982,
		-0.788088, -0.137770, -0.599947,
		-0.179296, 0.983748, 0.009616,
		36.031643, 36.157055, 53.598709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808640, 35.708477, 52.968166>,  <36.157150, 35.468433, 53.591980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808640, 35.708477, 52.968166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.998844, 36.034023, 53.101742>,  <36.112968, 36.229351, 53.181889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.998844, 36.034023, 53.101742>,  <35.808640, 35.708477, 52.968166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998844, 36.034023, 53.101742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366131, 0.162073, -0.916341,
		-0.799899, 0.557996, -0.220913,
		0.475511, 0.813863, 0.333941,
		36.141499, 36.278183, 53.201923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660877, 36.244736, 52.405937>,  <35.808640, 35.708477, 52.968166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660877, 36.244736, 52.405937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940975, 36.439507, 52.614765>,  <36.109035, 36.556370, 52.740063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940975, 36.439507, 52.614765>,  <35.660877, 36.244736, 52.405937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940975, 36.439507, 52.614765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518080, 0.156533, -0.840887,
		-0.491173, 0.859301, -0.142656,
		0.700245, 0.486928, 0.522072,
		36.151047, 36.585587, 52.771385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762318, 36.982605, 52.206127>,  <35.660877, 36.244736, 52.405937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762318, 36.982605, 52.206127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094475, 36.870621, 52.398819>,  <36.293770, 36.803429, 52.514435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094475, 36.870621, 52.398819>,  <35.762318, 36.982605, 52.206127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094475, 36.870621, 52.398819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542004, 0.205526, -0.814856,
		0.129119, 0.937754, 0.322407,
		0.830398, -0.279959, 0.481729,
		36.343594, 36.786633, 52.543339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251450, 37.594143, 52.215347>,  <35.762318, 36.982605, 52.206127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251450, 37.594143, 52.215347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467422, 37.260735, 52.262196>,  <36.597008, 37.060692, 52.290306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467422, 37.260735, 52.262196>,  <36.251450, 37.594143, 52.215347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467422, 37.260735, 52.262196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604625, 0.287273, -0.742902,
		0.585575, 0.471934, 0.659075,
		0.539935, -0.833518, 0.117123,
		36.629402, 37.010677, 52.297333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879086, 37.862915, 52.264648>,  <36.251450, 37.594143, 52.215347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879086, 37.862915, 52.264648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.919640, 37.474503, 52.178104>,  <36.943974, 37.241455, 52.126179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.919640, 37.474503, 52.178104>,  <36.879086, 37.862915, 52.264648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919640, 37.474503, 52.178104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652242, 0.229100, -0.722561,
		0.751200, -0.067864, 0.656577,
		0.101386, -0.971034, -0.216363,
		36.950054, 37.183193, 52.113194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640602, 37.648907, 52.218742>,  <36.879086, 37.862915, 52.264648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640602, 37.648907, 52.218742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.423420, 37.402309, 51.990658>,  <37.293110, 37.254349, 51.853809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.423420, 37.402309, 51.990658>,  <37.640602, 37.648907, 52.218742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423420, 37.402309, 51.990658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612353, 0.173992, -0.771201,
		0.574653, -0.767894, 0.283044,
		-0.542953, -0.616495, -0.570207,
		37.260532, 37.217361, 51.819595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013916, 37.584221, 51.628189>,  <37.640602, 37.648907, 52.218742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013916, 37.584221, 51.628189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697487, 37.382484, 51.489712>,  <37.507629, 37.261444, 51.406624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697487, 37.382484, 51.489712>,  <38.013916, 37.584221, 51.628189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697487, 37.382484, 51.489712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358216, 0.076835, -0.930472,
		0.495872, -0.860081, 0.119880,
		-0.791070, -0.504338, -0.346195,
		37.460167, 37.231182, 51.385853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292408, 37.039364, 51.322433>,  <38.013916, 37.584221, 51.628189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292408, 37.039364, 51.322433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.929131, 37.120953, 51.176239>,  <37.711163, 37.169907, 51.088524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.929131, 37.120953, 51.176239>,  <38.292408, 37.039364, 51.322433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929131, 37.120953, 51.176239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360472, -0.062596, -0.930667,
		-0.212707, -0.976974, -0.016677,
		-0.908194, 0.203971, -0.365486,
		37.656673, 37.182144, 51.066593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176682, 36.671757, 50.758476>,  <38.292408, 37.039364, 51.322433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176682, 36.671757, 50.758476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891590, 36.945011, 50.694809>,  <37.720535, 37.108963, 50.656609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891590, 36.945011, 50.694809>,  <38.176682, 36.671757, 50.758476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891590, 36.945011, 50.694809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173229, -0.048460, -0.983689,
		-0.679711, -0.728677, -0.083801,
		-0.712731, 0.683141, -0.159167,
		37.677773, 37.149952, 50.647060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785713, 36.447002, 50.185680>,  <38.176682, 36.671757, 50.758476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785713, 36.447002, 50.185680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683456, 36.833275, 50.204052>,  <37.622101, 37.065037, 50.215076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683456, 36.833275, 50.204052>,  <37.785713, 36.447002, 50.185680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683456, 36.833275, 50.204052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056658, 0.032459, -0.997866,
		-0.965109, -0.257702, 0.046416,
		-0.255646, 0.965679, 0.045927,
		37.606762, 37.122978, 50.217831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294979, 36.472549, 49.652245>,  <37.785713, 36.447002, 50.185680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294979, 36.472549, 49.652245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364750, 36.854359, 49.748955>,  <37.406612, 37.083443, 49.806980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364750, 36.854359, 49.748955>,  <37.294979, 36.472549, 49.652245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364750, 36.854359, 49.748955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059090, 0.255247, -0.965069,
		-0.982895, 0.154052, 0.100925,
		0.174431, 0.954525, 0.241778,
		37.417080, 37.140717, 49.821487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811768, 36.907928, 49.368717>,  <37.294979, 36.472549, 49.652245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811768, 36.907928, 49.368717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.142826, 37.122662, 49.434216>,  <37.341461, 37.251499, 49.473515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.142826, 37.122662, 49.434216>,  <36.811768, 36.907928, 49.368717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142826, 37.122662, 49.434216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163250, 0.048879, -0.985373,
		-0.536982, 0.842273, -0.047183,
		0.827648, 0.536830, 0.163748,
		37.391121, 37.283710, 49.483341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773514, 37.492771, 48.854134>,  <36.811768, 36.907928, 49.368717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773514, 37.492771, 48.854134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.157307, 37.446976, 48.957119>,  <37.387581, 37.419498, 49.018909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.157307, 37.446976, 48.957119>,  <36.773514, 37.492771, 48.854134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157307, 37.446976, 48.957119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250645, -0.070639, -0.965499,
		0.128722, 0.990910, -0.039082,
		0.959483, -0.114485, 0.257459,
		37.445152, 37.412632, 49.034355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403297, 37.850990, 48.298214>,  <36.773514, 37.492771, 48.854134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403297, 37.850990, 48.298214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389145, 38.248604, 48.256950>,  <36.380653, 38.487171, 48.232193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389145, 38.248604, 48.256950>,  <36.403297, 37.850990, 48.298214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389145, 38.248604, 48.256950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886276, 0.016488, 0.462864,
		0.461804, 0.107808, 0.880406,
		-0.035384, 0.994035, -0.103162,
		36.378529, 38.546814, 48.226002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294125, 38.087776, 48.917458>,  <36.403297, 37.850990, 48.298214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294125, 38.087776, 48.917458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152390, 38.368542, 48.670311>,  <36.067348, 38.537003, 48.522022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152390, 38.368542, 48.670311>,  <36.294125, 38.087776, 48.917458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152390, 38.368542, 48.670311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795319, 0.121321, 0.593927,
		0.491848, 0.701849, 0.515261,
		-0.354335, 0.701918, -0.617865,
		36.046089, 38.579117, 48.484951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990082, 38.521980, 49.393814>,  <36.294125, 38.087776, 48.917458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990082, 38.521980, 49.393814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.837509, 38.615116, 49.035976>,  <35.745968, 38.670998, 48.821274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.837509, 38.615116, 49.035976>,  <35.990082, 38.521980, 49.393814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837509, 38.615116, 49.035976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878082, 0.211228, 0.429366,
		0.288936, 0.949299, 0.123883,
		-0.381430, 0.232839, -0.894594,
		35.723080, 38.684967, 48.767597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651081, 39.136818, 49.479519>,  <35.990082, 38.521980, 49.393814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651081, 39.136818, 49.479519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500702, 38.957443, 49.155155>,  <35.410477, 38.849819, 48.960537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500702, 38.957443, 49.155155>,  <35.651081, 39.136818, 49.479519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500702, 38.957443, 49.155155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919954, 0.075674, 0.384653,
		-0.111130, 0.890604, -0.440993,
		-0.375945, -0.448440, -0.810905,
		35.387917, 38.822910, 48.911884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145657, 39.551277, 49.148853>,  <35.651081, 39.136818, 49.479519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145657, 39.551277, 49.148853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056816, 39.173622, 49.051460>,  <35.003510, 38.947029, 48.993027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056816, 39.173622, 49.051460>,  <35.145657, 39.551277, 49.148853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056816, 39.173622, 49.051460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915775, 0.116279, 0.384494,
		-0.334702, 0.308369, -0.890440,
		-0.222105, -0.944133, -0.243478,
		34.990185, 38.890381, 48.978416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406715, 39.497238, 48.781002>,  <35.145657, 39.551277, 49.148853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406715, 39.497238, 48.781002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.483734, 39.140202, 48.944080>,  <34.529945, 38.925980, 49.041927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.483734, 39.140202, 48.944080>,  <34.406715, 39.497238, 48.781002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483734, 39.140202, 48.944080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867945, 0.038920, 0.495133,
		-0.457817, -0.449191, -0.767223,
		0.192549, -0.892587, 0.407692,
		34.541500, 38.872425, 49.066387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776814, 39.269924, 48.797337>,  <34.406715, 39.497238, 48.781002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776814, 39.269924, 48.797337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.955444, 38.980152, 49.007389>,  <34.062622, 38.806290, 49.133423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.955444, 38.980152, 49.007389>,  <33.776814, 39.269924, 48.797337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955444, 38.980152, 49.007389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840316, -0.138001, 0.524238,
		-0.307306, -0.675391, -0.670380,
		0.446579, -0.724432, 0.525133,
		34.089417, 38.762821, 49.164928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262844, 38.708988, 48.804470>,  <33.776814, 39.269924, 48.797337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262844, 38.708988, 48.804470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.519936, 38.650124, 49.105198>,  <33.674191, 38.614803, 49.285637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.519936, 38.650124, 49.105198>,  <33.262844, 38.708988, 48.804470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519936, 38.650124, 49.105198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765967, -0.141047, 0.627216,
		0.013740, -0.979004, -0.203376,
		0.642733, -0.147162, 0.751823,
		33.712757, 38.605976, 49.330746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962715, 38.169163, 49.163166>,  <33.262844, 38.708988, 48.804470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962715, 38.169163, 49.163166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223003, 38.337925, 49.415695>,  <33.379177, 38.439182, 49.567211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223003, 38.337925, 49.415695>,  <32.962715, 38.169163, 49.163166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223003, 38.337925, 49.415695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614056, -0.196684, 0.764363,
		0.446658, -0.885050, 0.131086,
		0.650717, 0.421903, 0.631320,
		33.418217, 38.464497, 49.605091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952389, 37.706173, 49.652306>,  <32.962715, 38.169163, 49.163166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952389, 37.706173, 49.652306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.101036, 38.050484, 49.791420>,  <33.190224, 38.257072, 49.874889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.101036, 38.050484, 49.791420>,  <32.952389, 37.706173, 49.652306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101036, 38.050484, 49.791420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636146, -0.036746, 0.770693,
		0.676178, -0.507646, 0.533927,
		0.371620, 0.860782, 0.347784,
		33.212521, 38.308720, 49.895756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067879, 37.641205, 50.362457>,  <32.952389, 37.706173, 49.652306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067879, 37.641205, 50.362457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.034832, 38.037395, 50.318413>,  <33.015003, 38.275112, 50.291985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.034832, 38.037395, 50.318413>,  <33.067879, 37.641205, 50.362457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034832, 38.037395, 50.318413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579816, 0.042093, 0.813660,
		0.810548, 0.131071, 0.570818,
		-0.082619, 0.990479, -0.110115,
		33.010048, 38.334538, 50.285378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028381, 37.836414, 51.039310>,  <33.067879, 37.641205, 50.362457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028381, 37.836414, 51.039310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932468, 38.180386, 50.859074>,  <32.874920, 38.386768, 50.750931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932468, 38.180386, 50.859074>,  <33.028381, 37.836414, 51.039310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932468, 38.180386, 50.859074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455803, 0.310080, 0.834323,
		0.857176, 0.405433, 0.317607,
		-0.239779, 0.859927, -0.450590,
		32.860535, 38.438362, 50.723896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280277, 38.523540, 51.440407>,  <33.028381, 37.836414, 51.039310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280277, 38.523540, 51.440407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.960323, 38.613750, 51.217937>,  <32.768353, 38.667877, 51.084457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.960323, 38.613750, 51.217937>,  <33.280277, 38.523540, 51.440407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960323, 38.613750, 51.217937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524161, 0.188845, 0.830417,
		0.292307, 0.955760, -0.032844,
		-0.799882, 0.225522, -0.556173,
		32.720360, 38.681408, 51.051086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014305, 39.118092, 51.579205>,  <33.280277, 38.523540, 51.440407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014305, 39.118092, 51.579205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.691483, 38.962234, 51.401737>,  <32.497791, 38.868721, 51.295258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.691483, 38.962234, 51.401737>,  <33.014305, 39.118092, 51.579205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691483, 38.962234, 51.401737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485252, 0.009524, 0.874323,
		-0.336445, 0.920918, -0.196760,
		-0.807054, -0.389639, -0.443673,
		32.449368, 38.845345, 51.268635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390224, 39.500496, 51.826324>,  <33.014305, 39.118092, 51.579205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390224, 39.500496, 51.826324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.270004, 39.153118, 51.668606>,  <32.197872, 38.944691, 51.573975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.270004, 39.153118, 51.668606>,  <32.390224, 39.500496, 51.826324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270004, 39.153118, 51.668606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607614, -0.144317, 0.781011,
		-0.735168, 0.474318, -0.484303,
		-0.300555, -0.868444, -0.394299,
		32.179836, 38.892586, 51.550316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709015, 39.631344, 51.795399>,  <32.390224, 39.500496, 51.826324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709015, 39.631344, 51.795399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.795118, 39.240726, 51.797771>,  <31.846781, 39.006355, 51.799194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.795118, 39.240726, 51.797771>,  <31.709015, 39.631344, 51.795399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795118, 39.240726, 51.797771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520263, -0.109533, 0.846953,
		-0.826432, -0.185401, -0.531635,
		0.215257, -0.976539, 0.005936,
		31.859695, 38.947765, 51.799553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082211, 39.326969, 52.032143>,  <31.709015, 39.631344, 51.795399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082211, 39.326969, 52.032143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.368496, 39.056377, 52.101570>,  <31.540268, 38.894020, 52.143227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.368496, 39.056377, 52.101570>,  <31.082211, 39.326969, 52.032143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368496, 39.056377, 52.101570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436291, -0.239022, 0.867478,
		-0.545349, -0.696590, -0.466215,
		0.715712, -0.676484, 0.173566,
		31.583210, 38.853432, 52.153641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751560, 38.665665, 52.337898>,  <31.082211, 39.326969, 52.032143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751560, 38.665665, 52.337898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131540, 38.602921, 52.445961>,  <31.359529, 38.565273, 52.510799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131540, 38.602921, 52.445961>,  <30.751560, 38.665665, 52.337898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131540, 38.602921, 52.445961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307618, -0.319064, 0.896420,
		-0.054416, -0.934662, -0.351349,
		0.949952, -0.156861, 0.270157,
		31.416527, 38.555862, 52.527008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766491, 37.964653, 52.581367>,  <30.751560, 38.665665, 52.337898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766491, 37.964653, 52.581367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079170, 38.157269, 52.739895>,  <31.266779, 38.272839, 52.835011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079170, 38.157269, 52.739895>,  <30.766491, 37.964653, 52.581367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079170, 38.157269, 52.739895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150439, -0.471123, 0.869144,
		0.605240, -0.739031, -0.295835,
		0.781699, 0.481535, 0.396321,
		31.313681, 38.301727, 52.858791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208601, 37.477180, 52.860741>,  <30.766491, 37.964653, 52.581367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208601, 37.477180, 52.860741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.335859, 37.807293, 53.047375>,  <31.412214, 38.005360, 53.159355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.335859, 37.807293, 53.047375>,  <31.208601, 37.477180, 52.860741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335859, 37.807293, 53.047375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148467, -0.442712, 0.884287,
		0.936345, -0.350604, -0.018321,
		0.318146, 0.825277, 0.466584,
		31.431303, 38.054874, 53.187351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654530, 37.307072, 53.386395>,  <31.208601, 37.477180, 52.860741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654530, 37.307072, 53.386395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.534531, 37.663944, 53.521454>,  <31.462532, 37.878067, 53.602489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.534531, 37.663944, 53.521454>,  <31.654530, 37.307072, 53.386395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534531, 37.663944, 53.521454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218691, -0.408851, 0.886011,
		0.928534, 0.191960, 0.317767,
		-0.299998, 0.892184, 0.337652,
		31.444530, 37.931599, 53.622749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869112, 37.245789, 54.046326>,  <31.654530, 37.307072, 53.386395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869112, 37.245789, 54.046326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.603285, 37.544170, 54.028896>,  <31.443789, 37.723202, 54.018436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.603285, 37.544170, 54.028896>,  <31.869112, 37.245789, 54.046326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603285, 37.544170, 54.028896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392679, -0.299028, 0.869704,
		0.635731, 0.595089, 0.491646,
		-0.664567, 0.745957, -0.043578,
		31.403915, 37.767956, 54.015823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818308, 37.464447, 54.710743>,  <31.869112, 37.245789, 54.046326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818308, 37.464447, 54.710743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.491734, 37.606571, 54.528671>,  <31.295788, 37.691845, 54.419430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.491734, 37.606571, 54.528671>,  <31.818308, 37.464447, 54.710743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491734, 37.606571, 54.528671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558951, -0.288452, 0.777412,
		0.144926, 0.889129, 0.434104,
		-0.816438, 0.355310, -0.455175,
		31.246801, 37.713165, 54.392120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466772, 38.026474, 55.164955>,  <31.818308, 37.464447, 54.710743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466772, 38.026474, 55.164955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.180464, 37.882816, 54.925392>,  <31.008678, 37.796623, 54.781654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.180464, 37.882816, 54.925392>,  <31.466772, 38.026474, 55.164955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180464, 37.882816, 54.925392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601179, -0.119479, 0.790132,
		-0.355325, 0.925604, -0.130388,
		-0.715771, -0.359140, -0.598908,
		30.965733, 37.775074, 54.745720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931038, 38.211334, 55.525162>,  <31.466772, 38.026474, 55.164955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931038, 38.211334, 55.525162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772345, 37.956486, 55.260834>,  <30.677128, 37.803577, 55.102238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772345, 37.956486, 55.260834>,  <30.931038, 38.211334, 55.525162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772345, 37.956486, 55.260834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476293, -0.472523, 0.741530,
		-0.784695, 0.608933, -0.115989,
		-0.396735, -0.637120, -0.660817,
		30.653324, 37.765350, 55.062588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157415, 38.254494, 55.681141>,  <30.931038, 38.211334, 55.525162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157415, 38.254494, 55.681141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.249161, 37.905190, 55.509186>,  <30.304207, 37.695606, 55.406013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.249161, 37.905190, 55.509186>,  <30.157415, 38.254494, 55.681141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249161, 37.905190, 55.509186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504841, -0.484344, 0.714525,
		-0.832183, 0.053141, -0.551949,
		0.229362, -0.873262, -0.429890,
		30.317970, 37.643211, 55.380219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501879, 37.912136, 55.704948>,  <30.157415, 38.254494, 55.681141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501879, 37.912136, 55.704948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.802212, 37.647942, 55.705994>,  <29.982412, 37.489426, 55.706619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.802212, 37.647942, 55.705994>,  <29.501879, 37.912136, 55.704948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802212, 37.647942, 55.705994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493131, -0.557946, 0.667471,
		-0.439397, -0.502449, -0.744631,
		0.750835, -0.660485, 0.002613,
		30.027462, 37.449795, 55.706776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205635, 37.249451, 55.713509>,  <29.501879, 37.912136, 55.704948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205635, 37.249451, 55.713509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.581274, 37.176525, 55.830032>,  <29.806658, 37.132771, 55.899948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.581274, 37.176525, 55.830032>,  <29.205635, 37.249451, 55.713509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581274, 37.176525, 55.830032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343246, -0.456341, 0.820936,
		-0.016728, -0.870929, -0.491125,
		0.939097, -0.182309, 0.291309,
		29.863003, 37.121834, 55.917423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086485, 36.632648, 55.952763>,  <29.205635, 37.249451, 55.713509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086485, 36.632648, 55.952763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.446600, 36.737812, 56.091537>,  <29.662668, 36.800911, 56.174801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.446600, 36.737812, 56.091537>,  <29.086485, 36.632648, 55.952763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446600, 36.737812, 56.091537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188160, -0.483665, 0.854789,
		0.392532, -0.834834, -0.385968,
		0.900286, 0.262908, 0.346936,
		29.716686, 36.816685, 56.195618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512554, 36.012974, 56.099636>,  <29.086485, 36.632648, 55.952763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512554, 36.012974, 56.099636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.666533, 36.300480, 56.331219>,  <29.758919, 36.472984, 56.470169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.666533, 36.300480, 56.331219>,  <29.512554, 36.012974, 56.099636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666533, 36.300480, 56.331219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156330, -0.567459, 0.808425,
		0.909603, -0.401709, -0.106076,
		0.384946, 0.718763, 0.578961,
		29.782017, 36.516109, 56.504906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810398, 35.593994, 56.731895>,  <29.512554, 36.012974, 56.099636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810398, 35.593994, 56.731895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.747377, 35.980022, 56.815632>,  <29.709564, 36.211639, 56.865875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.747377, 35.980022, 56.815632>,  <29.810398, 35.593994, 56.731895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747377, 35.980022, 56.815632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490557, -0.260468, 0.831571,
		0.857048, 0.028324, 0.514458,
		-0.157553, 0.965067, 0.209340,
		29.700111, 36.269543, 56.878433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853767, 35.569759, 57.432499>,  <29.810398, 35.593994, 56.731895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853767, 35.569759, 57.432499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.682154, 35.918404, 57.337658>,  <29.579185, 36.127590, 57.280754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.682154, 35.918404, 57.337658>,  <29.853767, 35.569759, 57.432499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682154, 35.918404, 57.337658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736754, -0.185794, 0.650134,
		0.522614, 0.453617, 0.721877,
		-0.429032, 0.871615, -0.237105,
		29.553444, 36.179890, 57.266525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492664, 35.624680, 58.013695>,  <29.853767, 35.569759, 57.432499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492664, 35.624680, 58.013695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.335556, 35.914413, 57.787041>,  <29.241291, 36.088253, 57.651047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.335556, 35.914413, 57.787041>,  <29.492664, 35.624680, 58.013695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335556, 35.914413, 57.787041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824665, -0.004712, 0.565603,
		0.407014, 0.689436, 0.599181,
		-0.392770, 0.724331, -0.566635,
		29.217726, 36.131714, 57.617050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431507, 36.178005, 58.432720>,  <29.492664, 35.624680, 58.013695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431507, 36.178005, 58.432720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.164267, 36.196175, 58.135647>,  <29.003922, 36.207077, 57.957401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.164267, 36.196175, 58.135647>,  <29.431507, 36.178005, 58.432720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164267, 36.196175, 58.135647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737949, -0.168222, 0.653554,
		-0.095249, 0.984702, 0.145909,
		-0.668101, 0.045422, -0.742683,
		28.963837, 36.209801, 57.912842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870489, 36.600861, 58.702202>,  <29.431507, 36.178005, 58.432720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870489, 36.600861, 58.702202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.723995, 36.372330, 58.408413>,  <28.636099, 36.235210, 58.232140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.723995, 36.372330, 58.408413>,  <28.870489, 36.600861, 58.702202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723995, 36.372330, 58.408413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856850, -0.100750, 0.505625,
		-0.362877, 0.814513, -0.452646,
		-0.366235, -0.571330, -0.734475,
		28.614124, 36.200932, 58.188068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243633, 36.753090, 58.810905>,  <28.870489, 36.600861, 58.702202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243633, 36.753090, 58.810905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.233833, 36.416740, 58.594631>,  <28.227953, 36.214931, 58.464867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.233833, 36.416740, 58.594631>,  <28.243633, 36.753090, 58.810905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233833, 36.416740, 58.594631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935840, -0.170913, 0.308207,
		-0.351572, 0.513543, -0.782733,
		-0.024498, -0.840870, -0.540682,
		28.226484, 36.164478, 58.432426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622633, 36.794838, 58.584026>,  <28.243633, 36.753090, 58.810905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622633, 36.794838, 58.584026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.696062, 36.402279, 58.561527>,  <27.740120, 36.166744, 58.548027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.696062, 36.402279, 58.561527>,  <27.622633, 36.794838, 58.584026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696062, 36.402279, 58.561527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976943, -0.188488, 0.100278,
		-0.109013, 0.036538, -0.993369,
		0.183574, -0.981395, -0.056243,
		27.751135, 36.107861, 58.544655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999752, 36.589066, 58.289398>,  <27.622633, 36.794838, 58.584026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999752, 36.589066, 58.289398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.168087, 36.267784, 58.458042>,  <27.269089, 36.075016, 58.559231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.168087, 36.267784, 58.458042>,  <26.999752, 36.589066, 58.289398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168087, 36.267784, 58.458042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900470, -0.313639, 0.301305,
		-0.109775, -0.506451, -0.855252,
		0.420837, -0.803205, 0.421614,
		27.294338, 36.026821, 58.584526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629677, 36.047123, 58.067165>,  <26.999752, 36.589066, 58.289398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629677, 36.047123, 58.067165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.807598, 35.924030, 58.403606>,  <26.914351, 35.850174, 58.605473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.807598, 35.924030, 58.403606>,  <26.629677, 36.047123, 58.067165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807598, 35.924030, 58.403606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890737, -0.053990, 0.451301,
		-0.093465, -0.949943, -0.298116,
		0.444805, -0.307724, 0.841103,
		26.941040, 35.831711, 58.655937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173134, 35.773376, 58.623798>,  <26.629677, 36.047123, 58.067165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173134, 35.773376, 58.623798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.022860, 35.587978, 58.302792>,  <25.932695, 35.476738, 58.110188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.022860, 35.587978, 58.302792>,  <26.173134, 35.773376, 58.623798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022860, 35.587978, 58.302792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656393, 0.478226, -0.583480,
		0.654224, -0.745971, 0.124572,
		-0.375686, -0.463495, -0.802517,
		25.910154, 35.448929, 58.062038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704630, 35.349625, 58.368874>,  <26.173134, 35.773376, 58.623798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704630, 35.349625, 58.368874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.440172, 35.448997, 58.085701>,  <26.281498, 35.508621, 57.915798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.440172, 35.448997, 58.085701>,  <26.704630, 35.349625, 58.368874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440172, 35.448997, 58.085701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726653, 0.446873, -0.521804,
		0.186721, -0.859409, -0.475974,
		-0.661143, 0.248436, -0.707933,
		26.241829, 35.523529, 57.873322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130310, 35.405487, 57.796749>,  <26.704630, 35.349625, 58.368874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130310, 35.405487, 57.796749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.784420, 35.547279, 57.654430>,  <26.576885, 35.632355, 57.569038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.784420, 35.547279, 57.654430>,  <27.130310, 35.405487, 57.796749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784420, 35.547279, 57.654430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450827, 0.235602, -0.860957,
		-0.221369, -0.904894, -0.363542,
		-0.864726, 0.354483, -0.355795,
		26.525002, 35.653625, 57.547691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075575, 35.156319, 57.111782>,  <27.130310, 35.405487, 57.796749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075575, 35.156319, 57.111782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.824669, 35.467155, 57.132427>,  <26.674126, 35.653660, 57.144814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.824669, 35.467155, 57.132427>,  <27.075575, 35.156319, 57.111782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824669, 35.467155, 57.132427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261556, 0.272625, -0.925886,
		-0.733572, -0.567274, -0.374262,
		-0.627264, 0.777094, 0.051616,
		26.636490, 35.700283, 57.147911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550936, 35.061916, 56.555641>,  <27.075575, 35.156319, 57.111782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550936, 35.061916, 56.555641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.550762, 35.453827, 56.635681>,  <26.550657, 35.688972, 56.683704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.550762, 35.453827, 56.635681>,  <26.550936, 35.061916, 56.555641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550762, 35.453827, 56.635681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105596, 0.199025, -0.974289,
		-0.994409, 0.020705, -0.103547,
		-0.000435, 0.979776, 0.200099,
		26.550631, 35.747761, 56.695709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205391, 35.339878, 55.999420>,  <26.550936, 35.061916, 56.555641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205391, 35.339878, 55.999420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.382711, 35.664303, 56.152081>,  <26.489103, 35.858959, 56.243675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.382711, 35.664303, 56.152081>,  <26.205391, 35.339878, 55.999420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382711, 35.664303, 56.152081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252984, 0.295257, -0.921315,
		-0.859931, 0.504974, -0.074298,
		0.443303, 0.811064, 0.381651,
		26.515703, 35.907623, 56.266575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990171, 35.865486, 55.537872>,  <26.205391, 35.339878, 55.999420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990171, 35.865486, 55.537872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.311954, 35.998684, 55.734631>,  <26.505024, 36.078602, 55.852684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.311954, 35.998684, 55.734631>,  <25.990171, 35.865486, 55.537872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311954, 35.998684, 55.734631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360302, 0.384825, -0.849760,
		-0.472258, 0.860828, 0.189598,
		0.804459, 0.332994, 0.491895,
		26.553291, 36.098583, 55.882198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137819, 36.438774, 55.213531>,  <25.990171, 35.865486, 55.537872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137819, 36.438774, 55.213531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.484953, 36.366119, 55.398518>,  <26.693233, 36.322529, 55.509510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.484953, 36.366119, 55.398518>,  <26.137819, 36.438774, 55.213531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484953, 36.366119, 55.398518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495995, 0.262082, -0.827830,
		0.029160, 0.947799, 0.317533,
		0.867836, -0.181634, 0.462461,
		26.745304, 36.311630, 55.537254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420403, 37.069729, 55.190033>,  <26.137819, 36.438774, 55.213531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.420403, 37.069729, 55.190033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.710308, 36.796219, 55.223904>,  <26.884251, 36.632114, 55.244225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.710308, 36.796219, 55.223904>,  <26.420403, 37.069729, 55.190033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710308, 36.796219, 55.223904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423605, 0.345290, -0.837457,
		0.543394, 0.642828, 0.539903,
		0.724763, -0.683775, 0.084676,
		26.927736, 36.591087, 55.249306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093782, 37.470833, 55.074371>,  <26.420403, 37.069729, 55.190033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093782, 37.470833, 55.074371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.160824, 37.080353, 55.019321>,  <27.201048, 36.846066, 54.986290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.160824, 37.080353, 55.019321>,  <27.093782, 37.470833, 55.074371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160824, 37.080353, 55.019321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464328, 0.201311, -0.862481,
		0.869660, 0.080652, 0.487017,
		0.167603, -0.976201, -0.137624,
		27.211105, 36.787491, 54.978035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773588, 37.505070, 54.737709>,  <27.093782, 37.470833, 55.074371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773588, 37.505070, 54.737709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.609959, 37.145737, 54.673645>,  <27.511782, 36.930138, 54.635204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.609959, 37.145737, 54.673645>,  <27.773588, 37.505070, 54.737709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609959, 37.145737, 54.673645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451566, -0.046770, -0.891011,
		0.792936, -0.436813, 0.424790,
		-0.409073, -0.898336, -0.160164,
		27.487236, 36.876236, 54.625595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347467, 37.086018, 54.626312>,  <27.773588, 37.505070, 54.737709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347467, 37.086018, 54.626312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.028723, 36.935200, 54.437489>,  <27.837475, 36.844707, 54.324192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.028723, 36.935200, 54.437489>,  <28.347467, 37.086018, 54.626312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028723, 36.935200, 54.437489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564665, -0.186930, -0.803872,
		0.214855, -0.907134, 0.361864,
		-0.796863, -0.377048, -0.472064,
		27.789663, 36.822086, 54.295868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672863, 36.479130, 54.391987>,  <28.347467, 37.086018, 54.626312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672863, 36.479130, 54.391987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.337305, 36.526508, 54.179489>,  <28.135969, 36.554935, 54.051991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.337305, 36.526508, 54.179489>,  <28.672863, 36.479130, 54.391987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337305, 36.526508, 54.179489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520252, -0.112364, -0.846589,
		-0.159971, -0.986582, 0.032637,
		-0.838896, 0.118450, -0.531246,
		28.085636, 36.562042, 54.020115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713099, 35.910233, 53.981865>,  <28.672863, 36.479130, 54.391987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713099, 35.910233, 53.981865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.479149, 36.193020, 53.822807>,  <28.338779, 36.362690, 53.727371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.479149, 36.193020, 53.822807>,  <28.713099, 35.910233, 53.981865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479149, 36.193020, 53.822807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484635, -0.088532, -0.870225,
		-0.650424, -0.701684, -0.290840,
		-0.584874, 0.706966, -0.397644,
		28.303686, 36.405109, 53.703514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880123, 35.798573, 53.198231>,  <28.713099, 35.910233, 53.981865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880123, 35.798573, 53.198231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.645868, 36.122723, 53.205372>,  <28.505316, 36.317211, 53.209656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.645868, 36.122723, 53.205372>,  <28.880123, 35.798573, 53.198231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645868, 36.122723, 53.205372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340041, 0.265611, -0.902121,
		-0.735799, -0.522246, -0.431113,
		-0.585638, 0.810377, 0.017852,
		28.470177, 36.365837, 53.210728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530087, 35.978317, 52.633430>,  <28.880123, 35.798573, 53.198231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530087, 35.978317, 52.633430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.502626, 36.349869, 52.779018>,  <28.486151, 36.572800, 52.866371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.502626, 36.349869, 52.779018>,  <28.530087, 35.978317, 52.633430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502626, 36.349869, 52.779018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268883, 0.368556, -0.889870,
		-0.960723, 0.036777, -0.275060,
		-0.068648, 0.928878, 0.363969,
		28.482033, 36.628532, 52.888210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045742, 36.417774, 52.219498>,  <28.530087, 35.978317, 52.633430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045742, 36.417774, 52.219498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.279806, 36.668591, 52.425179>,  <28.420244, 36.819080, 52.548588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.279806, 36.668591, 52.425179>,  <28.045742, 36.417774, 52.219498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279806, 36.668591, 52.425179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241989, 0.470186, -0.848744,
		-0.773968, 0.621085, 0.123399,
		0.585163, 0.627040, 0.514204,
		28.455355, 36.856701, 52.579441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976736, 37.061653, 51.918800>,  <28.045742, 36.417774, 52.219498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976736, 37.061653, 51.918800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.323629, 37.064342, 52.117943>,  <28.531765, 37.065956, 52.237427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.323629, 37.064342, 52.117943>,  <27.976736, 37.061653, 51.918800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323629, 37.064342, 52.117943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435890, 0.473005, -0.765680,
		-0.240637, 0.881034, 0.407275,
		0.867233, 0.006724, 0.497856,
		28.583799, 37.066360, 52.267300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208748, 37.794273, 51.921829>,  <27.976736, 37.061653, 51.918800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208748, 37.794273, 51.921829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.520941, 37.557667, 52.002773>,  <28.708258, 37.415703, 52.051338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.520941, 37.557667, 52.002773>,  <28.208748, 37.794273, 51.921829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520941, 37.557667, 52.002773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493366, 0.383973, -0.780484,
		0.383973, 0.708991, 0.591521,
		0.780484, -0.591521, 0.202357,
		28.755085, 37.380211, 52.063480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788450, 38.184841, 51.956635>,  <28.208748, 37.794273, 51.921829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788450, 38.184841, 51.956635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.957682, 37.825882, 51.906551>,  <29.059219, 37.610504, 51.876499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.957682, 37.825882, 51.906551>,  <28.788450, 38.184841, 51.956635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957682, 37.825882, 51.906551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654642, 0.398277, -0.642510,
		0.626458, 0.189863, 0.755978,
		0.423077, -0.897400, -0.125212,
		29.084604, 37.556664, 51.868988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616911, 38.206337, 51.954235>,  <28.788450, 38.184841, 51.956635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616911, 38.206337, 51.954235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.559141, 37.859867, 51.762867>,  <29.524479, 37.651985, 51.648045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.559141, 37.859867, 51.762867>,  <29.616911, 38.206337, 51.954235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559141, 37.859867, 51.762867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732927, 0.231190, -0.639819,
		0.664801, -0.443051, 0.601454,
		-0.144422, -0.866174, -0.478420,
		29.515814, 37.600014, 51.619343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301811, 37.901081, 51.879475>,  <29.616911, 38.206337, 51.954235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301811, 37.901081, 51.879475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.064745, 37.701084, 51.626888>,  <29.922504, 37.581085, 51.475338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.064745, 37.701084, 51.626888>,  <30.301811, 37.901081, 51.879475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064745, 37.701084, 51.626888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713593, 0.037637, -0.699549,
		0.373539, -0.865209, 0.334487,
		-0.592667, -0.499996, -0.631466,
		29.886944, 37.551086, 51.437447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676064, 37.356983, 51.525665>,  <30.301811, 37.901081, 51.879475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676064, 37.356983, 51.525665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.373121, 37.462341, 51.286655>,  <30.191355, 37.525555, 51.143250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.373121, 37.462341, 51.286655>,  <30.676064, 37.356983, 51.525665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373121, 37.462341, 51.286655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631135, 0.060446, -0.773314,
		-0.167568, -0.962793, -0.212016,
		-0.757357, 0.263393, -0.597524,
		30.145914, 37.541359, 51.107399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797342, 36.859566, 50.959568>,  <30.676064, 37.356983, 51.525665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797342, 36.859566, 50.959568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550020, 37.152508, 50.845482>,  <30.401627, 37.328274, 50.777031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550020, 37.152508, 50.845482>,  <30.797342, 36.859566, 50.959568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550020, 37.152508, 50.845482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333471, -0.084148, -0.938997,
		-0.711683, -0.675699, -0.192191,
		-0.618307, 0.732359, -0.285213,
		30.364529, 37.372215, 50.759918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511827, 36.677608, 50.381718>,  <30.797342, 36.859566, 50.959568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511827, 36.677608, 50.381718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.466558, 37.074631, 50.363724>,  <30.439398, 37.312843, 50.352928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.466558, 37.074631, 50.363724>,  <30.511827, 36.677608, 50.381718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466558, 37.074631, 50.363724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328391, -0.005362, -0.944527,
		-0.937738, -0.121664, -0.325340,
		-0.113170, 0.992557, -0.044981,
		30.432608, 37.372398, 50.350231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148775, 36.852161, 49.758160>,  <30.511827, 36.677608, 50.381718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148775, 36.852161, 49.758160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.318335, 37.201672, 49.853512>,  <30.420071, 37.411377, 49.910725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.318335, 37.201672, 49.853512>,  <30.148775, 36.852161, 49.758160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318335, 37.201672, 49.853512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087268, 0.222570, -0.971003,
		-0.901495, 0.432411, 0.018095,
		0.423900, 0.873775, 0.238381,
		30.445505, 37.463802, 49.925026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997889, 37.294437, 49.196991>,  <30.148775, 36.852161, 49.758160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997889, 37.294437, 49.196991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.310091, 37.502964, 49.334995>,  <30.497414, 37.628082, 49.417797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.310091, 37.502964, 49.334995>,  <29.997889, 37.294437, 49.196991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310091, 37.502964, 49.334995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266630, 0.221573, -0.937984,
		-0.565434, 0.824095, 0.033940,
		0.780508, 0.521319, 0.345013,
		30.544243, 37.659359, 49.438499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084080, 37.836876, 48.719059>,  <29.997889, 37.294437, 49.196991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084080, 37.836876, 48.719059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438557, 37.808609, 48.902218>,  <30.651243, 37.791649, 49.012115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438557, 37.808609, 48.902218>,  <30.084080, 37.836876, 48.719059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438557, 37.808609, 48.902218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446521, -0.133471, -0.884762,
		0.123636, 0.988530, -0.086729,
		0.886190, -0.070663, 0.457902,
		30.704414, 37.787411, 49.039589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561052, 38.181793, 48.265274>,  <30.084080, 37.836876, 48.719059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561052, 38.181793, 48.265274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.789633, 37.948208, 48.495903>,  <30.926781, 37.808056, 48.634281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.789633, 37.948208, 48.495903>,  <30.561052, 38.181793, 48.265274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789633, 37.948208, 48.495903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462608, -0.351083, -0.814085,
		0.677819, 0.731935, 0.069519,
		0.571450, -0.583962, 0.576570,
		30.961067, 37.773018, 48.668873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193298, 38.206551, 47.982040>,  <30.561052, 38.181793, 48.265274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193298, 38.206551, 47.982040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.175570, 37.869934, 48.197388>,  <31.164932, 37.667965, 48.326595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.175570, 37.869934, 48.197388>,  <31.193298, 38.206551, 47.982040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175570, 37.869934, 48.197388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379221, -0.512737, -0.770255,
		0.924244, 0.170023, 0.341855,
		-0.044320, -0.841542, 0.538370,
		31.162273, 37.617470, 48.358898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850025, 37.922176, 48.021244>,  <31.193298, 38.206551, 47.982040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850025, 37.922176, 48.021244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.585699, 37.629726, 48.089100>,  <31.427103, 37.454258, 48.129814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.585699, 37.629726, 48.089100>,  <31.850025, 37.922176, 48.021244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585699, 37.629726, 48.089100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443892, -0.562966, -0.697158,
		0.605211, -0.385391, 0.696558,
		-0.660817, -0.731124, 0.169641,
		31.387453, 37.410389, 48.139992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210270, 37.317978, 47.961613>,  <31.850025, 37.922176, 48.021244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210270, 37.317978, 47.961613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.832182, 37.190868, 47.931736>,  <31.605330, 37.114601, 47.913811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.832182, 37.190868, 47.931736>,  <32.210270, 37.317978, 47.961613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832182, 37.190868, 47.931736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250254, -0.558485, -0.790866,
		0.209605, -0.766233, 0.607415,
		-0.945219, -0.317778, -0.074691,
		31.548616, 37.095535, 47.909328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272873, 36.589157, 48.107609>,  <32.210270, 37.317978, 47.961613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272873, 36.589157, 48.107609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.936657, 36.644775, 47.898170>,  <31.734926, 36.678146, 47.772507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.936657, 36.644775, 47.898170>,  <32.272873, 36.589157, 48.107609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936657, 36.644775, 47.898170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295215, -0.692824, -0.657908,
		-0.454241, -0.707573, 0.541300,
		-0.840543, 0.139049, -0.523596,
		31.684494, 36.686489, 47.741093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078865, 35.948830, 48.055565>,  <32.272873, 36.589157, 48.107609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078865, 35.948830, 48.055565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.893751, 36.147781, 47.762051>,  <31.782684, 36.267151, 47.585941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.893751, 36.147781, 47.762051>,  <32.078865, 35.948830, 48.055565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893751, 36.147781, 47.762051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139624, -0.776534, -0.614410,
		-0.875407, -0.386793, 0.289920,
		-0.462782, 0.497379, -0.733789,
		31.754917, 36.296997, 47.541912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675920, 35.453686, 47.759830>,  <32.078865, 35.948830, 48.055565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675920, 35.453686, 47.759830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709888, 35.751907, 47.495426>,  <31.730268, 35.930840, 47.336784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709888, 35.751907, 47.495426>,  <31.675920, 35.453686, 47.759830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709888, 35.751907, 47.495426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194754, -0.663029, -0.722816,
		-0.977169, -0.067354, -0.201503,
		0.084918, 0.745557, -0.661010,
		31.735363, 35.975574, 47.297123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419016, 35.278934, 47.167019>,  <31.675920, 35.453686, 47.759830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419016, 35.278934, 47.167019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646296, 35.579662, 47.033199>,  <31.782663, 35.760098, 46.952908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646296, 35.579662, 47.033199>,  <31.419016, 35.278934, 47.167019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646296, 35.579662, 47.033199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287228, -0.562181, -0.775534,
		-0.771135, 0.344567, -0.535373,
		0.568200, 0.751815, -0.334549,
		31.816755, 35.805206, 46.932835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395338, 35.236679, 46.416130>,  <31.419016, 35.278934, 47.167019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395338, 35.236679, 46.416130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.704174, 35.484283, 46.473694>,  <31.889475, 35.632847, 46.508232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.704174, 35.484283, 46.473694>,  <31.395338, 35.236679, 46.416130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704174, 35.484283, 46.473694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478874, -0.417803, -0.772089,
		-0.417803, 0.665035, -0.619007,
		0.772089, 0.619007, 0.143909,
		31.935801, 35.669987, 46.516865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653152, 35.355904, 45.749180>,  <31.395338, 35.236679, 46.416130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653152, 35.355904, 45.749180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952473, 35.435997, 46.002148>,  <32.132065, 35.484055, 46.153927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952473, 35.435997, 46.002148>,  <31.653152, 35.355904, 45.749180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952473, 35.435997, 46.002148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650085, -0.411123, -0.639036,
		0.132043, 0.889316, -0.437814,
		0.748301, 0.200236, 0.632417,
		32.176964, 35.496067, 46.191872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125244, 35.722832, 45.355759>,  <31.653152, 35.355904, 45.749180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125244, 35.722832, 45.355759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.324963, 35.550690, 45.656555>,  <32.444794, 35.447403, 45.837032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.324963, 35.550690, 45.656555>,  <32.125244, 35.722832, 45.355759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324963, 35.550690, 45.656555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577038, -0.482263, -0.659128,
		0.646318, 0.763031, 0.007539,
		0.499299, -0.430357, 0.751993,
		32.474751, 35.421581, 45.882153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729694, 35.685436, 45.072475>,  <32.125244, 35.722832, 45.355759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729694, 35.685436, 45.072475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.792023, 35.438110, 45.380608>,  <32.829418, 35.289715, 45.565487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.792023, 35.438110, 45.380608>,  <32.729694, 35.685436, 45.072475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792023, 35.438110, 45.380608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669963, -0.506914, -0.542391,
		0.725859, 0.600608, 0.335259,
		0.155817, -0.618311, 0.770333,
		32.838768, 35.252617, 45.611706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472672, 35.646805, 45.236568>,  <32.729694, 35.685436, 45.072475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472672, 35.646805, 45.236568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.324593, 35.297806, 45.364136>,  <33.235744, 35.088406, 45.440678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.324593, 35.297806, 45.364136>,  <33.472672, 35.646805, 45.236568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324593, 35.297806, 45.364136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588113, -0.485871, -0.646570,
		0.719083, -0.051794, 0.692991,
		-0.370193, -0.872495, 0.318921,
		33.213535, 35.036057, 45.459812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057613, 35.296532, 45.460823>,  <33.472672, 35.646805, 45.236568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057613, 35.296532, 45.460823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.783253, 35.023701, 45.359386>,  <33.618637, 34.860001, 45.298523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.783253, 35.023701, 45.359386>,  <34.057613, 35.296532, 45.460823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783253, 35.023701, 45.359386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718233, -0.578525, -0.386588,
		0.116976, -0.447297, 0.886703,
		-0.685899, -0.682081, -0.253590,
		33.577484, 34.819077, 45.283310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376717, 34.620152, 45.507099>,  <34.057613, 35.296532, 45.460823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376717, 34.620152, 45.507099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069103, 34.591080, 45.253071>,  <33.884537, 34.573635, 45.100655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069103, 34.591080, 45.253071>,  <34.376717, 34.620152, 45.507099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069103, 34.591080, 45.253071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594454, -0.446551, -0.668743,
		-0.234986, -0.891801, 0.386616,
		-0.769030, -0.072680, -0.635068,
		33.838394, 34.569275, 45.062550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208065, 33.979626, 45.500633>,  <34.376717, 34.620152, 45.507099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208065, 33.979626, 45.500633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153709, 34.194088, 45.167389>,  <34.121094, 34.322765, 44.967442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153709, 34.194088, 45.167389>,  <34.208065, 33.979626, 45.500633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153709, 34.194088, 45.167389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702167, -0.541112, -0.462774,
		-0.698924, -0.647867, -0.302941,
		-0.135891, 0.536159, -0.833107,
		34.112942, 34.354935, 44.917458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136539, 33.468006, 45.000401>,  <34.208065, 33.979626, 45.500633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136539, 33.468006, 45.000401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.272583, 33.818367, 44.863510>,  <34.354210, 34.028584, 44.781376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.272583, 33.818367, 44.863510>,  <34.136539, 33.468006, 45.000401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272583, 33.818367, 44.863510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827039, -0.451819, -0.334464,
		-0.447582, -0.169278, -0.878075,
		0.340113, 0.875902, -0.342226,
		34.374619, 34.081139, 44.760841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897903, 32.877834, 44.823135>,  <34.136539, 33.468006, 45.000401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897903, 32.877834, 44.823135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.798264, 32.581661, 45.072842>,  <33.738480, 32.403957, 45.222664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.798264, 32.581661, 45.072842>,  <33.897903, 32.877834, 44.823135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798264, 32.581661, 45.072842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006540, 0.643281, 0.765602,
		-0.968456, 0.194793, -0.155398,
		-0.249098, -0.740436, 0.624264,
		33.723534, 32.359531, 45.260120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631878, 32.913982, 44.824650>,  <33.897903, 32.877834, 44.823135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631878, 32.913982, 44.824650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597645, 33.224403, 45.074585>,  <34.577106, 33.410656, 45.224545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597645, 33.224403, 45.074585>,  <34.631878, 32.913982, 44.824650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597645, 33.224403, 45.074585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992225, 0.009509, 0.124089,
		0.090358, 0.630597, -0.770833,
		-0.085580, 0.776052, 0.624835,
		34.571972, 33.457218, 45.262035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113468, 33.485867, 44.695793>,  <34.631878, 32.913982, 44.824650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113468, 33.485867, 44.695793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.013580, 33.506516, 45.082569>,  <34.953648, 33.518906, 45.314636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.013580, 33.506516, 45.082569>,  <35.113468, 33.485867, 44.695793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013580, 33.506516, 45.082569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945495, 0.228528, 0.231979,
		-0.208998, 0.972168, -0.105875,
		-0.249718, 0.051622, 0.966942,
		34.938663, 33.522003, 45.372650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346127, 34.110554, 45.050209>,  <35.113468, 33.485867, 44.695793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346127, 34.110554, 45.050209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.316364, 33.843506, 45.346519>,  <35.298508, 33.683277, 45.524303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.316364, 33.843506, 45.346519>,  <35.346127, 34.110554, 45.050209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316364, 33.843506, 45.346519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928359, 0.224887, 0.295932,
		-0.364161, 0.709722, 0.603060,
		-0.074410, -0.667623, 0.740772,
		35.294041, 33.643219, 45.568752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673756, 34.412952, 45.587566>,  <35.346127, 34.110554, 45.050209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673756, 34.412952, 45.587566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685982, 34.038979, 45.728966>,  <35.693317, 33.814594, 45.813805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685982, 34.038979, 45.728966>,  <35.673756, 34.412952, 45.587566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685982, 34.038979, 45.728966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791349, 0.238684, 0.562847,
		-0.610600, 0.262535, 0.747157,
		0.030567, -0.934936, 0.353497,
		35.695152, 33.758499, 45.835014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791950, 34.474106, 46.317142>,  <35.673756, 34.412952, 45.587566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791950, 34.474106, 46.317142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.910126, 34.115757, 46.184402>,  <35.981030, 33.900749, 46.104759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.910126, 34.115757, 46.184402>,  <35.791950, 34.474106, 46.317142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910126, 34.115757, 46.184402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891802, 0.134027, 0.432119,
		-0.342646, -0.423612, 0.838538,
		0.295438, -0.895873, -0.331854,
		35.998756, 33.846996, 46.084846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112133, 34.191715, 46.829777>,  <35.791950, 34.474106, 46.317142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112133, 34.191715, 46.829777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.249832, 33.970898, 46.526001>,  <36.332451, 33.838406, 46.343735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.249832, 33.970898, 46.526001>,  <36.112133, 34.191715, 46.829777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249832, 33.970898, 46.526001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928451, 0.079940, 0.362752,
		-0.139545, -0.829974, 0.540065,
		0.344247, -0.552044, -0.759435,
		36.353107, 33.805286, 46.298172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610027, 33.790607, 47.136196>,  <36.112133, 34.191715, 46.829777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610027, 33.790607, 47.136196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707386, 33.757996, 46.749599>,  <36.765800, 33.738430, 46.517639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707386, 33.757996, 46.749599>,  <36.610027, 33.790607, 47.136196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707386, 33.757996, 46.749599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958965, 0.169622, 0.227190,
		0.145416, -0.982131, 0.119469,
		0.243395, -0.081529, -0.966495,
		36.780403, 33.733536, 46.459652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147514, 33.387791, 47.193253>,  <36.610027, 33.790607, 47.136196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147514, 33.387791, 47.193253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184719, 33.553143, 46.830933>,  <37.207043, 33.652355, 46.613541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184719, 33.553143, 46.830933>,  <37.147514, 33.387791, 47.193253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184719, 33.553143, 46.830933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994947, -0.004021, 0.100328,
		0.037831, -0.910550, -0.411664,
		0.093009, 0.413379, -0.905797,
		37.212624, 33.677155, 46.559193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671978, 33.070148, 46.805897>,  <37.147514, 33.387791, 47.193253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671978, 33.070148, 46.805897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650654, 33.421295, 46.615524>,  <37.637859, 33.631985, 46.501301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650654, 33.421295, 46.615524>,  <37.671978, 33.070148, 46.805897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650654, 33.421295, 46.615524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967962, 0.162544, 0.191387,
		0.245372, -0.450479, -0.858406,
		-0.053313, 0.877866, -0.475930,
		37.634659, 33.684654, 46.472744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250534, 33.079468, 46.496033>,  <37.671978, 33.070148, 46.805897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250534, 33.079468, 46.496033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171658, 33.470905, 46.472473>,  <38.124332, 33.705769, 46.458340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171658, 33.470905, 46.472473>,  <38.250534, 33.079468, 46.496033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171658, 33.470905, 46.472473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955837, 0.205260, 0.210341,
		0.217928, -0.014819, -0.975852,
		-0.197187, 0.978595, -0.058896,
		38.112503, 33.764484, 46.454803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850716, 33.396641, 46.199539>,  <38.250534, 33.079468, 46.496033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850716, 33.396641, 46.199539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.657898, 33.698509, 46.377571>,  <38.542206, 33.879631, 46.484390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.657898, 33.698509, 46.377571>,  <38.850716, 33.396641, 46.199539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657898, 33.698509, 46.377571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855807, 0.296743, 0.423720,
		0.187695, 0.585158, -0.788898,
		-0.482043, 0.754675, 0.445085,
		38.513287, 33.924911, 46.511097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021702, 33.968819, 45.816830>,  <38.850716, 33.396641, 46.199539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021702, 33.968819, 45.816830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913876, 34.059097, 46.191296>,  <38.849182, 34.113262, 46.415974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913876, 34.059097, 46.191296>,  <39.021702, 33.968819, 45.816830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913876, 34.059097, 46.191296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913249, 0.368293, 0.174176,
		-0.305472, 0.901899, -0.305392,
		-0.269563, 0.225693, 0.936162,
		38.833008, 34.126804, 46.472145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225521, 34.675282, 45.884686>,  <39.021702, 33.968819, 45.816830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225521, 34.675282, 45.884686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.241421, 34.486313, 46.236874>,  <39.250961, 34.372932, 46.448189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.241421, 34.486313, 46.236874>,  <39.225521, 34.675282, 45.884686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241421, 34.486313, 46.236874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842913, 0.489048, 0.224345,
		-0.536580, 0.733244, 0.417654,
		0.039753, -0.472425, 0.880474,
		39.253345, 34.344585, 46.501015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782970, 35.148922, 45.853058>,  <39.225521, 34.675282, 45.884686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782970, 35.148922, 45.853058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658306, 35.497150, 45.700760>,  <39.583508, 35.706089, 45.609383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658306, 35.497150, 45.700760>,  <39.782970, 35.148922, 45.853058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658306, 35.497150, 45.700760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827174, 0.051392, -0.559592,
		-0.467600, -0.489343, -0.736134,
		-0.311664, 0.870576, -0.380741,
		39.564808, 35.758324, 45.586536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728451, 35.116699, 45.119450>,  <39.782970, 35.148922, 45.853058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728451, 35.116699, 45.119450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835339, 35.479553, 45.249500>,  <39.899471, 35.697266, 45.327530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835339, 35.479553, 45.249500>,  <39.728451, 35.116699, 45.119450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835339, 35.479553, 45.249500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760266, 0.008858, -0.649552,
		-0.592108, 0.420756, -0.687294,
		0.267215, 0.907131, 0.325131,
		39.915504, 35.751694, 45.347038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827450, 35.629749, 44.568283>,  <39.728451, 35.116699, 45.119450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827450, 35.629749, 44.568283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.060902, 35.698418, 44.885750>,  <40.200974, 35.739620, 45.076229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.060902, 35.698418, 44.885750>,  <39.827450, 35.629749, 44.568283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060902, 35.698418, 44.885750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777045, 0.165684, -0.607247,
		-0.235747, 0.971121, -0.036702,
		0.583630, 0.171675, 0.793665,
		40.235992, 35.749920, 45.123848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284554, 36.024956, 44.270302>,  <39.827450, 35.629749, 44.568283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284554, 36.024956, 44.270302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.461155, 35.950985, 44.621502>,  <40.567116, 35.906601, 44.832222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.461155, 35.950985, 44.621502>,  <40.284554, 36.024956, 44.270302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461155, 35.950985, 44.621502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882476, 0.266398, -0.387644,
		-0.162208, 0.945956, 0.280813,
		0.441502, -0.184931, 0.877996,
		40.593605, 35.895504, 44.884899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778343, 36.639187, 44.413357>,  <40.284554, 36.024956, 44.270302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778343, 36.639187, 44.413357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.856468, 36.282207, 44.576027>,  <40.903343, 36.068020, 44.673630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.856468, 36.282207, 44.576027>,  <40.778343, 36.639187, 44.413357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856468, 36.282207, 44.576027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909913, 0.010177, -0.414674,
		0.365937, 0.451030, 0.814041,
		0.195315, -0.892451, 0.406674,
		40.915062, 36.014473, 44.698029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430321, 36.586967, 44.880440>,  <40.778343, 36.639187, 44.413357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430321, 36.586967, 44.880440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.369400, 36.265125, 44.650864>,  <41.332848, 36.072021, 44.513119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.369400, 36.265125, 44.650864>,  <41.430321, 36.586967, 44.880440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369400, 36.265125, 44.650864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891779, 0.138466, -0.430764,
		0.426067, -0.577438, 0.696442,
		-0.152307, -0.804607, -0.573943,
		41.323708, 36.023743, 44.478680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021042, 36.247486, 44.845016>,  <41.430321, 36.586967, 44.880440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021042, 36.247486, 44.845016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.824741, 36.126240, 44.518269>,  <41.706959, 36.053493, 44.322220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.824741, 36.126240, 44.518269>,  <42.021042, 36.247486, 44.845016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824741, 36.126240, 44.518269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849637, 0.041267, -0.525751,
		0.193073, -0.952060, 0.237286,
		-0.490754, -0.303115, -0.816873,
		41.677517, 36.035305, 44.273205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360622, 35.729874, 44.498459>,  <42.021042, 36.247486, 44.845016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360622, 35.729874, 44.498459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.148907, 35.940536, 44.232380>,  <42.021877, 36.066933, 44.072735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.148907, 35.940536, 44.232380>,  <42.360622, 35.729874, 44.498459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148907, 35.940536, 44.232380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791037, 0.022835, -0.611343,
		-0.306778, -0.849771, -0.428691,
		-0.529290, 0.526657, -0.665195,
		41.990120, 36.098534, 44.032822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083935, 35.347466, 43.874279>,  <42.360622, 35.729874, 44.498459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083935, 35.347466, 43.874279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.153461, 35.737888, 43.821964>,  <42.195179, 35.972141, 43.790577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.153461, 35.737888, 43.821964>,  <42.083935, 35.347466, 43.874279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153461, 35.737888, 43.821964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685724, -0.215280, -0.695296,
		-0.706802, 0.031172, -0.706724,
		0.173817, 0.976055, -0.130785,
		42.205608, 36.030704, 43.782730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938129, 35.499771, 43.180248>,  <42.083935, 35.347466, 43.874279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938129, 35.499771, 43.180248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.232239, 35.735588, 43.313999>,  <42.408707, 35.877079, 43.394249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.232239, 35.735588, 43.313999>,  <41.938129, 35.499771, 43.180248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232239, 35.735588, 43.313999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584268, -0.301287, -0.753563,
		-0.343512, 0.749444, -0.565980,
		0.735275, 0.589542, 0.334380,
		42.452820, 35.912449, 43.414314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027428, 36.026691, 42.737667>,  <41.938129, 35.499771, 43.180248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027428, 36.026691, 42.737667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.381969, 35.985256, 42.918179>,  <42.594692, 35.960396, 43.026485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.381969, 35.985256, 42.918179>,  <42.027428, 36.026691, 42.737667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381969, 35.985256, 42.918179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420821, -0.226262, -0.878473,
		0.193104, 0.968543, -0.156957,
		0.886352, -0.103585, 0.451275,
		42.647877, 35.954182, 43.053562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654621, 36.502991, 42.469082>,  <42.027428, 36.026691, 42.737667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654621, 36.502991, 42.469082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.769321, 36.152710, 42.624477>,  <42.838142, 35.942543, 42.717716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.769321, 36.152710, 42.624477>,  <42.654621, 36.502991, 42.469082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769321, 36.152710, 42.624477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559661, -0.176001, -0.809817,
		0.777531, 0.449637, 0.439627,
		0.286749, -0.875700, 0.388490,
		42.855347, 35.889999, 42.741024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348648, 36.340126, 42.421432>,  <42.654621, 36.502991, 42.469082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348648, 36.340126, 42.421432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.174004, 35.980534, 42.407516>,  <43.069218, 35.764778, 42.399166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.174004, 35.980534, 42.407516>,  <43.348648, 36.340126, 42.421432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174004, 35.980534, 42.407516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376388, -0.147405, -0.914661,
		0.817131, -0.412446, 0.402723,
		-0.436611, -0.898978, -0.034790,
		43.043022, 35.710842, 42.397079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848236, 35.966309, 42.038818>,  <43.348648, 36.340126, 42.421432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848236, 35.966309, 42.038818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.501301, 35.767281, 42.043781>,  <43.293140, 35.647865, 42.046757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.501301, 35.767281, 42.043781>,  <43.848236, 35.966309, 42.038818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501301, 35.767281, 42.043781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097035, -0.193485, -0.976293,
		0.488175, -0.845569, 0.216098,
		-0.867334, -0.497571, 0.012405,
		43.241100, 35.618008, 42.047504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846600, 35.172424, 41.713703>,  <43.848236, 35.966309, 42.038818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846600, 35.172424, 41.713703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.529545, 35.403831, 41.636723>,  <43.339310, 35.542675, 41.590534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.529545, 35.403831, 41.636723>,  <43.846600, 35.172424, 41.713703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529545, 35.403831, 41.636723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015511, -0.296419, -0.954932,
		-0.609493, -0.759902, 0.225981,
		-0.792640, 0.578519, -0.192452,
		43.291752, 35.577389, 41.578987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821728, 34.858540, 41.044079>,  <43.846600, 35.172424, 41.713703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821728, 34.858540, 41.044079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.543392, 35.144100, 41.075432>,  <43.376389, 35.315437, 41.094246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.543392, 35.144100, 41.075432>,  <43.821728, 34.858540, 41.044079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543392, 35.144100, 41.075432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091964, 0.019675, -0.995568,
		-0.712283, -0.699966, 0.051963,
		-0.695842, 0.713905, 0.078386,
		43.334641, 35.358273, 41.098949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293369, 34.617092, 40.642845>,  <43.821728, 34.858540, 41.044079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293369, 34.617092, 40.642845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.270626, 35.014400, 40.683205>,  <43.256981, 35.252785, 40.707420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.270626, 35.014400, 40.683205>,  <43.293369, 34.617092, 40.642845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270626, 35.014400, 40.683205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066453, 0.097071, -0.993056,
		-0.996168, -0.063173, 0.060486,
		-0.056863, 0.993271, 0.100897,
		43.253567, 35.312382, 40.713474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594875, 34.993801, 40.553646>,  <43.293369, 34.617092, 40.642845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594875, 34.993801, 40.553646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.938030, 35.166931, 40.442879>,  <43.143925, 35.270809, 40.376419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.938030, 35.166931, 40.442879>,  <42.594875, 34.993801, 40.553646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938030, 35.166931, 40.442879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216304, -0.184650, -0.958706,
		-0.466088, 0.882363, -0.064787,
		0.857890, 0.432828, -0.276921,
		43.195396, 35.296780, 40.359802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531361, 35.599964, 40.067795>,  <42.594875, 34.993801, 40.553646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531361, 35.599964, 40.067795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.885460, 35.417645, 40.030750>,  <43.097919, 35.308254, 40.008522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.885460, 35.417645, 40.030750>,  <42.531361, 35.599964, 40.067795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885460, 35.417645, 40.030750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162495, -0.116511, -0.979806,
		0.435804, 0.882424, -0.177206,
		0.885252, -0.455798, -0.092614,
		43.151035, 35.280907, 40.002968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811092, 35.889931, 39.466019>,  <42.531361, 35.599964, 40.067795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811092, 35.889931, 39.466019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.919289, 35.511711, 39.538433>,  <42.984207, 35.284779, 39.581882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.919289, 35.511711, 39.538433>,  <42.811092, 35.889931, 39.466019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919289, 35.511711, 39.538433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209891, -0.241447, -0.947444,
		0.939564, 0.218278, -0.263771,
		0.270493, -0.945547, 0.181040,
		43.000435, 35.228046, 39.592747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014168, 35.755062, 38.796131>,  <42.811092, 35.889931, 39.466019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014168, 35.755062, 38.796131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.940361, 35.410507, 38.985432>,  <42.896076, 35.203773, 39.099010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.940361, 35.410507, 38.985432>,  <43.014168, 35.755062, 38.796131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940361, 35.410507, 38.985432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171188, -0.445989, -0.878515,
		0.967805, -0.243118, -0.065165,
		-0.184520, -0.861387, 0.473249,
		42.885006, 35.152092, 39.127407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557480, 35.208656, 38.585045>,  <43.014168, 35.755062, 38.796131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557480, 35.208656, 38.585045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.235657, 35.020531, 38.730087>,  <43.042561, 34.907654, 38.817112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.235657, 35.020531, 38.730087>,  <43.557480, 35.208656, 38.585045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235657, 35.020531, 38.730087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001449, -0.612137, -0.790750,
		0.593867, -0.635682, 0.493184,
		-0.804562, -0.470315, 0.362607,
		42.994289, 34.879436, 38.838871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663956, 34.501602, 38.613956>,  <43.557480, 35.208656, 38.585045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663956, 34.501602, 38.613956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.271217, 34.568626, 38.578407>,  <43.035572, 34.608841, 38.557079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.271217, 34.568626, 38.578407>,  <43.663956, 34.501602, 38.613956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271217, 34.568626, 38.578407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046851, -0.668317, -0.742400,
		-0.183790, -0.724760, 0.664036,
		-0.981848, 0.167556, -0.088874,
		42.976662, 34.618893, 38.551746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392006, 33.885021, 38.441059>,  <43.663956, 34.501602, 38.613956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392006, 33.885021, 38.441059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.090534, 34.122944, 38.329220>,  <42.909653, 34.265697, 38.262115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.090534, 34.122944, 38.329220>,  <43.392006, 33.885021, 38.441059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090534, 34.122944, 38.329220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211511, -0.622281, -0.753677,
		-0.622281, -0.508892, 0.594807,
		0.753677, -0.594807, 0.279597,
		42.864429, 34.301388, 38.245342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052460, 33.427303, 37.986641>,  <43.392006, 33.885021, 38.441059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052460, 33.427303, 37.986641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.884911, 33.782627, 37.911331>,  <42.784382, 33.995823, 37.866146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.884911, 33.782627, 37.911331>,  <43.052460, 33.427303, 37.986641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884911, 33.782627, 37.911331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108883, -0.254979, -0.960797,
		-0.901492, -0.381956, 0.203526,
		-0.418877, 0.888311, -0.188273,
		42.759247, 34.049122, 37.854851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534256, 33.298737, 37.614124>,  <43.052460, 33.427303, 37.986641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534256, 33.298737, 37.614124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.637680, 33.674702, 37.524933>,  <42.699734, 33.900280, 37.471416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.637680, 33.674702, 37.524933>,  <42.534256, 33.298737, 37.614124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637680, 33.674702, 37.524933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253396, -0.288740, -0.923266,
		-0.932169, 0.182213, -0.312824,
		0.258556, 0.939908, -0.222983,
		42.715248, 33.956673, 37.458038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098927, 33.416706, 36.980045>,  <42.534256, 33.298737, 37.614124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098927, 33.416706, 36.980045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.446159, 33.615158, 36.986855>,  <42.654499, 33.734230, 36.990940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.446159, 33.615158, 36.986855>,  <42.098927, 33.416706, 36.980045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446159, 33.615158, 36.986855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291698, -0.482034, -0.826169,
		-0.401680, 0.722148, -0.563165,
		0.868081, 0.496130, 0.017026,
		42.706585, 33.763996, 36.991962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230133, 33.875763, 36.309223>,  <42.098927, 33.416706, 36.980045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230133, 33.875763, 36.309223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.540703, 33.711990, 36.500858>,  <42.727047, 33.613728, 36.615837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.540703, 33.711990, 36.500858>,  <42.230133, 33.875763, 36.309223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540703, 33.711990, 36.500858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205037, -0.554727, -0.806373,
		0.595919, 0.724321, -0.346756,
		0.776428, -0.409436, 0.479085,
		42.773632, 33.589161, 36.644585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985264, 33.950603, 36.105003>,  <42.230133, 33.875763, 36.309223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985264, 33.950603, 36.105003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.925480, 33.590374, 36.268288>,  <42.889610, 33.374237, 36.366257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.925480, 33.590374, 36.268288>,  <42.985264, 33.950603, 36.105003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925480, 33.590374, 36.268288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075434, -0.422029, -0.903439,
		0.985886, -0.104235, 0.131010,
		-0.149460, -0.900570, 0.408209,
		42.880642, 33.320202, 36.390751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463428, 33.219849, 35.986897>,  <42.985264, 33.950603, 36.105003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463428, 33.219849, 35.986897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.063568, 33.216728, 35.996948>,  <42.823650, 33.214855, 36.002979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.063568, 33.216728, 35.996948>,  <43.463428, 33.219849, 35.986897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063568, 33.216728, 35.996948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022910, -0.211759, -0.977053,
		0.012941, -0.977291, 0.211507,
		-0.999654, -0.007798, 0.025130,
		42.763672, 33.214390, 36.004486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041763, 33.624985, 35.779274>,  <43.463428, 33.219849, 35.986897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041763, 33.624985, 35.779274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.908062, 33.971157, 35.928566>,  <43.827843, 34.178860, 36.018143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.908062, 33.971157, 35.928566>,  <44.041763, 33.624985, 35.779274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908062, 33.971157, 35.928566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889974, 0.420163, -0.177225,
		-0.310194, 0.272930, -0.910653,
		-0.334253, 0.865432, 0.373233,
		43.807785, 34.230785, 36.040535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203415, 34.092945, 35.283981>,  <44.041763, 33.624985, 35.779274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203415, 34.092945, 35.283981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.198742, 34.260445, 35.647194>,  <44.195938, 34.360943, 35.865120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.198742, 34.260445, 35.647194>,  <44.203415, 34.092945, 35.283981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198742, 34.260445, 35.647194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946036, 0.298733, -0.125597,
		-0.323851, 0.857560, -0.399639,
		-0.011679, 0.418747, 0.908028,
		44.195240, 34.386070, 35.919601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297596, 34.786831, 35.315468>,  <44.203415, 34.092945, 35.283981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297596, 34.786831, 35.315468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.448395, 34.624706, 35.648598>,  <44.538872, 34.527431, 35.848476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.448395, 34.624706, 35.648598>,  <44.297596, 34.786831, 35.315468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448395, 34.624706, 35.648598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914859, 0.022569, -0.403142,
		0.144600, 0.913901, 0.379309,
		0.376992, -0.405308, 0.832828,
		44.561493, 34.503113, 35.898445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962879, 35.146961, 35.496307>,  <44.297596, 34.786831, 35.315468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962879, 35.146961, 35.496307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.954346, 34.760441, 35.598923>,  <44.949226, 34.528530, 35.660492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.954346, 34.760441, 35.598923>,  <44.962879, 35.146961, 35.496307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954346, 34.760441, 35.598923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995780, -0.043448, -0.080835,
		0.089256, 0.253733, 0.963147,
		-0.021336, -0.966298, 0.256541,
		44.947945, 34.470551, 35.675884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447376, 35.077061, 36.043488>,  <44.962879, 35.146961, 35.496307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447376, 35.077061, 36.043488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.401730, 34.756676, 35.808395>,  <45.374340, 34.564445, 35.667339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.401730, 34.756676, 35.808395>,  <45.447376, 35.077061, 36.043488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401730, 34.756676, 35.808395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908227, 0.155643, -0.388456,
		0.402616, -0.578127, 0.709697,
		-0.114118, -0.800965, -0.587735,
		45.367493, 34.516388, 35.632076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.935017, 34.662674, 36.271770>,  <45.447376, 35.077061, 36.043488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.935017, 34.662674, 36.271770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.857410, 34.552483, 35.895161>,  <45.810844, 34.486370, 35.669193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.857410, 34.552483, 35.895161>,  <45.935017, 34.662674, 36.271770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857410, 34.552483, 35.895161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953278, 0.173599, -0.247233,
		0.231555, -0.945503, 0.228924,
		-0.194019, -0.275477, -0.941525,
		45.799206, 34.469841, 35.612701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.525497, 34.318737, 36.184811>,  <45.935017, 34.662674, 36.271770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.525497, 34.318737, 36.184811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.365116, 34.425735, 35.834339>,  <46.268887, 34.489933, 35.624058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.365116, 34.425735, 35.834339>,  <46.525497, 34.318737, 36.184811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.365116, 34.425735, 35.834339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914474, 0.059897, -0.400187,
		-0.054567, -0.961696, -0.268631,
		-0.400949, 0.267493, -0.876178,
		46.244831, 34.505981, 35.571487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.970726, 33.953899, 35.668507>,  <46.525497, 34.318737, 36.184811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.970726, 33.953899, 35.668507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.769642, 34.276382, 35.543724>,  <46.648991, 34.469872, 35.468853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.769642, 34.276382, 35.543724>,  <46.970726, 33.953899, 35.668507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.769642, 34.276382, 35.543724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845547, 0.383516, -0.371437,
		-0.179814, -0.450498, -0.874482,
		-0.502710, 0.806205, -0.311956,
		46.618828, 34.518246, 35.450138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.960743, 34.136597, 34.872955>,  <46.970726, 33.953899, 35.668507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.960743, 34.136597, 34.872955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.977226, 34.424675, 35.149971>,  <46.987118, 34.597523, 35.316181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.977226, 34.424675, 35.149971>,  <46.960743, 34.136597, 34.872955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.977226, 34.424675, 35.149971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850804, 0.338122, -0.402251,
		-0.523865, 0.605794, -0.598815,
		0.041208, 0.720199, 0.692542,
		46.989590, 34.640736, 35.357735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.197620, 34.676796, 34.516468>,  <46.960743, 34.136597, 34.872955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.197620, 34.676796, 34.516468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.325249, 34.796593, 34.876133>,  <47.401825, 34.868469, 35.091934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.325249, 34.796593, 34.876133>,  <47.197620, 34.676796, 34.516468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.325249, 34.796593, 34.876133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874175, 0.273471, -0.401287,
		-0.366078, 0.914067, -0.174553,
		0.319068, 0.299492, 0.899166,
		47.420971, 34.886440, 35.145882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.514294, 35.378006, 34.405563>,  <47.197620, 34.676796, 34.516468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.514294, 35.378006, 34.405563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.680679, 35.187237, 34.715279>,  <47.780510, 35.072773, 34.901108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.680679, 35.187237, 34.715279>,  <47.514294, 35.378006, 34.405563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.680679, 35.187237, 34.715279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906033, 0.144329, -0.397837,
		0.077987, 0.867013, 0.492146,
		0.415960, -0.476926, 0.774286,
		47.805466, 35.044159, 34.947563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.708138, 30.506424, 53.649982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.953829, 30.792356, 53.783691>,  <31.101244, 30.963917, 53.863918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.953829, 30.792356, 53.783691>,  <30.708138, 30.506424, 53.649982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953829, 30.792356, 53.783691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488390, -0.011627, -0.872548,
		-0.619838, 0.699201, -0.356258,
		0.614228, 0.714831, 0.334276,
		31.138098, 31.006805, 53.883976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908451, 30.849598, 53.050522>,  <30.708138, 30.506424, 53.649982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908451, 30.849598, 53.050522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.184666, 30.992184, 53.302265>,  <31.350393, 31.077736, 53.453312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.184666, 30.992184, 53.302265>,  <30.908451, 30.849598, 53.050522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184666, 30.992184, 53.302265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626138, 0.140994, -0.766858,
		-0.362094, 0.923609, -0.125836,
		0.690535, 0.356465, 0.629360,
		31.391827, 31.099123, 53.491074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174776, 31.509590, 52.818649>,  <30.908451, 30.849598, 53.050522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174776, 31.509590, 52.818649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.453506, 31.348045, 53.055744>,  <31.620745, 31.251120, 53.198002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.453506, 31.348045, 53.055744>,  <31.174776, 31.509590, 52.818649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453506, 31.348045, 53.055744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711066, 0.280769, -0.644635,
		0.093921, 0.870669, 0.482818,
		0.696824, -0.403861, 0.592733,
		31.662554, 31.226887, 53.233562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678051, 31.983944, 52.863083>,  <31.174776, 31.509590, 52.818649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678051, 31.983944, 52.863083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.868050, 31.647263, 52.965775>,  <31.982050, 31.445253, 53.027390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.868050, 31.647263, 52.965775>,  <31.678051, 31.983944, 52.863083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868050, 31.647263, 52.965775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707809, 0.192096, -0.679783,
		0.522860, 0.504611, 0.687012,
		0.474998, -0.841705, 0.256729,
		32.010548, 31.394751, 53.042793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349533, 32.243912, 52.973614>,  <31.678051, 31.983944, 52.863083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349533, 32.243912, 52.973614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.382317, 31.851393, 52.903938>,  <32.401989, 31.615881, 52.862133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.382317, 31.851393, 52.903938>,  <32.349533, 32.243912, 52.973614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382317, 31.851393, 52.903938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605202, 0.187866, -0.773587,
		0.791842, -0.042014, 0.609280,
		0.081961, -0.981296, -0.174187,
		32.406906, 31.557005, 52.851681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108517, 32.134804, 52.882252>,  <32.349533, 32.243912, 52.973614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108517, 32.134804, 52.882252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.931225, 31.806292, 52.738560>,  <32.824848, 31.609184, 52.652344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.931225, 31.806292, 52.738560>,  <33.108517, 32.134804, 52.882252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931225, 31.806292, 52.738560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556025, 0.062452, -0.828816,
		0.703124, -0.567098, 0.428971,
		-0.443230, -0.821279, -0.359232,
		32.798256, 31.559908, 52.630791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610146, 31.679781, 52.638374>,  <33.108517, 32.134804, 52.882252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610146, 31.679781, 52.638374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.298840, 31.537109, 52.431652>,  <33.112057, 31.451508, 52.307617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.298840, 31.537109, 52.431652>,  <33.610146, 31.679781, 52.638374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298840, 31.537109, 52.431652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567403, -0.046879, -0.822105,
		0.268999, -0.933051, 0.238864,
		-0.778263, -0.356677, -0.516805,
		33.065361, 31.430107, 52.276611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865192, 31.186714, 52.218071>,  <33.610146, 31.679781, 52.638374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865192, 31.186714, 52.218071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.513077, 31.272511, 52.048798>,  <33.301807, 31.323988, 51.947235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.513077, 31.272511, 52.048798>,  <33.865192, 31.186714, 52.218071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513077, 31.272511, 52.048798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443808, 0.056996, -0.894308,
		-0.167701, -0.975062, -0.145366,
		-0.880290, 0.214491, -0.423182,
		33.248989, 31.336857, 51.921844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776997, 30.748884, 51.712334>,  <33.865192, 31.186714, 52.218071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776997, 30.748884, 51.712334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.518131, 31.020752, 51.574219>,  <33.362812, 31.183872, 51.491352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.518131, 31.020752, 51.574219>,  <33.776997, 30.748884, 51.712334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518131, 31.020752, 51.574219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456430, -0.017326, -0.889591,
		-0.610612, -0.733312, -0.299010,
		-0.647167, 0.679671, -0.345285,
		33.323982, 31.224653, 51.470634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568512, 30.525291, 51.130199>,  <33.776997, 30.748884, 51.712334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568512, 30.525291, 51.130199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.517727, 30.922026, 51.134918>,  <33.487255, 31.160067, 51.137749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.517727, 30.922026, 51.134918>,  <33.568512, 30.525291, 51.130199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517727, 30.922026, 51.134918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202834, 0.037599, -0.978491,
		-0.970948, -0.121837, -0.205952,
		-0.126960, 0.991838, 0.011794,
		33.479637, 31.219578, 51.138454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014874, 30.802828, 50.665337>,  <33.568512, 30.525291, 51.130199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014874, 30.802828, 50.665337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.214436, 31.146158, 50.713291>,  <33.334171, 31.352156, 50.742065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.214436, 31.146158, 50.713291>,  <33.014874, 30.802828, 50.665337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214436, 31.146158, 50.713291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089285, 0.086693, -0.992226,
		-0.862047, 0.505727, -0.033384,
		0.498901, 0.858327, 0.119888,
		33.364105, 31.403656, 50.749256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696484, 31.388454, 50.299496>,  <33.014874, 30.802828, 50.665337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696484, 31.388454, 50.299496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.059875, 31.545340, 50.357243>,  <33.277908, 31.639471, 50.391891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.059875, 31.545340, 50.357243>,  <32.696484, 31.388454, 50.299496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059875, 31.545340, 50.357243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020176, 0.386172, -0.922206,
		-0.417452, 0.834889, 0.358741,
		0.908475, 0.392214, 0.144364,
		33.332417, 31.663004, 50.400551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716808, 31.936447, 49.803509>,  <32.696484, 31.388454, 50.299496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716808, 31.936447, 49.803509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.101109, 31.946535, 49.914021>,  <33.331688, 31.952589, 49.980328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.101109, 31.946535, 49.914021>,  <32.716808, 31.936447, 49.803509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101109, 31.946535, 49.914021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253867, 0.321686, -0.912178,
		-0.111882, 0.946510, 0.302656,
		0.960746, 0.025222, 0.276279,
		33.389332, 31.954102, 49.996902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001221, 32.609901, 49.588619>,  <32.716808, 31.936447, 49.803509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001221, 32.609901, 49.588619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.334995, 32.398956, 49.652637>,  <33.535259, 32.272388, 49.691048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.334995, 32.398956, 49.652637>,  <33.001221, 32.609901, 49.588619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334995, 32.398956, 49.652637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413064, 0.406212, -0.815089,
		0.364830, 0.746247, 0.556789,
		0.834432, -0.527359, 0.160049,
		33.585323, 32.240749, 49.700653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524490, 33.059517, 49.451939>,  <33.001221, 32.609901, 49.588619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524490, 33.059517, 49.451939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.691643, 32.697338, 49.422157>,  <33.791935, 32.480030, 49.404289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.691643, 32.697338, 49.422157>,  <33.524490, 33.059517, 49.451939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691643, 32.697338, 49.422157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523350, 0.306901, -0.794932,
		0.742615, 0.293226, 0.602114,
		0.417884, -0.905445, -0.074450,
		33.817009, 32.425705, 49.399822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140160, 33.251171, 49.179752>,  <33.524490, 33.059517, 49.451939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140160, 33.251171, 49.179752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.143185, 32.851631, 49.160778>,  <34.145000, 32.611908, 49.149391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.143185, 32.851631, 49.160778>,  <34.140160, 33.251171, 49.179752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143185, 32.851631, 49.160778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544459, 0.043907, -0.837637,
		0.838753, -0.019490, 0.544163,
		0.007567, -0.998846, -0.047438,
		34.145454, 32.551979, 49.146545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875057, 32.964207, 49.125011>,  <34.140160, 33.251171, 49.179752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875057, 32.964207, 49.125011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.594204, 32.721603, 48.975796>,  <34.425694, 32.576042, 48.886269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.594204, 32.721603, 48.975796>,  <34.875057, 32.964207, 49.125011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594204, 32.721603, 48.975796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348521, 0.164117, -0.922821,
		0.620920, -0.777954, 0.096149,
		-0.702133, -0.606509, -0.373037,
		34.383564, 32.539650, 48.863884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260059, 32.497074, 48.693562>,  <34.875057, 32.964207, 49.125011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260059, 32.497074, 48.693562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.881172, 32.514835, 48.566566>,  <34.653839, 32.525490, 48.490368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.881172, 32.514835, 48.566566>,  <35.260059, 32.497074, 48.693562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881172, 32.514835, 48.566566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319306, 0.042425, -0.946701,
		-0.028563, -0.998112, -0.054363,
		-0.947221, 0.044399, -0.317492,
		34.597008, 32.528156, 48.471317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258717, 32.002373, 48.162613>,  <35.260059, 32.497074, 48.693562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258717, 32.002373, 48.162613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.927231, 32.219097, 48.106503>,  <34.728340, 32.349133, 48.072834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.927231, 32.219097, 48.106503>,  <35.258717, 32.002373, 48.162613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927231, 32.219097, 48.106503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183560, 0.026338, -0.982656,
		-0.528721, -0.840086, -0.121282,
		-0.828710, 0.541813, -0.140281,
		34.678619, 32.381641, 48.064419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041862, 31.753771, 47.554127>,  <35.258717, 32.002373, 48.162613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041862, 31.753771, 47.554127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.867210, 32.109314, 47.609680>,  <34.762421, 32.322639, 47.643013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.867210, 32.109314, 47.609680>,  <35.041862, 31.753771, 47.554127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867210, 32.109314, 47.609680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252056, 0.269061, -0.929556,
		-0.863611, -0.370863, -0.341522,
		-0.436628, 0.888857, 0.138885,
		34.736221, 32.375973, 47.651344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583717, 31.864788, 46.998970>,  <35.041862, 31.753771, 47.554127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583717, 31.864788, 46.998970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.658028, 32.234215, 47.133141>,  <34.702614, 32.455872, 47.213642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.658028, 32.234215, 47.133141>,  <34.583717, 31.864788, 46.998970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658028, 32.234215, 47.133141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137610, 0.313550, -0.939548,
		-0.972908, 0.220704, -0.068842,
		0.185777, 0.923567, 0.335426,
		34.713760, 32.511284, 47.233768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115841, 32.325523, 46.696136>,  <34.583717, 31.864788, 46.998970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115841, 32.325523, 46.696136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.441013, 32.536991, 46.793831>,  <34.636116, 32.663872, 46.852448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.441013, 32.536991, 46.793831>,  <34.115841, 32.325523, 46.696136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441013, 32.536991, 46.793831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214064, 0.118762, -0.969573,
		-0.541593, 0.840477, -0.016625,
		0.812929, 0.528673, 0.244236,
		34.684891, 32.695595, 46.867104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772255, 32.679688, 46.128201>,  <34.115841, 32.325523, 46.696136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772255, 32.679688, 46.128201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.437107, 32.869297, 46.019920>,  <33.236019, 32.983063, 45.954952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.437107, 32.869297, 46.019920>,  <33.772255, 32.679688, 46.128201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437107, 32.869297, 46.019920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467030, -0.365762, 0.805047,
		0.282600, 0.800948, 0.527844,
		-0.837866, 0.474025, -0.270702,
		33.185745, 33.011505, 45.938709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468502, 33.027378, 46.652901>,  <33.772255, 32.679688, 46.128201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468502, 33.027378, 46.652901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.134724, 32.990685, 46.435543>,  <32.934456, 32.968670, 46.305126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.134724, 32.990685, 46.435543>,  <33.468502, 33.027378, 46.652901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134724, 32.990685, 46.435543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524966, -0.167648, 0.834449,
		-0.167648, 0.981569, 0.091735,
		-0.834449, -0.091735, -0.543396,
		32.884388, 32.963165, 46.272526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979549, 33.490799, 47.078186>,  <33.468502, 33.027378, 46.652901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979549, 33.490799, 47.078186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.768063, 33.278141, 46.813515>,  <32.641171, 33.150547, 46.654713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.768063, 33.278141, 46.813515>,  <32.979549, 33.490799, 47.078186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768063, 33.278141, 46.813515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544527, -0.385544, 0.744880,
		-0.651115, 0.754131, -0.085651,
		-0.528715, -0.531642, -0.661678,
		32.609447, 33.118649, 46.615013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259045, 33.732914, 47.158318>,  <32.979549, 33.490799, 47.078186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259045, 33.732914, 47.158318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.228096, 33.385422, 46.962635>,  <32.209526, 33.176926, 46.845226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.228096, 33.385422, 46.962635>,  <32.259045, 33.732914, 47.158318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228096, 33.385422, 46.962635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598228, -0.352077, 0.719837,
		-0.797582, 0.348351, -0.492458,
		-0.077373, -0.868731, -0.489204,
		32.204884, 33.124802, 46.815872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620701, 33.568996, 47.140469>,  <32.259045, 33.732914, 47.158318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620701, 33.568996, 47.140469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.795525, 33.214153, 47.081116>,  <31.900419, 33.001247, 47.045502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.795525, 33.214153, 47.081116>,  <31.620701, 33.568996, 47.140469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795525, 33.214153, 47.081116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731300, -0.446535, 0.515565,
		-0.523621, -0.116819, -0.843904,
		0.437060, -0.887108, -0.148385,
		31.926643, 32.948021, 47.036602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989784, 33.166348, 47.070049>,  <31.620701, 33.568996, 47.140469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989784, 33.166348, 47.070049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.312677, 32.940044, 47.137333>,  <31.506413, 32.804260, 47.177704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.312677, 32.940044, 47.137333>,  <30.989784, 33.166348, 47.070049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312677, 32.940044, 47.137333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551684, -0.621914, 0.555759,
		-0.209817, -0.541422, -0.814149,
		0.807231, -0.565761, 0.168206,
		31.554846, 32.770317, 47.187794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830626, 32.348080, 46.996777>,  <30.989784, 33.166348, 47.070049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830626, 32.348080, 46.996777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.152384, 32.413815, 47.225143>,  <31.345438, 32.453255, 47.362164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.152384, 32.413815, 47.225143>,  <30.830626, 32.348080, 46.996777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152384, 32.413815, 47.225143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421703, -0.518957, 0.743539,
		0.418469, -0.838855, -0.348147,
		0.804395, 0.164334, 0.570915,
		31.393702, 32.463116, 47.396420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102011, 31.701117, 47.295769>,  <30.830626, 32.348080, 46.996777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102011, 31.701117, 47.295769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.261095, 31.977089, 47.537701>,  <31.356544, 32.142673, 47.682861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.261095, 31.977089, 47.537701>,  <31.102011, 31.701117, 47.295769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261095, 31.977089, 47.537701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426026, -0.444973, 0.787718,
		0.812607, -0.570956, 0.116960,
		0.397708, 0.689933, 0.604831,
		31.380407, 32.184071, 47.719151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308678, 31.330593, 47.854130>,  <31.102011, 31.701117, 47.295769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308678, 31.330593, 47.854130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.311779, 31.708918, 47.983978>,  <31.313639, 31.935913, 48.061890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.311779, 31.708918, 47.983978>,  <31.308678, 31.330593, 47.854130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311779, 31.708918, 47.983978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159568, -0.319303, 0.934122,
		0.987157, -0.059041, 0.148446,
		0.007752, 0.945812, 0.324623,
		31.314104, 31.992661, 48.081364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587711, 31.269524, 48.469471>,  <31.308678, 31.330593, 47.854130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587711, 31.269524, 48.469471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.382032, 31.611801, 48.492748>,  <31.258625, 31.817167, 48.506714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.382032, 31.611801, 48.492748>,  <31.587711, 31.269524, 48.469471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382032, 31.611801, 48.492748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158237, -0.161333, 0.974132,
		0.842948, 0.491688, 0.218360,
		-0.514197, 0.855695, 0.058192,
		31.227774, 31.868509, 48.510204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793713, 31.437103, 49.105377>,  <31.587711, 31.269524, 48.469471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793713, 31.437103, 49.105377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.465652, 31.658510, 49.047451>,  <31.268816, 31.791355, 49.012695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.465652, 31.658510, 49.047451>,  <31.793713, 31.437103, 49.105377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465652, 31.658510, 49.047451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200146, -0.040442, 0.978931,
		0.535999, 0.831855, 0.143953,
		-0.820150, 0.553518, -0.144816,
		31.219608, 31.824566, 49.004005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655449, 31.905754, 49.726738>,  <31.793713, 31.437103, 49.105377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655449, 31.905754, 49.726738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.304598, 31.872868, 49.537468>,  <31.094088, 31.853136, 49.423908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.304598, 31.872868, 49.537468>,  <31.655449, 31.905754, 49.726738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304598, 31.872868, 49.537468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447879, -0.215617, 0.867706,
		-0.173362, 0.973011, 0.152301,
		-0.877126, -0.082215, -0.473171,
		31.041460, 31.848204, 49.395515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137749, 32.307587, 50.225136>,  <31.655449, 31.905754, 49.726738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137749, 32.307587, 50.225136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.923412, 32.056606, 49.999153>,  <30.794809, 31.906017, 49.863564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.923412, 32.056606, 49.999153>,  <31.137749, 32.307587, 50.225136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923412, 32.056606, 49.999153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684097, -0.069530, 0.726069,
		-0.494857, 0.775543, -0.391982,
		-0.535843, -0.627454, -0.564954,
		30.762659, 31.868370, 49.829666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531933, 32.529400, 50.241066>,  <31.137749, 32.307587, 50.225136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531933, 32.529400, 50.241066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.476135, 32.155254, 50.111061>,  <30.442657, 31.930767, 50.033058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.476135, 32.155254, 50.111061>,  <30.531933, 32.529400, 50.241066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476135, 32.155254, 50.111061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736280, -0.121504, 0.665679,
		-0.662143, 0.332159, -0.671741,
		-0.139493, -0.935365, -0.325015,
		30.434288, 31.874645, 50.013557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817432, 32.444328, 50.217510>,  <30.531933, 32.529400, 50.241066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817432, 32.444328, 50.217510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.968895, 32.074127, 50.214119>,  <30.059772, 31.852007, 50.212086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.968895, 32.074127, 50.214119>,  <29.817432, 32.444328, 50.217510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968895, 32.074127, 50.214119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597577, -0.251465, 0.761358,
		-0.706768, -0.283227, -0.648276,
		0.378656, -0.925499, -0.008478,
		30.082491, 31.796478, 50.211575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232403, 31.967825, 50.387463>,  <29.817432, 32.444328, 50.217510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232403, 31.967825, 50.387463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.580307, 31.783707, 50.458618>,  <29.789049, 31.673235, 50.501312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.580307, 31.783707, 50.458618>,  <29.232403, 31.967825, 50.387463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580307, 31.783707, 50.458618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350646, -0.322831, 0.879106,
		-0.347221, -0.826988, -0.442186,
		0.869762, -0.460295, 0.177887,
		29.841234, 31.645617, 50.511982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004530, 31.241526, 50.411346>,  <29.232403, 31.967825, 50.387463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004530, 31.241526, 50.411346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.355249, 31.309313, 50.591347>,  <29.565681, 31.349985, 50.699348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.355249, 31.309313, 50.591347>,  <29.004530, 31.241526, 50.411346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355249, 31.309313, 50.591347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433785, -0.125064, 0.892295,
		0.207496, -0.977568, -0.036143,
		0.876799, 0.169469, 0.450004,
		29.618290, 31.360153, 50.726349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170210, 30.645275, 50.774372>,  <29.004530, 31.241526, 50.411346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170210, 30.645275, 50.774372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.359573, 30.938637, 50.969513>,  <29.473192, 31.114655, 51.086597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.359573, 30.938637, 50.969513>,  <29.170210, 30.645275, 50.774372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359573, 30.938637, 50.969513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442116, -0.281185, 0.851744,
		0.761850, -0.618911, 0.191135,
		0.473410, 0.733406, 0.487852,
		29.501596, 31.158659, 51.115868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.489607, 30.405670, 51.382011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487215, 30.794817, 51.474525>,  <29.485781, 31.028305, 51.530033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487215, 30.794817, 51.474525>,  <29.489607, 30.405670, 51.382011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487215, 30.794817, 51.474525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233614, -0.226246, 0.945641,
		0.972311, -0.048378, 0.228628,
		-0.005978, 0.972868, 0.231283,
		29.485422, 31.086678, 51.543911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949257, 30.436033, 52.046082>,  <29.489607, 30.405670, 51.382011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949257, 30.436033, 52.046082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724985, 30.766598, 52.025341>,  <29.590422, 30.964935, 52.012897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724985, 30.766598, 52.025341>,  <29.949257, 30.436033, 52.046082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724985, 30.766598, 52.025341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202023, -0.075801, 0.976443,
		0.803012, 0.557944, 0.209454,
		-0.560677, 0.826410, -0.051848,
		29.556782, 31.014521, 52.009789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277832, 30.940279, 52.440266>,  <29.949257, 30.436033, 52.046082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277832, 30.940279, 52.440266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904583, 31.082045, 52.416027>,  <29.680634, 31.167105, 52.401482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904583, 31.082045, 52.416027>,  <30.277832, 30.940279, 52.440266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904583, 31.082045, 52.416027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017191, 0.124371, 0.992087,
		0.359146, 0.926781, -0.109960,
		-0.933123, 0.354414, -0.060599,
		29.624645, 31.188368, 52.397846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190462, 31.665203, 52.774891>,  <30.277832, 30.940279, 52.440266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190462, 31.665203, 52.774891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830845, 31.491381, 52.753414>,  <29.615074, 31.387087, 52.740528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830845, 31.491381, 52.753414>,  <30.190462, 31.665203, 52.774891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830845, 31.491381, 52.753414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050763, -0.018352, 0.998542,
		-0.434906, 0.900459, -0.005560,
		-0.899044, -0.434554, -0.053692,
		29.561132, 31.361015, 52.737309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944403, 31.860518, 53.350639>,  <30.190462, 31.665203, 52.774891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944403, 31.860518, 53.350639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667063, 31.594509, 53.239639>,  <29.500658, 31.434904, 53.173038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667063, 31.594509, 53.239639>,  <29.944403, 31.860518, 53.350639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667063, 31.594509, 53.239639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364677, -0.008321, 0.931097,
		-0.621509, 0.746777, -0.236748,
		-0.693352, -0.665022, -0.277504,
		29.459057, 31.395002, 53.156387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325180, 32.086487, 53.699802>,  <29.944403, 31.860518, 53.350639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325180, 32.086487, 53.699802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248590, 31.702995, 53.615726>,  <29.202637, 31.472900, 53.565281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248590, 31.702995, 53.615726>,  <29.325180, 32.086487, 53.699802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248590, 31.702995, 53.615726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669573, -0.028988, 0.742180,
		-0.717642, 0.282843, -0.636388,
		-0.191473, -0.958728, -0.210187,
		29.191149, 31.415377, 53.552670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608290, 32.092796, 53.673874>,  <29.325180, 32.086487, 53.699802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608290, 32.092796, 53.673874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713671, 31.712725, 53.740513>,  <28.776899, 31.484682, 53.780495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713671, 31.712725, 53.740513>,  <28.608290, 32.092796, 53.673874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713671, 31.712725, 53.740513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794616, -0.115827, 0.595961,
		-0.546973, -0.289388, -0.785541,
		0.263451, -0.950178, 0.166598,
		28.792706, 31.427671, 53.790493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032974, 31.667261, 53.546181>,  <28.608290, 32.092796, 53.673874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032974, 31.667261, 53.546181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264008, 31.461016, 53.799335>,  <28.402628, 31.337269, 53.951229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264008, 31.461016, 53.799335>,  <28.032974, 31.667261, 53.546181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264008, 31.461016, 53.799335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779319, -0.117475, 0.615517,
		-0.243019, -0.848732, -0.469677,
		0.577584, -0.515611, 0.632884,
		28.437283, 31.306332, 53.989201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678904, 31.090628, 53.659824>,  <28.032974, 31.667261, 53.546181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678904, 31.090628, 53.659824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912708, 31.148710, 53.979137>,  <28.052992, 31.183559, 54.170727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912708, 31.148710, 53.979137>,  <27.678904, 31.090628, 53.659824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912708, 31.148710, 53.979137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793976, -0.100355, 0.599609,
		0.167179, -0.984299, 0.056633,
		0.584511, 0.145207, 0.798287,
		28.088062, 31.192272, 54.218624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318890, 30.801050, 54.165588>,  <27.678904, 31.090628, 53.659824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318890, 30.801050, 54.165588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586157, 30.967234, 54.412472>,  <27.746517, 31.066944, 54.560600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586157, 30.967234, 54.412472>,  <27.318890, 30.801050, 54.165588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586157, 30.967234, 54.412472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715152, 0.129838, 0.686804,
		0.205203, -0.900297, 0.383871,
		0.668169, 0.415460, 0.617206,
		27.786608, 31.091871, 54.597633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230595, 30.511808, 54.799862>,  <27.318890, 30.801050, 54.165588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230595, 30.511808, 54.799862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399952, 30.867590, 54.868694>,  <27.501566, 31.081059, 54.909992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399952, 30.867590, 54.868694>,  <27.230595, 30.511808, 54.799862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399952, 30.867590, 54.868694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734153, 0.225569, 0.640420,
		0.530809, -0.397481, 0.748499,
		0.423393, 0.889454, 0.172077,
		27.526970, 31.134426, 54.920319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292221, 30.485346, 55.504887>,  <27.230595, 30.511808, 54.799862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292221, 30.485346, 55.504887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342684, 30.869432, 55.405231>,  <27.372961, 31.099884, 55.345440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342684, 30.869432, 55.405231>,  <27.292221, 30.485346, 55.504887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342684, 30.869432, 55.405231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525850, 0.277687, 0.803972,
		0.841169, 0.029581, 0.539962,
		0.126158, 0.960216, -0.249137,
		27.380531, 31.157497, 55.330490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491474, 30.753828, 56.106075>,  <27.292221, 30.485346, 55.504887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491474, 30.753828, 56.106075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363905, 31.061520, 55.884598>,  <27.287363, 31.246136, 55.751713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363905, 31.061520, 55.884598>,  <27.491474, 30.753828, 56.106075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363905, 31.061520, 55.884598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545682, 0.328626, 0.770867,
		0.774931, 0.547987, 0.314948,
		-0.318925, 0.769230, -0.553689,
		27.268227, 31.292288, 55.718491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616619, 31.356825, 56.527771>,  <27.491474, 30.753828, 56.106075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616619, 31.356825, 56.527771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339285, 31.448393, 56.254456>,  <27.172884, 31.503334, 56.090466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339285, 31.448393, 56.254456>,  <27.616619, 31.356825, 56.527771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339285, 31.448393, 56.254456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597975, 0.346369, 0.722810,
		0.402137, 0.909738, -0.103260,
		-0.693334, 0.228922, -0.683288,
		27.131285, 31.517069, 56.049469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605465, 32.028423, 56.706875>,  <27.616619, 31.356825, 56.527771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605465, 32.028423, 56.706875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274475, 31.927320, 56.506313>,  <27.075882, 31.866659, 56.385979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274475, 31.927320, 56.506313>,  <27.605465, 32.028423, 56.706875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274475, 31.927320, 56.506313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561488, 0.379538, 0.735311,
		0.004446, 0.889980, -0.455977,
		-0.827473, -0.252756, -0.501400,
		27.026234, 31.851494, 56.355892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172123, 32.591011, 56.836483>,  <27.605465, 32.028423, 56.706875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172123, 32.591011, 56.836483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925714, 32.300957, 56.713398>,  <26.777868, 32.126923, 56.639545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925714, 32.300957, 56.713398>,  <27.172123, 32.591011, 56.836483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925714, 32.300957, 56.713398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732203, 0.383041, 0.563168,
		-0.290507, 0.572235, -0.766911,
		-0.616023, -0.725139, -0.307716,
		26.740908, 32.083416, 56.621082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597475, 32.889183, 56.564613>,  <27.172123, 32.591011, 56.836483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597475, 32.889183, 56.564613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500116, 32.526722, 56.702969>,  <26.441702, 32.309246, 56.785980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500116, 32.526722, 56.702969>,  <26.597475, 32.889183, 56.564613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500116, 32.526722, 56.702969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734584, 0.405085, 0.544327,
		-0.633359, -0.121595, -0.764245,
		-0.243397, -0.906157, 0.345886,
		26.427097, 32.254875, 56.806736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912098, 32.854298, 56.497765>,  <26.597475, 32.889183, 56.564613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912098, 32.854298, 56.497765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019974, 32.583527, 56.771709>,  <26.084700, 32.421066, 56.936077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019974, 32.583527, 56.771709>,  <25.912098, 32.854298, 56.497765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019974, 32.583527, 56.771709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696672, 0.353826, 0.624063,
		-0.664767, -0.645429, -0.376173,
		0.269689, -0.676926, 0.684864,
		26.100880, 32.380447, 56.977169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336617, 32.692360, 56.782986>,  <25.912098, 32.854298, 56.497765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336617, 32.692360, 56.782986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571274, 32.541481, 57.069641>,  <25.712069, 32.450954, 57.241634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571274, 32.541481, 57.069641>,  <25.336617, 32.692360, 56.782986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.571274, 32.541481, 57.069641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642662, 0.321633, 0.695369,
		-0.492785, -0.868491, -0.053725,
		0.586642, -0.377194, 0.716642,
		25.747267, 32.428322, 57.284634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.884443, 32.344048, 57.232635>,  <25.336617, 32.692360, 56.782986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.884443, 32.344048, 57.232635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.197134, 32.380993, 57.479332>,  <25.384748, 32.403160, 57.627350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.197134, 32.380993, 57.479332>,  <24.884443, 32.344048, 57.232635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.197134, 32.380993, 57.479332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615536, 0.272998, 0.739315,
		-0.100086, -0.957571, 0.270261,
		0.781727, 0.092360, 0.616743,
		25.431652, 32.408703, 57.664356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.629484, 32.082405, 57.894623>,  <24.884443, 32.344048, 57.232635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.629484, 32.082405, 57.894623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.950872, 32.299168, 57.993229>,  <25.143705, 32.429226, 58.052391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.950872, 32.299168, 57.993229>,  <24.629484, 32.082405, 57.894623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.950872, 32.299168, 57.993229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482105, 0.349301, 0.803470,
		0.349301, -0.764410, 0.541910,
		-0.803470, -0.541910, -0.246515,
		25.191914, 32.461742, 58.067184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867790, 31.969141, 58.629608>,  <24.629484, 32.082405, 57.894623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867790, 31.969141, 58.629608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.980593, 32.334988, 58.513710>,  <25.048275, 32.554497, 58.444172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.980593, 32.334988, 58.513710>,  <24.867790, 31.969141, 58.629608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.980593, 32.334988, 58.513710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588806, 0.403430, 0.700394,
		0.757483, -0.026911, 0.652300,
		0.282006, 0.914615, -0.289746,
		25.065195, 32.609371, 58.426785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985685, 32.330105, 59.229446>,  <24.867790, 31.969141, 58.629608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.985685, 32.330105, 59.229446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.942139, 32.624989, 58.962715>,  <24.916010, 32.801918, 58.802677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.942139, 32.624989, 58.962715>,  <24.985685, 32.330105, 59.229446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.942139, 32.624989, 58.962715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442382, 0.564799, 0.696635,
		0.890195, 0.370834, 0.264642,
		-0.108866, 0.737213, -0.666832,
		24.909479, 32.846153, 58.762665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537399, 32.065662, 59.759975>,  <24.985685, 32.330105, 59.229446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537399, 32.065662, 59.759975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659647, 32.119522, 60.137009>,  <25.732996, 32.151836, 60.363228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659647, 32.119522, 60.137009>,  <25.537399, 32.065662, 59.759975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659647, 32.119522, 60.137009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846235, 0.492180, 0.204071,
		-0.436445, -0.860017, 0.264360,
		0.305617, 0.134645, 0.942586,
		25.751331, 32.159916, 60.419785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057909, 31.596838, 59.705765>,  <25.537399, 32.065662, 59.759975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057909, 31.596838, 59.705765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269815, 31.749454, 60.008755>,  <26.396959, 31.841024, 60.190548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269815, 31.749454, 60.008755>,  <26.057909, 31.596838, 59.705765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269815, 31.749454, 60.008755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731600, 0.246254, -0.635704,
		-0.429080, 0.890946, -0.148680,
		0.529765, 0.381542, 0.757479,
		26.428745, 31.863916, 60.236000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200457, 32.332672, 59.473259>,  <26.057909, 31.596838, 59.705765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200457, 32.332672, 59.473259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450697, 32.133419, 59.713421>,  <26.600842, 32.013866, 59.857517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450697, 32.133419, 59.713421>,  <26.200457, 32.332672, 59.473259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450697, 32.133419, 59.713421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633041, -0.125648, -0.763853,
		0.455941, 0.857948, 0.236734,
		0.625601, -0.498134, 0.600404,
		26.638378, 31.983978, 59.893543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877581, 32.624172, 59.446945>,  <26.200457, 32.332672, 59.473259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877581, 32.624172, 59.446945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964315, 32.259579, 59.586765>,  <27.016357, 32.040825, 59.670658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964315, 32.259579, 59.586765>,  <26.877581, 32.624172, 59.446945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964315, 32.259579, 59.586765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611450, -0.152315, -0.776485,
		0.760993, 0.382103, 0.524297,
		0.216839, -0.911481, 0.349548,
		27.029367, 31.986134, 59.691631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463678, 32.733936, 59.582336>,  <26.877581, 32.624172, 59.446945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463678, 32.733936, 59.582336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428482, 32.336323, 59.556526>,  <27.407364, 32.097755, 59.541039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428482, 32.336323, 59.556526>,  <27.463678, 32.733936, 59.582336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428482, 32.336323, 59.556526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784284, -0.029196, -0.619715,
		0.614131, -0.105135, 0.782170,
		-0.087990, -0.994029, -0.064525,
		27.402084, 32.038113, 59.537170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088478, 32.536072, 59.465363>,  <27.463678, 32.733936, 59.582336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088478, 32.536072, 59.465363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926661, 32.179283, 59.384636>,  <27.829569, 31.965210, 59.336201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926661, 32.179283, 59.384636>,  <28.088478, 32.536072, 59.465363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926661, 32.179283, 59.384636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796919, -0.235579, -0.556257,
		0.448624, -0.385859, 0.806132,
		-0.404545, -0.891973, -0.201812,
		27.805298, 31.911692, 59.324093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611160, 32.099773, 59.453438>,  <28.088478, 32.536072, 59.465363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611160, 32.099773, 59.453438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343592, 31.911209, 59.223545>,  <28.183050, 31.798071, 59.085609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343592, 31.911209, 59.223545>,  <28.611160, 32.099773, 59.453438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343592, 31.911209, 59.223545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724360, -0.239814, -0.646368,
		0.166875, -0.848683, 0.501886,
		-0.668921, -0.471409, -0.574733,
		28.142916, 31.769787, 59.051125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878420, 31.436644, 59.262466>,  <28.611160, 32.099773, 59.453438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878420, 31.436644, 59.262466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613649, 31.539095, 58.980686>,  <28.454786, 31.600567, 58.811619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613649, 31.539095, 58.980686>,  <28.878420, 31.436644, 59.262466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613649, 31.539095, 58.980686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713656, -0.072071, -0.696779,
		-0.229236, -0.963952, -0.135083,
		-0.661926, 0.256130, -0.704451,
		28.415071, 31.615934, 58.769352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063824, 30.925192, 58.698498>,  <28.878420, 31.436644, 59.262466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063824, 30.925192, 58.698498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863518, 31.239067, 58.552345>,  <28.743334, 31.427393, 58.464653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863518, 31.239067, 58.552345>,  <29.063824, 30.925192, 58.698498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863518, 31.239067, 58.552345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620522, 0.031141, -0.783571,
		-0.603480, -0.619108, -0.502510,
		-0.500764, 0.784688, -0.365377,
		28.713289, 31.474474, 58.442734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883667, 30.740194, 57.970280>,  <29.063824, 30.925192, 58.698498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883667, 30.740194, 57.970280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858408, 31.139339, 57.976971>,  <28.843252, 31.378826, 57.980984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858408, 31.139339, 57.976971>,  <28.883667, 30.740194, 57.970280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858408, 31.139339, 57.976971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387358, 0.039955, -0.921063,
		-0.919764, -0.051684, -0.389054,
		-0.063149, 0.997864, 0.016729,
		28.839464, 31.438698, 57.981991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536343, 30.911850, 57.385403>,  <28.883667, 30.740194, 57.970280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536343, 30.911850, 57.385403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745199, 31.230553, 57.507088>,  <28.870514, 31.421774, 57.580097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745199, 31.230553, 57.507088>,  <28.536343, 30.911850, 57.385403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745199, 31.230553, 57.507088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393707, 0.091231, -0.914698,
		-0.756546, 0.597372, -0.266054,
		0.522143, 0.796758, 0.304210,
		28.901842, 31.469580, 57.598351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435860, 31.342190, 56.796257>,  <28.536343, 30.911850, 57.385403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435860, 31.342190, 56.796257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741158, 31.497580, 57.002769>,  <28.924335, 31.590813, 57.126678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741158, 31.497580, 57.002769>,  <28.435860, 31.342190, 56.796257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741158, 31.497580, 57.002769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556167, 0.011680, -0.830989,
		-0.328846, 0.921386, -0.207141,
		0.763242, 0.388472, 0.516285,
		28.970131, 31.614120, 57.157654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624840, 31.895428, 56.378181>,  <28.435860, 31.342190, 56.796257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624840, 31.895428, 56.378181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939962, 31.830091, 56.615730>,  <29.129036, 31.790890, 56.758259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939962, 31.830091, 56.615730>,  <28.624840, 31.895428, 56.378181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939962, 31.830091, 56.615730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593329, -0.057499, -0.802904,
		0.165293, 0.984893, 0.051616,
		0.787806, -0.163340, 0.593870,
		29.176304, 31.781090, 56.793892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160486, 32.398762, 56.087742>,  <28.624840, 31.895428, 56.378181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160486, 32.398762, 56.087742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353933, 32.122639, 56.302998>,  <29.470001, 31.956964, 56.432152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353933, 32.122639, 56.302998>,  <29.160486, 32.398762, 56.087742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353933, 32.122639, 56.302998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603847, -0.181942, -0.776058,
		0.633629, 0.700266, 0.328849,
		0.483616, -0.690307, 0.538137,
		29.499018, 31.915546, 56.464439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848850, 32.510445, 55.917938>,  <29.160486, 32.398762, 56.087742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848850, 32.510445, 55.917938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842112, 32.146545, 56.083870>,  <29.838068, 31.928207, 56.183430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842112, 32.146545, 56.083870>,  <29.848850, 32.510445, 55.917938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842112, 32.146545, 56.083870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770656, -0.276145, -0.574311,
		0.637028, 0.310012, 0.705753,
		-0.016846, -0.909745, 0.414825,
		29.837057, 31.873621, 56.208317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538973, 32.367104, 56.195717>,  <29.848850, 32.510445, 55.917938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538973, 32.367104, 56.195717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356709, 32.018242, 56.124474>,  <30.247351, 31.808926, 56.081726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356709, 32.018242, 56.124474>,  <30.538973, 32.367104, 56.195717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356709, 32.018242, 56.124474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785868, -0.300169, -0.540658,
		0.418074, -0.386326, 0.822172,
		-0.455660, -0.872153, -0.178108,
		30.220011, 31.756596, 56.071041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081430, 32.005543, 56.114189>,  <30.538973, 32.367104, 56.195717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081430, 32.005543, 56.114189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798813, 31.768969, 55.958752>,  <30.629242, 31.627024, 55.865490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798813, 31.768969, 55.958752>,  <31.081430, 32.005543, 56.114189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798813, 31.768969, 55.958752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581558, -0.172384, -0.795031,
		0.403222, -0.787711, 0.465750,
		-0.706543, -0.591434, -0.388591,
		30.586849, 31.591537, 55.842175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365248, 31.424988, 55.920467>,  <31.081430, 32.005543, 56.114189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365248, 31.424988, 55.920467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041145, 31.447866, 55.687157>,  <30.846684, 31.461594, 55.547169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041145, 31.447866, 55.687157>,  <31.365248, 31.424988, 55.920467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041145, 31.447866, 55.687157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547869, -0.279546, -0.788476,
		-0.208154, -0.958427, 0.195166,
		-0.810254, 0.057199, -0.583281,
		30.798069, 31.465027, 55.512173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233809, 30.716305, 55.573116>,  <31.365248, 31.424988, 55.920467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233809, 30.716305, 55.573116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066629, 31.007759, 55.356079>,  <30.966322, 31.182631, 55.225857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066629, 31.007759, 55.356079>,  <31.233809, 30.716305, 55.573116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066629, 31.007759, 55.356079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492284, -0.320325, -0.809350,
		-0.763527, -0.605379, -0.224816,
		-0.417950, 0.728634, -0.542596,
		30.941244, 31.226349, 55.193302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278549, 30.393034, 55.002579>,  <31.233809, 30.716305, 55.573116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278549, 30.393034, 55.002579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142256, 30.753616, 54.895782>,  <31.060480, 30.969965, 54.831707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142256, 30.753616, 54.895782>,  <31.278549, 30.393034, 55.002579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142256, 30.753616, 54.895782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289197, -0.169717, -0.942105,
		-0.894576, -0.398217, -0.202869,
		-0.340732, 0.901454, -0.266988,
		31.040035, 31.024052, 54.815685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961262, 30.327391, 54.340382>,  <31.278549, 30.393034, 55.002579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961262, 30.327391, 54.340382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047085, 30.716522, 54.375179>,  <31.098579, 30.950001, 54.396057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047085, 30.716522, 54.375179>,  <30.961262, 30.327391, 54.340382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047085, 30.716522, 54.375179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416740, -0.010630, -0.908964,
		-0.883341, 0.231281, -0.407697,
		0.214560, 0.972829, 0.086994,
		31.111452, 31.008371, 54.401276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.223320, 36.261501, 51.350979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.386467, 35.935982, 51.516571>,  <47.484356, 35.740669, 51.615925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.386467, 35.935982, 51.516571>,  <47.223320, 36.261501, 51.350979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.386467, 35.935982, 51.516571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717791, -0.566014, -0.405468,
		0.564287, -0.131774, -0.814994,
		0.407868, -0.813796, 0.413980,
		47.508827, 35.691841, 51.640766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.247459, 35.821369, 50.820171>,  <47.223320, 36.261501, 51.350979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.247459, 35.821369, 50.820171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.252605, 35.598419, 51.152237>,  <47.255692, 35.464649, 51.351475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.252605, 35.598419, 51.152237>,  <47.247459, 35.821369, 50.820171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.252605, 35.598419, 51.152237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779035, -0.526058, -0.341128,
		0.626849, -0.642336, -0.440981,
		0.012863, -0.557375, 0.830161,
		47.256466, 35.431206, 51.401287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.225231, 35.159508, 50.576923>,  <47.247459, 35.821369, 50.820171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.225231, 35.159508, 50.576923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.089291, 35.158199, 50.953114>,  <47.007725, 35.157413, 51.178825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.089291, 35.158199, 50.953114>,  <47.225231, 35.159508, 50.576923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.089291, 35.158199, 50.953114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898820, -0.293195, -0.325821,
		0.276809, -0.956047, 0.096700,
		-0.339852, -0.003274, 0.940473,
		46.987335, 35.157219, 51.235256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.887222, 34.509384, 50.642590>,  <47.225231, 35.159508, 50.576923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.887222, 34.509384, 50.642590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.737000, 34.717579, 50.949329>,  <46.646866, 34.842495, 51.133373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.737000, 34.717579, 50.949329>,  <46.887222, 34.509384, 50.642590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.737000, 34.717579, 50.949329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920455, -0.306120, -0.243008,
		0.108264, -0.797110, 0.594050,
		-0.375555, 0.520487, 0.766845,
		46.624332, 34.873726, 51.179382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446140, 34.136581, 50.910290>,  <46.887222, 34.509384, 50.642590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.446140, 34.136581, 50.910290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.290592, 34.482922, 51.036198>,  <46.197266, 34.690727, 51.111744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.290592, 34.482922, 51.036198>,  <46.446140, 34.136581, 50.910290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290592, 34.482922, 51.036198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871666, -0.235158, -0.429999,
		-0.298295, -0.441586, 0.846181,
		-0.388868, 0.865854, 0.314769,
		46.173931, 34.742680, 51.130627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748367, 33.972919, 51.185791>,  <46.446140, 34.136581, 50.910290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748367, 33.972919, 51.185791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.761383, 34.369900, 51.138493>,  <45.769192, 34.608089, 51.110115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.761383, 34.369900, 51.138493>,  <45.748367, 33.972919, 51.185791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761383, 34.369900, 51.138493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855858, -0.033437, -0.516129,
		-0.516187, 0.117994, 0.848309,
		0.032535, 0.992451, -0.118246,
		45.771145, 34.667637, 51.103020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084911, 34.123055, 51.389275>,  <45.748367, 33.972919, 51.185791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084911, 34.123055, 51.389275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.208450, 34.449360, 51.193661>,  <45.282574, 34.645142, 51.076294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.208450, 34.449360, 51.193661>,  <45.084911, 34.123055, 51.389275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208450, 34.449360, 51.193661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912881, 0.109931, -0.393144,
		-0.266951, 0.567848, 0.778643,
		0.308843, 0.815759, -0.489031,
		45.301102, 34.694088, 51.046951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699444, 34.733067, 51.709393>,  <45.084911, 34.123055, 51.389275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699444, 34.733067, 51.709393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.821892, 34.786552, 51.332371>,  <44.895359, 34.818645, 51.106159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.821892, 34.786552, 51.332371>,  <44.699444, 34.733067, 51.709393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821892, 34.786552, 51.332371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950482, 0.098697, -0.294692,
		0.053622, 0.986093, 0.157309,
		0.306120, 0.133718, -0.942555,
		44.913727, 34.826668, 51.049603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216759, 35.080605, 51.427368>,  <44.699444, 34.733067, 51.709393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216759, 35.080605, 51.427368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.421951, 35.019321, 51.089520>,  <44.545067, 34.982552, 50.886810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.421951, 35.019321, 51.089520>,  <44.216759, 35.080605, 51.427368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421951, 35.019321, 51.089520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814315, 0.224422, -0.535281,
		0.271560, 0.962373, -0.009635,
		0.512978, -0.153207, -0.844619,
		44.575844, 34.973358, 50.836132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226376, 35.733501, 51.029785>,  <44.216759, 35.080605, 51.427368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226376, 35.733501, 51.029785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.246243, 35.403038, 50.805286>,  <44.258163, 35.204762, 50.670589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.246243, 35.403038, 50.805286>,  <44.226376, 35.733501, 51.029785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246243, 35.403038, 50.805286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874952, 0.235004, -0.423358,
		0.481656, 0.512087, -0.711178,
		0.049666, -0.826160, -0.561243,
		44.261143, 35.155190, 50.636913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782433, 35.961349, 50.346905>,  <44.226376, 35.733501, 51.029785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782433, 35.961349, 50.346905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.814896, 35.562675, 50.344402>,  <43.834373, 35.323471, 50.342899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.814896, 35.562675, 50.344402>,  <43.782433, 35.961349, 50.346905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814896, 35.562675, 50.344402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934809, -0.073938, -0.347369,
		0.345753, 0.034042, -0.937708,
		0.081157, -0.996682, -0.006259,
		43.839241, 35.263672, 50.342525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657845, 35.720146, 49.649559>,  <43.782433, 35.961349, 50.346905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657845, 35.720146, 49.649559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.614967, 35.375942, 49.848770>,  <43.589241, 35.169418, 49.968296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.614967, 35.375942, 49.848770>,  <43.657845, 35.720146, 49.649559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614967, 35.375942, 49.848770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880073, -0.150931, -0.450212,
		0.462581, -0.486557, -0.741135,
		-0.107194, -0.860512, 0.498024,
		43.582809, 35.117790, 49.998177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471779, 35.261757, 49.102695>,  <43.657845, 35.720146, 49.649559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471779, 35.261757, 49.102695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.340878, 35.130356, 49.457096>,  <43.262337, 35.051514, 49.669735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.340878, 35.130356, 49.457096>,  <43.471779, 35.261757, 49.102695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340878, 35.130356, 49.457096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923520, -0.087305, -0.373482,
		0.200043, -0.940458, -0.274811,
		-0.327251, -0.328506, 0.885997,
		43.242702, 35.031803, 49.722897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893475, 34.709061, 48.986378>,  <43.471779, 35.261757, 49.102695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893475, 34.709061, 48.986378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.860569, 34.779659, 49.378719>,  <42.840824, 34.822018, 49.614124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.860569, 34.779659, 49.378719>,  <42.893475, 34.709061, 48.986378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860569, 34.779659, 49.378719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996437, -0.032913, -0.077650,
		0.018578, -0.983751, 0.178573,
		-0.082266, 0.176494, 0.980858,
		42.835888, 34.832607, 49.672977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502270, 34.182480, 49.271282>,  <42.893475, 34.709061, 48.986378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502270, 34.182480, 49.271282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.431496, 34.474834, 49.534950>,  <42.389030, 34.650246, 49.693150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.431496, 34.474834, 49.534950>,  <42.502270, 34.182480, 49.271282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431496, 34.474834, 49.534950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932805, 0.089110, -0.349190,
		-0.313957, -0.676659, 0.666006,
		-0.176935, 0.730885, 0.659167,
		42.378414, 34.694099, 49.732700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836414, 33.992676, 49.497520>,  <42.502270, 34.182480, 49.271282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836414, 33.992676, 49.497520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.900894, 34.380886, 49.569176>,  <41.939583, 34.613811, 49.612167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.900894, 34.380886, 49.569176>,  <41.836414, 33.992676, 49.497520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900894, 34.380886, 49.569176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911751, 0.215930, -0.349404,
		-0.377788, -0.107006, 0.919688,
		0.161200, 0.970527, 0.179138,
		41.949253, 34.672043, 49.622917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257553, 34.275673, 49.817062>,  <41.836414, 33.992676, 49.497520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257553, 34.275673, 49.817062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.442230, 34.597626, 49.667927>,  <41.553036, 34.790798, 49.578445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.442230, 34.597626, 49.667927>,  <41.257553, 34.275673, 49.817062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442230, 34.597626, 49.667927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884755, 0.387686, -0.258665,
		-0.063650, 0.449295, 0.891113,
		0.461689, 0.804881, -0.372840,
		41.580738, 34.839088, 49.556076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914383, 34.819115, 50.170727>,  <41.257553, 34.275673, 49.817062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914383, 34.819115, 50.170727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.066216, 34.954285, 49.826233>,  <41.157314, 35.035389, 49.619537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.066216, 34.954285, 49.826233>,  <40.914383, 34.819115, 50.170727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066216, 34.954285, 49.826233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918927, 0.245574, -0.308654,
		0.107194, 0.908569, 0.403746,
		0.379583, 0.337927, -0.861233,
		41.180092, 35.055664, 49.567863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577240, 35.383427, 50.028767>,  <40.914383, 34.819115, 50.170727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577240, 35.383427, 50.028767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.725140, 35.291176, 49.668747>,  <40.813877, 35.235825, 49.452736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.725140, 35.291176, 49.668747>,  <40.577240, 35.383427, 50.028767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725140, 35.291176, 49.668747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895557, 0.169597, -0.411357,
		0.247518, 0.958147, -0.143836,
		0.369746, -0.230631, -0.900054,
		40.836063, 35.221985, 49.398731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223038, 35.891640, 49.587177>,  <40.577240, 35.383427, 50.028767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223038, 35.891640, 49.587177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.352642, 35.591007, 49.357346>,  <40.430405, 35.410625, 49.219448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.352642, 35.591007, 49.357346>,  <40.223038, 35.891640, 49.587177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352642, 35.591007, 49.357346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852674, 0.031105, -0.521516,
		0.409836, 0.658903, -0.630778,
		0.324008, -0.751584, -0.574577,
		40.449844, 35.365532, 49.184971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172554, 36.093311, 48.913666>,  <40.223038, 35.891640, 49.587177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172554, 36.093311, 48.913666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.102680, 35.700245, 48.938473>,  <40.060757, 35.464405, 48.953358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.102680, 35.700245, 48.938473>,  <40.172554, 36.093311, 48.913666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102680, 35.700245, 48.938473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871788, 0.125075, -0.473648,
		0.457683, -0.136806, -0.878528,
		-0.174680, -0.982670, 0.062021,
		40.050278, 35.405445, 48.957081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852734, 35.914570, 48.260426>,  <40.172554, 36.093311, 48.913666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852734, 35.914570, 48.260426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734985, 35.654682, 48.540771>,  <39.664337, 35.498749, 48.708977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734985, 35.654682, 48.540771>,  <39.852734, 35.914570, 48.260426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734985, 35.654682, 48.540771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927765, 0.018294, -0.372716,
		0.229340, -0.759953, -0.608173,
		-0.294373, -0.649720, 0.700863,
		39.646675, 35.459766, 48.751030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553791, 35.299515, 47.965031>,  <39.852734, 35.914570, 48.260426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553791, 35.299515, 47.965031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.397625, 35.448940, 48.301605>,  <39.303925, 35.538597, 48.503551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.397625, 35.448940, 48.301605>,  <39.553791, 35.299515, 47.965031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397625, 35.448940, 48.301605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892112, 0.072239, -0.446003,
		-0.227398, -0.924785, 0.305062,
		-0.390419, 0.373570, 0.841439,
		39.280499, 35.561012, 48.554035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905407, 34.942856, 48.179043>,  <39.553791, 35.299515, 47.965031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905407, 34.942856, 48.179043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.907749, 35.334675, 48.259502>,  <38.909153, 35.569767, 48.307777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.907749, 35.334675, 48.259502>,  <38.905407, 34.942856, 48.179043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907749, 35.334675, 48.259502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891790, 0.096116, -0.442122,
		-0.452411, -0.176791, 0.874110,
		0.005853, 0.979544, 0.201144,
		38.909504, 35.628536, 48.319847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443886, 34.637039, 47.630070>,  <38.905407, 34.942856, 48.179043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443886, 34.637039, 47.630070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570122, 34.485569, 47.282043>,  <38.645863, 34.394688, 47.073227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570122, 34.485569, 47.282043>,  <38.443886, 34.637039, 47.630070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570122, 34.485569, 47.282043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944988, -0.042298, -0.324358,
		0.086023, 0.924563, -0.371192,
		0.315590, -0.378674, -0.870062,
		38.664799, 34.371967, 47.021027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953064, 34.902420, 47.154072>,  <38.443886, 34.637039, 47.630070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953064, 34.902420, 47.154072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136852, 34.621731, 46.936275>,  <38.247128, 34.453320, 46.805595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136852, 34.621731, 46.936275>,  <37.953064, 34.902420, 47.154072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136852, 34.621731, 46.936275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853049, -0.177914, -0.490564,
		0.247366, 0.689881, -0.680349,
		0.459474, -0.701720, -0.544493,
		38.274696, 34.411213, 46.772926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746918, 34.994205, 46.378834>,  <37.953064, 34.902420, 47.154072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746918, 34.994205, 46.378834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.866535, 34.614140, 46.414059>,  <37.938305, 34.386101, 46.435196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.866535, 34.614140, 46.414059>,  <37.746918, 34.994205, 46.378834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866535, 34.614140, 46.414059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732437, -0.287712, -0.617056,
		0.611643, 0.120026, -0.781976,
		0.299046, -0.950166, 0.088065,
		37.956249, 34.329090, 46.440479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684715, 34.754955, 45.699650>,  <37.746918, 34.994205, 46.378834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684715, 34.754955, 45.699650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.657021, 34.449295, 45.956173>,  <37.640404, 34.265900, 46.110085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.657021, 34.449295, 45.956173>,  <37.684715, 34.754955, 45.699650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657021, 34.449295, 45.956173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774243, -0.364220, -0.517583,
		0.629090, -0.532364, -0.566423,
		-0.069240, -0.764155, 0.641306,
		37.636250, 34.220047, 46.148563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127232, 34.447292, 45.458179>,  <37.684715, 34.754955, 45.699650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127232, 34.447292, 45.458179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.176952, 34.163052, 45.735188>,  <37.206787, 33.992508, 45.901394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.176952, 34.163052, 45.735188>,  <37.127232, 34.447292, 45.458179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176952, 34.163052, 45.735188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909116, -0.361207, -0.207454,
		0.397562, -0.603797, -0.690922,
		0.124306, -0.710604, 0.692524,
		37.214245, 33.949871, 45.942944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166367, 33.805771, 45.237473>,  <37.127232, 34.447292, 45.458179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166367, 33.805771, 45.237473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.021095, 33.760036, 45.607342>,  <36.933933, 33.732594, 45.829266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.021095, 33.760036, 45.607342>,  <37.166367, 33.805771, 45.237473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021095, 33.760036, 45.607342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902939, -0.201570, -0.379567,
		0.229786, -0.972778, -0.030035,
		-0.363180, -0.114339, 0.924676,
		36.912140, 33.725735, 45.884747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814114, 33.108318, 45.310577>,  <37.166367, 33.805771, 45.237473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814114, 33.108318, 45.310577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671822, 33.338715, 45.604977>,  <36.586445, 33.476952, 45.781616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671822, 33.338715, 45.604977>,  <36.814114, 33.108318, 45.310577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671822, 33.338715, 45.604977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933385, -0.258897, -0.248525,
		0.047399, -0.775374, 0.629721,
		-0.355733, 0.575992, 0.735994,
		36.565102, 33.511513, 45.825775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375984, 32.659470, 45.658169>,  <36.814114, 33.108318, 45.310577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375984, 32.659470, 45.658169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255802, 33.021217, 45.779388>,  <36.183693, 33.238266, 45.852119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255802, 33.021217, 45.779388>,  <36.375984, 32.659470, 45.658169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255802, 33.021217, 45.779388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944299, -0.237325, -0.227982,
		-0.134258, -0.354672, 0.925301,
		-0.300456, 0.904370, 0.303054,
		36.165665, 33.292530, 45.870304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745125, 32.498524, 46.034851>,  <36.375984, 32.659470, 45.658169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745125, 32.498524, 46.034851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.730934, 32.895531, 45.988125>,  <35.722420, 33.133736, 45.960087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.730934, 32.895531, 45.988125>,  <35.745125, 32.498524, 46.034851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730934, 32.895531, 45.988125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993003, -0.021832, 0.116054,
		0.112636, 0.120118, 0.986349,
		-0.035474, 0.992520, -0.116818,
		35.720291, 33.193287, 45.953079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195217, 32.738308, 46.504482>,  <35.745125, 32.498524, 46.034851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195217, 32.738308, 46.504482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228485, 33.020657, 46.223106>,  <35.248444, 33.190067, 46.054279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228485, 33.020657, 46.223106>,  <35.195217, 32.738308, 46.504482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228485, 33.020657, 46.223106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976677, 0.197951, 0.083166,
		0.197951, 0.680118, 0.705872,
		-0.083166, -0.705872, 0.703441,
		35.253433, 33.232418, 46.012074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670738, 33.277512, 46.645214>,  <35.195217, 32.738308, 46.504482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670738, 33.277512, 46.645214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748909, 33.313309, 46.254562>,  <34.795811, 33.334785, 46.020172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748909, 33.313309, 46.254562>,  <34.670738, 33.277512, 46.645214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748909, 33.313309, 46.254562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908205, 0.392313, -0.145790,
		0.370096, 0.915468, 0.157946,
		0.195430, 0.089491, -0.976626,
		34.807537, 33.340157, 45.961575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.956921, 31.897598, 48.725540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.289913, 31.884087, 48.946751>,  <30.489708, 31.875980, 49.079475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.289913, 31.884087, 48.946751>,  <29.956921, 31.897598, 48.725540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289913, 31.884087, 48.946751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398503, 0.729966, -0.555288,
		-0.384933, 0.682648, 0.621143,
		0.832479, -0.033779, 0.553025,
		30.539658, 31.873953, 49.112659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116982, 32.531338, 48.931103>,  <29.956921, 31.897598, 48.725540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116982, 32.531338, 48.931103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.476074, 32.355770, 48.946201>,  <30.691530, 32.250427, 48.955261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.476074, 32.355770, 48.946201>,  <30.116982, 32.531338, 48.931103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476074, 32.355770, 48.946201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300778, 0.548073, -0.780479,
		0.321883, 0.712014, 0.624041,
		0.897733, -0.438921, 0.037743,
		30.745394, 32.224094, 48.957523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621584, 32.981831, 48.616943>,  <30.116982, 32.531338, 48.931103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621584, 32.981831, 48.616943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.835003, 32.644051, 48.598042>,  <30.963055, 32.441383, 48.586700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.835003, 32.644051, 48.598042>,  <30.621584, 32.981831, 48.616943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835003, 32.644051, 48.598042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405594, 0.304492, -0.861846,
		0.742172, 0.440671, 0.504965,
		0.533548, -0.844449, -0.047251,
		30.995068, 32.390717, 48.583866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280603, 33.208012, 48.519901>,  <30.621584, 32.981831, 48.616943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280603, 33.208012, 48.519901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.317669, 32.830666, 48.392479>,  <31.339909, 32.604259, 48.316025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.317669, 32.830666, 48.392479>,  <31.280603, 33.208012, 48.519901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317669, 32.830666, 48.392479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507791, 0.319969, -0.799855,
		0.856483, -0.087642, 0.508681,
		0.092662, -0.943366, -0.318552,
		31.345467, 32.547657, 48.296913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041912, 33.026363, 48.452835>,  <31.280603, 33.208012, 48.519901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041912, 33.026363, 48.452835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.829762, 32.773884, 48.226456>,  <31.702471, 32.622398, 48.090630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.829762, 32.773884, 48.226456>,  <32.041912, 33.026363, 48.452835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829762, 32.773884, 48.226456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452800, 0.353462, -0.818558,
		0.716711, -0.690401, 0.098339,
		-0.530374, -0.631198, -0.565944,
		31.670649, 32.584526, 48.056671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482422, 32.618038, 48.092842>,  <32.041912, 33.026363, 48.452835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482422, 32.618038, 48.092842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.142403, 32.582165, 47.885235>,  <31.938391, 32.560638, 47.760670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.142403, 32.582165, 47.885235>,  <32.482422, 32.618038, 48.092842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142403, 32.582165, 47.885235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512139, 0.089411, -0.854236,
		0.123024, -0.991948, -0.030068,
		-0.850046, -0.089693, -0.519015,
		31.887388, 32.555260, 47.729530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638973, 32.125797, 47.570873>,  <32.482422, 32.618038, 48.092842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638973, 32.125797, 47.570873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.316666, 32.324905, 47.442524>,  <32.123283, 32.444370, 47.365513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.316666, 32.324905, 47.442524>,  <32.638973, 32.125797, 47.570873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316666, 32.324905, 47.442524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404698, 0.067219, -0.911977,
		-0.432390, -0.864697, -0.255612,
		-0.805766, 0.497775, -0.320876,
		32.074936, 32.474239, 47.346260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499714, 31.858374, 46.957676>,  <32.638973, 32.125797, 47.570873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499714, 31.858374, 46.957676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.279156, 32.192024, 46.963318>,  <32.146820, 32.392216, 46.966702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.279156, 32.192024, 46.963318>,  <32.499714, 31.858374, 46.957676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279156, 32.192024, 46.963318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358208, 0.251995, -0.898991,
		-0.753426, -0.490647, -0.437739,
		-0.551396, 0.834125, 0.014106,
		32.113739, 32.442261, 46.967548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207626, 31.993025, 46.238579>,  <32.499714, 31.858374, 46.957676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207626, 31.993025, 46.238579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193741, 32.349117, 46.420250>,  <32.185410, 32.562775, 46.529255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193741, 32.349117, 46.420250>,  <32.207626, 31.993025, 46.238579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193741, 32.349117, 46.420250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455836, 0.418532, -0.785522,
		-0.889387, 0.179765, -0.420328,
		-0.034712, 0.890233, 0.454181,
		32.183327, 32.616188, 46.556503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893394, 32.403744, 45.813759>,  <32.207626, 31.993025, 46.238579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893394, 32.403744, 45.813759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.134380, 32.629940, 46.039062>,  <32.278973, 32.765656, 46.174244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.134380, 32.629940, 46.039062>,  <31.893394, 32.403744, 45.813759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134380, 32.629940, 46.039062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383141, 0.414180, -0.825625,
		-0.700173, 0.713217, 0.032867,
		0.602463, 0.565488, 0.563260,
		32.315121, 32.799587, 46.208042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972683, 32.984188, 45.405476>,  <31.893394, 32.403744, 45.813759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972683, 32.984188, 45.405476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.255215, 32.994808, 45.688431>,  <32.424732, 33.001179, 45.858204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.255215, 32.994808, 45.688431>,  <31.972683, 32.984188, 45.405476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255215, 32.994808, 45.688431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654944, 0.354674, -0.667274,
		-0.268608, 0.934613, 0.233126,
		0.706327, 0.026551, 0.707388,
		32.467113, 33.002773, 45.900646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058826, 33.683987, 45.444122>,  <31.972683, 32.984188, 45.405476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058826, 33.683987, 45.444122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.354496, 33.424294, 45.515816>,  <32.531898, 33.268478, 45.558830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.354496, 33.424294, 45.515816>,  <32.058826, 33.683987, 45.444122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354496, 33.424294, 45.515816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390294, 0.196014, -0.899583,
		0.548904, 0.734900, 0.398279,
		0.739172, -0.649231, 0.179234,
		32.576248, 33.229523, 45.569588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574684, 34.074936, 45.237751>,  <32.058826, 33.683987, 45.444122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574684, 34.074936, 45.237751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.919262, 34.272652, 45.284393>,  <33.126007, 34.391281, 45.312378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.919262, 34.272652, 45.284393>,  <32.574684, 34.074936, 45.237751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919262, 34.272652, 45.284393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472604, 0.696193, 0.540334,
		0.185902, -0.520574, 0.833333,
		0.861444, 0.494286, 0.116602,
		33.177696, 34.420937, 45.319374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691277, 33.951786, 45.934135>,  <32.574684, 34.074936, 45.237751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691277, 33.951786, 45.934135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867935, 34.277874, 45.784275>,  <32.973930, 34.473526, 45.694359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867935, 34.277874, 45.784275>,  <32.691277, 33.951786, 45.934135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867935, 34.277874, 45.784275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422716, 0.557402, 0.714573,
		0.791366, -0.157216, 0.590781,
		0.441645, 0.815222, -0.374651,
		33.000427, 34.522442, 45.671879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967358, 34.384331, 46.562992>,  <32.691277, 33.951786, 45.934135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967358, 34.384331, 46.562992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.910694, 34.650906, 46.270199>,  <32.876698, 34.810848, 46.094524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.910694, 34.650906, 46.270199>,  <32.967358, 34.384331, 46.562992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910694, 34.650906, 46.270199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373412, 0.648841, 0.663000,
		0.916786, 0.367249, 0.156943,
		-0.141655, 0.666434, -0.731984,
		32.868198, 34.850834, 46.050602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269169, 35.058075, 46.899811>,  <32.967358, 34.384331, 46.562992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269169, 35.058075, 46.899811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.030525, 35.159389, 46.595207>,  <32.887341, 35.220181, 46.412445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.030525, 35.159389, 46.595207>,  <33.269169, 35.058075, 46.899811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030525, 35.159389, 46.595207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467494, 0.661581, 0.586311,
		0.652308, 0.705801, -0.276295,
		-0.596610, 0.253289, -0.761512,
		32.851543, 35.235374, 46.366753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200298, 35.756996, 46.914684>,  <33.269169, 35.058075, 46.899811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200298, 35.756996, 46.914684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.876167, 35.675503, 46.694916>,  <32.681690, 35.626606, 46.563053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.876167, 35.675503, 46.694916>,  <33.200298, 35.756996, 46.914684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876167, 35.675503, 46.694916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520274, 0.681539, 0.514606,
		0.269610, 0.702849, -0.658266,
		-0.810324, -0.203736, -0.549424,
		32.633068, 35.614384, 46.530090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008640, 36.330822, 46.720024>,  <33.200298, 35.756996, 46.914684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008640, 36.330822, 46.720024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.669273, 36.120785, 46.693283>,  <32.465652, 35.994762, 46.677238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.669273, 36.120785, 46.693283>,  <33.008640, 36.330822, 46.720024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669273, 36.120785, 46.693283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456163, 0.661216, 0.595575,
		-0.268524, 0.535793, -0.800513,
		-0.848416, -0.525090, -0.066856,
		32.414749, 35.963257, 46.673225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429359, 36.834396, 46.498955>,  <33.008640, 36.330822, 46.720024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429359, 36.834396, 46.498955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.252087, 36.509438, 46.650528>,  <32.145721, 36.314461, 46.741474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.252087, 36.509438, 46.650528>,  <32.429359, 36.834396, 46.498955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252087, 36.509438, 46.650528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656428, 0.581985, 0.479995,
		-0.610483, -0.036018, -0.791210,
		-0.443184, -0.812401, 0.378935,
		32.119133, 36.265717, 46.764210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798439, 36.992245, 46.397995>,  <32.429359, 36.834396, 46.498955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798439, 36.992245, 46.397995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.795033, 36.711571, 46.682968>,  <31.792988, 36.543167, 46.853954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.795033, 36.711571, 46.682968>,  <31.798439, 36.992245, 46.397995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795033, 36.711571, 46.682968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597670, 0.574772, 0.558953,
		-0.801697, -0.421042, -0.424270,
		-0.008516, -0.701684, 0.712437,
		31.792479, 36.501064, 46.896698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122627, 37.025040, 46.683456>,  <31.798439, 36.992245, 46.397995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122627, 37.025040, 46.683456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.321182, 36.783611, 46.933033>,  <31.440315, 36.638756, 47.082779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.321182, 36.783611, 46.933033>,  <31.122627, 37.025040, 46.683456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321182, 36.783611, 46.933033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614777, 0.263041, 0.743544,
		-0.612902, -0.752673, -0.240489,
		0.496387, -0.603567, 0.623944,
		31.470098, 36.602543, 47.120216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542582, 36.979595, 47.202244>,  <31.122627, 37.025040, 46.683456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542582, 36.979595, 47.202244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890732, 36.863400, 47.361271>,  <31.099623, 36.793682, 47.456688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890732, 36.863400, 47.361271>,  <30.542582, 36.979595, 47.202244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890732, 36.863400, 47.361271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301795, 0.323250, 0.896900,
		-0.389057, -0.900624, 0.193679,
		0.870376, -0.290494, 0.397566,
		31.151844, 36.776253, 47.480541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381163, 36.598946, 47.742455>,  <30.542582, 36.979595, 47.202244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381163, 36.598946, 47.742455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.743914, 36.753143, 47.810535>,  <30.961565, 36.845661, 47.851383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.743914, 36.753143, 47.810535>,  <30.381163, 36.598946, 47.742455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743914, 36.753143, 47.810535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380930, 0.577262, 0.722261,
		0.180174, -0.719838, 0.670351,
		0.906880, 0.385489, 0.170200,
		31.015978, 36.868790, 47.861595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506416, 36.517689, 48.479603>,  <30.381163, 36.598946, 47.742455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506416, 36.517689, 48.479603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.785542, 36.786316, 48.379959>,  <30.953016, 36.947491, 48.320171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.785542, 36.786316, 48.379959>,  <30.506416, 36.517689, 48.479603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785542, 36.786316, 48.379959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128548, 0.459551, 0.878799,
		0.704652, -0.581214, 0.407008,
		0.697811, 0.671568, -0.249110,
		30.994884, 36.987785, 48.305225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165573, 36.478329, 48.950333>,  <30.506416, 36.517689, 48.479603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165573, 36.478329, 48.950333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.172247, 36.836189, 48.771751>,  <31.176250, 37.050907, 48.664604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.172247, 36.836189, 48.771751>,  <31.165573, 36.478329, 48.950333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172247, 36.836189, 48.771751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033330, 0.446763, 0.894031,
		0.999305, -0.000034, 0.037272,
		0.016682, 0.894653, -0.446451,
		31.177252, 37.104584, 48.637817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670319, 36.954506, 49.334869>,  <31.165573, 36.478329, 48.950333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670319, 36.954506, 49.334869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.448334, 37.224472, 49.140343>,  <31.315142, 37.386452, 49.023628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.448334, 37.224472, 49.140343>,  <31.670319, 36.954506, 49.334869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448334, 37.224472, 49.140343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236226, 0.432674, 0.870052,
		0.797630, 0.597726, -0.080685,
		-0.554963, 0.674920, -0.486312,
		31.281845, 37.426949, 48.994450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800161, 37.536221, 49.684517>,  <31.670319, 36.954506, 49.334869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800161, 37.536221, 49.684517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456852, 37.607830, 49.492134>,  <31.250866, 37.650795, 49.376705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456852, 37.607830, 49.492134>,  <31.800161, 37.536221, 49.684517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456852, 37.607830, 49.492134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403837, 0.342699, 0.848217,
		0.316678, 0.922229, -0.221831,
		-0.858272, 0.179028, -0.480955,
		31.199369, 37.661537, 49.347847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638254, 38.246708, 49.841839>,  <31.800161, 37.536221, 49.684517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638254, 38.246708, 49.841839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.310890, 38.041428, 49.738430>,  <31.114471, 37.918259, 49.676384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.310890, 38.041428, 49.738430>,  <31.638254, 38.246708, 49.841839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310890, 38.041428, 49.738430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465455, 0.328209, 0.821967,
		-0.336983, 0.793037, -0.507480,
		-0.818409, -0.513198, -0.258523,
		31.065367, 37.887466, 49.660873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786938, 38.941666, 50.196419>,  <31.638254, 38.246708, 49.841839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786938, 38.941666, 50.196419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.083210, 38.882515, 50.458572>,  <32.260975, 38.847027, 50.615864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.083210, 38.882515, 50.458572>,  <31.786938, 38.941666, 50.196419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083210, 38.882515, 50.458572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666249, 0.035900, -0.744865,
		0.086617, 0.988355, 0.125111,
		0.740682, -0.147873, 0.655380,
		32.305416, 38.838154, 50.655186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301609, 39.447277, 50.149269>,  <31.786938, 38.941666, 50.196419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301609, 39.447277, 50.149269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.483540, 39.128143, 50.307560>,  <32.592697, 38.936665, 50.402534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.483540, 39.128143, 50.307560>,  <32.301609, 39.447277, 50.149269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483540, 39.128143, 50.307560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681111, 0.025344, -0.731742,
		0.573777, 0.602349, 0.554938,
		0.454828, -0.797831, 0.395725,
		32.619987, 38.888794, 50.426277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013424, 39.610985, 50.113087>,  <32.301609, 39.447277, 50.149269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013424, 39.610985, 50.113087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.022991, 39.220669, 50.200043>,  <33.028732, 38.986477, 50.252216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.022991, 39.220669, 50.200043>,  <33.013424, 39.610985, 50.113087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022991, 39.220669, 50.200043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770354, -0.120603, -0.626107,
		0.637168, 0.182442, 0.748820,
		0.023918, -0.975792, 0.217390,
		33.030167, 38.927933, 50.265259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648426, 39.462833, 50.269756>,  <33.013424, 39.610985, 50.113087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648426, 39.462833, 50.269756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.503155, 39.102375, 50.175064>,  <33.415993, 38.886101, 50.118248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.503155, 39.102375, 50.175064>,  <33.648426, 39.462833, 50.269756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503155, 39.102375, 50.175064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805447, -0.175928, -0.565955,
		0.468359, -0.396217, 0.789716,
		-0.363174, -0.901145, -0.236734,
		33.394203, 38.832031, 50.104042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095798, 39.039986, 50.535023>,  <33.648426, 39.462833, 50.269756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095798, 39.039986, 50.535023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906120, 38.865650, 50.229034>,  <33.792313, 38.761047, 50.045441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906120, 38.865650, 50.229034>,  <34.095798, 39.039986, 50.535023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906120, 38.865650, 50.229034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879998, -0.207714, -0.427152,
		0.027276, -0.875726, 0.482038,
		-0.474193, -0.435843, -0.764971,
		33.763863, 38.734898, 49.999542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495693, 38.462765, 50.379059>,  <34.095798, 39.039986, 50.535023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495693, 38.462765, 50.379059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.250198, 38.479698, 50.063709>,  <34.102901, 38.489857, 49.874500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.250198, 38.479698, 50.063709>,  <34.495693, 38.462765, 50.379059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250198, 38.479698, 50.063709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769114, -0.193460, -0.609127,
		-0.178304, -0.980194, 0.086176,
		-0.613735, 0.042330, -0.788377,
		34.066078, 38.492397, 49.827198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704704, 37.921124, 49.955212>,  <34.495693, 38.462765, 50.379059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704704, 37.921124, 49.955212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.520905, 38.185390, 49.717770>,  <34.410625, 38.343952, 49.575302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.520905, 38.185390, 49.717770>,  <34.704704, 37.921124, 49.955212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520905, 38.185390, 49.717770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817630, 0.053610, -0.573243,
		-0.346902, -0.748758, -0.564819,
		-0.459501, 0.660672, -0.593609,
		34.383053, 38.383591, 49.539688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597080, 37.609337, 49.273941>,  <34.704704, 37.921124, 49.955212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597080, 37.609337, 49.273941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597610, 38.007664, 49.237408>,  <34.597927, 38.246662, 49.215488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597610, 38.007664, 49.237408>,  <34.597080, 37.609337, 49.273941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597610, 38.007664, 49.237408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663640, -0.069199, -0.744844,
		-0.748051, -0.059631, -0.660957,
		0.001322, 0.995819, -0.091338,
		34.598007, 38.306408, 49.210007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577305, 37.775848, 48.507305>,  <34.597080, 37.609337, 49.273941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577305, 37.775848, 48.507305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724747, 38.095348, 48.697517>,  <34.813210, 38.287048, 48.811646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724747, 38.095348, 48.697517>,  <34.577305, 37.775848, 48.507305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724747, 38.095348, 48.697517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692516, 0.105307, -0.713675,
		-0.620125, 0.592377, -0.514330,
		0.368602, 0.798749, 0.475534,
		34.835327, 38.334972, 48.840179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908226, 38.156719, 47.940689>,  <34.577305, 37.775848, 48.507305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908226, 38.156719, 47.940689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.044163, 38.385323, 48.239456>,  <35.125725, 38.522484, 48.418716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.044163, 38.385323, 48.239456>,  <34.908226, 38.156719, 47.940689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044163, 38.385323, 48.239456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804895, 0.234050, -0.545311,
		-0.486467, 0.786509, -0.380465,
		0.339844, 0.571511, 0.746915,
		35.146114, 38.556774, 48.463531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129810, 38.875233, 47.636368>,  <34.908226, 38.156719, 47.940689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129810, 38.875233, 47.636368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326447, 38.822155, 47.980629>,  <35.444427, 38.790310, 48.187187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326447, 38.822155, 47.980629>,  <35.129810, 38.875233, 47.636368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326447, 38.822155, 47.980629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837668, 0.342178, -0.425707,
		-0.238010, 0.930219, 0.279364,
		0.491593, -0.132691, 0.860656,
		35.473923, 38.782349, 48.238827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491299, 39.467590, 47.749954>,  <35.129810, 38.875233, 47.636368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491299, 39.467590, 47.749954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673908, 39.182106, 47.962448>,  <35.783474, 39.010815, 48.089943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673908, 39.182106, 47.962448>,  <35.491299, 39.467590, 47.749954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673908, 39.182106, 47.962448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885885, 0.309309, -0.345740,
		0.082444, 0.628447, 0.773471,
		0.456521, -0.713710, 0.531231,
		35.810863, 38.967995, 48.121819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.028322, 36.636265, 55.490623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.717522, 36.873524, 55.574955>,  <30.531042, 37.015881, 55.625553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.717522, 36.873524, 55.574955>,  <31.028322, 36.636265, 55.490623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717522, 36.873524, 55.574955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036058, 0.376297, -0.925797,
		-0.628467, -0.711743, -0.313770,
		-0.777000, 0.593147, 0.210826,
		30.484421, 37.051468, 55.638203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564075, 36.504345, 54.863682>,  <31.028322, 36.636265, 55.490623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564075, 36.504345, 54.863682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.497368, 36.863522, 55.026604>,  <30.457344, 37.079025, 55.124355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.497368, 36.863522, 55.026604>,  <30.564075, 36.504345, 54.863682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497368, 36.863522, 55.026604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016696, 0.415602, -0.909393,
		-0.985855, -0.144856, -0.084301,
		-0.166767, 0.897938, 0.407305,
		30.447338, 37.132904, 55.148796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090460, 36.860195, 54.391296>,  <30.564075, 36.504345, 54.863682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090460, 36.860195, 54.391296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.290855, 37.137901, 54.597988>,  <30.411093, 37.304523, 54.722004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.290855, 37.137901, 54.597988>,  <30.090460, 36.860195, 54.391296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290855, 37.137901, 54.597988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170031, 0.506467, -0.845329,
		-0.848586, 0.511361, 0.135689,
		0.500990, 0.694263, 0.516728,
		30.441153, 37.346180, 54.753006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986071, 37.508846, 53.948612>,  <30.090460, 36.860195, 54.391296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986071, 37.508846, 53.948612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283674, 37.584442, 54.204967>,  <30.462236, 37.629799, 54.358780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283674, 37.584442, 54.204967>,  <29.986071, 37.508846, 53.948612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283674, 37.584442, 54.204967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407758, 0.631426, -0.659572,
		-0.529326, 0.752053, 0.392723,
		0.744008, 0.188992, 0.640885,
		30.506876, 37.641140, 54.397232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148760, 38.225246, 53.809795>,  <29.986071, 37.508846, 53.948612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148760, 38.225246, 53.809795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.467020, 38.087437, 54.009090>,  <30.657976, 38.004749, 54.128670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.467020, 38.087437, 54.009090>,  <30.148760, 38.225246, 53.809795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467020, 38.087437, 54.009090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605467, 0.426785, -0.671762,
		0.018797, 0.836155, 0.548170,
		0.795649, -0.344526, 0.498242,
		30.705715, 37.984077, 54.158562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600658, 38.848457, 54.011742>,  <30.148760, 38.225246, 53.809795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600658, 38.848457, 54.011742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.839600, 38.527821, 54.021732>,  <30.982964, 38.335438, 54.027729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.839600, 38.527821, 54.021732>,  <30.600658, 38.848457, 54.011742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839600, 38.527821, 54.021732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585622, 0.414706, -0.696466,
		0.547921, 0.430665, 0.717155,
		0.597352, -0.801590, 0.024981,
		31.018805, 38.287342, 54.029228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243923, 39.153618, 53.961746>,  <30.600658, 38.848457, 54.011742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243923, 39.153618, 53.961746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.309725, 38.771503, 53.863468>,  <31.349205, 38.542236, 53.804501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.309725, 38.771503, 53.863468>,  <31.243923, 39.153618, 53.961746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309725, 38.771503, 53.863468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555737, 0.295553, -0.777048,
		0.814920, -0.008717, 0.579508,
		0.164502, -0.955286, -0.245697,
		31.359076, 38.484917, 53.789761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970675, 39.097820, 53.720116>,  <31.243923, 39.153618, 53.961746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970675, 39.097820, 53.720116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.801105, 38.773087, 53.559509>,  <31.699364, 38.578247, 53.463146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.801105, 38.773087, 53.559509>,  <31.970675, 39.097820, 53.720116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801105, 38.773087, 53.559509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380498, 0.242662, -0.892377,
		0.821896, -0.531072, 0.206033,
		-0.423921, -0.811836, -0.401515,
		31.673929, 38.529537, 53.439056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448425, 38.807293, 53.308956>,  <31.970675, 39.097820, 53.720116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448425, 38.807293, 53.308956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.106060, 38.653614, 53.170506>,  <31.900640, 38.561405, 53.087437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.106060, 38.653614, 53.170506>,  <32.448425, 38.807293, 53.308956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106060, 38.653614, 53.170506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351725, 0.058144, -0.934296,
		0.379084, -0.921416, 0.085367,
		-0.855912, -0.384202, -0.346126,
		31.849287, 38.538353, 53.066669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683563, 38.423927, 52.753925>,  <32.448425, 38.807293, 53.308956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683563, 38.423927, 52.753925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.290699, 38.471867, 52.695969>,  <32.054981, 38.500629, 52.661194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.290699, 38.471867, 52.695969>,  <32.683563, 38.423927, 52.753925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290699, 38.471867, 52.695969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150853, 0.042210, -0.987655,
		-0.112258, -0.991894, -0.059537,
		-0.982162, 0.119853, -0.144891,
		31.996050, 38.507824, 52.652500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441711, 37.853676, 52.326447>,  <32.683563, 38.423927, 52.753925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441711, 37.853676, 52.326447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.178532, 38.150818, 52.277023>,  <32.020626, 38.329105, 52.247368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.178532, 38.150818, 52.277023>,  <32.441711, 37.853676, 52.326447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178532, 38.150818, 52.277023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109492, -0.067964, -0.991661,
		-0.745062, -0.665989, -0.036620,
		-0.657947, 0.742859, -0.123558,
		31.981148, 38.373676, 52.239956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960390, 37.690647, 51.771091>,  <32.441711, 37.853676, 52.326447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960390, 37.690647, 51.771091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.937967, 38.090008, 51.768253>,  <31.924515, 38.329624, 51.766548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.937967, 38.090008, 51.768253>,  <31.960390, 37.690647, 51.771091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937967, 38.090008, 51.768253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187025, 0.003517, -0.982349,
		-0.980755, -0.056394, -0.186923,
		-0.056056, 0.998402, -0.007097,
		31.921150, 38.389530, 51.766125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574673, 37.869427, 51.126499>,  <31.960390, 37.690647, 51.771091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574673, 37.869427, 51.126499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.772354, 38.191940, 51.256523>,  <31.890963, 38.385448, 51.334538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.772354, 38.191940, 51.256523>,  <31.574673, 37.869427, 51.126499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772354, 38.191940, 51.256523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143108, 0.293356, -0.945231,
		-0.857485, 0.513657, 0.029592,
		0.494206, 0.806287, 0.325057,
		31.920616, 38.433826, 51.354038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402227, 38.421444, 50.639713>,  <31.574673, 37.869427, 51.126499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402227, 38.421444, 50.639713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.729670, 38.545238, 50.833252>,  <31.926134, 38.619514, 50.949375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.729670, 38.545238, 50.833252>,  <31.402227, 38.421444, 50.639713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729670, 38.545238, 50.833252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377251, 0.345488, -0.859255,
		-0.433094, 0.885920, 0.166062,
		0.818603, 0.309491, 0.483843,
		31.975250, 38.638084, 50.978405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948952, 38.618073, 50.174335>,  <31.402227, 38.421444, 50.639713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948952, 38.618073, 50.174335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.793442, 38.264637, 50.069927>,  <30.700136, 38.052578, 50.007282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.793442, 38.264637, 50.069927>,  <30.948952, 38.618073, 50.174335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793442, 38.264637, 50.069927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504663, -0.032796, 0.862694,
		-0.770824, 0.467120, -0.433162,
		-0.388775, -0.883585, -0.261018,
		30.676809, 37.999561, 49.991623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171730, 38.709972, 50.260021>,  <30.948952, 38.618073, 50.174335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171730, 38.709972, 50.260021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.264587, 38.322212, 50.291962>,  <30.320301, 38.089558, 50.311127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.264587, 38.322212, 50.291962>,  <30.171730, 38.709972, 50.260021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264587, 38.322212, 50.291962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626721, -0.086292, 0.774451,
		-0.743862, -0.229826, -0.627574,
		0.232144, -0.969398, 0.079848,
		30.334230, 38.031391, 50.315914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567547, 38.374142, 50.308128>,  <30.171730, 38.709972, 50.260021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567547, 38.374142, 50.308128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.802553, 38.075188, 50.432224>,  <29.943558, 37.895817, 50.506680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.802553, 38.075188, 50.432224>,  <29.567547, 38.374142, 50.308128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802553, 38.075188, 50.432224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675186, -0.241434, 0.697018,
		-0.446037, -0.618976, -0.646467,
		0.587516, -0.747381, 0.310235,
		29.978807, 37.850975, 50.525295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132938, 37.765148, 50.339420>,  <29.567547, 38.374142, 50.308128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132938, 37.765148, 50.339420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.446526, 37.692619, 50.576916>,  <29.634678, 37.649101, 50.719414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.446526, 37.692619, 50.576916>,  <29.132938, 37.765148, 50.339420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446526, 37.692619, 50.576916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619807, -0.282765, 0.732040,
		0.035155, -0.941896, -0.334061,
		0.783967, -0.181318, 0.593734,
		29.681715, 37.638226, 50.755035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965353, 37.012234, 50.582855>,  <29.132938, 37.765148, 50.339420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965353, 37.012234, 50.582855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.247303, 37.156502, 50.827175>,  <29.416473, 37.243061, 50.973766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.247303, 37.156502, 50.827175>,  <28.965353, 37.012234, 50.582855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247303, 37.156502, 50.827175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457048, -0.427577, 0.779926,
		0.542458, -0.828912, -0.136544,
		0.704873, 0.360670, 0.610796,
		29.458765, 37.264702, 51.010414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144548, 36.492939, 51.084702>,  <28.965353, 37.012234, 50.582855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144548, 36.492939, 51.084702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.266459, 36.835583, 51.251240>,  <29.339605, 37.041168, 51.351162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.266459, 36.835583, 51.251240>,  <29.144548, 36.492939, 51.084702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266459, 36.835583, 51.251240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359840, -0.301174, 0.883068,
		0.881832, -0.418953, 0.216450,
		0.304775, 0.856605, 0.416341,
		29.357891, 37.092564, 51.376141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464220, 36.318775, 51.710960>,  <29.144548, 36.492939, 51.084702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464220, 36.318775, 51.710960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.383410, 36.708981, 51.745724>,  <29.334923, 36.943104, 51.766582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.383410, 36.708981, 51.745724>,  <29.464220, 36.318775, 51.710960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383410, 36.708981, 51.745724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227714, -0.133094, 0.964589,
		0.952540, 0.175081, 0.249027,
		-0.202025, 0.975517, 0.086908,
		29.322802, 37.001637, 51.771797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788027, 36.671806, 52.323738>,  <29.464220, 36.318775, 51.710960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788027, 36.671806, 52.323738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449739, 36.867699, 52.238956>,  <29.246767, 36.985233, 52.188087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449739, 36.867699, 52.238956>,  <29.788027, 36.671806, 52.323738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449739, 36.867699, 52.238956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337135, -0.182459, 0.923606,
		0.413645, 0.852568, 0.319414,
		-0.845717, 0.489731, -0.211957,
		29.196024, 37.014618, 52.175369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742762, 37.055462, 52.885582>,  <29.788027, 36.671806, 52.323738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742762, 37.055462, 52.885582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388090, 37.057396, 52.700638>,  <29.175287, 37.058556, 52.589672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388090, 37.057396, 52.700638>,  <29.742762, 37.055462, 52.885582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388090, 37.057396, 52.700638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460280, -0.104608, 0.881589,
		-0.044105, 0.994502, 0.094979,
		-0.886678, 0.004834, -0.462363,
		29.122087, 37.058846, 52.561928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302635, 37.574707, 53.289604>,  <29.742762, 37.055462, 52.885582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302635, 37.574707, 53.289604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.052647, 37.355530, 53.067196>,  <28.902653, 37.224022, 52.933750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.052647, 37.355530, 53.067196>,  <29.302635, 37.574707, 53.289604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052647, 37.355530, 53.067196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621807, -0.081213, 0.778948,
		-0.471979, 0.832561, -0.289962,
		-0.624973, -0.547948, -0.556023,
		28.865154, 37.191147, 52.900391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599157, 37.865215, 53.301228>,  <29.302635, 37.574707, 53.289604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599157, 37.865215, 53.301228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.563778, 37.486080, 53.178734>,  <28.542549, 37.258598, 53.105236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.563778, 37.486080, 53.178734>,  <28.599157, 37.865215, 53.301228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563778, 37.486080, 53.178734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689485, -0.163622, 0.705576,
		-0.718879, 0.273554, -0.639048,
		-0.088451, -0.947838, -0.306236,
		28.537243, 37.201729, 53.086864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955843, 37.608719, 53.393173>,  <28.599157, 37.865215, 53.301228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955843, 37.608719, 53.393173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108309, 37.245132, 53.325657>,  <28.199787, 37.026981, 53.285149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108309, 37.245132, 53.325657>,  <27.955843, 37.608719, 53.393173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108309, 37.245132, 53.325657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702449, -0.403440, 0.586345,
		-0.601065, -0.104929, -0.792282,
		0.381163, -0.908969, -0.168787,
		28.222658, 36.972443, 53.275021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454124, 37.213127, 53.108898>,  <27.955843, 37.608719, 53.393173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454124, 37.213127, 53.108898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719780, 36.981262, 53.297752>,  <27.879173, 36.842144, 53.411064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719780, 36.981262, 53.297752>,  <27.454124, 37.213127, 53.108898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719780, 36.981262, 53.297752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673230, -0.189100, 0.714844,
		-0.325088, -0.792611, -0.515835,
		0.664137, -0.579663, 0.472136,
		27.919022, 36.807362, 53.439392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013412, 36.777607, 53.364281>,  <27.454124, 37.213127, 53.108898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013412, 36.777607, 53.364281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.350086, 36.690907, 53.562103>,  <27.552090, 36.638885, 53.680798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.350086, 36.690907, 53.562103>,  <27.013412, 36.777607, 53.364281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350086, 36.690907, 53.562103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538687, -0.273876, 0.796749,
		-0.037250, -0.937022, -0.347279,
		0.841682, -0.216754, 0.494559,
		27.602591, 36.625881, 53.710472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.474064, 33.258610, 56.136147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.193455, 33.520592, 56.023785>,  <31.025089, 33.677780, 55.956367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.193455, 33.520592, 56.023785>,  <31.474064, 33.258610, 56.136147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193455, 33.520592, 56.023785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465076, 0.122093, -0.876811,
		-0.539972, -0.745743, -0.390252,
		-0.701523, 0.654951, -0.280900,
		30.982998, 33.717075, 55.939514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225626, 33.004028, 55.520859>,  <31.474064, 33.258610, 56.136147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225626, 33.004028, 55.520859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.112448, 33.387535, 55.510262>,  <31.044540, 33.617641, 55.503902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.112448, 33.387535, 55.510262>,  <31.225626, 33.004028, 55.520859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112448, 33.387535, 55.510262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378928, 0.086370, -0.921387,
		-0.881110, -0.270741, -0.387743,
		-0.282946, 0.958770, -0.026489,
		31.027563, 33.675167, 55.502316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946264, 33.014042, 54.836231>,  <31.225626, 33.004028, 55.520859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946264, 33.014042, 54.836231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.042690, 33.379665, 54.966698>,  <31.100546, 33.599041, 55.044979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.042690, 33.379665, 54.966698>,  <30.946264, 33.014042, 54.836231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042690, 33.379665, 54.966698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479107, 0.180189, -0.859063,
		-0.844006, 0.363357, -0.394495,
		0.241063, 0.914059, 0.326168,
		31.115009, 33.653885, 55.064548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850134, 33.357620, 54.284008>,  <30.946264, 33.014042, 54.836231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850134, 33.357620, 54.284008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.090265, 33.621235, 54.465233>,  <31.234344, 33.779404, 54.573967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.090265, 33.621235, 54.465233>,  <30.850134, 33.357620, 54.284008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090265, 33.621235, 54.465233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428122, 0.213675, -0.878097,
		-0.675510, 0.721116, -0.153874,
		0.600330, 0.659041, 0.453066,
		31.270365, 33.818947, 54.601154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973232, 33.884838, 53.742107>,  <30.850134, 33.357620, 54.284008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973232, 33.884838, 53.742107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.256109, 33.902264, 54.024380>,  <31.425835, 33.912720, 54.193741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.256109, 33.902264, 54.024380>,  <30.973232, 33.884838, 53.742107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256109, 33.902264, 54.024380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664074, 0.301641, -0.684119,
		-0.242664, 0.952426, 0.184389,
		0.707192, 0.043563, 0.705678,
		31.468267, 33.915333, 54.236084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272118, 34.572029, 53.773148>,  <30.973232, 33.884838, 53.742107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272118, 34.572029, 53.773148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530655, 34.302811, 53.916950>,  <31.685778, 34.141277, 54.003231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530655, 34.302811, 53.916950>,  <31.272118, 34.572029, 53.773148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530655, 34.302811, 53.916950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674269, 0.283225, -0.682015,
		0.357209, 0.683219, 0.636877,
		0.646345, -0.673049, 0.359503,
		31.724558, 34.100895, 54.024799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842566, 34.874226, 53.466721>,  <31.272118, 34.572029, 53.773148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842566, 34.874226, 53.466721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.980593, 34.524544, 53.603359>,  <32.063408, 34.314735, 53.685341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.980593, 34.524544, 53.603359>,  <31.842566, 34.874226, 53.466721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980593, 34.524544, 53.603359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779743, 0.064435, -0.622775,
		0.522425, 0.481256, 0.703893,
		0.345070, -0.874209, 0.341594,
		32.084114, 34.262280, 53.705837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571091, 34.953617, 53.648941>,  <31.842566, 34.874226, 53.466721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571091, 34.953617, 53.648941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507805, 34.560829, 53.607540>,  <32.469833, 34.325157, 53.582699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507805, 34.560829, 53.607540>,  <32.571091, 34.953617, 53.648941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507805, 34.560829, 53.607540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874594, -0.090709, -0.476295,
		0.458317, -0.165876, 0.873173,
		-0.158210, -0.981966, -0.103500,
		32.460342, 34.266239, 53.576488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245777, 34.671494, 53.723213>,  <32.571091, 34.953617, 53.648941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245777, 34.671494, 53.723213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034302, 34.393669, 53.528042>,  <32.907417, 34.226974, 53.410938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034302, 34.393669, 53.528042>,  <33.245777, 34.671494, 53.723213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034302, 34.393669, 53.528042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806804, -0.232580, -0.543116,
		0.263743, -0.680803, 0.683336,
		-0.528685, -0.694561, -0.487933,
		32.875698, 34.185303, 53.381660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629211, 34.038845, 53.762779>,  <33.245777, 34.671494, 53.723213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629211, 34.038845, 53.762779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.378342, 33.989300, 53.455193>,  <33.227818, 33.959572, 53.270641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.378342, 33.989300, 53.455193>,  <33.629211, 34.038845, 53.762779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378342, 33.989300, 53.455193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724812, -0.454234, -0.517995,
		-0.285128, -0.882229, 0.374665,
		-0.627176, -0.123867, -0.768965,
		33.190189, 33.952141, 53.224503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686665, 33.368214, 53.667076>,  <33.629211, 34.038845, 53.762779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686665, 33.368214, 53.667076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.549847, 33.501488, 53.315624>,  <33.467754, 33.581451, 53.104752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.549847, 33.501488, 53.315624>,  <33.686665, 33.368214, 53.667076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549847, 33.501488, 53.315624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800305, -0.386728, -0.458206,
		-0.492458, -0.859901, -0.134370,
		-0.342047, 0.333184, -0.878630,
		33.447231, 33.601444, 53.052036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712711, 32.761955, 53.295403>,  <33.686665, 33.368214, 53.667076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712711, 32.761955, 53.295403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.681011, 33.048389, 53.018005>,  <33.661991, 33.220249, 52.851566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.681011, 33.048389, 53.018005>,  <33.712711, 32.761955, 53.295403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681011, 33.048389, 53.018005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667937, -0.478277, -0.570185,
		-0.739987, -0.508396, -0.440401,
		-0.079246, 0.716089, -0.693496,
		33.657238, 33.263218, 52.809956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684528, 32.470867, 52.592808>,  <33.712711, 32.761955, 53.295403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684528, 32.470867, 52.592808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.787502, 32.854424, 52.545063>,  <33.849285, 33.084557, 52.516415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.787502, 32.854424, 52.545063>,  <33.684528, 32.470867, 52.592808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787502, 32.854424, 52.545063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680521, -0.267608, -0.682112,
		-0.686016, 0.094370, -0.721440,
		0.257434, 0.958895, -0.119362,
		33.864731, 33.142094, 52.509254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777855, 32.605736, 51.904305>,  <33.684528, 32.470867, 52.592808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777855, 32.605736, 51.904305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993729, 32.903873, 52.060871>,  <34.123253, 33.082756, 52.154812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993729, 32.903873, 52.060871>,  <33.777855, 32.605736, 51.904305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993729, 32.903873, 52.060871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817811, -0.353789, -0.453893,
		-0.199825, 0.565066, -0.800481,
		0.539681, 0.745342, 0.391421,
		34.155632, 33.127476, 52.178299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141033, 32.490631, 51.427685>,  <33.777855, 32.605736, 51.904305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141033, 32.490631, 51.427685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244217, 32.130611, 51.287186>,  <33.306129, 31.914600, 51.202888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244217, 32.130611, 51.287186>,  <33.141033, 32.490631, 51.427685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244217, 32.130611, 51.287186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601876, -0.434091, 0.670306,
		-0.755778, 0.038492, -0.653695,
		0.257962, -0.900046, -0.351244,
		33.321606, 31.860598, 51.181812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544315, 32.192959, 51.394737>,  <33.141033, 32.490631, 51.427685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544315, 32.192959, 51.394737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.790127, 31.877405, 51.393135>,  <32.937614, 31.688074, 51.392174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.790127, 31.877405, 51.393135>,  <32.544315, 32.192959, 51.394737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790127, 31.877405, 51.393135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636917, -0.499139, 0.587534,
		-0.465496, -0.358505, -0.809189,
		0.614532, -0.788882, -0.004010,
		32.974487, 31.640741, 51.391933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109898, 31.588383, 51.360012>,  <32.544315, 32.192959, 51.394737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109898, 31.588383, 51.360012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468304, 31.499458, 51.513760>,  <32.683346, 31.446104, 51.606007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468304, 31.499458, 51.513760>,  <32.109898, 31.588383, 51.360012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468304, 31.499458, 51.513760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438875, -0.311894, 0.842681,
		-0.067452, -0.923743, -0.377026,
		0.896013, -0.222308, 0.384370,
		32.737106, 31.432766, 51.629070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074024, 30.901552, 51.575554>,  <32.109898, 31.588383, 51.360012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074024, 30.901552, 51.575554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366714, 31.065453, 51.793430>,  <32.542328, 31.163794, 51.924156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366714, 31.065453, 51.793430>,  <32.074024, 30.901552, 51.575554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366714, 31.065453, 51.793430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420878, -0.356966, 0.833928,
		0.536138, -0.839452, -0.088745,
		0.731722, 0.409750, 0.544690,
		32.586231, 31.188377, 51.956837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106449, 30.498512, 52.203152>,  <32.074024, 30.901552, 51.575554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106449, 30.498512, 52.203152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.328823, 30.814812, 52.305645>,  <32.462246, 31.004591, 52.367142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.328823, 30.814812, 52.305645>,  <32.106449, 30.498512, 52.203152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328823, 30.814812, 52.305645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262465, -0.125497, 0.956746,
		0.788701, -0.599139, 0.137776,
		0.555933, 0.790748, 0.256233,
		32.495602, 31.052036, 52.382515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476330, 30.240433, 52.820999>,  <32.106449, 30.498512, 52.203152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476330, 30.240433, 52.820999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431633, 30.637878, 52.814796>,  <32.404816, 30.876347, 52.811077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431633, 30.637878, 52.814796>,  <32.476330, 30.240433, 52.820999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431633, 30.637878, 52.814796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485858, -0.041016, 0.873075,
		0.866866, 0.105089, 0.487340,
		-0.111740, 0.993617, -0.015503,
		32.398109, 30.935963, 52.810146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717628, 30.397341, 53.520325>,  <32.476330, 30.240433, 52.820999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717628, 30.397341, 53.520325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.499466, 30.696056, 53.368092>,  <32.368568, 30.875286, 53.276752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.499466, 30.696056, 53.368092>,  <32.717628, 30.397341, 53.520325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499466, 30.696056, 53.368092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592795, -0.022676, 0.805034,
		0.592558, 0.664677, 0.455060,
		-0.545407, 0.746787, -0.380580,
		32.335842, 30.920092, 53.253918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572826, 30.797581, 54.047867>,  <32.717628, 30.397341, 53.520325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572826, 30.797581, 54.047867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287441, 30.930735, 53.801239>,  <32.116211, 31.010626, 53.653263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287441, 30.930735, 53.801239>,  <32.572826, 30.797581, 54.047867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287441, 30.930735, 53.801239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579998, 0.213161, 0.786234,
		0.393153, 0.918559, 0.040989,
		-0.713465, 0.332884, -0.616567,
		32.073402, 31.030600, 53.616268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427055, 31.477339, 54.133163>,  <32.572826, 30.797581, 54.047867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427055, 31.477339, 54.133163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.094078, 31.328630, 53.968807>,  <31.894293, 31.239407, 53.870193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.094078, 31.328630, 53.968807>,  <32.427055, 31.477339, 54.133163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094078, 31.328630, 53.968807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533649, 0.338201, 0.775138,
		-0.149208, 0.864528, -0.479926,
		-0.832440, -0.371769, -0.410892,
		31.844347, 31.217100, 53.845539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892275, 32.014915, 54.241215>,  <32.427055, 31.477339, 54.133163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892275, 32.014915, 54.241215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.668039, 31.694309, 54.157963>,  <31.533499, 31.501945, 54.108013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.668039, 31.694309, 54.157963>,  <31.892275, 32.014915, 54.241215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668039, 31.694309, 54.157963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632952, 0.252670, 0.731798,
		-0.533958, 0.541973, -0.648964,
		-0.560589, -0.801512, -0.208128,
		31.499863, 31.453856, 54.095524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291414, 32.261993, 54.405396>,  <31.892275, 32.014915, 54.241215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291414, 32.261993, 54.405396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215628, 31.869339, 54.396530>,  <31.170156, 31.633745, 54.391212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215628, 31.869339, 54.396530>,  <31.291414, 32.261993, 54.405396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215628, 31.869339, 54.396530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701523, 0.119539, 0.702550,
		-0.686999, 0.148658, -0.711290,
		-0.189466, -0.981637, -0.022164,
		31.158789, 31.574848, 54.389881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632612, 32.227081, 54.294361>,  <31.291414, 32.261993, 54.405396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632612, 32.227081, 54.294361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.748373, 31.878109, 54.451900>,  <30.817829, 31.668726, 54.546425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.748373, 31.878109, 54.451900>,  <30.632612, 32.227081, 54.294361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748373, 31.878109, 54.451900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664345, 0.113153, 0.738811,
		-0.689125, -0.475464, -0.546846,
		0.289401, -0.872428, 0.393849,
		30.835194, 31.616381, 54.570057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115587, 31.999846, 54.657707>,  <30.632612, 32.227081, 54.294361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115587, 31.999846, 54.657707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.381310, 31.736156, 54.798630>,  <30.540743, 31.577942, 54.883183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.381310, 31.736156, 54.798630>,  <30.115587, 31.999846, 54.657707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381310, 31.736156, 54.798630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553078, -0.116462, 0.824949,
		-0.502795, -0.742873, -0.441968,
		0.664305, -0.659224, 0.352310,
		30.580601, 31.538389, 54.904324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723528, 31.387032, 54.783073>,  <30.115587, 31.999846, 54.657707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723528, 31.387032, 54.783073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.060055, 31.396391, 54.999088>,  <30.261971, 31.402006, 55.128696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.060055, 31.396391, 54.999088>,  <29.723528, 31.387032, 54.783073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060055, 31.396391, 54.999088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539196, -0.034100, 0.841489,
		0.038103, -0.999145, -0.016074,
		0.841318, 0.023396, 0.540034,
		30.312450, 31.403410, 55.161098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231724, 30.664238, 54.758846>,  <29.723528, 31.387032, 54.783073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231724, 30.664238, 54.758846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.973526, 30.864193, 54.527866>,  <28.818607, 30.984165, 54.389278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.973526, 30.864193, 54.527866>,  <29.231724, 30.664238, 54.758846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973526, 30.864193, 54.527866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630828, -0.077290, -0.772064,
		-0.430576, -0.862635, -0.265453,
		-0.645492, 0.499887, -0.577453,
		28.779879, 31.014158, 54.354630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131760, 30.189850, 54.146832>,  <29.231724, 30.664238, 54.758846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131760, 30.189850, 54.146832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.049530, 30.563509, 54.030140>,  <29.000193, 30.787704, 53.960125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.049530, 30.563509, 54.030140>,  <29.131760, 30.189850, 54.146832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049530, 30.563509, 54.030140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507132, -0.153265, -0.848131,
		-0.836993, -0.322299, -0.442229,
		-0.205573, 0.934148, -0.291730,
		28.987858, 30.843754, 53.942619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840521, 30.154009, 53.425274>,  <29.131760, 30.189850, 54.146832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840521, 30.154009, 53.425274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.963022, 30.531290, 53.476776>,  <29.036522, 30.757658, 53.507679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.963022, 30.531290, 53.476776>,  <28.840521, 30.154009, 53.425274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963022, 30.531290, 53.476776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235745, 0.055895, -0.970206,
		-0.922298, 0.327481, -0.205237,
		0.306252, 0.943203, 0.128754,
		29.054897, 30.814251, 53.515404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610458, 30.492393, 52.785564>,  <28.840521, 30.154009, 53.425274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610458, 30.492393, 52.785564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.862995, 30.772518, 52.918816>,  <29.014517, 30.940592, 52.998768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.862995, 30.772518, 52.918816>,  <28.610458, 30.492393, 52.785564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862995, 30.772518, 52.918816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134744, 0.323968, -0.936423,
		-0.763709, 0.636090, 0.110171,
		0.631342, 0.700310, 0.333127,
		29.052397, 30.982611, 53.018753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293575, 31.077940, 52.521866>,  <28.610458, 30.492393, 52.785564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293575, 31.077940, 52.521866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.672733, 31.166798, 52.613205>,  <28.900229, 31.220112, 52.668011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.672733, 31.166798, 52.613205>,  <28.293575, 31.077940, 52.521866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672733, 31.166798, 52.613205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136371, 0.364854, -0.921024,
		-0.287913, 0.904176, 0.315550,
		0.947897, 0.222143, 0.228350,
		28.957102, 31.233440, 52.681709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429050, 31.695553, 52.159195>,  <28.293575, 31.077940, 52.521866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429050, 31.695553, 52.159195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.790497, 31.539497, 52.229931>,  <29.007364, 31.445864, 52.272373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.790497, 31.539497, 52.229931>,  <28.429050, 31.695553, 52.159195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790497, 31.539497, 52.229931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207646, 0.037886, -0.977470,
		0.374651, 0.919976, 0.115246,
		0.903615, -0.390141, 0.176835,
		29.061581, 31.422455, 52.282982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886290, 32.167557, 51.884785>,  <28.429050, 31.695553, 52.159195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886290, 32.167557, 51.884785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.077890, 31.819389, 51.930271>,  <29.192850, 31.610489, 51.957561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.077890, 31.819389, 51.930271>,  <28.886290, 32.167557, 51.884785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077890, 31.819389, 51.930271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434623, 0.122613, -0.892227,
		0.762668, 0.476800, 0.437035,
		0.479000, -0.870418, 0.113715,
		29.221590, 31.558264, 51.964386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588394, 32.314419, 51.938805>,  <28.886290, 32.167557, 51.884785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588394, 32.314419, 51.938805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.573727, 31.934868, 51.813400>,  <29.564926, 31.707138, 51.738159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.573727, 31.934868, 51.813400>,  <29.588394, 32.314419, 51.938805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573727, 31.934868, 51.813400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612440, 0.226567, -0.757354,
		0.789666, -0.219777, 0.572822,
		-0.036666, -0.948876, -0.313512,
		29.562727, 31.650206, 51.719345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267763, 31.993595, 51.699936>,  <29.588394, 32.314419, 51.938805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267763, 31.993595, 51.699936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.024391, 31.731598, 51.520695>,  <29.878368, 31.574400, 51.413151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.024391, 31.731598, 51.520695>,  <30.267763, 31.993595, 51.699936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024391, 31.731598, 51.520695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608333, -0.022322, -0.793368,
		0.509650, -0.755303, 0.412037,
		-0.608431, -0.654995, -0.448099,
		29.841862, 31.535099, 51.386265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707638, 31.427090, 51.436092>,  <30.267763, 31.993595, 51.699936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707638, 31.427090, 51.436092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.370436, 31.425013, 51.220940>,  <30.168116, 31.423765, 51.091846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.370436, 31.425013, 51.220940>,  <30.707638, 31.427090, 51.436092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370436, 31.425013, 51.220940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533038, 0.126196, -0.836627,
		0.072227, -0.991992, -0.103614,
		-0.843003, -0.005197, -0.537884,
		30.117535, 31.423454, 51.059574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793203, 30.887995, 50.834393>,  <30.707638, 31.427090, 51.436092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793203, 30.887995, 50.834393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.501619, 31.139442, 50.725983>,  <30.326670, 31.290312, 50.660934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.501619, 31.139442, 50.725983>,  <30.793203, 30.887995, 50.834393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501619, 31.139442, 50.725983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401132, 0.071425, -0.913231,
		-0.554716, -0.774427, -0.304225,
		-0.728960, 0.628619, -0.271027,
		30.282932, 31.328028, 50.644676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642075, 30.584715, 50.199329>,  <30.793203, 30.887995, 50.834393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642075, 30.584715, 50.199329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.462004, 30.941891, 50.199955>,  <30.353962, 31.156197, 50.200329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.462004, 30.941891, 50.199955>,  <30.642075, 30.584715, 50.199329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462004, 30.941891, 50.199955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309946, 0.157903, -0.937550,
		-0.837421, -0.421579, -0.347847,
		-0.450178, 0.892938, 0.001565,
		30.326950, 31.209772, 50.200424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105265, 30.698454, 49.530201>,  <30.642075, 30.584715, 50.199329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105265, 30.698454, 49.530201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.220251, 31.049778, 49.683006>,  <30.289244, 31.260572, 49.774689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.220251, 31.049778, 49.683006>,  <30.105265, 30.698454, 49.530201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220251, 31.049778, 49.683006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396808, 0.253795, -0.882117,
		-0.871726, 0.405165, -0.275563,
		0.287466, 0.878310, 0.382013,
		30.306492, 31.313271, 49.797611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919052, 31.229422, 49.085659>,  <30.105265, 30.698454, 49.530201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919052, 31.229422, 49.085659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.189444, 31.436377, 49.295559>,  <30.351679, 31.560549, 49.421497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.189444, 31.436377, 49.295559>,  <29.919052, 31.229422, 49.085659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189444, 31.436377, 49.295559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288622, 0.469315, -0.834530,
		-0.678049, 0.715579, 0.167918,
		0.675979, 0.517387, 0.524750,
		30.392237, 31.591593, 49.452984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.909079, 36.126392, 53.659786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.170166, 36.343849, 53.870842>,  <27.326818, 36.474323, 53.997475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.170166, 36.343849, 53.870842>,  <26.909079, 36.126392, 53.659786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170166, 36.343849, 53.870842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399970, -0.344211, 0.849437,
		0.643413, -0.765485, -0.007232,
		0.652720, 0.543646, 0.527640,
		27.365982, 36.506943, 54.029133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986773, 35.776020, 54.195728>,  <26.909079, 36.126392, 53.659786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986773, 35.776020, 54.195728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.188719, 36.082432, 54.354885>,  <27.309887, 36.266277, 54.450378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.188719, 36.082432, 54.354885>,  <26.986773, 35.776020, 54.195728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188719, 36.082432, 54.354885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267861, -0.299163, 0.915834,
		0.820585, -0.568953, 0.054151,
		0.504867, 0.766025, 0.397889,
		27.340179, 36.312241, 54.474251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427622, 35.547554, 54.784771>,  <26.986773, 35.776020, 54.195728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427622, 35.547554, 54.784771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.338409, 35.933178, 54.842529>,  <27.284882, 36.164551, 54.877186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.338409, 35.933178, 54.842529>,  <27.427622, 35.547554, 54.784771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338409, 35.933178, 54.842529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144888, -0.179268, 0.973072,
		0.963984, 0.196103, 0.179663,
		-0.223031, 0.964057, 0.144399,
		27.271500, 36.222397, 54.885849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907238, 35.699490, 55.449192>,  <27.427622, 35.547554, 54.784771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907238, 35.699490, 55.449192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.601322, 35.949104, 55.385098>,  <27.417772, 36.098873, 55.346642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.601322, 35.949104, 55.385098>,  <27.907238, 35.699490, 55.449192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601322, 35.949104, 55.385098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316532, -0.147308, 0.937074,
		0.561162, 0.767386, 0.310187,
		-0.764791, 0.624035, -0.160238,
		27.371885, 36.136314, 55.337025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872082, 36.097794, 56.035069>,  <27.907238, 35.699490, 55.449192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872082, 36.097794, 56.035069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.505325, 36.125214, 55.877789>,  <27.285271, 36.141666, 55.783421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.505325, 36.125214, 55.877789>,  <27.872082, 36.097794, 56.035069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505325, 36.125214, 55.877789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388904, 0.068182, 0.918752,
		0.089791, 0.995315, -0.035856,
		-0.916892, 0.068552, -0.393204,
		27.230257, 36.145779, 55.759827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614979, 36.575859, 56.398388>,  <27.872082, 36.097794, 56.035069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614979, 36.575859, 56.398388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.286133, 36.403934, 56.249050>,  <27.088825, 36.300781, 56.159447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.286133, 36.403934, 56.249050>,  <27.614979, 36.575859, 56.398388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286133, 36.403934, 56.249050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488455, 0.195620, 0.850379,
		-0.292466, 0.881474, -0.370765,
		-0.822117, -0.429809, -0.373348,
		27.039497, 36.274990, 56.137047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060833, 37.010517, 56.542355>,  <27.614979, 36.575859, 56.398388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060833, 37.010517, 56.542355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.893187, 36.651222, 56.489426>,  <26.792599, 36.435646, 56.457668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.893187, 36.651222, 56.489426>,  <27.060833, 37.010517, 56.542355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.893187, 36.651222, 56.489426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497293, 0.105169, 0.861185,
		-0.759633, 0.426739, -0.490766,
		-0.419115, -0.898239, -0.132324,
		26.767452, 36.381752, 56.449730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504980, 36.998104, 56.977394>,  <27.060833, 37.010517, 56.542355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504980, 36.998104, 56.977394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.491175, 36.608055, 56.889812>,  <26.482891, 36.374023, 56.837261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.491175, 36.608055, 56.889812>,  <26.504980, 36.998104, 56.977394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491175, 36.608055, 56.889812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501335, -0.172635, 0.847856,
		-0.864565, 0.139032, -0.482906,
		-0.034513, -0.975124, -0.218956,
		26.480822, 36.315517, 56.824127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888248, 36.796509, 57.143944>,  <26.504980, 36.998104, 56.977394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888248, 36.796509, 57.143944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.090157, 36.451221, 57.140800>,  <26.211302, 36.244049, 57.138912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.090157, 36.451221, 57.140800>,  <25.888248, 36.796509, 57.143944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090157, 36.451221, 57.140800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477114, -0.286561, 0.830810,
		-0.719423, -0.415618, -0.556500,
		0.504771, -0.863218, -0.007862,
		26.241589, 36.192257, 57.138443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418951, 36.171486, 57.079693>,  <25.888248, 36.796509, 57.143944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418951, 36.171486, 57.079693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.746040, 36.003620, 57.237282>,  <25.942293, 35.902901, 57.331833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.746040, 36.003620, 57.237282>,  <25.418951, 36.171486, 57.079693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746040, 36.003620, 57.237282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558308, -0.411700, 0.720274,
		-0.140075, -0.808942, -0.570957,
		0.817723, -0.419662, 0.393970,
		25.991358, 35.877720, 57.355473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268606, 35.552868, 56.993095>,  <25.418951, 36.171486, 57.079693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.268606, 35.552868, 56.993095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.575453, 35.533363, 57.248955>,  <25.759562, 35.521660, 57.402470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.575453, 35.533363, 57.248955>,  <25.268606, 35.552868, 56.993095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575453, 35.533363, 57.248955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563564, -0.527577, 0.635656,
		0.306472, -0.848107, -0.432192,
		0.767118, -0.048757, 0.639650,
		25.805588, 35.518738, 57.440849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329685, 34.823017, 57.122879>,  <25.268606, 35.552868, 56.993095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329685, 34.823017, 57.122879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.484644, 35.038670, 57.422012>,  <25.577620, 35.168060, 57.601494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.484644, 35.038670, 57.422012>,  <25.329685, 34.823017, 57.122879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484644, 35.038670, 57.422012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387423, -0.640872, 0.662712,
		0.836557, -0.546462, -0.039400,
		0.387397, 0.539132, 0.747837,
		25.600863, 35.200409, 57.646362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776524, 34.433731, 57.444443>,  <25.329685, 34.823017, 57.122879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776524, 34.433731, 57.444443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.630507, 34.702240, 57.702480>,  <25.542896, 34.863346, 57.857304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.630507, 34.702240, 57.702480>,  <25.776524, 34.433731, 57.444443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630507, 34.702240, 57.702480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278742, -0.739926, 0.612219,
		0.888282, 0.043674, 0.457217,
		-0.365045, 0.671269, 0.645090,
		25.520992, 34.903622, 57.896008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010675, 34.325241, 58.200634>,  <25.776524, 34.433731, 57.444443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010675, 34.325241, 58.200634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.645866, 34.483578, 58.157696>,  <25.426981, 34.578579, 58.131931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.645866, 34.483578, 58.157696>,  <26.010675, 34.325241, 58.200634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645866, 34.483578, 58.157696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377551, -0.708046, 0.596763,
		0.160215, 0.584792, 0.795205,
		-0.912023, 0.395841, -0.107349,
		25.372259, 34.602329, 58.125492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.666430, 33.675995, 58.056324>,  <26.010675, 34.325241, 58.200634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.666430, 33.675995, 58.056324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.504963, 33.338459, 58.197735>,  <25.408083, 33.135937, 58.282581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.504963, 33.338459, 58.197735>,  <25.666430, 33.675995, 58.056324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504963, 33.338459, 58.197735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586461, -0.535239, -0.607933,
		0.702222, -0.038072, 0.710939,
		-0.403668, -0.843842, 0.353529,
		25.383863, 33.085308, 58.303795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208729, 33.280788, 58.221676>,  <25.666430, 33.675995, 58.056324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208729, 33.280788, 58.221676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.903980, 33.024799, 58.181694>,  <25.721132, 32.871204, 58.157703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.903980, 33.024799, 58.181694>,  <26.208729, 33.280788, 58.221676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903980, 33.024799, 58.181694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592274, -0.625821, -0.507503,
		0.262234, -0.445851, 0.855833,
		-0.761869, -0.639972, -0.099955,
		25.675419, 32.832809, 58.151707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356846, 32.550102, 58.476562>,  <26.208729, 33.280788, 58.221676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356846, 32.550102, 58.476562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.078678, 32.535431, 58.189495>,  <25.911777, 32.526630, 58.017254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.078678, 32.535431, 58.189495>,  <26.356846, 32.550102, 58.476562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078678, 32.535431, 58.189495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605149, -0.568476, -0.557341,
		-0.387535, -0.821882, 0.417524,
		-0.695421, -0.036675, -0.717666,
		25.870052, 32.524429, 57.974194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422079, 31.860493, 58.198116>,  <26.356846, 32.550102, 58.476562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422079, 31.860493, 58.198116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.216557, 32.039608, 57.905407>,  <26.093243, 32.147076, 57.729782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.216557, 32.039608, 57.905407>,  <26.422079, 31.860493, 58.198116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216557, 32.039608, 57.905407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474474, -0.562327, -0.677247,
		-0.714759, -0.695179, 0.076462,
		-0.513805, 0.447789, -0.731772,
		26.062414, 32.173946, 57.685875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281088, 31.302917, 57.624859>,  <26.422079, 31.860493, 58.198116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281088, 31.302917, 57.624859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.229940, 31.658827, 57.449612>,  <26.199253, 31.872374, 57.344463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.229940, 31.658827, 57.449612>,  <26.281088, 31.302917, 57.624859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229940, 31.658827, 57.449612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510146, -0.319823, -0.798414,
		-0.850530, -0.325597, -0.413020,
		-0.127867, 0.889775, -0.438121,
		26.191580, 31.925760, 57.318176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112080, 31.007111, 56.978409>,  <26.281088, 31.302917, 57.624859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112080, 31.007111, 56.978409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.218349, 31.391584, 56.948635>,  <26.282112, 31.622269, 56.930771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.218349, 31.391584, 56.948635>,  <26.112080, 31.007111, 56.978409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218349, 31.391584, 56.948635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526120, -0.209253, -0.824263,
		-0.807845, 0.179824, -0.561292,
		0.265674, 0.961185, -0.074435,
		26.298052, 31.679939, 56.926304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105080, 31.002171, 56.306614>,  <26.112080, 31.007111, 56.978409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105080, 31.002171, 56.306614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.275099, 31.355381, 56.386215>,  <26.377110, 31.567307, 56.433975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.275099, 31.355381, 56.386215>,  <26.105080, 31.002171, 56.306614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275099, 31.355381, 56.386215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474658, -0.030238, -0.879651,
		-0.770737, 0.468349, -0.431988,
		0.425046, 0.883026, 0.199001,
		26.402613, 31.620289, 56.445915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994320, 31.447948, 55.644428>,  <26.105080, 31.002171, 56.306614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994320, 31.447948, 55.644428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.302988, 31.581175, 55.861168>,  <26.488188, 31.661110, 55.991211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.302988, 31.581175, 55.861168>,  <25.994320, 31.447948, 55.644428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302988, 31.581175, 55.861168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578256, -0.012635, -0.815757,
		-0.264854, 0.942819, -0.202347,
		0.771668, 0.333065, 0.541845,
		26.534489, 31.681095, 56.023720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272198, 31.889214, 55.133022>,  <25.994320, 31.447948, 55.644428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272198, 31.889214, 55.133022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.522327, 31.765083, 55.419426>,  <26.672405, 31.690605, 55.591267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.522327, 31.765083, 55.419426>,  <26.272198, 31.889214, 55.133022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522327, 31.765083, 55.419426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744485, -0.037787, -0.666568,
		0.233909, 0.949879, 0.207405,
		0.625322, -0.310326, 0.716010,
		26.709925, 31.671986, 55.634228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796671, 32.306664, 54.986473>,  <26.272198, 31.889214, 55.133022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796671, 32.306664, 54.986473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.928665, 32.005013, 55.213596>,  <27.007862, 31.824022, 55.349869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.928665, 32.005013, 55.213596>,  <26.796671, 32.306664, 54.986473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.928665, 32.005013, 55.213596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754723, -0.150528, -0.638541,
		0.567010, 0.639246, 0.519484,
		0.329988, -0.754126, 0.567805,
		27.027662, 31.778774, 55.383938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487501, 32.416531, 55.143410>,  <26.796671, 32.306664, 54.986473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487501, 32.416531, 55.143410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.429258, 32.022873, 55.183922>,  <27.394312, 31.786678, 55.208229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.429258, 32.022873, 55.183922>,  <27.487501, 32.416531, 55.143410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429258, 32.022873, 55.183922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757830, -0.176759, -0.628052,
		0.635996, -0.014696, 0.771552,
		-0.145609, -0.984144, 0.101281,
		27.385576, 31.727629, 55.214306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115824, 32.235668, 55.126907>,  <27.487501, 32.416531, 55.143410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115824, 32.235668, 55.126907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.936146, 31.881359, 55.080208>,  <27.828339, 31.668774, 55.052189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.936146, 31.881359, 55.080208>,  <28.115824, 32.235668, 55.126907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936146, 31.881359, 55.080208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757211, -0.308084, -0.575948,
		0.474189, -0.347120, 0.809106,
		-0.449196, -0.885772, -0.116753,
		27.801388, 31.615627, 55.045181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602844, 31.767414, 55.308327>,  <28.115824, 32.235668, 55.126907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602844, 31.767414, 55.308327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.345175, 31.563797, 55.079971>,  <28.190573, 31.441628, 54.942959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.345175, 31.563797, 55.079971>,  <28.602844, 31.767414, 55.308327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345175, 31.563797, 55.079971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734584, -0.203759, -0.647200,
		0.213129, -0.836276, 0.505192,
		-0.644175, -0.509043, -0.570888,
		28.151922, 31.411083, 54.908707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972872, 31.148161, 55.214455>,  <28.602844, 31.767414, 55.308327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972872, 31.148161, 55.214455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.704109, 31.176523, 54.919559>,  <28.542852, 31.193541, 54.742622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.704109, 31.176523, 54.919559>,  <28.972872, 31.148161, 55.214455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704109, 31.176523, 54.919559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729134, -0.111426, -0.675239,
		-0.130027, -0.991240, 0.023167,
		-0.671905, 0.070908, -0.737236,
		28.502537, 31.197796, 54.698387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651760, 30.885504, 55.292240>,  <28.972872, 31.148161, 55.214455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651760, 30.885504, 55.292240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.939121, 31.098930, 55.470772>,  <30.111538, 31.226986, 55.577888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.939121, 31.098930, 55.470772>,  <29.651760, 30.885504, 55.292240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939121, 31.098930, 55.470772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600371, 0.151499, 0.785241,
		0.351360, -0.832079, 0.429175,
		0.718401, 0.533566, 0.446325,
		30.154642, 31.259001, 55.604668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663971, 30.568634, 55.951344>,  <29.651760, 30.885504, 55.292240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663971, 30.568634, 55.951344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.822975, 30.935617, 55.944977>,  <29.918379, 31.155807, 55.941158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.822975, 30.935617, 55.944977>,  <29.663971, 30.568634, 55.951344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822975, 30.935617, 55.944977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383366, 0.181809, 0.905526,
		0.833676, -0.353856, 0.423993,
		0.397512, 0.917459, -0.015914,
		29.942228, 31.210855, 55.940205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958307, 30.621744, 56.567627>,  <29.663971, 30.568634, 55.951344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958307, 30.621744, 56.567627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.926624, 31.007856, 56.468063>,  <29.907614, 31.239525, 56.408325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.926624, 31.007856, 56.468063>,  <29.958307, 30.621744, 56.567627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926624, 31.007856, 56.468063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207379, 0.228276, 0.951254,
		0.975049, 0.126966, 0.182098,
		-0.079208, 0.965282, -0.248910,
		29.902863, 31.297441, 56.393391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113607, 31.012203, 57.171593>,  <29.958307, 30.621744, 56.567627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113607, 31.012203, 57.171593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.923111, 31.282568, 56.946617>,  <29.808813, 31.444788, 56.811634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.923111, 31.282568, 56.946617>,  <30.113607, 31.012203, 57.171593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923111, 31.282568, 56.946617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455745, 0.357274, 0.815261,
		0.751990, 0.644589, 0.137895,
		-0.476242, 0.675914, -0.562435,
		29.780239, 31.485342, 56.777885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246767, 31.622269, 57.525337>,  <30.113607, 31.012203, 57.171593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246767, 31.622269, 57.525337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.916143, 31.654825, 57.302563>,  <29.717770, 31.674358, 57.168900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.916143, 31.654825, 57.302563>,  <30.246767, 31.622269, 57.525337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916143, 31.654825, 57.302563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473737, 0.433703, 0.766469,
		0.303927, 0.897373, -0.319924,
		-0.826560, 0.081391, -0.556932,
		29.668175, 31.679243, 57.135483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968775, 32.248325, 57.775265>,  <30.246767, 31.622269, 57.525337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968775, 32.248325, 57.775265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.672209, 32.048820, 57.595695>,  <29.494268, 31.929117, 57.487953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.672209, 32.048820, 57.595695>,  <29.968775, 32.248325, 57.775265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672209, 32.048820, 57.595695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587088, 0.158106, 0.793934,
		-0.325008, 0.852195, -0.410040,
		-0.741416, -0.498764, -0.448928,
		29.449783, 31.899191, 57.461018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391333, 32.658958, 57.838364>,  <29.968775, 32.248325, 57.775265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391333, 32.658958, 57.838364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.255581, 32.289608, 57.766598>,  <29.174129, 32.067997, 57.723537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.255581, 32.289608, 57.766598>,  <29.391333, 32.658958, 57.838364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255581, 32.289608, 57.766598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629616, 0.081281, 0.772643,
		-0.698861, 0.375182, -0.608960,
		-0.339379, -0.923381, -0.179417,
		29.153767, 32.012592, 57.712772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118782, 33.341888, 58.122772>,  <29.391333, 32.658958, 57.838364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118782, 33.341888, 58.122772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.452612, 33.435673, 58.322174>,  <29.652910, 33.491943, 58.441814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.452612, 33.435673, 58.322174>,  <29.118782, 33.341888, 58.122772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452612, 33.435673, 58.322174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510584, 0.010574, -0.859763,
		-0.206850, 0.972069, -0.110886,
		0.834576, 0.234459, 0.498509,
		29.702984, 33.506012, 58.471725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276409, 33.893311, 57.780006>,  <29.118782, 33.341888, 58.122772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276409, 33.893311, 57.780006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.618698, 33.797401, 57.963417>,  <29.824072, 33.739857, 58.073463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.618698, 33.797401, 57.963417>,  <29.276409, 33.893311, 57.780006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618698, 33.797401, 57.963417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500710, 0.160244, -0.850653,
		0.130488, 0.957513, 0.257182,
		0.855723, -0.239773, 0.458526,
		29.875416, 33.725468, 58.100975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668196, 34.546051, 57.713341>,  <29.276409, 33.893311, 57.780006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668196, 34.546051, 57.713341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.889046, 34.215961, 57.760933>,  <30.021555, 34.017906, 57.789490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.889046, 34.215961, 57.760933>,  <29.668196, 34.546051, 57.713341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889046, 34.215961, 57.760933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476490, 0.195199, -0.857237,
		0.684190, 0.529997, 0.500987,
		0.552125, -0.825228, 0.118985,
		30.054684, 33.968391, 57.796627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166912, 34.766655, 57.412983>,  <29.668196, 34.546051, 57.713341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166912, 34.766655, 57.412983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.247089, 34.374802, 57.408276>,  <30.295195, 34.139690, 57.405449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.247089, 34.374802, 57.408276>,  <30.166912, 34.766655, 57.412983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247089, 34.374802, 57.408276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422225, 0.097220, -0.901263,
		0.884053, 0.175681, 0.433113,
		0.200442, -0.979635, -0.011771,
		30.307222, 34.080910, 57.404743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859295, 34.721241, 57.327236>,  <30.166912, 34.766655, 57.412983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859295, 34.721241, 57.327236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.691715, 34.382553, 57.196056>,  <30.591167, 34.179340, 57.117348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.691715, 34.382553, 57.196056>,  <30.859295, 34.721241, 57.327236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691715, 34.382553, 57.196056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543451, 0.055523, -0.837602,
		0.727420, -0.529140, 0.436887,
		-0.418951, -0.846716, -0.327950,
		30.566031, 34.128540, 57.097672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284895, 34.403477, 56.817619>,  <30.859295, 34.721241, 57.327236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284895, 34.403477, 56.817619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.958923, 34.184319, 56.742035>,  <30.763340, 34.052826, 56.696682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.958923, 34.184319, 56.742035>,  <31.284895, 34.403477, 56.817619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958923, 34.184319, 56.742035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342893, -0.192940, -0.919347,
		0.467243, -0.813996, 0.345101,
		-0.814928, -0.547891, -0.188963,
		30.714445, 34.019951, 56.685345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490181, 33.751213, 56.716618>,  <31.284895, 34.403477, 56.817619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490181, 33.751213, 56.716618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.142982, 33.789646, 56.521744>,  <30.934664, 33.812706, 56.404819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.142982, 33.789646, 56.521744>,  <31.490181, 33.751213, 56.716618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142982, 33.789646, 56.521744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466281, -0.179696, -0.866194,
		-0.170766, -0.979019, 0.111177,
		-0.867998, 0.096076, -0.487184,
		30.882584, 33.818470, 56.375587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.584812, 35.184631, 59.638527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392702, 35.378628, 59.346195>,  <27.277435, 35.495026, 59.170795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392702, 35.378628, 59.346195>,  <27.584812, 35.184631, 59.638527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392702, 35.378628, 59.346195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815544, -0.059756, -0.575602,
		-0.322836, -0.872472, -0.366836,
		-0.480276, 0.484996, -0.730831,
		27.248619, 35.524128, 59.126945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726393, 34.719883, 58.962799>,  <27.584812, 35.184631, 59.638527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726393, 34.719883, 58.962799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619532, 35.095169, 58.874821>,  <27.555414, 35.320343, 58.822033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619532, 35.095169, 58.874821>,  <27.726393, 34.719883, 58.962799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619532, 35.095169, 58.874821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799821, 0.088575, -0.593667,
		-0.537508, -0.334516, -0.774070,
		-0.267155, 0.938218, -0.219943,
		27.539385, 35.376633, 58.808838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146360, 34.859070, 58.386543>,  <27.726393, 34.719883, 58.962799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146360, 34.859070, 58.386543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000475, 35.230423, 58.415066>,  <27.912943, 35.453236, 58.432178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000475, 35.230423, 58.415066>,  <28.146360, 34.859070, 58.386543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000475, 35.230423, 58.415066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731058, 0.332936, -0.595573,
		-0.576661, -0.165086, -0.800130,
		-0.364713, 0.928386, 0.071304,
		27.891062, 35.508938, 58.436459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201471, 35.067966, 57.719521>,  <28.146360, 34.859070, 58.386543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201471, 35.067966, 57.719521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202343, 35.412083, 57.923443>,  <28.202866, 35.618553, 58.045795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202343, 35.412083, 57.923443>,  <28.201471, 35.067966, 57.719521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202343, 35.412083, 57.923443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573663, 0.416502, -0.705293,
		-0.819089, 0.293994, -0.492607,
		0.002180, 0.860287, 0.509805,
		28.202997, 35.670170, 58.076385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136835, 35.539963, 57.168991>,  <28.201471, 35.067966, 57.719521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136835, 35.539963, 57.168991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293301, 35.742123, 57.476643>,  <28.387180, 35.863419, 57.661236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293301, 35.742123, 57.476643>,  <28.136835, 35.539963, 57.168991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293301, 35.742123, 57.476643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676459, 0.408762, -0.612631,
		-0.624016, 0.759923, -0.181990,
		0.391162, 0.505400, 0.769131,
		28.410648, 35.893742, 57.707382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112705, 36.237499, 56.967377>,  <28.136835, 35.539963, 57.168991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112705, 36.237499, 56.967377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396948, 36.216373, 57.248020>,  <28.567493, 36.203697, 57.416405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396948, 36.216373, 57.248020>,  <28.112705, 36.237499, 56.967377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396948, 36.216373, 57.248020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593188, 0.581234, -0.557041,
		-0.378377, 0.812020, 0.444358,
		0.710605, -0.052817, 0.701606,
		28.610128, 36.200527, 57.458504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569069, 36.822178, 56.710533>,  <28.112705, 36.237499, 56.967377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569069, 36.822178, 56.710533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782635, 36.640560, 56.995850>,  <28.910774, 36.531590, 57.167038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782635, 36.640560, 56.995850>,  <28.569069, 36.822178, 56.710533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782635, 36.640560, 56.995850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844758, 0.322691, -0.426912,
		-0.036334, 0.830490, 0.555847,
		0.533914, -0.454045, 0.713288,
		28.942808, 36.504345, 57.209835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899288, 37.348518, 57.182457>,  <28.569069, 36.822178, 56.710533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899288, 37.348518, 57.182457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113779, 37.010914, 57.178375>,  <29.242474, 36.808350, 57.175926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113779, 37.010914, 57.178375>,  <28.899288, 37.348518, 57.182457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113779, 37.010914, 57.178375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732339, 0.471220, -0.491560,
		0.419690, 0.256117, 0.870784,
		0.536228, -0.844012, -0.010202,
		29.274647, 36.757710, 57.175316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526985, 37.528011, 57.105919>,  <28.899288, 37.348518, 57.182457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526985, 37.528011, 57.105919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591293, 37.137310, 57.049191>,  <29.629879, 36.902889, 57.015156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591293, 37.137310, 57.049191>,  <29.526985, 37.528011, 57.105919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591293, 37.137310, 57.049191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805380, 0.212887, -0.553211,
		0.570540, -0.025276, 0.820881,
		0.160772, -0.976750, -0.141817,
		29.639524, 36.844284, 57.006645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257605, 37.486069, 57.183235>,  <29.526985, 37.528011, 57.105919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257605, 37.486069, 57.183235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099390, 37.185944, 56.971355>,  <30.004461, 37.005867, 56.844227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099390, 37.185944, 56.971355>,  <30.257605, 37.486069, 57.183235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099390, 37.185944, 56.971355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623127, 0.204460, -0.754924,
		0.674733, -0.628667, 0.386670,
		-0.395537, -0.750316, -0.529695,
		29.980728, 36.960850, 56.812447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751682, 37.202511, 56.830116>,  <30.257605, 37.486069, 57.183235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751682, 37.202511, 56.830116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437611, 37.086754, 56.611118>,  <30.249168, 37.017300, 56.479721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437611, 37.086754, 56.611118>,  <30.751682, 37.202511, 56.830116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437611, 37.086754, 56.611118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500981, 0.222854, -0.836274,
		0.364024, -0.930907, -0.029999,
		-0.785178, -0.289395, -0.547491,
		30.202057, 36.999935, 56.446873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085056, 36.891308, 56.299927>,  <30.751682, 37.202511, 56.830116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085056, 36.891308, 56.299927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712431, 36.976711, 56.182213>,  <30.488855, 37.027954, 56.111584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712431, 36.976711, 56.182213>,  <31.085056, 36.891308, 56.299927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712431, 36.976711, 56.182213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344889, 0.262743, -0.901120,
		-0.115078, -0.940946, -0.318399,
		-0.931562, 0.213511, -0.294286,
		30.432962, 37.040764, 56.093925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820116, 36.751110, 56.380119>,  <31.085056, 36.891308, 56.299927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820116, 36.751110, 56.380119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085629, 36.514240, 56.562862>,  <32.244938, 36.372120, 56.672508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085629, 36.514240, 56.562862>,  <31.820116, 36.751110, 56.380119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085629, 36.514240, 56.562862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651334, -0.157430, 0.742280,
		-0.367638, -0.790279, -0.490205,
		0.663781, -0.592178, 0.456859,
		32.284763, 36.336586, 56.699921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386862, 36.072350, 56.684708>,  <31.820116, 36.751110, 56.380119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386862, 36.072350, 56.684708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724718, 36.101788, 56.896809>,  <31.927431, 36.119450, 57.024067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724718, 36.101788, 56.896809>,  <31.386862, 36.072350, 56.684708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724718, 36.101788, 56.896809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521120, -0.113694, 0.845877,
		0.122542, -0.990786, -0.057676,
		0.844640, 0.073600, 0.530251,
		31.978109, 36.123867, 57.055885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497673, 35.416462, 57.236042>,  <31.386862, 36.072350, 56.684708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497673, 35.416462, 57.236042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683748, 35.744423, 57.369526>,  <31.795393, 35.941200, 57.449615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683748, 35.744423, 57.369526>,  <31.497673, 35.416462, 57.236042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683748, 35.744423, 57.369526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399497, -0.141961, 0.905676,
		0.789938, -0.554627, 0.261509,
		0.465188, 0.819900, 0.333713,
		31.823305, 35.990395, 57.469639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262175, 35.384350, 57.884808>,  <31.497673, 35.416462, 57.236042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262175, 35.384350, 57.884808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454390, 35.735123, 57.888306>,  <31.569717, 35.945587, 57.890404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454390, 35.735123, 57.888306>,  <31.262175, 35.384350, 57.884808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454390, 35.735123, 57.888306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177152, 0.087297, 0.980304,
		0.858896, -0.472620, 0.197300,
		0.480535, 0.876932, 0.008746,
		31.598551, 35.998203, 57.890930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824312, 35.351944, 58.382572>,  <31.262175, 35.384350, 57.884808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824312, 35.351944, 58.382572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707344, 35.733025, 58.349449>,  <31.637163, 35.961674, 58.329575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707344, 35.733025, 58.349449>,  <31.824312, 35.351944, 58.382572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707344, 35.733025, 58.349449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153227, 0.038799, 0.987429,
		0.943935, 0.301432, 0.134633,
		-0.292419, 0.952698, -0.082811,
		31.619619, 36.018833, 58.324604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963150, 35.589417, 59.010403>,  <31.824312, 35.351944, 58.382572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963150, 35.589417, 59.010403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745903, 35.891640, 58.863895>,  <31.615555, 36.072975, 58.775993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745903, 35.891640, 58.863895>,  <31.963150, 35.589417, 59.010403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745903, 35.891640, 58.863895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259007, 0.264180, 0.929045,
		0.798711, 0.599446, 0.052215,
		-0.543117, 0.755562, -0.366264,
		31.582968, 36.118309, 58.754017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087570, 36.057114, 59.520935>,  <31.963150, 35.589417, 59.010403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087570, 36.057114, 59.520935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768520, 36.192875, 59.321495>,  <31.577091, 36.274330, 59.201832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768520, 36.192875, 59.321495>,  <32.087570, 36.057114, 59.520935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768520, 36.192875, 59.321495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462346, 0.186812, 0.866797,
		0.387337, 0.921904, 0.007915,
		-0.797625, 0.339402, -0.498598,
		31.529232, 36.294697, 59.171917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782486, 36.733242, 59.852062>,  <32.087570, 36.057114, 59.520935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782486, 36.733242, 59.852062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494989, 36.537052, 59.654945>,  <31.322493, 36.419338, 59.536674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494989, 36.537052, 59.654945>,  <31.782486, 36.733242, 59.852062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494989, 36.537052, 59.654945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628148, 0.154222, 0.762657,
		-0.298064, 0.857700, -0.418936,
		-0.718740, -0.490475, -0.492795,
		31.279367, 36.389908, 59.507107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238214, 37.164162, 59.905178>,  <31.782486, 36.733242, 59.852062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238214, 37.164162, 59.905178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081898, 36.807411, 59.814106>,  <30.988108, 36.593361, 59.759464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081898, 36.807411, 59.814106>,  <31.238214, 37.164162, 59.905178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081898, 36.807411, 59.814106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744641, 0.160915, 0.647778,
		-0.541102, 0.422683, -0.727013,
		-0.390792, -0.891877, -0.227676,
		30.964661, 36.539848, 59.745804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577850, 37.143810, 60.218670>,  <31.238214, 37.164162, 59.905178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577850, 37.143810, 60.218670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549324, 36.760979, 60.106297>,  <30.532207, 36.531281, 60.038872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549324, 36.760979, 60.106297>,  <30.577850, 37.143810, 60.218670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549324, 36.760979, 60.106297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663803, -0.164682, 0.729551,
		-0.744499, 0.238514, -0.623564,
		-0.071318, -0.957074, -0.280932,
		30.527929, 36.473858, 60.022018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858606, 37.049423, 60.050049>,  <30.577850, 37.143810, 60.218670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858606, 37.049423, 60.050049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044130, 36.722477, 60.186745>,  <30.155445, 36.526310, 60.268761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044130, 36.722477, 60.186745>,  <29.858606, 37.049423, 60.050049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044130, 36.722477, 60.186745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667346, -0.068628, 0.741579,
		-0.582692, -0.572010, -0.577299,
		0.463809, -0.817370, 0.341740,
		30.183273, 36.477264, 60.289268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351011, 36.468445, 60.300198>,  <29.858606, 37.049423, 60.050049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351011, 36.468445, 60.300198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693945, 36.369400, 60.480717>,  <29.899706, 36.309975, 60.589027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693945, 36.369400, 60.480717>,  <29.351011, 36.468445, 60.300198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693945, 36.369400, 60.480717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487520, -0.109156, 0.866262,
		-0.165241, -0.962689, -0.214302,
		0.857333, -0.247618, 0.451293,
		29.951145, 36.295116, 60.616104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242788, 35.778328, 60.639671>,  <29.351011, 36.468445, 60.300198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242788, 35.778328, 60.639671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581652, 35.915066, 60.802380>,  <29.784969, 35.997108, 60.900005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581652, 35.915066, 60.802380>,  <29.242788, 35.778328, 60.639671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581652, 35.915066, 60.802380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224382, -0.463783, 0.857064,
		0.481635, -0.817342, -0.316195,
		0.847160, 0.341844, 0.406771,
		29.835800, 36.017620, 60.924412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586470, 35.263340, 61.147743>,  <29.242788, 35.778328, 60.639671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586470, 35.263340, 61.147743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784101, 35.585335, 61.279129>,  <29.902679, 35.778530, 61.357960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784101, 35.585335, 61.279129>,  <29.586470, 35.263340, 61.147743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784101, 35.585335, 61.279129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025812, -0.391212, 0.919939,
		0.869034, -0.446043, -0.214068,
		0.494078, 0.804984, 0.328463,
		29.932325, 35.826828, 61.377666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273836, 34.513969, 61.436901>,  <29.586470, 35.263340, 61.147743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273836, 34.513969, 61.436901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278780, 34.120174, 61.366898>,  <29.281746, 33.883896, 61.324894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278780, 34.120174, 61.366898>,  <29.273836, 34.513969, 61.436901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278780, 34.120174, 61.366898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168182, 0.174577, -0.970174,
		0.985678, -0.017443, 0.167731,
		0.012359, -0.984489, -0.175010,
		29.282488, 33.824829, 61.314396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964634, 34.191032, 61.279827>,  <29.273836, 34.513969, 61.436901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964634, 34.191032, 61.279827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679535, 33.968063, 61.109524>,  <29.508476, 33.834282, 61.007343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679535, 33.968063, 61.109524>,  <29.964634, 34.191032, 61.279827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679535, 33.968063, 61.109524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322406, 0.278713, -0.904640,
		0.622934, -0.782045, -0.018934,
		-0.712746, -0.557427, -0.425756,
		29.465712, 33.800835, 60.981796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295273, 33.937119, 60.687603>,  <29.964634, 34.191032, 61.279827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295273, 33.937119, 60.687603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911806, 33.864712, 60.599792>,  <29.681726, 33.821266, 60.547104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911806, 33.864712, 60.599792>,  <30.295273, 33.937119, 60.687603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911806, 33.864712, 60.599792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239468, -0.096599, -0.966087,
		0.153677, -0.978724, 0.135955,
		-0.958665, -0.181022, -0.219528,
		29.624207, 33.810406, 60.533936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281494, 33.372501, 60.233376>,  <30.295273, 33.937119, 60.687603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281494, 33.372501, 60.233376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931797, 33.556950, 60.172615>,  <29.721979, 33.667618, 60.136158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931797, 33.556950, 60.172615>,  <30.281494, 33.372501, 60.233376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931797, 33.556950, 60.172615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133359, -0.072757, -0.988394,
		-0.466817, -0.884351, 0.002113,
		-0.874241, 0.461117, -0.151900,
		29.669525, 33.695286, 60.127045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840481, 32.770180, 59.884682>,  <30.281494, 33.372501, 60.233376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840481, 32.770180, 59.884682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699455, 33.137920, 59.814835>,  <29.614840, 33.358566, 59.772926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699455, 33.137920, 59.814835>,  <29.840481, 32.770180, 59.884682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699455, 33.137920, 59.814835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074208, -0.158546, -0.984559,
		-0.932841, -0.360076, -0.012326,
		-0.352562, 0.919352, -0.174619,
		29.593687, 33.413727, 59.762447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286861, 32.745998, 59.415588>,  <29.840481, 32.770180, 59.884682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286861, 32.745998, 59.415588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416195, 33.123966, 59.395287>,  <29.493795, 33.350746, 59.383106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416195, 33.123966, 59.395287>,  <29.286861, 32.745998, 59.415588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416195, 33.123966, 59.395287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184023, -0.115395, -0.976125,
		-0.928220, 0.306273, -0.211199,
		0.323332, 0.944924, -0.050751,
		29.513195, 33.407444, 59.380062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044743, 32.881020, 58.766052>,  <29.286861, 32.745998, 59.415588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044743, 32.881020, 58.766052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323442, 33.151978, 58.860432>,  <29.490662, 33.314552, 58.917061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323442, 33.151978, 58.860432>,  <29.044743, 32.881020, 58.766052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323442, 33.151978, 58.860432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387071, -0.078111, -0.918736,
		-0.603920, 0.731457, -0.316625,
		0.696748, 0.677399, 0.235953,
		29.532467, 33.355198, 58.931217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664698, 32.712551, 57.977161>,  <29.044743, 32.881020, 58.766052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664698, 32.712551, 57.977161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706598, 32.314754, 57.978970>,  <28.731739, 32.076077, 57.980057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706598, 32.314754, 57.978970>,  <28.664698, 32.712551, 57.977161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706598, 32.314754, 57.978970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672678, -0.067505, 0.736850,
		-0.732483, -0.080229, -0.676041,
		0.104753, -0.994488, 0.004522,
		28.738024, 32.016407, 57.980328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963806, 32.476131, 57.928833>,  <28.664698, 32.712551, 57.977161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963806, 32.476131, 57.928833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181595, 32.177856, 58.082458>,  <28.312267, 31.998892, 58.174633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181595, 32.177856, 58.082458>,  <27.963806, 32.476131, 57.928833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181595, 32.177856, 58.082458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778414, -0.278639, 0.562523,
		-0.312448, -0.605241, -0.732161,
		0.544471, -0.745683, 0.384067,
		28.344936, 31.954151, 58.197678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559906, 31.876780, 57.879173>,  <27.963806, 32.476131, 57.928833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559906, 31.876780, 57.879173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829405, 31.826284, 58.170414>,  <27.991104, 31.795988, 58.345158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829405, 31.826284, 58.170414>,  <27.559906, 31.876780, 57.879173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829405, 31.826284, 58.170414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734338, -0.224421, 0.640611,
		0.082531, -0.966281, -0.243905,
		0.673747, -0.126238, 0.728099,
		28.031528, 31.788414, 58.388844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326832, 31.262495, 58.279789>,  <27.559906, 31.876780, 57.879173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326832, 31.262495, 58.279789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574862, 31.457193, 58.525906>,  <27.723679, 31.574013, 58.673576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574862, 31.457193, 58.525906>,  <27.326832, 31.262495, 58.279789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574862, 31.457193, 58.525906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672294, -0.074584, 0.736517,
		0.404386, -0.870355, 0.280988,
		0.620074, 0.486744, 0.615295,
		27.760883, 31.603216, 58.710495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193256, 30.896633, 58.907654>,  <27.326832, 31.262495, 58.279789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193256, 30.896633, 58.907654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395189, 31.217722, 59.034637>,  <27.516350, 31.410376, 59.110828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395189, 31.217722, 59.034637>,  <27.193256, 30.896633, 58.907654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395189, 31.217722, 59.034637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549127, 0.014877, 0.835607,
		0.666036, -0.596170, 0.448306,
		0.504833, 0.802720, 0.317464,
		27.546638, 31.458538, 59.129875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240633, 30.769913, 59.521267>,  <27.193256, 30.896633, 58.907654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240633, 30.769913, 59.521267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298908, 31.165644, 59.520180>,  <27.333874, 31.403082, 59.519527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298908, 31.165644, 59.520180>,  <27.240633, 30.769913, 59.521267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298908, 31.165644, 59.520180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617917, 0.093142, 0.780707,
		0.772627, -0.112061, 0.624891,
		0.145690, 0.989327, -0.002720,
		27.342615, 31.462442, 59.519363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519821, 30.877218, 60.190899>,  <27.240633, 30.769913, 59.521267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519821, 30.877218, 60.190899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365585, 31.208317, 60.027851>,  <27.273043, 31.406977, 59.930023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365585, 31.208317, 60.027851>,  <27.519821, 30.877218, 60.190899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365585, 31.208317, 60.027851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572436, 0.131868, 0.809276,
		0.723627, 0.545388, 0.422984,
		-0.385591, 0.827746, -0.407623,
		27.249908, 31.456640, 59.905563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412867, 31.333178, 60.757301>,  <27.519821, 30.877218, 60.190899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412867, 31.333178, 60.757301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198341, 31.534304, 60.486141>,  <27.069626, 31.654980, 60.323444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198341, 31.534304, 60.486141>,  <27.412867, 31.333178, 60.757301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198341, 31.534304, 60.486141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663253, 0.245645, 0.706932,
		0.521979, 0.828755, 0.201752,
		-0.536314, 0.502816, -0.677896,
		27.037447, 31.685148, 60.282772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368671, 31.959957, 61.093571>,  <27.412867, 31.333178, 60.757301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368671, 31.959957, 61.093571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064699, 31.943869, 60.834068>,  <26.882317, 31.934216, 60.678368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064699, 31.943869, 60.834068>,  <27.368671, 31.959957, 61.093571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064699, 31.943869, 60.834068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644455, 0.176760, 0.743931,
		0.084752, 0.983432, -0.160246,
		-0.759931, -0.040221, -0.648759,
		26.836720, 31.931803, 60.639442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.084057, 35.161385, 47.789040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.146854, 35.548286, 47.709270>,  <37.184532, 35.780426, 47.661407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.146854, 35.548286, 47.709270>,  <37.084057, 35.161385, 47.789040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146854, 35.548286, 47.709270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921036, 0.216274, 0.323911,
		0.356435, 0.132824, 0.924831,
		0.156994, 0.967255, -0.199423,
		37.193954, 35.838463, 47.649445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961674, 35.623096, 48.436604>,  <37.084057, 35.161385, 47.789040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961674, 35.623096, 48.436604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897682, 35.848282, 48.112263>,  <36.859287, 35.983395, 47.917660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897682, 35.848282, 48.112263>,  <36.961674, 35.623096, 48.436604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897682, 35.848282, 48.112263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932002, 0.184501, 0.311981,
		0.325237, 0.805623, 0.495170,
		-0.159979, 0.562967, -0.810848,
		36.849689, 36.017174, 47.869007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567017, 36.126431, 48.640331>,  <36.961674, 35.623096, 48.436604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567017, 36.126431, 48.640331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516380, 36.164288, 48.245361>,  <36.485996, 36.187000, 48.008377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516380, 36.164288, 48.245361>,  <36.567017, 36.126431, 48.640331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516380, 36.164288, 48.245361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976755, 0.161699, 0.140725,
		0.172985, 0.982292, 0.071970,
		-0.126595, 0.094641, -0.987429,
		36.478401, 36.192680, 47.949131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044613, 36.671589, 48.584534>,  <36.567017, 36.126431, 48.640331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044613, 36.671589, 48.584534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064865, 36.511669, 48.218452>,  <36.077019, 36.415718, 47.998802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064865, 36.511669, 48.218452>,  <36.044613, 36.671589, 48.584534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064865, 36.511669, 48.218452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989647, 0.103140, -0.099808,
		0.134298, 0.910780, -0.390442,
		0.050633, -0.399803, -0.915201,
		36.080055, 36.391727, 47.943893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605568, 37.000416, 48.258720>,  <36.044613, 36.671589, 48.584534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605568, 37.000416, 48.258720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.648838, 36.654728, 48.062183>,  <35.674801, 36.447315, 47.944260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.648838, 36.654728, 48.062183>,  <35.605568, 37.000416, 48.258720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648838, 36.654728, 48.062183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993601, -0.110140, -0.025024,
		-0.032490, 0.490905, -0.870607,
		0.108173, -0.864223, -0.491342,
		35.681290, 36.395462, 47.914780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068508, 36.986763, 47.815235>,  <35.605568, 37.000416, 48.258720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068508, 36.986763, 47.815235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.178104, 36.602531, 47.834080>,  <35.243862, 36.371994, 47.845387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.178104, 36.602531, 47.834080>,  <35.068508, 36.986763, 47.815235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178104, 36.602531, 47.834080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959420, -0.269610, 0.082608,
		-0.066649, -0.067836, -0.995468,
		0.273992, -0.960577, 0.047114,
		35.260303, 36.314358, 47.848213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699936, 36.515308, 47.244232>,  <35.068508, 36.986763, 47.815235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699936, 36.515308, 47.244232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.809803, 36.303185, 47.565063>,  <34.875721, 36.175911, 47.757565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.809803, 36.303185, 47.565063>,  <34.699936, 36.515308, 47.244232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809803, 36.303185, 47.565063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954687, -0.249815, 0.161755,
		0.114592, -0.810165, -0.574892,
		0.274665, -0.530307, 0.802081,
		34.892204, 36.144093, 47.805687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353813, 35.821648, 47.219761>,  <34.699936, 36.515308, 47.244232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353813, 35.821648, 47.219761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.458511, 35.865261, 47.603344>,  <34.521332, 35.891430, 47.833492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.458511, 35.865261, 47.603344>,  <34.353813, 35.821648, 47.219761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458511, 35.865261, 47.603344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887274, -0.363795, 0.283545,
		0.379781, -0.925075, 0.001521,
		0.261747, 0.109034, 0.958958,
		34.537037, 35.897972, 47.891033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007229, 35.207912, 47.443611>,  <34.353813, 35.821648, 47.219761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007229, 35.207912, 47.443611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.126343, 35.397762, 47.774925>,  <34.197811, 35.511673, 47.973713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.126343, 35.397762, 47.774925>,  <34.007229, 35.207912, 47.443611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126343, 35.397762, 47.774925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884252, -0.189833, 0.426687,
		0.359751, -0.859476, 0.363154,
		0.297789, 0.474620, 0.828286,
		34.215679, 35.540150, 48.023411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743000, 34.795727, 47.944569>,  <34.007229, 35.207912, 47.443611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743000, 34.795727, 47.944569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.830845, 35.146095, 48.116398>,  <33.883553, 35.356316, 48.219498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.830845, 35.146095, 48.116398>,  <33.743000, 34.795727, 47.944569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830845, 35.146095, 48.116398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900392, 0.012456, 0.434900,
		0.375587, -0.482295, 0.791407,
		0.219608, 0.875920, 0.429577,
		33.896729, 35.408871, 48.245270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499001, 34.709599, 48.641602>,  <33.743000, 34.795727, 47.944569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499001, 34.709599, 48.641602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.508362, 35.104736, 48.580132>,  <33.513977, 35.341820, 48.543251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.508362, 35.104736, 48.580132>,  <33.499001, 34.709599, 48.641602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508362, 35.104736, 48.580132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930146, 0.077858, 0.358841,
		0.366444, 0.134542, 0.920661,
		0.023402, 0.987844, -0.153674,
		33.515381, 35.401089, 48.534031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272278, 34.957901, 49.307568>,  <33.499001, 34.709599, 48.641602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272278, 34.957901, 49.307568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.204800, 35.252495, 49.045536>,  <33.164310, 35.429253, 48.888317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.204800, 35.252495, 49.045536>,  <33.272278, 34.957901, 49.307568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204800, 35.252495, 49.045536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978356, -0.044318, 0.202127,
		0.119832, 0.674998, 0.728024,
		-0.168700, 0.736488, -0.655077,
		33.154190, 35.473442, 48.849014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901695, 35.588154, 49.503616>,  <33.272278, 34.957901, 49.307568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901695, 35.588154, 49.503616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.812885, 35.518147, 49.119934>,  <32.759602, 35.476143, 48.889725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.812885, 35.518147, 49.119934>,  <32.901695, 35.588154, 49.503616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812885, 35.518147, 49.119934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956743, -0.150592, 0.248930,
		-0.188015, 0.972981, -0.134009,
		-0.222023, -0.175015, -0.959206,
		32.746277, 35.465641, 48.832172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392826, 35.998108, 49.242680>,  <32.901695, 35.588154, 49.503616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392826, 35.998108, 49.242680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.354412, 35.643112, 49.062397>,  <32.331364, 35.430115, 48.954227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.354412, 35.643112, 49.062397>,  <32.392826, 35.998108, 49.242680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354412, 35.643112, 49.062397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959795, -0.037420, 0.278197,
		-0.263763, 0.459304, -0.848215,
		-0.096037, -0.887490, -0.450708,
		32.325600, 35.376865, 48.927185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795935, 35.962368, 48.724201>,  <32.392826, 35.998108, 49.242680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795935, 35.962368, 48.724201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.874783, 35.606133, 48.888153>,  <31.922091, 35.392391, 48.986526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.874783, 35.606133, 48.888153>,  <31.795935, 35.962368, 48.724201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874783, 35.606133, 48.888153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963714, -0.099260, 0.247795,
		-0.179998, -0.443854, -0.877835,
		0.197118, -0.890585, 0.409882,
		31.933918, 35.338959, 49.011116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254465, 35.646595, 48.481621>,  <31.795935, 35.962368, 48.724201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254465, 35.646595, 48.481621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.369104, 35.405659, 48.779625>,  <31.437887, 35.261097, 48.958427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.369104, 35.405659, 48.779625>,  <31.254465, 35.646595, 48.481621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369104, 35.405659, 48.779625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942371, -0.317356, 0.105938,
		0.172624, -0.732442, -0.658582,
		0.286598, -0.602341, 0.745014,
		31.455084, 35.224957, 49.003128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938990, 34.985336, 48.288750>,  <31.254465, 35.646595, 48.481621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938990, 34.985336, 48.288750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.026014, 35.009666, 48.678410>,  <31.078228, 35.024265, 48.912205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.026014, 35.009666, 48.678410>,  <30.938990, 34.985336, 48.288750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026014, 35.009666, 48.678410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880314, -0.418840, 0.222757,
		0.421563, -0.906020, -0.037573,
		0.217560, 0.060830, 0.974150,
		31.091282, 35.027916, 48.970654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618101, 34.429691, 48.597870>,  <30.938990, 34.985336, 48.288750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618101, 34.429691, 48.597870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.677059, 34.648415, 48.927540>,  <30.712435, 34.779648, 49.125343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.677059, 34.648415, 48.927540>,  <30.618101, 34.429691, 48.597870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677059, 34.648415, 48.927540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913689, -0.243807, 0.325163,
		0.378744, -0.800971, 0.463680,
		0.147397, 0.546813, 0.824179,
		30.721279, 34.812458, 49.174793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309484, 34.087723, 49.119259>,  <30.618101, 34.429691, 48.597870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309484, 34.087723, 49.119259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.335871, 34.454762, 49.276062>,  <30.351702, 34.674984, 49.370144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.335871, 34.454762, 49.276062>,  <30.309484, 34.087723, 49.119259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335871, 34.454762, 49.276062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880813, -0.131046, 0.454967,
		0.468846, -0.375298, 0.799584,
		0.065965, 0.917594, 0.392008,
		30.355659, 34.730042, 49.393665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071978, 33.967361, 49.772343>,  <30.309484, 34.087723, 49.119259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071978, 33.967361, 49.772343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.035046, 34.363468, 49.730698>,  <30.012886, 34.601131, 49.705711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.035046, 34.363468, 49.730698>,  <30.071978, 33.967361, 49.772343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035046, 34.363468, 49.730698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867541, -0.028686, 0.496537,
		0.488720, 0.136168, 0.861749,
		-0.092332, 0.990270, -0.104112,
		30.007345, 34.660549, 49.699463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826416, 34.229996, 50.436943>,  <30.071978, 33.967361, 49.772343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826416, 34.229996, 50.436943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.733780, 34.503368, 50.160023>,  <29.678198, 34.667393, 49.993870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.733780, 34.503368, 50.160023>,  <29.826416, 34.229996, 50.436943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733780, 34.503368, 50.160023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903197, 0.113312, 0.414000,
		0.361387, 0.721167, 0.591031,
		-0.231592, 0.683431, -0.692305,
		29.664303, 34.708397, 49.952332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442995, 34.762928, 50.788181>,  <29.826416, 34.229996, 50.436943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442995, 34.762928, 50.788181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.357777, 34.828510, 50.402905>,  <29.306646, 34.867859, 50.171738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.357777, 34.828510, 50.402905>,  <29.442995, 34.762928, 50.788181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357777, 34.828510, 50.402905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915913, 0.309711, 0.255308,
		0.340169, 0.936588, 0.084186,
		-0.213045, 0.163956, -0.963188,
		29.293863, 34.877697, 50.113949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036533, 35.397518, 50.857395>,  <29.442995, 34.762928, 50.788181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036533, 35.397518, 50.857395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.977715, 35.219646, 50.503983>,  <28.942423, 35.112923, 50.291935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.977715, 35.219646, 50.503983>,  <29.036533, 35.397518, 50.857395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977715, 35.219646, 50.503983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987925, 0.110092, 0.109009,
		0.048795, 0.888897, -0.455502,
		-0.147045, -0.444683, -0.883535,
		28.933601, 35.086243, 50.238922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633692, 35.841114, 50.576992>,  <29.036533, 35.397518, 50.857395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633692, 35.841114, 50.576992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.570217, 35.497562, 50.382198>,  <28.532133, 35.291431, 50.265324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.570217, 35.497562, 50.382198>,  <28.633692, 35.841114, 50.576992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570217, 35.497562, 50.382198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986755, 0.121134, 0.107897,
		-0.033680, 0.497653, -0.866722,
		-0.158685, -0.858876, -0.486981,
		28.522612, 35.239899, 50.236103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972141, 35.996014, 50.211254>,  <28.633692, 35.841114, 50.576992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972141, 35.996014, 50.211254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.001982, 35.601376, 50.153191>,  <28.019886, 35.364594, 50.118351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.001982, 35.601376, 50.153191>,  <27.972141, 35.996014, 50.211254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001982, 35.601376, 50.153191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981289, -0.098539, 0.165418,
		-0.177504, 0.130104, -0.975482,
		0.074602, -0.986592, -0.145160,
		28.024363, 35.305397, 50.109642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438768, 35.747654, 49.695351>,  <27.972141, 35.996014, 50.211254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438768, 35.747654, 49.695351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.540735, 35.454754, 49.947960>,  <27.601915, 35.279015, 50.099525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.540735, 35.454754, 49.947960>,  <27.438768, 35.747654, 49.695351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540735, 35.454754, 49.947960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964410, -0.145104, 0.221039,
		-0.070219, -0.665398, -0.743179,
		0.254917, -0.732250, 0.631528,
		27.617210, 35.235077, 50.137417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946638, 35.191181, 49.570530>,  <27.438768, 35.747654, 49.695351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946638, 35.191181, 49.570530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.097937, 35.147327, 49.938206>,  <27.188715, 35.121014, 50.158810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.097937, 35.147327, 49.938206>,  <26.946638, 35.191181, 49.570530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097937, 35.147327, 49.938206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917189, -0.178762, 0.356101,
		0.125275, -0.977765, -0.168173,
		0.378246, -0.109636, 0.919190,
		27.211411, 35.114437, 50.213963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594173, 34.572296, 49.974510>,  <26.946638, 35.191181, 49.570530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594173, 34.572296, 49.974510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.730192, 34.824642, 50.253471>,  <26.811804, 34.976051, 50.420849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.730192, 34.824642, 50.253471>,  <26.594173, 34.572296, 49.974510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730192, 34.824642, 50.253471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834417, -0.139621, 0.533154,
		0.433721, -0.763226, 0.478927,
		0.340049, 0.630866, 0.697406,
		26.832207, 35.013901, 50.462692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279135, 34.234833, 50.632702>,  <26.594173, 34.572296, 49.974510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279135, 34.234833, 50.632702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.405107, 34.603691, 50.722565>,  <26.480690, 34.825005, 50.776482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.405107, 34.603691, 50.722565>,  <26.279135, 34.234833, 50.632702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405107, 34.603691, 50.722565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857003, 0.174561, 0.484845,
		0.407879, -0.345227, 0.845253,
		0.314930, 0.922142, 0.224661,
		26.499586, 34.880333, 50.789963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106400, 34.304443, 51.264229>,  <26.279135, 34.234833, 50.632702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106400, 34.304443, 51.264229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.174141, 34.685196, 51.162060>,  <26.214785, 34.913647, 51.100758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.174141, 34.685196, 51.162060>,  <26.106400, 34.304443, 51.264229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174141, 34.685196, 51.162060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756361, 0.291681, 0.585526,
		0.631853, 0.094030, 0.769363,
		0.169352, 0.951883, -0.255420,
		26.224947, 34.970760, 51.085434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119335, 34.611671, 51.896770>,  <26.106400, 34.304443, 51.264229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119335, 34.611671, 51.896770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.032228, 34.883419, 51.616478>,  <25.979965, 35.046467, 51.448303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.032228, 34.883419, 51.616478>,  <26.119335, 34.611671, 51.896770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032228, 34.883419, 51.616478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748702, 0.344305, 0.566480,
		0.626118, 0.648002, 0.433670,
		-0.217766, 0.679373, -0.700736,
		25.966898, 35.087231, 51.406258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851530, 35.132919, 52.284931>,  <26.119335, 34.611671, 51.896770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851530, 35.132919, 52.284931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.740276, 35.250099, 51.919018>,  <25.673523, 35.320408, 51.699471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.740276, 35.250099, 51.919018>,  <25.851530, 35.132919, 52.284931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740276, 35.250099, 51.919018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845108, 0.378023, 0.378009,
		0.456545, 0.878226, 0.142431,
		-0.278135, 0.292948, -0.914780,
		25.656836, 35.337982, 51.644585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662447, 35.771103, 52.399612>,  <25.851530, 35.132919, 52.284931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662447, 35.771103, 52.399612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.485668, 35.658306, 52.058987>,  <25.379601, 35.590630, 51.854610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.485668, 35.658306, 52.058987>,  <25.662447, 35.771103, 52.399612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485668, 35.658306, 52.058987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855199, 0.418996, 0.305084,
		0.270774, 0.863090, -0.426329,
		-0.441946, -0.281988, -0.851567,
		25.353085, 35.573711, 51.803516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338282, 36.300472, 52.216839>,  <25.662447, 35.771103, 52.399612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338282, 36.300472, 52.216839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.143742, 36.006317, 52.028091>,  <25.027018, 35.829823, 51.914841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.143742, 36.006317, 52.028091>,  <25.338282, 36.300472, 52.216839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143742, 36.006317, 52.028091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873738, 0.405188, 0.269079,
		-0.006683, 0.543158, -0.839604,
		-0.486350, -0.735393, -0.471870,
		24.997837, 35.785698, 51.886532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810152, 36.599869, 52.011757>,  <25.338282, 36.300472, 52.216839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810152, 36.599869, 52.011757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.680508, 36.222088, 51.990002>,  <24.602720, 35.995419, 51.976948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.680508, 36.222088, 51.990002>,  <24.810152, 36.599869, 52.011757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.680508, 36.222088, 51.990002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933247, 0.309791, 0.181876,
		-0.154923, 0.109710, -0.981816,
		-0.324112, -0.944454, -0.054392,
		24.583275, 35.938751, 51.973682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.460136, 33.193619, 47.707478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.201843, 33.173138, 47.402740>,  <35.046867, 33.160851, 47.219898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.201843, 33.173138, 47.402740>,  <35.460136, 33.193619, 47.707478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201843, 33.173138, 47.402740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728776, -0.256399, 0.634937,
		-0.227846, 0.965214, 0.128251,
		-0.645734, -0.051202, -0.761844,
		35.008121, 33.157776, 47.174187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830669, 33.594482, 47.799618>,  <35.460136, 33.193619, 47.707478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830669, 33.594482, 47.799618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.770939, 33.255886, 47.595203>,  <34.735100, 33.052731, 47.472553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.770939, 33.255886, 47.595203>,  <34.830669, 33.594482, 47.799618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770939, 33.255886, 47.595203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669779, -0.293607, 0.682050,
		-0.727391, 0.444132, -0.523115,
		-0.149330, -0.846488, -0.511037,
		34.726139, 33.001938, 47.441891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112503, 33.533752, 47.637131>,  <34.830669, 33.594482, 47.799618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112503, 33.533752, 47.637131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.293777, 33.177380, 47.648834>,  <34.402542, 32.963554, 47.655857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.293777, 33.177380, 47.648834>,  <34.112503, 33.533752, 47.637131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293777, 33.177380, 47.648834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542762, -0.249752, 0.801894,
		-0.707128, -0.379289, -0.596750,
		0.453189, -0.890934, 0.029256,
		34.429733, 32.910099, 47.657612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609108, 33.090355, 47.786301>,  <34.112503, 33.533752, 47.637131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609108, 33.090355, 47.786301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936016, 32.872330, 47.861107>,  <34.132160, 32.741516, 47.905991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936016, 32.872330, 47.861107>,  <33.609108, 33.090355, 47.786301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936016, 32.872330, 47.861107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412550, -0.326844, 0.850280,
		-0.402332, -0.772061, -0.491986,
		0.817270, -0.545064, 0.187014,
		34.181198, 32.708813, 47.917213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338509, 32.425861, 48.124752>,  <33.609108, 33.090355, 47.786301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338509, 32.425861, 48.124752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724663, 32.462849, 48.222305>,  <33.956356, 32.485039, 48.280838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724663, 32.462849, 48.222305>,  <33.338509, 32.425861, 48.124752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724663, 32.462849, 48.222305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216842, -0.235078, 0.947480,
		0.144940, -0.967569, -0.206891,
		0.965387, 0.092465, 0.243882,
		34.014278, 32.490589, 48.295471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538540, 31.730005, 48.322021>,  <33.338509, 32.425861, 48.124752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538540, 31.730005, 48.322021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.797432, 31.987530, 48.485291>,  <33.952766, 32.142044, 48.583252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.797432, 31.987530, 48.485291>,  <33.538540, 31.730005, 48.322021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797432, 31.987530, 48.485291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177761, -0.393219, 0.902097,
		0.741282, -0.656418, -0.140057,
		0.647226, 0.643812, 0.408172,
		33.991600, 32.180672, 48.607742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787369, 31.334202, 48.864124>,  <33.538540, 31.730005, 48.322021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787369, 31.334202, 48.864124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902782, 31.701950, 48.971088>,  <33.972031, 31.922598, 49.035267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902782, 31.701950, 48.971088>,  <33.787369, 31.334202, 48.864124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902782, 31.701950, 48.971088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241240, -0.200469, 0.949534,
		0.926580, -0.338484, 0.163946,
		0.288536, 0.919370, 0.267407,
		33.989342, 31.977760, 49.051311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296989, 31.192636, 49.265766>,  <33.787369, 31.334202, 48.864124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296989, 31.192636, 49.265766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.157726, 31.563200, 49.323120>,  <34.074169, 31.785538, 49.357533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.157726, 31.563200, 49.323120>,  <34.296989, 31.192636, 49.265766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157726, 31.563200, 49.323120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079429, -0.181552, 0.980168,
		0.934066, 0.329861, 0.136791,
		-0.348154, 0.926407, 0.143382,
		34.053280, 31.841122, 49.366135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701836, 31.525414, 49.793983>,  <34.296989, 31.192636, 49.265766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701836, 31.525414, 49.793983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.354668, 31.723139, 49.774502>,  <34.146366, 31.841774, 49.762814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.354668, 31.723139, 49.774502>,  <34.701836, 31.525414, 49.793983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354668, 31.723139, 49.774502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176926, -0.216043, 0.960220,
		0.464127, 0.842010, 0.274964,
		-0.867919, 0.494312, -0.048702,
		34.094292, 31.871433, 49.759892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654541, 31.836540, 50.375893>,  <34.701836, 31.525414, 49.793983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654541, 31.836540, 50.375893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.273640, 31.870646, 50.258625>,  <34.045101, 31.891109, 50.188263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.273640, 31.870646, 50.258625>,  <34.654541, 31.836540, 50.375893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273640, 31.870646, 50.258625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298768, -0.062413, 0.952283,
		0.062897, 0.994402, 0.084907,
		-0.952251, 0.085263, -0.293170,
		33.987965, 31.896225, 50.170673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326477, 32.421974, 50.763672>,  <34.654541, 31.836540, 50.375893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326477, 32.421974, 50.763672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.064053, 32.145679, 50.642036>,  <33.906597, 31.979904, 50.569054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.064053, 32.145679, 50.642036>,  <34.326477, 32.421974, 50.763672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064053, 32.145679, 50.642036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420951, 0.000481, 0.907083,
		-0.626406, 0.723110, -0.291081,
		-0.656061, -0.690733, -0.304092,
		33.867233, 31.938459, 50.550808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837978, 32.580967, 51.146095>,  <34.326477, 32.421974, 50.763672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837978, 32.580967, 51.146095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720337, 32.223743, 51.009892>,  <33.649754, 32.009411, 50.928169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720337, 32.223743, 51.009892>,  <33.837978, 32.580967, 51.146095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720337, 32.223743, 51.009892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587785, -0.111934, 0.801237,
		-0.753667, 0.435792, -0.492008,
		-0.294100, -0.893060, -0.340512,
		33.632107, 31.955826, 50.907738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045937, 33.297020, 51.109104>,  <33.837978, 32.580967, 51.146095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045937, 33.297020, 51.109104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235741, 33.346512, 51.457706>,  <34.349625, 33.376209, 51.666870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235741, 33.346512, 51.457706>,  <34.045937, 33.297020, 51.109104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235741, 33.346512, 51.457706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877710, 0.008622, -0.479114,
		-0.066796, 0.992278, -0.104509,
		0.474514, 0.123732, 0.871509,
		34.378094, 33.383633, 51.719158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299110, 33.926647, 51.197510>,  <34.045937, 33.297020, 51.109104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299110, 33.926647, 51.197510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562225, 33.690025, 51.384007>,  <34.720093, 33.548054, 51.495903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562225, 33.690025, 51.384007>,  <34.299110, 33.926647, 51.197510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562225, 33.690025, 51.384007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676748, 0.192437, -0.710619,
		0.330648, 0.782963, 0.526916,
		0.657787, -0.591554, 0.466240,
		34.759560, 33.512558, 51.523880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923695, 34.275406, 51.059689>,  <34.299110, 33.926647, 51.197510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923695, 34.275406, 51.059689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.053925, 33.916622, 51.179329>,  <35.132065, 33.701351, 51.251114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.053925, 33.916622, 51.179329>,  <34.923695, 34.275406, 51.059689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053925, 33.916622, 51.179329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801638, 0.094120, -0.590354,
		0.501373, 0.431975, 0.749682,
		0.325578, -0.896961, 0.299099,
		35.151596, 33.647533, 51.269058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625435, 34.395020, 51.275448>,  <34.923695, 34.275406, 51.059689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625435, 34.395020, 51.275448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645004, 33.997021, 51.240585>,  <35.656746, 33.758221, 51.219669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645004, 33.997021, 51.240585>,  <35.625435, 34.395020, 51.275448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645004, 33.997021, 51.240585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847808, 0.087498, -0.523035,
		0.528042, -0.048300, 0.847844,
		0.048922, -0.994993, -0.087152,
		35.659679, 33.698524, 51.214439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189274, 34.234966, 51.586414>,  <35.625435, 34.395020, 51.275448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189274, 34.234966, 51.586414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117512, 33.954388, 51.310505>,  <36.074455, 33.786041, 51.144958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117512, 33.954388, 51.310505>,  <36.189274, 34.234966, 51.586414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117512, 33.954388, 51.310505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896009, 0.172980, -0.408956,
		0.406177, -0.691414, 0.597467,
		-0.179409, -0.701444, -0.689774,
		36.063690, 33.743954, 51.103573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858086, 33.997868, 51.357597>,  <36.189274, 34.234966, 51.586414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858086, 33.997868, 51.357597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629139, 33.786320, 51.106937>,  <36.491772, 33.659389, 50.956539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629139, 33.786320, 51.106937>,  <36.858086, 33.997868, 51.357597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629139, 33.786320, 51.106937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765674, -0.071168, -0.639279,
		0.293501, -0.845712, 0.445678,
		-0.572364, -0.528873, -0.626652,
		36.457428, 33.627659, 50.918941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178795, 33.298958, 51.194229>,  <36.858086, 33.997868, 51.357597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178795, 33.298958, 51.194229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.934456, 33.432175, 50.906910>,  <36.787853, 33.512104, 50.734520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.934456, 33.432175, 50.906910>,  <37.178795, 33.298958, 51.194229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934456, 33.432175, 50.906910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727564, -0.121701, -0.675159,
		-0.312275, -0.935024, -0.167970,
		-0.610848, 0.333044, -0.718294,
		36.751202, 33.532089, 50.691422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227940, 32.888813, 50.526630>,  <37.178795, 33.298958, 51.194229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227940, 32.888813, 50.526630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055393, 33.223377, 50.391369>,  <36.951866, 33.424114, 50.310211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055393, 33.223377, 50.391369>,  <37.227940, 32.888813, 50.526630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055393, 33.223377, 50.391369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621523, 0.003823, -0.783387,
		-0.653938, -0.548094, -0.521496,
		-0.431363, 0.836408, -0.338153,
		36.925983, 33.474300, 50.289925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881618, 32.831753, 49.854710>,  <37.227940, 32.888813, 50.526630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881618, 32.831753, 49.854710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.008163, 33.205090, 49.922577>,  <37.084091, 33.429092, 49.963295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.008163, 33.205090, 49.922577>,  <36.881618, 32.831753, 49.854710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008163, 33.205090, 49.922577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521747, -0.021821, -0.852821,
		-0.792273, 0.358321, -0.493873,
		0.316361, 0.933343, 0.169665,
		37.103073, 33.485092, 49.973476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007004, 33.020004, 49.226753>,  <36.881618, 32.831753, 49.854710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007004, 33.020004, 49.226753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140038, 33.358814, 49.392609>,  <37.219860, 33.562099, 49.492123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140038, 33.358814, 49.392609>,  <37.007004, 33.020004, 49.226753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140038, 33.358814, 49.392609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606682, 0.144451, -0.781710,
		-0.722026, 0.511544, -0.465834,
		0.332588, 0.847028, 0.414642,
		37.239815, 33.612923, 49.517002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858833, 33.647640, 48.728886>,  <37.007004, 33.020004, 49.226753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858833, 33.647640, 48.728886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.158409, 33.720772, 48.983654>,  <37.338154, 33.764652, 49.136517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.158409, 33.720772, 48.983654>,  <36.858833, 33.647640, 48.728886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158409, 33.720772, 48.983654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595747, 0.235072, -0.768002,
		-0.290136, 0.954628, 0.067134,
		0.748937, 0.182830, 0.636919,
		37.383091, 33.775620, 49.174728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179550, 34.210587, 48.456642>,  <36.858833, 33.647640, 48.728886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179550, 34.210587, 48.456642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461605, 34.080914, 48.708889>,  <37.630836, 34.003109, 48.860237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461605, 34.080914, 48.708889>,  <37.179550, 34.210587, 48.456642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461605, 34.080914, 48.708889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708859, 0.344007, -0.615775,
		-0.017312, 0.881228, 0.472375,
		0.705138, -0.324187, 0.630621,
		37.673145, 33.983658, 48.898075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722702, 34.749680, 48.645714>,  <37.179550, 34.210587, 48.456642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722702, 34.749680, 48.645714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928185, 34.412899, 48.711720>,  <38.051472, 34.210831, 48.751324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928185, 34.412899, 48.711720>,  <37.722702, 34.749680, 48.645714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928185, 34.412899, 48.711720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648526, 0.255131, -0.717163,
		0.561714, 0.475426, 0.677087,
		0.513704, -0.841949, 0.165016,
		38.082294, 34.160313, 48.761223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432991, 35.008831, 48.775730>,  <37.722702, 34.749680, 48.645714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432991, 35.008831, 48.775730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454903, 34.629158, 48.651764>,  <38.468048, 34.401356, 48.577385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454903, 34.629158, 48.651764>,  <38.432991, 35.008831, 48.775730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454903, 34.629158, 48.651764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617049, 0.276204, -0.736860,
		0.785016, -0.150871, 0.600823,
		0.054779, -0.949184, -0.309919,
		38.471336, 34.344402, 48.558788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040352, 35.568481, 48.991062>,  <38.432991, 35.008831, 48.775730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040352, 35.568481, 48.991062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032116, 35.772461, 49.335045>,  <38.027176, 35.894848, 49.541435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032116, 35.772461, 49.335045>,  <38.040352, 35.568481, 48.991062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032116, 35.772461, 49.335045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965171, 0.234518, -0.115958,
		-0.260808, 0.827620, -0.497016,
		-0.020590, 0.509948, 0.859959,
		38.025940, 35.925446, 49.593033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069340, 36.297192, 48.878086>,  <38.040352, 35.568481, 48.991062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069340, 36.297192, 48.878086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266212, 36.163532, 49.199608>,  <38.384335, 36.083336, 49.392521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266212, 36.163532, 49.199608>,  <38.069340, 36.297192, 48.878086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266212, 36.163532, 49.199608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870492, 0.187762, -0.454961,
		0.001102, 0.923627, 0.383290,
		0.492181, -0.334153, 0.803803,
		38.413868, 36.063286, 49.440750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416058, 36.836239, 48.990784>,  <38.069340, 36.297192, 48.878086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416058, 36.836239, 48.990784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.722534, 36.841122, 48.733784>,  <38.906422, 36.844051, 48.579586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.722534, 36.841122, 48.733784>,  <38.416058, 36.836239, 48.990784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722534, 36.841122, 48.733784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462740, -0.683275, -0.564807,
		-0.445897, 0.730059, -0.517871,
		0.766190, 0.012206, -0.642498,
		38.952393, 36.844784, 48.541035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610104, 37.339951, 49.494232>,  <38.416058, 36.836239, 48.990784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610104, 37.339951, 49.494232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250225, 37.430210, 49.344761>,  <38.034298, 37.484367, 49.255077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250225, 37.430210, 49.344761>,  <38.610104, 37.339951, 49.494232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250225, 37.430210, 49.344761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362045, 0.092523, 0.927558,
		0.243879, 0.969804, -0.001546,
		-0.899692, 0.225652, -0.373677,
		37.980316, 37.497906, 49.232658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426315, 37.880833, 49.854958>,  <38.610104, 37.339951, 49.494232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426315, 37.880833, 49.854958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.085224, 37.726631, 49.713970>,  <37.880569, 37.634109, 49.629375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.085224, 37.726631, 49.713970>,  <38.426315, 37.880833, 49.854958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085224, 37.726631, 49.713970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389658, 0.020079, 0.920740,
		-0.347871, 0.922488, -0.167337,
		-0.852732, -0.385503, -0.352470,
		37.829403, 37.610981, 49.608231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896137, 38.377289, 50.014648>,  <38.426315, 37.880833, 49.854958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896137, 38.377289, 50.014648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728245, 38.017986, 49.962551>,  <37.627510, 37.802406, 49.931293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728245, 38.017986, 49.962551>,  <37.896137, 38.377289, 50.014648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728245, 38.017986, 49.962551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367601, 0.037033, 0.929246,
		-0.829876, 0.437912, -0.345744,
		-0.419731, -0.898255, -0.130244,
		37.602325, 37.748508, 49.923477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258430, 38.347775, 50.244717>,  <37.896137, 38.377289, 50.014648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258430, 38.347775, 50.244717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372082, 37.964310, 50.250816>,  <37.440273, 37.734230, 50.254475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372082, 37.964310, 50.250816>,  <37.258430, 38.347775, 50.244717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372082, 37.964310, 50.250816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431516, -0.113661, 0.894916,
		-0.856192, -0.260851, -0.445973,
		0.284130, -0.958665, 0.015246,
		37.457321, 37.676712, 50.255390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672028, 37.889576, 50.434483>,  <37.258430, 38.347775, 50.244717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672028, 37.889576, 50.434483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986389, 37.649872, 50.495472>,  <37.175007, 37.506050, 50.532066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986389, 37.649872, 50.495472>,  <36.672028, 37.889576, 50.434483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986389, 37.649872, 50.495472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475162, -0.427471, 0.769083,
		-0.395700, -0.676875, -0.620695,
		0.785903, -0.599257, 0.152475,
		37.222160, 37.470097, 50.541214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351810, 37.349396, 50.742100>,  <36.672028, 37.889576, 50.434483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351810, 37.349396, 50.742100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.735500, 37.277416, 50.829281>,  <36.965714, 37.234226, 50.881588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.735500, 37.277416, 50.829281>,  <36.351810, 37.349396, 50.742100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735500, 37.277416, 50.829281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258153, -0.243870, 0.934818,
		-0.115067, -0.952967, -0.280381,
		0.959227, -0.179948, 0.217950,
		37.023270, 37.223431, 50.894665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409626, 36.658390, 50.966278>,  <36.351810, 37.349396, 50.742100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409626, 36.658390, 50.966278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744312, 36.834290, 51.096832>,  <36.945122, 36.939831, 51.175167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744312, 36.834290, 51.096832>,  <36.409626, 36.658390, 50.966278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744312, 36.834290, 51.096832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079839, -0.491672, 0.867113,
		0.541792, -0.751582, -0.376278,
		0.836712, 0.439753, 0.326390,
		36.995327, 36.966217, 51.194748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634521, 36.120483, 51.361408>,  <36.409626, 36.658390, 50.966278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634521, 36.120483, 51.361408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.830265, 36.446964, 51.484264>,  <36.947712, 36.642853, 51.557976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.830265, 36.446964, 51.484264>,  <36.634521, 36.120483, 51.361408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830265, 36.446964, 51.484264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116083, -0.288090, 0.950541,
		0.864321, -0.500812, -0.046233,
		0.489361, 0.816205, 0.307138,
		36.977074, 36.691826, 51.576405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133808, 35.939564, 51.826294>,  <36.634521, 36.120483, 51.361408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133808, 35.939564, 51.826294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.046185, 36.321003, 51.908913>,  <36.993610, 36.549866, 51.958485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.046185, 36.321003, 51.908913>,  <37.133808, 35.939564, 51.826294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046185, 36.321003, 51.908913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063902, -0.225254, 0.972202,
		0.973616, 0.199772, 0.110281,
		-0.219061, 0.953599, 0.206545,
		36.980465, 36.607082, 51.970875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369576, 35.934475, 52.519455>,  <37.133808, 35.939564, 51.826294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369576, 35.934475, 52.519455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.164120, 36.271240, 52.453293>,  <37.040848, 36.473301, 52.413597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.164120, 36.271240, 52.453293>,  <37.369576, 35.934475, 52.519455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164120, 36.271240, 52.453293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415511, -0.075409, 0.906457,
		0.750685, 0.534318, 0.388558,
		-0.513637, 0.841913, -0.165406,
		37.010029, 36.523815, 52.403671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365501, 36.332447, 53.208931>,  <37.369576, 35.934475, 52.519455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365501, 36.332447, 53.208931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.060581, 36.471458, 52.990528>,  <36.877628, 36.554867, 52.859486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.060581, 36.471458, 52.990528>,  <37.365501, 36.332447, 53.208931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060581, 36.471458, 52.990528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574797, 0.024267, 0.817936,
		0.297510, 0.937354, 0.181262,
		-0.762297, 0.347532, -0.546008,
		36.831894, 36.575718, 52.826725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150612, 36.913502, 53.480167>,  <37.365501, 36.332447, 53.208931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150612, 36.913502, 53.480167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.834183, 36.801327, 53.262707>,  <36.644325, 36.734020, 53.132229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.834183, 36.801327, 53.262707>,  <37.150612, 36.913502, 53.480167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834183, 36.801327, 53.262707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583759, 0.080430, 0.807934,
		-0.182849, 0.956496, -0.227334,
		-0.791070, -0.280438, -0.543656,
		36.596863, 36.717194, 53.099609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610584, 37.350677, 53.704571>,  <37.150612, 36.913502, 53.480167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610584, 37.350677, 53.704571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446095, 37.027550, 53.535660>,  <36.347401, 36.833672, 53.434311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446095, 37.027550, 53.535660>,  <36.610584, 37.350677, 53.704571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446095, 37.027550, 53.535660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703388, -0.013434, 0.710680,
		-0.579773, 0.589279, -0.562685,
		-0.411229, -0.807818, -0.422280,
		36.322727, 36.785206, 53.408978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894112, 37.440472, 53.613041>,  <36.610584, 37.350677, 53.704571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894112, 37.440472, 53.613041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926277, 37.041771, 53.611713>,  <35.945576, 36.802551, 53.610916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926277, 37.041771, 53.611713>,  <35.894112, 37.440472, 53.613041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926277, 37.041771, 53.611713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756914, -0.063231, 0.650448,
		-0.648548, -0.049791, -0.759543,
		0.080413, -0.996756, -0.003320,
		35.950401, 36.742744, 53.610718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241325, 37.164841, 53.405487>,  <35.894112, 37.440472, 53.613041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241325, 37.164841, 53.405487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441605, 36.873764, 53.592999>,  <35.561771, 36.699116, 53.705505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441605, 36.873764, 53.592999>,  <35.241325, 37.164841, 53.405487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441605, 36.873764, 53.592999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826588, -0.241157, 0.508523,
		-0.256997, -0.642111, -0.722250,
		0.500704, -0.727693, 0.468785,
		35.591816, 36.655457, 53.733635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809715, 36.572392, 53.412037>,  <35.241325, 37.164841, 53.405487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809715, 36.572392, 53.412037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.085548, 36.526207, 53.698017>,  <35.251049, 36.498497, 53.869606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.085548, 36.526207, 53.698017>,  <34.809715, 36.572392, 53.412037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085548, 36.526207, 53.698017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719803, -0.218030, 0.659050,
		0.079784, -0.969088, -0.233459,
		0.689578, -0.115462, 0.714948,
		35.292423, 36.491570, 53.912502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569103, 36.009598, 53.570354>,  <34.809715, 36.572392, 53.412037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569103, 36.009598, 53.570354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809071, 36.131531, 53.866238>,  <34.953053, 36.204693, 54.043770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809071, 36.131531, 53.866238>,  <34.569103, 36.009598, 53.570354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809071, 36.131531, 53.866238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714048, -0.213037, 0.666896,
		0.360879, -0.928273, 0.089862,
		0.599918, 0.304834, 0.739712,
		34.989044, 36.222980, 54.088150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554741, 35.553612, 54.045914>,  <34.569103, 36.009598, 53.570354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554741, 35.553612, 54.045914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.685123, 35.844379, 54.287685>,  <34.763351, 36.018841, 54.432751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.685123, 35.844379, 54.287685>,  <34.554741, 35.553612, 54.045914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685123, 35.844379, 54.287685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728290, -0.214576, 0.650808,
		0.602783, -0.652336, 0.459468,
		0.325955, 0.726921, 0.604433,
		34.782909, 36.062454, 54.469017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500427, 35.218506, 54.652054>,  <34.554741, 35.553612, 54.045914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500427, 35.218506, 54.652054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515430, 35.610287, 54.731316>,  <34.524433, 35.845356, 54.778873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515430, 35.610287, 54.731316>,  <34.500427, 35.218506, 54.652054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515430, 35.610287, 54.731316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691608, -0.117688, 0.712621,
		0.721299, -0.163778, 0.672982,
		0.037510, 0.979452, 0.198158,
		34.526684, 35.904121, 54.790764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550720, 35.240276, 55.352062>,  <34.500427, 35.218506, 54.652054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550720, 35.240276, 55.352062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.437424, 35.610435, 55.251339>,  <34.369446, 35.832531, 55.190907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.437424, 35.610435, 55.251339>,  <34.550720, 35.240276, 55.352062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437424, 35.610435, 55.251339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639548, 0.013399, 0.768634,
		0.714670, 0.378749, 0.588044,
		-0.283240, 0.925402, -0.251804,
		34.352451, 35.888058, 55.175797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603024, 35.599339, 55.944580>,  <34.550720, 35.240276, 55.352062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603024, 35.599339, 55.944580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.338406, 35.792416, 55.715019>,  <34.179634, 35.908260, 55.577282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.338406, 35.792416, 55.715019>,  <34.603024, 35.599339, 55.944580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338406, 35.792416, 55.715019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582338, 0.151509, 0.798704,
		0.472480, 0.862585, 0.180860,
		-0.661548, 0.482693, -0.573901,
		34.139942, 35.937225, 55.542850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309837, 36.194855, 56.394459>,  <34.603024, 35.599339, 55.944580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309837, 36.194855, 56.394459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.039001, 36.160351, 56.102127>,  <33.876499, 36.139648, 55.926727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.039001, 36.160351, 56.102127>,  <34.309837, 36.194855, 56.394459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039001, 36.160351, 56.102127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732893, 0.168726, 0.659090,
		0.066454, 0.981881, -0.177464,
		-0.677091, -0.086263, -0.730826,
		33.835873, 36.134472, 55.882881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916534, 36.754639, 56.551323>,  <34.309837, 36.194855, 56.394459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916534, 36.754639, 56.551323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.693993, 36.538670, 56.298672>,  <33.560467, 36.409088, 56.147083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.693993, 36.538670, 56.298672>,  <33.916534, 36.754639, 56.551323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693993, 36.538670, 56.298672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816928, 0.216377, 0.534612,
		-0.151982, 0.813426, -0.561462,
		-0.556354, -0.539925, -0.631625,
		33.527088, 36.376694, 56.109184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292168, 37.132023, 56.468632>,  <33.916534, 36.754639, 56.551323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292168, 37.132023, 56.468632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.201065, 36.751926, 56.383625>,  <33.146404, 36.523869, 56.332619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.201065, 36.751926, 56.383625>,  <33.292168, 37.132023, 56.468632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201065, 36.751926, 56.383625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848587, 0.086663, 0.521909,
		-0.477523, 0.299209, -0.826103,
		-0.227752, -0.950244, -0.212521,
		33.132740, 36.466854, 56.319870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613903, 37.249393, 56.622139>,  <33.292168, 37.132023, 56.468632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613903, 37.249393, 56.622139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647118, 36.852028, 56.590572>,  <32.667046, 36.613609, 56.571632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647118, 36.852028, 56.590572>,  <32.613903, 37.249393, 56.622139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647118, 36.852028, 56.590572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783903, -0.114005, 0.610327,
		-0.615306, 0.011186, -0.788209,
		0.083032, -0.993417, -0.078917,
		32.672028, 36.554001, 56.566898>
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
