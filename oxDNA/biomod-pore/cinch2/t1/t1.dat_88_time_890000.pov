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
	<43.316040, 32.572010, 22.991043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923706, 32.518776, 22.934124>,  <42.688305, 32.486835, 22.899973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923706, 32.518776, 22.934124>,  <43.316040, 32.572010, 22.991043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923706, 32.518776, 22.934124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157449, 0.111226, 0.981243,
		-0.114765, 0.984843, -0.130049,
		-0.980836, -0.133088, -0.142298,
		42.629456, 32.478848, 22.891436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895969, 33.092510, 23.270365>,  <43.316040, 32.572010, 22.991043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895969, 33.092510, 23.270365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688591, 32.750565, 23.278622>,  <42.564163, 32.545399, 23.283575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688591, 32.750565, 23.278622>,  <42.895969, 33.092510, 23.270365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688591, 32.750565, 23.278622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197884, 0.143423, 0.969676,
		-0.831898, 0.498641, -0.243520,
		-0.518447, -0.854861, 0.020640,
		42.533058, 32.494106, 23.284813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110680, 33.148888, 23.351738>,  <42.895969, 33.092510, 23.270365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110680, 33.148888, 23.351738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242340, 32.808132, 23.514683>,  <42.321335, 32.603680, 23.612450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242340, 32.808132, 23.514683>,  <42.110680, 33.148888, 23.351738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242340, 32.808132, 23.514683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602191, 0.142923, 0.785454,
		-0.727343, -0.503839, -0.465959,
		0.329146, -0.851891, 0.407362,
		42.341084, 32.552567, 23.636892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505756, 32.876335, 23.650597>,  <42.110680, 33.148888, 23.351738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505756, 32.876335, 23.650597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830498, 32.764545, 23.855648>,  <42.025341, 32.697472, 23.978678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830498, 32.764545, 23.855648>,  <41.505756, 32.876335, 23.650597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830498, 32.764545, 23.855648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481058, 0.177371, 0.858558,
		-0.330872, -0.943627, 0.009555,
		0.811854, -0.279476, 0.512627,
		42.074055, 32.680702, 24.009436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438824, 32.292843, 24.160128>,  <41.505756, 32.876335, 23.650597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438824, 32.292843, 24.160128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705173, 32.533546, 24.336533>,  <41.864983, 32.677967, 24.442375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705173, 32.533546, 24.336533>,  <41.438824, 32.292843, 24.160128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705173, 32.533546, 24.336533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601357, 0.083055, 0.794652,
		0.441561, -0.794347, 0.417176,
		0.665878, 0.601759, 0.441013,
		41.904938, 32.714073, 24.468836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734531, 32.173962, 24.305033>,  <41.438824, 32.292843, 24.160128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734531, 32.173962, 24.305033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435600, 32.347847, 24.104027>,  <40.256241, 32.452179, 23.983423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435600, 32.347847, 24.104027>,  <40.734531, 32.173962, 24.305033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435600, 32.347847, 24.104027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183485, 0.591860, 0.784879,
		0.638614, 0.678769, -0.362553,
		-0.747332, 0.434712, -0.502514,
		40.211399, 32.478260, 23.953272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818531, 32.946869, 24.371515>,  <40.734531, 32.173962, 24.305033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818531, 32.946869, 24.371515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437401, 32.856384, 24.290569>,  <40.208721, 32.802094, 24.242001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437401, 32.856384, 24.290569>,  <40.818531, 32.946869, 24.371515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437401, 32.856384, 24.290569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301500, 0.628610, 0.716901,
		-0.034963, 0.744095, -0.667159,
		-0.952825, -0.226214, -0.202366,
		40.151554, 32.788521, 24.229860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564686, 33.460949, 24.029184>,  <40.818531, 32.946869, 24.371515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564686, 33.460949, 24.029184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264778, 33.269985, 24.212460>,  <40.084835, 33.155407, 24.322424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264778, 33.269985, 24.212460>,  <40.564686, 33.460949, 24.029184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264778, 33.269985, 24.212460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102533, 0.767892, 0.632320,
		-0.653710, 0.427114, -0.624689,
		-0.749767, -0.477405, 0.458186,
		40.039848, 33.126762, 24.349915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301994, 34.016190, 24.306755>,  <40.564686, 33.460949, 24.029184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301994, 34.016190, 24.306755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117695, 33.697731, 24.463657>,  <40.007114, 33.506657, 24.557798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117695, 33.697731, 24.463657>,  <40.301994, 34.016190, 24.306755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117695, 33.697731, 24.463657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196174, 0.522385, 0.829837,
		-0.865578, 0.305397, -0.396872,
		-0.460750, -0.796145, 0.392254,
		39.979469, 33.458889, 24.581333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729610, 34.321983, 24.672846>,  <40.301994, 34.016190, 24.306755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729610, 34.321983, 24.672846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803337, 33.970333, 24.848652>,  <39.847572, 33.759342, 24.954136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803337, 33.970333, 24.848652>,  <39.729610, 34.321983, 24.672846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803337, 33.970333, 24.848652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058238, 0.436622, 0.897758,
		-0.981141, -0.191064, 0.029277,
		0.184312, -0.879122, 0.439515,
		39.858631, 33.706596, 24.980507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140297, 34.303062, 25.136488>,  <39.729610, 34.321983, 24.672846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140297, 34.303062, 25.136488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414829, 34.047829, 25.276089>,  <39.579548, 33.894688, 25.359848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414829, 34.047829, 25.276089>,  <39.140297, 34.303062, 25.136488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414829, 34.047829, 25.276089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069418, 0.420198, 0.904773,
		-0.723974, -0.645196, 0.244098,
		0.686326, -0.638087, 0.349000,
		39.620728, 33.856403, 25.380789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857113, 34.065479, 25.740568>,  <39.140297, 34.303062, 25.136488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857113, 34.065479, 25.740568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240494, 33.962406, 25.789505>,  <39.470524, 33.900562, 25.818867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240494, 33.962406, 25.789505>,  <38.857113, 34.065479, 25.740568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240494, 33.962406, 25.789505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072553, 0.194572, 0.978201,
		-0.275868, -0.946437, 0.167793,
		0.958453, -0.257680, 0.122343,
		39.528030, 33.885101, 25.826208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894936, 33.568153, 26.271788>,  <38.857113, 34.065479, 25.740568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894936, 33.568153, 26.271788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267487, 33.712040, 26.249363>,  <39.491016, 33.798370, 26.235909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267487, 33.712040, 26.249363>,  <38.894936, 33.568153, 26.271788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267487, 33.712040, 26.249363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018741, 0.201161, 0.979379,
		0.363579, -0.911118, 0.194097,
		0.931375, 0.359720, -0.056063,
		39.546898, 33.819954, 26.232544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217430, 33.365143, 26.971172>,  <38.894936, 33.568153, 26.271788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217430, 33.365143, 26.971172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461365, 33.652031, 26.836292>,  <39.607723, 33.824162, 26.755365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461365, 33.652031, 26.836292>,  <39.217430, 33.365143, 26.971172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461365, 33.652031, 26.836292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265479, 0.216023, 0.939603,
		0.746742, -0.662521, -0.058668,
		0.609833, 0.717217, -0.337199,
		39.644314, 33.867195, 26.735132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843361, 33.328247, 27.375336>,  <39.217430, 33.365143, 26.971172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843361, 33.328247, 27.375336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865685, 33.700596, 27.230911>,  <39.879078, 33.924004, 27.144257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865685, 33.700596, 27.230911>,  <39.843361, 33.328247, 27.375336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865685, 33.700596, 27.230911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203331, 0.343452, 0.916895,
		0.977518, -0.124584, -0.170108,
		0.055806, 0.930870, -0.361062,
		39.882427, 33.979858, 27.122593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453087, 33.687843, 27.681288>,  <39.843361, 33.328247, 27.375336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453087, 33.687843, 27.681288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252663, 34.016178, 27.571629>,  <40.132408, 34.213181, 27.505833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252663, 34.016178, 27.571629>,  <40.453087, 33.687843, 27.681288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252663, 34.016178, 27.571629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081309, 0.360036, 0.929389,
		0.861582, 0.443393, -0.247143,
		-0.501065, 0.820839, -0.274148,
		40.102345, 34.262428, 27.489384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667965, 34.236069, 28.105030>,  <40.453087, 33.687843, 27.681288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667965, 34.236069, 28.105030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319458, 34.391041, 27.984509>,  <40.110352, 34.484024, 27.912195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319458, 34.391041, 27.984509>,  <40.667965, 34.236069, 28.105030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319458, 34.391041, 27.984509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174078, 0.330046, 0.927775,
		0.458895, 0.860793, -0.220116,
		-0.871271, 0.387434, -0.301302,
		40.058075, 34.507271, 27.894117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630127, 34.840511, 28.442108>,  <40.667965, 34.236069, 28.105030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630127, 34.840511, 28.442108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245464, 34.785332, 28.347294>,  <40.014668, 34.752224, 28.290405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245464, 34.785332, 28.347294>,  <40.630127, 34.840511, 28.442108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245464, 34.785332, 28.347294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270746, 0.339688, 0.900727,
		-0.043735, 0.930367, -0.364012,
		-0.961657, -0.137948, -0.237036,
		39.956966, 34.743946, 28.276182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276894, 35.475716, 28.717272>,  <40.630127, 34.840511, 28.442108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276894, 35.475716, 28.717272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011341, 35.177334, 28.696053>,  <39.852009, 34.998306, 28.683321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011341, 35.177334, 28.696053>,  <40.276894, 35.475716, 28.717272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011341, 35.177334, 28.696053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354496, 0.251446, 0.900615,
		-0.658477, 0.616709, -0.431367,
		-0.663883, -0.745953, -0.053049,
		39.812176, 34.953548, 28.680138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696926, 35.717964, 28.875420>,  <40.276894, 35.475716, 28.717272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696926, 35.717964, 28.875420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610916, 35.334221, 28.948517>,  <39.559311, 35.103973, 28.992374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610916, 35.334221, 28.948517>,  <39.696926, 35.717964, 28.875420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610916, 35.334221, 28.948517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432289, 0.261284, 0.863051,
		-0.875724, 0.106577, -0.470903,
		-0.215021, -0.959360, 0.182741,
		39.546410, 35.046413, 29.003340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938240, 35.660408, 29.172285>,  <39.696926, 35.717964, 28.875420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938240, 35.660408, 29.172285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138180, 35.334427, 29.289589>,  <39.258144, 35.138840, 29.359970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138180, 35.334427, 29.289589>,  <38.938240, 35.660408, 29.172285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138180, 35.334427, 29.289589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221828, 0.206837, 0.952896,
		-0.837221, -0.541361, -0.077391,
		0.499854, -0.814952, 0.293257,
		39.288136, 35.089943, 29.377565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443401, 35.292160, 29.604000>,  <38.938240, 35.660408, 29.172285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443401, 35.292160, 29.604000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798927, 35.141987, 29.709118>,  <39.012241, 35.051884, 29.772188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798927, 35.141987, 29.709118>,  <38.443401, 35.292160, 29.604000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798927, 35.141987, 29.709118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247832, 0.088567, 0.964746,
		-0.385471, -0.922609, -0.014325,
		0.888815, -0.375432, 0.262792,
		39.065571, 35.029358, 29.787956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354660, 34.716988, 29.996597>,  <38.443401, 35.292160, 29.604000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354660, 34.716988, 29.996597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712135, 34.855637, 30.110558>,  <38.926620, 34.938828, 30.178934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712135, 34.855637, 30.110558>,  <38.354660, 34.716988, 29.996597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712135, 34.855637, 30.110558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294713, -0.025299, 0.955251,
		0.338323, -0.937662, 0.079546,
		0.893690, 0.346627, 0.284900,
		38.980244, 34.959625, 30.196028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573326, 34.317043, 30.578743>,  <38.354660, 34.716988, 29.996597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573326, 34.317043, 30.578743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807602, 34.640186, 30.605049>,  <38.948170, 34.834072, 30.620832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807602, 34.640186, 30.605049>,  <38.573326, 34.317043, 30.578743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807602, 34.640186, 30.605049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072648, -0.028489, 0.996951,
		0.807272, -0.588683, 0.042003,
		0.585691, 0.807862, 0.065765,
		38.983311, 34.882545, 30.624779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001640, 34.164223, 31.048206>,  <38.573326, 34.317043, 30.578743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001640, 34.164223, 31.048206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050262, 34.561188, 31.040852>,  <39.079437, 34.799366, 31.036440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050262, 34.561188, 31.040852>,  <39.001640, 34.164223, 31.048206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050262, 34.561188, 31.040852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098102, 0.030444, 0.994711,
		0.987724, -0.119112, 0.101059,
		0.121559, 0.992414, -0.018386,
		39.086731, 34.858913, 31.035336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572746, 34.350357, 31.518764>,  <39.001640, 34.164223, 31.048206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572746, 34.350357, 31.518764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367538, 34.690617, 31.472794>,  <39.244411, 34.894772, 31.445211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367538, 34.690617, 31.472794>,  <39.572746, 34.350357, 31.518764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367538, 34.690617, 31.472794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126216, 0.057679, 0.990324,
		0.849044, 0.522565, 0.077775,
		-0.513023, 0.850646, -0.114928,
		39.213631, 34.945812, 31.438314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972046, 35.014126, 31.839502>,  <39.572746, 34.350357, 31.518764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972046, 35.014126, 31.839502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579208, 35.087681, 31.855858>,  <39.343506, 35.131813, 31.865671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579208, 35.087681, 31.855858>,  <39.972046, 35.014126, 31.839502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579208, 35.087681, 31.855858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115837, 0.418347, 0.900871,
		0.148552, 0.889478, -0.432158,
		-0.982097, 0.183886, 0.040888,
		39.284580, 35.142845, 31.868124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959499, 35.656288, 32.225540>,  <39.972046, 35.014126, 31.839502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959499, 35.656288, 32.225540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585293, 35.518394, 32.256424>,  <39.360767, 35.435658, 32.274952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585293, 35.518394, 32.256424>,  <39.959499, 35.656288, 32.225540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585293, 35.518394, 32.256424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007309, 0.199614, 0.979847,
		-0.353198, 0.917231, -0.184223,
		-0.935520, -0.344734, 0.077207,
		39.304638, 35.414974, 32.279587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525799, 36.184566, 32.486008>,  <39.959499, 35.656288, 32.225540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525799, 36.184566, 32.486008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346119, 35.839851, 32.580280>,  <39.238312, 35.633022, 32.636845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346119, 35.839851, 32.580280>,  <39.525799, 36.184566, 32.486008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346119, 35.839851, 32.580280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036848, 0.281439, 0.958871,
		-0.892669, 0.422045, -0.158179,
		-0.449204, -0.861783, 0.235681,
		39.211357, 35.581318, 32.650986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787083, 36.253143, 32.699459>,  <39.525799, 36.184566, 32.486008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787083, 36.253143, 32.699459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913662, 35.916313, 32.874168>,  <38.989609, 35.714214, 32.978992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913662, 35.916313, 32.874168>,  <38.787083, 36.253143, 32.699459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913662, 35.916313, 32.874168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065254, 0.440016, 0.895616,
		-0.946364, -0.311914, 0.084292,
		0.316445, -0.842078, 0.436769,
		39.008595, 35.663689, 33.005199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251400, 35.995926, 33.163227>,  <38.787083, 36.253143, 32.699459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251400, 35.995926, 33.163227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610085, 35.885979, 33.301998>,  <38.825294, 35.820011, 33.385262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610085, 35.885979, 33.301998>,  <38.251400, 35.995926, 33.163227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610085, 35.885979, 33.301998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229372, 0.381788, 0.895336,
		-0.378553, -0.882432, 0.279305,
		0.896708, -0.274867, 0.346932,
		38.879097, 35.803520, 33.406078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593807, 35.898521, 32.803905>,  <38.251400, 35.995926, 33.163227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593807, 35.898521, 32.803905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552219, 36.206394, 32.551945>,  <37.527267, 36.391117, 32.400768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552219, 36.206394, 32.551945>,  <37.593807, 35.898521, 32.803905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552219, 36.206394, 32.551945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891554, 0.352832, 0.283974,
		0.440820, -0.532068, -0.722898,
		-0.103968, 0.769684, -0.629903,
		37.521030, 36.437298, 32.362972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108414, 36.165337, 32.339535>,  <37.593807, 35.898521, 32.803905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108414, 36.165337, 32.339535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915409, 36.485645, 32.197582>,  <36.799606, 36.677830, 32.112411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915409, 36.485645, 32.197582>,  <37.108414, 36.165337, 32.339535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915409, 36.485645, 32.197582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253604, -0.515537, -0.818478,
		-0.838372, -0.304927, 0.451832,
		-0.482512, 0.800775, -0.354881,
		36.770657, 36.725880, 32.091118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540840, 35.823124, 32.066849>,  <37.108414, 36.165337, 32.339535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540840, 35.823124, 32.066849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551815, 36.195492, 31.921169>,  <36.558399, 36.418911, 31.833761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551815, 36.195492, 31.921169>,  <36.540840, 35.823124, 32.066849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551815, 36.195492, 31.921169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354089, -0.331660, -0.874427,
		-0.934809, 0.152953, 0.320527,
		0.027441, 0.930917, -0.364198,
		36.560047, 36.474766, 31.811911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991306, 35.887943, 31.560066>,  <36.540840, 35.823124, 32.066849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991306, 35.887943, 31.560066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233982, 36.189606, 31.459526>,  <36.379585, 36.370605, 31.399202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233982, 36.189606, 31.459526>,  <35.991306, 35.887943, 31.560066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233982, 36.189606, 31.459526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036359, -0.289531, -0.956478,
		-0.794109, 0.589421, -0.148234,
		0.606686, 0.754158, -0.251350,
		36.415989, 36.415852, 31.384121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782326, 36.132439, 30.912519>,  <35.991306, 35.887943, 31.560066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782326, 36.132439, 30.912519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168056, 36.238293, 30.915123>,  <36.399494, 36.301804, 30.916685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168056, 36.238293, 30.915123>,  <35.782326, 36.132439, 30.912519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168056, 36.238293, 30.915123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076087, -0.253545, -0.964327,
		-0.253545, 0.930421, -0.264636,
		0.964327, 0.264636, 0.006508,
		36.457355, 36.317684, 30.917076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797287, 36.562149, 30.258835>,  <35.782326, 36.132439, 30.912519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797287, 36.562149, 30.258835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162910, 36.430241, 30.353283>,  <36.382286, 36.351097, 30.409952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162910, 36.430241, 30.353283>,  <35.797287, 36.562149, 30.258835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162910, 36.430241, 30.353283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191733, -0.161686, -0.968037,
		0.357404, 0.930114, -0.084563,
		0.914057, -0.329767, 0.236121,
		36.437126, 36.331310, 30.424120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256317, 36.933800, 29.842157>,  <35.797287, 36.562149, 30.258835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256317, 36.933800, 29.842157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481934, 36.628822, 29.968990>,  <36.617306, 36.445835, 30.045090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481934, 36.628822, 29.968990>,  <36.256317, 36.933800, 29.842157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481934, 36.628822, 29.968990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275848, -0.187957, -0.942645,
		0.778308, 0.619160, 0.104302,
		0.564043, -0.762439, 0.317082,
		36.651146, 36.400089, 30.064116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822090, 36.985142, 29.340912>,  <36.256317, 36.933800, 29.842157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822090, 36.985142, 29.340912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825676, 36.623829, 29.512493>,  <36.827827, 36.407040, 29.615442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825676, 36.623829, 29.512493>,  <36.822090, 36.985142, 29.340912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825676, 36.623829, 29.512493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358864, -0.397489, -0.844523,
		0.933347, 0.161507, 0.320592,
		0.008964, -0.903282, 0.428954,
		36.828365, 36.352844, 29.641180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503838, 36.627678, 29.180714>,  <36.822090, 36.985142, 29.340912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503838, 36.627678, 29.180714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262573, 36.321964, 29.271984>,  <37.117813, 36.138538, 29.326746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262573, 36.321964, 29.271984>,  <37.503838, 36.627678, 29.180714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262573, 36.321964, 29.271984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162361, -0.397730, -0.903023,
		0.780916, -0.507625, 0.363986,
		-0.603165, -0.764283, 0.228175,
		37.081623, 36.092678, 29.340437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861515, 35.964565, 28.998770>,  <37.503838, 36.627678, 29.180714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861515, 35.964565, 28.998770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466450, 35.906834, 28.974495>,  <37.229408, 35.872192, 28.959930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466450, 35.906834, 28.974495>,  <37.861515, 35.964565, 28.998770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466450, 35.906834, 28.974495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120194, -0.450521, -0.884638,
		0.100339, -0.881022, 0.462312,
		-0.987667, -0.144331, -0.060689,
		37.170151, 35.863533, 28.956287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864891, 35.369511, 28.689035>,  <37.861515, 35.964565, 28.998770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864891, 35.369511, 28.689035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483276, 35.479534, 28.641438>,  <37.254307, 35.545547, 28.612879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483276, 35.479534, 28.641438>,  <37.864891, 35.369511, 28.689035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483276, 35.479534, 28.641438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042590, -0.517449, -0.854653,
		-0.296655, -0.810301, 0.505379,
		-0.954034, 0.275061, -0.118993,
		37.197067, 35.562054, 28.605740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477287, 34.753056, 28.557623>,  <37.864891, 35.369511, 28.689035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477287, 34.753056, 28.557623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219891, 35.029186, 28.425343>,  <37.065453, 35.194866, 28.345974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219891, 35.029186, 28.425343>,  <37.477287, 34.753056, 28.557623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219891, 35.029186, 28.425343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248625, -0.597106, -0.762660,
		-0.723950, -0.408545, 0.555866,
		-0.643492, 0.690330, -0.330700,
		37.026844, 35.236286, 28.326132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792366, 34.453651, 28.435566>,  <37.477287, 34.753056, 28.557623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792366, 34.453651, 28.435566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797035, 34.774857, 28.197227>,  <36.799835, 34.967579, 28.054224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797035, 34.774857, 28.197227>,  <36.792366, 34.453651, 28.435566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797035, 34.774857, 28.197227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148588, -0.587878, -0.795186,
		-0.988830, 0.097819, 0.112455,
		0.011674, 0.803013, -0.595847,
		36.800537, 35.015762, 28.018473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245861, 34.410614, 27.957600>,  <36.792366, 34.453651, 28.435566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245861, 34.410614, 27.957600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487549, 34.680794, 27.788513>,  <36.632561, 34.842903, 27.687061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487549, 34.680794, 27.788513>,  <36.245861, 34.410614, 27.957600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487549, 34.680794, 27.788513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161840, -0.415417, -0.895119,
		-0.780210, 0.609259, -0.141687,
		0.604218, 0.675450, -0.422715,
		36.668816, 34.883430, 27.661699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019875, 34.495598, 27.379261>,  <36.245861, 34.410614, 27.957600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019875, 34.495598, 27.379261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365005, 34.667088, 27.272141>,  <36.572083, 34.769981, 27.207869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365005, 34.667088, 27.272141>,  <36.019875, 34.495598, 27.379261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365005, 34.667088, 27.272141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042075, -0.467033, -0.883238,
		-0.503743, 0.773351, -0.384931,
		0.862829, 0.428729, -0.267803,
		36.623856, 34.795708, 27.191799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959942, 34.654881, 26.678457>,  <36.019875, 34.495598, 27.379261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959942, 34.654881, 26.678457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352821, 34.642090, 26.752499>,  <36.588551, 34.634415, 26.796923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352821, 34.642090, 26.752499>,  <35.959942, 34.654881, 26.678457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352821, 34.642090, 26.752499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159740, -0.376314, -0.912618,
		0.098836, 0.925940, -0.364508,
		0.982199, -0.031973, 0.185103,
		36.647480, 34.632500, 26.808029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253548, 34.824146, 26.019979>,  <35.959942, 34.654881, 26.678457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253548, 34.824146, 26.019979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576775, 34.674828, 26.202263>,  <36.770710, 34.585236, 26.311634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576775, 34.674828, 26.202263>,  <36.253548, 34.824146, 26.019979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576775, 34.674828, 26.202263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253566, -0.477842, -0.841054,
		0.531721, 0.795183, -0.291474,
		0.808070, -0.373298, 0.455710,
		36.819195, 34.562840, 26.338976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750057, 34.938305, 25.592644>,  <36.253548, 34.824146, 26.019979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750057, 34.938305, 25.592644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922844, 34.651741, 25.811794>,  <37.026516, 34.479805, 25.943285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922844, 34.651741, 25.811794>,  <36.750057, 34.938305, 25.592644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922844, 34.651741, 25.811794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369605, -0.413505, -0.832109,
		0.822679, 0.561939, 0.086169,
		0.431963, -0.716407, 0.547877,
		37.052433, 34.436817, 25.976158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385956, 34.842857, 25.335598>,  <36.750057, 34.938305, 25.592644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385956, 34.842857, 25.335598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343674, 34.496861, 25.531807>,  <37.318302, 34.289261, 25.649532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343674, 34.496861, 25.531807>,  <37.385956, 34.842857, 25.335598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343674, 34.496861, 25.531807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351000, -0.493990, -0.795470,
		0.930390, 0.088085, 0.355832,
		-0.105708, -0.864994, 0.490521,
		37.311962, 34.237362, 25.678963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008961, 34.461597, 25.231735>,  <37.385956, 34.842857, 25.335598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008961, 34.461597, 25.231735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726856, 34.190407, 25.314629>,  <37.557594, 34.027691, 25.364365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726856, 34.190407, 25.314629>,  <38.008961, 34.461597, 25.231735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726856, 34.190407, 25.314629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363201, -0.596573, -0.715672,
		0.608841, -0.429470, 0.666984,
		-0.705264, -0.677980, 0.207234,
		37.515278, 33.987011, 25.376799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365963, 33.824066, 25.217861>,  <38.008961, 34.461597, 25.231735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365963, 33.824066, 25.217861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977833, 33.742863, 25.165325>,  <37.744953, 33.694141, 25.133804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977833, 33.742863, 25.165325>,  <38.365963, 33.824066, 25.217861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977833, 33.742863, 25.165325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209366, -0.433709, -0.876392,
		0.120955, -0.877886, 0.463343,
		-0.970328, -0.203012, -0.131340,
		37.686733, 33.681961, 25.125923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348782, 33.058254, 25.115294>,  <38.365963, 33.824066, 25.217861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348782, 33.058254, 25.115294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016926, 33.221573, 24.962986>,  <37.817810, 33.319565, 24.871601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016926, 33.221573, 24.962986>,  <38.348782, 33.058254, 25.115294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016926, 33.221573, 24.962986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212324, -0.400027, -0.891570,
		-0.516344, -0.820532, 0.245188,
		-0.829643, 0.408297, -0.380770,
		37.768032, 33.344063, 24.848755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169491, 32.570747, 24.630526>,  <38.348782, 33.058254, 25.115294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169491, 32.570747, 24.630526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949833, 32.888069, 24.525375>,  <37.818039, 33.078461, 24.462284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949833, 32.888069, 24.525375>,  <38.169491, 32.570747, 24.630526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949833, 32.888069, 24.525375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154667, -0.212645, -0.964811,
		-0.821289, -0.570481, -0.005925,
		-0.549146, 0.793305, -0.262878,
		37.785088, 33.126060, 24.446512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520309, 32.291298, 24.294260>,  <38.169491, 32.570747, 24.630526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520309, 32.291298, 24.294260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570019, 32.670277, 24.176342>,  <37.599846, 32.897663, 24.105591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570019, 32.670277, 24.176342>,  <37.520309, 32.291298, 24.294260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570019, 32.670277, 24.176342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089857, -0.306624, -0.947580,
		-0.988171, 0.091273, -0.123241,
		0.124277, 0.947444, -0.294796,
		37.607304, 32.954510, 24.087904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979382, 32.507092, 23.792685>,  <37.520309, 32.291298, 24.294260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979382, 32.507092, 23.792685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264530, 32.780983, 23.732071>,  <37.435619, 32.945316, 23.695704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264530, 32.780983, 23.732071>,  <36.979382, 32.507092, 23.792685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264530, 32.780983, 23.732071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118171, -0.330269, -0.936460,
		-0.691266, 0.649670, -0.316355,
		0.712873, 0.684726, -0.151532,
		37.478394, 32.986401, 23.686611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690613, 32.831451, 23.174194>,  <36.979382, 32.507092, 23.792685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690613, 32.831451, 23.174194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061756, 32.979527, 23.156158>,  <37.284443, 33.068371, 23.145336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061756, 32.979527, 23.156158>,  <36.690613, 32.831451, 23.174194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061756, 32.979527, 23.156158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046471, -0.234746, -0.970945,
		-0.370017, 0.898808, -0.235015,
		0.927862, 0.370188, -0.045092,
		37.340115, 33.090584, 23.142632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818146, 33.377541, 22.604715>,  <36.690613, 32.831451, 23.174194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818146, 33.377541, 22.604715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172878, 33.199654, 22.654926>,  <37.385719, 33.092922, 22.685053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172878, 33.199654, 22.654926>,  <36.818146, 33.377541, 22.604715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172878, 33.199654, 22.654926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004219, -0.279428, -0.960157,
		0.462072, 0.850969, -0.249682,
		0.886832, -0.444715, 0.125525,
		37.438927, 33.066238, 22.692583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191128, 33.571873, 22.670101>,  <36.818146, 33.377541, 22.604715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191128, 33.571873, 22.670101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314468, 33.872684, 22.903122>,  <36.388474, 34.053173, 23.042934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314468, 33.872684, 22.903122>,  <36.191128, 33.571873, 22.670101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314468, 33.872684, 22.903122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945447, 0.309943, 0.100326,
		-0.105110, -0.581710, 0.806576,
		0.308353, 0.752030, 0.582554,
		36.406975, 34.098293, 23.077888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069111, 33.470032, 23.401258>,  <36.191128, 33.571873, 22.670101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069111, 33.470032, 23.401258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046093, 33.862091, 23.325363>,  <36.032280, 34.097328, 23.279825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046093, 33.862091, 23.325363>,  <36.069111, 33.470032, 23.401258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046093, 33.862091, 23.325363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960395, -0.002450, 0.278633,
		0.272636, 0.198259, 0.941468,
		-0.057548, 0.980147, -0.189739,
		36.028828, 34.156136, 23.268442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715607, 33.767960, 23.920744>,  <36.069111, 33.470032, 23.401258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715607, 33.767960, 23.920744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682842, 33.979622, 23.582920>,  <35.663181, 34.106621, 23.380226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682842, 33.979622, 23.582920>,  <35.715607, 33.767960, 23.920744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682842, 33.979622, 23.582920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961425, 0.181312, 0.206851,
		0.262586, 0.828926, 0.493893,
		-0.081915, 0.529158, -0.844560,
		35.658268, 34.138371, 23.329552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436089, 34.488441, 24.021923>,  <35.715607, 33.767960, 23.920744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436089, 34.488441, 24.021923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367828, 34.385090, 23.641582>,  <35.326874, 34.323078, 23.413378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367828, 34.385090, 23.641582>,  <35.436089, 34.488441, 24.021923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367828, 34.385090, 23.641582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982035, 0.123477, 0.142689,
		0.080541, 0.958121, -0.274806,
		-0.170646, -0.258377, -0.950853,
		35.316635, 34.307575, 23.356327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181435, 35.029522, 23.350065>,  <35.436089, 34.488441, 24.021923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181435, 35.029522, 23.350065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056160, 34.650475, 23.375126>,  <34.980995, 34.423046, 23.390162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056160, 34.650475, 23.375126>,  <35.181435, 35.029522, 23.350065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056160, 34.650475, 23.375126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942152, 0.301730, -0.145973,
		0.119424, -0.104744, -0.987303,
		-0.313189, -0.947622, 0.062651,
		34.962204, 34.366188, 23.393921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565830, 35.179661, 23.062939>,  <35.181435, 35.029522, 23.350065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565830, 35.179661, 23.062939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531116, 34.789402, 23.143520>,  <34.510288, 34.555248, 23.191870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531116, 34.789402, 23.143520>,  <34.565830, 35.179661, 23.062939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531116, 34.789402, 23.143520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912003, -0.003567, -0.410169,
		0.400898, -0.219323, -0.889482,
		-0.086787, -0.975646, 0.201453,
		34.505081, 34.496708, 23.203957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843964, 35.398193, 22.742500>,  <34.565830, 35.179661, 23.062939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843964, 35.398193, 22.742500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557396, 35.260521, 22.985245>,  <33.385456, 35.177917, 23.130892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557396, 35.260521, 22.985245>,  <33.843964, 35.398193, 22.742500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557396, 35.260521, 22.985245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037388, -0.849654, -0.526014,
		0.696664, -0.399538, 0.595843,
		-0.716422, -0.344178, 0.606861,
		33.342468, 35.157269, 23.167303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973000, 34.667210, 22.730026>,  <33.843964, 35.398193, 22.742500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973000, 34.667210, 22.730026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601742, 34.711159, 22.872284>,  <33.378986, 34.737530, 22.957640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601742, 34.711159, 22.872284>,  <33.973000, 34.667210, 22.730026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601742, 34.711159, 22.872284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229348, -0.921341, -0.313894,
		0.293182, -0.372905, 0.880333,
		-0.928140, 0.109875, 0.355645,
		33.323299, 34.744122, 22.978977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805626, 34.086510, 23.201332>,  <33.973000, 34.667210, 22.730026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805626, 34.086510, 23.201332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479218, 34.247093, 23.034988>,  <33.283371, 34.343441, 22.935183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479218, 34.247093, 23.034988>,  <33.805626, 34.086510, 23.201332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479218, 34.247093, 23.034988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263546, -0.898733, -0.350460,
		-0.514442, -0.176385, 0.839189,
		-0.816023, 0.401456, -0.415860,
		33.234409, 34.367531, 22.910231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315384, 33.610416, 23.329628>,  <33.805626, 34.086510, 23.201332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315384, 33.610416, 23.329628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119797, 33.815456, 23.047310>,  <33.002445, 33.938480, 22.877918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119797, 33.815456, 23.047310>,  <33.315384, 33.610416, 23.329628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119797, 33.815456, 23.047310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154461, -0.847216, -0.508298,
		-0.858515, -0.139525, 0.493442,
		-0.488972, 0.512599, -0.705796,
		32.973106, 33.969234, 22.835571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790257, 33.221607, 23.179722>,  <33.315384, 33.610416, 23.329628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790257, 33.221607, 23.179722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831669, 33.452065, 22.855415>,  <32.856518, 33.590340, 22.660831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831669, 33.452065, 22.855415>,  <32.790257, 33.221607, 23.179722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831669, 33.452065, 22.855415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141452, -0.798331, -0.585370,
		-0.984516, 0.175291, -0.001159,
		0.103535, 0.576143, -0.810765,
		32.862728, 33.624908, 22.612186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230167, 33.056782, 22.641228>,  <32.790257, 33.221607, 23.179722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230167, 33.056782, 22.641228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510860, 33.251842, 22.433475>,  <32.679276, 33.368881, 22.308825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510860, 33.251842, 22.433475>,  <32.230167, 33.056782, 22.641228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510860, 33.251842, 22.433475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051131, -0.761615, -0.646010,
		-0.710600, 0.426772, -0.559387,
		0.701736, 0.487656, -0.519382,
		32.721382, 33.398140, 22.277660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127613, 32.926548, 21.897274>,  <32.230167, 33.056782, 22.641228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127613, 32.926548, 21.897274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508121, 33.049049, 21.911613>,  <32.736427, 33.122551, 21.920218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508121, 33.049049, 21.911613>,  <32.127613, 32.926548, 21.897274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508121, 33.049049, 21.911613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282508, -0.819074, -0.499306,
		-0.123550, 0.485105, -0.865683,
		0.951275, 0.306252, 0.035849,
		32.793503, 33.140926, 21.922369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374943, 32.592861, 21.349619>,  <32.127613, 32.926548, 21.897274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374943, 32.592861, 21.349619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724930, 32.719269, 21.496353>,  <32.934921, 32.795113, 21.584393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724930, 32.719269, 21.496353>,  <32.374943, 32.592861, 21.349619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724930, 32.719269, 21.496353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483712, -0.604055, -0.633356,
		0.021434, 0.731606, -0.681391,
		0.874965, 0.316021, 0.366833,
		32.987419, 32.814075, 21.606403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769711, 32.748257, 20.753159>,  <32.374943, 32.592861, 21.349619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769711, 32.748257, 20.753159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032097, 32.686325, 21.048656>,  <33.189529, 32.649166, 21.225956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032097, 32.686325, 21.048656>,  <32.769711, 32.748257, 20.753159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032097, 32.686325, 21.048656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518476, -0.618863, -0.590077,
		0.548541, 0.770089, -0.325677,
		0.655961, -0.154826, 0.738745,
		33.228886, 32.639877, 21.270281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436886, 32.569855, 20.373953>,  <32.769711, 32.748257, 20.753159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436886, 32.569855, 20.373953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463406, 32.412544, 20.740765>,  <33.479317, 32.318157, 20.960852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463406, 32.412544, 20.740765>,  <33.436886, 32.569855, 20.373953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463406, 32.412544, 20.740765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238945, -0.886050, -0.397266,
		0.968767, 0.245459, 0.035224,
		0.066302, -0.393275, 0.917027,
		33.483295, 32.294563, 21.015873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071602, 32.132786, 20.311241>,  <33.436886, 32.569855, 20.373953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071602, 32.132786, 20.311241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879196, 32.026878, 20.645554>,  <33.763752, 31.963335, 20.846140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879196, 32.026878, 20.645554>,  <34.071602, 32.132786, 20.311241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879196, 32.026878, 20.645554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228859, -0.958175, -0.171828,
		0.846317, 0.108624, 0.521487,
		-0.481011, -0.264768, 0.835779,
		33.734894, 31.947449, 20.896288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462891, 31.673882, 20.666021>,  <34.071602, 32.132786, 20.311241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462891, 31.673882, 20.666021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089359, 31.609905, 20.794006>,  <33.865238, 31.571520, 20.870798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089359, 31.609905, 20.794006>,  <34.462891, 31.673882, 20.666021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089359, 31.609905, 20.794006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194312, -0.977807, 0.078337,
		0.300335, 0.135327, 0.944185,
		-0.933832, -0.159939, 0.319965,
		33.809208, 31.561924, 20.889996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489632, 31.227406, 21.316370>,  <34.462891, 31.673882, 20.666021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489632, 31.227406, 21.316370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131790, 31.160557, 21.150600>,  <33.917084, 31.120447, 21.051138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131790, 31.160557, 21.150600>,  <34.489632, 31.227406, 21.316370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131790, 31.160557, 21.150600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073307, -0.969753, 0.232819,
		-0.440800, 0.177902, 0.879799,
		-0.894607, -0.167122, -0.414425,
		33.863407, 31.110420, 21.026274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094193, 30.731863, 21.783772>,  <34.489632, 31.227406, 21.316370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094193, 30.731863, 21.783772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903301, 30.719627, 21.432472>,  <33.788765, 30.712286, 21.221693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903301, 30.719627, 21.432472>,  <34.094193, 30.731863, 21.783772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903301, 30.719627, 21.432472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164996, -0.978501, 0.123739,
		-0.863150, 0.203959, 0.461923,
		-0.477230, -0.030589, -0.878246,
		33.760132, 30.710451, 21.168999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544567, 30.359310, 21.931017>,  <34.094193, 30.731863, 21.783772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544567, 30.359310, 21.931017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607010, 30.356632, 21.535931>,  <33.644474, 30.355026, 21.298878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607010, 30.356632, 21.535931>,  <33.544567, 30.359310, 21.931017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607010, 30.356632, 21.535931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174230, -0.984484, -0.020864,
		-0.972253, 0.175347, -0.154850,
		0.156106, -0.006695, -0.987718,
		33.653843, 30.354624, 21.239614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058792, 29.915312, 21.711535>,  <33.544567, 30.359310, 21.931017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058792, 29.915312, 21.711535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337868, 29.932259, 21.425476>,  <33.505314, 29.942427, 21.253841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337868, 29.932259, 21.425476>,  <33.058792, 29.915312, 21.711535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337868, 29.932259, 21.425476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046363, -0.998827, -0.013944,
		-0.714897, -0.023428, -0.698838,
		0.697692, 0.042368, -0.715144,
		33.547176, 29.944969, 21.210934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156517, 29.223413, 21.574261>,  <33.058792, 29.915312, 21.711535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156517, 29.223413, 21.574261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452438, 29.361877, 21.343483>,  <33.629990, 29.444956, 21.205017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452438, 29.361877, 21.343483>,  <33.156517, 29.223413, 21.574261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452438, 29.361877, 21.343483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382095, -0.921958, -0.063215,
		-0.553800, -0.173680, -0.814335,
		0.739804, 0.346161, -0.576943,
		33.674381, 29.465725, 21.170401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134056, 28.884787, 20.970648>,  <33.156517, 29.223413, 21.574261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134056, 28.884787, 20.970648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511982, 29.006477, 21.019276>,  <33.738735, 29.079493, 21.048452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511982, 29.006477, 21.019276>,  <33.134056, 28.884787, 20.970648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511982, 29.006477, 21.019276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322875, -0.927569, -0.188065,
		0.055551, 0.216938, -0.974604,
		0.944810, 0.304228, 0.121572,
		33.795425, 29.097746, 21.055748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377277, 28.399506, 20.571230>,  <33.134056, 28.884787, 20.970648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377277, 28.399506, 20.571230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672119, 28.573483, 20.778114>,  <33.849022, 28.677870, 20.902245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672119, 28.573483, 20.778114>,  <33.377277, 28.399506, 20.571230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672119, 28.573483, 20.778114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420628, -0.894306, 0.152603,
		0.528917, 0.105069, -0.842144,
		0.737101, 0.434944, 0.517209,
		33.893250, 28.703966, 20.933277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967709, 28.094793, 20.298603>,  <33.377277, 28.399506, 20.571230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967709, 28.094793, 20.298603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125957, 28.228561, 20.640747>,  <34.220909, 28.308823, 20.846033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125957, 28.228561, 20.640747>,  <33.967709, 28.094793, 20.298603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125957, 28.228561, 20.640747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487138, -0.865951, 0.113249,
		0.778574, 0.371875, -0.505501,
		0.395624, 0.334422, 0.855362,
		34.244644, 28.328888, 20.897356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653534, 28.004511, 20.228380>,  <33.967709, 28.094793, 20.298603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653534, 28.004511, 20.228380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555714, 28.004517, 20.616234>,  <34.497021, 28.004520, 20.848946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555714, 28.004517, 20.616234>,  <34.653534, 28.004511, 20.228380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555714, 28.004517, 20.616234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468184, -0.875704, 0.118096,
		0.849116, 0.482849, 0.214149,
		-0.244554, 0.000016, 0.969636,
		34.482349, 28.004522, 20.907125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184513, 27.821880, 20.494949>,  <34.653534, 28.004511, 20.228380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184513, 27.821880, 20.494949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951813, 27.752609, 20.812836>,  <34.812191, 27.711046, 21.003569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951813, 27.752609, 20.812836>,  <35.184513, 27.821880, 20.494949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951813, 27.752609, 20.812836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349658, -0.935426, 0.052120,
		0.734374, 0.308201, 0.604737,
		-0.581751, -0.173176, 0.794718,
		34.777287, 27.700657, 21.051250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601646, 27.627882, 21.127262>,  <35.184513, 27.821880, 20.494949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601646, 27.627882, 21.127262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232506, 27.473907, 21.132351>,  <35.011021, 27.381523, 21.135405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232506, 27.473907, 21.132351>,  <35.601646, 27.627882, 21.127262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232506, 27.473907, 21.132351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381261, -0.908367, 0.171783,
		-0.054569, 0.163382, 0.985053,
		-0.922856, -0.384936, 0.012722,
		34.955650, 27.358427, 21.136168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597416, 27.159630, 21.655714>,  <35.601646, 27.627882, 21.127262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597416, 27.159630, 21.655714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275562, 27.042152, 21.449291>,  <35.082451, 26.971666, 21.325438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275562, 27.042152, 21.449291>,  <35.597416, 27.159630, 21.655714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275562, 27.042152, 21.449291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301639, -0.950790, 0.070793,
		-0.511452, -0.098700, 0.853625,
		-0.804631, -0.293693, -0.516055,
		35.034172, 26.954044, 21.294476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379318, 26.631517, 21.911125>,  <35.597416, 27.159630, 21.655714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379318, 26.631517, 21.911125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180027, 26.583595, 21.567635>,  <35.060452, 26.554842, 21.361540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180027, 26.583595, 21.567635>,  <35.379318, 26.631517, 21.911125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180027, 26.583595, 21.567635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105572, -0.991421, 0.077066,
		-0.860594, -0.052261, 0.506604,
		-0.498230, -0.119806, -0.858728,
		35.030560, 26.547653, 21.310017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995308, 26.085745, 22.018959>,  <35.379318, 26.631517, 21.911125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995308, 26.085745, 22.018959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939251, 26.101662, 21.623226>,  <34.905617, 26.111212, 21.385786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939251, 26.101662, 21.623226>,  <34.995308, 26.085745, 22.018959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939251, 26.101662, 21.623226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015240, -0.999161, -0.038027,
		-0.990014, 0.009749, 0.140629,
		-0.140140, 0.039790, -0.989332,
		34.897209, 26.113598, 21.326427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485065, 25.578144, 21.911251>,  <34.995308, 26.085745, 22.018959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485065, 25.578144, 21.911251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696175, 25.640858, 21.577335>,  <34.822838, 25.678486, 21.376986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696175, 25.640858, 21.577335>,  <34.485065, 25.578144, 21.911251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696175, 25.640858, 21.577335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026343, -0.985365, -0.168408,
		-0.848978, 0.066890, -0.524177,
		0.527771, 0.156783, -0.834791,
		34.854507, 25.687893, 21.326899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146156, 25.195621, 21.359833>,  <34.485065, 25.578144, 21.911251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146156, 25.195621, 21.359833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515293, 25.254379, 21.217411>,  <34.736774, 25.289635, 21.131958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515293, 25.254379, 21.217411>,  <34.146156, 25.195621, 21.359833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515293, 25.254379, 21.217411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176085, -0.983063, 0.050813,
		-0.342561, -0.109589, -0.933082,
		0.922847, 0.146895, -0.356056,
		34.792149, 25.298449, 21.110594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337677, 24.853224, 20.660215>,  <34.146156, 25.195621, 21.359833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337677, 24.853224, 20.660215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687366, 24.901375, 20.848362>,  <34.897179, 24.930265, 20.961250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687366, 24.901375, 20.848362>,  <34.337677, 24.853224, 20.660215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687366, 24.901375, 20.848362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189151, -0.976678, -0.101599,
		0.447167, 0.177791, -0.876603,
		0.874222, 0.120378, 0.470367,
		34.949635, 24.937489, 20.989471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776436, 24.486622, 20.298775>,  <34.337677, 24.853224, 20.660215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776436, 24.486622, 20.298775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957108, 24.522987, 20.653790>,  <35.065510, 24.544807, 20.866798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957108, 24.522987, 20.653790>,  <34.776436, 24.486622, 20.298775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957108, 24.522987, 20.653790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185237, -0.982673, 0.006391,
		0.872740, 0.161518, -0.460691,
		0.451677, 0.090915, 0.887537,
		35.092609, 24.550262, 20.920052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308353, 24.046495, 20.299553>,  <34.776436, 24.486622, 20.298775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308353, 24.046495, 20.299553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275875, 24.121761, 20.691063>,  <35.256386, 24.166922, 20.925968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275875, 24.121761, 20.691063>,  <35.308353, 24.046495, 20.299553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275875, 24.121761, 20.691063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215748, -0.955417, 0.201574,
		0.973067, 0.227536, 0.036981,
		-0.081198, 0.188166, 0.978775,
		35.251514, 24.178211, 20.984695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980831, 23.719172, 20.642040>,  <35.308353, 24.046495, 20.299553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980831, 23.719172, 20.642040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719814, 23.772469, 20.940418>,  <35.563202, 23.804447, 21.119444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719814, 23.772469, 20.940418>,  <35.980831, 23.719172, 20.642040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719814, 23.772469, 20.940418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071935, -0.969080, 0.236028,
		0.754328, 0.207678, 0.622784,
		-0.652545, 0.133242, 0.745943,
		35.524052, 23.812441, 21.164202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345802, 23.472174, 21.240580>,  <35.980831, 23.719172, 20.642040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345802, 23.472174, 21.240580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954334, 23.484650, 21.321804>,  <35.719452, 23.492134, 21.370539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954334, 23.484650, 21.321804>,  <36.345802, 23.472174, 21.240580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954334, 23.484650, 21.321804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054387, -0.913816, 0.402471,
		0.198113, 0.404930, 0.892627,
		-0.978669, 0.031188, 0.203062,
		35.660732, 23.494005, 21.382723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324986, 23.207146, 21.906479>,  <36.345802, 23.472174, 21.240580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324986, 23.207146, 21.906479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947727, 23.158123, 21.782890>,  <35.721375, 23.128710, 21.708738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947727, 23.158123, 21.782890>,  <36.324986, 23.207146, 21.906479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947727, 23.158123, 21.782890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000507, -0.930072, 0.367377,
		-0.332389, 0.346332, 0.877253,
		-0.943142, -0.122557, -0.308970,
		35.664783, 23.121355, 21.690199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901306, 22.868423, 22.470226>,  <36.324986, 23.207146, 21.906479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901306, 22.868423, 22.470226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711639, 22.815136, 22.122108>,  <35.597839, 22.783163, 21.913237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711639, 22.815136, 22.122108>,  <35.901306, 22.868423, 22.470226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711639, 22.815136, 22.122108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172291, -0.955335, 0.240105,
		-0.863410, 0.263795, 0.430040,
		-0.474171, -0.133217, -0.870296,
		35.569389, 22.775171, 21.861019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478096, 22.380888, 22.629467>,  <35.901306, 22.868423, 22.470226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478096, 22.380888, 22.629467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450794, 22.367054, 22.230640>,  <35.434414, 22.358753, 21.991344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450794, 22.367054, 22.230640>,  <35.478096, 22.380888, 22.629467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450794, 22.367054, 22.230640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136617, -0.989660, 0.043681,
		-0.988270, 0.139197, 0.062820,
		-0.068251, -0.034586, -0.997069,
		35.430321, 22.356678, 21.931520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813869, 22.093788, 22.484938>,  <35.478096, 22.380888, 22.629467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813869, 22.093788, 22.484938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042099, 22.049377, 22.159454>,  <35.179035, 22.022732, 21.964165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042099, 22.049377, 22.159454>,  <34.813869, 22.093788, 22.484938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042099, 22.049377, 22.159454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156444, -0.987370, 0.025025,
		-0.806210, 0.113021, -0.580733,
		0.570570, -0.111027, -0.813709,
		35.213268, 22.016069, 21.915342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443172, 21.813126, 22.048140>,  <34.813869, 22.093788, 22.484938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443172, 21.813126, 22.048140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810055, 21.699360, 21.936543>,  <35.030186, 21.631102, 21.869583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810055, 21.699360, 21.936543>,  <34.443172, 21.813126, 22.048140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810055, 21.699360, 21.936543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279291, -0.958402, 0.058832,
		-0.284121, 0.023959, -0.958489,
		0.917208, -0.284413, -0.278994,
		35.085217, 21.614037, 21.852844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376583, 21.282003, 21.475687>,  <34.443172, 21.813126, 22.048140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376583, 21.282003, 21.475687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737770, 21.228767, 21.639118>,  <34.954483, 21.196825, 21.737177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737770, 21.228767, 21.639118>,  <34.376583, 21.282003, 21.475687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737770, 21.228767, 21.639118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136225, -0.990443, -0.021565,
		0.407543, -0.036186, -0.912469,
		0.902968, -0.133090, 0.408578,
		35.008659, 21.188841, 21.761692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804790, 20.861927, 21.036602>,  <34.376583, 21.282003, 21.475687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804790, 20.861927, 21.036602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003017, 20.792206, 21.376961>,  <35.121956, 20.750374, 21.581177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003017, 20.792206, 21.376961>,  <34.804790, 20.861927, 21.036602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003017, 20.792206, 21.376961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133854, -0.952628, -0.273098,
		0.858191, 0.249236, -0.448765,
		0.495572, -0.174302, 0.850898,
		35.151688, 20.739916, 21.632231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494766, 20.452192, 20.978563>,  <34.804790, 20.861927, 21.036602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494766, 20.452192, 20.978563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444248, 20.415421, 21.373653>,  <35.413937, 20.393358, 21.610706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444248, 20.415421, 21.373653>,  <35.494766, 20.452192, 20.978563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444248, 20.415421, 21.373653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331517, -0.942360, -0.045318,
		0.934958, 0.321724, 0.149490,
		-0.126293, -0.091929, 0.987724,
		35.406361, 20.387842, 21.669971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037628, 20.003723, 21.254757>,  <35.494766, 20.452192, 20.978563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037628, 20.003723, 21.254757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736565, 19.990543, 21.517792>,  <35.555927, 19.982635, 21.675613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736565, 19.990543, 21.517792>,  <36.037628, 20.003723, 21.254757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736565, 19.990543, 21.517792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081362, -0.995747, 0.043232,
		0.653366, 0.086042, 0.752137,
		-0.752657, -0.032948, 0.657587,
		35.510769, 19.980659, 21.715069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146832, 19.540976, 21.776337>,  <36.037628, 20.003723, 21.254757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146832, 19.540976, 21.776337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747440, 19.559277, 21.788631>,  <35.507805, 19.570257, 21.796009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747440, 19.559277, 21.788631>,  <36.146832, 19.540976, 21.776337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747440, 19.559277, 21.788631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037756, -0.974015, 0.223315,
		0.040157, 0.221815, 0.974262,
		-0.998480, 0.045752, 0.030738,
		35.447895, 19.573002, 21.797853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822266, 19.472876, 22.394146>,  <36.146832, 19.540976, 21.776337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822266, 19.472876, 22.394146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569630, 19.328182, 22.119850>,  <35.418049, 19.241365, 21.955273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569630, 19.328182, 22.119850>,  <35.822266, 19.472876, 22.394146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569630, 19.328182, 22.119850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038049, -0.897879, 0.438595,
		-0.774365, 0.250923, 0.580859,
		-0.631594, -0.361734, -0.685738,
		35.380150, 19.219662, 21.914129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207756, 19.160324, 22.740803>,  <35.822266, 19.472876, 22.394146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207756, 19.160324, 22.740803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300797, 18.983746, 22.394157>,  <35.356621, 18.877798, 22.186171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300797, 18.983746, 22.394157>,  <35.207756, 19.160324, 22.740803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300797, 18.983746, 22.394157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113061, -0.872741, 0.474911,
		-0.965978, -0.208445, -0.153090,
		0.232601, -0.441445, -0.866616,
		35.370579, 18.851313, 22.134172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731464, 18.639618, 22.419704>,  <35.207756, 19.160324, 22.740803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731464, 18.639618, 22.419704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087257, 18.532581, 22.271530>,  <35.300732, 18.468359, 22.182627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087257, 18.532581, 22.271530>,  <34.731464, 18.639618, 22.419704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087257, 18.532581, 22.271530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069140, -0.880093, 0.469741,
		-0.451716, -0.392213, -0.801325,
		0.889479, -0.267593, -0.370434,
		35.354099, 18.452303, 22.160400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709343, 17.910837, 22.262823>,  <34.731464, 18.639618, 22.419704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709343, 17.910837, 22.262823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096146, 17.998886, 22.314125>,  <35.328228, 18.051716, 22.344906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096146, 17.998886, 22.314125>,  <34.709343, 17.910837, 22.262823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096146, 17.998886, 22.314125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135524, -0.870756, 0.472670,
		0.215724, -0.439692, -0.871857,
		0.967004, 0.220124, 0.128255,
		35.386246, 18.064924, 22.352602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034210, 18.130306, 22.445730>,  <34.709343, 17.910837, 22.262823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034210, 18.130306, 22.445730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640881, 18.082523, 22.390888>,  <33.404881, 18.053854, 22.357983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640881, 18.082523, 22.390888>,  <34.034210, 18.130306, 22.445730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640881, 18.082523, 22.390888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181695, 0.676234, 0.713929,
		0.007431, 0.726937, -0.686664,
		-0.983327, -0.119458, -0.137106,
		33.345882, 18.046686, 22.349756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699165, 18.688509, 22.118038>,  <34.034210, 18.130306, 22.445730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699165, 18.688509, 22.118038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442806, 18.510483, 22.368210>,  <33.288990, 18.403667, 22.518312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442806, 18.510483, 22.368210>,  <33.699165, 18.688509, 22.118038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442806, 18.510483, 22.368210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102406, 0.857051, 0.504952,
		-0.760762, 0.259576, -0.594862,
		-0.640901, -0.445066, 0.625430,
		33.250538, 18.376963, 22.555840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094070, 19.182615, 22.129652>,  <33.699165, 18.688509, 22.118038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094070, 19.182615, 22.129652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117264, 18.935452, 22.443295>,  <33.131180, 18.787153, 22.631479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117264, 18.935452, 22.443295>,  <33.094070, 19.182615, 22.129652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117264, 18.935452, 22.443295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059783, 0.781870, 0.620569,
		-0.996526, -0.082859, 0.008396,
		0.057984, -0.617911, 0.784107,
		33.134659, 18.750078, 22.678526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471737, 19.215254, 22.639961>,  <33.094070, 19.182615, 22.129652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471737, 19.215254, 22.639961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820930, 19.140759, 22.820278>,  <33.030445, 19.096062, 22.928469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820930, 19.140759, 22.820278>,  <32.471737, 19.215254, 22.639961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820930, 19.140759, 22.820278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104115, 0.831779, 0.545256,
		-0.476507, -0.522934, 0.706740,
		0.872984, -0.186236, 0.450794,
		33.082825, 19.084888, 22.955517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458595, 19.324846, 23.365162>,  <32.471737, 19.215254, 22.639961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458595, 19.324846, 23.365162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842316, 19.386066, 23.270241>,  <33.072548, 19.422798, 23.213287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842316, 19.386066, 23.270241>,  <32.458595, 19.324846, 23.365162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842316, 19.386066, 23.270241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002077, 0.844173, 0.536068,
		0.282370, -0.513759, 0.810135,
		0.959303, 0.153052, -0.237302,
		33.130108, 19.431982, 23.199051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815506, 19.348532, 24.005686>,  <32.458595, 19.324846, 23.365162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815506, 19.348532, 24.005686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041073, 19.537548, 23.734776>,  <33.176414, 19.650957, 23.572229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041073, 19.537548, 23.734776>,  <32.815506, 19.348532, 24.005686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041073, 19.537548, 23.734776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049381, 0.799352, 0.598830,
		0.824356, -0.371133, 0.427432,
		0.563914, 0.472542, -0.677278,
		33.210247, 19.679310, 23.531593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281712, 19.705706, 24.460474>,  <32.815506, 19.348532, 24.005686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281712, 19.705706, 24.460474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302948, 19.883987, 24.103031>,  <33.315689, 19.990955, 23.888565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302948, 19.883987, 24.103031>,  <33.281712, 19.705706, 24.460474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302948, 19.883987, 24.103031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129916, 0.884180, 0.448719,
		0.990103, -0.139915, -0.010966,
		0.053087, 0.445702, -0.893606,
		33.318874, 20.017698, 23.834949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810169, 20.203779, 24.543037>,  <33.281712, 19.705706, 24.460474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810169, 20.203779, 24.543037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656658, 20.327606, 24.195042>,  <33.564552, 20.401903, 23.986244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656658, 20.327606, 24.195042>,  <33.810169, 20.203779, 24.543037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656658, 20.327606, 24.195042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057305, 0.948301, 0.312155,
		0.921646, 0.069943, -0.381676,
		-0.383777, 0.309569, -0.869990,
		33.541527, 20.420477, 23.934044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188690, 20.796659, 24.253708>,  <33.810169, 20.203779, 24.543037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188690, 20.796659, 24.253708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824299, 20.829910, 24.092113>,  <33.605663, 20.849861, 23.995157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824299, 20.829910, 24.092113>,  <34.188690, 20.796659, 24.253708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824299, 20.829910, 24.092113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081700, 0.923704, 0.374294,
		0.404279, 0.373980, -0.834684,
		-0.910980, 0.083126, -0.403988,
		33.551006, 20.854849, 23.970917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187099, 21.350719, 23.846729>,  <34.188690, 20.796659, 24.253708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187099, 21.350719, 23.846729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806332, 21.288155, 23.952099>,  <33.577873, 21.250616, 24.015320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806332, 21.288155, 23.952099>,  <34.187099, 21.350719, 23.846729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806332, 21.288155, 23.952099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082555, 0.959002, 0.271107,
		-0.295027, 0.236325, -0.925802,
		-0.951916, -0.156414, 0.263422,
		33.520756, 21.241230, 24.031126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837460, 21.937895, 23.575541>,  <34.187099, 21.350719, 23.846729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837460, 21.937895, 23.575541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577057, 21.792782, 23.842247>,  <33.420815, 21.705713, 24.002270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577057, 21.792782, 23.842247>,  <33.837460, 21.937895, 23.575541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577057, 21.792782, 23.842247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254061, 0.931873, 0.258969,
		-0.715290, -0.000807, -0.698828,
		-0.651010, -0.362782, 0.666765,
		33.381752, 21.683947, 24.042276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188499, 22.320511, 23.475134>,  <33.837460, 21.937895, 23.575541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188499, 22.320511, 23.475134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189899, 22.148960, 23.836475>,  <33.190739, 22.046030, 24.053280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189899, 22.148960, 23.836475>,  <33.188499, 22.320511, 23.475134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189899, 22.148960, 23.836475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247878, 0.874795, 0.416281,
		-0.968785, -0.225380, -0.103245,
		0.003503, -0.428879, 0.903355,
		33.190948, 22.020296, 24.107483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351620, 22.418610, 23.690664>,  <33.188499, 22.320511, 23.475134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351620, 22.418610, 23.690664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556778, 22.324623, 24.020931>,  <32.679874, 22.268232, 24.219091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556778, 22.324623, 24.020931>,  <32.351620, 22.418610, 23.690664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556778, 22.324623, 24.020931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163495, 0.917471, 0.362651,
		-0.842737, -0.320995, 0.432153,
		0.512897, -0.234965, 0.825668,
		32.710648, 22.254133, 24.268631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918297, 22.551786, 24.249821>,  <32.351620, 22.418610, 23.690664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918297, 22.551786, 24.249821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305367, 22.557552, 24.350536>,  <32.537609, 22.561012, 24.410967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305367, 22.557552, 24.350536>,  <31.918297, 22.551786, 24.249821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305367, 22.557552, 24.350536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168859, 0.778596, 0.604380,
		-0.187331, -0.627360, 0.755862,
		0.967675, 0.014415, 0.251790,
		32.595669, 22.561876, 24.426073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929508, 22.649685, 24.934044>,  <31.918297, 22.551786, 24.249821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929508, 22.649685, 24.934044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298214, 22.759327, 24.824341>,  <32.519436, 22.825113, 24.758520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298214, 22.759327, 24.824341>,  <31.929508, 22.649685, 24.934044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298214, 22.759327, 24.824341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143552, 0.898278, 0.415318,
		0.360200, -0.343455, 0.867349,
		0.921764, 0.274107, -0.274256,
		32.574741, 22.841558, 24.742064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289528, 22.863821, 25.552160>,  <31.929508, 22.649685, 24.934044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289528, 22.863821, 25.552160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437031, 23.029690, 25.219398>,  <32.525532, 23.129211, 25.019741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437031, 23.029690, 25.219398>,  <32.289528, 22.863821, 25.552160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437031, 23.029690, 25.219398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004033, 0.894255, 0.447540,
		0.929516, -0.168390, 0.328092,
		0.368759, 0.414673, -0.831903,
		32.547661, 23.154091, 24.969828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587788, 23.460991, 25.779234>,  <32.289528, 22.863821, 25.552160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587788, 23.460991, 25.779234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629128, 23.528278, 25.387108>,  <32.653931, 23.568651, 25.151833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629128, 23.528278, 25.387108>,  <32.587788, 23.460991, 25.779234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629128, 23.528278, 25.387108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091292, 0.979830, 0.177761,
		0.990446, -0.107867, 0.085911,
		0.103353, 0.168219, -0.980317,
		32.660133, 23.578745, 25.093014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132042, 24.007488, 25.726513>,  <32.587788, 23.460991, 25.779234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132042, 24.007488, 25.726513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929863, 24.017097, 25.381504>,  <32.808556, 24.022863, 25.174500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929863, 24.017097, 25.381504>,  <33.132042, 24.007488, 25.726513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929863, 24.017097, 25.381504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021507, 0.998951, 0.040425,
		0.862587, 0.038983, -0.504404,
		-0.505451, 0.024022, -0.862521,
		32.778229, 24.024303, 25.122747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457558, 24.564964, 25.440887>,  <33.132042, 24.007488, 25.726513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457558, 24.564964, 25.440887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125618, 24.506371, 25.225521>,  <32.926453, 24.471214, 25.096300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125618, 24.506371, 25.225521>,  <33.457558, 24.564964, 25.440887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125618, 24.506371, 25.225521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017501, 0.971283, -0.237282,
		0.557715, -0.187486, -0.808581,
		-0.829848, -0.146487, -0.538418,
		32.876663, 24.462425, 25.063995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632328, 24.774097, 24.729113>,  <33.457558, 24.564964, 25.440887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632328, 24.774097, 24.729113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238949, 24.799835, 24.796875>,  <33.002922, 24.815277, 24.837532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238949, 24.799835, 24.796875>,  <33.632328, 24.774097, 24.729113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238949, 24.799835, 24.796875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007935, 0.918656, -0.394980,
		-0.181041, -0.389784, -0.902935,
		-0.983443, 0.064343, 0.169408,
		32.943916, 24.819138, 24.847698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303413, 25.016991, 24.091988>,  <33.632328, 24.774097, 24.729113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303413, 25.016991, 24.091988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074528, 25.122566, 24.402576>,  <32.937199, 25.185911, 24.588930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074528, 25.122566, 24.402576>,  <33.303413, 25.016991, 24.091988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074528, 25.122566, 24.402576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122094, 0.963661, -0.237592,
		-0.810967, -0.041150, -0.583642,
		-0.572211, 0.263939, 0.776474,
		32.902866, 25.201748, 24.635519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861217, 25.546160, 23.882933>,  <33.303413, 25.016991, 24.091988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861217, 25.546160, 23.882933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839031, 25.623573, 24.274742>,  <32.825722, 25.670021, 24.509829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839031, 25.623573, 24.274742>,  <32.861217, 25.546160, 23.882933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839031, 25.623573, 24.274742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105650, 0.974390, -0.198502,
		-0.992856, -0.114496, -0.033594,
		-0.055461, 0.193534, 0.979525,
		32.822392, 25.681633, 24.568600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501968, 26.081268, 23.902243>,  <32.861217, 25.546160, 23.882933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501968, 26.081268, 23.902243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648212, 26.078110, 24.274536>,  <32.735958, 26.076214, 24.497911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648212, 26.078110, 24.274536>,  <32.501968, 26.081268, 23.902243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648212, 26.078110, 24.274536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177050, 0.981116, 0.077874,
		-0.913773, -0.193258, 0.357311,
		0.365613, -0.007898, 0.930733,
		32.757896, 26.075741, 24.553757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973099, 26.436798, 24.307959>,  <32.501968, 26.081268, 23.902243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973099, 26.436798, 24.307959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327320, 26.440804, 24.493729>,  <32.539852, 26.443207, 24.605190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327320, 26.440804, 24.493729>,  <31.973099, 26.436798, 24.307959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327320, 26.440804, 24.493729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048750, 0.996250, 0.071477,
		-0.461968, -0.085937, 0.882723,
		0.885556, 0.010013, 0.464426,
		32.592987, 26.443808, 24.633057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956722, 27.044930, 24.667007>,  <31.973099, 26.436798, 24.307959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956722, 27.044930, 24.667007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344913, 26.951405, 24.690689>,  <32.577827, 26.895290, 24.704899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344913, 26.951405, 24.690689>,  <31.956722, 27.044930, 24.667007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344913, 26.951405, 24.690689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224310, 0.965161, 0.134721,
		-0.088641, -0.117464, 0.989113,
		0.970478, -0.233810, 0.059204,
		32.636055, 26.881262, 24.708450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181412, 27.346426, 25.375084>,  <31.956722, 27.044930, 24.667007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181412, 27.346426, 25.375084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484364, 27.292053, 25.119614>,  <32.666134, 27.259430, 24.966331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484364, 27.292053, 25.119614>,  <32.181412, 27.346426, 25.375084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484364, 27.292053, 25.119614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264803, 0.957993, 0.110125,
		0.596876, -0.252529, 0.761556,
		0.757375, -0.135932, -0.638674,
		32.711575, 27.251274, 24.928011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684940, 27.572611, 25.753660>,  <32.181412, 27.346426, 25.375084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684940, 27.572611, 25.753660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772800, 27.609512, 25.365177>,  <32.825516, 27.631653, 25.132088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772800, 27.609512, 25.365177>,  <32.684940, 27.572611, 25.753660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772800, 27.609512, 25.365177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246657, 0.957923, 0.146778,
		0.943881, -0.271795, 0.187657,
		0.219654, 0.092254, -0.971206,
		32.838696, 27.637188, 25.073814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259857, 27.994587, 25.627571>,  <32.684940, 27.572611, 25.753660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259857, 27.994587, 25.627571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123688, 28.020527, 25.252357>,  <33.041985, 28.036091, 25.027229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123688, 28.020527, 25.252357>,  <33.259857, 27.994587, 25.627571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123688, 28.020527, 25.252357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233900, 0.972100, -0.017681,
		0.910716, -0.225424, -0.346093,
		-0.340423, 0.064849, -0.938034,
		33.021561, 28.039982, 24.970947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799648, 28.462770, 25.280022>,  <33.259857, 27.994587, 25.627571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799648, 28.462770, 25.280022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471687, 28.469505, 25.051121>,  <33.274910, 28.473547, 24.913780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471687, 28.469505, 25.051121>,  <33.799648, 28.462770, 25.280022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471687, 28.469505, 25.051121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119234, 0.982670, -0.141923,
		0.559947, -0.184595, -0.807703,
		-0.819904, 0.016837, -0.572254,
		33.225716, 28.474556, 24.879444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908714, 29.042236, 24.813034>,  <33.799648, 28.462770, 25.280022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908714, 29.042236, 24.813034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515759, 28.980038, 24.771580>,  <33.279987, 28.942719, 24.746708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515759, 28.980038, 24.771580>,  <33.908714, 29.042236, 24.813034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515759, 28.980038, 24.771580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137295, 0.976824, -0.164209,
		0.126768, -0.147088, -0.980966,
		-0.982384, -0.155498, -0.103635,
		33.221043, 28.933388, 24.740490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673019, 29.496199, 24.190552>,  <33.908714, 29.042236, 24.813034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673019, 29.496199, 24.190552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344727, 29.417034, 24.404926>,  <33.147751, 29.369535, 24.533550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344727, 29.417034, 24.404926>,  <33.673019, 29.496199, 24.190552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344727, 29.417034, 24.404926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305173, 0.944907, -0.118408,
		-0.482975, -0.260735, -0.835914,
		-0.820734, -0.197911, 0.535936,
		33.098507, 29.357660, 24.565706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121658, 29.761465, 23.773085>,  <33.673019, 29.496199, 24.190552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121658, 29.761465, 23.773085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014103, 29.736420, 24.157539>,  <32.949570, 29.721394, 24.388212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014103, 29.736420, 24.157539>,  <33.121658, 29.761465, 23.773085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014103, 29.736420, 24.157539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213671, 0.976898, 0.003862,
		-0.939173, -0.204329, -0.276051,
		-0.268885, -0.062612, 0.961135,
		32.933437, 29.717636, 24.445881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436192, 30.154003, 23.821871>,  <33.121658, 29.761465, 23.773085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436192, 30.154003, 23.821871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579006, 30.153450, 24.195507>,  <32.664696, 30.153118, 24.419689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579006, 30.153450, 24.195507>,  <32.436192, 30.154003, 23.821871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579006, 30.153450, 24.195507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237989, 0.966863, 0.092400,
		-0.903263, -0.255293, 0.344878,
		0.357039, -0.001385, 0.934088,
		32.686119, 30.153034, 24.475733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963148, 30.508953, 24.163744>,  <32.436192, 30.154003, 23.821871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963148, 30.508953, 24.163744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271896, 30.509087, 24.418056>,  <32.457146, 30.509167, 24.570644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271896, 30.509087, 24.418056>,  <31.963148, 30.508953, 24.163744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271896, 30.509087, 24.418056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143682, 0.974221, 0.173925,
		-0.619332, -0.225597, 0.752020,
		0.771870, 0.000335, 0.635780,
		32.503456, 30.509188, 24.608791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692833, 30.802734, 24.819830>,  <31.963148, 30.508953, 24.163744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692833, 30.802734, 24.819830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087837, 30.858418, 24.790321>,  <32.324841, 30.891827, 24.772617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087837, 30.858418, 24.790321>,  <31.692833, 30.802734, 24.819830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087837, 30.858418, 24.790321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125512, 0.978161, 0.165674,
		0.095221, -0.154346, 0.983418,
		0.987512, 0.139206, -0.073769,
		32.384090, 30.900179, 24.768190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736530, 31.218719, 25.332968>,  <31.692833, 30.802734, 24.819830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736530, 31.218719, 25.332968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092392, 31.243786, 25.152042>,  <32.305908, 31.258825, 25.043488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092392, 31.243786, 25.152042>,  <31.736530, 31.218719, 25.332968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092392, 31.243786, 25.152042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020683, 0.983992, 0.177011,
		0.456167, -0.166834, 0.874116,
		0.889654, 0.062667, -0.452315,
		32.359287, 31.262587, 25.016348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172646, 31.552977, 25.766340>,  <31.736530, 31.218719, 25.332968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172646, 31.552977, 25.766340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292782, 31.624615, 25.391594>,  <32.364864, 31.667599, 25.166746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292782, 31.624615, 25.391594>,  <32.172646, 31.552977, 25.766340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292782, 31.624615, 25.391594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109673, 0.982184, 0.152601,
		0.947504, 0.056916, 0.314637,
		0.300346, 0.179097, -0.936865,
		32.382885, 31.678343, 25.110535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542454, 32.172268, 25.853878>,  <32.172646, 31.552977, 25.766340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542454, 32.172268, 25.853878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500183, 32.159412, 25.456326>,  <32.474823, 32.151699, 25.217794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500183, 32.159412, 25.456326>,  <32.542454, 32.172268, 25.853878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500183, 32.159412, 25.456326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030967, 0.999099, -0.029014,
		0.993919, 0.027712, -0.106572,
		-0.105672, -0.032138, -0.993882,
		32.468483, 32.149773, 25.158161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016865, 32.703995, 25.707104>,  <32.542454, 32.172268, 25.853878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016865, 32.703995, 25.707104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747478, 32.646275, 25.417103>,  <32.585846, 32.611641, 25.243103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747478, 32.646275, 25.417103>,  <33.016865, 32.703995, 25.707104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747478, 32.646275, 25.417103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322616, 0.939805, 0.112629,
		0.665108, 0.309748, -0.679476,
		-0.673461, -0.144299, -0.725002,
		32.545441, 32.602985, 25.199602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175724, 33.297867, 25.251911>,  <33.016865, 32.703995, 25.707104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175724, 33.297867, 25.251911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804798, 33.160080, 25.193344>,  <32.582245, 33.077408, 25.158205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804798, 33.160080, 25.193344>,  <33.175724, 33.297867, 25.251911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804798, 33.160080, 25.193344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365296, 0.918153, 0.153473,
		0.081567, 0.195802, -0.977245,
		-0.927311, -0.344465, -0.146417,
		32.526604, 33.056740, 25.149420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876904, 33.763836, 24.706005>,  <33.175724, 33.297867, 25.251911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876904, 33.763836, 24.706005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537582, 33.590588, 24.827854>,  <32.333992, 33.486641, 24.900963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537582, 33.590588, 24.827854>,  <32.876904, 33.763836, 24.706005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537582, 33.590588, 24.827854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509492, 0.824336, -0.246755,
		-0.144237, -0.364526, -0.919955,
		-0.848300, -0.433119, 0.304623,
		32.283092, 33.460651, 24.919241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315163, 33.940960, 24.224812>,  <32.876904, 33.763836, 24.706005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315163, 33.940960, 24.224812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136917, 33.832336, 24.566029>,  <32.029968, 33.767162, 24.770760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136917, 33.832336, 24.566029>,  <32.315163, 33.940960, 24.224812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136917, 33.832336, 24.566029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580079, 0.813366, -0.044095,
		-0.681863, -0.514482, -0.519972,
		-0.445613, -0.271558, 0.853045,
		32.003235, 33.750870, 24.821941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678495, 34.083912, 24.096743>,  <32.315163, 33.940960, 24.224812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678495, 34.083912, 24.096743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710228, 34.085987, 24.495476>,  <31.729267, 34.087231, 24.734716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710228, 34.085987, 24.495476>,  <31.678495, 34.083912, 24.096743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710228, 34.085987, 24.495476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472025, 0.880968, 0.032984,
		-0.878009, -0.473147, 0.072336,
		0.079332, 0.005184, 0.996835,
		31.734028, 34.087543, 24.794527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023355, 34.338814, 24.271641>,  <31.678495, 34.083912, 24.096743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023355, 34.338814, 24.271641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241385, 34.376453, 24.604877>,  <31.372202, 34.399036, 24.804819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241385, 34.376453, 24.604877>,  <31.023355, 34.338814, 24.271641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241385, 34.376453, 24.604877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530718, 0.807971, 0.255972,
		-0.649024, -0.581660, 0.490347,
		0.545074, 0.094104, 0.833090,
		31.404907, 34.404686, 24.854805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578196, 34.361362, 24.745859>,  <31.023355, 34.338814, 24.271641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578196, 34.361362, 24.745859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904284, 34.548504, 24.882404>,  <31.099936, 34.660789, 24.964333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904284, 34.548504, 24.882404>,  <30.578196, 34.361362, 24.745859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904284, 34.548504, 24.882404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548623, 0.812682, 0.196368,
		-0.185550, -0.347364, 0.919190,
		0.815220, 0.467852, 0.341365,
		31.148849, 34.688858, 24.984814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190323, 34.609287, 24.252417>,  <30.578196, 34.361362, 24.745859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190323, 34.609287, 24.252417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934994, 34.518333, 23.958248>,  <29.781796, 34.463760, 23.781748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934994, 34.518333, 23.958248>,  <30.190323, 34.609287, 24.252417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934994, 34.518333, 23.958248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334388, -0.778618, 0.530979,
		-0.693347, 0.584851, 0.420975,
		-0.638322, -0.227383, -0.735419,
		29.743498, 34.450119, 23.737623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597305, 34.393402, 24.573606>,  <30.190323, 34.609287, 24.252417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597305, 34.393402, 24.573606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539391, 34.275501, 24.195789>,  <29.504641, 34.204762, 23.969099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539391, 34.275501, 24.195789>,  <29.597305, 34.393402, 24.573606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539391, 34.275501, 24.195789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506403, -0.798030, 0.326656,
		-0.850055, 0.525615, -0.033717,
		-0.144788, -0.294750, -0.944542,
		29.495955, 34.187077, 23.912426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922155, 34.204418, 24.543129>,  <29.597305, 34.393402, 24.573606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922155, 34.204418, 24.543129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099594, 34.020821, 24.235222>,  <29.206057, 33.910660, 24.050478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099594, 34.020821, 24.235222>,  <28.922155, 34.204418, 24.543129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099594, 34.020821, 24.235222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454807, -0.855378, 0.247950,
		-0.772252, 0.240106, -0.588197,
		0.443597, -0.458996, -0.769769,
		29.232674, 33.883121, 24.004292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420317, 33.650875, 24.369776>,  <28.922155, 34.204418, 24.543129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420317, 33.650875, 24.369776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752443, 33.512260, 24.195198>,  <28.951719, 33.429092, 24.090450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752443, 33.512260, 24.195198>,  <28.420317, 33.650875, 24.369776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752443, 33.512260, 24.195198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279436, -0.936479, 0.211951,
		-0.482171, -0.054028, -0.874410,
		0.830317, -0.346538, -0.436446,
		29.001539, 33.408298, 24.064264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196592, 33.078468, 24.014973>,  <28.420317, 33.650875, 24.369776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196592, 33.078468, 24.014973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592646, 33.022739, 24.020954>,  <28.830278, 32.989300, 24.024544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592646, 33.022739, 24.020954>,  <28.196592, 33.078468, 24.014973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592646, 33.022739, 24.020954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139826, -0.989347, 0.040511,
		0.009151, -0.042203, -0.999067,
		0.990134, -0.139325, 0.014955,
		28.889687, 32.980942, 24.025440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317089, 32.457592, 23.618710>,  <28.196592, 33.078468, 24.014973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317089, 32.457592, 23.618710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655451, 32.476276, 23.831223>,  <28.858469, 32.487488, 23.958731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655451, 32.476276, 23.831223>,  <28.317089, 32.457592, 23.618710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655451, 32.476276, 23.831223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044473, -0.986511, 0.157540,
		0.531476, -0.156892, -0.832417,
		0.845905, 0.046709, 0.531284,
		28.909222, 32.490288, 23.990608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648512, 31.770075, 23.491064>,  <28.317089, 32.457592, 23.618710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648512, 31.770075, 23.491064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809385, 31.921951, 23.824310>,  <28.905910, 32.013077, 24.024258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809385, 31.921951, 23.824310>,  <28.648512, 31.770075, 23.491064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809385, 31.921951, 23.824310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032302, -0.903503, 0.427363,
		0.914989, -0.198790, -0.351110,
		0.402184, 0.379691, 0.833116,
		28.930040, 32.035858, 24.074245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185827, 31.371845, 23.648283>,  <28.648512, 31.770075, 23.491064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185827, 31.371845, 23.648283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116070, 31.540386, 24.004272>,  <29.074215, 31.641510, 24.217865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116070, 31.540386, 24.004272>,  <29.185827, 31.371845, 23.648283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116070, 31.540386, 24.004272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246962, -0.856217, 0.453764,
		0.953203, 0.298923, 0.045262,
		-0.174394, 0.421352, 0.889972,
		29.063751, 31.666792, 24.271263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770067, 31.280149, 24.069357>,  <29.185827, 31.371845, 23.648283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770067, 31.280149, 24.069357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443693, 31.330387, 24.295094>,  <29.247869, 31.360529, 24.430534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443693, 31.330387, 24.295094>,  <29.770067, 31.280149, 24.069357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443693, 31.330387, 24.295094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129447, -0.911652, 0.390045,
		0.563468, 0.391302, 0.727589,
		-0.815933, 0.125594, 0.564339,
		29.198914, 31.368065, 24.464396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926495, 30.875631, 24.644560>,  <29.770067, 31.280149, 24.069357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926495, 30.875631, 24.644560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542568, 30.965565, 24.711735>,  <29.312212, 31.019526, 24.752039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542568, 30.965565, 24.711735>,  <29.926495, 30.875631, 24.644560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542568, 30.965565, 24.711735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113029, -0.857465, 0.501974,
		0.256861, 0.462821, 0.848422,
		-0.959816, 0.224834, 0.167937,
		29.254623, 31.033014, 24.762115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894077, 30.696873, 25.275961>,  <29.926495, 30.875631, 24.644560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894077, 30.696873, 25.275961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525705, 30.678379, 25.121170>,  <29.304682, 30.667282, 25.028296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525705, 30.678379, 25.121170>,  <29.894077, 30.696873, 25.275961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525705, 30.678379, 25.121170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185958, -0.820485, 0.540577,
		-0.342502, 0.569795, 0.747011,
		-0.920930, -0.046236, -0.386976,
		29.249426, 30.664509, 25.005077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419033, 30.543947, 25.804369>,  <29.894077, 30.696873, 25.275961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419033, 30.543947, 25.804369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201513, 30.457165, 25.480095>,  <29.071001, 30.405094, 25.285530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201513, 30.457165, 25.480095>,  <29.419033, 30.543947, 25.804369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201513, 30.457165, 25.480095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219367, -0.895670, 0.386851,
		-0.810038, 0.388206, 0.439471,
		-0.543799, -0.216959, -0.810686,
		29.038374, 30.392076, 25.236889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858997, 30.195051, 25.951496>,  <29.419033, 30.543947, 25.804369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858997, 30.195051, 25.951496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879398, 30.039310, 25.583626>,  <28.891638, 29.945866, 25.362904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879398, 30.039310, 25.583626>,  <28.858997, 30.195051, 25.951496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879398, 30.039310, 25.583626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202097, -0.905847, 0.372288,
		-0.978037, 0.166877, -0.124885,
		0.051000, -0.389350, -0.919677,
		28.894699, 29.922506, 25.307722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373684, 29.714474, 26.023556>,  <28.858997, 30.195051, 25.951496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373684, 29.714474, 26.023556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614183, 29.644661, 25.711647>,  <28.758482, 29.602774, 25.524502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614183, 29.644661, 25.711647>,  <28.373684, 29.714474, 26.023556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614183, 29.644661, 25.711647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047540, -0.966314, 0.252938,
		-0.797647, -0.189149, -0.572697,
		0.601248, -0.174529, -0.779770,
		28.794558, 29.592302, 25.477716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113882, 29.250380, 25.587421>,  <28.373684, 29.714474, 26.023556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113882, 29.250380, 25.587421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496601, 29.213673, 25.477062>,  <28.726233, 29.191648, 25.410847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496601, 29.213673, 25.477062>,  <28.113882, 29.250380, 25.587421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496601, 29.213673, 25.477062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056317, -0.989409, 0.133786,
		-0.285253, -0.112468, -0.951831,
		0.956796, -0.091767, -0.275898,
		28.783640, 29.186142, 25.394293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098320, 28.680946, 25.016626>,  <28.113882, 29.250380, 25.587421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098320, 28.680946, 25.016626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483999, 28.718845, 25.115700>,  <28.715406, 28.741585, 25.175144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483999, 28.718845, 25.115700>,  <28.098320, 28.680946, 25.016626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483999, 28.718845, 25.115700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143349, -0.971995, -0.186217,
		0.223105, 0.215055, -0.950776,
		0.964197, 0.094747, 0.247685,
		28.773258, 28.747269, 25.190004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421041, 28.244579, 24.511454>,  <28.098320, 28.680946, 25.016626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421041, 28.244579, 24.511454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659664, 28.302292, 24.827251>,  <28.802837, 28.336920, 25.016731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659664, 28.302292, 24.827251>,  <28.421041, 28.244579, 24.511454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659664, 28.302292, 24.827251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427585, -0.889610, -0.160516,
		0.679184, 0.433334, -0.592395,
		0.596557, 0.144279, 0.789496,
		28.838631, 28.345575, 25.064100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060938, 28.010120, 24.264006>,  <28.421041, 28.244579, 24.511454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060938, 28.010120, 24.264006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084599, 27.995476, 24.663036>,  <29.098795, 27.986689, 24.902454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084599, 27.995476, 24.663036>,  <29.060938, 28.010120, 24.264006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084599, 27.995476, 24.663036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425686, -0.902986, -0.058382,
		0.902936, 0.428108, -0.037829,
		0.059153, -0.036613, 0.997577,
		29.102345, 27.984491, 24.962309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791668, 27.958040, 24.394348>,  <29.060938, 28.010120, 24.264006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791668, 27.958040, 24.394348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605396, 27.811665, 24.716648>,  <29.493633, 27.723839, 24.910028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605396, 27.811665, 24.716648>,  <29.791668, 27.958040, 24.394348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605396, 27.811665, 24.716648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533208, -0.842693, -0.074551,
		0.706279, 0.394914, 0.587548,
		-0.465681, -0.365939, 0.805748,
		29.465693, 27.701883, 24.958372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260715, 27.608315, 24.826309>,  <29.791668, 27.958040, 24.394348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260715, 27.608315, 24.826309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911999, 27.442932, 24.931404>,  <29.702768, 27.343702, 24.994461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911999, 27.442932, 24.931404>,  <30.260715, 27.608315, 24.826309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911999, 27.442932, 24.931404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355298, -0.902902, -0.241930,
		0.337253, -0.117564, 0.934045,
		-0.871794, -0.413456, 0.262736,
		29.650461, 27.318895, 25.010225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480703, 27.068720, 25.258266>,  <30.260715, 27.608315, 24.826309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480703, 27.068720, 25.258266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107685, 26.960602, 25.162521>,  <29.883873, 26.895731, 25.105074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107685, 26.960602, 25.162521>,  <30.480703, 27.068720, 25.258266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107685, 26.960602, 25.162521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270638, -0.962146, 0.032087,
		-0.238975, -0.034858, 0.970400,
		-0.932548, -0.270295, -0.239363,
		29.827921, 26.879513, 25.090712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297018, 26.555113, 25.649967>,  <30.480703, 27.068720, 25.258266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297018, 26.555113, 25.649967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037508, 26.505703, 25.349613>,  <29.881802, 26.476057, 25.169399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037508, 26.505703, 25.349613>,  <30.297018, 26.555113, 25.649967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037508, 26.505703, 25.349613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319678, -0.939688, -0.121625,
		-0.690576, -0.318950, 0.649135,
		-0.648776, -0.123522, -0.750887,
		29.842875, 26.468647, 25.124348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011850, 25.934612, 25.761230>,  <30.297018, 26.555113, 25.649967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011850, 25.934612, 25.761230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926964, 26.010727, 25.377823>,  <29.876032, 26.056396, 25.147779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926964, 26.010727, 25.377823>,  <30.011850, 25.934612, 25.761230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926964, 26.010727, 25.377823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235358, -0.942034, -0.239122,
		-0.948457, -0.276340, 0.155129,
		-0.212216, 0.190287, -0.958517,
		29.863298, 26.067812, 25.090267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598488, 25.396158, 25.524384>,  <30.011850, 25.934612, 25.761230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598488, 25.396158, 25.524384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736778, 25.532700, 25.174767>,  <29.819752, 25.614624, 24.964996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736778, 25.532700, 25.174767>,  <29.598488, 25.396158, 25.524384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736778, 25.532700, 25.174767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319766, -0.918587, -0.232267,
		-0.882170, -0.199190, -0.426731,
		0.345724, 0.341353, -0.874044,
		29.840496, 25.635105, 24.912554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288309, 25.049782, 25.012104>,  <29.598488, 25.396158, 25.524384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288309, 25.049782, 25.012104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636410, 25.193943, 24.877781>,  <29.845270, 25.280439, 24.797188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636410, 25.193943, 24.877781>,  <29.288309, 25.049782, 25.012104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636410, 25.193943, 24.877781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266414, -0.917748, -0.294553,
		-0.414346, 0.166872, -0.894690,
		0.870253, 0.360405, -0.335808,
		29.897486, 25.302065, 24.777039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319149, 24.816629, 24.325392>,  <29.288309, 25.049782, 25.012104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319149, 24.816629, 24.325392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703337, 24.896381, 24.403103>,  <29.933849, 24.944233, 24.449730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703337, 24.896381, 24.403103>,  <29.319149, 24.816629, 24.325392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703337, 24.896381, 24.403103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253808, -0.913864, -0.316914,
		0.114357, 0.353696, -0.928344,
		0.960471, 0.199380, 0.194277,
		29.991478, 24.956196, 24.461386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762060, 24.735193, 23.646397>,  <29.319149, 24.816629, 24.325392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762060, 24.735193, 23.646397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017443, 24.708508, 23.953102>,  <30.170671, 24.692497, 24.137125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017443, 24.708508, 23.953102>,  <29.762060, 24.735193, 23.646397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017443, 24.708508, 23.953102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319029, -0.883681, -0.342531,
		0.700425, 0.463310, -0.542908,
		0.638456, -0.066713, 0.766762,
		30.208979, 24.688494, 24.183130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453659, 24.671719, 23.302628>,  <29.762060, 24.735193, 23.646397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453659, 24.671719, 23.302628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444048, 24.513855, 23.670033>,  <30.438282, 24.419138, 23.890476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444048, 24.513855, 23.670033>,  <30.453659, 24.671719, 23.302628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444048, 24.513855, 23.670033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181536, -0.905227, -0.384200,
		0.983091, 0.157513, 0.093394,
		-0.024026, -0.394657, 0.918514,
		30.436840, 24.395458, 23.945587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024101, 24.315641, 23.289837>,  <30.453659, 24.671719, 23.302628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024101, 24.315641, 23.289837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822485, 24.174053, 23.604961>,  <30.701515, 24.089100, 23.794037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822485, 24.174053, 23.604961>,  <31.024101, 24.315641, 23.289837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822485, 24.174053, 23.604961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197396, -0.935227, -0.293914,
		0.840821, 0.007367, 0.541263,
		-0.504039, -0.353972, 0.787813,
		30.671274, 24.067862, 23.841305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517874, 23.784376, 23.723919>,  <31.024101, 24.315641, 23.289837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517874, 23.784376, 23.723919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142756, 23.689537, 23.825367>,  <30.917685, 23.632633, 23.886236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142756, 23.689537, 23.825367>,  <31.517874, 23.784376, 23.723919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142756, 23.689537, 23.825367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168804, -0.949726, -0.263677,
		0.303387, -0.204463, 0.930672,
		-0.937796, -0.237098, 0.253621,
		30.861416, 23.618408, 23.901453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564312, 23.261528, 24.199015>,  <31.517874, 23.784376, 23.723919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564312, 23.261528, 24.199015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187258, 23.231804, 24.068836>,  <30.961025, 23.213970, 23.990728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187258, 23.231804, 24.068836>,  <31.564312, 23.261528, 24.199015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187258, 23.231804, 24.068836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128898, -0.980322, -0.149512,
		-0.307932, -0.182884, 0.933665,
		-0.942636, -0.074308, -0.325446,
		30.904467, 23.209511, 23.971203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102341, 22.737219, 24.657787>,  <31.564312, 23.261528, 24.199015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102341, 22.737219, 24.657787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891027, 22.764187, 24.319233>,  <30.764238, 22.780367, 24.116100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891027, 22.764187, 24.319233>,  <31.102341, 22.737219, 24.657787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891027, 22.764187, 24.319233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134547, -0.990894, 0.005049,
		-0.838339, 0.116546, 0.532545,
		-0.528284, 0.067419, -0.846387,
		30.732542, 22.784412, 24.065317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616098, 22.308378, 24.799913>,  <31.102341, 22.737219, 24.657787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616098, 22.308378, 24.799913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600348, 22.376694, 24.406105>,  <30.590897, 22.417683, 24.169821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600348, 22.376694, 24.406105>,  <30.616098, 22.308378, 24.799913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600348, 22.376694, 24.406105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214161, -0.963831, -0.158632,
		-0.976004, 0.204599, 0.074530,
		-0.039379, 0.170787, -0.984521,
		30.588533, 22.427929, 24.110748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055574, 21.984724, 24.568228>,  <30.616098, 22.308378, 24.799913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055574, 21.984724, 24.568228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231215, 22.030247, 24.211746>,  <30.336597, 22.057560, 23.997858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231215, 22.030247, 24.211746>,  <30.055574, 21.984724, 24.568228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231215, 22.030247, 24.211746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073527, -0.984065, -0.161894,
		-0.895425, 0.136615, -0.423733,
		0.439098, 0.113808, -0.891202,
		30.362944, 22.064388, 23.944386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589024, 21.736410, 24.135557>,  <30.055574, 21.984724, 24.568228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589024, 21.736410, 24.135557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951086, 21.716923, 23.966648>,  <30.168324, 21.705231, 23.865303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951086, 21.716923, 23.966648>,  <29.589024, 21.736410, 24.135557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951086, 21.716923, 23.966648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111606, -0.985797, -0.125493,
		-0.410162, 0.160719, -0.897739,
		0.905158, -0.048721, -0.422274,
		30.222633, 21.702307, 23.839966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547922, 21.382263, 23.442570>,  <29.589024, 21.736410, 24.135557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547922, 21.382263, 23.442570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933842, 21.344513, 23.540756>,  <30.165394, 21.321863, 23.599669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933842, 21.344513, 23.540756>,  <29.547922, 21.382263, 23.442570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933842, 21.344513, 23.540756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038758, -0.974222, -0.222236,
		0.260113, 0.204900, -0.943588,
		0.964800, -0.094378, 0.245466,
		30.223282, 21.316200, 23.614395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845800, 20.940315, 22.891987>,  <29.547922, 21.382263, 23.442570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845800, 20.940315, 22.891987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109024, 20.928242, 23.192932>,  <30.266958, 20.920998, 23.373499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109024, 20.928242, 23.192932>,  <29.845800, 20.940315, 22.891987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109024, 20.928242, 23.192932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119722, -0.982291, -0.144123,
		0.743389, 0.184915, -0.642791,
		0.658058, -0.030183, 0.752362,
		30.306442, 20.919188, 23.418640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585184, 20.651243, 22.636961>,  <29.845800, 20.940315, 22.891987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585184, 20.651243, 22.636961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499012, 20.598320, 23.023968>,  <30.447309, 20.566566, 23.256172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499012, 20.598320, 23.023968>,  <30.585184, 20.651243, 22.636961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499012, 20.598320, 23.023968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175672, -0.979865, -0.094883,
		0.960588, 0.149525, 0.234333,
		-0.215428, -0.132310, 0.967515,
		30.434383, 20.558626, 23.314222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109947, 20.417221, 22.249601>,  <30.585184, 20.651243, 22.636961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109947, 20.417221, 22.249601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880379, 20.192730, 22.011059>,  <29.742638, 20.058035, 21.867933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880379, 20.192730, 22.011059>,  <30.109947, 20.417221, 22.249601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880379, 20.192730, 22.011059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476182, 0.821171, -0.314530,
		0.666231, 0.103457, -0.738535,
		-0.573923, -0.561226, -0.596353,
		29.708202, 20.024363, 21.832153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278263, 20.654049, 21.657196>,  <30.109947, 20.417221, 22.249601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278263, 20.654049, 21.657196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922432, 20.474625, 21.622684>,  <29.708933, 20.366970, 21.601978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922432, 20.474625, 21.622684>,  <30.278263, 20.654049, 21.657196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922432, 20.474625, 21.622684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383268, 0.835729, -0.393272,
		0.248511, -0.316778, -0.915365,
		-0.889577, -0.448562, -0.086277,
		29.655560, 20.340055, 21.596802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132038, 20.701393, 20.948530>,  <30.278263, 20.654049, 21.657196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132038, 20.701393, 20.948530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783407, 20.645657, 21.136547>,  <29.574228, 20.612215, 21.249357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783407, 20.645657, 21.136547>,  <30.132038, 20.701393, 20.948530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783407, 20.645657, 21.136547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316128, 0.892548, -0.321592,
		-0.374725, -0.428885, -0.821972,
		-0.871575, -0.139339, 0.470043,
		29.521935, 20.603855, 21.277559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679993, 20.712933, 20.504194>,  <30.132038, 20.701393, 20.948530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679993, 20.712933, 20.504194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477125, 20.822418, 20.831085>,  <29.355406, 20.888109, 21.027220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477125, 20.822418, 20.831085>,  <29.679993, 20.712933, 20.504194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477125, 20.822418, 20.831085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262631, 0.854045, -0.449034,
		-0.820857, -0.442365, -0.361258,
		-0.507168, 0.273715, 0.817227,
		29.324974, 20.904533, 21.076254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308310, 21.190456, 20.306389>,  <29.679993, 20.712933, 20.504194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308310, 21.190456, 20.306389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200891, 21.262535, 20.684895>,  <29.136440, 21.305782, 20.911997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200891, 21.262535, 20.684895>,  <29.308310, 21.190456, 20.306389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200891, 21.262535, 20.684895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376001, 0.884809, -0.275201,
		-0.886852, -0.429700, -0.169857,
		-0.268545, 0.180196, 0.946263,
		29.120329, 21.316593, 20.968773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582886, 21.565084, 20.367201>,  <29.308310, 21.190456, 20.306389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582886, 21.565084, 20.367201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766457, 21.669086, 20.707031>,  <28.876600, 21.731487, 20.910931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766457, 21.669086, 20.707031>,  <28.582886, 21.565084, 20.367201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766457, 21.669086, 20.707031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351408, 0.931368, -0.095213,
		-0.816025, -0.254852, 0.518800,
		0.458929, 0.260007, 0.849577,
		28.904135, 21.747089, 20.961905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135014, 22.112829, 20.641199>,  <28.582886, 21.565084, 20.367201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135014, 22.112829, 20.641199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486013, 22.161526, 20.826744>,  <28.696613, 22.190744, 20.938072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486013, 22.161526, 20.826744>,  <28.135014, 22.112829, 20.641199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486013, 22.161526, 20.826744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146808, 0.988999, 0.018152,
		-0.456550, -0.084027, 0.885721,
		0.877502, 0.121743, 0.463863,
		28.749264, 22.198050, 20.965902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040676, 22.575148, 21.255457>,  <28.135014, 22.112829, 20.641199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040676, 22.575148, 21.255457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436916, 22.587711, 21.202202>,  <28.674660, 22.595249, 21.170250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436916, 22.587711, 21.202202>,  <28.040676, 22.575148, 21.255457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436916, 22.587711, 21.202202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012225, 0.989714, 0.142540,
		0.136244, -0.139572, 0.980794,
		0.990600, 0.031411, -0.133136,
		28.734097, 22.597134, 21.162262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379202, 22.782301, 21.940405>,  <28.040676, 22.575148, 21.255457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379202, 22.782301, 21.940405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629263, 22.850578, 21.635761>,  <28.779299, 22.891544, 21.452974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629263, 22.850578, 21.635761>,  <28.379202, 22.782301, 21.940405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629263, 22.850578, 21.635761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034601, 0.968773, 0.245522,
		0.779737, -0.179841, 0.599723,
		0.625151, 0.170692, -0.761611,
		28.816809, 22.901785, 21.407278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834858, 23.256042, 22.250809>,  <28.379202, 22.782301, 21.940405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834858, 23.256042, 22.250809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876333, 23.295631, 21.854939>,  <28.901218, 23.319386, 21.617416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876333, 23.295631, 21.854939>,  <28.834858, 23.256042, 22.250809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876333, 23.295631, 21.854939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207364, 0.971019, 0.118834,
		0.972753, -0.217545, 0.080160,
		0.103688, 0.098974, -0.989673,
		28.907440, 23.325323, 21.558037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456055, 23.597284, 22.134645>,  <28.834858, 23.256042, 22.250809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456055, 23.597284, 22.134645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266937, 23.652302, 21.786495>,  <29.153467, 23.685312, 21.577606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266937, 23.652302, 21.786495>,  <29.456055, 23.597284, 22.134645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266937, 23.652302, 21.786495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219614, 0.974967, 0.034778,
		0.853368, -0.174704, -0.491163,
		-0.472792, 0.137545, -0.870373,
		29.125099, 23.693565, 21.525383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953207, 23.982143, 21.703909>,  <29.456055, 23.597284, 22.134645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953207, 23.982143, 21.703909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603868, 24.050484, 21.521446>,  <29.394266, 24.091488, 21.411968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603868, 24.050484, 21.521446>,  <29.953207, 23.982143, 21.703909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603868, 24.050484, 21.521446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179566, 0.983439, 0.024551,
		0.452796, -0.060468, -0.889561,
		-0.873345, 0.170852, -0.456155,
		29.341866, 24.101740, 21.384600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036343, 24.417032, 21.010418>,  <29.953207, 23.982143, 21.703909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036343, 24.417032, 21.010418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675365, 24.442772, 21.180809>,  <29.458778, 24.458216, 21.283043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675365, 24.442772, 21.180809>,  <30.036343, 24.417032, 21.010418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675365, 24.442772, 21.180809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117846, 0.987942, 0.100415,
		-0.414379, 0.140818, -0.899144,
		-0.902442, 0.064350, 0.425978,
		29.404633, 24.462076, 21.308601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715096, 25.118660, 20.733664>,  <30.036343, 24.417032, 21.010418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715096, 25.118660, 20.733664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473629, 25.047482, 21.044514>,  <29.328749, 25.004774, 21.231024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473629, 25.047482, 21.044514>,  <29.715096, 25.118660, 20.733664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473629, 25.047482, 21.044514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050826, 0.981379, 0.185234,
		-0.795615, 0.072322, -0.601470,
		-0.603666, -0.177945, 0.777125,
		29.292530, 24.994099, 21.277651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198782, 25.718248, 20.670631>,  <29.715096, 25.118660, 20.733664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198782, 25.718248, 20.670631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167070, 25.568157, 21.040047>,  <29.148043, 25.478102, 21.261696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167070, 25.568157, 21.040047>,  <29.198782, 25.718248, 20.670631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167070, 25.568157, 21.040047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005249, 0.926597, 0.376020,
		-0.996839, 0.024963, -0.075430,
		-0.079279, -0.375228, 0.923536,
		29.143286, 25.455589, 21.317108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736174, 26.088987, 21.015396>,  <29.198782, 25.718248, 20.670631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736174, 26.088987, 21.015396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963120, 25.933804, 21.305935>,  <29.099287, 25.840693, 21.480259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963120, 25.933804, 21.305935>,  <28.736174, 26.088987, 21.015396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963120, 25.933804, 21.305935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099048, 0.907810, 0.407517,
		-0.817487, -0.159269, 0.553488,
		0.567367, -0.387962, 0.726348,
		29.133329, 25.817415, 21.523840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411390, 26.295677, 21.689140>,  <28.736174, 26.088987, 21.015396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411390, 26.295677, 21.689140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784740, 26.179432, 21.773380>,  <29.008751, 26.109686, 21.823925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784740, 26.179432, 21.773380>,  <28.411390, 26.295677, 21.689140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784740, 26.179432, 21.773380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130783, 0.821859, 0.554475,
		-0.334221, -0.489991, 0.805111,
		0.933377, -0.290612, 0.210600,
		29.064753, 26.092249, 21.836561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410736, 26.153070, 22.400095>,  <28.411390, 26.295677, 21.689140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410736, 26.153070, 22.400095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785440, 26.235962, 22.287289>,  <29.010263, 26.285698, 22.219604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785440, 26.235962, 22.287289>,  <28.410736, 26.153070, 22.400095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785440, 26.235962, 22.287289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002238, 0.809363, 0.587305,
		0.349960, -0.549534, 0.758644,
		0.936762, 0.207231, -0.282014,
		29.066469, 26.298132, 22.202684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748787, 26.317883, 22.942059>,  <28.410736, 26.153070, 22.400095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748787, 26.317883, 22.942059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989687, 26.490452, 22.673382>,  <29.134228, 26.593994, 22.512177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989687, 26.490452, 22.673382>,  <28.748787, 26.317883, 22.942059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989687, 26.490452, 22.673382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024952, 0.830809, 0.555999,
		0.797917, -0.351611, 0.489591,
		0.602251, 0.431424, -0.671689,
		29.170362, 26.619879, 22.471874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105923, 26.769503, 23.323584>,  <28.748787, 26.317883, 22.942059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105923, 26.769503, 23.323584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157310, 26.877880, 22.941990>,  <29.188143, 26.942907, 22.713034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157310, 26.877880, 22.941990>,  <29.105923, 26.769503, 23.323584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157310, 26.877880, 22.941990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166736, 0.954163, 0.248541,
		0.977597, 0.127134, 0.167754,
		0.128467, 0.270943, -0.953984,
		29.195850, 26.959164, 22.655794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603268, 27.312742, 23.352741>,  <29.105923, 26.769503, 23.323584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603268, 27.312742, 23.352741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416624, 27.354580, 23.001438>,  <29.304638, 27.379683, 22.790657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416624, 27.354580, 23.001438>,  <29.603268, 27.312742, 23.352741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416624, 27.354580, 23.001438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067381, 0.985893, 0.153212,
		0.881893, 0.130668, -0.452980,
		-0.466610, 0.104594, -0.878257,
		29.276642, 27.385958, 22.737961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880730, 27.938301, 23.131748>,  <29.603268, 27.312742, 23.352741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880730, 27.938301, 23.131748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539122, 27.906918, 22.926033>,  <29.334156, 27.888088, 22.802603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539122, 27.906918, 22.926033>,  <29.880730, 27.938301, 23.131748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539122, 27.906918, 22.926033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216735, 0.952346, 0.214621,
		0.472943, 0.294755, -0.830328,
		-0.854020, -0.078458, -0.514289,
		29.282915, 27.883381, 22.771746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800339, 28.573088, 22.659214>,  <29.880730, 27.938301, 23.131748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800339, 28.573088, 22.659214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443302, 28.407635, 22.730984>,  <29.229080, 28.308363, 22.774046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443302, 28.407635, 22.730984>,  <29.800339, 28.573088, 22.659214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443302, 28.407635, 22.730984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388606, 0.907574, 0.159046,
		-0.228625, 0.072239, -0.970831,
		-0.892589, -0.413632, 0.179422,
		29.175526, 28.283545, 22.784811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270170, 28.969934, 22.150047>,  <29.800339, 28.573088, 22.659214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270170, 28.969934, 22.150047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021158, 28.797470, 22.411293>,  <28.871752, 28.693991, 22.568041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021158, 28.797470, 22.411293>,  <29.270170, 28.969934, 22.150047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021158, 28.797470, 22.411293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701128, 0.678023, -0.220690,
		-0.347674, -0.595303, -0.724387,
		-0.622528, -0.431160, 0.653115,
		28.834400, 28.668121, 22.607227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604162, 28.933672, 21.815449>,  <29.270170, 28.969934, 22.150047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604162, 28.933672, 21.815449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512625, 28.903107, 22.203632>,  <28.457703, 28.884768, 22.436543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512625, 28.903107, 22.203632>,  <28.604162, 28.933672, 21.815449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512625, 28.903107, 22.203632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619473, 0.780443, -0.084626,
		-0.750922, -0.620540, -0.225933,
		-0.228842, -0.076412, 0.970460,
		28.443972, 28.880182, 22.494770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918076, 28.987476, 21.884022>,  <28.604162, 28.933672, 21.815449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918076, 28.987476, 21.884022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040075, 29.069313, 22.256069>,  <28.113276, 29.118416, 22.479298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040075, 29.069313, 22.256069>,  <27.918076, 28.987476, 21.884022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040075, 29.069313, 22.256069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720689, 0.688030, 0.084984,
		-0.622560, -0.696245, 0.357297,
		0.305001, 0.204593, 0.930116,
		28.131575, 29.130692, 22.535105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365149, 29.029066, 22.348415>,  <27.918076, 28.987476, 21.884022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365149, 29.029066, 22.348415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632257, 29.249260, 22.548832>,  <27.792522, 29.381376, 22.669083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632257, 29.249260, 22.548832>,  <27.365149, 29.029066, 22.348415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632257, 29.249260, 22.548832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695240, 0.701730, 0.155617,
		-0.265932, -0.452262, 0.851316,
		0.667774, 0.550486, 0.501043,
		27.832590, 29.414406, 22.699144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000828, 29.249660, 23.051779>,  <27.365149, 29.029066, 22.348415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000828, 29.249660, 23.051779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309912, 29.497490, 22.996567>,  <27.495361, 29.646187, 22.963440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309912, 29.497490, 22.996567>,  <27.000828, 29.249660, 23.051779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309912, 29.497490, 22.996567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598289, 0.783531, 0.167720,
		0.212066, -0.047017, 0.976124,
		0.772708, 0.619572, -0.138031,
		27.541725, 29.683361, 22.955158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988609, 29.755312, 23.574085>,  <27.000828, 29.249660, 23.051779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988609, 29.755312, 23.574085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187828, 29.953350, 23.289318>,  <27.307360, 30.072174, 23.118458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187828, 29.953350, 23.289318>,  <26.988609, 29.755312, 23.574085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187828, 29.953350, 23.289318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444755, 0.850624, 0.280413,
		0.744406, 0.176970, 0.643848,
		0.498048, 0.495096, -0.711918,
		27.337242, 30.101879, 23.075743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166313, 30.400171, 23.903225>,  <26.988609, 29.755312, 23.574085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166313, 30.400171, 23.903225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204363, 30.473228, 23.511799>,  <27.227192, 30.517063, 23.276943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204363, 30.473228, 23.511799>,  <27.166313, 30.400171, 23.903225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204363, 30.473228, 23.511799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387768, 0.912176, 0.132558,
		0.916835, 0.366848, 0.157593,
		0.095124, 0.182644, -0.978566,
		27.232901, 30.528021, 23.218229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296997, 31.120613, 23.826611>,  <27.166313, 30.400171, 23.903225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296997, 31.120613, 23.826611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186781, 31.013229, 23.457394>,  <27.120651, 30.948799, 23.235863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186781, 31.013229, 23.457394>,  <27.296997, 31.120613, 23.826611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186781, 31.013229, 23.457394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428605, 0.893796, -0.132008,
		0.860450, 0.359247, -0.361340,
		-0.275541, -0.268459, -0.923042,
		27.104118, 30.932692, 23.180481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489719, 31.696630, 23.516119>,  <27.296997, 31.120613, 23.826611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489719, 31.696630, 23.516119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235273, 31.501659, 23.276863>,  <27.082605, 31.384676, 23.133310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235273, 31.501659, 23.276863>,  <27.489719, 31.696630, 23.516119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235273, 31.501659, 23.276863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392906, 0.871793, -0.292577,
		0.664063, 0.048899, -0.746076,
		-0.636117, -0.487427, -0.598138,
		27.044437, 31.355431, 23.097422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459791, 32.143047, 23.028793>,  <27.489719, 31.696630, 23.516119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459791, 32.143047, 23.028793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141453, 31.909138, 22.965969>,  <26.950449, 31.768793, 22.928274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141453, 31.909138, 22.965969>,  <27.459791, 32.143047, 23.028793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141453, 31.909138, 22.965969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524250, 0.795263, -0.304497,
		0.302966, -0.159994, -0.939475,
		-0.795848, -0.584772, -0.157061,
		26.902699, 31.733706, 22.918850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264019, 32.172207, 22.325750>,  <27.459791, 32.143047, 23.028793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264019, 32.172207, 22.325750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926071, 32.066391, 22.511745>,  <26.723303, 32.002899, 22.623343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926071, 32.066391, 22.511745>,  <27.264019, 32.172207, 22.325750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926071, 32.066391, 22.511745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440681, 0.836939, -0.324551,
		-0.303309, -0.479114, -0.823683,
		-0.844869, -0.264542, 0.464988,
		26.672611, 31.987028, 22.651241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746731, 32.404560, 21.846325>,  <27.264019, 32.172207, 22.325750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746731, 32.404560, 21.846325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563257, 32.362213, 22.199234>,  <26.453173, 32.336807, 22.410978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563257, 32.362213, 22.199234>,  <26.746731, 32.404560, 21.846325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563257, 32.362213, 22.199234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528075, 0.831007, -0.174828,
		-0.714665, -0.546096, -0.437073,
		-0.458684, -0.105864, 0.882271,
		26.425652, 32.330452, 22.463915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021324, 32.335442, 21.715439>,  <26.746731, 32.404560, 21.846325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021324, 32.335442, 21.715439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007387, 32.440292, 22.101200>,  <25.999025, 32.503201, 22.332657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007387, 32.440292, 22.101200>,  <26.021324, 32.335442, 21.715439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007387, 32.440292, 22.101200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481837, 0.841022, -0.245998,
		-0.875568, -0.473257, 0.096998,
		-0.034843, 0.262125, 0.964405,
		25.996935, 32.518929, 22.390522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361502, 32.581814, 21.836332>,  <26.021324, 32.335442, 21.715439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361502, 32.581814, 21.836332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604740, 32.751751, 22.104580>,  <25.750683, 32.853714, 22.265530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604740, 32.751751, 22.104580>,  <25.361502, 32.581814, 21.836332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604740, 32.751751, 22.104580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447390, 0.881227, -0.152583,
		-0.655793, -0.207244, 0.725937,
		0.608094, 0.424840, 0.670621,
		25.787169, 32.879204, 22.305767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918089, 32.911236, 22.273022>,  <25.361502, 32.581814, 21.836332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918089, 32.911236, 22.273022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254986, 33.110062, 22.356499>,  <25.457125, 33.229359, 22.406586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254986, 33.110062, 22.356499>,  <24.918089, 32.911236, 22.273022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254986, 33.110062, 22.356499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497089, 0.865878, -0.056188,
		-0.208631, -0.056415, 0.976366,
		0.842244, 0.497063, 0.208692,
		25.507660, 33.259182, 22.419106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.711077, 33.335934, 22.806990>,  <24.918089, 32.911236, 22.273022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.711077, 33.335934, 22.806990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035484, 33.488365, 22.629440>,  <25.230129, 33.579823, 22.522911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035484, 33.488365, 22.629440>,  <24.711077, 33.335934, 22.806990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.035484, 33.488365, 22.629440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398601, 0.915318, 0.057532,
		0.428212, 0.130270, 0.894240,
		0.811019, 0.381080, -0.443875,
		25.278790, 33.602688, 22.496277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907219, 33.953007, 23.214918>,  <24.711077, 33.335934, 22.806990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907219, 33.953007, 23.214918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078760, 33.988705, 22.855335>,  <25.181684, 34.010124, 22.639585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078760, 33.988705, 22.855335>,  <24.907219, 33.953007, 23.214918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.078760, 33.988705, 22.855335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250112, 0.967938, -0.023225,
		0.868061, 0.234800, 0.437424,
		0.428852, 0.089245, -0.898955,
		25.207417, 34.015476, 22.585649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.205765, 34.592594, 23.191084>,  <24.907219, 33.953007, 23.214918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.205765, 34.592594, 23.191084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159777, 34.502743, 22.804028>,  <25.132185, 34.448833, 22.571795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159777, 34.502743, 22.804028>,  <25.205765, 34.592594, 23.191084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.159777, 34.502743, 22.804028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272419, 0.943882, -0.186745,
		0.955285, 0.242133, -0.169709,
		-0.114968, -0.224627, -0.967639,
		25.125286, 34.435356, 22.513737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.843796, 35.019672, 23.616858>,  <25.205765, 34.592594, 23.191084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.843796, 35.019672, 23.616858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039137, 35.340927, 23.480339>,  <25.156342, 35.533680, 23.398428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039137, 35.340927, 23.480339>,  <24.843796, 35.019672, 23.616858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039137, 35.340927, 23.480339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851393, 0.524298, 0.015539,
		0.191422, 0.282990, 0.939827,
		0.488352, 0.803136, -0.341298,
		25.185642, 35.581867, 23.377949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.298429, 34.463409, 23.751419>,  <24.843796, 35.019672, 23.616858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.298429, 34.463409, 23.751419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.939993, 34.324074, 23.861458>,  <23.724930, 34.240475, 23.927481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.939993, 34.324074, 23.861458>,  <24.298429, 34.463409, 23.751419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.939993, 34.324074, 23.861458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161087, 0.832736, 0.529718,
		-0.413604, 0.430362, -0.802322,
		-0.896093, -0.348337, 0.275097,
		23.671165, 34.219574, 23.943987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.680180, 34.788109, 23.506855>,  <24.298429, 34.463409, 23.751419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.680180, 34.788109, 23.506855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.586241, 34.651421, 23.870850>,  <23.529877, 34.569408, 24.089247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.586241, 34.651421, 23.870850>,  <23.680180, 34.788109, 23.506855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.586241, 34.651421, 23.870850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382718, 0.893057, 0.236591,
		-0.893517, -0.292705, -0.340515,
		-0.234848, -0.341720, 0.909986,
		23.515787, 34.548904, 24.143845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.914633, 34.750687, 23.299189>,  <23.680180, 34.788109, 23.506855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.914633, 34.750687, 23.299189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.943016, 35.129795, 23.174805>,  <22.960045, 35.357262, 23.100174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.943016, 35.129795, 23.174805>,  <22.914633, 34.750687, 23.299189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.943016, 35.129795, 23.174805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442410, -0.249502, -0.861407,
		-0.894001, 0.198694, 0.401599,
		0.070957, 0.947771, -0.310959,
		22.964304, 35.414127, 23.081516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.189171, 35.217133, 23.235853>,  <22.914633, 34.750687, 23.299189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.189171, 35.217133, 23.235853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488531, 35.314255, 22.988972>,  <22.668148, 35.372528, 22.840843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488531, 35.314255, 22.988972>,  <22.189171, 35.217133, 23.235853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.488531, 35.314255, 22.988972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545222, -0.304662, -0.780970,
		-0.377662, 0.920992, -0.095626,
		0.748401, 0.242805, -0.617205,
		22.713051, 35.387096, 22.803810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.402521, 35.255535, 23.153898>,  <22.189171, 35.217133, 23.235853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.402521, 35.255535, 23.153898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.077782, 35.382225, 22.957699>,  <20.882938, 35.458241, 22.839979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.077782, 35.382225, 22.957699>,  <21.402521, 35.255535, 23.153898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.077782, 35.382225, 22.957699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572230, 0.598517, -0.560651,
		0.115999, -0.735841, -0.667145,
		-0.811848, 0.316725, -0.490498,
		20.834227, 35.477242, 22.810549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.457497, 35.082146, 22.485415>,  <21.402521, 35.255535, 23.153898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.457497, 35.082146, 22.485415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.241915, 35.412373, 22.552311>,  <21.112566, 35.610508, 22.592449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.241915, 35.412373, 22.552311>,  <21.457497, 35.082146, 22.485415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.241915, 35.412373, 22.552311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649606, 0.533758, -0.541400,
		-0.536227, -0.183149, -0.823964,
		-0.538955, 0.825565, 0.167241,
		21.080229, 35.660042, 22.602484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.727198, 35.540920, 21.992271>,  <21.457497, 35.082146, 22.485415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.727198, 35.540920, 21.992271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.453968, 35.761166, 22.184204>,  <21.290030, 35.893314, 22.299364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.453968, 35.761166, 22.184204>,  <21.727198, 35.540920, 21.992271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.453968, 35.761166, 22.184204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437020, 0.834534, -0.335510,
		-0.585171, -0.019482, -0.810676,
		-0.683073, 0.550612, 0.479831,
		21.249046, 35.926350, 22.328154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.462372, 35.999249, 21.501259>,  <21.727198, 35.540920, 21.992271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.462372, 35.999249, 21.501259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.441216, 36.174740, 21.860085>,  <21.428522, 36.280033, 22.075380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.441216, 36.174740, 21.860085>,  <21.462372, 35.999249, 21.501259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.441216, 36.174740, 21.860085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409332, 0.828908, -0.381260,
		-0.910851, 0.347030, -0.223428,
		-0.052892, 0.438727, 0.897062,
		21.425348, 36.306358, 22.129204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.361052, 36.764503, 21.342049>,  <21.462372, 35.999249, 21.501259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.361052, 36.764503, 21.342049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.432907, 36.760700, 21.735523>,  <21.476021, 36.758419, 21.971607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.432907, 36.760700, 21.735523>,  <21.361052, 36.764503, 21.342049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.432907, 36.760700, 21.735523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621143, 0.776506, -0.105926,
		-0.762831, 0.630038, 0.145399,
		0.179640, -0.009510, 0.983686,
		21.486799, 36.757847, 22.030628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.276278, 37.384243, 21.554190>,  <21.361052, 36.764503, 21.342049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.276278, 37.384243, 21.554190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.521269, 37.227741, 21.828938>,  <21.668262, 37.133839, 21.993786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.521269, 37.227741, 21.828938>,  <21.276278, 37.384243, 21.554190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.521269, 37.227741, 21.828938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644087, 0.750758, -0.146679,
		-0.458285, 0.532242, 0.711824,
		0.612476, -0.391256, 0.686871,
		21.705011, 37.110363, 22.034998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.598988, 38.010910, 21.817949>,  <21.276278, 37.384243, 21.554190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.598988, 38.010910, 21.817949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.833897, 37.706650, 21.928604>,  <21.974842, 37.524094, 21.994997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.833897, 37.706650, 21.928604>,  <21.598988, 38.010910, 21.817949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.833897, 37.706650, 21.928604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795794, 0.605017, -0.025814,
		-0.147734, 0.235304, 0.960628,
		0.587271, -0.760648, 0.276635,
		22.010078, 37.478455, 22.011595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.109592, 38.367748, 22.213305>,  <21.598988, 38.010910, 21.817949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.109592, 38.367748, 22.213305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.275009, 38.009964, 22.145267>,  <22.374260, 37.795296, 22.104446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.275009, 38.009964, 22.145267>,  <22.109592, 38.367748, 22.213305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.275009, 38.009964, 22.145267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884363, 0.439034, -0.158591,
		0.216529, -0.084838, 0.972583,
		0.413542, -0.894456, -0.170091,
		22.399073, 37.741627, 22.094240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.717211, 38.273743, 22.694616>,  <22.109592, 38.367748, 22.213305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.717211, 38.273743, 22.694616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.789644, 38.010239, 22.402523>,  <22.833103, 37.852135, 22.227266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.789644, 38.010239, 22.402523>,  <22.717211, 38.273743, 22.694616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.789644, 38.010239, 22.402523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920486, 0.374970, -0.110009,
		0.346286, -0.652249, 0.674283,
		0.181083, -0.658763, -0.730233,
		22.843969, 37.812611, 22.183453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.341984, 37.893818, 22.858286>,  <22.717211, 38.273743, 22.694616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.341984, 37.893818, 22.858286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.290464, 37.870983, 22.462276>,  <23.259552, 37.857281, 22.224670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.290464, 37.870983, 22.462276>,  <23.341984, 37.893818, 22.858286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.290464, 37.870983, 22.462276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938340, 0.315968, -0.140296,
		0.320826, -0.947051, 0.012874,
		-0.128800, -0.057091, -0.990026,
		23.251825, 37.853855, 22.165268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.032017, 37.981094, 22.686743>,  <23.341984, 37.893818, 22.858286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.032017, 37.981094, 22.686743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.870331, 37.961411, 22.321407>,  <23.773319, 37.949600, 22.102205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.870331, 37.961411, 22.321407>,  <24.032017, 37.981094, 22.686743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.870331, 37.961411, 22.321407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856360, 0.330445, -0.396804,
		0.321333, -0.942542, -0.091434,
		-0.404218, -0.049206, -0.913338,
		23.749065, 37.946648, 22.047405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.447201, 37.617825, 22.233065>,  <24.032017, 37.981094, 22.686743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.447201, 37.617825, 22.233065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259014, 37.901627, 22.023201>,  <24.146103, 38.071907, 21.897284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259014, 37.901627, 22.023201>,  <24.447201, 37.617825, 22.233065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259014, 37.901627, 22.023201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866016, 0.257136, -0.428832,
		-0.169350, -0.656114, -0.735415,
		-0.470465, 0.709504, -0.524659,
		24.117874, 38.114479, 21.865803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569626, 37.461990, 21.564043>,  <24.447201, 37.617825, 22.233065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.569626, 37.461990, 21.564043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481464, 37.850906, 21.595203>,  <24.428568, 38.084255, 21.613899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481464, 37.850906, 21.595203>,  <24.569626, 37.461990, 21.564043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481464, 37.850906, 21.595203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822869, 0.228226, -0.520384,
		-0.523745, -0.050592, -0.850371,
		-0.220404, 0.972293, 0.077901,
		24.415342, 38.142593, 21.618574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837063, 37.663742, 21.012522>,  <24.569626, 37.461990, 21.564043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.837063, 37.663742, 21.012522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772160, 38.008545, 21.204609>,  <24.733217, 38.215427, 21.319860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772160, 38.008545, 21.204609>,  <24.837063, 37.663742, 21.012522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.772160, 38.008545, 21.204609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913994, 0.314703, -0.256081,
		-0.371871, 0.397365, -0.838936,
		-0.162258, 0.862011, 0.480218,
		24.723482, 38.267147, 21.348675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073946, 38.220688, 20.629639>,  <24.837063, 37.663742, 21.012522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073946, 38.220688, 20.629639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071028, 38.371555, 21.000084>,  <25.069277, 38.462078, 21.222351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071028, 38.371555, 21.000084>,  <25.073946, 38.220688, 20.629639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071028, 38.371555, 21.000084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884495, 0.434482, -0.169983,
		-0.466493, 0.817904, -0.336777,
		-0.007293, 0.377173, 0.926114,
		25.068840, 38.484707, 21.277918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275192, 38.947926, 20.438602>,  <25.073946, 38.220688, 20.629639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275192, 38.947926, 20.438602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345818, 38.843449, 20.818203>,  <25.388193, 38.780762, 21.045963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345818, 38.843449, 20.818203>,  <25.275192, 38.947926, 20.438602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345818, 38.843449, 20.818203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897078, 0.439477, -0.045945,
		-0.405064, 0.859440, 0.311908,
		0.176563, -0.261195, 0.949001,
		25.398787, 38.765091, 21.102903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453299, 39.620392, 20.777781>,  <25.275192, 38.947926, 20.438602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453299, 39.620392, 20.777781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602575, 39.322788, 20.999474>,  <25.692142, 39.144226, 21.132490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602575, 39.322788, 20.999474>,  <25.453299, 39.620392, 20.777781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602575, 39.322788, 20.999474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920576, 0.222800, -0.320780,
		0.115180, 0.629927, 0.768066,
		0.373193, -0.744011, 0.554234,
		25.714533, 39.099586, 21.165743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.980061, 39.865364, 21.121544>,  <25.453299, 39.620392, 20.777781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.980061, 39.865364, 21.121544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070213, 39.478947, 21.172096>,  <26.124306, 39.247097, 21.202427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070213, 39.478947, 21.172096>,  <25.980061, 39.865364, 21.121544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070213, 39.478947, 21.172096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904892, 0.159489, -0.394632,
		0.361074, 0.203303, 0.910107,
		0.225382, -0.966039, 0.126379,
		26.137827, 39.189137, 21.210011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714773, 39.887329, 21.278856>,  <25.980061, 39.865364, 21.121544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714773, 39.887329, 21.278856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598114, 39.537205, 21.124577>,  <26.528118, 39.327129, 21.032009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598114, 39.537205, 21.124577>,  <26.714773, 39.887329, 21.278856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598114, 39.537205, 21.124577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829502, -0.030653, -0.557662,
		0.476307, -0.482580, 0.735016,
		-0.291647, -0.875315, -0.385701,
		26.510620, 39.274609, 21.008865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390842, 39.646725, 20.964682>,  <26.714773, 39.887329, 21.278856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390842, 39.646725, 20.964682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129385, 39.381760, 20.818279>,  <26.972511, 39.222782, 20.730438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129385, 39.381760, 20.818279>,  <27.390842, 39.646725, 20.964682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129385, 39.381760, 20.818279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649348, -0.242484, -0.720797,
		0.388714, -0.708810, 0.588634,
		-0.653642, -0.662413, -0.366007,
		26.933292, 39.183037, 20.708477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719183, 38.912788, 20.810427>,  <27.390842, 39.646725, 20.964682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719183, 38.912788, 20.810427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393621, 38.968155, 20.584717>,  <27.198284, 39.001373, 20.449291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393621, 38.968155, 20.584717>,  <27.719183, 38.912788, 20.810427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393621, 38.968155, 20.584717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486915, -0.367366, -0.792437,
		-0.316982, -0.919719, 0.231603,
		-0.813902, 0.138417, -0.564273,
		27.149450, 39.009678, 20.415436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707756, 38.316151, 20.332237>,  <27.719183, 38.912788, 20.810427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707756, 38.316151, 20.332237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472761, 38.585655, 20.152946>,  <27.331764, 38.747356, 20.045372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472761, 38.585655, 20.152946>,  <27.707756, 38.316151, 20.332237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472761, 38.585655, 20.152946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320476, -0.314897, -0.893384,
		-0.743069, -0.668500, -0.030924,
		-0.587489, 0.673757, -0.448228,
		27.296515, 38.787781, 20.018478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066502, 37.991413, 19.916958>,  <27.707756, 38.316151, 20.332237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066502, 37.991413, 19.916958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209476, 38.330132, 19.759388>,  <27.295261, 38.533363, 19.664846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209476, 38.330132, 19.759388>,  <27.066502, 37.991413, 19.916958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209476, 38.330132, 19.759388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180940, -0.476584, -0.860307,
		-0.916243, 0.236228, -0.323568,
		0.357436, 0.846796, -0.393923,
		27.316708, 38.584171, 19.641211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672932, 38.110756, 19.235296>,  <27.066502, 37.991413, 19.916958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672932, 38.110756, 19.235296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050220, 38.239986, 19.266159>,  <27.276594, 38.317524, 19.284678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050220, 38.239986, 19.266159>,  <26.672932, 38.110756, 19.235296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050220, 38.239986, 19.266159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217952, -0.426682, -0.877747,
		-0.250661, 0.844726, -0.472871,
		0.943221, 0.323080, 0.077157,
		27.333187, 38.336910, 19.289307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.652641, 38.525673, 18.693344>,  <26.672932, 38.110756, 19.235296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.652641, 38.525673, 18.693344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413788, 38.213486, 18.619263>,  <26.270475, 38.026173, 18.574814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413788, 38.213486, 18.619263>,  <26.652641, 38.525673, 18.693344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413788, 38.213486, 18.619263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492483, -0.174461, -0.852657,
		0.633162, -0.600359, 0.488544,
		-0.597132, -0.780470, -0.185204,
		26.234648, 37.979343, 18.563702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128824, 37.957912, 18.522766>,  <26.652641, 38.525673, 18.693344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128824, 37.957912, 18.522766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762596, 37.917179, 18.367146>,  <26.542860, 37.892738, 18.273773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762596, 37.917179, 18.367146>,  <27.128824, 37.957912, 18.522766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762596, 37.917179, 18.367146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401719, -0.276812, -0.872924,
		-0.018804, -0.955513, 0.294348,
		-0.915570, -0.101831, -0.389053,
		26.487925, 37.886631, 18.250429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971062, 37.176262, 18.262354>,  <27.128824, 37.957912, 18.522766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971062, 37.176262, 18.262354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837790, 37.510677, 18.087982>,  <26.757826, 37.711327, 17.983360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837790, 37.510677, 18.087982>,  <26.971062, 37.176262, 18.262354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837790, 37.510677, 18.087982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477130, -0.249275, -0.842739,
		-0.813227, -0.488779, -0.315844,
		-0.333181, 0.836037, -0.435927,
		26.737835, 37.761490, 17.957205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708910, 37.027229, 17.495663>,  <26.971062, 37.176262, 18.262354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708910, 37.027229, 17.495663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851248, 37.390018, 17.585789>,  <26.936651, 37.607693, 17.639864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851248, 37.390018, 17.585789>,  <26.708910, 37.027229, 17.495663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851248, 37.390018, 17.585789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636238, -0.058520, -0.769271,
		-0.684525, 0.417095, -0.597877,
		0.355846, 0.906977, 0.225313,
		26.958002, 37.662113, 17.653383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577868, 37.371807, 16.812563>,  <26.708910, 37.027229, 17.495663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577868, 37.371807, 16.812563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404781, 37.359379, 16.452164>,  <26.300930, 37.351921, 16.235924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404781, 37.359379, 16.452164>,  <26.577868, 37.371807, 16.812563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404781, 37.359379, 16.452164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899200, 0.086710, 0.428860,
		0.064800, 0.995749, -0.065461,
		-0.432713, -0.031072, -0.900996,
		26.274967, 37.350056, 16.181866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111500, 37.938416, 16.631348>,  <26.577868, 37.371807, 16.812563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111500, 37.938416, 16.631348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988983, 37.624561, 16.415745>,  <25.915474, 37.436249, 16.286383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988983, 37.624561, 16.415745>,  <26.111500, 37.938416, 16.631348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988983, 37.624561, 16.415745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912292, 0.080240, 0.401603,
		-0.271864, 0.614739, -0.740396,
		-0.306290, -0.784639, -0.539007,
		25.897097, 37.389168, 16.254044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479963, 37.965034, 16.760187>,  <26.111500, 37.938416, 16.631348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479963, 37.965034, 16.760187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513735, 37.580410, 16.655678>,  <25.533997, 37.349636, 16.592972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513735, 37.580410, 16.655678>,  <25.479963, 37.965034, 16.760187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513735, 37.580410, 16.655678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882039, -0.194104, 0.429338,
		-0.463550, 0.194207, -0.864526,
		0.084427, -0.961565, -0.261275,
		25.539062, 37.291939, 16.577295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910093, 37.772999, 16.282501>,  <25.479963, 37.965034, 16.760187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910093, 37.772999, 16.282501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042036, 37.462578, 16.497513>,  <25.121202, 37.276325, 16.626520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042036, 37.462578, 16.497513>,  <24.910093, 37.772999, 16.282501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.042036, 37.462578, 16.497513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937580, -0.202859, 0.282475,
		-0.110172, -0.597154, -0.794525,
		0.329857, -0.776051, 0.537530,
		25.140993, 37.229763, 16.658772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.461887, 37.277733, 16.024832>,  <24.910093, 37.772999, 16.282501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.461887, 37.277733, 16.024832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605165, 37.229279, 16.395134>,  <24.691132, 37.200207, 16.617315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605165, 37.229279, 16.395134>,  <24.461887, 37.277733, 16.024832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.605165, 37.229279, 16.395134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918060, -0.226124, 0.325628,
		0.169892, -0.966538, -0.192203,
		0.358194, -0.121132, 0.925756,
		24.712624, 37.192940, 16.672861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.272449, 36.651196, 16.258545>,  <24.461887, 37.277733, 16.024832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.272449, 36.651196, 16.258545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.315174, 36.886017, 16.579533>,  <24.340809, 37.026909, 16.772125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.315174, 36.886017, 16.579533>,  <24.272449, 36.651196, 16.258545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.315174, 36.886017, 16.579533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919690, -0.248368, 0.304111,
		0.377838, -0.770506, 0.513380,
		0.106813, 0.587055, 0.802470,
		24.347218, 37.062134, 16.820274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.061462, 36.197456, 16.756332>,  <24.272449, 36.651196, 16.258545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.061462, 36.197456, 16.756332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.053223, 36.562599, 16.919434>,  <24.048279, 36.781685, 17.017294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.053223, 36.562599, 16.919434>,  <24.061462, 36.197456, 16.756332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.053223, 36.562599, 16.919434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880931, -0.209436, 0.424379,
		0.472796, -0.350460, 0.808481,
		-0.020597, 0.912861, 0.407751,
		24.047043, 36.836456, 17.041759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.859703, 36.118713, 17.504850>,  <24.061462, 36.197456, 16.756332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.859703, 36.118713, 17.504850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.773338, 36.502312, 17.431404>,  <23.721519, 36.732471, 17.387337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.773338, 36.502312, 17.431404>,  <23.859703, 36.118713, 17.504850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.773338, 36.502312, 17.431404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873348, -0.105583, 0.475515,
		0.436629, 0.263032, 0.860331,
		-0.215912, 0.958992, -0.183618,
		23.708565, 36.790009, 17.376318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.567936, 36.352135, 18.137060>,  <23.859703, 36.118713, 17.504850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.567936, 36.352135, 18.137060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.450911, 36.613323, 17.857620>,  <23.380695, 36.770035, 17.689957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.450911, 36.613323, 17.857620>,  <23.567936, 36.352135, 18.137060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.450911, 36.613323, 17.857620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937656, -0.052538, 0.343570,
		0.187637, 0.755562, 0.627629,
		-0.292562, 0.652967, -0.698600,
		23.363142, 36.809212, 17.648041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.349003, 37.047092, 18.445040>,  <23.567936, 36.352135, 18.137060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.349003, 37.047092, 18.445040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.158075, 36.994751, 18.097466>,  <23.043518, 36.963348, 17.888922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.158075, 36.994751, 18.097466>,  <23.349003, 37.047092, 18.445040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.158075, 36.994751, 18.097466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878497, 0.048266, 0.475303,
		-0.020253, 0.990226, -0.137989,
		-0.477318, -0.130849, -0.868934,
		23.014879, 36.955498, 17.836786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.852722, 37.528507, 18.473864>,  <23.349003, 37.047092, 18.445040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.852722, 37.528507, 18.473864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.735266, 37.286953, 18.177460>,  <22.664791, 37.142021, 17.999617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.735266, 37.286953, 18.177460>,  <22.852722, 37.528507, 18.473864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.735266, 37.286953, 18.177460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932040, 0.008698, 0.362251,
		-0.212313, 0.797024, -0.565399,
		-0.293640, -0.603885, -0.741011,
		22.647173, 37.105789, 17.955156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.240705, 37.742313, 18.343649>,  <22.852722, 37.528507, 18.473864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.240705, 37.742313, 18.343649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.239847, 37.386261, 18.161369>,  <22.239332, 37.172630, 18.052002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.239847, 37.386261, 18.161369>,  <22.240705, 37.742313, 18.343649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.239847, 37.386261, 18.161369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937393, -0.156916, 0.310920,
		-0.348266, 0.427835, -0.834067,
		-0.002144, -0.890132, -0.455698,
		22.239204, 37.119221, 18.024660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.636286, 37.741817, 18.047186>,  <22.240705, 37.742313, 18.343649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.636286, 37.741817, 18.047186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.729980, 37.353249, 18.062531>,  <21.786198, 37.120106, 18.071737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.729980, 37.353249, 18.062531>,  <21.636286, 37.741817, 18.047186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.729980, 37.353249, 18.062531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942426, -0.217203, 0.254276,
		-0.238678, -0.095711, -0.966371,
		0.234236, -0.971423, 0.038359,
		21.800251, 37.061821, 18.074039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.169579, 37.319504, 17.752949>,  <21.636286, 37.741817, 18.047186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.169579, 37.319504, 17.752949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.331285, 37.058472, 18.009296>,  <21.428310, 36.901852, 18.163105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.331285, 37.058472, 18.009296>,  <21.169579, 37.319504, 17.752949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.331285, 37.058472, 18.009296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885590, -0.104088, 0.452654,
		-0.228686, -0.750539, -0.619996,
		0.404269, -0.652578, 0.640866,
		21.452566, 36.862698, 18.201557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.665651, 36.823406, 17.845001>,  <21.169579, 37.319504, 17.752949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.665651, 36.823406, 17.845001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.900269, 36.757393, 18.162170>,  <21.041039, 36.717785, 18.352472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.900269, 36.757393, 18.162170>,  <20.665651, 36.823406, 17.845001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.900269, 36.757393, 18.162170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800244, -0.268950, 0.535980,
		0.124803, -0.948910, -0.289818,
		0.586544, -0.165033, 0.792925,
		21.076231, 36.707882, 18.400047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.384020, 36.283680, 18.198780>,  <20.665651, 36.823406, 17.845001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.384020, 36.283680, 18.198780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.608494, 36.461216, 18.478230>,  <20.743177, 36.567738, 18.645899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.608494, 36.461216, 18.478230>,  <20.384020, 36.283680, 18.198780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.608494, 36.461216, 18.478230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744374, -0.098433, 0.660468,
		0.361913, -0.890681, 0.275148,
		0.561182, 0.443845, 0.698624,
		20.776848, 36.594368, 18.687817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.251799, 35.944611, 18.874697>,  <20.384020, 36.283680, 18.198780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.251799, 35.944611, 18.874697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.403276, 36.306484, 18.952812>,  <20.494164, 36.523609, 18.999681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.403276, 36.306484, 18.952812>,  <20.251799, 35.944611, 18.874697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.403276, 36.306484, 18.952812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596798, 0.077417, 0.798648,
		0.707407, -0.418989, 0.569231,
		0.378693, 0.904685, 0.195287,
		20.516884, 36.577888, 19.011398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.308426, 35.893791, 19.570843>,  <20.251799, 35.944611, 18.874697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.308426, 35.893791, 19.570843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356569, 36.282269, 19.488571>,  <20.385456, 36.515354, 19.439207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356569, 36.282269, 19.488571>,  <20.308426, 35.893791, 19.570843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.356569, 36.282269, 19.488571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454185, 0.238103, 0.858501,
		0.882740, -0.009913, 0.469758,
		0.120361, 0.971190, -0.205680,
		20.392677, 36.573624, 19.426867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.485853, 36.131245, 20.167456>,  <20.308426, 35.893791, 19.570843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.485853, 36.131245, 20.167456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.336586, 36.450485, 19.978233>,  <20.247026, 36.642029, 19.864700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.336586, 36.450485, 19.978233>,  <20.485853, 36.131245, 20.167456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.336586, 36.450485, 19.978233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556512, 0.215413, 0.802429,
		0.742321, 0.562703, 0.363767,
		-0.373169, 0.798100, -0.473056,
		20.224636, 36.689915, 19.836317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.604446, 36.592358, 20.696445>,  <20.485853, 36.131245, 20.167456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.604446, 36.592358, 20.696445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.345362, 36.764919, 20.445251>,  <20.189911, 36.868458, 20.294535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.345362, 36.764919, 20.445251>,  <20.604446, 36.592358, 20.696445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.345362, 36.764919, 20.445251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620912, 0.178769, 0.763224,
		0.441522, 0.884269, 0.152073,
		-0.647709, 0.431403, -0.627984,
		20.151049, 36.894341, 20.256857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.591791, 37.223885, 20.959536>,  <20.604446, 36.592358, 20.696445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.591791, 37.223885, 20.959536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.263037, 37.156929, 20.741734>,  <20.065784, 37.116756, 20.611053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.263037, 37.156929, 20.741734>,  <20.591791, 37.223885, 20.959536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.263037, 37.156929, 20.741734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567326, 0.326835, 0.755857,
		0.051437, 0.930139, -0.363587,
		-0.821885, -0.167393, -0.544504,
		20.016472, 37.106712, 20.578382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.134731, 37.760113, 21.068161>,  <20.591791, 37.223885, 20.959536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.134731, 37.760113, 21.068161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.870802, 37.497780, 20.921455>,  <19.712444, 37.340382, 20.833431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.870802, 37.497780, 20.921455>,  <20.134731, 37.760113, 21.068161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.870802, 37.497780, 20.921455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710313, 0.385156, 0.589161,
		-0.245130, 0.649259, -0.719982,
		-0.659824, -0.655833, -0.366764,
		19.672855, 37.301029, 20.811426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.582561, 38.161469, 20.938517>,  <20.134731, 37.760113, 21.068161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.582561, 38.161469, 20.938517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.463009, 37.784008, 20.995350>,  <19.391277, 37.557529, 21.029449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.463009, 37.784008, 20.995350>,  <19.582561, 38.161469, 20.938517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.463009, 37.784008, 20.995350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624925, 0.306065, 0.718187,
		-0.721207, 0.125861, -0.681190,
		-0.298880, -0.943654, 0.142083,
		19.373344, 37.500912, 21.037975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.887718, 38.201080, 20.966311>,  <19.582561, 38.161469, 20.938517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.887718, 38.201080, 20.966311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.964788, 37.842567, 21.126087>,  <19.011030, 37.627460, 21.221952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.964788, 37.842567, 21.126087>,  <18.887718, 38.201080, 20.966311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.964788, 37.842567, 21.126087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639211, 0.194209, 0.744105,
		-0.744504, -0.398697, -0.535494,
		0.192675, -0.896283, 0.399441,
		19.022591, 37.573681, 21.245920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.261608, 37.906525, 21.073879>,  <18.887718, 38.201080, 20.966311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.261608, 37.906525, 21.073879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.500313, 37.702461, 21.321625>,  <18.643536, 37.580025, 21.470272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.500313, 37.702461, 21.321625>,  <18.261608, 37.906525, 21.073879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.500313, 37.702461, 21.321625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673473, 0.101198, 0.732252,
		-0.436245, -0.854105, -0.283188,
		0.596761, -0.510161, 0.619364,
		18.679342, 37.549412, 21.507435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.774130, 37.549633, 21.575071>,  <18.261608, 37.906525, 21.073879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.774130, 37.549633, 21.575071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.127422, 37.520870, 21.760429>,  <18.339397, 37.503613, 21.871643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.127422, 37.520870, 21.760429>,  <17.774130, 37.549633, 21.575071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.127422, 37.520870, 21.760429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458351, 0.076432, 0.885479,
		-0.099093, -0.994478, 0.034547,
		0.883230, -0.071910, 0.463394,
		18.392391, 37.499298, 21.899448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.646452, 37.058445, 22.103460>,  <17.774130, 37.549633, 21.575071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.646452, 37.058445, 22.103460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.968601, 37.275951, 22.197861>,  <18.161890, 37.406456, 22.254501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.968601, 37.275951, 22.197861>,  <17.646452, 37.058445, 22.103460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.968601, 37.275951, 22.197861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388547, 0.183582, 0.902956,
		0.447670, -0.818912, 0.359130,
		0.805371, 0.543765, 0.236002,
		18.210213, 37.439079, 22.268661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.082743, 36.858044, 22.735424>,  <17.646452, 37.058445, 22.103460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.082743, 36.858044, 22.735424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.009472, 37.232552, 22.615528>,  <17.965509, 37.457256, 22.543591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.009472, 37.232552, 22.615528>,  <18.082743, 36.858044, 22.735424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.009472, 37.232552, 22.615528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816875, 0.024677, 0.576286,
		0.546957, 0.350413, 0.760295,
		-0.183176, 0.936270, -0.299741,
		17.954519, 37.513432, 22.525606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148294, 37.355339, 23.331995>,  <18.082743, 36.858044, 22.735424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.148294, 37.355339, 23.331995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.902580, 37.493389, 23.048153>,  <17.755152, 37.576221, 22.877848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.902580, 37.493389, 23.048153>,  <18.148294, 37.355339, 23.331995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.902580, 37.493389, 23.048153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736356, 0.072494, 0.672699,
		0.283609, 0.935752, 0.209605,
		-0.614285, 0.345127, -0.709606,
		17.718294, 37.596928, 22.835272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.862978, 38.136456, 23.497635>,  <18.148294, 37.355339, 23.331995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.862978, 38.136456, 23.497635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.684801, 37.816734, 23.336296>,  <17.577894, 37.624901, 23.239492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.684801, 37.816734, 23.336296>,  <17.862978, 38.136456, 23.497635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.684801, 37.816734, 23.336296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590011, -0.076778, 0.803736,
		-0.673400, 0.595998, -0.437400,
		-0.445443, -0.799307, -0.403348,
		17.551168, 37.576942, 23.215292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.160789, 26.355236, 19.093657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.559483, 26.350697, 19.061672>,  <32.798698, 26.347973, 19.042482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.559483, 26.350697, 19.061672>,  <32.160789, 26.355236, 19.093657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559483, 26.350697, 19.061672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012412, 0.999841, 0.012821,
		0.079802, -0.013771, 0.996716,
		0.996733, -0.011348, -0.079960,
		32.858501, 26.347292, 19.037683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371296, 26.755117, 19.602894>,  <32.160789, 26.355236, 19.093657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371296, 26.755117, 19.602894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639259, 26.760273, 19.305962>,  <32.800037, 26.763367, 19.127802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639259, 26.760273, 19.305962>,  <32.371296, 26.755117, 19.602894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639259, 26.760273, 19.305962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044634, 0.998740, -0.022936,
		0.741101, 0.048498, 0.669640,
		0.669908, 0.012891, -0.742332,
		32.840233, 26.764141, 19.083261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860626, 27.192747, 19.806135>,  <32.371296, 26.755117, 19.602894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860626, 27.192747, 19.806135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.902447, 27.187424, 19.408363>,  <32.927540, 27.184231, 19.169701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.902447, 27.187424, 19.408363>,  <32.860626, 27.192747, 19.806135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902447, 27.187424, 19.408363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128267, 0.991740, 0.000214,
		0.986213, -0.127575, 0.105395,
		0.104552, -0.013307, -0.994430,
		32.933811, 27.183432, 19.110035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485577, 27.563198, 19.700981>,  <32.860626, 27.192747, 19.806135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485577, 27.563198, 19.700981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.259876, 27.553730, 19.370876>,  <33.124454, 27.548050, 19.172813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.259876, 27.553730, 19.370876>,  <33.485577, 27.563198, 19.700981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259876, 27.553730, 19.370876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048210, 0.998828, 0.004316,
		0.824193, 0.042222, -0.564734,
		-0.564254, -0.023669, -0.825262,
		33.090599, 27.546629, 19.123299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651505, 28.158684, 19.521400>,  <33.485577, 27.563198, 19.700981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651505, 28.158684, 19.521400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.368923, 28.068371, 19.253090>,  <33.199375, 28.014183, 19.092104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.368923, 28.068371, 19.253090>,  <33.651505, 28.158684, 19.521400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368923, 28.068371, 19.253090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166876, 0.974168, -0.152151,
		0.687802, 0.004449, -0.725885,
		-0.706456, -0.225782, -0.670777,
		33.156986, 28.000637, 19.051857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716743, 28.593025, 18.957558>,  <33.651505, 28.158684, 19.521400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716743, 28.593025, 18.957558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.337673, 28.468307, 18.930134>,  <33.110233, 28.393476, 18.913679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.337673, 28.468307, 18.930134>,  <33.716743, 28.593025, 18.957558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337673, 28.468307, 18.930134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299678, 0.942860, -0.145627,
		0.110047, -0.117461, -0.986961,
		-0.947672, -0.311797, -0.068559,
		33.053371, 28.374769, 18.909567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470444, 28.770761, 18.368179>,  <33.716743, 28.593025, 18.957558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470444, 28.770761, 18.368179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.137405, 28.746239, 18.588371>,  <32.937584, 28.731525, 18.720486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.137405, 28.746239, 18.588371>,  <33.470444, 28.770761, 18.368179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137405, 28.746239, 18.588371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104575, 0.993380, -0.047537,
		-0.543920, -0.097145, -0.833495,
		-0.832595, -0.061306, 0.550479,
		32.887627, 28.727846, 18.753515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951057, 29.159384, 18.041718>,  <33.470444, 28.770761, 18.368179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951057, 29.159384, 18.041718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.755188, 29.130882, 18.389313>,  <32.637665, 29.113781, 18.597870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.755188, 29.130882, 18.389313>,  <32.951057, 29.159384, 18.041718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755188, 29.130882, 18.389313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222734, 0.973809, -0.045664,
		-0.842975, -0.215914, -0.492720,
		-0.489675, -0.071252, 0.868989,
		32.608284, 29.109507, 18.650009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418285, 29.519024, 17.886484>,  <32.951057, 29.159384, 18.041718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418285, 29.519024, 17.886484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.423920, 29.527485, 18.286354>,  <32.427299, 29.532562, 18.526276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.423920, 29.527485, 18.286354>,  <32.418285, 29.519024, 17.886484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423920, 29.527485, 18.286354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140006, 0.989969, -0.018976,
		-0.990051, -0.139693, 0.016906,
		0.014085, 0.021154, 0.999677,
		32.428146, 29.533831, 18.586258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688631, 29.789104, 18.169792>,  <32.418285, 29.519024, 17.886484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688631, 29.789104, 18.169792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.964846, 29.847885, 18.453075>,  <32.130573, 29.883154, 18.623045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.964846, 29.847885, 18.453075>,  <31.688631, 29.789104, 18.169792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964846, 29.847885, 18.453075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325107, 0.937721, 0.122418,
		-0.646113, -0.314778, 0.695308,
		0.690539, 0.146954, 0.708210,
		32.172009, 29.891972, 18.665539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393835, 30.166338, 18.682032>,  <31.688631, 29.789104, 18.169792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393835, 30.166338, 18.682032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.768236, 30.244930, 18.798851>,  <31.992878, 30.292086, 18.868942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.768236, 30.244930, 18.798851>,  <31.393835, 30.166338, 18.682032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768236, 30.244930, 18.798851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270403, 0.932546, 0.239248,
		-0.225339, -0.302908, 0.925996,
		0.936005, 0.196480, 0.292046,
		32.049038, 30.303875, 18.886465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385204, 30.464298, 19.437756>,  <31.393835, 30.166338, 18.682032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385204, 30.464298, 19.437756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.728941, 30.608421, 19.292587>,  <31.935183, 30.694895, 19.205486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.728941, 30.608421, 19.292587>,  <31.385204, 30.464298, 19.437756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728941, 30.608421, 19.292587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235146, 0.908577, 0.345245,
		0.454134, -0.211345, 0.865503,
		0.859342, 0.360307, -0.362918,
		31.986744, 30.716513, 19.183712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392056, 30.972807, 19.936995>,  <31.385204, 30.464298, 19.437756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392056, 30.972807, 19.936995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.640932, 31.083038, 19.643890>,  <31.790258, 31.149178, 19.468029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.640932, 31.083038, 19.643890>,  <31.392056, 30.972807, 19.936995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640932, 31.083038, 19.643890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138525, 0.959981, 0.243409,
		0.770512, -0.049942, 0.635466,
		0.622192, 0.275578, -0.732758,
		31.827589, 31.165712, 19.424063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665457, 31.467323, 20.232384>,  <31.392056, 30.972807, 19.936995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665457, 31.467323, 20.232384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.732841, 31.526154, 19.842514>,  <31.773273, 31.561453, 19.608593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.732841, 31.526154, 19.842514>,  <31.665457, 31.467323, 20.232384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732841, 31.526154, 19.842514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198256, 0.973654, 0.112657,
		0.965564, 0.174256, 0.193186,
		0.168465, 0.147078, -0.974673,
		31.783381, 31.570276, 19.550112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856358, 32.301334, 20.125114>,  <31.665457, 31.467323, 20.232384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856358, 32.301334, 20.125114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.761766, 32.170605, 19.759106>,  <31.705011, 32.092167, 19.539501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.761766, 32.170605, 19.759106>,  <31.856358, 32.301334, 20.125114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761766, 32.170605, 19.759106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318235, 0.915842, -0.244868,
		0.918047, 0.233291, -0.320570,
		-0.236466, -0.326817, -0.915027,
		31.690823, 32.072559, 19.484600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231926, 32.687359, 19.640070>,  <31.856358, 32.301334, 20.125114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231926, 32.687359, 19.640070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.898596, 32.544586, 19.471230>,  <31.698597, 32.458923, 19.369925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.898596, 32.544586, 19.471230>,  <32.231926, 32.687359, 19.640070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898596, 32.544586, 19.471230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393450, 0.919346, -0.000638,
		0.388285, 0.165544, -0.906548,
		-0.833326, -0.356929, -0.422102,
		31.648598, 32.437508, 19.344599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116455, 33.061729, 19.089140>,  <32.231926, 32.687359, 19.640070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116455, 33.061729, 19.089140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.768961, 32.898441, 19.201317>,  <31.560465, 32.800468, 19.268623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.768961, 32.898441, 19.201317>,  <32.116455, 33.061729, 19.089140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768961, 32.898441, 19.201317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366726, 0.910774, 0.189741,
		-0.332879, 0.061989, -0.940930,
		-0.868737, -0.408224, 0.280444,
		31.508339, 32.775974, 19.285450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617811, 33.551907, 18.813990>,  <32.116455, 33.061729, 19.089140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617811, 33.551907, 18.813990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.370350, 33.341324, 19.047264>,  <31.221872, 33.214973, 19.187229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.370350, 33.341324, 19.047264>,  <31.617811, 33.551907, 18.813990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370350, 33.341324, 19.047264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652469, 0.757773, -0.008085,
		-0.437665, -0.385512, -0.812299,
		-0.618655, -0.526461, 0.583185,
		31.184753, 33.183384, 19.222219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990005, 33.745350, 18.501520>,  <31.617811, 33.551907, 18.813990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990005, 33.745350, 18.501520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.921772, 33.581310, 18.859898>,  <30.880833, 33.482887, 19.074924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.921772, 33.581310, 18.859898>,  <30.990005, 33.745350, 18.501520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921772, 33.581310, 18.859898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627817, 0.746044, 0.221956,
		-0.759439, -0.524628, -0.384730,
		-0.170581, -0.410102, 0.895945,
		30.870598, 33.458279, 19.128681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299383, 33.464622, 18.621378>,  <30.990005, 33.745350, 18.501520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299383, 33.464622, 18.621378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.427433, 33.556160, 18.989105>,  <30.504263, 33.611084, 19.209742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.427433, 33.556160, 18.989105>,  <30.299383, 33.464622, 18.621378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427433, 33.556160, 18.989105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691108, 0.720140, 0.061393,
		-0.647989, -0.655002, 0.388693,
		0.320126, 0.228847, 0.919320,
		30.523470, 33.624813, 19.264900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767136, 33.440880, 19.037294>,  <30.299383, 33.464622, 18.621378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767136, 33.440880, 19.037294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.022299, 33.657753, 19.256058>,  <30.175396, 33.787876, 19.387316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.022299, 33.657753, 19.256058>,  <29.767136, 33.440880, 19.037294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022299, 33.657753, 19.256058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738595, 0.631815, 0.235132,
		-0.218061, -0.553938, 0.803494,
		0.637908, 0.542183, 0.546910,
		30.213671, 33.820408, 19.420132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421780, 33.597576, 19.618883>,  <29.767136, 33.440880, 19.037294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421780, 33.597576, 19.618883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.709095, 33.875008, 19.596924>,  <29.881485, 34.041466, 19.583748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.709095, 33.875008, 19.596924>,  <29.421780, 33.597576, 19.618883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709095, 33.875008, 19.596924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687884, 0.719789, 0.093378,
		0.104280, -0.029309, 0.994116,
		0.718290, 0.693574, -0.054898,
		29.924582, 34.083080, 19.580454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290054, 34.163692, 20.140558>,  <29.421780, 33.597576, 19.618883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290054, 34.163692, 20.140558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.532585, 34.314835, 19.860676>,  <29.678104, 34.405521, 19.692747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.532585, 34.314835, 19.860676>,  <29.290054, 34.163692, 20.140558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532585, 34.314835, 19.860676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472705, 0.878823, 0.064965,
		0.639466, 0.291364, 0.711471,
		0.606328, 0.377858, -0.699706,
		29.714483, 34.428192, 19.650764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622173, 33.837498, 20.068087>,  <29.290054, 34.163692, 20.140558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622173, 33.837498, 20.068087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.281208, 33.633541, 20.114391>,  <28.076628, 33.511166, 20.142174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.281208, 33.633541, 20.114391>,  <28.622173, 33.837498, 20.068087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281208, 33.633541, 20.114391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521018, -0.846925, 0.106106,
		0.043939, 0.150760, 0.987594,
		-0.852414, -0.509892, 0.115761,
		28.025484, 33.480572, 20.149120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782051, 33.410023, 20.615631>,  <28.622173, 33.837498, 20.068087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782051, 33.410023, 20.615631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.486111, 33.237690, 20.408943>,  <28.308546, 33.134289, 20.284931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.486111, 33.237690, 20.408943>,  <28.782051, 33.410023, 20.615631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486111, 33.237690, 20.408943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408765, -0.897897, 0.163379,
		-0.534350, -0.090341, 0.840422,
		-0.739852, -0.430836, -0.516719,
		28.264154, 33.108440, 20.253927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720257, 32.760853, 20.909454>,  <28.782051, 33.410023, 20.615631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720257, 32.760853, 20.909454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.532757, 32.720608, 20.558422>,  <28.420258, 32.696461, 20.347803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.532757, 32.720608, 20.558422>,  <28.720257, 32.760853, 20.909454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532757, 32.720608, 20.558422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404863, -0.907466, -0.112214,
		-0.785086, -0.407901, 0.466108,
		-0.468749, -0.100612, -0.877583,
		28.392132, 32.690426, 20.295147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204763, 32.162262, 20.884649>,  <28.720257, 32.760853, 20.909454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204763, 32.162262, 20.884649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.301094, 32.227020, 20.501862>,  <28.358892, 32.265873, 20.272188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.301094, 32.227020, 20.501862>,  <28.204763, 32.162262, 20.884649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301094, 32.227020, 20.501862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374654, -0.925075, -0.062215,
		-0.895343, -0.343550, -0.283435,
		0.240825, 0.161894, -0.956971,
		28.373341, 32.275589, 20.214769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021669, 31.486528, 20.557129>,  <28.204763, 32.162262, 20.884649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021669, 31.486528, 20.557129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.260944, 31.670353, 20.294533>,  <28.404509, 31.780647, 20.136976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.260944, 31.670353, 20.294533>,  <28.021669, 31.486528, 20.557129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260944, 31.670353, 20.294533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291252, -0.887878, -0.356153,
		-0.746555, 0.021843, -0.664965,
		0.598187, 0.459560, -0.656488,
		28.440401, 31.808222, 20.097586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788494, 31.171406, 19.964792>,  <28.021669, 31.486528, 20.557129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788494, 31.171406, 19.964792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.143402, 31.346733, 19.907341>,  <28.356346, 31.451929, 19.872869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.143402, 31.346733, 19.907341>,  <27.788494, 31.171406, 19.964792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143402, 31.346733, 19.907341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375250, -0.867020, -0.327817,
		-0.268217, 0.236966, -0.933760,
		0.887270, 0.438319, -0.143628,
		28.409582, 31.478230, 19.864252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956457, 31.121599, 19.246269>,  <27.788494, 31.171406, 19.964792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956457, 31.121599, 19.246269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.295626, 31.160110, 19.454792>,  <28.499126, 31.183218, 19.579906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.295626, 31.160110, 19.454792>,  <27.956457, 31.121599, 19.246269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295626, 31.160110, 19.454792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321569, -0.875204, -0.361402,
		0.421455, 0.474076, -0.773064,
		0.847920, 0.096279, 0.521308,
		28.550001, 31.188993, 19.611185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491844, 30.850910, 18.788721>,  <27.956457, 31.121599, 19.246269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491844, 30.850910, 18.788721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.675343, 30.870960, 19.143581>,  <28.785442, 30.882990, 19.356497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.675343, 30.870960, 19.143581>,  <28.491844, 30.850910, 18.788721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675343, 30.870960, 19.143581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561538, -0.790121, -0.245731,
		0.688640, 0.610898, -0.390613,
		0.458748, 0.050124, 0.887151,
		28.812967, 30.885998, 19.409727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198868, 30.605324, 18.708956>,  <28.491844, 30.850910, 18.788721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198868, 30.605324, 18.708956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.118937, 30.560265, 19.098289>,  <29.070978, 30.533228, 19.331890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.118937, 30.560265, 19.098289>,  <29.198868, 30.605324, 18.708956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118937, 30.560265, 19.098289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499327, -0.866411, 0.002239,
		0.843054, 0.486459, 0.229382,
		-0.199828, -0.112649, 0.973334,
		29.058989, 30.526470, 19.390289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792570, 30.493418, 19.071972>,  <29.198868, 30.605324, 18.708956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792570, 30.493418, 19.071972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.516026, 30.342964, 19.318726>,  <29.350100, 30.252693, 19.466778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.516026, 30.342964, 19.318726>,  <29.792570, 30.493418, 19.071972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516026, 30.342964, 19.318726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473935, -0.880541, -0.005738,
		0.545348, 0.288395, 0.787035,
		-0.691361, -0.376133, 0.616882,
		29.308617, 30.230124, 19.503790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158588, 30.183443, 19.703421>,  <29.792570, 30.493418, 19.071972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158588, 30.183443, 19.703421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.796566, 30.013931, 19.689064>,  <29.579353, 29.912224, 19.680450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.796566, 30.013931, 19.689064>,  <30.158588, 30.183443, 19.703421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796566, 30.013931, 19.689064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424848, -0.904748, -0.030575,
		-0.019518, -0.042921, 0.998888,
		-0.905054, -0.423778, -0.035894,
		29.525049, 29.886797, 19.678295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154673, 29.620554, 20.059450>,  <30.158588, 30.183443, 19.703421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154673, 29.620554, 20.059450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.857864, 29.529049, 19.807396>,  <29.679779, 29.474146, 19.656162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.857864, 29.529049, 19.807396>,  <30.154673, 29.620554, 20.059450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857864, 29.529049, 19.807396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192248, -0.973109, 0.126888,
		-0.642219, -0.026989, 0.766046,
		-0.742021, -0.228761, -0.630137,
		29.635258, 29.460421, 19.618355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821939, 29.077236, 20.353451>,  <30.154673, 29.620554, 20.059450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821939, 29.077236, 20.353451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.685793, 29.052376, 19.978157>,  <29.604105, 29.037460, 19.752979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.685793, 29.052376, 19.978157>,  <29.821939, 29.077236, 20.353451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685793, 29.052376, 19.978157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026580, -0.996778, 0.075672,
		-0.939917, 0.050695, 0.337618,
		-0.340366, -0.062152, -0.938237,
		29.583683, 29.033730, 19.696686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392187, 28.511957, 20.440748>,  <29.821939, 29.077236, 20.353451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392187, 28.511957, 20.440748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.510815, 28.540020, 20.059776>,  <29.581991, 28.556858, 19.831194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.510815, 28.540020, 20.059776>,  <29.392187, 28.511957, 20.440748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510815, 28.540020, 20.059776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106616, -0.993496, -0.039985,
		-0.949041, -0.089686, -0.302122,
		0.296571, 0.070158, -0.952430,
		29.599787, 28.561068, 19.774048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015633, 28.007877, 20.161066>,  <29.392187, 28.511957, 20.440748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015633, 28.007877, 20.161066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.296459, 28.081036, 19.885777>,  <29.464954, 28.124931, 19.720602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.296459, 28.081036, 19.885777>,  <29.015633, 28.007877, 20.161066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296459, 28.081036, 19.885777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176732, -0.980969, -0.080409,
		-0.689834, -0.065179, -0.721028,
		0.702065, 0.182898, -0.688225,
		29.507078, 28.135904, 19.679310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990833, 27.411732, 19.630558>,  <29.015633, 28.007877, 20.161066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990833, 27.411732, 19.630558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.355177, 27.574810, 19.604881>,  <29.573782, 27.672657, 19.589476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.355177, 27.574810, 19.604881>,  <28.990833, 27.411732, 19.630558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355177, 27.574810, 19.604881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402523, -0.911903, -0.080054,
		-0.091173, 0.047080, -0.994722,
		0.910858, 0.407697, -0.064190,
		29.628435, 27.697119, 19.585625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308306, 27.098743, 19.102867>,  <28.990833, 27.411732, 19.630558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308306, 27.098743, 19.102867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.612347, 27.232044, 19.326004>,  <29.794771, 27.312025, 19.459887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.612347, 27.232044, 19.326004>,  <29.308306, 27.098743, 19.102867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612347, 27.232044, 19.326004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385489, -0.922353, 0.025749,
		0.523110, 0.195471, -0.829546,
		0.760101, 0.333251, 0.557844,
		29.840378, 27.332020, 19.493357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.333727, 26.791876, 18.518234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.367361, 26.897270, 18.902630>,  <30.387543, 26.960506, 19.133268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.367361, 26.897270, 18.902630>,  <30.333727, 26.791876, 18.518234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367361, 26.897270, 18.902630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521979, -0.833148, 0.182761,
		0.848803, 0.486250, -0.207591,
		0.084087, 0.263487, 0.960991,
		30.392588, 26.976316, 19.190928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035662, 26.754253, 18.752695>,  <30.333727, 26.791876, 18.518234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035662, 26.754253, 18.752695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.853073, 26.745968, 19.108494>,  <30.743519, 26.740995, 19.321974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.853073, 26.745968, 19.108494>,  <31.035662, 26.754253, 18.752695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853073, 26.745968, 19.108494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455712, -0.864084, 0.213739,
		0.764172, 0.502920, 0.403871,
		-0.456473, -0.020716, 0.889496,
		30.716131, 26.739754, 19.375343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547434, 26.680300, 19.409033>,  <31.035662, 26.754253, 18.752695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547434, 26.680300, 19.409033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.181257, 26.551186, 19.505180>,  <30.961552, 26.473717, 19.562868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.181257, 26.551186, 19.505180>,  <31.547434, 26.680300, 19.409033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181257, 26.551186, 19.505180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382348, -0.883963, 0.269107,
		0.125613, 0.338257, 0.932633,
		-0.915440, -0.322787, 0.240369,
		30.906626, 26.454350, 19.577291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577902, 26.321957, 19.985325>,  <31.547434, 26.680300, 19.409033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577902, 26.321957, 19.985325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230062, 26.174316, 19.854137>,  <31.021358, 26.085732, 19.775425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230062, 26.174316, 19.854137>,  <31.577902, 26.321957, 19.985325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230062, 26.174316, 19.854137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347486, -0.929372, 0.124583,
		-0.350791, -0.005628, 0.936437,
		-0.869597, -0.369101, -0.327971,
		30.969183, 26.063585, 19.755747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506195, 25.701630, 20.388968>,  <31.577902, 26.321957, 19.985325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506195, 25.701630, 20.388968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.248249, 25.684559, 20.083725>,  <31.093481, 25.674316, 19.900579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.248249, 25.684559, 20.083725>,  <31.506195, 25.701630, 20.388968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248249, 25.684559, 20.083725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130140, -0.989990, -0.054611,
		-0.753135, -0.134527, 0.643964,
		-0.644865, -0.042676, -0.763104,
		31.054790, 25.671757, 19.854794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989014, 25.171911, 20.556501>,  <31.506195, 25.701630, 20.388968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989014, 25.171911, 20.556501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.986780, 25.223072, 20.159794>,  <30.985439, 25.253769, 19.921768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.986780, 25.223072, 20.159794>,  <30.989014, 25.171911, 20.556501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986780, 25.223072, 20.159794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092987, -0.987423, -0.127866,
		-0.995652, -0.092936, -0.006378,
		-0.005586, 0.127903, -0.991771,
		30.985104, 25.261442, 19.862263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374208, 24.689497, 20.177629>,  <30.989014, 25.171911, 20.556501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374208, 24.689497, 20.177629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640253, 24.773460, 19.890976>,  <30.799879, 24.823839, 19.718983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640253, 24.773460, 19.890976>,  <30.374208, 24.689497, 20.177629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640253, 24.773460, 19.890976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090146, -0.930090, -0.356098,
		-0.741284, 0.301447, -0.599690,
		0.665110, 0.209910, -0.716636,
		30.839787, 24.836433, 19.675985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099295, 24.454035, 19.515511>,  <30.374208, 24.689497, 20.177629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099295, 24.454035, 19.515511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.498573, 24.459248, 19.492058>,  <30.738140, 24.462376, 19.477985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.498573, 24.459248, 19.492058>,  <30.099295, 24.454035, 19.515511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498573, 24.459248, 19.492058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015429, -0.887778, -0.460012,
		-0.058047, 0.460086, -0.885975,
		0.998195, 0.013033, -0.058631,
		30.798031, 24.463158, 19.474468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160841, 24.134705, 18.943968>,  <30.099295, 24.454035, 19.515511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160841, 24.134705, 18.943968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.540472, 24.135052, 19.069984>,  <30.768251, 24.135260, 19.145596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.540472, 24.135052, 19.069984>,  <30.160841, 24.134705, 18.943968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540472, 24.135052, 19.069984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103287, -0.945581, -0.308557,
		0.297632, 0.325384, -0.897519,
		0.949077, 0.000866, 0.315043,
		30.825195, 24.135311, 19.164497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608934, 23.962996, 18.370735>,  <30.160841, 24.134705, 18.943968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608934, 23.962996, 18.370735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.812752, 23.874073, 18.703228>,  <30.935041, 23.820719, 18.902723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.812752, 23.874073, 18.703228>,  <30.608934, 23.962996, 18.370735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812752, 23.874073, 18.703228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098372, -0.944663, -0.312945,
		0.854803, 0.241229, -0.459478,
		0.509543, -0.222307, 0.831231,
		30.965614, 23.807381, 18.952597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145403, 23.542778, 18.100153>,  <30.608934, 23.962996, 18.370735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145403, 23.542778, 18.100153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158703, 23.474380, 18.494038>,  <31.166683, 23.433342, 18.730368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158703, 23.474380, 18.494038>,  <31.145403, 23.542778, 18.100153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158703, 23.474380, 18.494038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308006, -0.935549, -0.172856,
		0.950803, 0.309045, 0.021559,
		0.033251, -0.170992, 0.984711,
		31.168678, 23.423082, 18.789452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813124, 23.193085, 18.325272>,  <31.145403, 23.542778, 18.100153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813124, 23.193085, 18.325272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.545227, 23.108299, 18.609951>,  <31.384489, 23.057428, 18.780760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.545227, 23.108299, 18.609951>,  <31.813124, 23.193085, 18.325272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545227, 23.108299, 18.609951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208804, -0.973484, -0.093437,
		0.712633, 0.086027, 0.696242,
		-0.669743, -0.211964, 0.711699,
		31.344305, 23.044710, 18.823462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165161, 22.691645, 18.875776>,  <31.813124, 23.193085, 18.325272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165161, 22.691645, 18.875776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.767393, 22.675755, 18.914856>,  <31.528732, 22.666222, 18.938303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.767393, 22.675755, 18.914856>,  <32.165161, 22.691645, 18.875776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767393, 22.675755, 18.914856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017238, -0.975118, -0.221015,
		0.104047, -0.218099, 0.970364,
		-0.994423, -0.039723, 0.097698,
		31.469067, 22.663837, 18.944166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987875, 22.162243, 19.376457>,  <32.165161, 22.691645, 18.875776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987875, 22.162243, 19.376457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653393, 22.219852, 19.164791>,  <31.452703, 22.254417, 19.037790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653393, 22.219852, 19.164791>,  <31.987875, 22.162243, 19.376457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653393, 22.219852, 19.164791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185788, -0.982239, 0.026252,
		-0.515988, 0.120264, 0.848112,
		-0.836206, 0.144023, -0.529167,
		31.402531, 22.263060, 19.006041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646441, 21.700760, 19.694613>,  <31.987875, 22.162243, 19.376457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646441, 21.700760, 19.694613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.444023, 21.768456, 19.356316>,  <31.322573, 21.809072, 19.153337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.444023, 21.768456, 19.356316>,  <31.646441, 21.700760, 19.694613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444023, 21.768456, 19.356316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401225, -0.914196, 0.057134,
		-0.763504, 0.368245, 0.530527,
		-0.506045, 0.169239, -0.845741,
		31.292210, 21.819227, 19.102594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946648, 21.489794, 19.833424>,  <31.646441, 21.700760, 19.694613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946648, 21.489794, 19.833424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.016830, 21.485889, 19.439648>,  <31.058941, 21.483547, 19.203382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.016830, 21.485889, 19.439648>,  <30.946648, 21.489794, 19.833424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016830, 21.485889, 19.439648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301748, -0.952356, -0.044340,
		-0.937104, 0.304833, -0.170042,
		0.175457, -0.009759, -0.984439,
		31.069468, 21.482962, 19.144316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429880, 21.116653, 19.509815>,  <30.946648, 21.489794, 19.833424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429880, 21.116653, 19.509815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.679230, 21.114311, 19.197056>,  <30.828840, 21.112906, 19.009399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.679230, 21.114311, 19.197056>,  <30.429880, 21.116653, 19.509815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679230, 21.114311, 19.197056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247086, -0.950209, -0.189874,
		-0.741856, 0.311559, -0.593785,
		0.623376, -0.005856, -0.781900,
		30.866243, 21.112555, 18.962486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138685, 20.743399, 19.057732>,  <30.429880, 21.116653, 19.509815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138685, 20.743399, 19.057732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.523417, 20.731598, 18.948906>,  <30.754255, 20.724518, 18.883610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.523417, 20.731598, 18.948906>,  <30.138685, 20.743399, 19.057732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523417, 20.731598, 18.948906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091504, -0.971621, -0.218130,
		-0.257910, 0.234698, -0.937230,
		0.961826, -0.029502, -0.272066,
		30.811964, 20.722748, 18.867287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159231, 20.275724, 18.414162>,  <30.138685, 20.743399, 19.057732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159231, 20.275724, 18.414162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.537935, 20.307381, 18.538986>,  <30.765158, 20.326374, 18.613880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.537935, 20.307381, 18.538986>,  <30.159231, 20.275724, 18.414162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537935, 20.307381, 18.538986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115143, -0.988438, -0.098652,
		0.300644, 0.129331, -0.944927,
		0.946760, 0.079142, 0.312059,
		30.821964, 20.331123, 18.632605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560980, 19.742237, 18.106649>,  <30.159231, 20.275724, 18.414162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560980, 19.742237, 18.106649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.768921, 19.837612, 18.434772>,  <30.893684, 19.894836, 18.631645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.768921, 19.837612, 18.434772>,  <30.560980, 19.742237, 18.106649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768921, 19.837612, 18.434772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083117, -0.969819, 0.229223,
		0.850204, -0.050981, -0.523979,
		0.519851, 0.238438, 0.820306,
		30.924877, 19.909143, 18.680864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113514, 19.334446, 18.117537>,  <30.560980, 19.742237, 18.106649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113514, 19.334446, 18.117537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077553, 19.448463, 18.499252>,  <31.055977, 19.516874, 18.728281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077553, 19.448463, 18.499252>,  <31.113514, 19.334446, 18.117537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077553, 19.448463, 18.499252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249732, -0.921106, 0.298661,
		0.964132, 0.265167, 0.011626,
		-0.089903, 0.285046, 0.954288,
		31.050581, 19.533978, 18.785540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679117, 19.144451, 18.565247>,  <31.113514, 19.334446, 18.117537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679117, 19.144451, 18.565247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.387144, 19.202374, 18.832447>,  <31.211960, 19.237127, 18.992767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.387144, 19.202374, 18.832447>,  <31.679117, 19.144451, 18.565247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387144, 19.202374, 18.832447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199028, -0.889925, 0.410392,
		0.653898, 0.432510, 0.620767,
		-0.729935, 0.144805, 0.668002,
		31.168163, 19.245815, 19.032848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898958, 18.820993, 19.201601>,  <31.679117, 19.144451, 18.565247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898958, 18.820993, 19.201601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500572, 18.856586, 19.206207>,  <31.261539, 18.877943, 19.208971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500572, 18.856586, 19.206207>,  <31.898958, 18.820993, 19.201601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500572, 18.856586, 19.206207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084112, -0.970609, 0.225485,
		0.031241, 0.223607, 0.974178,
		-0.995966, 0.088984, 0.011515,
		31.201782, 18.883282, 19.209661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339249, 19.208664, 19.790653>,  <31.898958, 18.820993, 19.201601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339249, 19.208664, 19.790653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.550774, 19.112602, 20.116276>,  <32.677689, 19.054966, 20.311649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.550774, 19.112602, 20.116276>,  <32.339249, 19.208664, 19.790653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550774, 19.112602, 20.116276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688555, 0.682170, -0.246040,
		-0.496238, 0.690631, 0.526097,
		0.528810, -0.240152, 0.814056,
		32.709415, 19.040556, 20.360493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409027, 19.699961, 20.420938>,  <32.339249, 19.208664, 19.790653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409027, 19.699961, 20.420938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.729980, 19.474064, 20.343746>,  <32.922554, 19.338526, 20.297432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.729980, 19.474064, 20.343746>,  <32.409027, 19.699961, 20.420938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729980, 19.474064, 20.343746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520351, 0.820356, -0.237172,
		0.292252, 0.089887, 0.952108,
		0.802386, -0.564744, -0.192978,
		32.970695, 19.304640, 20.285852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009686, 19.869761, 20.822880>,  <32.409027, 19.699961, 20.420938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009686, 19.869761, 20.822880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.163990, 19.700523, 20.494934>,  <33.256573, 19.598980, 20.298166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.163990, 19.700523, 20.494934>,  <33.009686, 19.869761, 20.822880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163990, 19.700523, 20.494934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640608, 0.762338, -0.091988,
		0.663934, -0.489726, 0.565119,
		0.385763, -0.423094, -0.819865,
		33.279720, 19.573595, 20.248974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648964, 20.085249, 20.930756>,  <33.009686, 19.869761, 20.822880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648964, 20.085249, 20.930756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.624271, 19.989670, 20.543129>,  <33.609455, 19.932322, 20.310553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.624271, 19.989670, 20.543129>,  <33.648964, 20.085249, 20.930756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624271, 19.989670, 20.543129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432983, 0.868392, -0.241706,
		0.899286, -0.434511, 0.049852,
		-0.061733, -0.238948, -0.969068,
		33.605751, 19.917986, 20.252409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204430, 19.979362, 20.689507>,  <33.648964, 20.085249, 20.930756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204430, 19.979362, 20.689507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.035511, 20.036682, 20.331482>,  <33.934162, 20.071074, 20.116667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.035511, 20.036682, 20.331482>,  <34.204430, 19.979362, 20.689507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035511, 20.036682, 20.331482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510702, 0.853406, -0.104319,
		0.748901, -0.501162, -0.433571,
		-0.422293, 0.143301, -0.895061,
		33.908825, 20.079672, 20.062963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715416, 20.309610, 20.288511>,  <34.204430, 19.979362, 20.689507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715416, 20.309610, 20.288511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.379921, 20.367901, 20.078640>,  <34.178623, 20.402876, 19.952717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.379921, 20.367901, 20.078640>,  <34.715416, 20.309610, 20.288511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379921, 20.367901, 20.078640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305187, 0.923779, -0.231288,
		0.450979, -0.354114, -0.819281,
		-0.838736, 0.145728, -0.524676,
		34.128300, 20.411619, 19.921238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889767, 20.483690, 19.534632>,  <34.715416, 20.309610, 20.288511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889767, 20.483690, 19.534632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.522446, 20.614353, 19.624088>,  <34.302052, 20.692751, 19.677763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.522446, 20.614353, 19.624088>,  <34.889767, 20.483690, 19.534632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522446, 20.614353, 19.624088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234044, 0.903597, -0.358798,
		-0.319287, -0.277143, -0.906227,
		-0.918302, 0.326657, 0.223643,
		34.246956, 20.712351, 19.691181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716309, 20.914204, 18.933937>,  <34.889767, 20.483690, 19.534632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716309, 20.914204, 18.933937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456436, 21.017956, 19.219772>,  <34.300514, 21.080208, 19.391273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456436, 21.017956, 19.219772>,  <34.716309, 20.914204, 18.933937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456436, 21.017956, 19.219772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212623, 0.964475, -0.156777,
		-0.729870, 0.050084, -0.681749,
		-0.649678, 0.259382, 0.714591,
		34.261532, 21.095770, 19.434149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221859, 21.265564, 18.648046>,  <34.716309, 20.914204, 18.933937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221859, 21.265564, 18.648046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195339, 21.369762, 19.033325>,  <34.179428, 21.432281, 19.264492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195339, 21.369762, 19.033325>,  <34.221859, 21.265564, 18.648046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195339, 21.369762, 19.033325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034329, 0.965344, -0.258712,
		-0.997209, 0.015912, -0.072948,
		-0.066303, 0.260494, 0.963196,
		34.175449, 21.447910, 19.322285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802174, 21.828417, 18.670565>,  <34.221859, 21.265564, 18.648046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802174, 21.828417, 18.670565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.972549, 21.878082, 19.029041>,  <34.074776, 21.907881, 19.244127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.972549, 21.878082, 19.029041>,  <33.802174, 21.828417, 18.670565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972549, 21.878082, 19.029041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298207, 0.954454, 0.009497,
		-0.854195, -0.271295, 0.443565,
		0.425939, 0.124162, 0.896192,
		34.100330, 21.915331, 19.297899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335964, 22.002180, 19.116383>,  <33.802174, 21.828417, 18.670565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335964, 22.002180, 19.116383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674255, 22.145481, 19.274574>,  <33.877228, 22.231462, 19.369490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674255, 22.145481, 19.274574>,  <33.335964, 22.002180, 19.116383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674255, 22.145481, 19.274574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395914, 0.918167, 0.014909,
		-0.357775, -0.169185, 0.918354,
		0.845724, 0.358254, 0.395480,
		33.927971, 22.252958, 19.393219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273476, 22.327227, 19.909489>,  <33.335964, 22.002180, 19.116383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273476, 22.327227, 19.909489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593723, 22.490631, 19.734158>,  <33.785873, 22.588673, 19.628960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593723, 22.490631, 19.734158>,  <33.273476, 22.327227, 19.909489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593723, 22.490631, 19.734158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377060, 0.912038, 0.161285,
		0.465658, 0.036148, 0.884227,
		0.800618, 0.408510, -0.438327,
		33.833908, 22.613184, 19.602659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242268, 22.944798, 20.160564>,  <33.273476, 22.327227, 19.909489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242268, 22.944798, 20.160564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.534424, 22.977726, 19.889343>,  <33.709717, 22.997484, 19.726610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.534424, 22.977726, 19.889343>,  <33.242268, 22.944798, 20.160564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534424, 22.977726, 19.889343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064679, 0.996585, 0.051323,
		0.679964, 0.006370, 0.733218,
		0.730387, 0.082322, -0.678054,
		33.753540, 23.002422, 19.685926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799843, 23.464937, 20.405720>,  <33.242268, 22.944798, 20.160564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799843, 23.464937, 20.405720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814499, 23.438751, 20.006847>,  <33.823292, 23.423040, 19.767523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814499, 23.438751, 20.006847>,  <33.799843, 23.464937, 20.405720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814499, 23.438751, 20.006847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044419, 0.996759, -0.067067,
		0.998341, 0.046751, 0.033616,
		0.036642, -0.065463, -0.997182,
		33.825493, 23.419113, 19.707693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023430, 24.098965, 20.223951>,  <33.799843, 23.464937, 20.405720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023430, 24.098965, 20.223951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915699, 23.933834, 19.875919>,  <33.851063, 23.834755, 19.667101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915699, 23.933834, 19.875919>,  <34.023430, 24.098965, 20.223951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915699, 23.933834, 19.875919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074917, 0.909705, -0.408440,
		0.960131, -0.044819, -0.275934,
		-0.269324, -0.412828, -0.870079,
		33.834900, 23.809986, 19.614895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319626, 24.557997, 19.706635>,  <34.023430, 24.098965, 20.223951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319626, 24.557997, 19.706635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.037113, 24.356518, 19.507656>,  <33.867603, 24.235630, 19.388268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.037113, 24.356518, 19.507656>,  <34.319626, 24.557997, 19.706635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037113, 24.356518, 19.507656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363062, 0.860956, -0.356288,
		0.607742, -0.071036, -0.790952,
		-0.706284, -0.503695, -0.497448,
		33.825230, 24.205410, 19.358421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444763, 24.792444, 19.088625>,  <34.319626, 24.557997, 19.706635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444763, 24.792444, 19.088625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069202, 24.655079, 19.097870>,  <33.843868, 24.572660, 19.103416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069202, 24.655079, 19.097870>,  <34.444763, 24.792444, 19.088625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069202, 24.655079, 19.097870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322150, 0.853152, -0.410306,
		0.121185, -0.392682, -0.911655,
		-0.938900, -0.343413, 0.023114,
		33.787533, 24.552055, 19.104803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174736, 24.920658, 18.480705>,  <34.444763, 24.792444, 19.088625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174736, 24.920658, 18.480705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.846672, 24.903858, 18.708942>,  <33.649834, 24.893778, 18.845884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.846672, 24.903858, 18.708942>,  <34.174736, 24.920658, 18.480705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846672, 24.903858, 18.708942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270106, 0.907591, -0.321437,
		-0.504364, -0.417750, -0.755713,
		-0.820158, -0.042002, 0.570593,
		33.600624, 24.891258, 18.880119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606075, 25.305414, 18.058149>,  <34.174736, 24.920658, 18.480705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606075, 25.305414, 18.058149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.447823, 25.277592, 18.424458>,  <33.352871, 25.260899, 18.644243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.447823, 25.277592, 18.424458>,  <33.606075, 25.305414, 18.058149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447823, 25.277592, 18.424458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493458, 0.857070, -0.148085,
		-0.774581, -0.510482, -0.373406,
		-0.395630, -0.069557, 0.915772,
		33.329132, 25.256725, 18.699190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895859, 25.484381, 18.060419>,  <33.606075, 25.305414, 18.058149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895859, 25.484381, 18.060419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.993076, 25.516090, 18.447128>,  <33.051407, 25.535116, 18.679153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.993076, 25.516090, 18.447128>,  <32.895859, 25.484381, 18.060419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993076, 25.516090, 18.447128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373739, 0.927361, 0.017917,
		-0.895125, -0.365674, 0.255016,
		0.243044, 0.079272, 0.966771,
		33.065990, 25.539871, 18.737160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323940, 25.822578, 18.241619>,  <32.895859, 25.484381, 18.060419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323940, 25.822578, 18.241619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639027, 25.864143, 18.484505>,  <32.828079, 25.889082, 18.630236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639027, 25.864143, 18.484505>,  <32.323940, 25.822578, 18.241619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639027, 25.864143, 18.484505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265287, 0.946814, 0.182115,
		-0.555993, -0.304540, 0.773387,
		0.787715, 0.103914, 0.607212,
		32.875340, 25.895317, 18.666668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.711828, 39.803352, 19.550924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.872723, 39.465286, 19.691723>,  <26.969259, 39.262447, 19.776201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.872723, 39.465286, 19.691723>,  <26.711828, 39.803352, 19.550924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872723, 39.465286, 19.691723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712122, -0.047184, 0.700468,
		-0.575403, -0.532417, -0.620841,
		0.402234, -0.845166, 0.351996,
		26.993393, 39.211735, 19.797321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123446, 39.365696, 19.786224>,  <26.711828, 39.803352, 19.550924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123446, 39.365696, 19.786224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.451759, 39.221081, 19.963131>,  <26.648748, 39.134312, 20.069275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.451759, 39.221081, 19.963131>,  <26.123446, 39.365696, 19.786224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451759, 39.221081, 19.963131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514077, -0.129920, 0.847847,
		-0.249070, -0.923261, -0.292495,
		0.820785, -0.361539, 0.442268,
		26.697994, 39.112617, 20.095812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958321, 38.666805, 20.007183>,  <26.123446, 39.365696, 19.786224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958321, 38.666805, 20.007183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.247688, 38.806744, 20.245266>,  <26.421309, 38.890709, 20.388115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.247688, 38.806744, 20.245266>,  <25.958321, 38.666805, 20.007183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247688, 38.806744, 20.245266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551506, -0.225806, 0.803027,
		0.415339, -0.909185, 0.029591,
		0.723419, 0.349848, 0.595208,
		26.464714, 38.911697, 20.423828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215549, 38.070267, 20.544758>,  <25.958321, 38.666805, 20.007183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215549, 38.070267, 20.544758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.307558, 38.431805, 20.689064>,  <26.362762, 38.648727, 20.775648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.307558, 38.431805, 20.689064>,  <26.215549, 38.070267, 20.544758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307558, 38.431805, 20.689064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465680, -0.223287, 0.856321,
		0.854537, -0.364973, 0.369543,
		0.230020, 0.903846, 0.360768,
		26.376564, 38.702957, 20.797295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428022, 37.944824, 21.182302>,  <26.215549, 38.070267, 20.544758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428022, 37.944824, 21.182302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.326447, 38.331024, 21.159260>,  <26.265501, 38.562744, 21.145433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.326447, 38.331024, 21.159260>,  <26.428022, 37.944824, 21.182302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326447, 38.331024, 21.159260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684901, -0.137442, 0.715556,
		0.682954, 0.221162, 0.696176,
		-0.253938, 0.965503, -0.057608,
		26.250265, 38.620674, 21.141977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270704, 38.134403, 21.871845>,  <26.428022, 37.944824, 21.182302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270704, 38.134403, 21.871845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.101091, 38.419266, 21.648048>,  <25.999325, 38.590183, 21.513771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.101091, 38.419266, 21.648048>,  <26.270704, 38.134403, 21.871845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101091, 38.419266, 21.648048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841907, -0.082303, 0.533309,
		0.333751, 0.697179, 0.634469,
		-0.424031, 0.712157, -0.559491,
		25.973883, 38.632912, 21.480202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758484, 38.396511, 22.308861>,  <26.270704, 38.134403, 21.871845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758484, 38.396511, 22.308861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.642052, 38.544266, 21.955856>,  <25.572193, 38.632919, 21.744053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.642052, 38.544266, 21.955856>,  <25.758484, 38.396511, 22.308861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642052, 38.544266, 21.955856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948929, -0.228803, 0.217219,
		-0.121684, 0.900669, 0.417120,
		-0.291080, 0.369385, -0.882511,
		25.554728, 38.655083, 21.691103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.091549, 38.883289, 22.490360>,  <25.758484, 38.396511, 22.308861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.091549, 38.883289, 22.490360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.095755, 38.763016, 22.108894>,  <25.098278, 38.690853, 21.880014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.095755, 38.763016, 22.108894>,  <25.091549, 38.883289, 22.490360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095755, 38.763016, 22.108894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981982, -0.183065, 0.046893,
		-0.188683, 0.935989, -0.297191,
		0.010514, -0.300684, -0.953666,
		25.098909, 38.672810, 21.822794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.672272, 39.366165, 22.112169>,  <25.091549, 38.883289, 22.490360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.672272, 39.366165, 22.112169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.688717, 39.028408, 21.898510>,  <24.698584, 38.825752, 21.770315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.688717, 39.028408, 21.898510>,  <24.672272, 39.366165, 22.112169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.688717, 39.028408, 21.898510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971161, -0.159429, 0.177280,
		-0.234852, 0.511455, -0.826594,
		0.041112, -0.844391, -0.534148,
		24.701050, 38.775089, 21.738266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.135000, 39.409248, 21.594051>,  <24.672272, 39.366165, 22.112169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.135000, 39.409248, 21.594051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.204361, 39.015472, 21.605423>,  <24.245977, 38.779205, 21.612246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.204361, 39.015472, 21.605423>,  <24.135000, 39.409248, 21.594051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.204361, 39.015472, 21.605423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977762, -0.168623, 0.124690,
		-0.117956, -0.049417, -0.991788,
		0.173400, -0.984441, 0.028428,
		24.256382, 38.720139, 21.613951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.502270, 39.009438, 21.219482>,  <24.135000, 39.409248, 21.594051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.502270, 39.009438, 21.219482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.700766, 38.736069, 21.433651>,  <23.819862, 38.572048, 21.562153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.700766, 38.736069, 21.433651>,  <23.502270, 39.009438, 21.219482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.700766, 38.736069, 21.433651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866388, -0.350153, 0.356039,
		-0.055846, -0.640565, -0.765871,
		0.496238, -0.683425, 0.535423,
		23.849636, 38.531040, 21.594278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.117651, 38.412701, 20.991524>,  <23.502270, 39.009438, 21.219482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.117651, 38.412701, 20.991524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.318466, 38.237377, 21.289745>,  <23.438955, 38.132183, 21.468678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.318466, 38.237377, 21.289745>,  <23.117651, 38.412701, 20.991524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.318466, 38.237377, 21.289745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795977, -0.571285, 0.200137,
		0.338201, -0.693918, -0.635686,
		0.502037, -0.438305, 0.745552,
		23.469078, 38.105885, 21.513411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.097019, 37.713863, 20.881859>,  <23.117651, 38.412701, 20.991524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.097019, 37.713863, 20.881859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.140305, 37.757118, 21.277149>,  <23.166277, 37.783073, 21.514324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.140305, 37.757118, 21.277149>,  <23.097019, 37.713863, 20.881859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.140305, 37.757118, 21.277149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854599, -0.497736, 0.148049,
		0.507887, -0.860560, 0.038556,
		0.108214, 0.108142, 0.988228,
		23.172770, 37.789562, 21.573618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.984856, 37.067520, 21.117275>,  <23.097019, 37.713863, 20.881859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.984856, 37.067520, 21.117275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.924879, 37.309086, 21.430401>,  <22.888893, 37.454025, 21.618277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.924879, 37.309086, 21.430401>,  <22.984856, 37.067520, 21.117275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.924879, 37.309086, 21.430401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781756, -0.557146, 0.280083,
		0.605290, -0.569975, 0.555655,
		-0.149940, 0.603918, 0.782816,
		22.879896, 37.490261, 21.665245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.826960, 36.585724, 21.628550>,  <22.984856, 37.067520, 21.117275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.826960, 36.585724, 21.628550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.693766, 36.932411, 21.777103>,  <22.613850, 37.140423, 21.866236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.693766, 36.932411, 21.777103>,  <22.826960, 36.585724, 21.628550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.693766, 36.932411, 21.777103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779041, -0.474769, 0.409498,
		0.531240, -0.152968, 0.833297,
		-0.332983, 0.866715, 0.371385,
		22.593870, 37.192425, 21.888519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.792664, 36.458130, 22.304514>,  <22.826960, 36.585724, 21.628550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.792664, 36.458130, 22.304514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.549072, 36.760155, 22.207333>,  <22.402918, 36.941368, 22.149025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.549072, 36.760155, 22.207333>,  <22.792664, 36.458130, 22.304514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.549072, 36.760155, 22.207333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744756, -0.438927, 0.502675,
		0.272913, 0.487058, 0.829634,
		-0.608981, 0.755061, -0.242951,
		22.366379, 36.986671, 22.134447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.478142, 36.634743, 22.942192>,  <22.792664, 36.458130, 22.304514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.478142, 36.634743, 22.942192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.240318, 36.748138, 22.641224>,  <22.097624, 36.816174, 22.460644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.240318, 36.748138, 22.641224>,  <22.478142, 36.634743, 22.942192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.240318, 36.748138, 22.641224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752449, -0.526012, 0.396398,
		-0.283407, 0.801839, 0.526055,
		-0.594559, 0.283488, -0.752419,
		22.061951, 36.833183, 22.415499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.923916, 36.640472, 23.269766>,  <22.478142, 36.634743, 22.942192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.923916, 36.640472, 23.269766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.824284, 36.651646, 22.882534>,  <21.764505, 36.658348, 22.650194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.824284, 36.651646, 22.882534>,  <21.923916, 36.640472, 23.269766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.824284, 36.651646, 22.882534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834389, -0.513664, 0.199863,
		-0.491686, 0.857537, 0.151247,
		-0.249080, 0.027929, -0.968080,
		21.749559, 36.660023, 22.592110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.212416, 36.783340, 23.383671>,  <21.923916, 36.640472, 23.269766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.212416, 36.783340, 23.383671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.288540, 36.633099, 23.020859>,  <21.334215, 36.542953, 22.803171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.288540, 36.633099, 23.020859>,  <21.212416, 36.783340, 23.383671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.288540, 36.633099, 23.020859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792274, -0.604351, 0.084031,
		-0.579726, 0.702623, -0.412600,
		0.190313, -0.375607, -0.907028,
		21.345634, 36.520416, 22.748751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.648706, 36.812527, 23.111517>,  <21.212416, 36.783340, 23.383671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.648706, 36.812527, 23.111517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.844711, 36.548752, 22.883469>,  <20.962315, 36.390488, 22.746639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.844711, 36.548752, 22.883469>,  <20.648706, 36.812527, 23.111517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.844711, 36.548752, 22.883469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714177, -0.678705, 0.171202,
		-0.499839, 0.323275, -0.803526,
		0.490012, -0.659433, -0.570119,
		20.991714, 36.350922, 22.712433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.135378, 36.644268, 22.753674>,  <20.648706, 36.812527, 23.111517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.135378, 36.644268, 22.753674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.416601, 36.360020, 22.742931>,  <20.585335, 36.189468, 22.736486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.416601, 36.360020, 22.742931>,  <20.135378, 36.644268, 22.753674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.416601, 36.360020, 22.742931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685213, -0.687055, 0.241740,
		-0.190238, -0.151555, -0.969969,
		0.703059, -0.710624, -0.026857,
		20.627520, 36.146832, 22.734875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.481525, 36.767242, 22.226551>,  <20.135378, 36.644268, 22.753674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.481525, 36.767242, 22.226551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.218927, 36.995274, 22.028954>,  <19.061369, 37.132092, 21.910395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.218927, 36.995274, 22.028954>,  <19.481525, 36.767242, 22.226551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.218927, 36.995274, 22.028954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362739, -0.335608, -0.869360,
		-0.661391, -0.749919, 0.013535,
		-0.656493, 0.570077, -0.493993,
		19.021980, 37.166298, 21.880756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.311909, 36.363323, 21.675249>,  <19.481525, 36.767242, 22.226551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.311909, 36.363323, 21.675249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.210764, 36.733578, 21.562637>,  <19.150078, 36.955730, 21.495070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.210764, 36.733578, 21.562637>,  <19.311909, 36.363323, 21.675249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.210764, 36.733578, 21.562637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378982, -0.172969, -0.909095,
		-0.890187, -0.336570, -0.307062,
		-0.252861, 0.925636, -0.281529,
		19.134905, 37.011269, 21.478178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.828154, 36.329536, 21.083406>,  <19.311909, 36.363323, 21.675249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.828154, 36.329536, 21.083406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.014162, 36.683575, 21.075809>,  <19.125767, 36.895996, 21.071251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.014162, 36.683575, 21.075809>,  <18.828154, 36.329536, 21.083406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.014162, 36.683575, 21.075809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275388, -0.165008, -0.947066,
		-0.841378, 0.435174, -0.320477,
		0.465020, 0.885096, -0.018992,
		19.153667, 36.949104, 21.070112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.870802, 36.417202, 20.433567>,  <18.828154, 36.329536, 21.083406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.870802, 36.417202, 20.433567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.128323, 36.699509, 20.551826>,  <19.282835, 36.868893, 20.622782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.128323, 36.699509, 20.551826>,  <18.870802, 36.417202, 20.433567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.128323, 36.699509, 20.551826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464752, -0.053714, -0.883810,
		-0.607887, 0.706401, -0.362589,
		0.643800, 0.705771, 0.295650,
		19.321463, 36.911240, 20.640522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.885979, 36.938820, 19.875229>,  <18.870802, 36.417202, 20.433567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.885979, 36.938820, 19.875229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.223244, 36.966404, 20.088516>,  <19.425602, 36.982956, 20.216488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.223244, 36.966404, 20.088516>,  <18.885979, 36.938820, 19.875229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.223244, 36.966404, 20.088516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526249, 0.097380, -0.844736,
		-0.110182, 0.992855, 0.045815,
		0.843162, 0.068965, 0.533218,
		19.476192, 36.987095, 20.248482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235853, 37.422497, 19.520163>,  <18.885979, 36.938820, 19.875229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.235853, 37.422497, 19.520163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.508636, 37.221802, 19.733025>,  <19.672306, 37.101383, 19.860743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.508636, 37.221802, 19.733025>,  <19.235853, 37.422497, 19.520163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.508636, 37.221802, 19.733025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618326, 0.006889, -0.785891,
		0.390646, 0.864992, 0.314936,
		0.681959, -0.501738, 0.532156,
		19.713224, 37.071281, 19.892672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.774754, 37.818672, 19.366890>,  <19.235853, 37.422497, 19.520163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.774754, 37.818672, 19.366890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.903114, 37.463512, 19.498745>,  <19.980131, 37.250416, 19.577858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.903114, 37.463512, 19.498745>,  <19.774754, 37.818672, 19.366890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.903114, 37.463512, 19.498745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639512, -0.053590, -0.766911,
		0.698603, 0.456912, 0.550623,
		0.320903, -0.887896, 0.329639,
		19.999386, 37.197144, 19.597637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.495186, 37.871395, 19.276632>,  <19.774754, 37.818672, 19.366890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.495186, 37.871395, 19.276632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.442509, 37.478260, 19.328293>,  <20.410902, 37.242378, 19.359289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.442509, 37.478260, 19.328293>,  <20.495186, 37.871395, 19.276632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.442509, 37.478260, 19.328293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850052, -0.178990, -0.495353,
		0.509970, 0.044551, 0.859038,
		-0.131691, -0.982842, 0.129150,
		20.403002, 37.183407, 19.367037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.174891, 37.592564, 19.368107>,  <20.495186, 37.871395, 19.276632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.174891, 37.592564, 19.368107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.950266, 37.282639, 19.251961>,  <20.815491, 37.096684, 19.182272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.950266, 37.282639, 19.251961>,  <21.174891, 37.592564, 19.368107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.950266, 37.282639, 19.251961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794854, -0.407641, -0.449485,
		0.229901, -0.483213, 0.844778,
		-0.561563, -0.774813, -0.290367,
		20.781797, 37.050194, 19.164850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.656158, 37.053982, 19.575956>,  <21.174891, 37.592564, 19.368107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.656158, 37.053982, 19.575956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.370701, 36.928246, 19.325546>,  <21.199427, 36.852806, 19.175301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.370701, 36.928246, 19.325546>,  <21.656158, 37.053982, 19.575956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.370701, 36.928246, 19.325546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694392, -0.435269, -0.573027,
		-0.092365, -0.843643, 0.528900,
		-0.713644, -0.314336, -0.626023,
		21.156607, 36.833946, 19.137739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.896601, 36.416122, 19.380621>,  <21.656158, 37.053982, 19.575956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.896601, 36.416122, 19.380621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.645889, 36.514545, 19.084888>,  <21.495462, 36.573597, 18.907450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.645889, 36.514545, 19.084888>,  <21.896601, 36.416122, 19.380621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.645889, 36.514545, 19.084888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733061, -0.135443, -0.666541,
		-0.264142, -0.959746, -0.095479,
		-0.626778, 0.246053, -0.739329,
		21.457855, 36.588360, 18.863091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.077269, 35.979992, 18.855927>,  <21.896601, 36.416122, 19.380621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.077269, 35.979992, 18.855927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.860640, 36.260208, 18.670044>,  <21.730663, 36.428337, 18.558516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.860640, 36.260208, 18.670044>,  <22.077269, 35.979992, 18.855927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.860640, 36.260208, 18.670044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722911, 0.105950, -0.682770,
		-0.429069, -0.705708, -0.563804,
		-0.541571, 0.700536, -0.464704,
		21.698168, 36.470367, 18.530632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.090595, 35.783863, 18.156538>,  <22.077269, 35.979992, 18.855927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.090595, 35.783863, 18.156538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.011999, 36.175510, 18.135681>,  <21.964842, 36.410500, 18.123167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.011999, 36.175510, 18.135681>,  <22.090595, 35.783863, 18.156538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.011999, 36.175510, 18.135681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817303, 0.134175, -0.560369,
		-0.541671, -0.152723, -0.826600,
		-0.196490, 0.979118, -0.052143,
		21.953053, 36.469246, 18.120039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.238552, 35.993599, 17.459358>,  <22.090595, 35.783863, 18.156538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.238552, 35.993599, 17.459358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.216526, 36.356842, 17.625397>,  <22.203310, 36.574787, 17.725019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.216526, 36.356842, 17.625397>,  <22.238552, 35.993599, 17.459358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.216526, 36.356842, 17.625397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693678, 0.333812, -0.638263,
		-0.718177, 0.252799, -0.648317,
		-0.055064, 0.908109, 0.415097,
		22.200006, 36.629276, 17.749926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.162865, 36.469666, 16.880320>,  <22.238552, 35.993599, 17.459358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.162865, 36.469666, 16.880320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.319424, 36.640327, 17.206455>,  <22.413359, 36.742725, 17.402136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.319424, 36.640327, 17.206455>,  <22.162865, 36.469666, 16.880320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.319424, 36.640327, 17.206455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821982, 0.236240, -0.518204,
		-0.413709, 0.873017, -0.258237,
		0.391395, 0.426652, 0.815339,
		22.436842, 36.768322, 17.451057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.549812, 36.903683, 16.610798>,  <22.162865, 36.469666, 16.880320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.549812, 36.903683, 16.610798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.658913, 36.934788, 16.994373>,  <22.724373, 36.953449, 17.224518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.658913, 36.934788, 16.994373>,  <22.549812, 36.903683, 16.610798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.658913, 36.934788, 16.994373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930999, 0.229987, -0.283454,
		-0.242585, 0.970082, -0.009668,
		0.272750, 0.077762, 0.958937,
		22.740738, 36.958115, 17.282055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.989059, 37.519100, 16.626631>,  <22.549812, 36.903683, 16.610798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.989059, 37.519100, 16.626631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.101374, 37.308044, 16.947319>,  <23.168762, 37.181412, 17.139732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.101374, 37.308044, 16.947319>,  <22.989059, 37.519100, 16.626631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.101374, 37.308044, 16.947319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943924, 0.302982, -0.131186,
		-0.173689, 0.793599, 0.583123,
		0.280785, -0.527638, 0.801722,
		23.185610, 37.149754, 17.187836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.420425, 38.008530, 17.131016>,  <22.989059, 37.519100, 16.626631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.420425, 38.008530, 17.131016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.508446, 37.625973, 17.207851>,  <23.561258, 37.396439, 17.253952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.508446, 37.625973, 17.207851>,  <23.420425, 38.008530, 17.131016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.508446, 37.625973, 17.207851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973444, 0.228032, 0.020191,
		-0.063112, 0.182545, 0.981170,
		0.220052, -0.956389, 0.192089,
		23.574461, 37.339058, 17.265478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.988413, 37.974323, 17.641056>,  <23.420425, 38.008530, 17.131016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.988413, 37.974323, 17.641056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.001928, 37.617306, 17.461178>,  <24.010038, 37.403095, 17.353251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.001928, 37.617306, 17.461178>,  <23.988413, 37.974323, 17.641056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.001928, 37.617306, 17.461178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990138, 0.091107, -0.106429,
		0.135963, -0.441662, 0.886819,
		0.033790, -0.892543, -0.449694,
		24.012066, 37.349545, 17.326269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539457, 37.622551, 17.980249>,  <23.988413, 37.974323, 17.641056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.539457, 37.622551, 17.980249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.484085, 37.467873, 17.615547>,  <24.450861, 37.375065, 17.396725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.484085, 37.467873, 17.615547>,  <24.539457, 37.622551, 17.980249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.484085, 37.467873, 17.615547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988583, 0.001360, -0.150673,
		0.059504, -0.922206, 0.382094,
		-0.138432, -0.386697, -0.911758,
		24.442554, 37.351864, 17.342020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035326, 37.149284, 17.939175>,  <24.539457, 37.622551, 17.980249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.035326, 37.149284, 17.939175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.944187, 37.193577, 17.552223>,  <24.889503, 37.220154, 17.320051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.944187, 37.193577, 17.552223>,  <25.035326, 37.149284, 17.939175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944187, 37.193577, 17.552223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973556, 0.042829, -0.224400,
		0.016583, -0.992927, -0.117565,
		-0.227848, 0.110735, -0.967379,
		24.875834, 37.226799, 17.262009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.369268, 29.354315, 19.653793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728630, 29.529530, 19.666397>,  <28.944246, 29.634659, 19.673960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728630, 29.529530, 19.666397>,  <28.369268, 29.354315, 19.653793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728630, 29.529530, 19.666397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421766, 0.840583, 0.339902,
		0.122405, -0.318658, 0.939933,
		0.898405, 0.438037, 0.031508,
		28.998152, 29.660940, 19.675850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470751, 29.628544, 20.270803>,  <28.369268, 29.354315, 19.653793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470751, 29.628544, 20.270803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718313, 29.835915, 20.034775>,  <28.866852, 29.960337, 19.893158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718313, 29.835915, 20.034775>,  <28.470751, 29.628544, 20.270803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718313, 29.835915, 20.034775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268488, 0.845623, 0.461341,
		0.738151, -0.127101, 0.662555,
		0.618908, 0.518427, -0.590073,
		28.903986, 29.991444, 19.857752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927685, 30.234610, 20.630623>,  <28.470751, 29.628544, 20.270803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927685, 30.234610, 20.630623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939497, 30.344234, 20.246120>,  <28.946585, 30.410009, 20.015419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939497, 30.344234, 20.246120>,  <28.927685, 30.234610, 20.630623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939497, 30.344234, 20.246120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007611, 0.961711, 0.273959,
		0.999535, -0.000773, 0.030484,
		0.029529, 0.274064, -0.961258,
		28.948357, 30.426455, 19.957743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409313, 30.766235, 20.609493>,  <28.927685, 30.234610, 20.630623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409313, 30.766235, 20.609493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210804, 30.809853, 20.264977>,  <29.091698, 30.836023, 20.058268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210804, 30.809853, 20.264977>,  <29.409313, 30.766235, 20.609493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210804, 30.809853, 20.264977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050048, 0.994024, 0.097012,
		0.866723, 0.005039, -0.498766,
		-0.496274, 0.109045, -0.861291,
		29.061922, 30.842566, 20.006590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654078, 31.383793, 20.312744>,  <29.409313, 30.766235, 20.609493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654078, 31.383793, 20.312744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328291, 31.323551, 20.088615>,  <29.132818, 31.287405, 19.954138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328291, 31.323551, 20.088615>,  <29.654078, 31.383793, 20.312744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328291, 31.323551, 20.088615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213676, 0.975708, 0.048337,
		0.539432, 0.159097, -0.826862,
		-0.814466, -0.150606, -0.560323,
		29.083952, 31.278370, 19.920519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666603, 31.965319, 19.945391>,  <29.654078, 31.383793, 20.312744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666603, 31.965319, 19.945391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300592, 31.811031, 19.898155>,  <29.080986, 31.718458, 19.869814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300592, 31.811031, 19.898155>,  <29.666603, 31.965319, 19.945391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300592, 31.811031, 19.898155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401542, 0.898928, 0.175190,
		0.038578, 0.207721, -0.977427,
		-0.915028, -0.385720, -0.118087,
		29.026085, 31.695316, 19.862728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289345, 32.302723, 19.309357>,  <29.666603, 31.965319, 19.945391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289345, 32.302723, 19.309357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020042, 32.152706, 19.564251>,  <28.858461, 32.062695, 19.717188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020042, 32.152706, 19.564251>,  <29.289345, 32.302723, 19.309357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020042, 32.152706, 19.564251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404961, 0.908097, 0.106608,
		-0.618653, -0.186280, -0.763262,
		-0.673257, -0.375045, 0.637233,
		28.818066, 32.040192, 19.755421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659536, 32.540710, 19.037151>,  <29.289345, 32.302723, 19.309357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659536, 32.540710, 19.037151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585136, 32.465324, 19.422874>,  <28.540497, 32.420094, 19.654308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585136, 32.465324, 19.422874>,  <28.659536, 32.540710, 19.037151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585136, 32.465324, 19.422874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494355, 0.866112, 0.073918,
		-0.849127, -0.462960, -0.254266,
		-0.186001, -0.188463, 0.964305,
		28.529337, 32.408787, 19.712166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919140, 32.543369, 19.083437>,  <28.659536, 32.540710, 19.037151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919140, 32.543369, 19.083437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059196, 32.597683, 19.454159>,  <28.143230, 32.630272, 19.676592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059196, 32.597683, 19.454159>,  <27.919140, 32.543369, 19.083437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059196, 32.597683, 19.454159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628969, 0.767282, 0.125206,
		-0.694118, -0.626770, 0.354062,
		0.350140, 0.135786, 0.926803,
		28.164238, 32.638420, 19.732201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345125, 32.718693, 19.442574>,  <27.919140, 32.543369, 19.083437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345125, 32.718693, 19.442574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589161, 32.818604, 19.743347>,  <27.735582, 32.878548, 19.923811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589161, 32.818604, 19.743347>,  <27.345125, 32.718693, 19.442574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589161, 32.818604, 19.743347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582785, 0.784408, 0.212287,
		-0.536801, -0.567730, 0.624122,
		0.610088, 0.249773, 0.751935,
		27.772188, 32.893536, 19.968927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925415, 32.866756, 20.101053>,  <27.345125, 32.718693, 19.442574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925415, 32.866756, 20.101053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281601, 33.048244, 20.114948>,  <27.495314, 33.157139, 20.123285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281601, 33.048244, 20.114948>,  <26.925415, 32.866756, 20.101053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281601, 33.048244, 20.114948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455005, 0.886731, 0.081726,
		0.006276, -0.088581, 0.996049,
		0.890467, 0.453720, 0.034739,
		27.548740, 33.184361, 20.125370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210752, 33.039864, 20.786562>,  <26.925415, 32.866756, 20.101053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210752, 33.039864, 20.786562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291969, 33.312786, 20.505642>,  <27.340698, 33.476540, 20.337090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291969, 33.312786, 20.505642>,  <27.210752, 33.039864, 20.786562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291969, 33.312786, 20.505642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335606, 0.722290, 0.604703,
		0.919861, 0.112917, 0.375641,
		0.203040, 0.682310, -0.702302,
		27.352882, 33.517479, 20.294952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646389, 33.481785, 20.865471>,  <27.210752, 33.039864, 20.786562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646389, 33.481785, 20.865471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414591, 33.530605, 21.187786>,  <26.275513, 33.559898, 21.381174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414591, 33.530605, 21.187786>,  <26.646389, 33.481785, 20.865471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414591, 33.530605, 21.187786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763497, 0.427138, 0.484382,
		-0.285062, 0.895911, -0.340709,
		-0.579493, 0.122052, 0.805786,
		26.240744, 33.567223, 21.429522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580467, 34.172970, 21.011272>,  <26.646389, 33.481785, 20.865471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580467, 34.172970, 21.011272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562948, 33.935955, 21.333012>,  <26.552437, 33.793747, 21.526056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562948, 33.935955, 21.333012>,  <26.580467, 34.172970, 21.011272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562948, 33.935955, 21.333012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839361, 0.414816, 0.351285,
		-0.541807, 0.690525, 0.479187,
		-0.043796, -0.592540, 0.804350,
		26.549809, 33.758194, 21.574316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857590, 34.179646, 21.419699>,  <26.580467, 34.172970, 21.011272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857590, 34.179646, 21.419699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657564, 34.127171, 21.762096>,  <25.537548, 34.095684, 21.967535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657564, 34.127171, 21.762096>,  <25.857590, 34.179646, 21.419699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657564, 34.127171, 21.762096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516249, -0.838776, 0.173037,
		0.695287, 0.528436, 0.487168,
		-0.500064, -0.131189, 0.855994,
		25.507545, 34.087814, 22.018894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356117, 34.201256, 21.984291>,  <25.857590, 34.179646, 21.419699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356117, 34.201256, 21.984291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025511, 34.031681, 22.132423>,  <25.827147, 33.929935, 22.221304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025511, 34.031681, 22.132423>,  <26.356117, 34.201256, 21.984291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025511, 34.031681, 22.132423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490038, -0.865622, 0.102761,
		0.277004, 0.266411, 0.923198,
		-0.826517, -0.423937, 0.370332,
		25.777555, 33.904499, 22.243523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548651, 33.906963, 22.680927>,  <26.356117, 34.201256, 21.984291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548651, 33.906963, 22.680927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215841, 33.708992, 22.580700>,  <26.016155, 33.590210, 22.520563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215841, 33.708992, 22.580700>,  <26.548651, 33.906963, 22.680927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215841, 33.708992, 22.580700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396450, -0.846440, 0.355482,
		-0.388027, 0.196432, 0.900472,
		-0.832023, -0.494929, -0.250566,
		25.966234, 33.560513, 22.505529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582787, 33.349899, 23.238314>,  <26.548651, 33.906963, 22.680927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582787, 33.349899, 23.238314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333391, 33.228252, 22.950211>,  <26.183754, 33.155266, 22.777348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333391, 33.228252, 22.950211>,  <26.582787, 33.349899, 23.238314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333391, 33.228252, 22.950211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153841, -0.950957, 0.268354,
		-0.766546, 0.056511, 0.639698,
		-0.623490, -0.304118, -0.720259,
		26.146345, 33.137016, 22.734133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113575, 32.814835, 23.613945>,  <26.582787, 33.349899, 23.238314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113575, 32.814835, 23.613945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113743, 32.747917, 23.219582>,  <26.113844, 32.707767, 22.982964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113743, 32.747917, 23.219582>,  <26.113575, 32.814835, 23.613945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113743, 32.747917, 23.219582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246083, -0.955572, 0.162253,
		-0.969249, -0.242682, 0.040769,
		0.000418, -0.167296, -0.985907,
		26.113869, 32.697727, 22.923809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747404, 32.160320, 23.581470>,  <26.113575, 32.814835, 23.613945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747404, 32.160320, 23.581470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979342, 32.207310, 23.258984>,  <26.118504, 32.235504, 23.065493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979342, 32.207310, 23.258984>,  <25.747404, 32.160320, 23.581470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979342, 32.207310, 23.258984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263416, -0.963433, 0.049078,
		-0.770969, -0.240828, -0.589584,
		0.579844, 0.117469, -0.806215,
		26.153296, 32.242550, 23.017118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675287, 31.579205, 23.365978>,  <25.747404, 32.160320, 23.581470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675287, 31.579205, 23.365978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978100, 31.711384, 23.140514>,  <26.159786, 31.790691, 23.005236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978100, 31.711384, 23.140514>,  <25.675287, 31.579205, 23.365978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978100, 31.711384, 23.140514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361742, -0.930372, -0.059593,
		-0.544104, -0.158785, -0.823856,
		0.757029, 0.330448, -0.563658,
		26.205208, 31.810518, 22.971416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830925, 31.011578, 23.032461>,  <25.675287, 31.579205, 23.365978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830925, 31.011578, 23.032461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165421, 31.227180, 22.992104>,  <26.366117, 31.356543, 22.967890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165421, 31.227180, 22.992104>,  <25.830925, 31.011578, 23.032461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165421, 31.227180, 22.992104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487878, -0.815293, -0.311884,
		-0.250366, 0.211585, -0.944748,
		0.836237, 0.539007, -0.100894,
		26.416292, 31.388882, 22.961836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116570, 30.751047, 22.446161>,  <25.830925, 31.011578, 23.032461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116570, 30.751047, 22.446161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416658, 30.957680, 22.611237>,  <26.596712, 31.081659, 22.710281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416658, 30.957680, 22.611237>,  <26.116570, 30.751047, 22.446161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416658, 30.957680, 22.611237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631189, -0.745422, -0.214352,
		0.196898, 0.421297, -0.885291,
		0.750221, 0.516580, 0.412690,
		26.641726, 31.112654, 22.735044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696074, 30.697041, 22.006636>,  <26.116570, 30.751047, 22.446161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696074, 30.697041, 22.006636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837713, 30.785580, 22.370090>,  <26.922697, 30.838703, 22.588163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837713, 30.785580, 22.370090>,  <26.696074, 30.697041, 22.006636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837713, 30.785580, 22.370090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593120, -0.804344, -0.035199,
		0.723064, 0.551394, -0.416104,
		0.354100, 0.221349, 0.908635,
		26.943943, 30.851984, 22.642681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390266, 30.788778, 21.985949>,  <26.696074, 30.697041, 22.006636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390266, 30.788778, 21.985949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310072, 30.690498, 22.365303>,  <27.261955, 30.631531, 22.592916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310072, 30.690498, 22.365303>,  <27.390266, 30.788778, 21.985949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310072, 30.690498, 22.365303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689320, -0.723258, -0.041653,
		0.696163, 0.645391, 0.314370,
		-0.200488, -0.245699, 0.948386,
		27.249926, 30.616789, 22.649818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081337, 30.677698, 22.206646>,  <27.390266, 30.788778, 21.985949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081337, 30.677698, 22.206646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833492, 30.497833, 22.463982>,  <27.684786, 30.389914, 22.618383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833492, 30.497833, 22.463982>,  <28.081337, 30.677698, 22.206646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833492, 30.497833, 22.463982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603692, -0.796842, 0.024474,
		0.501634, 0.403543, 0.765190,
		-0.619612, -0.449663, 0.643339,
		27.647610, 30.362934, 22.656982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560560, 30.512903, 22.829340>,  <28.081337, 30.677698, 22.206646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560560, 30.512903, 22.829340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248318, 30.265770, 22.867142>,  <28.060972, 30.117489, 22.889824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248318, 30.265770, 22.867142>,  <28.560560, 30.512903, 22.829340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248318, 30.265770, 22.867142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616196, -0.735419, 0.281890,
		-0.104660, 0.278280, 0.954781,
		-0.780608, -0.617834, 0.094506,
		28.014135, 30.080420, 22.895494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693750, 30.065781, 23.446012>,  <28.560560, 30.512903, 22.829340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693750, 30.065781, 23.446012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434776, 29.847485, 23.233223>,  <28.279392, 29.716507, 23.105549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434776, 29.847485, 23.233223>,  <28.693750, 30.065781, 23.446012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434776, 29.847485, 23.233223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482148, -0.833879, 0.268663,
		-0.590220, -0.082547, 0.803011,
		-0.647436, -0.545740, -0.531972,
		28.240545, 29.683762, 23.073631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299538, 30.140646, 24.186892>,  <28.693750, 30.065781, 23.446012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299538, 30.140646, 24.186892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526430, 30.206516, 24.509663>,  <28.662565, 30.246038, 24.703325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526430, 30.206516, 24.509663>,  <28.299538, 30.140646, 24.186892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526430, 30.206516, 24.509663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039874, 0.984147, -0.172811,
		-0.822591, 0.065849, 0.564807,
		0.567233, 0.164674, 0.806926,
		28.696600, 30.255919, 24.751740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055199, 30.763735, 24.502155>,  <28.299538, 30.140646, 24.186892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055199, 30.763735, 24.502155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428370, 30.725403, 24.640987>,  <28.652271, 30.702404, 24.724287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428370, 30.725403, 24.640987>,  <28.055199, 30.763735, 24.502155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428370, 30.725403, 24.640987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146422, 0.981601, -0.122552,
		-0.328948, 0.165152, 0.929795,
		0.932927, -0.095829, 0.347078,
		28.708248, 30.696653, 24.745111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991747, 31.193594, 25.029459>,  <28.055199, 30.763735, 24.502155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991747, 31.193594, 25.029459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378645, 31.141937, 24.942039>,  <28.610783, 31.110943, 24.889587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378645, 31.141937, 24.942039>,  <27.991747, 31.193594, 25.029459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378645, 31.141937, 24.942039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081975, 0.973703, -0.212562,
		0.240253, 0.187684, 0.952394,
		0.967243, -0.129141, -0.218550,
		28.668818, 31.103195, 24.876474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225943, 31.816475, 25.157856>,  <27.991747, 31.193594, 25.029459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225943, 31.816475, 25.157856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544949, 31.667377, 24.968105>,  <28.736353, 31.577919, 24.854256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544949, 31.667377, 24.968105>,  <28.225943, 31.816475, 25.157856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544949, 31.667377, 24.968105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286311, 0.925956, -0.246235,
		0.531034, 0.060557, 0.845184,
		0.797514, -0.372745, -0.474375,
		28.784203, 31.555553, 24.825792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665714, 32.204762, 25.346653>,  <28.225943, 31.816475, 25.157856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665714, 32.204762, 25.346653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822557, 32.028217, 25.023804>,  <28.916664, 31.922291, 24.830093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822557, 32.028217, 25.023804>,  <28.665714, 32.204762, 25.346653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822557, 32.028217, 25.023804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263777, 0.894487, -0.360990,
		0.881290, -0.071353, 0.467159,
		0.392110, -0.441363, -0.807124,
		28.940191, 31.895809, 24.781666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251036, 32.715050, 25.116835>,  <28.665714, 32.204762, 25.346653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251036, 32.715050, 25.116835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195065, 32.483986, 24.795158>,  <29.161482, 32.345348, 24.602152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195065, 32.483986, 24.795158>,  <29.251036, 32.715050, 25.116835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195065, 32.483986, 24.795158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185964, 0.782398, -0.594366,
		0.972542, -0.232717, -0.002053,
		-0.139926, -0.577664, -0.804192,
		29.153088, 32.310688, 24.553902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918993, 32.723656, 24.755865>,  <29.251036, 32.715050, 25.116835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918993, 32.723656, 24.755865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600174, 32.658722, 24.523190>,  <29.408882, 32.619762, 24.383585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600174, 32.658722, 24.523190>,  <29.918993, 32.723656, 24.755865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600174, 32.658722, 24.523190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167929, 0.865634, -0.471676,
		0.580099, -0.473631, -0.662691,
		-0.797048, -0.162334, -0.581690,
		29.361059, 32.610023, 24.348682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192537, 32.789528, 24.085463>,  <29.918993, 32.723656, 24.755865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192537, 32.789528, 24.085463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799776, 32.859608, 24.114220>,  <29.564119, 32.901657, 24.131474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799776, 32.859608, 24.114220>,  <30.192537, 32.789528, 24.085463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799776, 32.859608, 24.114220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127738, 0.892986, -0.431578,
		-0.139812, -0.414584, -0.899206,
		-0.981904, 0.175203, 0.071892,
		29.505205, 32.912170, 24.135788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034781, 32.948971, 23.373112>,  <30.192537, 32.789528, 24.085463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034781, 32.948971, 23.373112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743883, 33.093739, 23.606396>,  <29.569345, 33.180599, 23.746367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743883, 33.093739, 23.606396>,  <30.034781, 32.948971, 23.373112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743883, 33.093739, 23.606396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035179, 0.868227, -0.494918,
		-0.685478, -0.339409, -0.644144,
		-0.727243, 0.361916, 0.583210,
		29.525709, 33.202312, 23.781359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774725, 33.314934, 22.923950>,  <30.034781, 32.948971, 23.373112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774725, 33.314934, 22.923950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622112, 33.478600, 23.255497>,  <29.530544, 33.576797, 23.454426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622112, 33.478600, 23.255497>,  <29.774725, 33.314934, 22.923950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622112, 33.478600, 23.255497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081311, 0.908077, -0.410835,
		-0.920773, -0.089350, -0.379729,
		-0.381531, 0.409162, 0.828867,
		29.507652, 33.601349, 23.504158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363146, 33.831112, 22.645315>,  <29.774725, 33.314934, 22.923950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363146, 33.831112, 22.645315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433390, 33.927673, 23.027077>,  <29.475536, 33.985611, 23.256134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433390, 33.927673, 23.027077>,  <29.363146, 33.831112, 22.645315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433390, 33.927673, 23.027077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193262, 0.942152, -0.273860,
		-0.965304, 0.232543, 0.118797,
		0.175609, 0.241400, 0.954404,
		29.486073, 34.000092, 23.313398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812130, 34.273781, 22.868036>,  <29.363146, 33.831112, 22.645315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812130, 34.273781, 22.868036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154604, 34.322170, 23.068958>,  <29.360088, 34.351204, 23.189512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154604, 34.322170, 23.068958>,  <28.812130, 34.273781, 22.868036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154604, 34.322170, 23.068958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066754, 0.938155, -0.339719,
		-0.512337, 0.324394, 0.795160,
		0.856186, 0.120971, 0.502306,
		29.411459, 34.358463, 23.219650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.592613, 26.625765, 24.854441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.979767, 26.688034, 24.933403>,  <29.212059, 26.725395, 24.980780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.979767, 26.688034, 24.933403>,  <28.592613, 26.625765, 24.854441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979767, 26.688034, 24.933403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239115, 0.812528, 0.531622,
		-0.077638, -0.561751, 0.823656,
		0.967882, 0.155674, 0.197406,
		29.270132, 26.734735, 24.992624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605322, 26.796741, 25.556210>,  <28.592613, 26.625765, 24.854441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605322, 26.796741, 25.556210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.933531, 26.947109, 25.383965>,  <29.130457, 27.037331, 25.280617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.933531, 26.947109, 25.383965>,  <28.605322, 26.796741, 25.556210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933531, 26.947109, 25.383965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136401, 0.860330, 0.491149,
		0.555101, -0.344263, 0.757196,
		0.820523, 0.375919, -0.430612,
		29.179688, 27.059885, 25.254780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796452, 27.334587, 26.000132>,  <28.605322, 26.796741, 25.556210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796452, 27.334587, 26.000132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.009863, 27.424095, 25.673874>,  <29.137909, 27.477800, 25.478119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.009863, 27.424095, 25.673874>,  <28.796452, 27.334587, 26.000132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009863, 27.424095, 25.673874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192367, 0.971196, 0.140615,
		0.823615, 0.081881, 0.561207,
		0.533528, 0.223771, -0.815644,
		29.169922, 27.491226, 25.429180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221962, 27.925951, 26.237837>,  <28.796452, 27.334587, 26.000132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221962, 27.925951, 26.237837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.180490, 27.955196, 25.841068>,  <29.155607, 27.972744, 25.603008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.180490, 27.955196, 25.841068>,  <29.221962, 27.925951, 26.237837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180490, 27.955196, 25.841068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092286, 0.992285, 0.082785,
		0.990320, 0.100124, -0.096132,
		-0.103679, 0.073112, -0.991920,
		29.149387, 27.977129, 25.543491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714882, 28.433718, 26.080492>,  <29.221962, 27.925951, 26.237837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714882, 28.433718, 26.080492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.448936, 28.407658, 25.782845>,  <29.289370, 28.392021, 25.604256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.448936, 28.407658, 25.782845>,  <29.714882, 28.433718, 26.080492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448936, 28.407658, 25.782845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131649, 0.990815, 0.030875,
		0.735271, 0.118490, -0.667335,
		-0.664865, -0.065153, -0.744117,
		29.249477, 28.388111, 25.559608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019743, 28.745251, 25.588161>,  <29.714882, 28.433718, 26.080492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019743, 28.745251, 25.588161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.645859, 28.746998, 25.446011>,  <29.421528, 28.748047, 25.360720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.645859, 28.746998, 25.446011>,  <30.019743, 28.745251, 25.588161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645859, 28.746998, 25.446011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098054, 0.964285, -0.246049,
		0.341612, -0.264831, -0.901757,
		-0.934712, 0.004368, -0.355379,
		29.365444, 28.748308, 25.339397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993334, 29.110548, 25.016123>,  <30.019743, 28.745251, 25.588161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993334, 29.110548, 25.016123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.610506, 29.124252, 25.131256>,  <29.380810, 29.132475, 25.200336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.610506, 29.124252, 25.131256>,  <29.993334, 29.110548, 25.016123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610506, 29.124252, 25.131256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030430, 0.975630, -0.217302,
		-0.288263, -0.216731, -0.932701,
		-0.957068, 0.034259, 0.287833,
		29.323385, 29.134529, 25.217606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687372, 29.431129, 24.420879>,  <29.993334, 29.110548, 25.016123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687372, 29.431129, 24.420879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.426439, 29.475506, 24.720787>,  <29.269880, 29.502131, 24.900732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.426439, 29.475506, 24.720787>,  <29.687372, 29.431129, 24.420879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426439, 29.475506, 24.720787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223833, 0.916911, -0.330413,
		-0.724129, -0.383363, -0.573298,
		-0.652331, 0.110939, 0.749771,
		29.230740, 29.508787, 24.945719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010477, 29.541319, 24.101891>,  <29.687372, 29.431129, 24.420879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010477, 29.541319, 24.101891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.974567, 29.681999, 24.474609>,  <28.953022, 29.766407, 24.698240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.974567, 29.681999, 24.474609>,  <29.010477, 29.541319, 24.101891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974567, 29.681999, 24.474609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400130, 0.844016, -0.357118,
		-0.912051, -0.404900, 0.064957,
		-0.089772, 0.351701, 0.931798,
		28.947636, 29.787510, 24.754148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454823, 29.433037, 23.773729>,  <29.010477, 29.541319, 24.101891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454823, 29.433037, 23.773729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.365395, 29.334690, 23.396461>,  <28.311737, 29.275682, 23.170101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.365395, 29.334690, 23.396461>,  <28.454823, 29.433037, 23.773729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365395, 29.334690, 23.396461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337234, -0.927409, 0.161820,
		-0.914489, -0.281890, 0.290255,
		-0.223570, -0.245866, -0.943168,
		28.298323, 29.260931, 23.113510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275164, 28.768108, 23.840149>,  <28.454823, 29.433037, 23.773729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275164, 28.768108, 23.840149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.325930, 28.789749, 23.443974>,  <28.356390, 28.802734, 23.206268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.325930, 28.789749, 23.443974>,  <28.275164, 28.768108, 23.840149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325930, 28.789749, 23.443974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376290, -0.926499, -0.002391,
		-0.917768, -0.372388, -0.137945,
		0.126916, 0.054102, -0.990437,
		28.364004, 28.805981, 23.146843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029413, 28.119862, 23.449282>,  <28.275164, 28.768108, 23.840149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029413, 28.119862, 23.449282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.297466, 28.292953, 23.208061>,  <28.458298, 28.396809, 23.063330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.297466, 28.292953, 23.208061>,  <28.029413, 28.119862, 23.449282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297466, 28.292953, 23.208061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319377, -0.901518, -0.291999,
		-0.670017, 0.003077, -0.742339,
		0.670131, 0.432730, -0.603050,
		28.498505, 28.422773, 23.027145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972721, 27.769722, 22.789278>,  <28.029413, 28.119862, 23.449282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972721, 27.769722, 22.789278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.336582, 27.934650, 22.769184>,  <28.554899, 28.033607, 22.757128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.336582, 27.934650, 22.769184>,  <27.972721, 27.769722, 22.789278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336582, 27.934650, 22.769184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364833, -0.850923, -0.377924,
		-0.198571, 0.325452, -0.924473,
		0.909652, 0.412323, -0.050233,
		28.609478, 28.058348, 22.754114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167082, 27.595379, 22.128086>,  <27.972721, 27.769722, 22.789278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167082, 27.595379, 22.128086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.509493, 27.681370, 22.316128>,  <28.714939, 27.732965, 22.428953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.509493, 27.681370, 22.316128>,  <28.167082, 27.595379, 22.128086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509493, 27.681370, 22.316128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434638, -0.791628, -0.429436,
		0.279827, 0.571935, -0.771095,
		0.856030, 0.214980, 0.470103,
		28.766302, 27.745863, 22.457159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643410, 27.675367, 21.604069>,  <28.167082, 27.595379, 22.128086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643410, 27.675367, 21.604069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.816910, 27.552223, 21.942791>,  <28.921009, 27.478336, 22.146025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.816910, 27.552223, 21.942791>,  <28.643410, 27.675367, 21.604069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816910, 27.552223, 21.942791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310083, -0.831409, -0.461093,
		0.845996, 0.462579, -0.265161,
		0.433750, -0.307862, 0.846807,
		28.947035, 27.459866, 22.196833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347458, 27.326315, 21.389132>,  <28.643410, 27.675367, 21.604069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347458, 27.326315, 21.389132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.306263, 27.248039, 21.779228>,  <29.281546, 27.201073, 22.013287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.306263, 27.248039, 21.779228>,  <29.347458, 27.326315, 21.389132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306263, 27.248039, 21.779228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514544, -0.849563, -0.116136,
		0.851257, 0.489844, 0.188186,
		-0.102988, -0.195691, 0.975243,
		29.275366, 27.189331, 22.071800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955585, 27.068405, 21.574562>,  <29.347458, 27.326315, 21.389132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955585, 27.068405, 21.574562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.727289, 26.906033, 21.860073>,  <29.590311, 26.808609, 22.031380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.727289, 26.906033, 21.860073>,  <29.955585, 27.068405, 21.574562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727289, 26.906033, 21.860073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296749, -0.912475, -0.281654,
		0.765635, 0.051061, 0.641246,
		-0.570739, -0.405933, 0.713775,
		29.556067, 26.784252, 22.074205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293093, 26.473755, 21.856485>,  <29.955585, 27.068405, 21.574562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293093, 26.473755, 21.856485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.908728, 26.427013, 21.956879>,  <29.678108, 26.398968, 22.017115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.908728, 26.427013, 21.956879>,  <30.293093, 26.473755, 21.856485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908728, 26.427013, 21.956879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048361, -0.963467, -0.263424,
		0.272596, -0.240990, 0.931459,
		-0.960912, -0.116854, 0.250983,
		29.620455, 26.391956, 22.032173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257790, 25.703058, 22.077557>,  <30.293093, 26.473755, 21.856485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257790, 25.703058, 22.077557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.879475, 25.816494, 22.014236>,  <29.652485, 25.884556, 21.976244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.879475, 25.816494, 22.014236>,  <30.257790, 25.703058, 22.077557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879475, 25.816494, 22.014236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247673, -0.945073, -0.213295,
		-0.210095, -0.162525, 0.964078,
		-0.945790, 0.283588, -0.158302,
		29.595737, 25.901571, 21.966745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793833, 25.196663, 22.478249>,  <30.257790, 25.703058, 22.077557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793833, 25.196663, 22.478249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.588318, 25.372849, 22.183762>,  <29.465010, 25.478559, 22.007071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.588318, 25.372849, 22.183762>,  <29.793833, 25.196663, 22.478249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588318, 25.372849, 22.183762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410711, -0.879698, -0.239682,
		-0.753219, 0.179226, 0.632882,
		-0.513788, 0.440465, -0.736215,
		29.434181, 25.504988, 21.962896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158724, 24.897066, 22.474453>,  <29.793833, 25.196663, 22.478249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158724, 24.897066, 22.474453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.146736, 25.066978, 22.112534>,  <29.139544, 25.168926, 21.895382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.146736, 25.066978, 22.112534>,  <29.158724, 24.897066, 22.474453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146736, 25.066978, 22.112534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473213, -0.803367, -0.361485,
		-0.880438, 0.417330, 0.225088,
		-0.029969, 0.424780, -0.904801,
		29.137745, 25.194412, 21.841093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480129, 24.690153, 22.263336>,  <29.158724, 24.897066, 22.474453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480129, 24.690153, 22.263336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.726406, 24.792057, 21.965069>,  <28.874172, 24.853199, 21.786108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.726406, 24.792057, 21.965069>,  <28.480129, 24.690153, 22.263336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726406, 24.792057, 21.965069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251766, -0.833095, -0.492511,
		-0.746683, 0.490970, -0.448791,
		0.615693, 0.254759, -0.745667,
		28.911114, 24.868484, 21.741369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141565, 24.396442, 21.684050>,  <28.480129, 24.690153, 22.263336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141565, 24.396442, 21.684050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.521093, 24.448975, 21.569160>,  <28.748810, 24.480494, 21.500227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.521093, 24.448975, 21.569160>,  <28.141565, 24.396442, 21.684050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521093, 24.448975, 21.569160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024528, -0.876055, -0.481588,
		-0.314870, 0.463984, -0.827995,
		0.948818, 0.131328, -0.287224,
		28.805738, 24.488373, 21.482994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.982216, 25.598963, 20.688148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619080, 25.504116, 20.826481>,  <35.401196, 25.447208, 20.909479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619080, 25.504116, 20.826481>,  <35.982216, 25.598963, 20.688148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619080, 25.504116, 20.826481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289987, 0.950761, -0.109365,
		-0.302869, -0.199572, -0.931902,
		-0.907842, -0.237116, 0.345829,
		35.346725, 25.432981, 20.930229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526505, 25.801043, 20.183186>,  <35.982216, 25.598963, 20.688148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526505, 25.801043, 20.183186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326336, 25.778893, 20.528790>,  <35.206234, 25.765602, 20.736153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326336, 25.778893, 20.528790>,  <35.526505, 25.801043, 20.183186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326336, 25.778893, 20.528790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405511, 0.896712, -0.177395,
		-0.764945, -0.439137, -0.471187,
		-0.500420, -0.055374, 0.864010,
		35.176208, 25.762280, 20.787992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969646, 26.118620, 20.017902>,  <35.526505, 25.801043, 20.183186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969646, 26.118620, 20.017902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975693, 26.110470, 20.417774>,  <34.979321, 26.105579, 20.657698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975693, 26.110470, 20.417774>,  <34.969646, 26.118620, 20.017902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975693, 26.110470, 20.417774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405693, 0.913674, 0.024755,
		-0.913884, -0.405937, 0.005540,
		0.015111, -0.020376, 0.999678,
		34.980225, 26.104357, 20.717678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377033, 26.350586, 20.224142>,  <34.969646, 26.118620, 20.017902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377033, 26.350586, 20.224142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574329, 26.420868, 20.564926>,  <34.692707, 26.463037, 20.769398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574329, 26.420868, 20.564926>,  <34.377033, 26.350586, 20.224142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574329, 26.420868, 20.564926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353458, 0.935377, 0.011726,
		-0.794845, -0.306917, 0.523472,
		0.493243, 0.175705, 0.851962,
		34.722301, 26.473579, 20.820515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917740, 26.681406, 20.630772>,  <34.377033, 26.350586, 20.224142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917740, 26.681406, 20.630772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.254684, 26.760609, 20.831261>,  <34.456852, 26.808130, 20.951553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.254684, 26.760609, 20.831261>,  <33.917740, 26.681406, 20.630772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254684, 26.760609, 20.831261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290253, 0.950328, 0.112379,
		-0.454075, -0.240145, 0.857990,
		0.842359, 0.198006, 0.501223,
		34.507393, 26.820011, 20.981628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700447, 27.037668, 21.323175>,  <33.917740, 26.681406, 20.630772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700447, 27.037668, 21.323175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.085114, 27.132156, 21.267467>,  <34.315914, 27.188850, 21.234043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.085114, 27.132156, 21.267467>,  <33.700447, 27.037668, 21.323175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085114, 27.132156, 21.267467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190651, 0.940996, 0.279607,
		0.197101, -0.242336, 0.949960,
		0.961667, 0.236221, -0.139270,
		34.373615, 27.203022, 21.225687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763844, 27.568216, 21.802296>,  <33.700447, 27.037668, 21.323175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763844, 27.568216, 21.802296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082916, 27.596992, 21.562786>,  <34.274361, 27.614258, 21.419081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082916, 27.596992, 21.562786>,  <33.763844, 27.568216, 21.802296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082916, 27.596992, 21.562786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042378, 0.997092, 0.063346,
		0.601587, -0.025155, 0.798411,
		0.797682, 0.071943, -0.598772,
		34.322220, 27.618576, 21.383154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268826, 28.052095, 22.209339>,  <33.763844, 27.568216, 21.802296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268826, 28.052095, 22.209339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321167, 28.036747, 21.813076>,  <34.352570, 28.027538, 21.575317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321167, 28.036747, 21.813076>,  <34.268826, 28.052095, 22.209339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321167, 28.036747, 21.813076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006282, 0.999263, -0.037876,
		0.991382, -0.001267, 0.130996,
		0.130852, -0.038372, -0.990659,
		34.360424, 28.025236, 21.515879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739838, 28.594772, 22.042683>,  <34.268826, 28.052095, 22.209339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739838, 28.594772, 22.042683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.552029, 28.534798, 21.694645>,  <34.439342, 28.498812, 21.485823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.552029, 28.534798, 21.694645>,  <34.739838, 28.594772, 22.042683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552029, 28.534798, 21.694645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146121, 0.985081, -0.090902,
		0.870744, 0.084459, -0.484429,
		-0.469524, -0.149937, -0.870095,
		34.411171, 28.489817, 21.433617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816990, 29.094299, 21.662338>,  <34.739838, 28.594772, 22.042683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816990, 29.094299, 21.662338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.558273, 28.966854, 21.385170>,  <34.403042, 28.890387, 21.218868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.558273, 28.966854, 21.385170>,  <34.816990, 29.094299, 21.662338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558273, 28.966854, 21.385170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283305, 0.943919, -0.169575,
		0.708091, 0.086628, -0.700787,
		-0.646796, -0.318611, -0.692923,
		34.364235, 28.871271, 21.177294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009842, 29.543299, 21.168060>,  <34.816990, 29.094299, 21.662338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009842, 29.543299, 21.168060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.643307, 29.391270, 21.117683>,  <34.423386, 29.300053, 21.087458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.643307, 29.391270, 21.117683>,  <35.009842, 29.543299, 21.168060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643307, 29.391270, 21.117683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373770, 0.924777, -0.071297,
		0.143568, -0.018258, -0.989472,
		-0.916343, -0.380071, -0.125944,
		34.368404, 29.277248, 21.079901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746754, 30.000467, 20.749987>,  <35.009842, 29.543299, 21.168060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746754, 30.000467, 20.749987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.408260, 29.819523, 20.862602>,  <34.205166, 29.710957, 20.930172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.408260, 29.819523, 20.862602>,  <34.746754, 30.000467, 20.749987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408260, 29.819523, 20.862602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520137, 0.815937, -0.252396,
		-0.115543, -0.360024, -0.925760,
		-0.846231, -0.452360, 0.281538,
		34.154392, 29.683815, 20.947063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326389, 29.945312, 20.187893>,  <34.746754, 30.000467, 20.749987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326389, 29.945312, 20.187893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109520, 29.988369, 20.521229>,  <33.979397, 30.014204, 20.721231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109520, 29.988369, 20.521229>,  <34.326389, 29.945312, 20.187893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109520, 29.988369, 20.521229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281066, 0.911399, -0.300589,
		-0.791863, -0.397196, -0.463884,
		-0.542176, 0.107643, 0.833341,
		33.946869, 30.020662, 20.771231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702965, 30.369524, 19.907036>,  <34.326389, 29.945312, 20.187893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702965, 30.369524, 19.907036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715660, 30.363049, 20.306782>,  <33.723278, 30.359163, 20.546629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715660, 30.363049, 20.306782>,  <33.702965, 30.369524, 19.907036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715660, 30.363049, 20.306782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338417, 0.940637, 0.025985,
		-0.940461, -0.339027, 0.024374,
		0.031736, -0.016189, 0.999365,
		33.725182, 30.358192, 20.606592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082722, 30.016430, 19.642063>,  <33.702965, 30.369524, 19.907036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082722, 30.016430, 19.642063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.813969, 29.987778, 19.347191>,  <32.652718, 29.970587, 19.170267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.813969, 29.987778, 19.347191>,  <33.082722, 30.016430, 19.642063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813969, 29.987778, 19.347191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035553, -0.997284, 0.064500,
		-0.739800, 0.017128, 0.672609,
		-0.671887, -0.071631, -0.737181,
		32.612404, 29.966288, 19.126036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626865, 29.556400, 19.851482>,  <33.082722, 30.016430, 19.642063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626865, 29.556400, 19.851482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561790, 29.555321, 19.456814>,  <32.522743, 29.554672, 19.220013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561790, 29.555321, 19.456814>,  <32.626865, 29.556400, 19.851482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561790, 29.555321, 19.456814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044981, -0.998977, -0.004684,
		-0.985651, -0.045144, 0.162647,
		-0.162692, -0.002699, -0.986673,
		32.512981, 29.554510, 19.160812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102356, 28.960413, 19.796570>,  <32.626865, 29.556400, 19.851482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102356, 28.960413, 19.796570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.272884, 29.024025, 19.440376>,  <32.375202, 29.062193, 19.226660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.272884, 29.024025, 19.440376>,  <32.102356, 28.960413, 19.796570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272884, 29.024025, 19.440376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169179, -0.981072, -0.094213,
		-0.888612, -0.110486, -0.445155,
		0.426319, 0.159030, -0.890484,
		32.400780, 29.071733, 19.173231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757854, 28.547407, 19.446388>,  <32.102356, 28.960413, 19.796570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757854, 28.547407, 19.446388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.100666, 28.598602, 19.246742>,  <32.306355, 28.629318, 19.126955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.100666, 28.598602, 19.246742>,  <31.757854, 28.547407, 19.446388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100666, 28.598602, 19.246742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012443, -0.973518, -0.228270,
		-0.515114, 0.189424, -0.835928,
		0.857031, 0.127987, -0.499116,
		32.357777, 28.636999, 19.097008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759319, 28.212839, 18.879124>,  <31.757854, 28.547407, 19.446388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759319, 28.212839, 18.879124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.157497, 28.249260, 18.890450>,  <32.396404, 28.271112, 18.897245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.157497, 28.249260, 18.890450>,  <31.759319, 28.212839, 18.879124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157497, 28.249260, 18.890450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094966, -0.973457, -0.208238,
		0.008601, 0.209978, -0.977668,
		0.995444, 0.091054, 0.028313,
		32.456131, 28.276577, 18.898943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068176, 27.802256, 18.302269>,  <31.759319, 28.212839, 18.879124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068176, 27.802256, 18.302269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403973, 27.850735, 18.514145>,  <32.605450, 27.879822, 18.641272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403973, 27.850735, 18.514145>,  <32.068176, 27.802256, 18.302269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403973, 27.850735, 18.514145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232650, -0.961108, -0.148812,
		0.491055, 0.248158, -0.835034,
		0.839487, 0.121196, 0.529691,
		32.655819, 27.887093, 18.673052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592434, 27.455879, 17.936323>,  <32.068176, 27.802256, 18.302269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592434, 27.455879, 17.936323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.753399, 27.503357, 18.299416>,  <32.849979, 27.531843, 18.517271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.753399, 27.503357, 18.299416>,  <32.592434, 27.455879, 17.936323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753399, 27.503357, 18.299416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330659, -0.943465, -0.023218,
		0.853656, 0.309492, -0.418910,
		0.402413, 0.118696, 0.907731,
		32.874123, 27.538965, 18.571735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140991, 27.038710, 17.858910>,  <32.592434, 27.455879, 17.936323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140991, 27.038710, 17.858910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.078426, 27.103844, 18.248581>,  <33.040886, 27.142923, 18.482384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.078426, 27.103844, 18.248581>,  <33.140991, 27.038710, 17.858910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078426, 27.103844, 18.248581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346530, -0.914571, 0.208510,
		0.924906, 0.370195, 0.086626,
		-0.156415, 0.162834, 0.974176,
		33.031502, 27.152695, 18.540834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802132, 26.775494, 18.194029>,  <33.140991, 27.038710, 17.858910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802132, 26.775494, 18.194029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493500, 26.767448, 18.448357>,  <33.308323, 26.762621, 18.600952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493500, 26.767448, 18.448357>,  <33.802132, 26.775494, 18.194029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493500, 26.767448, 18.448357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298261, -0.894267, 0.333657,
		0.561880, 0.447082, 0.695994,
		-0.771577, -0.020113, 0.635818,
		33.262028, 26.761415, 18.639103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135502, 26.472868, 18.799530>,  <33.802132, 26.775494, 18.194029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135502, 26.472868, 18.799530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.742943, 26.429882, 18.863163>,  <33.507408, 26.404091, 18.901342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.742943, 26.429882, 18.863163>,  <34.135502, 26.472868, 18.799530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742943, 26.429882, 18.863163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127012, -0.984824, 0.118277,
		0.143959, 0.136282, 0.980155,
		-0.981399, -0.107464, 0.159084,
		33.448524, 26.397642, 18.910889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910271, 26.130142, 19.463648>,  <34.135502, 26.472868, 18.799530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910271, 26.130142, 19.463648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590515, 26.062035, 19.233177>,  <33.398663, 26.021170, 19.094894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590515, 26.062035, 19.233177>,  <33.910271, 26.130142, 19.463648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590515, 26.062035, 19.233177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040225, -0.972017, 0.231440,
		-0.599460, 0.161835, 0.783873,
		-0.799393, -0.170270, -0.576175,
		33.350697, 26.010954, 19.060324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518200, 25.778709, 19.927834>,  <33.910271, 26.130142, 19.463648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518200, 25.778709, 19.927834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.354256, 25.705265, 19.570442>,  <33.255890, 25.661198, 19.356009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.354256, 25.705265, 19.570442>,  <33.518200, 25.778709, 19.927834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354256, 25.705265, 19.570442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066461, -0.982938, 0.171508,
		-0.909723, 0.010914, 0.415073,
		-0.409863, -0.183611, -0.893476,
		33.231297, 25.650183, 19.302399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985336, 25.340052, 19.938566>,  <33.518200, 25.778709, 19.927834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985336, 25.340052, 19.938566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.094761, 25.288139, 19.557343>,  <33.160416, 25.256992, 19.328609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.094761, 25.288139, 19.557343>,  <32.985336, 25.340052, 19.938566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094761, 25.288139, 19.557343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164233, -0.970002, 0.179229,
		-0.947729, -0.205554, -0.244044,
		0.273565, -0.129780, -0.953058,
		33.176830, 25.249205, 19.271425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610287, 24.681360, 19.685457>,  <32.985336, 25.340052, 19.938566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610287, 24.681360, 19.685457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.911839, 24.755821, 19.433422>,  <33.092770, 24.800497, 19.282200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.911839, 24.755821, 19.433422>,  <32.610287, 24.681360, 19.685457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911839, 24.755821, 19.433422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260469, -0.965118, 0.026512,
		-0.603175, -0.184105, -0.776070,
		0.753881, 0.186150, -0.630089,
		33.138004, 24.811666, 19.244396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010998, 24.757172, 19.142557>,  <32.610287, 24.681360, 19.685457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010998, 24.757172, 19.142557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.634754, 24.647327, 19.222404>,  <31.409008, 24.581421, 19.270313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.634754, 24.647327, 19.222404>,  <32.010998, 24.757172, 19.142557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634754, 24.647327, 19.222404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238664, 0.953032, 0.186465,
		-0.241450, 0.127748, -0.961968,
		-0.940607, -0.274609, 0.199621,
		31.352571, 24.564945, 19.282291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643555, 25.155037, 18.626463>,  <32.010998, 24.757172, 19.142557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643555, 25.155037, 18.626463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434927, 25.069145, 18.956760>,  <31.309750, 25.017611, 19.154940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434927, 25.069145, 18.956760>,  <31.643555, 25.155037, 18.626463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434927, 25.069145, 18.956760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332721, 0.942379, 0.034900,
		-0.785659, -0.256540, -0.562963,
		-0.521571, -0.214729, 0.825745,
		31.278456, 25.004726, 19.204483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928167, 25.322258, 18.549683>,  <31.643555, 25.155037, 18.626463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928167, 25.322258, 18.549683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.987785, 25.311893, 18.945080>,  <31.023556, 25.305676, 19.182318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.987785, 25.311893, 18.945080>,  <30.928167, 25.322258, 18.549683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987785, 25.311893, 18.945080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546266, 0.831111, 0.104153,
		-0.824245, -0.555502, 0.109717,
		0.149044, -0.025912, 0.988491,
		31.032499, 25.304119, 19.241627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277163, 25.587801, 18.773359>,  <30.928167, 25.322258, 18.549683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277163, 25.587801, 18.773359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.499811, 25.596756, 19.105545>,  <30.633400, 25.602129, 19.304857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.499811, 25.596756, 19.105545>,  <30.277163, 25.587801, 18.773359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499811, 25.596756, 19.105545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330626, 0.923031, 0.196722,
		-0.762141, -0.384073, 0.521181,
		0.556622, 0.022387, 0.830464,
		30.666798, 25.603472, 19.354685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847525, 25.857073, 19.257036>,  <30.277163, 25.587801, 18.773359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847525, 25.857073, 19.257036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.208403, 25.901096, 19.423859>,  <30.424929, 25.927511, 19.523952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.208403, 25.901096, 19.423859>,  <29.847525, 25.857073, 19.257036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208403, 25.901096, 19.423859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256783, 0.913936, 0.314300,
		-0.346570, -0.390652, 0.852808,
		0.902193, 0.110059, 0.417055,
		30.479061, 25.934114, 19.548975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709629, 26.005764, 20.011646>,  <29.847525, 25.857073, 19.257036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709629, 26.005764, 20.011646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.072191, 26.135254, 19.903107>,  <30.289728, 26.212948, 19.837982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.072191, 26.135254, 19.903107>,  <29.709629, 26.005764, 20.011646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072191, 26.135254, 19.903107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263285, 0.935311, 0.236379,
		0.330318, -0.142813, 0.933003,
		0.906405, 0.323726, -0.271350,
		30.344112, 26.232372, 19.821701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009094, 26.706005, 20.433170>,  <29.709629, 26.005764, 20.011646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009094, 26.706005, 20.433170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.225033, 26.701443, 20.096497>,  <30.354595, 26.698706, 19.894491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.225033, 26.701443, 20.096497>,  <30.009094, 26.706005, 20.433170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225033, 26.701443, 20.096497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211149, 0.966104, -0.148521,
		0.814851, 0.257900, 0.519140,
		0.539846, -0.011407, -0.841686,
		30.386986, 26.698021, 19.843990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473181, 27.251663, 20.443651>,  <30.009094, 26.706005, 20.433170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473181, 27.251663, 20.443651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.422031, 27.174244, 20.054562>,  <30.391342, 27.127792, 19.821108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.422031, 27.174244, 20.054562>,  <30.473181, 27.251663, 20.443651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422031, 27.174244, 20.054562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195440, 0.966460, -0.166608,
		0.972344, 0.168805, -0.161408,
		-0.127870, -0.193546, -0.972722,
		30.383669, 27.116180, 19.762745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913610, 27.776871, 20.070744>,  <30.473181, 27.251663, 20.443651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913610, 27.776871, 20.070744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590908, 27.633430, 19.882893>,  <30.397287, 27.547365, 19.770182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590908, 27.633430, 19.882893>,  <30.913610, 27.776871, 20.070744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590908, 27.633430, 19.882893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181532, 0.906768, -0.380550,
		0.562309, -0.221758, -0.796638,
		-0.806755, -0.358602, -0.469628,
		30.348881, 27.525850, 19.742004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849026, 28.124170, 19.335554>,  <30.913610, 27.776871, 20.070744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849026, 28.124170, 19.335554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.479322, 28.011280, 19.438393>,  <30.257500, 27.943546, 19.500095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.479322, 28.011280, 19.438393>,  <30.849026, 28.124170, 19.335554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479322, 28.011280, 19.438393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359027, 0.871517, -0.334003,
		-0.129799, -0.401009, -0.906832,
		-0.924258, -0.282223, 0.257095,
		30.202045, 27.926613, 19.515522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422525, 28.519747, 18.815922>,  <30.849026, 28.124170, 19.335554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422525, 28.519747, 18.815922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.154551, 28.394489, 19.085178>,  <29.993765, 28.319334, 19.246733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.154551, 28.394489, 19.085178>,  <30.422525, 28.519747, 18.815922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154551, 28.394489, 19.085178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430803, 0.902402, -0.008956,
		-0.604641, -0.295992, -0.739458,
		-0.669939, -0.313145, 0.673143,
		29.953569, 28.300545, 19.287121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819693, 28.670952, 18.517899>,  <30.422525, 28.519747, 18.815922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819693, 28.670952, 18.517899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.736250, 28.637547, 18.907669>,  <29.686184, 28.617504, 19.141531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.736250, 28.637547, 18.907669>,  <29.819693, 28.670952, 18.517899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736250, 28.637547, 18.907669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452575, 0.891491, -0.020483,
		-0.866983, -0.445274, -0.223768,
		-0.208608, -0.083514, 0.974427,
		29.673668, 28.612492, 19.199997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029343, 28.883047, 18.601479>,  <29.819693, 28.670952, 18.517899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029343, 28.883047, 18.601479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.223213, 28.948112, 18.945251>,  <29.339537, 28.987152, 19.151516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.223213, 28.948112, 18.945251>,  <29.029343, 28.883047, 18.601479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223213, 28.948112, 18.945251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437221, 0.896054, 0.076976,
		-0.757578, -0.413071, 0.505418,
		0.484678, 0.162664, 0.859434,
		29.368616, 28.996912, 19.203081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549232, 29.166050, 18.893564>,  <29.029343, 28.883047, 18.601479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549232, 29.166050, 18.893564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.879383, 29.275440, 19.091137>,  <29.077473, 29.341074, 19.209681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.879383, 29.275440, 19.091137>,  <28.549232, 29.166050, 18.893564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879383, 29.275440, 19.091137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417944, 0.884134, 0.208877,
		-0.379577, -0.378837, 0.844040,
		0.825375, 0.273476, 0.493930,
		29.126995, 29.357483, 19.239315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.678894, 36.111401, 31.397327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.832386, 35.742031, 31.395035>,  <38.924480, 35.520409, 31.393660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.832386, 35.742031, 31.395035>,  <38.678894, 36.111401, 31.397327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832386, 35.742031, 31.395035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062584, 0.032200, -0.997520,
		0.921322, 0.382420, 0.070147,
		0.383730, -0.923427, -0.005733,
		38.947506, 35.465004, 31.393314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185989, 36.161831, 30.828876>,  <38.678894, 36.111401, 31.397327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185989, 36.161831, 30.828876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.173534, 35.769661, 30.906635>,  <39.166061, 35.534359, 30.953291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.173534, 35.769661, 30.906635>,  <39.185989, 36.161831, 30.828876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173534, 35.769661, 30.906635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252612, -0.195897, -0.947529,
		0.967067, 0.019605, 0.253767,
		-0.031135, -0.980429, 0.194398,
		39.164192, 35.475533, 30.964954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845730, 35.903767, 30.631468>,  <39.185989, 36.161831, 30.828876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845730, 35.903767, 30.631468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.590527, 35.595955, 30.620419>,  <39.437405, 35.411266, 30.613789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.590527, 35.595955, 30.620419>,  <39.845730, 35.903767, 30.631468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590527, 35.595955, 30.620419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331795, -0.242358, -0.911688,
		0.694879, -0.590831, 0.409954,
		-0.638009, -0.769533, -0.027625,
		39.399124, 35.365093, 30.612131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260147, 35.269318, 30.375456>,  <39.845730, 35.903767, 30.631468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260147, 35.269318, 30.375456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.873123, 35.186867, 30.317013>,  <39.640911, 35.137394, 30.281948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.873123, 35.186867, 30.317013>,  <40.260147, 35.269318, 30.375456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873123, 35.186867, 30.317013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197130, -0.254172, -0.946856,
		0.158041, -0.944937, 0.286560,
		-0.967555, -0.206132, -0.146106,
		39.582855, 35.125027, 30.273182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201290, 34.552223, 30.121330>,  <40.260147, 35.269318, 30.375456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201290, 34.552223, 30.121330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.835747, 34.691376, 30.037582>,  <39.616421, 34.774868, 29.987333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.835747, 34.691376, 30.037582>,  <40.201290, 34.552223, 30.121330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835747, 34.691376, 30.037582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086840, -0.336261, -0.937756,
		-0.396634, -0.875160, 0.277085,
		-0.913860, 0.347885, -0.209372,
		39.561588, 34.795742, 29.974771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815754, 33.934624, 29.703741>,  <40.201290, 34.552223, 30.121330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815754, 33.934624, 29.703741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.658970, 34.291077, 29.612305>,  <39.564899, 34.504948, 29.557444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.658970, 34.291077, 29.612305>,  <39.815754, 33.934624, 29.703741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658970, 34.291077, 29.612305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253192, -0.134388, -0.958036,
		-0.884454, -0.433394, -0.172951,
		-0.391965, 0.891129, -0.228592,
		39.541382, 34.558414, 29.543728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243347, 33.847080, 29.159580>,  <39.815754, 33.934624, 29.703741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243347, 33.847080, 29.159580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.349567, 34.230392, 29.117271>,  <39.413300, 34.460381, 29.091887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.349567, 34.230392, 29.117271>,  <39.243347, 33.847080, 29.159580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349567, 34.230392, 29.117271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216800, -0.166257, -0.961954,
		-0.939404, 0.232519, -0.251904,
		0.265553, 0.958276, -0.105772,
		39.429234, 34.517876, 29.085539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014011, 33.931755, 28.505239>,  <39.243347, 33.847080, 29.159580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014011, 33.931755, 28.505239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.227936, 34.264599, 28.563992>,  <39.356293, 34.464306, 28.599243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.227936, 34.264599, 28.563992>,  <39.014011, 33.931755, 28.505239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227936, 34.264599, 28.563992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211253, 0.036633, -0.976745,
		-0.818135, 0.553407, -0.156192,
		0.534815, 0.832105, 0.146880,
		39.388382, 34.514229, 28.608055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714668, 34.420021, 28.117807>,  <39.014011, 33.931755, 28.505239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714668, 34.420021, 28.117807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.094364, 34.542660, 28.145935>,  <39.322182, 34.616241, 28.162811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.094364, 34.542660, 28.145935>,  <38.714668, 34.420021, 28.117807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094364, 34.542660, 28.145935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052834, 0.064968, -0.996488,
		-0.310089, 0.949620, 0.045471,
		0.949239, 0.306597, 0.070318,
		39.379135, 34.634640, 28.167030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824753, 34.883560, 27.603270>,  <38.714668, 34.420021, 28.117807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824753, 34.883560, 27.603270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.195129, 34.763126, 27.694469>,  <39.417355, 34.690865, 27.749189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.195129, 34.763126, 27.694469>,  <38.824753, 34.883560, 27.603270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195129, 34.763126, 27.694469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252109, 0.043249, -0.966732,
		0.281211, 0.952615, 0.115953,
		0.925938, -0.301089, 0.228000,
		39.472912, 34.672798, 27.762869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310226, 35.194954, 27.024916>,  <38.824753, 34.883560, 27.603270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310226, 35.194954, 27.024916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.556293, 34.922417, 27.183582>,  <39.703934, 34.758896, 27.278782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.556293, 34.922417, 27.183582>,  <39.310226, 35.194954, 27.024916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556293, 34.922417, 27.183582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437927, -0.123065, -0.890547,
		0.655580, 0.721549, 0.222671,
		0.615170, -0.681339, 0.396665,
		39.740845, 34.718014, 27.302582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853790, 35.188026, 26.607222>,  <39.310226, 35.194954, 27.024916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853790, 35.188026, 26.607222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862080, 34.828087, 26.781502>,  <39.867054, 34.612122, 26.886070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862080, 34.828087, 26.781502>,  <39.853790, 35.188026, 26.607222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862080, 34.828087, 26.781502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222947, -0.420660, -0.879398,
		0.974610, 0.115365, 0.191901,
		0.020727, -0.899854, 0.435700,
		39.868298, 34.558132, 26.912212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398121, 34.852554, 26.255589>,  <39.853790, 35.188026, 26.607222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398121, 34.852554, 26.255589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.174416, 34.557262, 26.406448>,  <40.040192, 34.380089, 26.496964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.174416, 34.557262, 26.406448>,  <40.398121, 34.852554, 26.255589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174416, 34.557262, 26.406448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091303, -0.507035, -0.857076,
		0.823947, -0.444896, 0.350969,
		-0.559263, -0.738230, 0.377149,
		40.006638, 34.335793, 26.519592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712784, 34.294727, 25.977856>,  <40.398121, 34.852554, 26.255589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712784, 34.294727, 25.977856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.350758, 34.157883, 26.078911>,  <40.133541, 34.075775, 26.139544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.350758, 34.157883, 26.078911>,  <40.712784, 34.294727, 25.977856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350758, 34.157883, 26.078911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004977, -0.585485, -0.810668,
		0.425252, -0.734962, 0.528197,
		-0.905062, -0.342109, 0.252636,
		40.079239, 34.055248, 26.154701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761330, 33.563046, 26.049067>,  <40.712784, 34.294727, 25.977856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761330, 33.563046, 26.049067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.381824, 33.668652, 25.979610>,  <40.154121, 33.732014, 25.937937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.381824, 33.668652, 25.979610>,  <40.761330, 33.563046, 26.049067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381824, 33.668652, 25.979610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005297, -0.536129, -0.844119,
		-0.315954, -0.801786, 0.507259,
		-0.948760, 0.264016, -0.173640,
		40.097198, 33.747856, 25.927519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446438, 32.969952, 25.801174>,  <40.761330, 33.563046, 26.049067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446438, 32.969952, 25.801174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.180470, 33.239639, 25.672604>,  <40.020889, 33.401451, 25.595461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.180470, 33.239639, 25.672604>,  <40.446438, 32.969952, 25.801174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180470, 33.239639, 25.672604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002662, -0.432474, -0.901643,
		-0.746914, -0.598661, 0.289354,
		-0.664916, 0.674219, -0.321427,
		39.980995, 33.441906, 25.576176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034939, 32.556538, 25.520178>,  <40.446438, 32.969952, 25.801174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034939, 32.556538, 25.520178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.980412, 32.909134, 25.339340>,  <39.947693, 33.120693, 25.230837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.980412, 32.909134, 25.339340>,  <40.034939, 32.556538, 25.520178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980412, 32.909134, 25.339340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255588, -0.472200, -0.843624,
		-0.957126, 0.000545, 0.289670,
		-0.136322, 0.881491, -0.452095,
		39.939514, 33.173580, 25.203712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388184, 32.474178, 25.184128>,  <40.034939, 32.556538, 25.520178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388184, 32.474178, 25.184128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.563232, 32.788628, 25.009544>,  <39.668262, 32.977299, 24.904795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.563232, 32.788628, 25.009544>,  <39.388184, 32.474178, 25.184128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563232, 32.788628, 25.009544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317917, -0.318776, -0.892923,
		-0.841082, 0.529517, 0.110420,
		0.437618, 0.786126, -0.436459,
		39.694519, 33.024464, 24.878607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930496, 32.639542, 24.750372>,  <39.388184, 32.474178, 25.184128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930496, 32.639542, 24.750372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293629, 32.763714, 24.637611>,  <39.511509, 32.838215, 24.569954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293629, 32.763714, 24.637611>,  <38.930496, 32.639542, 24.750372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293629, 32.763714, 24.637611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138569, -0.412418, -0.900394,
		-0.395768, 0.856474, -0.331392,
		0.907836, 0.310427, -0.281902,
		39.565979, 32.856842, 24.553041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886585, 32.566837, 23.978010>,  <38.930496, 32.639542, 24.750372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886585, 32.566837, 23.978010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.272079, 32.654800, 24.038471>,  <39.503376, 32.707581, 24.074749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.272079, 32.654800, 24.038471>,  <38.886585, 32.566837, 23.978010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272079, 32.654800, 24.038471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226707, -0.375953, -0.898478,
		-0.140758, 0.900166, -0.412176,
		0.963738, 0.219911, 0.151155,
		39.561199, 32.720776, 24.083818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100163, 32.811451, 23.319977>,  <38.886585, 32.566837, 23.978010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100163, 32.811451, 23.319977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.429375, 32.711697, 23.524101>,  <39.626904, 32.651844, 23.646576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.429375, 32.711697, 23.524101>,  <39.100163, 32.811451, 23.319977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429375, 32.711697, 23.524101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364917, -0.456324, -0.811544,
		0.435258, 0.854151, -0.284565,
		0.823035, -0.249388, 0.510313,
		39.676285, 32.636879, 23.677195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632103, 33.541691, 23.054180>,  <39.100163, 32.811451, 23.319977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632103, 33.541691, 23.054180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.270401, 33.375702, 23.094425>,  <38.053379, 33.276108, 23.118572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.270401, 33.375702, 23.094425>,  <38.632103, 33.541691, 23.054180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270401, 33.375702, 23.094425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128371, 0.488934, 0.862823,
		-0.407240, 0.767296, -0.495391,
		-0.904255, -0.414970, 0.100615,
		37.999123, 33.251209, 23.124609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410561, 33.887245, 23.583380>,  <38.632103, 33.541691, 23.054180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410561, 33.887245, 23.583380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.102196, 33.632607, 23.591801>,  <37.917179, 33.479824, 23.596853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.102196, 33.632607, 23.591801>,  <38.410561, 33.887245, 23.583380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102196, 33.632607, 23.591801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233582, 0.313303, 0.920478,
		-0.592568, 0.704689, -0.390226,
		-0.770910, -0.636596, 0.021051,
		37.870922, 33.441628, 23.598116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806896, 34.202129, 23.794657>,  <38.410561, 33.887245, 23.583380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806896, 34.202129, 23.794657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.733040, 33.815876, 23.867821>,  <37.688728, 33.584122, 23.911718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.733040, 33.815876, 23.867821>,  <37.806896, 34.202129, 23.794657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733040, 33.815876, 23.867821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401488, 0.243980, 0.882769,
		-0.897060, 0.089557, -0.432740,
		-0.184638, -0.965636, 0.182909,
		37.677647, 33.526184, 23.922693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155758, 34.209820, 24.224409>,  <37.806896, 34.202129, 23.794657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155758, 34.209820, 24.224409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.361069, 33.870861, 24.278759>,  <37.484253, 33.667484, 24.311369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.361069, 33.870861, 24.278759>,  <37.155758, 34.209820, 24.224409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361069, 33.870861, 24.278759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173817, 0.052397, 0.983383,
		-0.840439, -0.528362, -0.120399,
		0.513274, -0.847400, 0.135875,
		37.515053, 33.616642, 24.319521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603813, 33.822788, 24.475309>,  <37.155758, 34.209820, 24.224409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603813, 33.822788, 24.475309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.958885, 33.672684, 24.582043>,  <37.171928, 33.582619, 24.646084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.958885, 33.672684, 24.582043>,  <36.603813, 33.822788, 24.475309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958885, 33.672684, 24.582043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223513, 0.155479, 0.962220,
		-0.402574, -0.913785, 0.054140,
		0.887680, -0.375264, 0.266835,
		37.225189, 33.560104, 24.662092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425968, 33.356155, 25.008217>,  <36.603813, 33.822788, 24.475309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425968, 33.356155, 25.008217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.812954, 33.453880, 25.034527>,  <37.045147, 33.512516, 25.050312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.812954, 33.453880, 25.034527>,  <36.425968, 33.356155, 25.008217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812954, 33.453880, 25.034527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119236, 0.210966, 0.970194,
		0.223156, -0.946469, 0.233233,
		0.967463, 0.244315, 0.065775,
		37.103191, 33.527172, 25.054260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545650, 33.175991, 25.664145>,  <36.425968, 33.356155, 25.008217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545650, 33.175991, 25.664145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.845940, 33.421917, 25.567471>,  <37.026112, 33.569473, 25.509466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.845940, 33.421917, 25.567471>,  <36.545650, 33.175991, 25.664145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845940, 33.421917, 25.567471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098310, 0.465749, 0.879439,
		0.653261, -0.636455, 0.410091,
		0.750723, 0.614819, -0.241686,
		37.071156, 33.606361, 25.494965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031593, 33.109207, 26.276720>,  <36.545650, 33.175991, 25.664145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031593, 33.109207, 26.276720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.097790, 33.454224, 26.085457>,  <37.137508, 33.661232, 25.970699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.097790, 33.454224, 26.085457>,  <37.031593, 33.109207, 26.276720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097790, 33.454224, 26.085457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021287, 0.481604, 0.876130,
		0.985981, -0.155170, 0.061341,
		0.165491, 0.862543, -0.478156,
		37.147438, 33.712986, 25.942011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532383, 33.472164, 26.713623>,  <37.031593, 33.109207, 26.276720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532383, 33.472164, 26.713623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.374966, 33.760750, 26.485722>,  <37.280518, 33.933903, 26.348982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.374966, 33.760750, 26.485722>,  <37.532383, 33.472164, 26.713623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374966, 33.760750, 26.485722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029340, 0.609590, 0.792174,
		0.918840, 0.328468, -0.218730,
		-0.393539, 0.721463, -0.569752,
		37.256905, 33.977188, 26.314796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779228, 34.056255, 27.039978>,  <37.532383, 33.472164, 26.713623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779228, 34.056255, 27.039978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.482769, 34.206360, 26.817310>,  <37.304893, 34.296425, 26.683710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.482769, 34.206360, 26.817310>,  <37.779228, 34.056255, 27.039978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482769, 34.206360, 26.817310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116858, 0.744415, 0.657412,
		0.661098, 0.552288, -0.507866,
		-0.741144, 0.375265, -0.556670,
		37.260426, 34.318939, 26.650309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937172, 34.664478, 27.075411>,  <37.779228, 34.056255, 27.039978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937172, 34.664478, 27.075411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.551598, 34.661831, 26.968990>,  <37.320251, 34.660244, 26.905138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.551598, 34.661831, 26.968990>,  <37.937172, 34.664478, 27.075411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551598, 34.661831, 26.968990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198636, 0.683198, 0.702698,
		0.177116, 0.730203, -0.659874,
		-0.963937, -0.006616, -0.266050,
		37.262417, 34.659847, 26.889175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760094, 35.387737, 26.862133>,  <37.937172, 34.664478, 27.075411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760094, 35.387737, 26.862133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.431438, 35.196156, 26.985752>,  <37.234245, 35.081207, 27.059923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.431438, 35.196156, 26.985752>,  <37.760094, 35.387737, 26.862133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431438, 35.196156, 26.985752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090954, 0.645400, 0.758411,
		-0.562701, 0.595033, -0.573850,
		-0.821642, -0.478952, 0.309047,
		37.184944, 35.052471, 27.078466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338787, 35.888313, 27.025707>,  <37.760094, 35.387737, 26.862133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338787, 35.888313, 27.025707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.164421, 35.576870, 27.206261>,  <37.059803, 35.390003, 27.314592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.164421, 35.576870, 27.206261>,  <37.338787, 35.888313, 27.025707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164421, 35.576870, 27.206261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018076, 0.509017, 0.860567,
		-0.899806, 0.366975, -0.235962,
		-0.435915, -0.778608, 0.451383,
		37.033646, 35.343288, 27.341675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770123, 36.150551, 27.363510>,  <37.338787, 35.888313, 27.025707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770123, 36.150551, 27.363510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.807644, 35.795506, 27.543884>,  <36.830158, 35.582478, 27.652109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.807644, 35.795506, 27.543884>,  <36.770123, 36.150551, 27.363510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807644, 35.795506, 27.543884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190349, 0.428586, 0.883222,
		-0.977225, -0.168684, -0.128754,
		0.093804, -0.887615, 0.450934,
		36.835785, 35.529221, 27.679165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130699, 36.025482, 27.790821>,  <36.770123, 36.150551, 27.363510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130699, 36.025482, 27.790821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.427803, 35.814583, 27.955894>,  <36.606068, 35.688042, 28.054939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.427803, 35.814583, 27.955894>,  <36.130699, 36.025482, 27.790821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427803, 35.814583, 27.955894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191878, 0.422886, 0.885635,
		-0.641470, -0.737003, 0.212936,
		0.742764, -0.527251, 0.412684,
		36.650631, 35.656406, 28.079700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919777, 35.886070, 28.421450>,  <36.130699, 36.025482, 27.790821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919777, 35.886070, 28.421450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.310635, 35.816021, 28.469662>,  <36.545147, 35.773991, 28.498589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.310635, 35.816021, 28.469662>,  <35.919777, 35.886070, 28.421450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310635, 35.816021, 28.469662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075650, 0.243418, 0.966967,
		-0.198680, -0.953981, 0.224605,
		0.977141, -0.175125, 0.120530,
		36.603775, 35.763485, 28.505821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888317, 35.610626, 28.981621>,  <35.919777, 35.886070, 28.421450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888317, 35.610626, 28.981621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.279766, 35.692287, 28.971615>,  <36.514633, 35.741283, 28.965611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.279766, 35.692287, 28.971615>,  <35.888317, 35.610626, 28.981621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279766, 35.692287, 28.971615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011867, 0.065372, 0.997790,
		0.205335, -0.976754, 0.061551,
		0.978620, 0.204151, -0.025015,
		36.573353, 35.753532, 28.964111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233097, 35.158714, 29.491655>,  <35.888317, 35.610626, 28.981621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233097, 35.158714, 29.491655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.492046, 35.461067, 29.452576>,  <36.647415, 35.642479, 29.429129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.492046, 35.461067, 29.452576>,  <36.233097, 35.158714, 29.491655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492046, 35.461067, 29.452576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031150, 0.154316, 0.987531,
		0.761535, -0.636260, 0.123445,
		0.647375, 0.755884, -0.097698,
		36.686260, 35.687832, 29.423267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861786, 35.040821, 30.032667>,  <36.233097, 35.158714, 29.491655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861786, 35.040821, 30.032667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.818226, 35.424053, 29.926662>,  <36.792091, 35.653992, 29.863060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.818226, 35.424053, 29.926662>,  <36.861786, 35.040821, 30.032667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818226, 35.424053, 29.926662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118115, 0.277180, 0.953530,
		0.987011, 0.072536, -0.143348,
		-0.108899, 0.958076, -0.265012,
		36.785557, 35.711475, 29.847158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383129, 35.356873, 30.401602>,  <36.861786, 35.040821, 30.032667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383129, 35.356873, 30.401602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.139263, 35.665077, 30.327187>,  <36.992943, 35.850002, 30.282537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.139263, 35.665077, 30.327187>,  <37.383129, 35.356873, 30.401602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139263, 35.665077, 30.327187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022375, 0.251337, 0.967641,
		0.792340, 0.585778, -0.170473,
		-0.609669, 0.770515, -0.186037,
		36.956364, 35.896233, 30.271376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595890, 35.889137, 30.891325>,  <37.383129, 35.356873, 30.401602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595890, 35.889137, 30.891325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.256752, 36.035515, 30.737839>,  <37.053268, 36.123341, 30.645746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.256752, 36.035515, 30.737839>,  <37.595890, 35.889137, 30.891325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256752, 36.035515, 30.737839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125667, 0.564365, 0.815904,
		0.515134, 0.739982, -0.432508,
		-0.847847, 0.365949, -0.383715,
		37.002399, 36.145298, 30.622725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.174265, 24.287024, 20.864019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.532309, 24.227863, 21.032261>,  <28.747135, 24.192368, 21.133205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.532309, 24.227863, 21.032261>,  <28.174265, 24.287024, 20.864019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532309, 24.227863, 21.032261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006193, -0.939159, -0.343426,
		0.445805, 0.310009, -0.839734,
		0.895109, -0.147900, 0.420602,
		28.800840, 24.183493, 21.158442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523596, 23.848845, 20.432804>,  <28.174265, 24.287024, 20.864019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523596, 23.848845, 20.432804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.698454, 23.813751, 20.790844>,  <28.803370, 23.792696, 21.005669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.698454, 23.813751, 20.790844>,  <28.523596, 23.848845, 20.432804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698454, 23.813751, 20.790844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083336, -0.986998, -0.137440,
		0.895522, 0.134675, -0.424150,
		0.437145, -0.087733, 0.895102,
		28.829597, 23.787432, 21.059374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142740, 23.458727, 20.255192>,  <28.523596, 23.848845, 20.432804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142740, 23.458727, 20.255192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.082470, 23.417439, 20.648464>,  <29.046307, 23.392666, 20.884428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.082470, 23.417439, 20.648464>,  <29.142740, 23.458727, 20.255192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082470, 23.417439, 20.648464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290919, -0.955125, -0.055692,
		0.944808, 0.277634, 0.173945,
		-0.150678, -0.103222, 0.983179,
		29.037266, 23.386473, 20.943419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726130, 23.118551, 20.531948>,  <29.142740, 23.458727, 20.255192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726130, 23.118551, 20.531948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.442448, 23.053581, 20.806362>,  <29.272238, 23.014599, 20.971010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.442448, 23.053581, 20.806362>,  <29.726130, 23.118551, 20.531948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442448, 23.053581, 20.806362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142679, -0.986030, -0.085955,
		0.690414, 0.036923, 0.722472,
		-0.709205, -0.162426, 0.686037,
		29.229687, 23.004854, 21.012173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976486, 22.562519, 20.842381>,  <29.726130, 23.118551, 20.531948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976486, 22.562519, 20.842381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.594995, 22.571411, 20.962322>,  <29.366100, 22.576746, 21.034286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.594995, 22.571411, 20.962322>,  <29.976486, 22.562519, 20.842381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594995, 22.571411, 20.962322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007331, -0.998686, 0.050718,
		0.300587, 0.046173, 0.952636,
		-0.953726, 0.022228, 0.299854,
		29.308878, 22.578079, 21.052279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906025, 22.347174, 21.629303>,  <29.976486, 22.562519, 20.842381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906025, 22.347174, 21.629303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.546162, 22.299301, 21.461357>,  <29.330244, 22.270576, 21.360590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.546162, 22.299301, 21.461357>,  <29.906025, 22.347174, 21.629303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546162, 22.299301, 21.461357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046688, -0.982551, 0.180037,
		-0.434088, 0.142369, 0.889550,
		-0.899660, -0.119683, -0.419867,
		29.276264, 22.263395, 21.335398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504988, 22.008236, 22.040974>,  <29.906025, 22.347174, 21.629303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504988, 22.008236, 22.040974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.346241, 21.933437, 21.681522>,  <29.250994, 21.888559, 21.465853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.346241, 21.933437, 21.681522>,  <29.504988, 22.008236, 22.040974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346241, 21.933437, 21.681522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089644, -0.982244, 0.164804,
		-0.913488, -0.015152, 0.406583,
		-0.396867, -0.186995, -0.898627,
		29.227180, 21.877338, 21.411934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933847, 21.586306, 22.190500>,  <29.504988, 22.008236, 22.040974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933847, 21.586306, 22.190500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.966791, 21.503296, 21.800598>,  <28.986557, 21.453489, 21.566656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.966791, 21.503296, 21.800598>,  <28.933847, 21.586306, 22.190500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966791, 21.503296, 21.800598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113303, -0.973687, 0.197724,
		-0.990141, 0.094159, -0.103703,
		0.082357, -0.207524, -0.974757,
		28.991499, 21.441038, 21.508171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497528, 21.114429, 22.081238>,  <28.933847, 21.586306, 22.190500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497528, 21.114429, 22.081238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.766262, 21.060204, 21.789963>,  <28.927502, 21.027668, 21.615198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.766262, 21.060204, 21.789963>,  <28.497528, 21.114429, 22.081238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766262, 21.060204, 21.789963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028142, -0.977727, 0.207984,
		-0.740166, -0.160224, -0.653057,
		0.671835, -0.135564, -0.728189,
		28.967813, 21.019535, 21.571507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332609, 20.469110, 21.818535>,  <28.497528, 21.114429, 22.081238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332609, 20.469110, 21.818535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.709944, 20.509911, 21.692226>,  <28.936344, 20.534391, 21.616442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.709944, 20.509911, 21.692226>,  <28.332609, 20.469110, 21.818535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709944, 20.509911, 21.692226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164129, -0.970459, 0.176837,
		-0.288403, -0.218644, -0.932212,
		0.943337, 0.102002, -0.315769,
		28.992945, 20.540512, 21.597496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485933, 19.797396, 21.460155>,  <28.332609, 20.469110, 21.818535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485933, 19.797396, 21.460155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.850519, 19.952885, 21.514015>,  <29.069271, 20.046177, 21.546331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.850519, 19.952885, 21.514015>,  <28.485933, 19.797396, 21.460155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850519, 19.952885, 21.514015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371221, -0.918233, 0.137999,
		0.177281, -0.075797, -0.981237,
		0.911464, 0.388721, 0.134648,
		29.123959, 20.069500, 21.554409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976400, 19.429436, 20.953747>,  <28.485933, 19.797396, 21.460155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976400, 19.429436, 20.953747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.179268, 19.625851, 21.237061>,  <29.300987, 19.743700, 21.407049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.179268, 19.625851, 21.237061>,  <28.976400, 19.429436, 20.953747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179268, 19.625851, 21.237061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485693, -0.841733, 0.235772,
		0.711958, 0.224433, -0.665391,
		0.507167, 0.491035, 0.708284,
		29.331417, 19.773161, 21.449545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632135, 19.113993, 20.914284>,  <28.976400, 19.429436, 20.953747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632135, 19.113993, 20.914284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.602001, 19.270042, 21.281353>,  <29.583920, 19.363672, 21.501595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.602001, 19.270042, 21.281353>,  <29.632135, 19.113993, 20.914284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602001, 19.270042, 21.281353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459221, -0.803317, 0.379207,
		0.885122, 0.449984, -0.118634,
		-0.075336, 0.390123, 0.917675,
		29.579401, 19.387079, 21.556656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802355, 19.138809, 20.135855>,  <29.632135, 19.113993, 20.914284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802355, 19.138809, 20.135855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.437876, 18.974686, 20.150616>,  <29.219189, 18.876211, 20.159472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.437876, 18.974686, 20.150616>,  <29.802355, 19.138809, 20.135855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437876, 18.974686, 20.150616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068315, 0.062162, -0.995725,
		0.406262, -0.909825, -0.084673,
		-0.911200, -0.410310, 0.036900,
		29.164516, 18.851593, 20.161686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349352, 19.557095, 19.926649>,  <29.802355, 19.138809, 20.135855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349352, 19.557095, 19.926649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.603916, 19.464970, 19.632183>,  <30.756655, 19.409695, 19.455503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.603916, 19.464970, 19.632183>,  <30.349352, 19.557095, 19.926649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603916, 19.464970, 19.632183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134194, 0.972888, -0.188364,
		0.759589, 0.021087, 0.650061,
		0.636408, -0.230313, -0.736166,
		30.794838, 19.395876, 19.411333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993574, 20.026661, 20.003641>,  <30.349352, 19.557095, 19.926649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993574, 20.026661, 20.003641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.986322, 19.886810, 19.628956>,  <30.981972, 19.802900, 19.404144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.986322, 19.886810, 19.628956>,  <30.993574, 20.026661, 20.003641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986322, 19.886810, 19.628956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275343, 0.898897, -0.340839,
		0.961175, -0.264098, 0.079969,
		-0.018131, -0.349624, -0.936714,
		30.980883, 19.781923, 19.347942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609102, 20.256323, 19.774511>,  <30.993574, 20.026661, 20.003641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609102, 20.256323, 19.774511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.405418, 20.153904, 19.445843>,  <31.283207, 20.092453, 19.248642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.405418, 20.153904, 19.445843>,  <31.609102, 20.256323, 19.774511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405418, 20.153904, 19.445843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171164, 0.905520, -0.388248,
		0.843449, -0.338340, -0.417275,
		-0.509211, -0.256045, -0.821672,
		31.252655, 20.077091, 19.199341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975470, 20.528458, 19.195053>,  <31.609102, 20.256323, 19.774511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975470, 20.528458, 19.195053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.618162, 20.459244, 19.029099>,  <31.403778, 20.417715, 18.929525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.618162, 20.459244, 19.029099>,  <31.975470, 20.528458, 19.195053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618162, 20.459244, 19.029099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057498, 0.871385, -0.487218,
		0.445832, -0.459072, -0.768432,
		-0.893268, -0.173034, -0.414887,
		31.350182, 20.407333, 18.904633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082970, 20.605915, 18.540550>,  <31.975470, 20.528458, 19.195053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082970, 20.605915, 18.540550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697315, 20.659218, 18.632366>,  <31.465923, 20.691198, 18.687456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697315, 20.659218, 18.632366>,  <32.082970, 20.605915, 18.540550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697315, 20.659218, 18.632366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084835, 0.974183, -0.209214,
		-0.251492, -0.182237, -0.950548,
		-0.964134, 0.133256, 0.229539,
		31.408075, 20.699194, 18.701227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777969, 21.050798, 18.105787>,  <32.082970, 20.605915, 18.540550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777969, 21.050798, 18.105787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.491314, 21.069866, 18.384113>,  <31.319321, 21.081306, 18.551109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.491314, 21.069866, 18.384113>,  <31.777969, 21.050798, 18.105787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491314, 21.069866, 18.384113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170859, 0.955263, -0.241413,
		-0.676193, -0.291892, -0.676433,
		-0.716638, 0.047668, 0.695815,
		31.276323, 21.084166, 18.592857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305408, 21.531216, 17.865248>,  <31.777969, 21.050798, 18.105787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305408, 21.531216, 17.865248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210415, 21.510757, 18.253265>,  <31.153419, 21.498484, 18.486076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210415, 21.510757, 18.253265>,  <31.305408, 21.531216, 17.865248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210415, 21.510757, 18.253265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071706, 0.996812, 0.035000,
		-0.968741, -0.061246, -0.240394,
		-0.237484, -0.051143, 0.970044,
		31.139170, 21.495415, 18.544279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682688, 22.076462, 17.985603>,  <31.305408, 21.531216, 17.865248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682688, 22.076462, 17.985603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872450, 21.999062, 18.329113>,  <30.986307, 21.952621, 18.535219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872450, 21.999062, 18.329113>,  <30.682688, 22.076462, 17.985603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872450, 21.999062, 18.329113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025723, 0.972079, 0.233238,
		-0.879929, -0.132741, 0.456184,
		0.474407, -0.193499, 0.858776,
		31.014772, 21.941011, 18.586746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260677, 22.343899, 18.369986>,  <30.682688, 22.076462, 17.985603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260677, 22.343899, 18.369986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.618992, 22.334194, 18.547512>,  <30.833981, 22.328371, 18.654028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.618992, 22.334194, 18.547512>,  <30.260677, 22.343899, 18.369986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618992, 22.334194, 18.547512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197578, 0.872700, 0.446494,
		-0.398153, -0.487653, 0.776961,
		0.895788, -0.024263, 0.443818,
		30.887728, 22.326916, 18.680656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141548, 22.644913, 19.068668>,  <30.260677, 22.343899, 18.369986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141548, 22.644913, 19.068668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.538641, 22.643257, 19.020557>,  <30.776897, 22.642263, 18.991690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.538641, 22.643257, 19.020557>,  <30.141548, 22.644913, 19.068668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538641, 22.643257, 19.020557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053966, 0.908605, 0.414155,
		0.107572, -0.417636, 0.902225,
		0.992731, -0.004138, -0.120279,
		30.836460, 22.642015, 18.984474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406075, 22.886108, 19.634163>,  <30.141548, 22.644913, 19.068668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406075, 22.886108, 19.634163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.701344, 22.915882, 19.365967>,  <30.878506, 22.933746, 19.205050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.701344, 22.915882, 19.365967>,  <30.406075, 22.886108, 19.634163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701344, 22.915882, 19.365967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065234, 0.981361, 0.180763,
		0.671449, -0.177173, 0.719559,
		0.738174, 0.074434, -0.670492,
		30.922796, 22.938211, 19.164820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002605, 23.170523, 20.028351>,  <30.406075, 22.886108, 19.634163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002605, 23.170523, 20.028351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.035530, 23.255760, 19.638927>,  <31.055285, 23.306902, 19.405273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.035530, 23.255760, 19.638927>,  <31.002605, 23.170523, 20.028351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035530, 23.255760, 19.638927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155308, 0.962196, 0.223737,
		0.984431, -0.169617, 0.046105,
		0.082312, 0.213093, -0.973559,
		31.060225, 23.319689, 19.346859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598248, 23.600706, 20.062853>,  <31.002605, 23.170523, 20.028351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598248, 23.600706, 20.062853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.411058, 23.666382, 19.715511>,  <31.298744, 23.705788, 19.507107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.411058, 23.666382, 19.715511>,  <31.598248, 23.600706, 20.062853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411058, 23.666382, 19.715511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119766, 0.985307, 0.121759,
		0.875588, -0.047020, -0.480764,
		-0.467975, 0.164190, -0.868355,
		31.270666, 23.715639, 19.455006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986689, 24.093155, 19.653999>,  <31.598248, 23.600706, 20.062853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986689, 24.093155, 19.653999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.625299, 24.104145, 19.482895>,  <31.408466, 24.110739, 19.380232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.625299, 24.104145, 19.482895>,  <31.986689, 24.093155, 19.653999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625299, 24.104145, 19.482895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065082, 0.995166, -0.073545,
		0.423673, -0.094285, -0.900895,
		-0.903474, 0.027473, -0.427761,
		31.354258, 24.112387, 19.354567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544483, 24.175518, 19.187149>,  <31.986689, 24.093155, 19.653999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544483, 24.175518, 19.187149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927105, 24.288761, 19.159302>,  <33.156677, 24.356707, 19.142593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927105, 24.288761, 19.159302>,  <32.544483, 24.175518, 19.187149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927105, 24.288761, 19.159302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285195, -0.958218, 0.021945,
		-0.060497, -0.040846, -0.997332,
		0.956558, 0.283106, -0.069618,
		33.214073, 24.373693, 19.138416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863567, 23.697355, 18.690666>,  <32.544483, 24.175518, 19.187149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863567, 23.697355, 18.690666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.159016, 23.845886, 18.915718>,  <33.336285, 23.935005, 19.050749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.159016, 23.845886, 18.915718>,  <32.863567, 23.697355, 18.690666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159016, 23.845886, 18.915718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481230, -0.874909, -0.054336,
		0.472073, 0.310887, -0.824922,
		0.738624, 0.371327, 0.562629,
		33.380604, 23.957285, 19.084507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455090, 23.441936, 18.446993>,  <32.863567, 23.697355, 18.690666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455090, 23.441936, 18.446993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559101, 23.548725, 18.818176>,  <33.621510, 23.612799, 19.040886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559101, 23.548725, 18.818176>,  <33.455090, 23.441936, 18.446993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559101, 23.548725, 18.818176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521154, -0.847831, 0.097882,
		0.812886, 0.458158, -0.359595,
		0.260031, 0.266971, 0.927961,
		33.637112, 23.628817, 19.096565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190796, 23.452124, 18.414394>,  <33.455090, 23.441936, 18.446993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190796, 23.452124, 18.414394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076195, 23.425880, 18.796726>,  <34.007435, 23.410133, 19.026125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076195, 23.425880, 18.796726>,  <34.190796, 23.452124, 18.414394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076195, 23.425880, 18.796726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552451, -0.826405, 0.108870,
		0.782759, 0.559241, 0.273016,
		-0.286506, -0.065609, 0.955829,
		33.990242, 23.406199, 19.083475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698959, 23.231485, 18.800919>,  <34.190796, 23.452124, 18.414394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698959, 23.231485, 18.800919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419983, 23.148918, 19.075428>,  <34.252598, 23.099377, 19.240133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419983, 23.148918, 19.075428>,  <34.698959, 23.231485, 18.800919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419983, 23.148918, 19.075428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519533, -0.805240, 0.285785,
		0.493622, 0.555859, 0.668848,
		-0.697439, -0.206419, 0.686272,
		34.210751, 23.086992, 19.281309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047138, 22.983847, 19.395643>,  <34.698959, 23.231485, 18.800919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047138, 22.983847, 19.395643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668018, 22.866020, 19.444466>,  <34.440544, 22.795324, 19.473759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668018, 22.866020, 19.444466>,  <35.047138, 22.983847, 19.395643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668018, 22.866020, 19.444466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316752, -0.913713, 0.254553,
		0.036543, 0.279929, 0.959325,
		-0.947804, -0.294566, 0.122058,
		34.383678, 22.777651, 19.481083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010380, 22.636343, 20.039665>,  <35.047138, 22.983847, 19.395643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010380, 22.636343, 20.039665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.694637, 22.512352, 19.827690>,  <34.505192, 22.437958, 19.700506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.694637, 22.512352, 19.827690>,  <35.010380, 22.636343, 20.039665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694637, 22.512352, 19.827690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191167, -0.944364, 0.267641,
		-0.583415, 0.109958, 0.804697,
		-0.789356, -0.309977, -0.529936,
		34.457832, 22.419359, 19.668709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820656, 22.579712, 20.812315>,  <35.010380, 22.636343, 20.039665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820656, 22.579712, 20.812315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068188, 22.637619, 21.121143>,  <35.216705, 22.672363, 21.306440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068188, 22.637619, 21.121143>,  <34.820656, 22.579712, 20.812315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068188, 22.637619, 21.121143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267330, 0.963015, 0.033701,
		-0.738638, -0.227253, 0.634641,
		0.618828, 0.144766, 0.772072,
		35.253838, 22.681049, 21.352764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425179, 23.008982, 21.381977>,  <34.820656, 22.579712, 20.812315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425179, 23.008982, 21.381977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818806, 23.043365, 21.444221>,  <35.054981, 23.063995, 21.481569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818806, 23.043365, 21.444221>,  <34.425179, 23.008982, 21.381977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818806, 23.043365, 21.444221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100079, 0.991317, 0.085290,
		-0.146930, -0.099505, 0.984129,
		0.984071, 0.085959, 0.155613,
		35.114029, 23.069153, 21.490906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362358, 23.628212, 21.577747>,  <34.425179, 23.008982, 21.381977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362358, 23.628212, 21.577747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755020, 23.555103, 21.556000>,  <34.990616, 23.511238, 21.542952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755020, 23.555103, 21.556000>,  <34.362358, 23.628212, 21.577747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755020, 23.555103, 21.556000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188299, 0.974108, 0.125127,
		0.030090, -0.133068, 0.990650,
		0.981651, -0.182773, -0.054367,
		35.049515, 23.500271, 21.539690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674309, 23.953287, 22.119976>,  <34.362358, 23.628212, 21.577747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674309, 23.953287, 22.119976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911278, 23.927471, 21.798759>,  <35.053459, 23.911982, 21.606030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911278, 23.927471, 21.798759>,  <34.674309, 23.953287, 22.119976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911278, 23.927471, 21.798759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247316, 0.963225, 0.105038,
		0.766728, -0.260831, 0.586596,
		0.592421, -0.064540, -0.803039,
		35.089005, 23.908110, 21.557848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244865, 24.315428, 22.298141>,  <34.674309, 23.953287, 22.119976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244865, 24.315428, 22.298141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261200, 24.271866, 21.900856>,  <35.271000, 24.245728, 21.662485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261200, 24.271866, 21.900856>,  <35.244865, 24.315428, 22.298141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261200, 24.271866, 21.900856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153453, 0.982932, -0.101471,
		0.987312, -0.148268, 0.056848,
		0.040832, -0.108907, -0.993213,
		35.273449, 24.239193, 21.602892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735271, 24.780977, 22.023615>,  <35.244865, 24.315428, 22.298141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735271, 24.780977, 22.023615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.515278, 24.705185, 21.698257>,  <35.383282, 24.659710, 21.503042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.515278, 24.705185, 21.698257>,  <35.735271, 24.780977, 22.023615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515278, 24.705185, 21.698257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009978, 0.975344, -0.220463,
		0.835112, -0.113136, -0.538319,
		-0.549989, -0.189483, -0.813393,
		35.350281, 24.648340, 21.454239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107513, 25.107548, 21.402891>,  <35.735271, 24.780977, 22.023615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107513, 25.107548, 21.402891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.729084, 25.059280, 21.282639>,  <35.502026, 25.030321, 21.210487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.729084, 25.059280, 21.282639>,  <36.107513, 25.107548, 21.402891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729084, 25.059280, 21.282639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045494, 0.869347, -0.492103,
		0.320734, -0.479244, -0.816979,
		-0.946076, -0.120666, -0.300632,
		35.445263, 25.023081, 21.192450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.568253, 20.494226, 24.603485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.553581, 20.485481, 24.203850>,  <30.544779, 20.480234, 23.964069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.553581, 20.485481, 24.203850>,  <30.568253, 20.494226, 24.603485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553581, 20.485481, 24.203850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007601, 0.999726, -0.022154,
		0.999298, -0.008407, -0.036501,
		-0.036677, -0.021861, -0.999088,
		30.542578, 20.478924, 23.904123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142633, 20.837664, 24.387787>,  <30.568253, 20.494226, 24.603485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142633, 20.837664, 24.387787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.873177, 20.856693, 24.092777>,  <30.711502, 20.868111, 23.915771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.873177, 20.856693, 24.092777>,  <31.142633, 20.837664, 24.387787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873177, 20.856693, 24.092777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199543, 0.972572, -0.119525,
		0.711608, -0.227685, -0.664661,
		-0.673644, 0.047574, -0.737523,
		30.671083, 20.870966, 23.871521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464922, 21.248573, 23.926363>,  <31.142633, 20.837664, 24.387787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464922, 21.248573, 23.926363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.074301, 21.271519, 23.843365>,  <30.839928, 21.285286, 23.793566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.074301, 21.271519, 23.843365>,  <31.464922, 21.248573, 23.926363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074301, 21.271519, 23.843365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063378, 0.997737, -0.022455,
		0.205739, -0.035079, -0.977978,
		-0.976552, 0.057362, -0.207497,
		30.781336, 21.288727, 23.781116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452625, 21.752510, 23.421721>,  <31.464922, 21.248573, 23.926363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452625, 21.752510, 23.421721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.063406, 21.716740, 23.506741>,  <30.829874, 21.695278, 23.557753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.063406, 21.716740, 23.506741>,  <31.452625, 21.752510, 23.421721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063406, 21.716740, 23.506741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118863, 0.984363, -0.130007,
		-0.197600, -0.151767, -0.968463,
		-0.973050, -0.089425, 0.212550,
		30.771492, 21.689913, 23.570505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054174, 22.182497, 22.886133>,  <31.452625, 21.752510, 23.421721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054174, 22.182497, 22.886133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.838604, 22.141701, 23.220596>,  <30.709263, 22.117224, 23.421274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.838604, 22.141701, 23.220596>,  <31.054174, 22.182497, 22.886133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838604, 22.141701, 23.220596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080055, 0.994351, 0.069689,
		-0.838541, -0.029381, -0.544045,
		-0.538924, -0.101991, 0.836157,
		30.676928, 22.111103, 23.471443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488644, 22.675406, 22.847740>,  <31.054174, 22.182497, 22.886133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488644, 22.675406, 22.847740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.536608, 22.594650, 23.236557>,  <30.565386, 22.546198, 23.469847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.536608, 22.594650, 23.236557>,  <30.488644, 22.675406, 22.847740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536608, 22.594650, 23.236557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254849, 0.940037, 0.226678,
		-0.959517, -0.274905, 0.061269,
		0.119910, -0.201887, 0.972041,
		30.572580, 22.534084, 23.528170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022032, 23.137064, 23.061630>,  <30.488644, 22.675406, 22.847740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022032, 23.137064, 23.061630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.231108, 23.003338, 23.375324>,  <30.356554, 22.923101, 23.563541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.231108, 23.003338, 23.375324>,  <30.022032, 23.137064, 23.061630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231108, 23.003338, 23.375324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165041, 0.862817, 0.477815,
		-0.836394, -0.379181, 0.395811,
		0.522691, -0.334317, 0.784236,
		30.387915, 22.903044, 23.610596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635752, 23.238762, 23.650019>,  <30.022032, 23.137064, 23.061630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635752, 23.238762, 23.650019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.027573, 23.219486, 23.728153>,  <30.262665, 23.207920, 23.775034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.027573, 23.219486, 23.728153>,  <29.635752, 23.238762, 23.650019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027573, 23.219486, 23.728153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064206, 0.845254, 0.530493,
		-0.190674, -0.532187, 0.824876,
		0.979551, -0.048189, 0.195338,
		30.321438, 23.205030, 23.786755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621773, 23.331810, 24.238302>,  <29.635752, 23.238762, 23.650019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621773, 23.331810, 24.238302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.000319, 23.404663, 24.131550>,  <30.227446, 23.448376, 24.067499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.000319, 23.404663, 24.131550>,  <29.621773, 23.331810, 24.238302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000319, 23.404663, 24.131550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014082, 0.848450, 0.529088,
		0.322799, -0.496952, 0.805506,
		0.946363, 0.182132, -0.266881,
		30.284227, 23.459303, 24.051485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915518, 23.562662, 24.842737>,  <29.621773, 23.331810, 24.238302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915518, 23.562662, 24.842737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.154285, 23.705704, 24.555458>,  <30.297546, 23.791529, 24.383091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.154285, 23.705704, 24.555458>,  <29.915518, 23.562662, 24.842737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154285, 23.705704, 24.555458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001330, 0.894729, 0.446607,
		0.802301, -0.267543, 0.533604,
		0.596918, 0.357604, -0.718198,
		30.333361, 23.812984, 24.339998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517578, 24.016113, 25.185493>,  <29.915518, 23.562662, 24.842737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517578, 24.016113, 25.185493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.474678, 24.115673, 24.800465>,  <30.448938, 24.175409, 24.569447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.474678, 24.115673, 24.800465>,  <30.517578, 24.016113, 25.185493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474678, 24.115673, 24.800465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106801, 0.965439, 0.237739,
		0.988479, -0.077307, -0.130126,
		-0.107250, 0.248898, -0.962573,
		30.442503, 24.190342, 24.511692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120045, 24.486557, 25.050081>,  <30.517578, 24.016113, 25.185493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120045, 24.486557, 25.050081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.813072, 24.566830, 24.806515>,  <30.628889, 24.614994, 24.660376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.813072, 24.566830, 24.806515>,  <31.120045, 24.486557, 25.050081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813072, 24.566830, 24.806515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004850, 0.951539, 0.307491,
		0.641114, 0.233025, -0.731213,
		-0.767431, 0.200683, -0.608914,
		30.582844, 24.627035, 24.623840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670658, 24.477844, 24.552607>,  <31.120045, 24.486557, 25.050081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670658, 24.477844, 24.552607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048225, 24.472488, 24.684566>,  <32.274765, 24.469275, 24.763742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048225, 24.472488, 24.684566>,  <31.670658, 24.477844, 24.552607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048225, 24.472488, 24.684566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032549, -0.990537, -0.133332,
		0.328565, 0.136593, -0.934552,
		0.943920, -0.013389, 0.329902,
		32.331402, 24.468472, 24.783537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149826, 24.258459, 23.973238>,  <31.670658, 24.477844, 24.552607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149826, 24.258459, 23.973238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.319538, 24.181099, 24.327091>,  <32.421368, 24.134682, 24.539404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.319538, 24.181099, 24.327091>,  <32.149826, 24.258459, 23.973238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319538, 24.181099, 24.327091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262110, -0.908876, -0.324413,
		0.866765, 0.369514, -0.334929,
		0.424284, -0.193402, 0.884635,
		32.446823, 24.123079, 24.592482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681797, 23.816402, 23.855776>,  <32.149826, 24.258459, 23.973238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681797, 23.816402, 23.855776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.674953, 23.751450, 24.250408>,  <32.670849, 23.712479, 24.487186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.674953, 23.751450, 24.250408>,  <32.681797, 23.816402, 23.855776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674953, 23.751450, 24.250408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273645, -0.949811, -0.151583,
		0.961679, 0.267379, 0.060683,
		-0.017108, -0.162380, 0.986580,
		32.669823, 23.702736, 24.546383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338257, 23.555834, 24.020979>,  <32.681797, 23.816402, 23.855776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338257, 23.555834, 24.020979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.064068, 23.441284, 24.288746>,  <32.899555, 23.372555, 24.449406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.064068, 23.441284, 24.288746>,  <33.338257, 23.555834, 24.020979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064068, 23.441284, 24.288746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308509, -0.947027, -0.089227,
		0.659510, 0.145360, 0.737507,
		-0.685469, -0.286374, 0.669419,
		32.858425, 23.355371, 24.489571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801758, 23.176714, 24.345009>,  <33.338257, 23.555834, 24.020979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801758, 23.176714, 24.345009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429504, 23.085281, 24.459320>,  <33.206154, 23.030422, 24.527906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429504, 23.085281, 24.459320>,  <33.801758, 23.176714, 24.345009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429504, 23.085281, 24.459320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220517, -0.973502, -0.060555,
		0.292048, 0.006664, 0.956381,
		-0.930634, -0.228583, 0.285778,
		33.150314, 23.016706, 24.545053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849991, 22.589428, 24.865646>,  <33.801758, 23.176714, 24.345009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849991, 22.589428, 24.865646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.466442, 22.564014, 24.754993>,  <33.236313, 22.548767, 24.688602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.466442, 22.564014, 24.754993>,  <33.849991, 22.589428, 24.865646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466442, 22.564014, 24.754993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104188, -0.985376, -0.134830,
		-0.264020, -0.158107, 0.951470,
		-0.958873, -0.063534, -0.276632,
		33.178780, 22.544954, 24.672005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464161, 22.048565, 25.274906>,  <33.849991, 22.589428, 24.865646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464161, 22.048565, 25.274906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.249584, 22.118652, 24.944687>,  <33.120838, 22.160704, 24.746555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.249584, 22.118652, 24.944687>,  <33.464161, 22.048565, 25.274906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249584, 22.118652, 24.944687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107876, -0.955949, -0.272992,
		-0.837013, -0.235501, 0.493911,
		-0.536443, 0.175217, -0.825547,
		33.088650, 22.171217, 24.697023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910557, 21.605406, 25.311308>,  <33.464161, 22.048565, 25.274906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910557, 21.605406, 25.311308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.994831, 21.711571, 24.934975>,  <33.045395, 21.775270, 24.709175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.994831, 21.711571, 24.934975>,  <32.910557, 21.605406, 25.311308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994831, 21.711571, 24.934975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061589, -0.964128, -0.258193,
		-0.975613, -0.003549, -0.219470,
		0.210681, 0.265414, -0.940834,
		33.058037, 21.791195, 24.652725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392551, 21.229605, 24.799765>,  <32.910557, 21.605406, 25.311308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392551, 21.229605, 24.799765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.698750, 21.340767, 24.567631>,  <32.882469, 21.407465, 24.428350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.698750, 21.340767, 24.567631>,  <32.392551, 21.229605, 24.799765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698750, 21.340767, 24.567631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066399, -0.862986, -0.500845,
		-0.640011, 0.421926, -0.642156,
		0.765491, 0.277908, -0.580337,
		32.928398, 21.424139, 24.393530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261238, 20.933859, 24.210291>,  <32.392551, 21.229605, 24.799765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261238, 20.933859, 24.210291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.644600, 21.037918, 24.163330>,  <32.874619, 21.100353, 24.135153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.644600, 21.037918, 24.163330>,  <32.261238, 20.933859, 24.210291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644600, 21.037918, 24.163330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142724, -0.793058, -0.592190,
		-0.247163, 0.550802, -0.797200,
		0.958405, 0.260147, -0.117401,
		32.932121, 21.115963, 24.128109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317112, 20.867449, 23.562109>,  <32.261238, 20.933859, 24.210291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317112, 20.867449, 23.562109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.692677, 20.872318, 23.699688>,  <32.918015, 20.875240, 23.782236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.692677, 20.872318, 23.699688>,  <32.317112, 20.867449, 23.562109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692677, 20.872318, 23.699688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204270, -0.824021, -0.528454,
		0.276986, 0.566429, -0.776168,
		0.938910, 0.012173, 0.343947,
		32.974350, 20.875971, 23.802872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789665, 20.838428, 23.014624>,  <32.317112, 20.867449, 23.562109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789665, 20.838428, 23.014624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.030228, 20.701103, 23.303192>,  <33.174564, 20.618708, 23.476334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.030228, 20.701103, 23.303192>,  <32.789665, 20.838428, 23.014624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030228, 20.701103, 23.303192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188066, -0.816763, -0.545463,
		0.776497, 0.463717, -0.426637,
		0.601402, -0.343314, 0.721423,
		33.210648, 20.598108, 23.519619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335979, 20.644827, 22.681183>,  <32.789665, 20.838428, 23.014624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335979, 20.644827, 22.681183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.372578, 20.441132, 23.023483>,  <33.394535, 20.318914, 23.228863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.372578, 20.441132, 23.023483>,  <33.335979, 20.644827, 22.681183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372578, 20.441132, 23.023483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309294, -0.802319, -0.510511,
		0.946555, 0.311385, 0.084098,
		0.091492, -0.509238, 0.855749,
		33.400024, 20.288361, 23.280209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011917, 20.349487, 22.669893>,  <33.335979, 20.644827, 22.681183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011917, 20.349487, 22.669893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.762234, 20.157307, 22.916317>,  <33.612423, 20.041998, 23.064171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.762234, 20.157307, 22.916317>,  <34.011917, 20.349487, 22.669893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762234, 20.157307, 22.916317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032312, -0.803751, -0.594088,
		0.780589, -0.350929, 0.517232,
		-0.624209, -0.480452, 0.616060,
		33.574970, 20.013170, 23.101135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626621, 20.028963, 22.683382>,  <34.011917, 20.349487, 22.669893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626621, 20.028963, 22.683382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.915974, 19.999489, 22.408779>,  <35.089584, 19.981804, 22.244019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.915974, 19.999489, 22.408779>,  <34.626621, 20.028963, 22.683382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915974, 19.999489, 22.408779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159938, 0.985128, 0.062792,
		0.671670, -0.155221, 0.724408,
		0.723381, -0.073685, -0.686506,
		35.132988, 19.977383, 22.202827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160553, 20.397839, 22.936876>,  <34.626621, 20.028963, 22.683382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160553, 20.397839, 22.936876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.242302, 20.378445, 22.545799>,  <35.291351, 20.366808, 22.311153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.242302, 20.378445, 22.545799>,  <35.160553, 20.397839, 22.936876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242302, 20.378445, 22.545799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298186, 0.954390, 0.015003,
		0.932372, -0.294600, 0.209510,
		0.204374, -0.048485, -0.977692,
		35.303616, 20.363899, 22.252491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800198, 20.764124, 22.737448>,  <35.160553, 20.397839, 22.936876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800198, 20.764124, 22.737448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.594101, 20.744629, 22.395184>,  <35.470444, 20.732931, 22.189825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.594101, 20.744629, 22.395184>,  <35.800198, 20.764124, 22.737448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594101, 20.744629, 22.395184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183232, 0.969033, -0.165531,
		0.837230, -0.242073, -0.490355,
		-0.515241, -0.048739, -0.855659,
		35.439529, 20.730007, 22.138485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204102, 21.051815, 22.123793>,  <35.800198, 20.764124, 22.737448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204102, 21.051815, 22.123793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.817963, 21.088154, 22.025928>,  <35.586281, 21.109957, 21.967211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.817963, 21.088154, 22.025928>,  <36.204102, 21.051815, 22.123793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817963, 21.088154, 22.025928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120991, 0.986415, -0.111114,
		0.231242, -0.136865, -0.963221,
		-0.965343, 0.090847, -0.244660,
		35.528358, 21.115408, 21.952530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245358, 21.317122, 21.397821>,  <36.204102, 21.051815, 22.123793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245358, 21.317122, 21.397821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.895397, 21.406651, 21.569614>,  <35.685421, 21.460367, 21.672689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.895397, 21.406651, 21.569614>,  <36.245358, 21.317122, 21.397821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895397, 21.406651, 21.569614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144762, 0.967117, -0.209113,
		-0.462164, -0.120780, -0.878531,
		-0.874899, 0.223823, 0.429482,
		35.632927, 21.473797, 21.698460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962479, 21.784634, 20.861956>,  <36.245358, 21.317122, 21.397821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962479, 21.784634, 20.861956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.728531, 21.843349, 21.181049>,  <35.588161, 21.878578, 21.372505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.728531, 21.843349, 21.181049>,  <35.962479, 21.784634, 20.861956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728531, 21.843349, 21.181049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003627, 0.983006, -0.183538,
		-0.811119, -0.110239, -0.574399,
		-0.584871, 0.146788, 0.797734,
		35.553070, 21.887386, 21.420370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422562, 22.276085, 20.585920>,  <35.962479, 21.784634, 20.861956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422562, 22.276085, 20.585920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.436668, 22.314499, 20.983822>,  <35.445133, 22.337547, 21.222563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.436668, 22.314499, 20.983822>,  <35.422562, 22.276085, 20.585920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436668, 22.314499, 20.983822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041934, 0.994638, -0.094538,
		-0.998498, -0.038380, 0.039101,
		0.035263, 0.096035, 0.994753,
		35.447247, 22.343309, 21.282248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766624, 21.984154, 20.378466>,  <35.422562, 22.276085, 20.585920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766624, 21.984154, 20.378466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.525742, 21.977692, 20.059196>,  <34.381210, 21.973814, 19.867636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.525742, 21.977692, 20.059196>,  <34.766624, 21.984154, 20.378466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525742, 21.977692, 20.059196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024557, -0.998947, 0.038745,
		-0.797959, 0.042933, 0.601181,
		-0.602211, -0.016154, -0.798173,
		34.345078, 21.972845, 19.819744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111996, 21.650930, 20.559238>,  <34.766624, 21.984154, 20.378466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111996, 21.650930, 20.559238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.121410, 21.603107, 20.162220>,  <34.127060, 21.574413, 19.924009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.121410, 21.603107, 20.162220>,  <34.111996, 21.650930, 20.559238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121410, 21.603107, 20.162220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284938, -0.952445, 0.107971,
		-0.958257, 0.280274, -0.056486,
		0.023538, -0.119559, -0.992548,
		34.128471, 21.567240, 19.864456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400009, 21.395880, 20.346895>,  <34.111996, 21.650930, 20.559238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400009, 21.395880, 20.346895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.656132, 21.307320, 20.052689>,  <33.809807, 21.254185, 19.876163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.656132, 21.307320, 20.052689>,  <33.400009, 21.395880, 20.346895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656132, 21.307320, 20.052689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367443, -0.929177, -0.040186,
		-0.674530, 0.295993, -0.676312,
		0.640308, -0.221399, -0.735518,
		33.848225, 21.240900, 19.832033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003990, 21.131224, 19.909176>,  <33.400009, 21.395880, 20.346895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003990, 21.131224, 19.909176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.378567, 21.015606, 19.829647>,  <33.603313, 20.946236, 19.781929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.378567, 21.015606, 19.829647>,  <33.003990, 21.131224, 19.909176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378567, 21.015606, 19.829647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294842, -0.955546, 0.000461,
		-0.190117, 0.058189, -0.980035,
		0.936442, -0.289044, -0.198822,
		33.659500, 20.928892, 19.770000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017265, 20.702431, 19.292885>,  <33.003990, 21.131224, 19.909176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017265, 20.702431, 19.292885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.357315, 20.605305, 19.479790>,  <33.561344, 20.547029, 19.591932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.357315, 20.605305, 19.479790>,  <33.017265, 20.702431, 19.292885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357315, 20.605305, 19.479790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236725, -0.968847, -0.072773,
		0.470374, -0.048746, -0.881120,
		0.850123, -0.242814, 0.467260,
		33.612350, 20.532461, 19.619968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190777, 20.185085, 19.004877>,  <33.017265, 20.702431, 19.292885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190777, 20.185085, 19.004877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.412540, 20.164516, 19.337139>,  <33.545597, 20.152176, 19.536495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.412540, 20.164516, 19.337139>,  <33.190777, 20.185085, 19.004877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412540, 20.164516, 19.337139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158502, -0.986345, 0.044730,
		0.817011, -0.156459, -0.554989,
		0.554409, -0.051422, 0.830654,
		33.578865, 20.149090, 19.586336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728325, 19.715710, 18.889721>,  <33.190777, 20.185085, 19.004877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728325, 19.715710, 18.889721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.640614, 19.747566, 19.278683>,  <33.587986, 19.766680, 19.512060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.640614, 19.747566, 19.278683>,  <33.728325, 19.715710, 18.889721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640614, 19.747566, 19.278683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124983, -0.990744, 0.052962,
		0.967624, -0.109921, 0.227202,
		-0.219278, 0.079643, 0.972407,
		33.574829, 19.771460, 19.570404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900394, 19.035555, 19.188255>,  <33.728325, 19.715710, 18.889721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900394, 19.035555, 19.188255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.724365, 19.214188, 19.499870>,  <33.618748, 19.321367, 19.686840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.724365, 19.214188, 19.499870>,  <33.900394, 19.035555, 19.188255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724365, 19.214188, 19.499870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260661, -0.893738, 0.365087,
		0.859297, -0.042400, 0.509716,
		-0.440072, 0.446582, 0.779039,
		33.592342, 19.348162, 19.733582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104733, 18.623104, 19.720016>,  <33.900394, 19.035555, 19.188255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104733, 18.623104, 19.720016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.770145, 18.815819, 19.824478>,  <33.569393, 18.931448, 19.887156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.770145, 18.815819, 19.824478>,  <34.104733, 18.623104, 19.720016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770145, 18.815819, 19.824478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316503, -0.813747, 0.487486,
		0.447380, 0.325109, 0.833160,
		-0.836467, 0.481789, 0.261156,
		33.519207, 18.960356, 19.902824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.972284, 34.827831, 19.662785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634506, 34.613731, 19.654613>,  <30.431839, 34.485271, 19.649712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634506, 34.613731, 19.654613>,  <30.972284, 34.827831, 19.662785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634506, 34.613731, 19.654613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535639, -0.843945, -0.029102,
		-0.001663, -0.035518, 0.999368,
		-0.844445, -0.535252, -0.020428,
		30.381172, 34.453156, 19.648485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020399, 34.404247, 20.270988>,  <30.972284, 34.827831, 19.662785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020399, 34.404247, 20.270988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771378, 34.236012, 20.007008>,  <30.621964, 34.135071, 19.848619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771378, 34.236012, 20.007008>,  <31.020399, 34.404247, 20.270988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771378, 34.236012, 20.007008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513813, -0.855754, 0.060672,
		-0.590273, -0.301319, 0.748856,
		-0.622555, -0.420585, -0.659950,
		30.584612, 34.109837, 19.809023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059498, 33.744946, 20.433176>,  <31.020399, 34.404247, 20.270988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059498, 33.744946, 20.433176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873846, 33.722778, 20.079563>,  <30.762455, 33.709480, 19.867395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873846, 33.722778, 20.079563>,  <31.059498, 33.744946, 20.433176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873846, 33.722778, 20.079563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364663, -0.921492, -0.133691,
		-0.807220, -0.384424, 0.447900,
		-0.464131, -0.055414, -0.884032,
		30.734608, 33.706154, 19.814354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742476, 33.072411, 20.375114>,  <31.059498, 33.744946, 20.433176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742476, 33.072411, 20.375114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788540, 33.183056, 19.993492>,  <30.816179, 33.249443, 19.764519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788540, 33.183056, 19.993492>,  <30.742476, 33.072411, 20.375114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788540, 33.183056, 19.993492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365966, -0.904702, -0.218134,
		-0.923475, -0.324031, -0.205420,
		0.115162, 0.276618, -0.954055,
		30.823088, 33.266041, 19.707275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442047, 32.505390, 20.113306>,  <30.742476, 33.072411, 20.375114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442047, 32.505390, 20.113306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653603, 32.703236, 19.837440>,  <30.780537, 32.821941, 19.671921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653603, 32.703236, 19.837440>,  <30.442047, 32.505390, 20.113306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653603, 32.703236, 19.837440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311016, -0.869045, -0.384747,
		-0.789649, -0.011007, -0.613460,
		0.528889, 0.494611, -0.689664,
		30.812269, 32.851620, 19.630541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344242, 32.114803, 19.485550>,  <30.442047, 32.505390, 20.113306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344242, 32.114803, 19.485550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684050, 32.321201, 19.441620>,  <30.887934, 32.445042, 19.415262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684050, 32.321201, 19.441620>,  <30.344242, 32.114803, 19.485550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684050, 32.321201, 19.441620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450124, -0.817523, -0.359228,
		-0.275146, 0.255736, -0.926765,
		0.849519, 0.516000, -0.109825,
		30.938906, 32.476002, 19.408672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571312, 31.987869, 18.705774>,  <30.344242, 32.114803, 19.485550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571312, 31.987869, 18.705774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884621, 32.105232, 18.925007>,  <31.072607, 32.175652, 19.056547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884621, 32.105232, 18.925007>,  <30.571312, 31.987869, 18.705774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884621, 32.105232, 18.925007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522535, -0.788360, -0.324725,
		0.336808, 0.540740, -0.770818,
		0.783274, 0.293410, 0.548081,
		31.119602, 32.193256, 19.089432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218079, 31.761547, 18.337599>,  <30.571312, 31.987869, 18.705774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218079, 31.761547, 18.337599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368898, 31.827641, 18.702133>,  <31.459391, 31.867296, 18.920855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368898, 31.827641, 18.702133>,  <31.218079, 31.761547, 18.337599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368898, 31.827641, 18.702133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689491, -0.707058, -0.157068,
		0.618415, 0.687580, -0.380522,
		0.377048, 0.165233, 0.911336,
		31.482014, 31.877211, 18.975534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978924, 31.673201, 18.254318>,  <31.218079, 31.761547, 18.337599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978924, 31.673201, 18.254318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922667, 31.671116, 18.650337>,  <31.888912, 31.669865, 18.887949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922667, 31.671116, 18.650337>,  <31.978924, 31.673201, 18.254318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922667, 31.671116, 18.650337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571697, -0.816852, 0.076911,
		0.808321, 0.576824, 0.117864,
		-0.140641, -0.005214, 0.990047,
		31.880474, 31.669552, 18.947351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510521, 31.373787, 18.352112>,  <31.978924, 31.673201, 18.254318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510521, 31.373787, 18.352112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315056, 31.321613, 18.697178>,  <32.197777, 31.290310, 18.904219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315056, 31.321613, 18.697178>,  <32.510521, 31.373787, 18.352112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315056, 31.321613, 18.697178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271675, -0.962353, 0.008386,
		0.829095, 0.238462, 0.505704,
		-0.488665, -0.130434, 0.862666,
		32.168457, 31.282482, 18.955978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095692, 31.203470, 18.791790>,  <32.510521, 31.373787, 18.352112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095692, 31.203470, 18.791790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745502, 31.041348, 18.897072>,  <32.535389, 30.944073, 18.960241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745502, 31.041348, 18.897072>,  <33.095692, 31.203470, 18.791790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745502, 31.041348, 18.897072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380834, -0.913895, -0.140575,
		0.297517, -0.022832, 0.954444,
		-0.875471, -0.405308, 0.263204,
		32.482861, 30.919756, 18.976032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207821, 30.681318, 19.256489>,  <33.095692, 31.203470, 18.791790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207821, 30.681318, 19.256489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846355, 30.541702, 19.157246>,  <32.629475, 30.457933, 19.097700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846355, 30.541702, 19.157246>,  <33.207821, 30.681318, 19.256489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846355, 30.541702, 19.157246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345841, -0.936508, 0.057850,
		-0.252546, -0.033529, 0.967004,
		-0.903667, -0.349040, -0.248107,
		32.575256, 30.436991, 19.082813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140156, 30.845541, 19.986654>,  <33.207821, 30.681318, 19.256489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140156, 30.845541, 19.986654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320004, 30.796501, 20.340561>,  <33.427914, 30.767076, 20.552904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320004, 30.796501, 20.340561>,  <33.140156, 30.845541, 19.986654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320004, 30.796501, 20.340561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182161, 0.957132, 0.225200,
		-0.874447, -0.262425, 0.408013,
		0.449621, -0.122602, 0.884765,
		33.454891, 30.759720, 20.605991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718807, 31.208826, 20.500124>,  <33.140156, 30.845541, 19.986654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718807, 31.208826, 20.500124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075890, 31.139847, 20.666664>,  <33.290138, 31.098459, 20.766588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075890, 31.139847, 20.666664>,  <32.718807, 31.208826, 20.500124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075890, 31.139847, 20.666664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024845, 0.941315, 0.336613,
		-0.449964, -0.290151, 0.844598,
		0.892701, -0.172448, 0.416349,
		33.343700, 31.088112, 20.791569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570419, 31.324213, 21.218687>,  <32.718807, 31.208826, 20.500124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570419, 31.324213, 21.218687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946362, 31.398315, 21.103905>,  <33.171928, 31.442778, 21.035034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946362, 31.398315, 21.103905>,  <32.570419, 31.324213, 21.218687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946362, 31.398315, 21.103905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119120, 0.965166, 0.232951,
		0.320117, -0.184759, 0.929188,
		0.939860, 0.185256, -0.286957,
		33.228321, 31.453892, 21.017817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875309, 31.537571, 21.838192>,  <32.570419, 31.324213, 21.218687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875309, 31.537571, 21.838192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139027, 31.651493, 21.559849>,  <33.297256, 31.719847, 21.392843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139027, 31.651493, 21.559849>,  <32.875309, 31.537571, 21.838192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139027, 31.651493, 21.559849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008685, 0.922537, 0.385811,
		0.751838, -0.260405, 0.605747,
		0.659291, 0.284807, -0.695859,
		33.336815, 31.736935, 21.351091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596416, 31.829332, 22.226522>,  <32.875309, 31.537571, 21.838192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596416, 31.829332, 22.226522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584408, 31.989510, 21.860191>,  <33.577202, 32.085617, 21.640392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584408, 31.989510, 21.860191>,  <33.596416, 31.829332, 22.226522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584408, 31.989510, 21.860191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086493, 0.913846, 0.396742,
		0.995800, -0.067302, -0.062069,
		-0.030019, 0.400444, -0.915829,
		33.575401, 32.109642, 21.585443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032108, 32.375099, 22.253769>,  <33.596416, 31.829332, 22.226522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032108, 32.375099, 22.253769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778454, 32.454071, 21.954731>,  <33.626263, 32.501453, 21.775309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778454, 32.454071, 21.954731>,  <34.032108, 32.375099, 22.253769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778454, 32.454071, 21.954731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117857, 0.930876, 0.345804,
		0.764189, 0.307395, -0.567031,
		-0.634134, 0.197431, -0.747593,
		33.588215, 32.513302, 21.730453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187489, 33.007534, 22.001633>,  <34.032108, 32.375099, 22.253769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187489, 33.007534, 22.001633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803665, 32.954277, 21.902412>,  <33.573372, 32.922325, 21.842880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803665, 32.954277, 21.902412>,  <34.187489, 33.007534, 22.001633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803665, 32.954277, 21.902412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227398, 0.885995, 0.404109,
		0.165968, 0.444171, -0.880436,
		-0.959555, -0.133140, -0.248050,
		33.515800, 32.914333, 21.827997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995007, 33.620449, 21.764509>,  <34.187489, 33.007534, 22.001633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995007, 33.620449, 21.764509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624763, 33.480419, 21.822056>,  <33.402618, 33.396400, 21.856585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624763, 33.480419, 21.822056>,  <33.995007, 33.620449, 21.764509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624763, 33.480419, 21.822056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298991, 0.909380, 0.289195,
		-0.232069, 0.224666, -0.946398,
		-0.925607, -0.350077, 0.143866,
		33.347080, 33.375397, 21.865215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573959, 34.151134, 21.510534>,  <33.995007, 33.620449, 21.764509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573959, 34.151134, 21.510534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328060, 33.923248, 21.728710>,  <33.180519, 33.786514, 21.859615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328060, 33.923248, 21.728710>,  <33.573959, 34.151134, 21.510534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328060, 33.923248, 21.728710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364353, 0.818469, 0.444248,
		-0.699520, 0.074370, -0.710732,
		-0.614751, -0.569718, 0.545438,
		33.143635, 33.752335, 21.892342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911110, 34.484375, 21.558277>,  <33.573959, 34.151134, 21.510534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911110, 34.484375, 21.558277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901810, 34.225395, 21.862980>,  <32.896229, 34.070007, 22.045801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901810, 34.225395, 21.862980>,  <32.911110, 34.484375, 21.558277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901810, 34.225395, 21.862980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490867, 0.671182, 0.555485,
		-0.870924, -0.361005, -0.333416,
		-0.023250, -0.647448, 0.761755,
		32.894836, 34.031162, 22.091507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238041, 34.550217, 21.938770>,  <32.911110, 34.484375, 21.558277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238041, 34.550217, 21.938770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472126, 34.403072, 22.227825>,  <32.612576, 34.314785, 22.401258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472126, 34.403072, 22.227825>,  <32.238041, 34.550217, 21.938770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472126, 34.403072, 22.227825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375525, 0.666905, 0.643598,
		-0.718684, -0.648011, 0.252141,
		0.585212, -0.367858, 0.722639,
		32.647690, 34.292713, 22.444616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002792, 34.740379, 22.651306>,  <32.238041, 34.550217, 21.938770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002792, 34.740379, 22.651306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382214, 34.651402, 22.741436>,  <32.609867, 34.598015, 22.795513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382214, 34.651402, 22.741436>,  <32.002792, 34.740379, 22.651306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382214, 34.651402, 22.741436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009489, 0.691353, 0.722454,
		-0.316481, -0.687423, 0.653674,
		0.948552, -0.222440, 0.225323,
		32.666779, 34.584671, 22.809032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095253, 35.010311, 23.376884>,  <32.002792, 34.740379, 22.651306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095253, 35.010311, 23.376884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467178, 34.901623, 23.277603>,  <32.690334, 34.836411, 23.218035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467178, 34.901623, 23.277603>,  <32.095253, 35.010311, 23.376884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467178, 34.901623, 23.277603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367325, 0.726628, 0.580589,
		0.022592, -0.631013, 0.775443,
		0.929818, -0.271723, -0.248203,
		32.746124, 34.820107, 23.203142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448658, 34.931396, 24.052242>,  <32.095253, 35.010311, 23.376884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448658, 34.931396, 24.052242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698410, 35.003113, 23.748135>,  <32.848259, 35.046143, 23.565670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698410, 35.003113, 23.748135>,  <32.448658, 34.931396, 24.052242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698410, 35.003113, 23.748135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520066, 0.630803, 0.575864,
		0.582824, -0.754946, 0.300619,
		0.624377, 0.179286, -0.760269,
		32.885723, 35.056900, 23.520054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571785, 35.589680, 24.565582>,  <32.448658, 34.931396, 24.052242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571785, 35.589680, 24.565582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936939, 35.444115, 24.639576>,  <33.156033, 35.356777, 24.683971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936939, 35.444115, 24.639576>,  <32.571785, 35.589680, 24.565582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936939, 35.444115, 24.639576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320510, 0.919565, 0.227317,
		-0.252827, -0.148224, 0.956090,
		0.912881, -0.363909, 0.184984,
		33.210804, 35.334942, 24.695070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169369, 35.678490, 25.133595>,  <32.571785, 35.589680, 24.565582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169369, 35.678490, 25.133595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832262, 35.495895, 25.247684>,  <31.629997, 35.386337, 25.316139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832262, 35.495895, 25.247684>,  <32.169369, 35.678490, 25.133595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832262, 35.495895, 25.247684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443918, -0.889124, -0.111333,
		0.304424, 0.032789, 0.951972,
		-0.842771, -0.456490, 0.285226,
		31.579432, 35.358948, 25.333252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330502, 35.147503, 25.515125>,  <32.169369, 35.678490, 25.133595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330502, 35.147503, 25.515125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972410, 35.015182, 25.395699>,  <31.757555, 34.935791, 25.324043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972410, 35.015182, 25.395699>,  <32.330502, 35.147503, 25.515125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972410, 35.015182, 25.395699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331506, -0.942135, 0.049853,
		-0.297782, -0.054347, 0.953086,
		-0.895226, -0.330799, -0.298567,
		31.703842, 34.915943, 25.306128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955622, 34.616619, 25.992599>,  <32.330502, 35.147503, 25.515125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955622, 34.616619, 25.992599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792669, 34.533108, 25.636971>,  <31.694899, 34.483002, 25.423594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792669, 34.533108, 25.636971>,  <31.955622, 34.616619, 25.992599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792669, 34.533108, 25.636971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084299, -0.977959, 0.191024,
		-0.909359, 0.002871, 0.416002,
		-0.407381, -0.208778, -0.889074,
		31.670454, 34.470474, 25.370249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702366, 33.970257, 26.092056>,  <31.955622, 34.616619, 25.992599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702366, 33.970257, 26.092056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729029, 34.011703, 25.695103>,  <31.745026, 34.036572, 25.456930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729029, 34.011703, 25.695103>,  <31.702366, 33.970257, 26.092056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729029, 34.011703, 25.695103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144403, -0.985124, -0.093155,
		-0.987271, -0.137094, -0.080627,
		0.066656, 0.103612, -0.992382,
		31.749025, 34.042786, 25.397388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366045, 33.401901, 25.882128>,  <31.702366, 33.970257, 26.092056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366045, 33.401901, 25.882128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548983, 33.502220, 25.540852>,  <31.658745, 33.562412, 25.336086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548983, 33.502220, 25.540852>,  <31.366045, 33.401901, 25.882128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548983, 33.502220, 25.540852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205936, -0.963197, -0.172749,
		-0.865117, -0.096697, -0.492161,
		0.457343, 0.250801, -0.853192,
		31.686186, 33.577461, 25.284895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296963, 32.916164, 25.435320>,  <31.366045, 33.401901, 25.882128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296963, 32.916164, 25.435320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619360, 33.096687, 25.282116>,  <31.812798, 33.205002, 25.190193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619360, 33.096687, 25.282116>,  <31.296963, 32.916164, 25.435320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619360, 33.096687, 25.282116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308927, -0.872661, -0.378188,
		-0.504918, 0.186494, -0.842780,
		0.805991, 0.451311, -0.383010,
		31.861156, 33.232082, 25.167213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297945, 32.820869, 24.760832>,  <31.296963, 32.916164, 25.435320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297945, 32.820869, 24.760832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676674, 32.867428, 24.880817>,  <31.903912, 32.895363, 24.952808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676674, 32.867428, 24.880817>,  <31.297945, 32.820869, 24.760832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676674, 32.867428, 24.880817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236213, -0.884468, -0.402393,
		0.218472, 0.451850, -0.864929,
		0.946823, 0.116396, 0.299964,
		31.960720, 32.902348, 24.970806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686201, 32.536644, 24.253126>,  <31.297945, 32.820869, 24.760832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686201, 32.536644, 24.253126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952971, 32.540245, 24.551155>,  <32.113033, 32.542408, 24.729973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952971, 32.540245, 24.551155>,  <31.686201, 32.536644, 24.253126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952971, 32.540245, 24.551155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454931, -0.796848, -0.397582,
		0.590128, 0.604113, -0.535534,
		0.666924, 0.009007, 0.745072,
		32.153049, 32.542946, 24.774677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222870, 32.224251, 23.939947>,  <31.686201, 32.536644, 24.253126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222870, 32.224251, 23.939947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295750, 32.215767, 24.333160>,  <32.339478, 32.210678, 24.569088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295750, 32.215767, 24.333160>,  <32.222870, 32.224251, 23.939947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295750, 32.215767, 24.333160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379781, -0.920663, -0.090254,
		0.906955, 0.389782, -0.159694,
		0.182204, -0.021208, 0.983032,
		32.350410, 32.209404, 24.628071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795910, 31.738335, 23.943323>,  <32.222870, 32.224251, 23.939947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795910, 31.738335, 23.943323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677467, 31.748108, 24.325260>,  <32.606403, 31.753971, 24.554422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677467, 31.748108, 24.325260>,  <32.795910, 31.738335, 23.943323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677467, 31.748108, 24.325260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246388, -0.963887, 0.101070,
		0.922829, 0.265189, 0.279393,
		-0.296106, 0.024431, 0.954843,
		32.588634, 31.755438, 24.611713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433743, 31.532932, 24.292313>,  <32.795910, 31.738335, 23.943323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433743, 31.532932, 24.292313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106201, 31.456455, 24.508804>,  <32.909676, 31.410570, 24.638700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106201, 31.456455, 24.508804>,  <33.433743, 31.532932, 24.292313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106201, 31.456455, 24.508804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254286, -0.966154, 0.043425,
		0.514609, 0.173185, 0.839752,
		-0.818850, -0.191190, 0.541230,
		32.860546, 31.399097, 24.671173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654842, 31.082241, 24.892298>,  <33.433743, 31.532932, 24.292313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654842, 31.082241, 24.892298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259769, 31.025688, 24.865505>,  <33.022724, 30.991756, 24.849430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259769, 31.025688, 24.865505>,  <33.654842, 31.082241, 24.892298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259769, 31.025688, 24.865505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127793, -0.976081, 0.175882,
		-0.090245, 0.165157, 0.982130,
		-0.987687, -0.141381, -0.066980,
		32.963463, 30.983274, 24.845411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496201, 30.584017, 25.450804>,  <33.654842, 31.082241, 24.892298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496201, 30.584017, 25.450804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194546, 30.552330, 25.190037>,  <33.013554, 30.533318, 25.033577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194546, 30.552330, 25.190037>,  <33.496201, 30.584017, 25.450804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194546, 30.552330, 25.190037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063782, -0.979170, 0.192764,
		-0.653608, 0.186952, 0.733379,
		-0.754141, -0.079216, -0.651918,
		32.968304, 30.528564, 24.994461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133736, 29.986240, 25.674694>,  <33.496201, 30.584017, 25.450804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133736, 29.986240, 25.674694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978359, 30.057129, 25.312984>,  <32.885136, 30.099663, 25.095959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978359, 30.057129, 25.312984>,  <33.133736, 29.986240, 25.674694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978359, 30.057129, 25.312984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206185, -0.973166, -0.102157,
		-0.898112, 0.146766, 0.414555,
		-0.388437, 0.177223, -0.904273,
		32.861828, 30.110296, 25.041702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480637, 29.687521, 25.682911>,  <33.133736, 29.986240, 25.674694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480637, 29.687521, 25.682911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615501, 29.679829, 25.306412>,  <32.696419, 29.675213, 25.080511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615501, 29.679829, 25.306412>,  <32.480637, 29.687521, 25.682911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615501, 29.679829, 25.306412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258424, -0.963278, -0.072891,
		-0.905284, 0.267817, -0.329751,
		0.337163, -0.019229, -0.941250,
		32.716652, 29.674061, 25.024036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979931, 29.318428, 25.236012>,  <32.480637, 29.687521, 25.682911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979931, 29.318428, 25.236012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330772, 29.316788, 25.043900>,  <32.541279, 29.315804, 24.928633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330772, 29.316788, 25.043900>,  <31.979931, 29.318428, 25.236012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330772, 29.316788, 25.043900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063261, -0.992239, -0.107056,
		-0.476113, 0.124282, -0.870557,
		0.877106, -0.004102, -0.480280,
		32.593903, 29.315557, 24.899815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923586, 28.808704, 24.857582>,  <31.979931, 29.318428, 25.236012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923586, 28.808704, 24.857582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318169, 28.848000, 24.805042>,  <32.554916, 28.871576, 24.773518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318169, 28.848000, 24.805042>,  <31.923586, 28.808704, 24.857582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318169, 28.848000, 24.805042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072261, -0.979187, -0.189663,
		-0.147247, 0.177603, -0.973024,
		0.986457, 0.098239, -0.131349,
		32.614105, 28.877472, 24.765638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098152, 28.565182, 24.211643>,  <31.923586, 28.808704, 24.857582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098152, 28.565182, 24.211643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441166, 28.520721, 24.412552>,  <32.646973, 28.494045, 24.533098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441166, 28.520721, 24.412552>,  <32.098152, 28.565182, 24.211643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441166, 28.520721, 24.412552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010177, -0.979852, -0.199463,
		0.514324, 0.165935, -0.841390,
		0.857536, -0.111151, 0.502273,
		32.698425, 28.487375, 24.563234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527225, 28.185955, 23.798042>,  <32.098152, 28.565182, 24.211643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527225, 28.185955, 23.798042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660057, 28.126541, 24.170635>,  <32.739758, 28.090893, 24.394192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660057, 28.126541, 24.170635>,  <32.527225, 28.185955, 23.798042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660057, 28.126541, 24.170635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130217, -0.970849, -0.201235,
		0.934220, 0.188121, -0.303056,
		0.332078, -0.148535, 0.931484,
		32.759682, 28.081982, 24.450081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133228, 27.753511, 23.762909>,  <32.527225, 28.185955, 23.798042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133228, 27.753511, 23.762909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048130, 27.702358, 24.150391>,  <32.997070, 27.671667, 24.382879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048130, 27.702358, 24.150391>,  <33.133228, 27.753511, 23.762909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048130, 27.702358, 24.150391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194834, -0.977042, -0.086193,
		0.957485, 0.170399, 0.232779,
		-0.212747, -0.127881, 0.968703,
		32.984306, 27.663994, 24.441002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664455, 27.224754, 24.095772>,  <33.133228, 27.753511, 23.762909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664455, 27.224754, 24.095772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341591, 27.229378, 24.331856>,  <33.147873, 27.232151, 24.473507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341591, 27.229378, 24.331856>,  <33.664455, 27.224754, 24.095772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341591, 27.229378, 24.331856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101907, -0.982070, 0.158597,
		0.581462, 0.188161, 0.791516,
		-0.807166, 0.011557, 0.590212,
		33.099442, 27.232845, 24.508919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871803, 26.797714, 24.625040>,  <33.664455, 27.224754, 24.095772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871803, 26.797714, 24.625040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473934, 26.821556, 24.658669>,  <33.235210, 26.835861, 24.678846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473934, 26.821556, 24.658669>,  <33.871803, 26.797714, 24.625040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473934, 26.821556, 24.658669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018989, -0.907815, 0.418942,
		0.101292, 0.415115, 0.904113,
		-0.994676, 0.059604, 0.084072,
		33.175533, 26.839437, 24.683889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648102, 26.518723, 25.319937>,  <33.871803, 26.797714, 24.625040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648102, 26.518723, 25.319937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307533, 26.490524, 25.112045>,  <33.103191, 26.473606, 24.987310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307533, 26.490524, 25.112045>,  <33.648102, 26.518723, 25.319937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307533, 26.490524, 25.112045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215083, -0.856843, 0.468571,
		-0.478357, 0.510735, 0.714370,
		-0.851419, -0.070496, -0.519728,
		33.052109, 26.469376, 24.956127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216003, 26.086260, 25.773781>,  <33.648102, 26.518723, 25.319937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216003, 26.086260, 25.773781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073009, 26.085346, 25.400215>,  <32.987213, 26.084797, 25.176075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073009, 26.085346, 25.400215>,  <33.216003, 26.086260, 25.773781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073009, 26.085346, 25.400215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313889, -0.941530, 0.122456,
		-0.879590, 0.336922, 0.335865,
		-0.357485, -0.002286, -0.933916,
		32.965763, 26.084660, 25.120041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658997, 25.678076, 25.844225>,  <33.216003, 26.086260, 25.773781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658997, 25.678076, 25.844225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717701, 25.674259, 25.448574>,  <32.752922, 25.671968, 25.211184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717701, 25.674259, 25.448574>,  <32.658997, 25.678076, 25.844225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717701, 25.674259, 25.448574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332933, -0.942089, -0.040308,
		-0.931460, 0.335228, -0.141435,
		0.146757, -0.009543, -0.989126,
		32.761726, 25.671396, 25.151836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038593, 25.521782, 25.591528>,  <32.658997, 25.678076, 25.844225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038593, 25.521782, 25.591528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295414, 25.412685, 25.304924>,  <32.449505, 25.347227, 25.132961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295414, 25.412685, 25.304924>,  <32.038593, 25.521782, 25.591528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295414, 25.412685, 25.304924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391235, -0.920291, -0.000267,
		-0.659325, 0.280496, -0.697576,
		0.642047, -0.272740, -0.716511,
		32.488029, 25.330864, 25.089972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674915, 24.987038, 25.146175>,  <32.038593, 25.521782, 25.591528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674915, 24.987038, 25.146175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052128, 24.925552, 25.028149>,  <32.278454, 24.888660, 24.957333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052128, 24.925552, 25.028149>,  <31.674915, 24.987038, 25.146175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052128, 24.925552, 25.028149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164579, -0.986289, -0.012192,
		-0.289146, 0.060059, -0.955399,
		0.943031, -0.153713, -0.295066,
		32.335037, 24.879438, 24.939629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247049, 25.282999, 24.652044>,  <31.674915, 24.987038, 25.146175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247049, 25.282999, 24.652044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863461, 25.176220, 24.613857>,  <30.633308, 25.112152, 24.590944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863461, 25.176220, 24.613857>,  <31.247049, 25.282999, 24.652044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863461, 25.176220, 24.613857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275662, 0.956646, 0.094014,
		0.066233, 0.116474, -0.990983,
		-0.958970, -0.266950, -0.095469,
		30.575769, 25.096134, 24.585217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960131, 25.842848, 24.270161>,  <31.247049, 25.282999, 24.652044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960131, 25.842848, 24.270161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624996, 25.668713, 24.401928>,  <30.423916, 25.564232, 24.480988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624996, 25.668713, 24.401928>,  <30.960131, 25.842848, 24.270161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624996, 25.668713, 24.401928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426104, 0.898688, 0.103902,
		-0.341275, -0.053313, -0.938450,
		-0.837835, -0.435337, 0.329416,
		30.373646, 25.538111, 24.500753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392273, 26.178995, 23.860682>,  <30.960131, 25.842848, 24.270161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392273, 26.178995, 23.860682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233053, 26.013504, 24.188190>,  <30.137522, 25.914209, 24.384695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233053, 26.013504, 24.188190>,  <30.392273, 26.178995, 23.860682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233053, 26.013504, 24.188190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671378, 0.739602, 0.047333,
		-0.625148, -0.530864, -0.572166,
		-0.398048, -0.413730, 0.818771,
		30.113640, 25.889385, 24.433823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674006, 26.229883, 23.824379>,  <30.392273, 26.178995, 23.860682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674006, 26.229883, 23.824379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717220, 26.153423, 24.214619>,  <29.743149, 26.107548, 24.448763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717220, 26.153423, 24.214619>,  <29.674006, 26.229883, 23.824379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717220, 26.153423, 24.214619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602731, 0.767819, 0.217186,
		-0.790597, -0.611487, -0.032258,
		0.108038, -0.191149, 0.975597,
		29.749632, 26.096079, 24.507298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934324, 26.269739, 24.194181>,  <29.674006, 26.229883, 23.824379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934324, 26.269739, 24.194181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204971, 26.334026, 24.481613>,  <29.367359, 26.372599, 24.654072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204971, 26.334026, 24.481613>,  <28.934324, 26.269739, 24.194181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204971, 26.334026, 24.481613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540251, 0.771444, 0.336160,
		-0.500318, -0.615665, 0.608801,
		0.676617, 0.160718, 0.718581,
		29.407957, 26.382242, 24.697187>
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
