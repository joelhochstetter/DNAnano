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
	<36.337280, 52.366905, 50.621075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548260, 52.435894, 50.288315>,  <36.674847, 52.477287, 50.088661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548260, 52.435894, 50.288315>,  <36.337280, 52.366905, 50.621075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548260, 52.435894, 50.288315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824666, 0.131484, 0.550126,
		0.204263, -0.976199, -0.072882,
		0.527450, 0.172473, -0.831895,
		36.706493, 52.487637, 50.038746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994469, 52.116947, 50.754181>,  <36.337280, 52.366905, 50.621075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994469, 52.116947, 50.754181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043911, 52.366837, 50.445778>,  <37.073578, 52.516769, 50.260738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043911, 52.366837, 50.445778>,  <36.994469, 52.116947, 50.754181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043911, 52.366837, 50.445778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849855, 0.334484, 0.407267,
		0.512316, -0.705582, -0.489577,
		0.123605, 0.624719, -0.771004,
		37.080994, 52.554253, 50.214478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575336, 52.361397, 50.239944>,  <36.994469, 52.116947, 50.754181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575336, 52.361397, 50.239944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571590, 52.242752, 50.621925>,  <37.569344, 52.171566, 50.851112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571590, 52.242752, 50.621925>,  <37.575336, 52.361397, 50.239944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571590, 52.242752, 50.621925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977857, 0.196947, 0.070761,
		-0.209064, 0.934469, 0.288201,
		-0.009364, -0.296613, 0.954952,
		37.568783, 52.153767, 50.908409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026047, 52.862247, 50.616688>,  <37.575336, 52.361397, 50.239944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026047, 52.862247, 50.616688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002277, 52.514954, 50.813721>,  <37.988014, 52.306576, 50.931942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002277, 52.514954, 50.813721>,  <38.026047, 52.862247, 50.616688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002277, 52.514954, 50.813721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990601, 0.009611, 0.136447,
		-0.123203, 0.496060, 0.859503,
		-0.059425, -0.868235, 0.492581,
		37.984451, 52.254482, 50.961494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439636, 52.901623, 51.151917>,  <38.026047, 52.862247, 50.616688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439636, 52.901623, 51.151917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414715, 52.510178, 51.073502>,  <38.399761, 52.275311, 51.026451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414715, 52.510178, 51.073502>,  <38.439636, 52.901623, 51.151917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414715, 52.510178, 51.073502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997814, -0.065411, 0.009424,
		-0.022046, -0.195025, 0.980551,
		-0.062301, -0.978615, -0.196040,
		38.396023, 52.216595, 51.014690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795418, 52.513153, 51.660065>,  <38.439636, 52.901623, 51.151917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795418, 52.513153, 51.660065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776230, 52.314495, 51.313416>,  <38.764717, 52.195301, 51.105427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776230, 52.314495, 51.313416>,  <38.795418, 52.513153, 51.660065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776230, 52.314495, 51.313416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998717, -0.009753, -0.049694,
		0.016228, -0.867899, 0.496476,
		-0.047972, -0.496645, -0.866627,
		38.761837, 52.165501, 51.053429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290607, 51.964352, 51.684464>,  <38.795418, 52.513153, 51.660065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290607, 51.964352, 51.684464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217327, 52.030628, 51.296860>,  <39.173359, 52.070393, 51.064297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217327, 52.030628, 51.296860>,  <39.290607, 51.964352, 51.684464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217327, 52.030628, 51.296860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945958, 0.298009, -0.127881,
		0.267585, -0.940073, -0.211331,
		-0.183196, 0.165691, -0.969013,
		39.162369, 52.080338, 51.006157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814568, 51.578346, 51.290344>,  <39.290607, 51.964352, 51.684464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814568, 51.578346, 51.290344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670700, 51.912865, 51.124813>,  <39.584381, 52.113575, 51.025494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670700, 51.912865, 51.124813>,  <39.814568, 51.578346, 51.290344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670700, 51.912865, 51.124813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931653, 0.346393, -0.109703,
		0.051604, -0.425004, -0.903719,
		-0.359666, 0.836292, -0.413832,
		39.562801, 52.163754, 51.000664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391930, 51.621296, 50.683018>,  <39.814568, 51.578346, 51.290344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391930, 51.621296, 50.683018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360783, 51.555515, 51.076340>,  <40.342094, 51.516048, 51.312332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360783, 51.555515, 51.076340>,  <40.391930, 51.621296, 50.683018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360783, 51.555515, 51.076340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223536, 0.964070, 0.143528,
		-0.971580, -0.208628, -0.111831,
		-0.077869, -0.164447, 0.983308,
		40.337421, 51.506180, 51.371330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041309, 52.093922, 50.851627>,  <40.391930, 51.621296, 50.683018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041309, 52.093922, 50.851627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876907, 51.978092, 51.197395>,  <40.778267, 51.908592, 51.404858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876907, 51.978092, 51.197395>,  <41.041309, 52.093922, 50.851627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876907, 51.978092, 51.197395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911498, -0.146947, 0.384160,
		0.015781, 0.945807, 0.324345,
		-0.411002, -0.289577, 0.864420,
		40.753605, 51.891220, 51.456722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204281, 52.503941, 51.572369>,  <41.041309, 52.093922, 50.851627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204281, 52.503941, 51.572369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131496, 52.112446, 51.610237>,  <41.087826, 51.877548, 51.632957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131496, 52.112446, 51.610237>,  <41.204281, 52.503941, 51.572369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131496, 52.112446, 51.610237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926548, -0.138425, 0.349783,
		-0.329242, 0.151360, 0.932035,
		-0.181960, -0.978738, 0.094667,
		41.076908, 51.818825, 51.638638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483551, 52.292934, 52.203739>,  <41.204281, 52.503941, 51.572369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483551, 52.292934, 52.203739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457649, 51.984749, 51.950066>,  <41.442108, 51.799839, 51.797859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457649, 51.984749, 51.950066>,  <41.483551, 52.292934, 52.203739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457649, 51.984749, 51.950066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923734, -0.286707, 0.253998,
		-0.377522, -0.569374, 0.730267,
		-0.064753, -0.770462, -0.634188,
		41.438225, 51.753609, 51.759808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515789, 51.681416, 52.560577>,  <41.483551, 52.292934, 52.203739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515789, 51.681416, 52.560577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650967, 51.616486, 52.189751>,  <41.732071, 51.577530, 51.967255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650967, 51.616486, 52.189751>,  <41.515789, 51.681416, 52.560577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650967, 51.616486, 52.189751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925511, -0.121605, 0.358665,
		-0.170955, -0.979216, 0.109135,
		0.337940, -0.162322, -0.927065,
		41.752350, 51.567791, 51.911633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856037, 51.022446, 52.479809>,  <41.515789, 51.681416, 52.560577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856037, 51.022446, 52.479809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027222, 51.288292, 52.234814>,  <42.129932, 51.447800, 52.087818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027222, 51.288292, 52.234814>,  <41.856037, 51.022446, 52.479809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027222, 51.288292, 52.234814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901651, -0.267260, 0.339996,
		0.062274, -0.697751, -0.713628,
		0.427957, 0.664617, -0.612485,
		42.155609, 51.487679, 52.051067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343685, 50.670204, 51.993542>,  <41.856037, 51.022446, 52.479809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343685, 50.670204, 51.993542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431610, 51.053596, 52.066196>,  <42.484364, 51.283634, 52.109787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431610, 51.053596, 52.066196>,  <42.343685, 50.670204, 51.993542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431610, 51.053596, 52.066196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905161, -0.269824, 0.328449,
		0.363822, 0.092211, -0.926893,
		0.219811, 0.958484, 0.181633,
		42.497555, 51.341141, 52.120686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667412, 51.019821, 52.658749>,  <42.343685, 50.670204, 51.993542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667412, 51.019821, 52.658749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928459, 51.117058, 52.945801>,  <43.085087, 51.175400, 53.118034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928459, 51.117058, 52.945801>,  <42.667412, 51.019821, 52.658749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928459, 51.117058, 52.945801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748570, -0.060370, -0.660302,
		-0.117190, 0.968123, -0.221369,
		0.652618, 0.243091, 0.717633,
		43.124245, 51.189983, 53.161091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021408, 51.643307, 52.559864>,  <42.667412, 51.019821, 52.658749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021408, 51.643307, 52.559864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259277, 51.402252, 52.772728>,  <43.401997, 51.257618, 52.900448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259277, 51.402252, 52.772728>,  <43.021408, 51.643307, 52.559864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259277, 51.402252, 52.772728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777194, 0.261507, -0.572349,
		0.205757, 0.753950, 0.623878,
		0.594671, -0.602639, 0.532159,
		43.437679, 51.221462, 52.932377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591202, 52.018673, 52.757980>,  <43.021408, 51.643307, 52.559864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591202, 52.018673, 52.757980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699898, 51.633926, 52.745506>,  <43.765118, 51.403080, 52.738022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699898, 51.633926, 52.745506>,  <43.591202, 52.018673, 52.757980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699898, 51.633926, 52.745506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856974, 0.256600, -0.446936,
		0.437893, 0.094729, 0.894022,
		0.271744, -0.961864, -0.031183,
		43.781422, 51.345367, 52.736153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291515, 52.125080, 52.783710>,  <43.591202, 52.018673, 52.757980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291515, 52.125080, 52.783710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197395, 51.767063, 52.632172>,  <44.140923, 51.552254, 52.541248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197395, 51.767063, 52.632172>,  <44.291515, 52.125080, 52.783710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197395, 51.767063, 52.632172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720341, 0.101087, -0.686215,
		0.652490, -0.434367, 0.620953,
		-0.235298, -0.895046, -0.378851,
		44.126804, 51.498550, 52.518517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211094, 52.512417, 53.439793>,  <44.291515, 52.125080, 52.783710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211094, 52.512417, 53.439793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540569, 52.319256, 53.320896>,  <44.738255, 52.203358, 53.249557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540569, 52.319256, 53.320896>,  <44.211094, 52.512417, 53.439793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540569, 52.319256, 53.320896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523171, 0.849357, 0.069885,
		0.218713, -0.213069, 0.952243,
		0.823685, -0.482901, -0.297238,
		44.787674, 52.174385, 53.231724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703411, 52.796764, 53.966530>,  <44.211094, 52.512417, 53.439793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703411, 52.796764, 53.966530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793259, 52.698265, 53.589401>,  <44.847168, 52.639164, 53.363125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793259, 52.698265, 53.589401>,  <44.703411, 52.796764, 53.966530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793259, 52.698265, 53.589401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415909, 0.899213, -0.135774,
		0.881231, -0.361631, 0.304394,
		0.224615, -0.246249, -0.942820,
		44.860641, 52.624390, 53.306557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417088, 52.835609, 53.833382>,  <44.703411, 52.796764, 53.966530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417088, 52.835609, 53.833382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177914, 52.921120, 53.524376>,  <45.034409, 52.972427, 53.338974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177914, 52.921120, 53.524376>,  <45.417088, 52.835609, 53.833382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.177914, 52.921120, 53.524376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479717, 0.867554, -0.131232,
		0.642140, -0.449055, -0.621293,
		-0.597936, 0.213775, -0.772511,
		44.998531, 52.985252, 53.292622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664288, 52.866619, 53.124725>,  <45.417088, 52.835609, 53.833382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664288, 52.866619, 53.124725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380028, 53.141609, 53.184525>,  <45.209473, 53.306602, 53.220406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380028, 53.141609, 53.184525>,  <45.664288, 52.866619, 53.124725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380028, 53.141609, 53.184525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678587, 0.725884, -0.112303,
		-0.185726, 0.021641, -0.982363,
		-0.710651, 0.687477, 0.149501,
		45.166832, 53.347851, 53.229374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963985, 53.400539, 52.753078>,  <45.664288, 52.866619, 53.124725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963985, 53.400539, 52.753078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754601, 53.583702, 53.040497>,  <45.628971, 53.693600, 53.212948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754601, 53.583702, 53.040497>,  <45.963985, 53.400539, 52.753078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754601, 53.583702, 53.040497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717388, 0.691865, 0.081712,
		-0.459718, 0.558247, -0.690666,
		-0.523463, 0.457911, 0.718543,
		45.597561, 53.721077, 53.256062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.995255, 54.098492, 52.527699>,  <45.963985, 53.400539, 52.753078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.995255, 54.098492, 52.527699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937462, 54.052544, 52.920826>,  <45.902786, 54.024975, 53.156700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937462, 54.052544, 52.920826>,  <45.995255, 54.098492, 52.527699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.937462, 54.052544, 52.920826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740359, 0.646426, 0.184397,
		-0.656500, 0.754280, -0.008350,
		-0.144485, -0.114875, 0.982816,
		45.894115, 54.018082, 53.215672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809341, 54.260391, 52.718872>,  <45.995255, 54.098492, 52.527699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.809341, 54.260391, 52.718872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.862629, 53.900074, 52.884193>,  <46.894604, 53.683884, 52.983387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.862629, 53.900074, 52.884193>,  <46.809341, 54.260391, 52.718872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.862629, 53.900074, 52.884193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714115, 0.376414, 0.590214,
		-0.687235, 0.216517, 0.693418,
		0.133221, -0.900796, 0.413303,
		46.902596, 53.629837, 53.008183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.662094, 54.186192, 53.537586>,  <46.809341, 54.260391, 52.718872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.662094, 54.186192, 53.537586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941257, 53.957718, 53.364769>,  <47.108757, 53.820633, 53.261078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941257, 53.957718, 53.364769>,  <46.662094, 54.186192, 53.537586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.941257, 53.957718, 53.364769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715995, 0.542655, 0.439177,
		-0.016401, -0.615849, 0.787694,
		0.697913, -0.571188, -0.432044,
		47.150631, 53.786362, 53.235157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.185371, 54.349285, 54.016361>,  <46.662094, 54.186192, 53.537586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.185371, 54.349285, 54.016361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.353821, 54.122272, 53.733360>,  <47.454891, 53.986065, 53.563560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.353821, 54.122272, 53.733360>,  <47.185371, 54.349285, 54.016361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.353821, 54.122272, 53.733360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906888, 0.275994, 0.318403,
		0.014563, -0.775714, 0.630916,
		0.421119, -0.567534, -0.707505,
		47.480156, 53.952011, 53.521111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.807995, 53.935360, 54.249626>,  <47.185371, 54.349285, 54.016361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.807995, 53.935360, 54.249626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.863571, 54.016792, 53.861965>,  <47.896919, 54.065651, 53.629368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.863571, 54.016792, 53.861965>,  <47.807995, 53.935360, 54.249626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.863571, 54.016792, 53.861965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955053, 0.231229, 0.185494,
		0.261858, -0.951362, -0.162300,
		0.138943, 0.203578, -0.969150,
		47.905254, 54.077866, 53.571220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.365223, 53.521786, 53.998348>,  <47.807995, 53.935360, 54.249626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.365223, 53.521786, 53.998348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.311291, 53.882126, 53.833286>,  <48.278931, 54.098331, 53.734249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.311291, 53.882126, 53.833286>,  <48.365223, 53.521786, 53.998348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.311291, 53.882126, 53.833286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951210, 0.234320, 0.200733,
		0.277525, -0.365459, -0.888493,
		-0.134832, 0.900851, -0.412658,
		48.270840, 54.152382, 53.709488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.862705, 53.539993, 53.482220>,  <48.365223, 53.521786, 53.998348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.862705, 53.539993, 53.482220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.766811, 53.917038, 53.575180>,  <48.709274, 54.143265, 53.630955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.766811, 53.917038, 53.575180>,  <48.862705, 53.539993, 53.482220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.766811, 53.917038, 53.575180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964991, 0.205122, 0.163454,
		0.106403, 0.263451, -0.958787,
		-0.239730, 0.942613, 0.232402,
		48.694893, 54.199821, 53.644901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.316971, 53.877827, 53.118816>,  <48.862705, 53.539993, 53.482220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.316971, 53.877827, 53.118816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.203838, 54.080864, 53.444359>,  <49.135960, 54.202686, 53.639683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.203838, 54.080864, 53.444359>,  <49.316971, 53.877827, 53.118816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.203838, 54.080864, 53.444359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956952, 0.206989, 0.203466,
		-0.065181, 0.836365, -0.544284,
		-0.282832, 0.507591, 0.813853,
		49.118988, 54.233143, 53.688515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.633747, 54.534046, 53.133076>,  <49.316971, 53.877827, 53.118816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.633747, 54.534046, 53.133076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.574928, 54.408901, 53.508415>,  <49.539639, 54.333813, 53.733620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.574928, 54.408901, 53.508415>,  <49.633747, 54.534046, 53.133076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.574928, 54.408901, 53.508415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970425, 0.137984, 0.198082,
		-0.191450, 0.939721, 0.283321,
		-0.147048, -0.312865, 0.938345,
		49.530815, 54.315041, 53.789917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.988014, 54.969021, 53.551552>,  <49.633747, 54.534046, 53.133076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.988014, 54.969021, 53.551552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.949917, 54.634026, 53.766785>,  <49.927059, 54.433029, 53.895924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.949917, 54.634026, 53.766785>,  <49.988014, 54.969021, 53.551552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.949917, 54.634026, 53.766785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951307, 0.082612, 0.296969,
		-0.293162, 0.540169, 0.788843,
		-0.095245, -0.837492, 0.538085,
		49.921345, 54.382778, 53.928211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.280102, 55.169476, 54.193401>,  <49.988014, 54.969021, 53.551552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.280102, 55.169476, 54.193401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.295956, 54.777180, 54.116898>,  <50.305466, 54.541801, 54.070995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.295956, 54.777180, 54.116898>,  <50.280102, 55.169476, 54.193401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.295956, 54.777180, 54.116898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977518, -0.001616, 0.210845,
		-0.207092, -0.195320, 0.958625,
		0.039633, -0.980738, -0.191264,
		50.307846, 54.482960, 54.059517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.756306, 54.686634, 54.722202>,  <50.280102, 55.169476, 54.193401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.756306, 54.686634, 54.722202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.746365, 54.518978, 54.359169>,  <50.740402, 54.418385, 54.141350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.746365, 54.518978, 54.359169>,  <50.756306, 54.686634, 54.722202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.746365, 54.518978, 54.359169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973721, -0.215737, 0.072972,
		-0.226385, -0.881920, 0.413482,
		-0.024848, -0.419136, -0.907583,
		50.738911, 54.393238, 54.086895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.359955, 54.222301, 54.562012>,  <50.756306, 54.686634, 54.722202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.359955, 54.222301, 54.562012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.249481, 54.245056, 54.178242>,  <51.183197, 54.258709, 53.947979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.249481, 54.245056, 54.178242>,  <51.359955, 54.222301, 54.562012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.249481, 54.245056, 54.178242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818979, -0.508497, -0.265903,
		-0.502987, -0.859183, 0.093853,
		-0.276183, 0.056882, -0.959420,
		51.166626, 54.262123, 53.890415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.469849, 53.577034, 54.248627>,  <51.359955, 54.222301, 54.562012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.469849, 53.577034, 54.248627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.493084, 53.875538, 53.983379>,  <51.507027, 54.054638, 53.824230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.493084, 53.875538, 53.983379>,  <51.469849, 53.577034, 54.248627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.493084, 53.875538, 53.983379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946795, -0.251805, -0.200432,
		-0.316550, -0.616193, -0.721181,
		0.058092, 0.746258, -0.663117,
		51.510513, 54.099415, 53.784443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.883568, 53.329201, 53.624153>,  <51.469849, 53.577034, 54.248627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.883568, 53.329201, 53.624153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.885487, 53.729195, 53.623608>,  <51.886639, 53.969193, 53.623280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.885487, 53.729195, 53.623608>,  <51.883568, 53.329201, 53.624153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.885487, 53.729195, 53.623608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980051, -0.004969, -0.198682,
		-0.198687, -0.000380, -0.980063,
		0.004794, 0.999988, -0.001360,
		51.886925, 54.029190, 53.623199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.021812, 53.512356, 52.929134>,  <51.883568, 53.329201, 53.624153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.021812, 53.512356, 52.929134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.138195, 53.800327, 53.181179>,  <52.208023, 53.973110, 53.332405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.138195, 53.800327, 53.181179>,  <52.021812, 53.512356, 52.929134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.138195, 53.800327, 53.181179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915613, -0.018508, -0.401634,
		-0.277487, 0.693799, -0.664563,
		0.290953, 0.719931, 0.630116,
		52.225479, 54.016308, 53.370213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.452969, 54.185352, 52.634247>,  <52.021812, 53.512356, 52.929134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.452969, 54.185352, 52.634247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.554108, 54.112728, 53.014374>,  <52.614792, 54.069153, 53.242451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.554108, 54.112728, 53.014374>,  <52.452969, 54.185352, 52.634247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.554108, 54.112728, 53.014374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967371, 0.030974, -0.251463,
		0.016221, 0.982891, 0.183473,
		0.252844, -0.181565, 0.950318,
		52.629959, 54.058258, 53.299469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.845676, 54.729950, 52.840309>,  <52.452969, 54.185352, 52.634247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.845676, 54.729950, 52.840309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.927666, 54.392956, 53.039589>,  <52.976860, 54.190758, 53.159157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.927666, 54.392956, 53.039589>,  <52.845676, 54.729950, 52.840309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.927666, 54.392956, 53.039589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977169, 0.147056, -0.153349,
		0.055932, 0.518255, 0.853395,
		0.204970, -0.842489, 0.498197,
		52.989159, 54.140209, 53.189049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.315548, 54.718330, 53.506584>,  <52.845676, 54.729950, 52.840309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.315548, 54.718330, 53.506584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.363091, 54.398525, 53.271072>,  <53.391617, 54.206642, 53.129765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.363091, 54.398525, 53.271072>,  <53.315548, 54.718330, 53.506584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.363091, 54.398525, 53.271072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967508, 0.226530, -0.112301,
		0.223161, -0.556298, 0.800457,
		0.118855, -0.799510, -0.588776,
		53.398746, 54.158672, 53.094440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.860806, 54.265896, 53.769485>,  <53.315548, 54.718330, 53.506584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.860806, 54.265896, 53.769485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.877480, 54.254620, 53.369991>,  <53.887486, 54.247852, 53.130295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.877480, 54.254620, 53.369991>,  <53.860806, 54.265896, 53.769485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.877480, 54.254620, 53.369991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968654, 0.246147, 0.033480,
		0.244892, -0.968822, 0.037570,
		0.041684, -0.028193, -0.998733,
		53.889984, 54.246162, 53.070370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.252167, 53.614307, 53.402252>,  <53.860806, 54.265896, 53.769485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.252167, 53.614307, 53.402252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.238182, 54.009933, 53.344955>,  <54.229790, 54.247311, 53.310577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.238182, 54.009933, 53.344955>,  <54.252167, 53.614307, 53.402252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.238182, 54.009933, 53.344955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999237, 0.037092, 0.012219,
		0.017398, -0.142706, -0.989612,
		-0.034963, 0.989070, -0.143242,
		54.227692, 54.306656, 53.301983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.412777, 54.033588, 52.755676>,  <54.252167, 53.614307, 53.402252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.412777, 54.033588, 52.755676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.760910, 53.908268, 52.603691>,  <54.969788, 53.833076, 52.512501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.760910, 53.908268, 52.603691>,  <54.412777, 54.033588, 52.755676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.760910, 53.908268, 52.603691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355379, 0.933679, 0.044153,
		0.340927, -0.173457, 0.923949,
		0.870330, -0.313299, -0.379960,
		55.022011, 53.814278, 52.489704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.902447, 54.181988, 53.175724>,  <54.412777, 54.033588, 52.755676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.902447, 54.181988, 53.175724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.031242, 54.184048, 52.797031>,  <55.108521, 54.185284, 52.569817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.031242, 54.184048, 52.797031>,  <54.902447, 54.181988, 53.175724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.031242, 54.184048, 52.797031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393588, 0.908747, 0.138803,
		0.861052, -0.417314, 0.290581,
		0.321989, 0.005148, -0.946729,
		55.127838, 54.185593, 52.513012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.737915, 54.156956, 53.040306>,  <54.902447, 54.181988, 53.175724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.737915, 54.156956, 53.040306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.515366, 54.373199, 52.787895>,  <55.381836, 54.502945, 52.636448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.515366, 54.373199, 52.787895>,  <55.737915, 54.156956, 53.040306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.515366, 54.373199, 52.787895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511916, 0.821189, 0.252172,
		0.654519, -0.182733, -0.733630,
		-0.556369, 0.540609, -0.631027,
		55.348454, 54.535381, 52.598587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.188053, 54.561066, 52.634567>,  <55.737915, 54.156956, 53.040306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.188053, 54.561066, 52.634567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.823105, 54.724796, 52.632233>,  <55.604137, 54.823032, 52.630833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.823105, 54.724796, 52.632233>,  <56.188053, 54.561066, 52.634567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.823105, 54.724796, 52.632233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408818, 0.911797, 0.038665,
		0.021150, 0.032890, -0.999235,
		-0.912371, 0.409323, -0.005839,
		55.549393, 54.847591, 52.630482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.061363, 55.032421, 52.026772>,  <56.188053, 54.561066, 52.634567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.061363, 55.032421, 52.026772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.874405, 55.136776, 52.364643>,  <55.762230, 55.199390, 52.567364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.874405, 55.136776, 52.364643>,  <56.061363, 55.032421, 52.026772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.874405, 55.136776, 52.364643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466470, 0.884409, -0.015041,
		-0.750964, 0.386986, -0.535065,
		-0.467396, 0.260887, 0.844677,
		55.734184, 55.215042, 52.618046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.589592, 55.715736, 52.087322>,  <56.061363, 55.032421, 52.026772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.589592, 55.715736, 52.087322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.814713, 55.612049, 52.401283>,  <55.949783, 55.549835, 52.589661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.814713, 55.612049, 52.401283>,  <55.589592, 55.715736, 52.087322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.814713, 55.612049, 52.401283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475207, 0.878416, -0.050635,
		-0.676342, 0.401487, 0.617552,
		0.562797, -0.259219, 0.784898,
		55.983551, 55.534283, 52.636753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.677399, 56.237888, 52.545803>,  <55.589592, 55.715736, 52.087322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.677399, 56.237888, 52.545803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.996445, 56.002178, 52.597290>,  <56.187874, 55.860752, 52.628181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.996445, 56.002178, 52.597290>,  <55.677399, 56.237888, 52.545803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.996445, 56.002178, 52.597290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603123, 0.781723, -0.158591,
		-0.007166, 0.204125, 0.978919,
		0.797616, -0.589272, 0.128714,
		56.235729, 55.825397, 52.635906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.154778, 56.664421, 52.846302>,  <55.677399, 56.237888, 52.545803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.154778, 56.664421, 52.846302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.363594, 56.405556, 52.624077>,  <56.488884, 56.250237, 52.490742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.363594, 56.405556, 52.624077>,  <56.154778, 56.664421, 52.846302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.363594, 56.405556, 52.624077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638398, 0.728437, -0.248653,
		0.565613, -0.224864, 0.793422,
		0.522045, -0.647160, -0.555566,
		56.520206, 56.211407, 52.457409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.716812, 57.075165, 52.615269>,  <56.154778, 56.664421, 52.846302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.716812, 57.075165, 52.615269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.755836, 56.762199, 52.369240>,  <56.779251, 56.574421, 52.221622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.755836, 56.762199, 52.369240>,  <56.716812, 57.075165, 52.615269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.755836, 56.762199, 52.369240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775821, 0.446888, -0.445412,
		0.623364, -0.433731, 0.650611,
		0.097561, -0.782412, -0.615072,
		56.785107, 56.527477, 52.184719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.389320, 56.660755, 52.652451>,  <56.716812, 57.075165, 52.615269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.389320, 56.660755, 52.652451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.226799, 56.676300, 52.287285>,  <57.129288, 56.685627, 52.068184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.226799, 56.676300, 52.287285>,  <57.389320, 56.660755, 52.652451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.226799, 56.676300, 52.287285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819245, 0.457965, -0.345117,
		0.404671, -0.888121, -0.217907,
		-0.406299, 0.038860, -0.912913,
		57.104908, 56.687958, 52.013412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.793873, 56.241978, 52.183990>,  <57.389320, 56.660755, 52.652451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.793873, 56.241978, 52.183990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.603439, 56.559433, 52.032475>,  <57.489178, 56.749905, 51.941566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.603439, 56.559433, 52.032475>,  <57.793873, 56.241978, 52.183990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.603439, 56.559433, 52.032475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876727, 0.394805, -0.274736,
		-0.068495, -0.462889, -0.883766,
		-0.476087, 0.793639, -0.378785,
		57.460613, 56.797523, 51.918839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.162037, 56.520405, 51.617344>,  <57.793873, 56.241978, 52.183990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.162037, 56.520405, 51.617344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.931297, 56.835926, 51.702232>,  <57.792854, 57.025238, 51.753166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.931297, 56.835926, 51.702232>,  <58.162037, 56.520405, 51.617344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.931297, 56.835926, 51.702232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636620, 0.596922, -0.488262,
		-0.511819, -0.146553, -0.846501,
		-0.576851, 0.788801, 0.212217,
		57.758244, 57.072567, 51.765896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.144508, 56.947170, 51.015118>,  <58.162037, 56.520405, 51.617344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.144508, 56.947170, 51.015118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.108055, 57.126202, 51.370953>,  <58.086182, 57.233620, 51.584454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.108055, 57.126202, 51.370953>,  <58.144508, 56.947170, 51.015118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.108055, 57.126202, 51.370953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768891, 0.599317, -0.222768,
		-0.632852, 0.663695, -0.398758,
		-0.091132, 0.447580, 0.889588,
		58.080715, 57.260475, 51.637829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.024204, 57.662647, 50.948582>,  <58.144508, 56.947170, 51.015118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.024204, 57.662647, 50.948582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.222778, 57.616158, 51.292686>,  <58.341923, 57.588264, 51.499149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.222778, 57.616158, 51.292686>,  <58.024204, 57.662647, 50.948582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.222778, 57.616158, 51.292686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706999, 0.629149, -0.322992,
		-0.503693, 0.768547, 0.394499,
		0.496433, -0.116222, 0.860260,
		58.371708, 57.581291, 51.550766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.216545, 58.334560, 51.149216>,  <58.024204, 57.662647, 50.948582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.216545, 58.334560, 51.149216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.466141, 58.055424, 51.289871>,  <58.615898, 57.887943, 51.374264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.466141, 58.055424, 51.289871>,  <58.216545, 58.334560, 51.149216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.466141, 58.055424, 51.289871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780510, 0.578424, -0.237130,
		-0.037918, 0.422427, 0.905604,
		0.623993, -0.697841, 0.351641,
		58.653339, 57.846073, 51.395363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.749031, 58.815800, 51.317467>,  <58.216545, 58.334560, 51.149216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.749031, 58.815800, 51.317467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.435585, 58.870132, 51.074982>,  <58.247517, 58.902733, 50.929489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.435585, 58.870132, 51.074982>,  <58.749031, 58.815800, 51.317467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.435585, 58.870132, 51.074982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620686, -0.212550, 0.754699,
		-0.026341, 0.967664, 0.250865,
		-0.783616, 0.135829, -0.606214,
		58.200500, 58.910881, 50.893116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.737320, 59.355125, 51.881123>,  <58.749031, 58.815800, 51.317467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.737320, 59.355125, 51.881123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.489799, 59.045830, 51.936516>,  <58.341286, 58.860252, 51.969749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.489799, 59.045830, 51.936516>,  <58.737320, 59.355125, 51.881123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.489799, 59.045830, 51.936516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740750, 0.515698, -0.430518,
		0.261481, -0.368985, -0.891896,
		-0.618803, -0.773243, 0.138480,
		58.304157, 58.813858, 51.978058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.990559, 59.383526, 52.061852>,  <58.737320, 59.355125, 51.881123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.990559, 59.383526, 52.061852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.109123, 59.088028, 51.819729>,  <58.180260, 58.910728, 51.674454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.109123, 59.088028, 51.819729>,  <57.990559, 59.383526, 52.061852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.109123, 59.088028, 51.819729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546770, -0.388390, 0.741752,
		-0.783060, -0.550827, 0.288801,
		0.296409, -0.738744, -0.605309,
		58.198048, 58.866405, 51.638138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.797394, 59.789967, 52.714996>,  <57.990559, 59.383526, 52.061852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.797394, 59.789967, 52.714996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.910973, 60.114899, 52.918758>,  <57.979118, 60.309856, 53.041016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.910973, 60.114899, 52.918758>,  <57.797394, 59.789967, 52.714996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.910973, 60.114899, 52.918758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895373, -0.414712, 0.162236,
		0.343045, 0.410042, -0.845095,
		0.283948, 0.812330, 0.509405,
		57.996159, 60.358597, 53.071579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.709995, 59.413303, 53.427589>,  <57.797394, 59.789967, 52.714996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.709995, 59.413303, 53.427589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.071381, 59.566368, 53.350311>,  <58.288212, 59.658207, 53.303944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.071381, 59.566368, 53.350311>,  <57.709995, 59.413303, 53.427589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.071381, 59.566368, 53.350311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302815, -0.250726, 0.919478,
		0.303412, -0.889216, -0.342398,
		0.903463, 0.382664, -0.193194,
		58.342419, 59.681168, 53.292355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.141327, 58.870174, 53.369980>,  <57.709995, 59.413303, 53.427589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.141327, 58.870174, 53.369980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.291710, 59.222054, 53.486450>,  <58.381939, 59.433182, 53.556332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.291710, 59.222054, 53.486450>,  <58.141327, 58.870174, 53.369980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.291710, 59.222054, 53.486450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347498, -0.425140, 0.835764,
		0.859014, -0.213026, -0.465527,
		0.375953, 0.879702, 0.291175,
		58.404495, 59.485966, 53.573803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.904663, 58.968250, 53.627541>,  <58.141327, 58.870174, 53.369980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.904663, 58.968250, 53.627541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.765610, 59.270714, 53.849304>,  <58.682178, 59.452194, 53.982361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.765610, 59.270714, 53.849304>,  <58.904663, 58.968250, 53.627541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.765610, 59.270714, 53.849304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705298, -0.178724, 0.686012,
		0.617822, 0.629505, -0.471189,
		-0.347635, 0.756162, 0.554409,
		58.661320, 59.497562, 54.015625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.340927, 59.714924, 53.662689>,  <58.904663, 58.968250, 53.627541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.340927, 59.714924, 53.662689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.160652, 59.565914, 53.987183>,  <59.052486, 59.476509, 54.181881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.160652, 59.565914, 53.987183>,  <59.340927, 59.714924, 53.662689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.160652, 59.565914, 53.987183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891817, -0.147914, 0.427532,
		-0.039275, 0.916157, 0.398891,
		-0.450688, -0.372529, 0.811235,
		59.025444, 59.454155, 54.230553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.517109, 60.156738, 54.213310>,  <59.340927, 59.714924, 53.662689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.517109, 60.156738, 54.213310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.456429, 59.785988, 54.350647>,  <59.420021, 59.563538, 54.433048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.456429, 59.785988, 54.350647>,  <59.517109, 60.156738, 54.213310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.456429, 59.785988, 54.350647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909709, 0.004918, 0.415217,
		-0.386543, 0.375332, 0.842443,
		-0.151701, -0.926877, 0.343344,
		59.410919, 59.507923, 54.453651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.642372, 60.030079, 54.906189>,  <59.517109, 60.156738, 54.213310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.642372, 60.030079, 54.906189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.701317, 59.704269, 54.681747>,  <59.736683, 59.508785, 54.547085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.701317, 59.704269, 54.681747>,  <59.642372, 60.030079, 54.906189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.701317, 59.704269, 54.681747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846408, -0.189659, 0.497617,
		-0.511740, -0.548250, 0.661471,
		0.147364, -0.814525, -0.561099,
		59.745525, 59.459911, 54.513416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.988995, 59.478638, 55.347775>,  <59.642372, 60.030079, 54.906189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.988995, 59.478638, 55.347775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.083595, 59.387489, 54.969963>,  <60.140358, 59.332802, 54.743275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.083595, 59.387489, 54.969963>,  <59.988995, 59.478638, 55.347775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.083595, 59.387489, 54.969963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961875, -0.082500, 0.260751,
		-0.137342, -0.970190, 0.199671,
		0.236505, -0.227870, -0.944532,
		60.154549, 59.319130, 54.686604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.345936, 58.747147, 55.380764>,  <59.988995, 59.478638, 55.347775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.345936, 58.747147, 55.380764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.461060, 58.980835, 55.077225>,  <60.530132, 59.121048, 54.895100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.461060, 58.980835, 55.077225>,  <60.345936, 58.747147, 55.380764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.461060, 58.980835, 55.077225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941177, -0.026040, 0.336910,
		0.177071, -0.811174, -0.557353,
		0.287806, 0.584225, -0.758847,
		60.547401, 59.156101, 54.849571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.988220, 58.563061, 55.210030>,  <60.345936, 58.747147, 55.380764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.988220, 58.563061, 55.210030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.933670, 58.938057, 55.081955>,  <60.900940, 59.163055, 55.005112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.933670, 58.938057, 55.081955>,  <60.988220, 58.563061, 55.210030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.933670, 58.938057, 55.081955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882409, 0.261860, 0.390876,
		0.450284, -0.229227, -0.862959,
		-0.136376, 0.937488, -0.320183,
		60.892757, 59.219303, 54.985901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.556946, 58.708122, 54.801216>,  <60.988220, 58.563061, 55.210030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.556946, 58.708122, 54.801216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.396812, 59.047142, 54.940578>,  <61.300732, 59.250557, 55.024197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.396812, 59.047142, 54.940578>,  <61.556946, 58.708122, 54.801216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.396812, 59.047142, 54.940578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883691, 0.256440, 0.391573,
		0.242535, 0.464640, -0.851637,
		-0.400334, 0.847554, 0.348403,
		61.276711, 59.301407, 55.045101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.952309, 59.347046, 54.447468>,  <61.556946, 58.708122, 54.801216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.952309, 59.347046, 54.447468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.792419, 59.420998, 54.806587>,  <61.696487, 59.465366, 55.022060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.792419, 59.420998, 54.806587>,  <61.952309, 59.347046, 54.447468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.792419, 59.420998, 54.806587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859540, 0.415873, 0.297052,
		-0.318452, 0.890432, -0.325143,
		-0.399723, 0.184877, 0.897798,
		61.672501, 59.476460, 55.075928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.886990, 60.026905, 54.609154>,  <61.952309, 59.347046, 54.447468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.886990, 60.026905, 54.609154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.906799, 59.842621, 54.963623>,  <61.918686, 59.732052, 55.176304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.906799, 59.842621, 54.963623>,  <61.886990, 60.026905, 54.609154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.906799, 59.842621, 54.963623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828505, 0.514460, 0.221158,
		-0.557788, 0.723242, 0.407178,
		0.049526, -0.460708, 0.886169,
		61.921658, 59.704407, 55.229473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.989662, 60.531441, 55.224060>,  <61.886990, 60.026905, 54.609154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.989662, 60.531441, 55.224060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.153664, 60.203110, 55.383125>,  <62.252064, 60.006111, 55.478565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.153664, 60.203110, 55.383125>,  <61.989662, 60.531441, 55.224060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.153664, 60.203110, 55.383125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804096, 0.531082, 0.267174,
		-0.430498, 0.210220, 0.877770,
		0.410002, -0.820829, 0.397666,
		62.276665, 59.956860, 55.502426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.062374, 60.445709, 56.006939>,  <61.989662, 60.531441, 55.224060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.062374, 60.445709, 56.006939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.364716, 60.278877, 55.805054>,  <62.546120, 60.178780, 55.683922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.364716, 60.278877, 55.805054>,  <62.062374, 60.445709, 56.006939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.364716, 60.278877, 55.805054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630255, 0.672328, 0.388271,
		0.177390, -0.611571, 0.771047,
		0.755852, -0.417081, -0.504709,
		62.591473, 60.153751, 55.653641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.654125, 60.345924, 56.531803>,  <62.062374, 60.445709, 56.006939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.654125, 60.345924, 56.531803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.762444, 60.386669, 56.148911>,  <62.827435, 60.411114, 55.919174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.762444, 60.386669, 56.148911>,  <62.654125, 60.345924, 56.531803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.762444, 60.386669, 56.148911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651819, 0.712341, 0.260196,
		0.708378, -0.694403, 0.126510,
		0.270799, 0.101855, -0.957232,
		62.843681, 60.417225, 55.861740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.474640, 60.224594, 56.503769>,  <62.654125, 60.345924, 56.531803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.474640, 60.224594, 56.503769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.283226, 60.445496, 56.230705>,  <63.168377, 60.578037, 56.066868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.283226, 60.445496, 56.230705>,  <63.474640, 60.224594, 56.503769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.283226, 60.445496, 56.230705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577451, 0.783613, 0.229131,
		0.661478, -0.284554, -0.693885,
		-0.478537, 0.552250, -0.682658,
		63.139664, 60.611172, 56.025909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.113548, 59.713188, 56.460579>,  <63.474640, 60.224594, 56.503769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.113548, 59.713188, 56.460579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.476265, 59.581127, 56.565445>,  <64.693893, 59.501892, 56.628365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.476265, 59.581127, 56.565445>,  <64.113548, 59.713188, 56.460579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.476265, 59.581127, 56.565445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411038, 0.554209, -0.723809,
		0.093674, 0.764103, 0.638257,
		0.906793, -0.330150, 0.262160,
		64.748306, 59.482082, 56.644093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.689911, 60.177391, 56.480007>,  <64.113548, 59.713188, 56.460579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.689911, 60.177391, 56.480007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.730057, 59.797981, 56.359856>,  <64.754143, 59.570335, 56.287766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.730057, 59.797981, 56.359856>,  <64.689911, 60.177391, 56.480007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.730057, 59.797981, 56.359856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319320, 0.316639, -0.893182,
		0.942317, -0.006269, 0.334663,
		0.100368, -0.948525, -0.300376,
		64.760170, 59.513424, 56.269741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.516464, 60.357540, 56.372005>,  <64.689911, 60.177391, 56.480007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.516464, 60.357540, 56.372005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.326904, 60.046703, 56.537682>,  <65.213165, 59.860203, 56.637085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.326904, 60.046703, 56.537682>,  <65.516464, 60.357540, 56.372005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.326904, 60.046703, 56.537682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410057, -0.221503, -0.884754,
		0.779276, -0.589126, -0.213681,
		-0.473900, -0.777089, 0.414187,
		65.184731, 59.813576, 56.661938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.239967, 60.210598, 56.107769>,  <65.516464, 60.357540, 56.372005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.239967, 60.210598, 56.107769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.352654, 59.841705, 56.001839>,  <66.420265, 59.620369, 55.938282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.352654, 59.841705, 56.001839>,  <66.239967, 60.210598, 56.107769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.352654, 59.841705, 56.001839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959201, 0.263821, 0.101648,
		-0.023876, -0.282657, 0.958924,
		0.281716, -0.922228, -0.264826,
		66.437172, 59.565037, 55.922390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.847237, 59.893539, 56.499519>,  <66.239967, 60.210598, 56.107769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.847237, 59.893539, 56.499519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.867065, 59.713516, 56.142868>,  <66.878967, 59.605503, 55.928879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.867065, 59.713516, 56.142868>,  <66.847237, 59.893539, 56.499519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.867065, 59.713516, 56.142868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989910, 0.140788, -0.016018,
		0.132739, -0.881834, 0.452493,
		0.049580, -0.450054, -0.891624,
		66.881943, 59.578499, 55.875381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.490990, 59.533123, 56.735680>,  <66.847237, 59.893539, 56.499519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.490990, 59.533123, 56.735680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.756714, 59.488968, 57.031387>,  <67.916145, 59.462475, 57.208813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.756714, 59.488968, 57.031387>,  <67.490990, 59.533123, 56.735680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.756714, 59.488968, 57.031387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742879, 0.206878, -0.636658,
		-0.082657, 0.972119, 0.219436,
		0.664304, -0.110391, 0.739266,
		67.956001, 59.455853, 57.253166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.085747, 59.969994, 56.667969>,  <67.490990, 59.533123, 56.735680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.085747, 59.969994, 56.667969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.212532, 59.639183, 56.853683>,  <68.288605, 59.440697, 56.965111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.212532, 59.639183, 56.853683>,  <68.085747, 59.969994, 56.667969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.212532, 59.639183, 56.853683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777630, -0.053645, -0.626429,
		0.542980, 0.559598, 0.626117,
		0.316960, -0.827026, 0.464288,
		68.307617, 59.391075, 56.992970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.881996, 59.966576, 56.853355>,  <68.085747, 59.969994, 56.667969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.881996, 59.966576, 56.853355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.773361, 59.584328, 56.807693>,  <68.708183, 59.354977, 56.780296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.773361, 59.584328, 56.807693>,  <68.881996, 59.966576, 56.853355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.773361, 59.584328, 56.807693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734801, -0.129283, -0.665848,
		0.621541, -0.264711, 0.737303,
		-0.271578, -0.955622, -0.114155,
		68.691887, 59.297642, 56.773445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.441788, 59.431164, 56.910194>,  <68.881996, 59.966576, 56.853355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.441788, 59.431164, 56.910194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.157722, 59.281128, 56.671875>,  <68.987282, 59.191109, 56.528885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.157722, 59.281128, 56.671875>,  <69.441788, 59.431164, 56.910194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.157722, 59.281128, 56.671875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695809, -0.244937, -0.675171,
		0.107315, -0.894044, 0.434934,
		-0.710164, -0.375087, -0.595799,
		68.944672, 59.168602, 56.493134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.742355, 59.459831, 57.668182>,  <69.441788, 59.431164, 56.910194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.742355, 59.459831, 57.668182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.705040, 59.061577, 57.669586>,  <69.682648, 58.822624, 57.670429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.705040, 59.061577, 57.669586>,  <69.742355, 59.459831, 57.668182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.705040, 59.061577, 57.669586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215767, -0.016779, 0.976301,
		-0.971978, 0.091836, 0.216390,
		-0.093290, -0.995633, 0.003506,
		69.677055, 58.762886, 57.670639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.341339, 59.315662, 58.312195>,  <69.742355, 59.459831, 57.668182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.341339, 59.315662, 58.312195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.576775, 59.033356, 58.154488>,  <69.718040, 58.863972, 58.059864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.576775, 59.033356, 58.154488>,  <69.341339, 59.315662, 58.312195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.576775, 59.033356, 58.154488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416687, -0.153068, 0.896070,
		-0.692766, -0.691710, 0.203989,
		0.588597, -0.705767, -0.394267,
		69.753357, 58.821625, 58.036209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.163811, 58.716026, 58.576492>,  <69.341339, 59.315662, 58.312195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.163811, 58.716026, 58.576492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.553932, 58.724098, 58.488510>,  <69.788002, 58.728943, 58.435722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.553932, 58.724098, 58.488510>,  <69.163811, 58.716026, 58.576492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.553932, 58.724098, 58.488510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211928, -0.366136, 0.906107,
		-0.062248, -0.930342, -0.361370,
		0.975301, 0.020181, -0.219956,
		69.846519, 58.730152, 58.422523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.461418, 58.154308, 58.976933>,  <69.163811, 58.716026, 58.576492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.461418, 58.154308, 58.976933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.786743, 58.365280, 58.878677>,  <69.981941, 58.491863, 58.819725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.786743, 58.365280, 58.878677>,  <69.461418, 58.154308, 58.976933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.786743, 58.365280, 58.878677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542226, -0.534005, 0.648714,
		0.210984, -0.660796, -0.720302,
		0.813312, 0.527434, -0.245635,
		70.030739, 58.523510, 58.804989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.074036, 57.805073, 58.588032>,  <69.461418, 58.154308, 58.976933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.074036, 57.805073, 58.588032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.213516, 58.091621, 58.829765>,  <70.297203, 58.263550, 58.974804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.213516, 58.091621, 58.829765>,  <70.074036, 57.805073, 58.588032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.213516, 58.091621, 58.829765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391133, -0.697200, 0.600772,
		0.851717, 0.026885, -0.523312,
		0.348701, 0.716372, 0.604333,
		70.318123, 58.306534, 59.011066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.862289, 57.788429, 58.760311>,  <70.074036, 57.805073, 58.588032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.862289, 57.788429, 58.760311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.627213, 57.922073, 59.055061>,  <70.486168, 58.002262, 59.231911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.627213, 57.922073, 59.055061>,  <70.862289, 57.788429, 58.760311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.627213, 57.922073, 59.055061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351159, -0.715171, 0.604332,
		0.728910, 0.613921, 0.302971,
		-0.587688, 0.334113, 0.736879,
		70.450905, 58.022308, 59.276127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.146072, 57.193966, 59.046207>,  <70.862289, 57.788429, 58.760311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.146072, 57.193966, 59.046207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.336304, 57.396866, 59.333687>,  <71.450439, 57.518608, 59.506172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.336304, 57.396866, 59.333687>,  <71.146072, 57.193966, 59.046207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.336304, 57.396866, 59.333687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244902, -0.708354, 0.662010,
		0.844899, -0.490844, -0.212647,
		0.475573, 0.507254, 0.718696,
		71.478973, 57.549042, 59.549297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.667404, 57.545837, 58.657162>,  <71.146072, 57.193966, 59.046207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.667404, 57.545837, 58.657162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.941002, 57.813427, 58.773521>,  <72.105164, 57.973980, 58.843338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.941002, 57.813427, 58.773521>,  <71.667404, 57.545837, 58.657162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.941002, 57.813427, 58.773521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127560, -0.502319, 0.855222,
		0.718244, -0.547863, -0.428920,
		0.683999, 0.668971, 0.290902,
		72.146202, 58.014118, 58.860790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.076584, 57.229939, 59.149155>,  <71.667404, 57.545837, 58.657162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.076584, 57.229939, 59.149155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.168060, 57.604767, 59.254684>,  <72.222946, 57.829662, 59.318005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.168060, 57.604767, 59.254684>,  <72.076584, 57.229939, 59.149155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.168060, 57.604767, 59.254684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271695, -0.321678, 0.907031,
		0.934817, -0.135747, -0.328160,
		0.228689, 0.937068, 0.263829,
		72.236664, 57.885887, 59.333832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.761314, 57.261570, 59.539932>,  <72.076584, 57.229939, 59.149155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.761314, 57.261570, 59.539932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.529076, 57.557106, 59.676765>,  <72.389732, 57.734428, 59.758865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.529076, 57.557106, 59.676765>,  <72.761314, 57.261570, 59.539932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.529076, 57.557106, 59.676765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197488, -0.279803, 0.939526,
		0.789874, 0.613046, 0.016542,
		-0.580601, 0.738841, 0.342078,
		72.354897, 57.778759, 59.779388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.228180, 57.869850, 59.857849>,  <72.761314, 57.261570, 59.539932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.228180, 57.869850, 59.857849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.861725, 57.822578, 60.011070>,  <72.641853, 57.794216, 60.103004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.861725, 57.822578, 60.011070>,  <73.228180, 57.869850, 59.857849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.861725, 57.822578, 60.011070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379212, 0.054358, 0.923712,
		-0.129987, 0.991503, -0.004984,
		-0.916134, -0.118180, 0.383056,
		72.586884, 57.787125, 60.125988>
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
