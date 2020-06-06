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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
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
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.273214, 35.579697, 34.908272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294775, 35.206211, 35.049850>,  <24.307711, 34.982121, 35.134796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294775, 35.206211, 35.049850>,  <24.273214, 35.579697, 34.908272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.294775, 35.206211, 35.049850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953847, 0.153010, 0.258387,
		-0.295416, 0.323684, 0.898865,
		0.053899, -0.933711, 0.353946,
		24.310946, 34.926098, 35.156033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.988140, 35.861290, 35.503967>,  <24.273214, 35.579697, 34.908272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.988140, 35.861290, 35.503967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357491, 35.765518, 35.624004>,  <24.579102, 35.708057, 35.696026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357491, 35.765518, 35.624004>,  <23.988140, 35.861290, 35.503967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357491, 35.765518, 35.624004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142743, 0.939770, 0.310576,
		-0.356374, -0.243942, 0.901937,
		0.923375, -0.239427, 0.300088,
		24.634502, 35.693691, 35.714031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.102444, 35.988670, 36.144573>,  <23.988140, 35.861290, 35.503967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.102444, 35.988670, 36.144573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464632, 36.036964, 35.981827>,  <24.681946, 36.065941, 35.884178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464632, 36.036964, 35.981827>,  <24.102444, 35.988670, 36.144573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.464632, 36.036964, 35.981827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002035, 0.957436, 0.288638,
		0.424400, -0.262182, 0.866686,
		0.905473, 0.120734, -0.406870,
		24.736275, 36.073185, 35.859764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.665833, 36.500240, 36.552959>,  <24.102444, 35.988670, 36.144573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.665833, 36.500240, 36.552959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.804642, 36.583260, 36.187119>,  <24.887928, 36.633072, 35.967613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.804642, 36.583260, 36.187119>,  <24.665833, 36.500240, 36.552959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.804642, 36.583260, 36.187119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092898, 0.978017, 0.186688,
		0.933244, 0.020180, 0.358675,
		0.347023, 0.207546, -0.914603,
		24.908749, 36.645523, 35.912739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.249439, 36.953362, 36.729744>,  <24.665833, 36.500240, 36.552959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.249439, 36.953362, 36.729744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064314, 36.975353, 36.375843>,  <24.953239, 36.988548, 36.163502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064314, 36.975353, 36.375843>,  <25.249439, 36.953362, 36.729744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.064314, 36.975353, 36.375843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067588, 0.992981, 0.097063,
		0.883876, 0.104720, -0.455848,
		-0.462813, 0.054982, -0.884749,
		24.925470, 36.991848, 36.110416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.829172, 37.316727, 37.116924>,  <25.249439, 36.953362, 36.729744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.829172, 37.316727, 37.116924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204151, 37.437855, 37.185616>,  <26.429138, 37.510532, 37.226830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204151, 37.437855, 37.185616>,  <25.829172, 37.316727, 37.116924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204151, 37.437855, 37.185616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297737, 0.953048, -0.055253,
		-0.180400, 0.000666, 0.983593,
		0.937448, 0.302820, 0.171731,
		26.485386, 37.528702, 37.237137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785576, 37.917244, 37.589603>,  <25.829172, 37.316727, 37.116924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785576, 37.917244, 37.589603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104601, 37.935951, 37.349033>,  <26.296015, 37.947174, 37.204693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104601, 37.935951, 37.349033>,  <25.785576, 37.917244, 37.589603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104601, 37.935951, 37.349033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145374, 0.982507, -0.116388,
		0.585459, 0.180257, 0.790408,
		0.797561, 0.046765, -0.601423,
		26.343870, 37.949982, 37.168606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191845, 38.560646, 37.818417>,  <25.785576, 37.917244, 37.589603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191845, 38.560646, 37.818417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232840, 38.455009, 37.434803>,  <26.257437, 38.391628, 37.204636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232840, 38.455009, 37.434803>,  <26.191845, 38.560646, 37.818417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232840, 38.455009, 37.434803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251807, 0.925824, -0.281854,
		0.962335, 0.270379, 0.028386,
		0.102488, -0.264091, -0.959037,
		26.263586, 38.375782, 37.147091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637947, 39.079308, 37.476288>,  <26.191845, 38.560646, 37.818417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637947, 39.079308, 37.476288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438679, 38.871098, 37.198906>,  <26.319118, 38.746170, 37.032475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438679, 38.871098, 37.198906>,  <26.637947, 39.079308, 37.476288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438679, 38.871098, 37.198906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347067, 0.852604, -0.390655,
		0.794589, 0.046062, -0.605399,
		-0.498171, -0.520524, -0.693456,
		26.289228, 38.714939, 36.990868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692017, 39.592560, 36.875805>,  <26.637947, 39.079308, 37.476288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692017, 39.592560, 36.875805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409210, 39.330517, 36.769253>,  <26.239527, 39.173290, 36.705322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409210, 39.330517, 36.769253>,  <26.692017, 39.592560, 36.875805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409210, 39.330517, 36.769253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592820, 0.754398, -0.281863,
		0.385606, -0.041368, -0.921736,
		-0.707016, -0.655112, -0.266377,
		26.197105, 39.133984, 36.689339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474012, 39.845181, 36.337795>,  <26.692017, 39.592560, 36.875805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474012, 39.845181, 36.337795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168739, 39.613106, 36.451595>,  <25.985577, 39.473862, 36.519875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168739, 39.613106, 36.451595>,  <26.474012, 39.845181, 36.337795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168739, 39.613106, 36.451595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644609, 0.652832, -0.397856,
		0.045102, -0.487025, -0.872223,
		-0.763181, -0.580187, 0.284496,
		25.939785, 39.439049, 36.536945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854687, 39.845779, 35.846729>,  <26.474012, 39.845181, 36.337795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854687, 39.845779, 35.846729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703934, 39.801758, 36.214607>,  <25.613482, 39.775345, 36.435333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703934, 39.801758, 36.214607>,  <25.854687, 39.845779, 35.846729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703934, 39.801758, 36.214607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619647, 0.767975, -0.162027,
		-0.688474, -0.630954, -0.357632,
		-0.376884, -0.110054, 0.919699,
		25.590868, 39.768742, 36.490517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388294, 40.436489, 35.602482>,  <25.854687, 39.845779, 35.846729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388294, 40.436489, 35.602482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018635, 40.358482, 35.733887>,  <24.796839, 40.311676, 35.812729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018635, 40.358482, 35.733887>,  <25.388294, 40.436489, 35.602482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.018635, 40.358482, 35.733887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366309, -0.696520, 0.616990,
		0.108490, 0.690526, 0.715124,
		-0.924147, -0.195019, 0.328511,
		24.741390, 40.299976, 35.832439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268734, 40.419556, 36.359879>,  <25.388294, 40.436489, 35.602482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.268734, 40.419556, 36.359879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985439, 40.182411, 36.206558>,  <24.815462, 40.040123, 36.114567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985439, 40.182411, 36.206558>,  <25.268734, 40.419556, 36.359879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985439, 40.182411, 36.206558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359730, -0.770224, 0.526641,
		-0.607450, 0.235102, 0.758770,
		-0.708236, -0.592860, -0.383299,
		24.772968, 40.004555, 36.091568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.097939, 40.244606, 36.967827>,  <25.268734, 40.419556, 36.359879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.097939, 40.244606, 36.967827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.070366, 40.012741, 36.643051>,  <25.053822, 39.873623, 36.448185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.070366, 40.012741, 36.643051>,  <25.097939, 40.244606, 36.967827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.070366, 40.012741, 36.643051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621895, -0.661353, 0.419356,
		-0.780061, -0.476034, 0.406075,
		-0.068931, -0.579659, -0.811938,
		25.049686, 39.838844, 36.399471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.858025, 39.486282, 37.093895>,  <25.097939, 40.244606, 36.967827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.858025, 39.486282, 37.093895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093508, 39.476044, 36.770718>,  <25.234798, 39.469902, 36.576813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093508, 39.476044, 36.770718>,  <24.858025, 39.486282, 37.093895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.093508, 39.476044, 36.770718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416340, -0.847130, 0.330200,
		-0.692881, -0.530769, -0.488057,
		0.588707, -0.025592, -0.807941,
		25.270121, 39.468365, 36.528336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888689, 38.847683, 36.935513>,  <24.858025, 39.486282, 37.093895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888689, 38.847683, 36.935513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221773, 39.019497, 36.795746>,  <25.421623, 39.122585, 36.711887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221773, 39.019497, 36.795746>,  <24.888689, 38.847683, 36.935513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.221773, 39.019497, 36.795746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513359, -0.835377, 0.196489,
		-0.207494, -0.342994, -0.916134,
		0.832711, 0.429536, -0.349415,
		25.471586, 39.148357, 36.690922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139051, 38.389687, 36.454552>,  <24.888689, 38.847683, 36.935513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139051, 38.389687, 36.454552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466106, 38.605061, 36.536095>,  <25.662338, 38.734283, 36.585022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466106, 38.605061, 36.536095>,  <25.139051, 38.389687, 36.454552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466106, 38.605061, 36.536095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526249, -0.842559, 0.114701,
		0.233522, 0.013497, -0.972258,
		0.817636, 0.538435, 0.203859,
		25.711397, 38.766590, 36.597252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698383, 38.096443, 36.015614>,  <25.139051, 38.389687, 36.454552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698383, 38.096443, 36.015614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863794, 38.293213, 36.322079>,  <25.963041, 38.411274, 36.505959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863794, 38.293213, 36.322079>,  <25.698383, 38.096443, 36.015614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863794, 38.293213, 36.322079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554223, -0.803626, 0.216844,
		0.722379, 0.334953, -0.604959,
		0.413528, 0.491926, 0.766161,
		25.987852, 38.440792, 36.551926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415741, 37.906094, 35.933277>,  <25.698383, 38.096443, 36.015614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415741, 37.906094, 35.933277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345472, 38.044922, 36.301773>,  <26.303310, 38.128220, 36.522869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345472, 38.044922, 36.301773>,  <26.415741, 37.906094, 35.933277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345472, 38.044922, 36.301773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680969, -0.632951, 0.368313,
		0.710929, 0.692038, -0.125151,
		-0.175672, 0.347068, 0.921240,
		26.292770, 38.149044, 36.578144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076180, 38.125225, 36.309956>,  <26.415741, 37.906094, 35.933277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076180, 38.125225, 36.309956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786331, 37.985588, 36.547630>,  <26.612421, 37.901806, 36.690235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786331, 37.985588, 36.547630>,  <27.076180, 38.125225, 36.309956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786331, 37.985588, 36.547630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665997, -0.576330, 0.473594,
		0.177117, 0.738902, 0.650119,
		-0.724622, -0.349096, 0.594184,
		26.568945, 37.880859, 36.725887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060089, 38.313881, 37.018242>,  <27.076180, 38.125225, 36.309956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060089, 38.313881, 37.018242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945364, 37.949131, 36.900784>,  <26.876528, 37.730282, 36.830307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945364, 37.949131, 36.900784>,  <27.060089, 38.313881, 37.018242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945364, 37.949131, 36.900784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879083, -0.372343, 0.297614,
		-0.380723, -0.172781, 0.908403,
		-0.286815, -0.911870, -0.293649,
		26.859320, 37.675571, 36.812691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981762, 37.896286, 37.581867>,  <27.060089, 38.313881, 37.018242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981762, 37.896286, 37.581867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106602, 37.707344, 37.252148>,  <27.181505, 37.593979, 37.054314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106602, 37.707344, 37.252148>,  <26.981762, 37.896286, 37.581867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106602, 37.707344, 37.252148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812995, -0.316136, 0.488977,
		-0.491561, -0.822764, 0.285355,
		0.312101, -0.472354, -0.824303,
		27.200232, 37.565639, 37.004856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353985, 37.335377, 37.847153>,  <26.981762, 37.896286, 37.581867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353985, 37.335377, 37.847153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452003, 37.311195, 37.460102>,  <27.510815, 37.296684, 37.227871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452003, 37.311195, 37.460102>,  <27.353985, 37.335377, 37.847153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452003, 37.311195, 37.460102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913103, -0.321078, 0.251301,
		-0.325875, -0.945121, -0.023476,
		0.245047, -0.060457, -0.967624,
		27.525518, 37.293056, 37.169815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653957, 36.650265, 37.680786>,  <27.353985, 37.335377, 37.847153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653957, 36.650265, 37.680786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810467, 36.913723, 37.423698>,  <27.904373, 37.071796, 37.269447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810467, 36.913723, 37.423698>,  <27.653957, 36.650265, 37.680786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810467, 36.913723, 37.423698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920176, -0.290177, 0.262818,
		-0.013399, -0.694250, -0.719609,
		0.391276, 0.658645, -0.642720,
		27.927849, 37.111317, 37.230881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152142, 36.255779, 37.344788>,  <27.653957, 36.650265, 37.680786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152142, 36.255779, 37.344788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234785, 36.627605, 37.466923>,  <28.284370, 36.850700, 37.540203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234785, 36.627605, 37.466923>,  <28.152142, 36.255779, 37.344788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234785, 36.627605, 37.466923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797914, -0.340683, 0.497261,
		0.566257, 0.140892, -0.812098,
		0.206607, 0.929562, 0.305334,
		28.296768, 36.906475, 37.558521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797564, 36.582062, 37.173664>,  <28.152142, 36.255779, 37.344788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797564, 36.582062, 37.173664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659790, 36.715946, 37.524509>,  <28.577126, 36.796276, 37.735016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659790, 36.715946, 37.524509>,  <28.797564, 36.582062, 37.173664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659790, 36.715946, 37.524509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514601, -0.714112, 0.474585,
		0.785207, 0.614829, 0.073724,
		-0.344435, 0.334710, 0.877117,
		28.556459, 36.816360, 37.787643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363976, 36.600014, 37.694355>,  <28.797564, 36.582062, 37.173664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363976, 36.600014, 37.694355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036964, 36.517963, 37.909603>,  <28.840757, 36.468731, 38.038754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036964, 36.517963, 37.909603>,  <29.363976, 36.600014, 37.694355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036964, 36.517963, 37.909603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514635, -0.679588, 0.522792,
		0.258460, 0.704331, 0.661147,
		-0.817526, -0.205129, 0.538120,
		28.791706, 36.456425, 38.071037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577972, 36.423515, 38.388649>,  <29.363976, 36.600014, 37.694355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577972, 36.423515, 38.388649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213881, 36.264626, 38.341850>,  <28.995424, 36.169292, 38.313770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213881, 36.264626, 38.341850>,  <29.577972, 36.423515, 38.388649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213881, 36.264626, 38.341850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245361, -0.744956, 0.620353,
		-0.333581, 0.535958, 0.775547,
		-0.910232, -0.397227, -0.117000,
		28.940811, 36.145458, 38.306751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440104, 36.090054, 39.022564>,  <29.577972, 36.423515, 38.388649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440104, 36.090054, 39.022564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177015, 35.915375, 38.777061>,  <29.019161, 35.810570, 38.629761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177015, 35.915375, 38.777061>,  <29.440104, 36.090054, 39.022564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177015, 35.915375, 38.777061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040739, -0.792988, 0.607873,
		-0.752159, 0.424816, 0.503775,
		-0.657721, -0.436694, -0.613760,
		28.979698, 35.784367, 38.592934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701130, 36.340694, 39.654160>,  <29.440104, 36.090054, 39.022564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701130, 36.340694, 39.654160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385210, 36.546043, 39.788422>,  <29.195658, 36.669250, 39.868980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385210, 36.546043, 39.788422>,  <29.701130, 36.340694, 39.654160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385210, 36.546043, 39.788422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493029, 0.205805, 0.845320,
		0.364882, 0.833123, -0.415651,
		-0.789800, 0.513371, 0.335659,
		29.148270, 36.700054, 39.889118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090435, 35.704956, 39.994778>,  <29.701130, 36.340694, 39.654160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090435, 35.704956, 39.994778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417692, 35.475834, 40.014923>,  <30.614046, 35.338360, 40.027012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417692, 35.475834, 40.014923>,  <30.090435, 35.704956, 39.994778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417692, 35.475834, 40.014923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573263, -0.805677, 0.149176,
		-0.044869, -0.150921, -0.987527,
		0.818142, -0.572806, 0.050368,
		30.663136, 35.303993, 40.030033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161793, 35.100296, 39.533070>,  <30.090435, 35.704956, 39.994778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161793, 35.100296, 39.533070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363708, 35.010056, 39.866367>,  <30.484858, 34.955914, 40.066345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363708, 35.010056, 39.866367>,  <30.161793, 35.100296, 39.533070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363708, 35.010056, 39.866367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656080, -0.727579, 0.200471,
		0.561023, -0.647869, -0.515285,
		0.504789, -0.225599, 0.833242,
		30.515146, 34.942375, 40.116341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226522, 34.383343, 39.544582>,  <30.161793, 35.100296, 39.533070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226522, 34.383343, 39.544582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274469, 34.506672, 39.922062>,  <30.303238, 34.580669, 40.148548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274469, 34.506672, 39.922062>,  <30.226522, 34.383343, 39.544582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274469, 34.506672, 39.922062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746454, -0.598716, 0.290423,
		0.654552, -0.739241, 0.158382,
		0.119866, 0.308322, 0.943700,
		30.310429, 34.599167, 40.205173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786940, 33.853359, 39.908867>,  <30.226522, 34.383343, 39.544582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786940, 33.853359, 39.908867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890303, 34.140282, 40.167694>,  <29.952320, 34.312435, 40.322990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890303, 34.140282, 40.167694>,  <29.786940, 33.853359, 39.908867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890303, 34.140282, 40.167694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594982, -0.409527, 0.691581,
		0.761067, -0.563704, 0.320958,
		0.258406, 0.717304, 0.647071,
		29.967825, 34.355473, 40.361816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009226, 33.533722, 40.601078>,  <29.786940, 33.853359, 39.908867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009226, 33.533722, 40.601078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908800, 33.915352, 40.666451>,  <29.848545, 34.144329, 40.705673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908800, 33.915352, 40.666451>,  <30.009226, 33.533722, 40.601078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908800, 33.915352, 40.666451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316572, -0.240487, 0.917577,
		0.914740, 0.178632, 0.362411,
		-0.251064, 0.954074, 0.163434,
		29.833481, 34.201572, 40.715481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263140, 33.663776, 41.203323>,  <30.009226, 33.533722, 40.601078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263140, 33.663776, 41.203323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931055, 33.858990, 41.095562>,  <29.731804, 33.976116, 41.030907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931055, 33.858990, 41.095562>,  <30.263140, 33.663776, 41.203323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931055, 33.858990, 41.095562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443991, -0.286666, 0.848937,
		0.337081, 0.824407, 0.454675,
		-0.830210, 0.488032, -0.269399,
		29.681992, 34.005398, 41.014744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919739, 34.274788, 41.551853>,  <30.263140, 33.663776, 41.203323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919739, 34.274788, 41.551853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620686, 34.080776, 41.370396>,  <29.441254, 33.964367, 41.261520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620686, 34.080776, 41.370396>,  <29.919739, 34.274788, 41.551853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620686, 34.080776, 41.370396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406352, -0.206188, 0.890149,
		-0.525286, 0.849841, -0.042942,
		-0.747631, -0.485032, -0.453643,
		29.396397, 33.935268, 41.234303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836885, 35.003929, 41.184349>,  <29.919739, 34.274788, 41.551853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836885, 35.003929, 41.184349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003880, 34.696110, 40.991058>,  <30.104076, 34.511417, 40.875084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003880, 34.696110, 40.991058>,  <29.836885, 35.003929, 41.184349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003880, 34.696110, 40.991058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665759, 0.620966, -0.413721,
		0.618443, -0.148988, 0.771577,
		0.417484, -0.769548, -0.483222,
		30.129126, 34.465244, 40.846092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563059, 34.886311, 41.405014>,  <29.836885, 35.003929, 41.184349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563059, 34.886311, 41.405014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493799, 34.777802, 41.026295>,  <30.452244, 34.712696, 40.799061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493799, 34.777802, 41.026295>,  <30.563059, 34.886311, 41.405014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493799, 34.777802, 41.026295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720860, 0.620135, -0.309506,
		0.671104, -0.736102, 0.088169,
		-0.173151, -0.271268, -0.946801,
		30.441854, 34.696423, 40.742256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153397, 34.546646, 41.138115>,  <30.563059, 34.886311, 41.405014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153397, 34.546646, 41.138115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937113, 34.705502, 40.841492>,  <30.807343, 34.800816, 40.663517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937113, 34.705502, 40.841492>,  <31.153397, 34.546646, 41.138115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937113, 34.705502, 40.841492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803075, 0.506111, -0.314518,
		0.250403, -0.765591, -0.592594,
		-0.540711, 0.397141, -0.741560,
		30.774900, 34.824642, 40.619022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482841, 34.412243, 40.484470>,  <31.153397, 34.546646, 41.138115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482841, 34.412243, 40.484470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280230, 34.754005, 40.438133>,  <31.158663, 34.959064, 40.410332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280230, 34.754005, 40.438133>,  <31.482841, 34.412243, 40.484470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280230, 34.754005, 40.438133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804614, 0.420111, -0.419646,
		-0.309880, -0.305774, -0.900265,
		-0.506528, 0.854406, -0.115846,
		31.128271, 35.010326, 40.403378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653452, 34.642761, 39.820168>,  <31.482841, 34.412243, 40.484470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653452, 34.642761, 39.820168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527893, 34.942093, 40.053913>,  <31.452559, 35.121693, 40.194160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527893, 34.942093, 40.053913>,  <31.653452, 34.642761, 39.820168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527893, 34.942093, 40.053913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792383, 0.545539, -0.272976,
		-0.523067, 0.377351, -0.764204,
		-0.313895, 0.748327, 0.584360,
		31.433725, 35.166592, 40.229221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022739, 34.047924, 39.607594>,  <31.653452, 34.642761, 39.820168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022739, 34.047924, 39.607594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051693, 33.719524, 39.381065>,  <32.069065, 33.522484, 39.245148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051693, 33.719524, 39.381065>,  <32.022739, 34.047924, 39.607594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051693, 33.719524, 39.381065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754090, -0.416672, 0.507674,
		-0.652770, 0.390309, -0.649268,
		0.072382, -0.821001, -0.566320,
		32.073406, 33.473225, 39.211170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305157, 33.715191, 39.284805>,  <32.022739, 34.047924, 39.607594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305157, 33.715191, 39.284805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584002, 33.440037, 39.365643>,  <31.751308, 33.274944, 39.414143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584002, 33.440037, 39.365643>,  <31.305157, 33.715191, 39.284805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584002, 33.440037, 39.365643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658572, -0.502959, 0.559746,
		-0.283400, -0.523298, -0.803644,
		0.697114, -0.687889, 0.202091,
		31.793137, 33.233669, 39.426270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116306, 33.010105, 39.138435>,  <31.305157, 33.715191, 39.284805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116306, 33.010105, 39.138435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399357, 32.999077, 39.420856>,  <31.569187, 32.992462, 39.590309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399357, 32.999077, 39.420856>,  <31.116306, 33.010105, 39.138435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399357, 32.999077, 39.420856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611776, -0.523883, 0.592686,
		0.353550, -0.851344, -0.387577,
		0.707625, -0.027566, 0.706050,
		31.611645, 32.990807, 39.632671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938150, 33.010864, 38.395504>,  <31.116306, 33.010105, 39.138435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938150, 33.010864, 38.395504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997747, 33.058804, 38.002884>,  <31.033506, 33.087566, 37.767311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997747, 33.058804, 38.002884>,  <30.938150, 33.010864, 38.395504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997747, 33.058804, 38.002884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838518, 0.510804, 0.189649,
		0.524107, -0.851303, -0.024386,
		0.148992, 0.119845, -0.981549,
		31.042444, 33.094757, 37.708420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634056, 32.724007, 38.185699>,  <30.938150, 33.010864, 38.395504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634056, 32.724007, 38.185699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515636, 33.014297, 37.937290>,  <31.444584, 33.188473, 37.788242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515636, 33.014297, 37.937290>,  <31.634056, 32.724007, 38.185699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515636, 33.014297, 37.937290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790932, 0.550778, 0.266588,
		0.535519, -0.412267, -0.737059,
		-0.296050, 0.725727, -0.621027,
		31.426821, 33.232014, 37.750980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110031, 32.988781, 37.699070>,  <31.634056, 32.724007, 38.185699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110031, 32.988781, 37.699070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882729, 33.305836, 37.787449>,  <31.746347, 33.496067, 37.840477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882729, 33.305836, 37.787449>,  <32.110031, 32.988781, 37.699070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882729, 33.305836, 37.787449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821553, 0.531432, 0.206473,
		0.046237, 0.298852, -0.953179,
		-0.568255, 0.792633, 0.220951,
		31.712252, 33.543625, 37.853733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458084, 33.217442, 37.134487>,  <32.110031, 32.988781, 37.699070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458084, 33.217442, 37.134487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820225, 33.365040, 37.050415>,  <33.037510, 33.453598, 36.999973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820225, 33.365040, 37.050415>,  <32.458084, 33.217442, 37.134487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820225, 33.365040, 37.050415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279804, -0.146035, 0.948885,
		0.319443, -0.917886, -0.235460,
		0.905354, 0.368997, -0.210178,
		33.091831, 33.475739, 36.987362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850422, 32.801979, 37.559692>,  <32.458084, 33.217442, 37.134487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850422, 32.801979, 37.559692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110790, 33.084221, 37.447678>,  <33.267010, 33.253567, 37.380466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110790, 33.084221, 37.447678>,  <32.850422, 32.801979, 37.559692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110790, 33.084221, 37.447678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420213, -0.027673, 0.907004,
		0.632238, -0.708063, -0.314518,
		0.650919, 0.705607, -0.280041,
		33.306065, 33.295902, 37.363667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423969, 32.601204, 37.891109>,  <32.850422, 32.801979, 37.559692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423969, 32.601204, 37.891109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555370, 32.958351, 37.767899>,  <33.634209, 33.172638, 37.693970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555370, 32.958351, 37.767899>,  <33.423969, 32.601204, 37.891109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555370, 32.958351, 37.767899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644447, 0.026535, 0.764189,
		0.690490, -0.449544, -0.566686,
		0.328499, 0.892864, -0.308030,
		33.653919, 33.226212, 37.675491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074890, 32.679012, 37.768295>,  <33.423969, 32.601204, 37.891109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074890, 32.679012, 37.768295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022942, 33.073269, 37.811462>,  <33.991772, 33.309822, 37.837364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022942, 33.073269, 37.811462>,  <34.074890, 32.679012, 37.768295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022942, 33.073269, 37.811462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700645, 0.014217, 0.713369,
		0.701590, 0.168261, -0.692430,
		-0.129876, 0.985640, 0.107917,
		33.983978, 33.368961, 37.843838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664501, 33.065529, 37.578213>,  <34.074890, 32.679012, 37.768295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664501, 33.065529, 37.578213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464230, 33.283527, 37.847225>,  <34.344067, 33.414326, 38.008633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464230, 33.283527, 37.847225>,  <34.664501, 33.065529, 37.578213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464230, 33.283527, 37.847225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840404, 0.119828, 0.528548,
		0.207471, 0.829828, -0.518016,
		-0.500677, 0.545001, 0.672530,
		34.314026, 33.447029, 38.048985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056461, 33.678974, 37.746372>,  <34.664501, 33.065529, 37.578213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056461, 33.678974, 37.746372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805275, 33.573784, 38.039356>,  <34.654564, 33.510670, 38.215145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805275, 33.573784, 38.039356>,  <35.056461, 33.678974, 37.746372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805275, 33.573784, 38.039356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753862, 0.028166, 0.656429,
		-0.193253, 0.964392, 0.180557,
		-0.627970, -0.262972, 0.732461,
		34.616882, 33.494892, 38.259094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363716, 33.330811, 38.340820>,  <35.056461, 33.678974, 37.746372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363716, 33.330811, 38.340820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456402, 32.953362, 38.246265>,  <35.512012, 32.726891, 38.189533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456402, 32.953362, 38.246265>,  <35.363716, 33.330811, 38.340820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456402, 32.953362, 38.246265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322728, -0.303808, 0.896408,
		-0.917690, -0.131421, -0.374931,
		0.231714, -0.943626, -0.236388,
		35.525917, 32.670273, 38.175350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900669, 33.628185, 38.843113>,  <35.363716, 33.330811, 38.340820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900669, 33.628185, 38.843113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701988, 33.970554, 38.785595>,  <35.582779, 34.175976, 38.751083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701988, 33.970554, 38.785595>,  <35.900669, 33.628185, 38.843113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701988, 33.970554, 38.785595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830092, -0.420103, 0.366691,
		0.253451, 0.301500, 0.919163,
		-0.496700, 0.855927, -0.143798,
		35.552979, 34.227333, 38.742455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371780, 33.474480, 39.178265>,  <35.900669, 33.628185, 38.843113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371780, 33.474480, 39.178265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274872, 33.820419, 39.002384>,  <35.216728, 34.027985, 38.896854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274872, 33.820419, 39.002384>,  <35.371780, 33.474480, 39.178265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274872, 33.820419, 39.002384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950431, -0.302602, -0.071507,
		-0.194899, 0.400586, 0.895291,
		-0.242272, 0.864848, -0.439706,
		35.202190, 34.079872, 38.870472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694477, 33.467972, 39.178020>,  <35.371780, 33.474480, 39.178265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694477, 33.467972, 39.178020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738678, 33.770378, 38.919956>,  <34.765198, 33.951820, 38.765118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738678, 33.770378, 38.919956>,  <34.694477, 33.467972, 39.178020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738678, 33.770378, 38.919956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910281, -0.183596, -0.371054,
		-0.398970, 0.628281, 0.667897,
		0.110503, 0.756013, -0.645161,
		34.771828, 33.997181, 38.726406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072014, 33.737190, 39.140709>,  <34.694477, 33.467972, 39.178020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072014, 33.737190, 39.140709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262199, 33.846523, 38.806232>,  <34.376312, 33.912125, 38.605545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262199, 33.846523, 38.806232>,  <34.072014, 33.737190, 39.140709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262199, 33.846523, 38.806232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804465, -0.249602, -0.539013,
		-0.356047, 0.928971, 0.101213,
		0.475464, 0.273336, -0.836195,
		34.404839, 33.928524, 38.555374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625660, 34.154270, 38.762962>,  <34.072014, 33.737190, 39.140709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625660, 34.154270, 38.762962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867683, 33.974453, 38.500111>,  <34.012897, 33.866562, 38.342400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867683, 33.974453, 38.500111>,  <33.625660, 34.154270, 38.762962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867683, 33.974453, 38.500111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710124, 0.068535, -0.700733,
		0.360046, 0.890626, -0.277764,
		0.605054, -0.449543, -0.657130,
		34.049198, 33.839592, 38.302971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680634, 34.628269, 38.071949>,  <33.625660, 34.154270, 38.762962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680634, 34.628269, 38.071949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784267, 34.245251, 38.021393>,  <33.846447, 34.015438, 37.991058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784267, 34.245251, 38.021393>,  <33.680634, 34.628269, 38.071949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784267, 34.245251, 38.021393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522871, -0.029023, -0.851918,
		0.812085, 0.286804, -0.508194,
		0.259083, -0.957550, -0.126392,
		33.861992, 33.957985, 37.983475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855129, 34.567501, 37.325092>,  <33.680634, 34.628269, 38.071949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855129, 34.567501, 37.325092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772015, 34.207211, 37.477684>,  <33.722145, 33.991035, 37.569241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772015, 34.207211, 37.477684>,  <33.855129, 34.567501, 37.325092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772015, 34.207211, 37.477684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504465, -0.235453, -0.830709,
		0.838058, -0.365051, -0.405459,
		-0.207784, -0.900722, 0.381479,
		33.709679, 33.936993, 37.592129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076187, 34.229652, 36.843483>,  <33.855129, 34.567501, 37.325092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076187, 34.229652, 36.843483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858738, 33.956978, 37.039352>,  <33.728268, 33.793373, 37.156876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858738, 33.956978, 37.039352>,  <34.076187, 34.229652, 36.843483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858738, 33.956978, 37.039352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369876, -0.329141, -0.868826,
		0.753436, -0.653434, -0.073209,
		-0.543624, -0.681683, 0.489676,
		33.695652, 33.752472, 37.186256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362072, 33.582489, 36.880329>,  <34.076187, 34.229652, 36.843483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362072, 33.582489, 36.880329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962521, 33.563572, 36.878979>,  <33.722790, 33.552223, 36.878170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962521, 33.563572, 36.878979>,  <34.362072, 33.582489, 36.880329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962521, 33.563572, 36.878979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019254, -0.339559, -0.940388,
		0.043326, -0.939395, 0.340088,
		-0.998876, -0.047291, -0.003376,
		33.662857, 33.549385, 36.877968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139061, 32.862919, 36.621334>,  <34.362072, 33.582489, 36.880329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139061, 32.862919, 36.621334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841293, 33.128738, 36.595398>,  <33.662632, 33.288231, 36.579838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841293, 33.128738, 36.595398>,  <34.139061, 32.862919, 36.621334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841293, 33.128738, 36.595398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112784, -0.220860, -0.968762,
		-0.658114, -0.713856, 0.239364,
		-0.744423, 0.664552, -0.064839,
		33.617966, 33.328102, 36.575947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536163, 32.548080, 36.464394>,  <34.139061, 32.862919, 36.621334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536163, 32.548080, 36.464394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545605, 32.911594, 36.297756>,  <33.551270, 33.129704, 36.197773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545605, 32.911594, 36.297756>,  <33.536163, 32.548080, 36.464394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545605, 32.911594, 36.297756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233658, -0.400156, -0.886160,
		-0.972032, 0.118255, 0.202901,
		0.023601, 0.908785, -0.416596,
		33.552685, 33.184231, 36.172779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936413, 32.530033, 36.115398>,  <33.536163, 32.548080, 36.464394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936413, 32.530033, 36.115398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124084, 32.859913, 35.989075>,  <33.236687, 33.057842, 35.913280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124084, 32.859913, 35.989075>,  <32.936413, 32.530033, 36.115398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124084, 32.859913, 35.989075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243589, -0.222886, -0.943921,
		-0.848843, 0.519797, 0.096315,
		0.469180, 0.824702, -0.315812,
		33.264839, 33.107323, 35.894333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476990, 32.748348, 35.623562>,  <32.936413, 32.530033, 36.115398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476990, 32.748348, 35.623562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826546, 32.921131, 35.534363>,  <33.036278, 33.024803, 35.480843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826546, 32.921131, 35.534363>,  <32.476990, 32.748348, 35.623562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826546, 32.921131, 35.534363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169289, -0.159586, -0.972560,
		-0.455695, 0.887661, -0.066335,
		0.873890, 0.431961, -0.222994,
		33.088715, 33.050720, 35.467464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370762, 33.154831, 35.093697>,  <32.476990, 32.748348, 35.623562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370762, 33.154831, 35.093697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767792, 33.116379, 35.063892>,  <33.006008, 33.093307, 35.046009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767792, 33.116379, 35.063892>,  <32.370762, 33.154831, 35.093697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767792, 33.116379, 35.063892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078918, -0.042899, -0.995957,
		0.092548, 0.994443, -0.050167,
		0.992576, -0.096133, -0.074510,
		33.065563, 33.087540, 35.041538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441998, 33.503994, 34.568481>,  <32.370762, 33.154831, 35.093697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441998, 33.503994, 34.568481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779678, 33.290394, 34.587067>,  <32.982288, 33.162231, 34.598217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779678, 33.290394, 34.587067>,  <32.441998, 33.503994, 34.568481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779678, 33.290394, 34.587067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076212, 0.033779, -0.996519,
		0.530576, 0.844807, 0.069214,
		0.844204, -0.534004, 0.046462,
		33.032940, 33.130192, 34.601006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024025, 33.821751, 34.127132>,  <32.441998, 33.503994, 34.568481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024025, 33.821751, 34.127132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096851, 33.430527, 34.167633>,  <33.140549, 33.195793, 34.191933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096851, 33.430527, 34.167633>,  <33.024025, 33.821751, 34.127132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096851, 33.430527, 34.167633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071127, -0.089606, -0.993434,
		0.980710, 0.188075, 0.053252,
		0.182068, -0.978059, 0.101255,
		33.151470, 33.137108, 34.198009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571953, 33.752693, 33.594524>,  <33.024025, 33.821751, 34.127132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571953, 33.752693, 33.594524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456165, 33.379208, 33.678787>,  <33.386692, 33.155117, 33.729347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456165, 33.379208, 33.678787>,  <33.571953, 33.752693, 33.594524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456165, 33.379208, 33.678787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086893, -0.244808, -0.965670,
		0.953235, -0.261228, 0.151998,
		-0.289470, -0.933718, 0.210660,
		33.369324, 33.099091, 33.741985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048309, 33.193840, 33.259300>,  <33.571953, 33.752693, 33.594524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048309, 33.193840, 33.259300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698879, 33.009087, 33.320660>,  <33.489220, 32.898235, 33.357475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698879, 33.009087, 33.320660>,  <34.048309, 33.193840, 33.259300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698879, 33.009087, 33.320660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002683, -0.319748, -0.947499,
		0.486681, -0.827300, 0.280564,
		-0.873576, -0.461882, 0.153395,
		33.436806, 32.870522, 33.366680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096397, 32.671902, 32.861931>,  <34.048309, 33.193840, 33.259300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096397, 32.671902, 32.861931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704365, 32.668789, 32.941307>,  <33.469147, 32.666924, 32.988934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704365, 32.668789, 32.941307>,  <34.096397, 32.671902, 32.861931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704365, 32.668789, 32.941307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189958, -0.254787, -0.948156,
		0.057939, -0.966966, 0.248234,
		-0.980081, -0.007781, 0.198445,
		33.410339, 32.666454, 33.000839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841164, 32.097034, 32.526482>,  <34.096397, 32.671902, 32.861931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841164, 32.097034, 32.526482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531223, 32.339321, 32.598835>,  <33.345261, 32.484692, 32.642246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531223, 32.339321, 32.598835>,  <33.841164, 32.097034, 32.526482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531223, 32.339321, 32.598835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341485, -0.160267, -0.926122,
		-0.531977, -0.779374, 0.331025,
		-0.774848, 0.605716, 0.180886,
		33.298767, 32.521034, 32.653099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321053, 31.741175, 32.209782>,  <33.841164, 32.097034, 32.526482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321053, 31.741175, 32.209782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173401, 32.111187, 32.245693>,  <33.084812, 32.333195, 32.267239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173401, 32.111187, 32.245693>,  <33.321053, 31.741175, 32.209782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173401, 32.111187, 32.245693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330196, -0.040233, -0.943055,
		-0.868744, -0.377752, 0.320293,
		-0.369127, 0.925032, 0.089780,
		33.062664, 32.388695, 32.272629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630035, 31.718254, 31.872879>,  <33.321053, 31.741175, 32.209782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630035, 31.718254, 31.872879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777283, 32.089851, 31.857571>,  <32.865631, 32.312809, 31.848385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777283, 32.089851, 31.857571>,  <32.630035, 31.718254, 31.872879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777283, 32.089851, 31.857571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315370, 0.086033, -0.945061,
		-0.874660, 0.359964, 0.324646,
		0.368118, 0.928991, -0.038272,
		32.887718, 32.368549, 31.846088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065262, 32.097164, 31.585518>,  <32.630035, 31.718254, 31.872879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065262, 32.097164, 31.585518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408962, 32.290852, 31.519526>,  <32.615185, 32.407063, 31.479931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408962, 32.290852, 31.519526>,  <32.065262, 32.097164, 31.585518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408962, 32.290852, 31.519526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295565, 0.206706, -0.932692,
		-0.417523, 0.850180, 0.320731,
		0.859253, 0.484217, -0.164979,
		32.666737, 32.436115, 31.470032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898088, 32.787003, 31.265249>,  <32.065262, 32.097164, 31.585518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898088, 32.787003, 31.265249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287926, 32.782093, 31.175787>,  <32.521828, 32.779148, 31.122110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287926, 32.782093, 31.175787>,  <31.898088, 32.787003, 31.265249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287926, 32.782093, 31.175787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179757, 0.552885, -0.813637,
		0.133639, 0.833167, 0.536631,
		0.974591, -0.012271, -0.223655,
		32.580303, 32.778412, 31.108690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018234, 33.503101, 30.920610>,  <31.898088, 32.787003, 31.265249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018234, 33.503101, 30.920610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342102, 33.281769, 30.842371>,  <32.536423, 33.148972, 30.795427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342102, 33.281769, 30.842371>,  <32.018234, 33.503101, 30.920610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342102, 33.281769, 30.842371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124453, 0.487584, -0.864160,
		0.573535, 0.675344, 0.463647,
		0.809672, -0.553329, -0.195598,
		32.585003, 33.115768, 30.783691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632839, 33.929070, 30.845196>,  <32.018234, 33.503101, 30.920610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632839, 33.929070, 30.845196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724823, 33.588966, 30.655804>,  <32.780014, 33.384907, 30.542168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724823, 33.588966, 30.655804>,  <32.632839, 33.929070, 30.845196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724823, 33.588966, 30.655804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103629, 0.505147, -0.856789,
		0.967668, 0.147957, 0.204272,
		0.229956, -0.850256, -0.473482,
		32.793808, 33.333889, 30.513760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253376, 34.003120, 30.369362>,  <32.632839, 33.929070, 30.845196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253376, 34.003120, 30.369362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045452, 33.693413, 30.224968>,  <32.920696, 33.507587, 30.138332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045452, 33.693413, 30.224968>,  <33.253376, 34.003120, 30.369362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045452, 33.693413, 30.224968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050802, 0.449827, -0.891670,
		0.852769, -0.445162, -0.273160,
		-0.519812, -0.774265, -0.360983,
		32.889507, 33.461132, 30.116673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675903, 33.769836, 29.766087>,  <33.253376, 34.003120, 30.369362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675903, 33.769836, 29.766087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300594, 33.636272, 29.729980>,  <33.075409, 33.556133, 29.708317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300594, 33.636272, 29.729980>,  <33.675903, 33.769836, 29.766087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300594, 33.636272, 29.729980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004834, 0.273594, -0.961833,
		0.345865, -0.902025, -0.258320,
		-0.938272, -0.333913, -0.090266,
		33.019112, 33.536098, 29.702902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637432, 33.525066, 29.098560>,  <33.675903, 33.769836, 29.766087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637432, 33.525066, 29.098560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245800, 33.527355, 29.179911>,  <33.010818, 33.528728, 29.228720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245800, 33.527355, 29.179911>,  <33.637432, 33.525066, 29.098560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245800, 33.527355, 29.179911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196673, 0.229313, -0.953276,
		-0.052095, -0.973336, -0.223391,
		-0.979084, 0.005726, 0.203375,
		32.952076, 33.529072, 29.240923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257427, 33.211105, 28.506823>,  <33.637432, 33.525066, 29.098560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257427, 33.211105, 28.506823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975327, 33.412399, 28.706572>,  <32.806065, 33.533176, 28.826420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975327, 33.412399, 28.706572>,  <33.257427, 33.211105, 28.506823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975327, 33.412399, 28.706572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365634, 0.345290, -0.864342,
		-0.607395, -0.792168, -0.059518,
		-0.705254, 0.503235, 0.499371,
		32.763752, 33.563370, 28.856382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645569, 32.947407, 28.257025>,  <33.257427, 33.211105, 28.506823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645569, 32.947407, 28.257025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604446, 33.318748, 28.399904>,  <32.579773, 33.541553, 28.485632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604446, 33.318748, 28.399904>,  <32.645569, 32.947407, 28.257025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604446, 33.318748, 28.399904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272583, 0.319061, -0.907689,
		-0.956624, -0.190684, 0.220251,
		-0.102809, 0.928353, 0.357198,
		32.573605, 33.597256, 28.507063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449665, 33.222725, 27.617733>,  <32.645569, 32.947407, 28.257025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449665, 33.222725, 27.617733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452229, 33.543106, 27.857212>,  <32.453766, 33.735332, 28.000900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452229, 33.543106, 27.857212>,  <32.449665, 33.222725, 27.617733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452229, 33.543106, 27.857212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324989, 0.567879, -0.756238,
		-0.945696, -0.189721, 0.263942,
		0.006413, 0.800949, 0.598698,
		32.454151, 33.783390, 28.036821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759008, 33.560894, 27.738802>,  <32.449665, 33.222725, 27.617733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759008, 33.560894, 27.738802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047718, 33.832314, 27.793371>,  <32.220943, 33.995167, 27.826113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047718, 33.832314, 27.793371>,  <31.759008, 33.560894, 27.738802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047718, 33.832314, 27.793371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462400, 0.619412, -0.634441,
		-0.515002, 0.394841, 0.760837,
		0.721775, 0.678550, 0.136424,
		32.264252, 34.035877, 27.834299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444729, 34.250935, 27.741402>,  <31.759008, 33.560894, 27.738802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444729, 34.250935, 27.741402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834555, 34.310822, 27.674694>,  <32.068451, 34.346756, 27.634670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834555, 34.310822, 27.674694>,  <31.444729, 34.250935, 27.741402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834555, 34.310822, 27.674694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223854, 0.686171, -0.692141,
		0.010803, 0.711866, 0.702232,
		0.974563, 0.149720, -0.166767,
		32.126923, 34.355736, 27.624664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520758, 34.964424, 27.735195>,  <31.444729, 34.250935, 27.741402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520758, 34.964424, 27.735195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814066, 34.793797, 27.523401>,  <31.990051, 34.691422, 27.396326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814066, 34.793797, 27.523401>,  <31.520758, 34.964424, 27.735195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814066, 34.793797, 27.523401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208842, 0.599785, -0.772427,
		0.647069, 0.676977, 0.350719,
		0.733271, -0.426569, -0.529483,
		32.034046, 34.665825, 27.364555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632050, 35.433495, 27.249973>,  <31.520758, 34.964424, 27.735195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632050, 35.433495, 27.249973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852324, 35.134674, 27.101023>,  <31.984488, 34.955383, 27.011652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852324, 35.134674, 27.101023>,  <31.632050, 35.433495, 27.249973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852324, 35.134674, 27.101023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106380, 0.379667, -0.918986,
		0.827907, 0.545685, 0.129606,
		0.550685, -0.747048, -0.372379,
		32.017529, 34.910561, 26.989309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129166, 35.745689, 26.860975>,  <31.632050, 35.433495, 27.249973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129166, 35.745689, 26.860975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049076, 35.367355, 26.758749>,  <32.001022, 35.140354, 26.697414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049076, 35.367355, 26.758749>,  <32.129166, 35.745689, 26.860975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049076, 35.367355, 26.758749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250368, 0.301580, -0.919981,
		0.947220, -0.120219, -0.297190,
		-0.200226, -0.945831, -0.255563,
		31.989008, 35.083607, 26.682079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405300, 35.761162, 26.145895>,  <32.129166, 35.745689, 26.860975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405300, 35.761162, 26.145895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174419, 35.436668, 26.183287>,  <32.035889, 35.241974, 26.205721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174419, 35.436668, 26.183287>,  <32.405300, 35.761162, 26.145895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174419, 35.436668, 26.183287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304785, 0.107816, -0.946299,
		0.757589, -0.574699, -0.309483,
		-0.577204, -0.811232, 0.093479,
		32.001259, 35.193298, 26.211330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533775, 35.365864, 25.559481>,  <32.405300, 35.761162, 26.145895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533775, 35.365864, 25.559481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202896, 35.199341, 25.710445>,  <32.004368, 35.099426, 25.801025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202896, 35.199341, 25.710445>,  <32.533775, 35.365864, 25.559481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202896, 35.199341, 25.710445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367510, -0.107271, -0.923812,
		0.425072, -0.902875, -0.064262,
		-0.827194, -0.416304, 0.377414,
		31.954739, 35.074451, 25.823669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362881, 34.881508, 25.037264>,  <32.533775, 35.365864, 25.559481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362881, 34.881508, 25.037264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035568, 34.962944, 25.252283>,  <31.839180, 35.011806, 25.381294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035568, 34.962944, 25.252283>,  <32.362881, 34.881508, 25.037264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035568, 34.962944, 25.252283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504561, 0.193597, -0.841391,
		-0.275371, -0.959724, -0.055691,
		-0.818284, 0.203595, 0.537550,
		31.790083, 35.024021, 25.413548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857405, 34.493256, 24.869179>,  <32.362881, 34.881508, 25.037264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857405, 34.493256, 24.869179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657410, 34.799416, 25.031254>,  <31.537413, 34.983112, 25.128498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657410, 34.799416, 25.031254>,  <31.857405, 34.493256, 24.869179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657410, 34.799416, 25.031254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527110, 0.102268, -0.843621,
		-0.687146, -0.635376, 0.352317,
		-0.499986, 0.765401, 0.405186,
		31.507414, 35.029037, 25.152809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102829, 34.394703, 24.803692>,  <31.857405, 34.493256, 24.869179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102829, 34.394703, 24.803692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133989, 34.786610, 24.877436>,  <31.152685, 35.021755, 24.921682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133989, 34.786610, 24.877436>,  <31.102829, 34.394703, 24.803692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133989, 34.786610, 24.877436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602811, 0.193580, -0.774045,
		-0.794072, -0.050837, 0.605694,
		0.077900, 0.979767, 0.184361,
		31.157360, 35.080540, 24.932745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397650, 34.720955, 24.534298>,  <31.102829, 34.394703, 24.803692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397650, 34.720955, 24.534298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633743, 35.039761, 24.585503>,  <30.775400, 35.231045, 24.616226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633743, 35.039761, 24.585503>,  <30.397650, 34.720955, 24.534298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633743, 35.039761, 24.585503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333952, 0.385465, -0.860170,
		-0.734915, 0.464951, 0.493680,
		0.590233, 0.797018, 0.128013,
		30.810814, 35.278866, 24.623907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931383, 35.207844, 24.197424>,  <30.397650, 34.720955, 24.534298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931383, 35.207844, 24.197424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307037, 35.344158, 24.214800>,  <30.532431, 35.425945, 24.225225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307037, 35.344158, 24.214800>,  <29.931383, 35.207844, 24.197424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307037, 35.344158, 24.214800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136640, 0.486541, -0.862906,
		-0.315201, 0.804451, 0.503494,
		0.939137, 0.340787, 0.043438,
		30.588778, 35.446396, 24.227831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879663, 35.941467, 24.019394>,  <29.931383, 35.207844, 24.197424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879663, 35.941467, 24.019394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251789, 35.815159, 23.944765>,  <30.475063, 35.739372, 23.899988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251789, 35.815159, 23.944765>,  <29.879663, 35.941467, 24.019394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251789, 35.815159, 23.944765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086720, 0.304884, -0.948433,
		0.356369, 0.898518, 0.256254,
		0.930312, -0.315769, -0.186571,
		30.530882, 35.720428, 23.888794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219629, 36.501423, 23.694454>,  <29.879663, 35.941467, 24.019394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219629, 36.501423, 23.694454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461763, 36.195847, 23.605040>,  <30.607044, 36.012501, 23.551392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461763, 36.195847, 23.605040>,  <30.219629, 36.501423, 23.694454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461763, 36.195847, 23.605040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121768, 0.366408, -0.922452,
		0.786600, 0.531175, 0.314823,
		0.605337, -0.763936, -0.223536,
		30.643364, 35.966667, 23.537979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905100, 36.751999, 23.550173>,  <30.219629, 36.501423, 23.694454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905100, 36.751999, 23.550173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823614, 36.413284, 23.353624>,  <30.774723, 36.210056, 23.235695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823614, 36.413284, 23.353624>,  <30.905100, 36.751999, 23.550173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823614, 36.413284, 23.353624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221854, 0.448914, -0.865596,
		0.953563, -0.285346, 0.096415,
		-0.203712, -0.846790, -0.491373,
		30.762501, 36.159248, 23.206213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494007, 36.698132, 23.092611>,  <30.905100, 36.751999, 23.550173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494007, 36.698132, 23.092611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186977, 36.489700, 22.943314>,  <31.002760, 36.364643, 22.853735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186977, 36.489700, 22.943314>,  <31.494007, 36.698132, 23.092611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186977, 36.489700, 22.943314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119189, 0.456129, -0.881896,
		0.629784, -0.721405, -0.288005,
		-0.767571, -0.521077, -0.373246,
		30.956705, 36.333378, 22.831339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696262, 36.531075, 22.457691>,  <31.494007, 36.698132, 23.092611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696262, 36.531075, 22.457691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298832, 36.493317, 22.432720>,  <31.060373, 36.470661, 22.417738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298832, 36.493317, 22.432720>,  <31.696262, 36.531075, 22.457691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298832, 36.493317, 22.432720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033713, 0.279705, -0.959494,
		0.108036, -0.955434, -0.274725,
		-0.993575, -0.094398, -0.062429,
		31.000759, 36.464996, 22.413992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574602, 36.276112, 21.829611>,  <31.696262, 36.531075, 22.457691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574602, 36.276112, 21.829611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218386, 36.418121, 21.943380>,  <31.004656, 36.503326, 22.011642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218386, 36.418121, 21.943380>,  <31.574602, 36.276112, 21.829611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218386, 36.418121, 21.943380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125105, 0.409998, -0.903466,
		-0.437363, -0.840156, -0.320705,
		-0.890541, 0.355021, 0.284425,
		30.951223, 36.524628, 22.028708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118818, 36.139347, 21.220648>,  <31.574602, 36.276112, 21.829611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118818, 36.139347, 21.220648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921276, 36.409405, 21.439840>,  <30.802752, 36.571442, 21.571356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921276, 36.409405, 21.439840>,  <31.118818, 36.139347, 21.220648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921276, 36.409405, 21.439840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277754, 0.474693, -0.835176,
		-0.823990, -0.564660, -0.046905,
		-0.493856, 0.675148, 0.547979,
		30.773119, 36.611950, 21.604235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596449, 36.323467, 20.735620>,  <31.118818, 36.139347, 21.220648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596449, 36.323467, 20.735620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554424, 36.612564, 21.008854>,  <30.529209, 36.786022, 21.172794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554424, 36.612564, 21.008854>,  <30.596449, 36.323467, 20.735620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554424, 36.612564, 21.008854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176335, 0.662460, -0.728047,
		-0.978707, -0.196940, 0.057847,
		-0.105060, 0.722746, 0.683082,
		30.522905, 36.829388, 21.213778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857744, 36.607376, 20.634140>,  <30.596449, 36.323467, 20.735620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857744, 36.607376, 20.634140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128508, 36.851143, 20.799263>,  <30.290966, 36.997402, 20.898336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128508, 36.851143, 20.799263>,  <29.857744, 36.607376, 20.634140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128508, 36.851143, 20.799263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235199, 0.710504, -0.663224,
		-0.697479, 0.351850, 0.624280,
		0.676908, 0.609415, 0.412806,
		30.331579, 37.033966, 20.923105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593309, 37.238213, 20.499481>,  <29.857744, 36.607376, 20.634140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593309, 37.238213, 20.499481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953384, 37.348309, 20.634480>,  <30.169430, 37.414368, 20.715479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953384, 37.348309, 20.634480>,  <29.593309, 37.238213, 20.499481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953384, 37.348309, 20.634480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098890, 0.883902, -0.457097,
		-0.424125, 0.378098, 0.822897,
		0.900188, 0.275243, 0.337494,
		30.223440, 37.430882, 20.735727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582605, 37.896912, 20.794064>,  <29.593309, 37.238213, 20.499481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582605, 37.896912, 20.794064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946463, 37.819534, 20.647024>,  <30.164778, 37.773106, 20.558802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946463, 37.819534, 20.647024>,  <29.582605, 37.896912, 20.794064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946463, 37.819534, 20.647024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096694, 0.762024, -0.640289,
		0.403979, 0.617979, 0.674465,
		0.909643, -0.193446, -0.367597,
		30.219357, 37.761501, 20.536745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915134, 38.473263, 20.817513>,  <29.582605, 37.896912, 20.794064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915134, 38.473263, 20.817513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104570, 38.299664, 20.510956>,  <30.218233, 38.195503, 20.327023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104570, 38.299664, 20.510956>,  <29.915134, 38.473263, 20.817513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104570, 38.299664, 20.510956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168018, 0.809664, -0.562329,
		0.864570, 0.395082, 0.310530,
		0.473592, -0.433998, -0.766392,
		30.246649, 38.169464, 20.281038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332222, 38.997246, 20.525469>,  <29.915134, 38.473263, 20.817513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332222, 38.997246, 20.525469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262518, 38.719284, 20.246401>,  <30.220695, 38.552505, 20.078960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262518, 38.719284, 20.246401>,  <30.332222, 38.997246, 20.525469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262518, 38.719284, 20.246401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162959, 0.719090, -0.675539,
		0.971122, -0.004027, -0.238548,
		-0.174258, -0.694905, -0.697668,
		30.210241, 38.510811, 20.037100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052561, 39.288952, 20.534622>,  <30.332222, 38.997246, 20.525469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052561, 39.288952, 20.534622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363979, 39.460636, 20.717772>,  <31.550831, 39.563648, 20.827662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363979, 39.460636, 20.717772>,  <31.052561, 39.288952, 20.534622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363979, 39.460636, 20.717772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350419, 0.307958, -0.884516,
		-0.520649, 0.849082, 0.089355,
		0.778544, 0.429210, 0.457873,
		31.597542, 39.589397, 20.855133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122110, 39.881878, 20.141357>,  <31.052561, 39.288952, 20.534622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122110, 39.881878, 20.141357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464750, 39.803013, 20.332088>,  <31.670334, 39.755692, 20.446527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464750, 39.803013, 20.332088>,  <31.122110, 39.881878, 20.141357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464750, 39.803013, 20.332088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515603, 0.362540, -0.776350,
		-0.019800, 0.910874, 0.412210,
		0.856599, -0.197165, 0.476827,
		31.721729, 39.743862, 20.475136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543774, 40.493793, 20.087460>,  <31.122110, 39.881878, 20.141357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543774, 40.493793, 20.087460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795273, 40.186535, 20.135843>,  <31.946173, 40.002182, 20.164873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795273, 40.186535, 20.135843>,  <31.543774, 40.493793, 20.087460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795273, 40.186535, 20.135843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606724, 0.387314, -0.694171,
		0.486374, 0.509847, 0.709574,
		0.628749, -0.768143, 0.120957,
		31.983898, 39.956093, 20.172131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154503, 40.799549, 20.283598>,  <31.543774, 40.493793, 20.087460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154503, 40.799549, 20.283598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193710, 40.459278, 20.077013>,  <32.217236, 40.255116, 19.953062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193710, 40.459278, 20.077013>,  <32.154503, 40.799549, 20.283598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193710, 40.459278, 20.077013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629826, 0.454838, -0.629637,
		0.770527, -0.263565, 0.580364,
		0.098021, -0.850680, -0.516465,
		32.223118, 40.204075, 19.922073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714725, 40.246513, 20.142704>,  <32.154503, 40.799549, 20.283598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714725, 40.246513, 20.142704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797935, 40.622517, 20.250858>,  <32.847862, 40.848118, 20.315750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797935, 40.622517, 20.250858>,  <32.714725, 40.246513, 20.142704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797935, 40.622517, 20.250858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907248, 0.082122, 0.412501,
		0.365550, -0.331117, 0.869905,
		0.208024, 0.940009, 0.270386,
		32.860344, 40.904518, 20.331974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874805, 40.065044, 20.859570>,  <32.714725, 40.246513, 20.142704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874805, 40.065044, 20.859570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481018, 40.057728, 20.789726>,  <32.244747, 40.053337, 20.747820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481018, 40.057728, 20.789726>,  <32.874805, 40.065044, 20.859570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481018, 40.057728, 20.789726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168549, -0.179840, 0.969149,
		-0.049132, 0.983526, 0.173963,
		-0.984468, -0.018295, -0.174608,
		32.185677, 40.052238, 20.737345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422775, 40.402905, 21.409647>,  <32.874805, 40.065044, 20.859570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422775, 40.402905, 21.409647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153618, 40.167469, 21.230415>,  <31.992125, 40.026207, 21.122875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153618, 40.167469, 21.230415>,  <32.422775, 40.402905, 21.409647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153618, 40.167469, 21.230415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468555, -0.129597, 0.873877,
		-0.572426, 0.797975, -0.188582,
		-0.672893, -0.588591, -0.448080,
		31.951750, 39.990891, 21.095991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780283, 40.631157, 21.651062>,  <32.422775, 40.402905, 21.409647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780283, 40.631157, 21.651062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683084, 40.267136, 21.516750>,  <31.624765, 40.048721, 21.436163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683084, 40.267136, 21.516750>,  <31.780283, 40.631157, 21.651062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683084, 40.267136, 21.516750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414677, -0.215477, 0.884089,
		-0.876925, 0.354070, -0.325020,
		-0.242995, -0.910057, -0.335781,
		31.610186, 39.994118, 21.416016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117350, 40.523041, 21.787018>,  <31.780283, 40.631157, 21.651062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117350, 40.523041, 21.787018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280933, 40.159443, 21.754820>,  <31.379084, 39.941284, 21.735502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280933, 40.159443, 21.754820>,  <31.117350, 40.523041, 21.787018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280933, 40.159443, 21.754820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374654, -0.247675, 0.893471,
		-0.832099, -0.335235, -0.441848,
		0.408958, -0.908997, -0.080493,
		31.403620, 39.886745, 21.730671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582382, 40.061707, 22.005713>,  <31.117350, 40.523041, 21.787018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582382, 40.061707, 22.005713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928003, 39.864590, 22.046835>,  <31.135376, 39.746319, 22.071508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928003, 39.864590, 22.046835>,  <30.582382, 40.061707, 22.005713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928003, 39.864590, 22.046835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304672, -0.349351, 0.886075,
		-0.400737, -0.796937, -0.451998,
		0.864051, -0.492794, 0.102807,
		31.187220, 39.716751, 22.077677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328981, 39.415993, 22.268202>,  <30.582382, 40.061707, 22.005713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328981, 39.415993, 22.268202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719837, 39.433102, 22.351503>,  <30.954351, 39.443367, 22.401485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719837, 39.433102, 22.351503>,  <30.328981, 39.415993, 22.268202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719837, 39.433102, 22.351503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170400, -0.428220, 0.887464,
		0.127137, -0.902662, -0.411142,
		0.977139, 0.042770, 0.208256,
		31.012980, 39.445934, 22.413980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509422, 38.786888, 22.555922>,  <30.328981, 39.415993, 22.268202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509422, 38.786888, 22.555922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838566, 38.989502, 22.658932>,  <31.036053, 39.111073, 22.720737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838566, 38.989502, 22.658932>,  <30.509422, 38.786888, 22.555922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838566, 38.989502, 22.658932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057394, -0.376794, 0.924517,
		0.565338, -0.775529, -0.280977,
		0.822860, 0.506539, 0.257527,
		31.085424, 39.141464, 22.736189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058979, 38.339531, 22.791067>,  <30.509422, 38.786888, 22.555922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058979, 38.339531, 22.791067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086414, 38.690434, 22.981104>,  <31.102875, 38.900974, 23.095125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086414, 38.690434, 22.981104>,  <31.058979, 38.339531, 22.791067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086414, 38.690434, 22.981104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002061, -0.476088, 0.879395,
		0.997643, -0.061296, -0.030846,
		0.068589, 0.877259, 0.475092,
		31.106991, 38.953609, 23.123632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343975, 38.065697, 23.412436>,  <31.058979, 38.339531, 22.791067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343975, 38.065697, 23.412436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282307, 38.454613, 23.482738>,  <31.245306, 38.687962, 23.524920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282307, 38.454613, 23.482738>,  <31.343975, 38.065697, 23.412436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282307, 38.454613, 23.482738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028665, -0.173407, 0.984433,
		0.987628, 0.156811, -0.001136,
		-0.154173, 0.972286, 0.175757,
		31.236055, 38.746300, 23.535465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925886, 38.292595, 23.860695>,  <31.343975, 38.065697, 23.412436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925886, 38.292595, 23.860695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608608, 38.532532, 23.902700>,  <31.418242, 38.676495, 23.927904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608608, 38.532532, 23.902700>,  <31.925886, 38.292595, 23.860695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608608, 38.532532, 23.902700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061454, -0.092721, 0.993794,
		0.605859, 0.794726, 0.036683,
		-0.793195, 0.599844, 0.105015,
		31.370649, 38.712486, 23.934204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037571, 38.958805, 24.244572>,  <31.925886, 38.292595, 23.860695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037571, 38.958805, 24.244572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654163, 38.859917, 24.301321>,  <31.424120, 38.800583, 24.335371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654163, 38.859917, 24.301321>,  <32.037571, 38.958805, 24.244572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654163, 38.859917, 24.301321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158805, -0.049845, 0.986051,
		-0.236698, 0.967677, 0.087036,
		-0.958517, -0.247218, 0.141874,
		31.366608, 38.785751, 24.343884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965652, 39.112850, 24.861404>,  <32.037571, 38.958805, 24.244572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965652, 39.112850, 24.861404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608709, 38.934364, 24.834303>,  <31.394543, 38.827274, 24.818041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608709, 38.934364, 24.834303>,  <31.965652, 39.112850, 24.861404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608709, 38.934364, 24.834303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017835, -0.184873, 0.982601,
		-0.450974, 0.875624, 0.172931,
		-0.892359, -0.446212, -0.067756,
		31.341002, 38.800499, 24.813976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563259, 39.333767, 25.489458>,  <31.965652, 39.112850, 24.861404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563259, 39.333767, 25.489458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379314, 38.999401, 25.369604>,  <31.268948, 38.798782, 25.297691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379314, 38.999401, 25.369604>,  <31.563259, 39.333767, 25.489458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379314, 38.999401, 25.369604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031631, -0.321794, 0.946281,
		-0.887427, 0.444637, 0.121540,
		-0.459863, -0.835911, -0.299633,
		31.241356, 38.748627, 25.279715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018557, 39.213211, 25.944038>,  <31.563259, 39.333767, 25.489458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018557, 39.213211, 25.944038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128935, 38.862545, 25.786402>,  <31.195162, 38.652145, 25.691820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128935, 38.862545, 25.786402>,  <31.018557, 39.213211, 25.944038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128935, 38.862545, 25.786402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018139, -0.414688, 0.909783,
		-0.961003, -0.243900, -0.130332,
		0.275943, -0.876668, -0.394092,
		31.211718, 38.599545, 25.668175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760656, 38.732822, 26.323774>,  <31.018557, 39.213211, 25.944038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760656, 38.732822, 26.323774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047131, 38.509342, 26.156473>,  <31.219015, 38.375256, 26.056093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047131, 38.509342, 26.156473>,  <30.760656, 38.732822, 26.323774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047131, 38.509342, 26.156473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139256, -0.472844, 0.870073,
		-0.683879, -0.681376, -0.260841,
		0.716183, -0.558701, -0.418253,
		31.261986, 38.341732, 26.030998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437899, 38.104519, 26.366238>,  <30.760656, 38.732822, 26.323774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437899, 38.104519, 26.366238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835808, 38.063805, 26.363016>,  <31.074554, 38.039375, 26.361082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835808, 38.063805, 26.363016>,  <30.437899, 38.104519, 26.366238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835808, 38.063805, 26.363016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049023, -0.545329, 0.836787,
		-0.089565, -0.832019, -0.547469,
		0.994774, -0.101785, -0.008055,
		31.134239, 38.033268, 26.360600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503334, 37.442421, 26.402945>,  <30.437899, 38.104519, 26.366238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503334, 37.442421, 26.402945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855261, 37.581821, 26.532230>,  <31.066416, 37.665462, 26.609802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855261, 37.581821, 26.532230>,  <30.503334, 37.442421, 26.402945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855261, 37.581821, 26.532230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043932, -0.617469, 0.785367,
		0.473280, -0.705178, -0.527948,
		0.879816, 0.348505, 0.323216,
		31.119205, 37.686375, 26.629194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677576, 36.907932, 26.823034>,  <30.503334, 37.442421, 26.402945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677576, 36.907932, 26.823034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917660, 37.211437, 26.924250>,  <31.061710, 37.393539, 26.984978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917660, 37.211437, 26.924250>,  <30.677576, 36.907932, 26.823034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917660, 37.211437, 26.924250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083799, -0.374271, 0.923525,
		0.795442, -0.533103, -0.288224,
		0.600208, 0.758764, 0.253037,
		31.097723, 37.439068, 27.000160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316574, 36.628067, 26.987268>,  <30.677576, 36.907932, 26.823034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316574, 36.628067, 26.987268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297874, 36.960205, 27.209385>,  <31.286655, 37.159489, 27.342655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297874, 36.960205, 27.209385>,  <31.316574, 36.628067, 26.987268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297874, 36.960205, 27.209385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164793, -0.541870, 0.824148,
		0.985220, 0.130036, -0.111502,
		-0.046750, 0.830342, 0.555290,
		31.283850, 37.209309, 27.375973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953051, 36.695415, 27.397099>,  <31.316574, 36.628067, 26.987268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953051, 36.695415, 27.397099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722466, 36.930283, 27.624407>,  <31.584114, 37.071201, 27.760792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722466, 36.930283, 27.624407>,  <31.953051, 36.695415, 27.397099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722466, 36.930283, 27.624407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240750, -0.542535, 0.804795,
		0.780853, 0.600744, 0.171391,
		-0.576462, 0.587164, 0.568270,
		31.549526, 37.106430, 27.794888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389374, 36.894394, 27.954075>,  <31.953051, 36.695415, 27.397099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389374, 36.894394, 27.954075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004368, 36.947750, 28.048542>,  <31.773365, 36.979763, 28.105223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004368, 36.947750, 28.048542>,  <32.389374, 36.894394, 27.954075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004368, 36.947750, 28.048542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213622, -0.163726, 0.963099,
		0.167131, 0.977447, 0.129094,
		-0.962514, 0.133387, 0.236168,
		31.715614, 36.987766, 28.119392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404888, 37.289852, 28.527853>,  <32.389374, 36.894394, 27.954075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404888, 37.289852, 28.527853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030319, 37.149578, 28.532372>,  <31.805576, 37.065414, 28.535082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030319, 37.149578, 28.532372>,  <32.404888, 37.289852, 28.527853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030319, 37.149578, 28.532372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108476, -0.258750, 0.959834,
		-0.333673, 0.900039, 0.280341,
		-0.936427, -0.350681, 0.011295,
		31.749392, 37.044373, 28.535761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191143, 37.571022, 29.039732>,  <32.404888, 37.289852, 28.527853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191143, 37.571022, 29.039732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925674, 37.277077, 28.983850>,  <31.766392, 37.100712, 28.950321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925674, 37.277077, 28.983850>,  <32.191143, 37.571022, 29.039732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925674, 37.277077, 28.983850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117565, -0.286916, 0.950714,
		-0.738724, 0.614542, 0.276813,
		-0.663676, -0.734859, -0.139703,
		31.726572, 37.056618, 28.941940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771261, 37.508343, 29.645922>,  <32.191143, 37.571022, 29.039732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771261, 37.508343, 29.645922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728086, 37.148823, 29.475977>,  <31.702181, 36.933109, 29.374010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728086, 37.148823, 29.475977>,  <31.771261, 37.508343, 29.645922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728086, 37.148823, 29.475977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192558, -0.438168, 0.878026,
		-0.975331, 0.012960, 0.220365,
		-0.107936, -0.898800, -0.424863,
		31.695705, 36.879185, 29.348518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286154, 37.138252, 30.054684>,  <31.771261, 37.508343, 29.645922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286154, 37.138252, 30.054684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501974, 36.870171, 29.850838>,  <31.631466, 36.709320, 29.728529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501974, 36.870171, 29.850838>,  <31.286154, 37.138252, 30.054684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501974, 36.870171, 29.850838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079778, -0.561862, 0.823375,
		-0.838164, -0.484910, -0.249686,
		0.539552, -0.670204, -0.509617,
		31.663839, 36.669109, 29.697952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981974, 36.351105, 30.230320>,  <31.286154, 37.138252, 30.054684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981974, 36.351105, 30.230320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361246, 36.315094, 30.108438>,  <31.588810, 36.293488, 30.035309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361246, 36.315094, 30.108438>,  <30.981974, 36.351105, 30.230320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361246, 36.315094, 30.108438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173481, -0.656756, 0.733877,
		-0.266185, -0.748710, -0.607107,
		0.948182, -0.090026, -0.304705,
		31.645700, 36.288086, 30.017027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089344, 35.700001, 30.321936>,  <30.981974, 36.351105, 30.230320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089344, 35.700001, 30.321936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447620, 35.875500, 30.293001>,  <31.662586, 35.980801, 30.275640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447620, 35.875500, 30.293001>,  <31.089344, 35.700001, 30.321936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447620, 35.875500, 30.293001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316583, -0.514951, 0.796618,
		0.312268, -0.736425, -0.600139,
		0.895692, 0.438752, -0.072337,
		31.716328, 36.007126, 30.271299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659353, 35.190418, 30.567226>,  <31.089344, 35.700001, 30.321936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659353, 35.190418, 30.567226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838440, 35.547073, 30.594152>,  <31.945892, 35.761066, 30.610308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838440, 35.547073, 30.594152>,  <31.659353, 35.190418, 30.567226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838440, 35.547073, 30.594152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324690, -0.232256, 0.916861,
		0.833143, -0.388636, -0.393490,
		0.447716, 0.891639, 0.067316,
		31.972755, 35.814564, 30.614347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382236, 35.069393, 30.890570>,  <31.659353, 35.190418, 30.567226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382236, 35.069393, 30.890570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312843, 35.460262, 30.939610>,  <32.271206, 35.694786, 30.969032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312843, 35.460262, 30.939610>,  <32.382236, 35.069393, 30.890570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312843, 35.460262, 30.939610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468725, -0.027554, 0.882914,
		0.866140, 0.210639, -0.453246,
		-0.173487, 0.977175, 0.122597,
		32.260796, 35.753414, 30.976389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972187, 35.285786, 31.271664>,  <32.382236, 35.069393, 30.890570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972187, 35.285786, 31.271664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718021, 35.591755, 31.313871>,  <32.565521, 35.775337, 31.339195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718021, 35.591755, 31.313871>,  <32.972187, 35.285786, 31.271664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718021, 35.591755, 31.313871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208388, 0.038292, 0.977296,
		0.743520, 0.642977, -0.183734,
		-0.635415, 0.764928, 0.105518,
		32.527397, 35.821232, 31.345528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379414, 35.860992, 31.658598>,  <32.972187, 35.285786, 31.271664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379414, 35.860992, 31.658598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987274, 35.932259, 31.692499>,  <32.751991, 35.975018, 31.712839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987274, 35.932259, 31.692499>,  <33.379414, 35.860992, 31.658598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987274, 35.932259, 31.692499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067657, -0.099937, 0.992691,
		0.185328, 0.978913, 0.085919,
		-0.980345, 0.178161, 0.084751,
		32.693172, 35.985706, 31.717924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461300, 36.261776, 32.141369>,  <33.379414, 35.860992, 31.658598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461300, 36.261776, 32.141369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068607, 36.189480, 32.165138>,  <32.832993, 36.146103, 32.179398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068607, 36.189480, 32.165138>,  <33.461300, 36.261776, 32.141369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068607, 36.189480, 32.165138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067958, -0.041415, 0.996828,
		-0.177703, 0.982659, 0.052941,
		-0.981735, -0.180737, 0.059420,
		32.774086, 36.135258, 32.182964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091175, 36.748024, 32.514160>,  <33.461300, 36.261776, 32.141369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091175, 36.748024, 32.514160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875965, 36.411385, 32.533096>,  <32.746838, 36.209400, 32.544456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875965, 36.411385, 32.533096>,  <33.091175, 36.748024, 32.514160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875965, 36.411385, 32.533096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140368, -0.034076, 0.989513,
		-0.831158, 0.539030, 0.136467,
		-0.538027, -0.841597, 0.047340,
		32.714558, 36.158905, 32.547298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675365, 36.796150, 33.226864>,  <33.091175, 36.748024, 32.514160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675365, 36.796150, 33.226864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669945, 36.411156, 33.118473>,  <32.666695, 36.180157, 33.053440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669945, 36.411156, 33.118473>,  <32.675365, 36.796150, 33.226864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669945, 36.411156, 33.118473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098176, -0.270973, 0.957567,
		-0.995077, -0.013628, 0.098165,
		-0.013550, -0.962490, -0.270977,
		32.665878, 36.122410, 33.037178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426342, 36.422668, 33.827354>,  <32.675365, 36.796150, 33.226864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426342, 36.422668, 33.827354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591167, 36.111217, 33.638065>,  <32.690063, 35.924347, 33.524490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591167, 36.111217, 33.638065>,  <32.426342, 36.422668, 33.827354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591167, 36.111217, 33.638065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349594, -0.344512, 0.871261,
		-0.841419, -0.524454, 0.130241,
		0.412067, -0.778627, -0.473225,
		32.714787, 35.877628, 33.496098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211842, 35.894039, 34.222351>,  <32.426342, 36.422668, 33.827354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211842, 35.894039, 34.222351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542191, 35.793602, 34.020405>,  <32.740402, 35.733341, 33.899239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542191, 35.793602, 34.020405>,  <32.211842, 35.894039, 34.222351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542191, 35.793602, 34.020405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424078, -0.313491, 0.849636,
		-0.371608, -0.915792, -0.152421,
		0.825873, -0.251093, -0.504863,
		32.789951, 35.718277, 33.868946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391708, 35.209866, 34.469151>,  <32.211842, 35.894039, 34.222351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391708, 35.209866, 34.469151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730751, 35.349529, 34.309322>,  <32.934177, 35.433327, 34.213425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730751, 35.349529, 34.309322>,  <32.391708, 35.209866, 34.469151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730751, 35.349529, 34.309322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522332, -0.416353, 0.744191,
		0.093483, -0.839485, -0.535281,
		0.847603, 0.349163, -0.399568,
		32.985031, 35.454277, 34.189453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856171, 34.684834, 34.496498>,  <32.391708, 35.209866, 34.469151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856171, 34.684834, 34.496498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110008, 34.992001, 34.461655>,  <33.262310, 35.176300, 34.440750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110008, 34.992001, 34.461655>,  <32.856171, 34.684834, 34.496498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110008, 34.992001, 34.461655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504349, -0.326087, 0.799562,
		0.585597, -0.551329, -0.594233,
		0.634594, 0.767922, -0.087107,
		33.300385, 35.222378, 34.435524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555061, 34.450748, 34.501514>,  <32.856171, 34.684834, 34.496498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555061, 34.450748, 34.501514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600254, 34.831955, 34.613937>,  <33.627369, 35.060680, 34.681393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600254, 34.831955, 34.613937>,  <33.555061, 34.450748, 34.501514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600254, 34.831955, 34.613937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588448, -0.292109, 0.753924,
		0.800602, 0.080208, -0.593805,
		0.112985, 0.953016, 0.281061,
		33.634151, 35.117859, 34.698257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270355, 34.581055, 34.576275>,  <33.555061, 34.450748, 34.501514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270355, 34.581055, 34.576275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089291, 34.873142, 34.780968>,  <33.980652, 35.048397, 34.903782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089291, 34.873142, 34.780968>,  <34.270355, 34.581055, 34.576275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089291, 34.873142, 34.780968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673836, -0.095728, 0.732654,
		0.583988, 0.676469, -0.448718,
		-0.452662, 0.730224, 0.511733,
		33.953491, 35.092209, 34.934486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866604, 35.097183, 34.775581>,  <34.270355, 34.581055, 34.576275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866604, 35.097183, 34.775581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554363, 35.118946, 35.024643>,  <34.367020, 35.132004, 35.174080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554363, 35.118946, 35.024643>,  <34.866604, 35.097183, 34.775581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554363, 35.118946, 35.024643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616259, -0.099290, 0.781259,
		0.104329, 0.993570, 0.043978,
		-0.780602, 0.054407, 0.622656,
		34.320183, 35.135269, 35.211441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506615, 34.861317, 34.293869>,  <34.866604, 35.097183, 34.775581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506615, 34.861317, 34.293869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854412, 35.057503, 34.317257>,  <36.063091, 35.175213, 34.331291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854412, 35.057503, 34.317257>,  <35.506615, 34.861317, 34.293869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854412, 35.057503, 34.317257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101122, 0.292633, -0.950863,
		-0.483475, 0.820860, 0.304041,
		0.869498, 0.490463, 0.058474,
		36.115261, 35.204643, 34.334801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430923, 35.547543, 33.973640>,  <35.506615, 34.861317, 34.293869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430923, 35.547543, 33.973640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825706, 35.491840, 33.941334>,  <36.062576, 35.458420, 33.921951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825706, 35.491840, 33.941334>,  <35.430923, 35.547543, 33.973640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825706, 35.491840, 33.941334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026472, 0.354488, -0.934686,
		0.158791, 0.924633, 0.346178,
		0.986957, -0.139256, -0.080767,
		36.121792, 35.450062, 33.917103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651764, 36.165146, 33.804333>,  <35.430923, 35.547543, 33.973640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651764, 36.165146, 33.804333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951916, 35.935947, 33.672512>,  <36.132008, 35.798428, 33.593422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951916, 35.935947, 33.672512>,  <35.651764, 36.165146, 33.804333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951916, 35.935947, 33.672512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039018, 0.459292, -0.887428,
		0.659851, 0.678769, 0.322287,
		0.750383, -0.572995, -0.329549,
		36.177032, 35.764050, 33.573647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061451, 36.653160, 33.461411>,  <35.651764, 36.165146, 33.804333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061451, 36.653160, 33.461411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154167, 36.287270, 33.329018>,  <36.209797, 36.067738, 33.249580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154167, 36.287270, 33.329018>,  <36.061451, 36.653160, 33.461411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154167, 36.287270, 33.329018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032108, 0.347262, -0.937218,
		0.972236, 0.206612, 0.109862,
		0.231792, -0.914724, -0.330987,
		36.223705, 36.012852, 33.229721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641636, 36.719387, 33.020172>,  <36.061451, 36.653160, 33.461411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641636, 36.719387, 33.020172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459480, 36.377628, 32.920067>,  <36.350185, 36.172573, 32.860004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459480, 36.377628, 32.920067>,  <36.641636, 36.719387, 33.020172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459480, 36.377628, 32.920067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021754, 0.270337, -0.962520,
		0.890028, -0.443764, -0.104521,
		-0.455387, -0.854396, -0.250261,
		36.322865, 36.121311, 32.844990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017467, 36.481907, 32.432247>,  <36.641636, 36.719387, 33.020172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017467, 36.481907, 32.432247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642075, 36.343815, 32.428822>,  <36.416840, 36.260960, 32.426765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642075, 36.343815, 32.428822>,  <37.017467, 36.481907, 32.432247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642075, 36.343815, 32.428822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096536, 0.286075, -0.953332,
		0.331571, -0.893854, -0.301803,
		-0.938478, -0.345232, -0.008565,
		36.360531, 36.240246, 32.426254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129303, 35.960445, 31.910931>,  <37.017467, 36.481907, 32.432247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129303, 35.960445, 31.910931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744591, 36.064255, 31.945843>,  <36.513763, 36.126541, 31.966789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744591, 36.064255, 31.945843>,  <37.129303, 35.960445, 31.910931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744591, 36.064255, 31.945843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053809, 0.133400, -0.989601,
		-0.268470, -0.956479, -0.114337,
		-0.961784, 0.259526, 0.087281,
		36.456055, 36.142113, 31.972027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868507, 35.716175, 31.224920>,  <37.129303, 35.960445, 31.910931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868507, 35.716175, 31.224920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594791, 35.957809, 31.388298>,  <36.430561, 36.102791, 31.486324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594791, 35.957809, 31.388298>,  <36.868507, 35.716175, 31.224920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594791, 35.957809, 31.388298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317290, 0.257662, -0.912654,
		-0.656564, -0.754114, 0.015356,
		-0.684289, 0.604087, 0.408445,
		36.389503, 36.139034, 31.510832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207981, 35.462696, 30.910027>,  <36.868507, 35.716175, 31.224920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207981, 35.462696, 30.910027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164536, 35.843208, 31.025454>,  <36.138470, 36.071514, 31.094709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164536, 35.843208, 31.025454>,  <36.207981, 35.462696, 30.910027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164536, 35.843208, 31.025454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264207, 0.252219, -0.930903,
		-0.958331, -0.177350, 0.223940,
		-0.108614, 0.951279, 0.288566,
		36.131950, 36.128593, 31.112024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643745, 35.695660, 30.630705>,  <36.207981, 35.462696, 30.910027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643745, 35.695660, 30.630705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806438, 36.051460, 30.713999>,  <35.904053, 36.264938, 30.763975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806438, 36.051460, 30.713999>,  <35.643745, 35.695660, 30.630705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806438, 36.051460, 30.713999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363805, 0.366795, -0.856217,
		-0.837982, 0.272496, 0.472791,
		0.406734, 0.889498, 0.208232,
		35.928459, 36.318310, 30.776468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338722, 36.057369, 30.256588>,  <35.643745, 35.695660, 30.630705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338722, 36.057369, 30.256588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609180, 36.332069, 30.363323>,  <35.771454, 36.496891, 30.427364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609180, 36.332069, 30.363323>,  <35.338722, 36.057369, 30.256588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609180, 36.332069, 30.363323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191661, 0.513652, -0.836318,
		-0.711405, 0.514328, 0.478926,
		0.676143, 0.686752, 0.266838,
		35.812023, 36.538094, 30.443375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938198, 36.680782, 30.215260>,  <35.338722, 36.057369, 30.256588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938198, 36.680782, 30.215260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326077, 36.772751, 30.182201>,  <35.558804, 36.827934, 30.162367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326077, 36.772751, 30.182201>,  <34.938198, 36.680782, 30.215260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326077, 36.772751, 30.182201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236408, 0.797536, -0.555020,
		-0.061699, 0.557737, 0.827721,
		0.969693, 0.229924, -0.082646,
		35.616985, 36.841728, 30.157408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021133, 37.519310, 30.299664>,  <34.938198, 36.680782, 30.215260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021133, 37.519310, 30.299664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348270, 37.378899, 30.117277>,  <35.544552, 37.294651, 30.007845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348270, 37.378899, 30.117277>,  <35.021133, 37.519310, 30.299664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348270, 37.378899, 30.117277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002814, 0.789933, -0.613186,
		0.575429, 0.502775, 0.645057,
		0.817847, -0.351030, -0.455966,
		35.593624, 37.273590, 29.980488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341370, 38.121586, 30.206062>,  <35.021133, 37.519310, 30.299664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341370, 38.121586, 30.206062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509731, 37.876766, 29.938263>,  <35.610748, 37.729874, 29.777582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509731, 37.876766, 29.938263>,  <35.341370, 38.121586, 30.206062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509731, 37.876766, 29.938263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122710, 0.692859, -0.710555,
		0.898767, 0.381230, 0.216523,
		0.420905, -0.612054, -0.669499,
		35.636002, 37.693150, 29.737413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706512, 38.625671, 29.785627>,  <35.341370, 38.121586, 30.206062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706512, 38.625671, 29.785627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658005, 38.291767, 29.570791>,  <35.628899, 38.091423, 29.441889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658005, 38.291767, 29.570791>,  <35.706512, 38.625671, 29.785627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658005, 38.291767, 29.570791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303773, 0.546335, -0.780538,
		0.944995, 0.068500, -0.319831,
		-0.121268, -0.834761, -0.537092,
		35.621624, 38.041340, 29.409664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061829, 38.759872, 29.110895>,  <35.706512, 38.625671, 29.785627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061829, 38.759872, 29.110895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805794, 38.458824, 29.049107>,  <35.652172, 38.278194, 29.012033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805794, 38.458824, 29.049107>,  <36.061829, 38.759872, 29.110895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805794, 38.458824, 29.049107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176385, 0.339629, -0.923873,
		0.747785, -0.564109, -0.350141,
		-0.640083, -0.752618, -0.154469,
		35.613770, 38.233040, 29.002766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267654, 38.447479, 28.481091>,  <36.061829, 38.759872, 29.110895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267654, 38.447479, 28.481091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892570, 38.319607, 28.535509>,  <35.667519, 38.242886, 28.568161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892570, 38.319607, 28.535509>,  <36.267654, 38.447479, 28.481091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892570, 38.319607, 28.535509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166855, 0.070915, -0.983428,
		0.304731, -0.944869, -0.119838,
		-0.937709, -0.319676, 0.136046,
		35.611259, 38.223705, 28.576323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058064, 37.965946, 27.890091>,  <36.267654, 38.447479, 28.481091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058064, 37.965946, 27.890091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700840, 38.052235, 28.048027>,  <35.486504, 38.104008, 28.142790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700840, 38.052235, 28.048027>,  <36.058064, 37.965946, 27.890091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700840, 38.052235, 28.048027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365524, 0.163844, -0.916268,
		-0.262356, -0.962610, -0.067470,
		-0.893063, 0.215727, 0.394842,
		35.432922, 38.116951, 28.166479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613323, 37.660778, 27.385418>,  <36.058064, 37.965946, 27.890091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613323, 37.660778, 27.385418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369537, 37.889542, 27.605045>,  <35.223267, 38.026798, 27.736822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369537, 37.889542, 27.605045>,  <35.613323, 37.660778, 27.385418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369537, 37.889542, 27.605045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532969, 0.217166, -0.817792,
		-0.586940, -0.791051, 0.172454,
		-0.609463, 0.571907, 0.549069,
		35.186699, 38.061115, 27.769766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946743, 37.378262, 27.418222>,  <35.613323, 37.660778, 27.385418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946743, 37.378262, 27.418222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884922, 37.765537, 27.496931>,  <34.847828, 37.997902, 27.544157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884922, 37.765537, 27.496931>,  <34.946743, 37.378262, 27.418222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884922, 37.765537, 27.496931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560524, 0.078080, -0.824449,
		-0.813588, -0.237720, 0.530626,
		-0.154556, 0.968190, 0.196773,
		34.838554, 38.055996, 27.555964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223125, 37.468002, 27.498697>,  <34.946743, 37.378262, 27.418222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223125, 37.468002, 27.498697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370079, 37.814178, 27.362440>,  <34.458252, 38.021885, 27.280685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370079, 37.814178, 27.362440>,  <34.223125, 37.468002, 27.498697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370079, 37.814178, 27.362440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576217, -0.075702, -0.813783,
		-0.730070, 0.495254, 0.470872,
		0.367383, 0.865443, -0.340642,
		34.480293, 38.073811, 27.260248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689960, 38.033524, 27.336683>,  <34.223125, 37.468002, 27.498697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689960, 38.033524, 27.336683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014015, 38.045238, 27.102480>,  <34.208447, 38.052269, 26.961958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014015, 38.045238, 27.102480>,  <33.689960, 38.033524, 27.336683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014015, 38.045238, 27.102480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577377, -0.133147, -0.805548,
		-0.101550, 0.990663, -0.090959,
		0.810138, 0.029286, -0.585507,
		34.257057, 38.054024, 26.926828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535057, 38.562378, 26.905046>,  <33.689960, 38.033524, 27.336683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535057, 38.562378, 26.905046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822975, 38.355061, 26.720325>,  <33.995728, 38.230671, 26.609493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822975, 38.355061, 26.720325>,  <33.535057, 38.562378, 26.905046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822975, 38.355061, 26.720325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552838, -0.025658, -0.832894,
		0.419838, 0.854815, -0.305003,
		0.719796, -0.518298, -0.461802,
		34.038914, 38.199570, 26.581785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674896, 38.880817, 26.274988>,  <33.535057, 38.562378, 26.905046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674896, 38.880817, 26.274988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822384, 38.511803, 26.229420>,  <33.910877, 38.290394, 26.202078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822384, 38.511803, 26.229420>,  <33.674896, 38.880817, 26.274988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822384, 38.511803, 26.229420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391725, -0.043072, -0.919074,
		0.842968, 0.383508, -0.377261,
		0.368722, -0.922532, -0.113921,
		33.932999, 38.235043, 26.195244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055832, 38.897980, 25.563286>,  <33.674896, 38.880817, 26.274988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055832, 38.897980, 25.563286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961971, 38.523846, 25.669182>,  <33.905655, 38.299366, 25.732719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961971, 38.523846, 25.669182>,  <34.055832, 38.897980, 25.563286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961971, 38.523846, 25.669182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435178, -0.142455, -0.889003,
		0.869230, -0.323812, -0.373611,
		-0.234647, -0.935335, 0.264742,
		33.891579, 38.243244, 25.748604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832497, 38.883312, 24.943972>,  <34.055832, 38.897980, 25.563286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832497, 38.883312, 24.943972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815193, 38.520088, 25.110613>,  <33.804810, 38.302155, 25.210598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815193, 38.520088, 25.110613>,  <33.832497, 38.883312, 24.943972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815193, 38.520088, 25.110613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321228, -0.382209, -0.866446,
		0.946013, -0.171309, -0.275159,
		-0.043262, -0.908058, 0.416604,
		33.802216, 38.247669, 25.235594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298668, 38.493217, 24.575829>,  <33.832497, 38.883312, 24.943972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298668, 38.493217, 24.575829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012623, 38.261208, 24.731873>,  <33.840996, 38.122002, 24.825499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012623, 38.261208, 24.731873>,  <34.298668, 38.493217, 24.575829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012623, 38.261208, 24.731873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195186, -0.370199, -0.908215,
		0.671205, -0.725620, 0.151522,
		-0.715113, -0.580024, 0.390111,
		33.798088, 38.087200, 24.848906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491371, 37.845894, 24.382921>,  <34.298668, 38.493217, 24.575829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491371, 37.845894, 24.382921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106266, 37.826164, 24.489246>,  <33.875202, 37.814327, 24.553041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106266, 37.826164, 24.489246>,  <34.491371, 37.845894, 24.382921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106266, 37.826164, 24.489246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203896, -0.513160, -0.833723,
		0.177528, -0.856875, 0.483994,
		-0.962762, -0.049325, 0.265814,
		33.817436, 37.811367, 24.568991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353271, 37.214268, 24.234192>,  <34.491371, 37.845894, 24.382921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353271, 37.214268, 24.234192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016674, 37.430149, 24.224277>,  <33.814716, 37.559677, 24.218328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016674, 37.430149, 24.224277>,  <34.353271, 37.214268, 24.234192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016674, 37.430149, 24.224277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314374, -0.526438, -0.789957,
		-0.439391, -0.656949, 0.612662,
		-0.841489, 0.539705, -0.024784,
		33.764229, 37.592060, 24.216843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813900, 36.727425, 24.012297>,  <34.353271, 37.214268, 24.234192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813900, 36.727425, 24.012297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630802, 37.081379, 23.977764>,  <33.520943, 37.293751, 23.957045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630802, 37.081379, 23.977764>,  <33.813900, 36.727425, 24.012297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630802, 37.081379, 23.977764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458238, -0.318016, -0.829990,
		-0.761900, -0.340361, 0.551056,
		-0.457741, 0.884884, -0.086330,
		33.493481, 37.346844, 23.951864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248550, 36.619228, 23.841780>,  <33.813900, 36.727425, 24.012297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248550, 36.619228, 23.841780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274109, 36.992134, 23.699339>,  <33.289444, 37.215878, 23.613874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274109, 36.992134, 23.699339>,  <33.248550, 36.619228, 23.841780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274109, 36.992134, 23.699339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362684, -0.310739, -0.878580,
		-0.929719, 0.185289, 0.318261,
		0.063895, 0.932261, -0.356101,
		33.293278, 37.271812, 23.592508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665493, 36.765163, 23.440220>,  <33.248550, 36.619228, 23.841780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665493, 36.765163, 23.440220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916027, 37.046124, 23.304970>,  <33.066349, 37.214699, 23.223820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916027, 37.046124, 23.304970>,  <32.665493, 36.765163, 23.440220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916027, 37.046124, 23.304970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229880, -0.248036, -0.941081,
		-0.744885, 0.667165, 0.006114,
		0.626340, 0.702403, -0.338126,
		33.103928, 37.256844, 23.203531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315022, 37.211288, 22.973837>,  <32.665493, 36.765163, 23.440220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315022, 37.211288, 22.973837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696735, 37.266602, 22.867842>,  <32.925762, 37.299789, 22.804245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696735, 37.266602, 22.867842>,  <32.315022, 37.211288, 22.973837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696735, 37.266602, 22.867842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276242, 0.069432, -0.958577,
		-0.114156, 0.987956, 0.104457,
		0.954284, 0.138283, -0.264989,
		32.983021, 37.308086, 22.788345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283222, 37.654518, 22.364689>,  <32.315022, 37.211288, 22.973837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283222, 37.654518, 22.364689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660568, 37.522182, 22.354803>,  <32.886974, 37.442780, 22.348871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660568, 37.522182, 22.354803>,  <32.283222, 37.654518, 22.364689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660568, 37.522182, 22.354803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015182, 0.031362, -0.999393,
		0.331418, 0.943164, 0.024562,
		0.943362, -0.330844, -0.024713,
		32.943577, 37.422928, 22.347389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714050, 38.114323, 21.998917>,  <32.283222, 37.654518, 22.364689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714050, 38.114323, 21.998917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923912, 37.774235, 21.981649>,  <33.049828, 37.570183, 21.971289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923912, 37.774235, 21.981649>,  <32.714050, 38.114323, 21.998917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923912, 37.774235, 21.981649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158645, -0.047824, -0.986177,
		0.836405, 0.524248, -0.159974,
		0.524651, -0.850222, -0.043169,
		33.081306, 37.519169, 21.968699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225174, 38.216652, 21.449114>,  <32.714050, 38.114323, 21.998917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225174, 38.216652, 21.449114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154121, 37.825588, 21.494051>,  <33.111488, 37.590950, 21.521013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154121, 37.825588, 21.494051>,  <33.225174, 38.216652, 21.449114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154121, 37.825588, 21.494051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161769, -0.083595, -0.983281,
		0.970710, -0.192837, -0.143307,
		-0.177633, -0.977663, 0.112342,
		33.100830, 37.532288, 21.527754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349361, 37.968475, 20.744957>,  <33.225174, 38.216652, 21.449114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349361, 37.968475, 20.744957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180958, 37.661484, 20.938337>,  <33.079914, 37.477287, 21.054365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180958, 37.661484, 20.938337>,  <33.349361, 37.968475, 20.744957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180958, 37.661484, 20.938337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256570, -0.410458, -0.875041,
		0.870011, -0.492442, -0.024104,
		-0.421013, -0.767479, 0.483449,
		33.054653, 37.431240, 21.083372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477444, 37.311081, 20.566952>,  <33.349361, 37.968475, 20.744957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477444, 37.311081, 20.566952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632282, 37.040329, 20.316517>,  <33.725185, 36.877876, 20.166256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632282, 37.040329, 20.316517>,  <33.477444, 37.311081, 20.566952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632282, 37.040329, 20.316517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514817, -0.404658, 0.755788,
		-0.764932, -0.614883, 0.191830,
		0.387096, -0.676884, -0.626088,
		33.748409, 36.837265, 20.128691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619049, 36.759842, 20.970921>,  <33.477444, 37.311081, 20.566952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619049, 36.759842, 20.970921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853977, 36.714077, 20.650431>,  <33.994934, 36.686619, 20.458136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853977, 36.714077, 20.650431>,  <33.619049, 36.759842, 20.970921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853977, 36.714077, 20.650431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764122, -0.247923, 0.595526,
		-0.266777, -0.962000, -0.058186,
		0.587322, -0.114411, -0.801226,
		34.030174, 36.679752, 20.410063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837223, 36.102871, 21.053152>,  <33.619049, 36.759842, 20.970921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837223, 36.102871, 21.053152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095955, 36.261780, 20.792755>,  <34.251194, 36.357124, 20.636517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095955, 36.261780, 20.792755>,  <33.837223, 36.102871, 21.053152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095955, 36.261780, 20.792755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753943, -0.461614, 0.467420,
		-0.114817, -0.793152, -0.598103,
		0.646828, 0.397268, -0.650993,
		34.290005, 36.380959, 20.597458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164413, 35.562889, 20.863466>,  <33.837223, 36.102871, 21.053152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164413, 35.562889, 20.863466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406059, 35.866314, 20.765791>,  <34.551044, 36.048370, 20.707186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406059, 35.866314, 20.765791>,  <34.164413, 35.562889, 20.863466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406059, 35.866314, 20.765791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680731, -0.331912, 0.653024,
		0.414313, -0.560724, -0.716892,
		0.604111, 0.758567, -0.244186,
		34.587292, 36.093884, 20.692535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817459, 35.268509, 20.696146>,  <34.164413, 35.562889, 20.863466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817459, 35.268509, 20.696146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911686, 35.651707, 20.761576>,  <34.968220, 35.881626, 20.800835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911686, 35.651707, 20.761576>,  <34.817459, 35.268509, 20.696146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911686, 35.651707, 20.761576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756599, -0.286410, 0.587816,
		0.609974, -0.014706, -0.792285,
		0.235563, 0.957994, 0.163576,
		34.982353, 35.939106, 20.810648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508801, 35.252277, 20.738777>,  <34.817459, 35.268509, 20.696146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508801, 35.252277, 20.738777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436272, 35.606506, 20.909836>,  <35.392754, 35.819046, 21.012470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436272, 35.606506, 20.909836>,  <35.508801, 35.252277, 20.738777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436272, 35.606506, 20.909836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607640, -0.241024, 0.756757,
		0.773237, 0.397072, -0.494407,
		-0.181322, 0.885574, 0.427646,
		35.381874, 35.872177, 21.038130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171181, 35.660149, 20.886398>,  <35.508801, 35.252277, 20.738777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171181, 35.660149, 20.886398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882980, 35.774899, 21.138933>,  <35.710060, 35.843750, 21.290453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882980, 35.774899, 21.138933>,  <36.171181, 35.660149, 20.886398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882980, 35.774899, 21.138933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578722, -0.252836, 0.775342,
		0.382049, 0.924001, 0.016148,
		-0.720499, 0.286873, 0.631335,
		35.666832, 35.860962, 21.328333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560043, 35.994812, 21.450720>,  <36.171181, 35.660149, 20.886398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560043, 35.994812, 21.450720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201836, 35.911327, 21.607943>,  <35.986912, 35.861237, 21.702276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201836, 35.911327, 21.607943>,  <36.560043, 35.994812, 21.450720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201836, 35.911327, 21.607943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436010, -0.234555, 0.868838,
		-0.089140, 0.949434, 0.301046,
		-0.895516, -0.208707, 0.393055,
		35.933182, 35.848717, 21.725859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519691, 36.560944, 21.940695>,  <36.560043, 35.994812, 21.450720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519691, 36.560944, 21.940695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271027, 36.259457, 22.025972>,  <36.121830, 36.078564, 22.077139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271027, 36.259457, 22.025972>,  <36.519691, 36.560944, 21.940695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271027, 36.259457, 22.025972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314826, 0.008797, 0.949109,
		-0.717233, 0.657142, 0.231821,
		-0.621660, -0.753716, 0.213195,
		36.084530, 36.033340, 22.089931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190491, 36.717552, 22.595396>,  <36.519691, 36.560944, 21.940695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190491, 36.717552, 22.595396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172268, 36.319439, 22.561140>,  <36.161335, 36.080570, 22.540586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172268, 36.319439, 22.561140>,  <36.190491, 36.717552, 22.595396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172268, 36.319439, 22.561140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219356, -0.093603, 0.971144,
		-0.974581, 0.025454, 0.222586,
		-0.045554, -0.995284, -0.085640,
		36.158604, 36.020855, 22.535448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954834, 36.501247, 23.181334>,  <36.190491, 36.717552, 22.595396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954834, 36.501247, 23.181334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091217, 36.143394, 23.065834>,  <36.173046, 35.928684, 22.996534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091217, 36.143394, 23.065834>,  <35.954834, 36.501247, 23.181334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091217, 36.143394, 23.065834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197904, -0.231962, 0.952380,
		-0.919010, -0.381870, 0.097961,
		0.340962, -0.894633, -0.288749,
		36.193504, 35.875004, 22.979210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650272, 36.052002, 23.645071>,  <35.954834, 36.501247, 23.181334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650272, 36.052002, 23.645071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965324, 35.858215, 23.492792>,  <36.154358, 35.741943, 23.401424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965324, 35.858215, 23.492792>,  <35.650272, 36.052002, 23.645071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965324, 35.858215, 23.492792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283817, -0.263147, 0.922064,
		-0.546886, -0.834295, -0.069764,
		0.787632, -0.484463, -0.380698,
		36.201614, 35.712875, 23.378582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664616, 35.445255, 23.985941>,  <35.650272, 36.052002, 23.645071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664616, 35.445255, 23.985941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036480, 35.448887, 23.838623>,  <36.259598, 35.451065, 23.750233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036480, 35.448887, 23.838623>,  <35.664616, 35.445255, 23.985941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036480, 35.448887, 23.838623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330763, -0.460798, 0.823566,
		-0.162229, -0.887459, -0.431391,
		0.929665, 0.009082, -0.368294,
		36.315380, 35.451611, 23.728134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056992, 34.785461, 24.182261>,  <35.664616, 35.445255, 23.985941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056992, 34.785461, 24.182261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324146, 35.073936, 24.108700>,  <36.484440, 35.247021, 24.064564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324146, 35.073936, 24.108700>,  <36.056992, 34.785461, 24.182261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324146, 35.073936, 24.108700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473545, -0.221146, 0.852555,
		0.574181, -0.656495, -0.489214,
		0.667886, 0.721186, -0.183902,
		36.524513, 35.290291, 24.053530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721645, 34.439018, 24.218603>,  <36.056992, 34.785461, 24.182261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721645, 34.439018, 24.218603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737366, 34.833561, 24.282547>,  <36.746799, 35.070286, 24.320913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737366, 34.833561, 24.282547>,  <36.721645, 34.439018, 24.218603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737366, 34.833561, 24.282547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422875, -0.161368, 0.891705,
		0.905336, 0.032557, -0.423447,
		0.039299, 0.986357, 0.159860,
		36.749157, 35.129467, 24.330505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265923, 34.594921, 24.698206>,  <36.721645, 34.439018, 24.218603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265923, 34.594921, 24.698206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101734, 34.959480, 24.709951>,  <37.003220, 35.178215, 24.716999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101734, 34.959480, 24.709951>,  <37.265923, 34.594921, 24.698206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101734, 34.959480, 24.709951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374716, 0.139229, 0.916626,
		0.831325, 0.387253, -0.398666,
		-0.410472, 0.911400, 0.029366,
		36.978592, 35.232899, 24.718761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709099, 35.141766, 24.746386>,  <37.265923, 34.594921, 24.698206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709099, 35.141766, 24.746386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376339, 35.285389, 24.915628>,  <37.176682, 35.371563, 25.017174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376339, 35.285389, 24.915628>,  <37.709099, 35.141766, 24.746386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376339, 35.285389, 24.915628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494342, 0.133090, 0.859019,
		0.252125, 0.923778, -0.288214,
		-0.831901, 0.359057, 0.423106,
		37.126770, 35.393105, 25.042561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989456, 35.628330, 25.193979>,  <37.709099, 35.141766, 24.746386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989456, 35.628330, 25.193979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610466, 35.614166, 25.321123>,  <37.383072, 35.605667, 25.397409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610466, 35.614166, 25.321123>,  <37.989456, 35.628330, 25.193979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610466, 35.614166, 25.321123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301188, 0.235514, 0.924023,
		-0.107581, 0.971226, -0.212478,
		-0.947477, -0.035411, 0.317859,
		37.326221, 35.603542, 25.416481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940601, 36.210266, 25.543444>,  <37.989456, 35.628330, 25.193979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940601, 36.210266, 25.543444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625042, 36.005264, 25.679075>,  <37.435707, 35.882263, 25.760454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625042, 36.005264, 25.679075>,  <37.940601, 36.210266, 25.543444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625042, 36.005264, 25.679075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134098, 0.394911, 0.908880,
		-0.599708, 0.762488, -0.242821,
		-0.788903, -0.512501, 0.339079,
		37.388371, 35.851513, 25.780800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399853, 36.740105, 25.780357>,  <37.940601, 36.210266, 25.543444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399853, 36.740105, 25.780357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342529, 36.375450, 25.934437>,  <37.308136, 36.156658, 26.026884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342529, 36.375450, 25.934437>,  <37.399853, 36.740105, 25.780357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342529, 36.375450, 25.934437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187882, 0.357077, 0.914984,
		-0.971680, 0.203498, 0.120108,
		-0.143309, -0.911639, 0.385198,
		37.299538, 36.101959, 26.049995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047104, 36.832813, 26.442282>,  <37.399853, 36.740105, 25.780357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047104, 36.832813, 26.442282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184090, 36.462341, 26.505421>,  <37.266281, 36.240059, 26.543304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184090, 36.462341, 26.505421>,  <37.047104, 36.832813, 26.442282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184090, 36.462341, 26.505421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138751, 0.216023, 0.966479,
		-0.929229, -0.309084, 0.202488,
		0.342465, -0.926176, 0.157849,
		37.286831, 36.184490, 26.552774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905891, 36.821186, 27.078989>,  <37.047104, 36.832813, 26.442282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905891, 36.821186, 27.078989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159042, 36.517654, 27.017473>,  <37.310932, 36.335537, 26.980564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159042, 36.517654, 27.017473>,  <36.905891, 36.821186, 27.078989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159042, 36.517654, 27.017473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180974, -0.048149, 0.982309,
		-0.752809, -0.649508, 0.106856,
		0.632873, -0.758828, -0.153791,
		37.348904, 36.290005, 26.971336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677143, 36.266838, 27.605072>,  <36.905891, 36.821186, 27.078989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677143, 36.266838, 27.605072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057442, 36.209934, 27.494917>,  <37.285622, 36.175793, 27.428823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057442, 36.209934, 27.494917>,  <36.677143, 36.266838, 27.605072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057442, 36.209934, 27.494917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271759, -0.044724, 0.961325,
		-0.149072, -0.988819, -0.003861,
		0.950749, -0.142257, -0.275388,
		37.342667, 36.167255, 27.412300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876629, 35.793320, 28.125786>,  <36.677143, 36.266838, 27.605072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876629, 35.793320, 28.125786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203053, 35.969784, 27.976427>,  <37.398907, 36.075661, 27.886812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203053, 35.969784, 27.976427>,  <36.876629, 35.793320, 28.125786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203053, 35.969784, 27.976427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440920, -0.057487, 0.895704,
		0.373683, -0.895585, -0.241429,
		0.816058, 0.441160, -0.373399,
		37.447868, 36.102131, 27.864407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418427, 35.424389, 28.354916>,  <36.876629, 35.793320, 28.125786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418427, 35.424389, 28.354916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614525, 35.750042, 28.230433>,  <37.732185, 35.945435, 28.155743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614525, 35.750042, 28.230433>,  <37.418427, 35.424389, 28.354916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614525, 35.750042, 28.230433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580060, -0.038263, 0.813674,
		0.650530, -0.579420, -0.491003,
		0.490246, 0.814131, -0.311207,
		37.761600, 35.994282, 28.137070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082504, 35.350403, 28.420471>,  <37.418427, 35.424389, 28.354916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082504, 35.350403, 28.420471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033016, 35.746059, 28.452213>,  <38.003323, 35.983452, 28.471258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033016, 35.746059, 28.452213>,  <38.082504, 35.350403, 28.420471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033016, 35.746059, 28.452213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544328, 0.000783, 0.838872,
		0.829700, 0.146976, -0.538513,
		-0.123716, 0.989140, 0.079353,
		37.995903, 36.042801, 28.476019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743629, 35.584202, 28.677061>,  <38.082504, 35.350403, 28.420471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743629, 35.584202, 28.677061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475853, 35.868031, 28.765030>,  <38.315189, 36.038326, 28.817812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475853, 35.868031, 28.765030>,  <38.743629, 35.584202, 28.677061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475853, 35.868031, 28.765030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368664, 0.060311, 0.927604,
		0.644935, 0.702050, -0.301967,
		-0.669437, 0.709569, 0.219924,
		38.275021, 36.080902, 28.831007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108833, 36.040855, 29.015379>,  <38.743629, 35.584202, 28.677061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108833, 36.040855, 29.015379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736206, 36.129421, 29.130726>,  <38.512630, 36.182560, 29.199934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736206, 36.129421, 29.130726>,  <39.108833, 36.040855, 29.015379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736206, 36.129421, 29.130726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345382, 0.291252, 0.892123,
		0.113544, 0.930670, -0.347795,
		-0.931568, 0.221417, 0.288366,
		38.456734, 36.195847, 29.217236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231438, 36.583046, 29.568308>,  <39.108833, 36.040855, 29.015379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231438, 36.583046, 29.568308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860420, 36.435349, 29.591391>,  <38.637810, 36.346729, 29.605240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860420, 36.435349, 29.591391>,  <39.231438, 36.583046, 29.568308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860420, 36.435349, 29.591391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045850, 0.040813, 0.998114,
		-0.370898, 0.928438, -0.020926,
		-0.927541, -0.369239, 0.057706,
		38.582157, 36.324577, 29.608702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869534, 36.973671, 30.059395>,  <39.231438, 36.583046, 29.568308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869534, 36.973671, 30.059395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660702, 36.633682, 30.031157>,  <38.535404, 36.429688, 30.014214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660702, 36.633682, 30.031157>,  <38.869534, 36.973671, 30.059395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660702, 36.633682, 30.031157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015078, -0.073559, 0.997177,
		-0.852765, 0.521667, 0.025588,
		-0.522077, -0.849972, -0.070594,
		38.504078, 36.378689, 30.009977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269260, 36.972424, 30.636660>,  <38.869534, 36.973671, 30.059395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269260, 36.972424, 30.636660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361664, 36.598732, 30.527962>,  <38.417107, 36.374516, 30.462744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361664, 36.598732, 30.527962>,  <38.269260, 36.972424, 30.636660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361664, 36.598732, 30.527962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028213, -0.272750, 0.961671,
		-0.972542, -0.229823, -0.036650,
		0.231011, -0.934232, -0.271745,
		38.430965, 36.318462, 30.446438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029057, 36.576427, 31.161379>,  <38.269260, 36.972424, 30.636660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029057, 36.576427, 31.161379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231262, 36.279972, 30.984669>,  <38.352585, 36.102097, 30.878643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231262, 36.279972, 30.984669>,  <38.029057, 36.576427, 31.161379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231262, 36.279972, 30.984669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084784, -0.466870, 0.880252,
		-0.858643, -0.482434, -0.173172,
		0.505513, -0.741141, -0.441778,
		38.382915, 36.057629, 30.852135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679634, 35.943058, 31.385040>,  <38.029057, 36.576427, 31.161379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679634, 35.943058, 31.385040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046730, 35.850529, 31.255886>,  <38.266987, 35.795013, 31.178394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046730, 35.850529, 31.255886>,  <37.679634, 35.943058, 31.385040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046730, 35.850529, 31.255886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113248, -0.626780, 0.770922,
		-0.380706, -0.744069, -0.549022,
		0.917735, -0.231319, -0.322883,
		38.322052, 35.781132, 31.159021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778522, 35.187599, 31.350994>,  <37.679634, 35.943058, 31.385040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778522, 35.187599, 31.350994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149670, 35.334366, 31.377609>,  <38.372360, 35.422428, 31.393578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149670, 35.334366, 31.377609>,  <37.778522, 35.187599, 31.350994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149670, 35.334366, 31.377609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214659, -0.671450, 0.709278,
		0.304925, -0.643835, -0.701781,
		0.927870, 0.366920, 0.066537,
		38.428032, 35.444443, 31.397570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107491, 34.652863, 31.528854>,  <37.778522, 35.187599, 31.350994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107491, 34.652863, 31.528854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385361, 34.922646, 31.628878>,  <38.552082, 35.084515, 31.688892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385361, 34.922646, 31.628878>,  <38.107491, 34.652863, 31.528854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385361, 34.922646, 31.628878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339159, -0.613672, 0.713006,
		0.634348, -0.410498, -0.655052,
		0.694675, 0.674461, 0.250058,
		38.593761, 35.124985, 31.703896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700089, 34.316925, 31.720728>,  <38.107491, 34.652863, 31.528854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700089, 34.316925, 31.720728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805111, 34.664700, 31.888126>,  <38.868126, 34.873363, 31.988565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805111, 34.664700, 31.888126>,  <38.700089, 34.316925, 31.720728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805111, 34.664700, 31.888126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397049, -0.492639, 0.774377,
		0.879441, -0.037156, -0.474556,
		0.262558, 0.869440, 0.418494,
		38.883877, 34.925533, 32.013676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414871, 34.221996, 31.876169>,  <38.700089, 34.316925, 31.720728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414871, 34.221996, 31.876169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293022, 34.517220, 32.116993>,  <39.219913, 34.694355, 32.261486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293022, 34.517220, 32.116993>,  <39.414871, 34.221996, 31.876169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293022, 34.517220, 32.116993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520797, -0.400177, 0.754075,
		0.797482, 0.543256, -0.262478,
		-0.304618, 0.738059, 0.602061,
		39.201637, 34.738636, 32.297611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931519, 34.331131, 32.241493>,  <39.414871, 34.221996, 31.876169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931519, 34.331131, 32.241493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669800, 34.501019, 32.491776>,  <39.512768, 34.602951, 32.641945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669800, 34.501019, 32.491776>,  <39.931519, 34.331131, 32.241493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669800, 34.501019, 32.491776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466196, -0.424942, 0.775942,
		0.595443, 0.799401, 0.080039,
		-0.654300, 0.424715, 0.625706,
		39.473511, 34.628433, 32.679489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301201, 34.514454, 32.746536>,  <39.931519, 34.331131, 32.241493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301201, 34.514454, 32.746536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930511, 34.513592, 32.896828>,  <39.708096, 34.513077, 32.987003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930511, 34.513592, 32.896828>,  <40.301201, 34.514454, 32.746536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930511, 34.513592, 32.896828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338721, -0.437574, 0.832945,
		0.162615, 0.899180, 0.406241,
		-0.926728, -0.002153, 0.375727,
		39.652493, 34.512947, 33.009544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376419, 34.877022, 33.482159>,  <40.301201, 34.514454, 32.746536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376419, 34.877022, 33.482159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058712, 34.636864, 33.519371>,  <39.868088, 34.492767, 33.541698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058712, 34.636864, 33.519371>,  <40.376419, 34.877022, 33.482159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058712, 34.636864, 33.519371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337735, -0.309031, 0.889064,
		-0.505044, 0.737577, 0.448230,
		-0.794271, -0.600399, 0.093031,
		39.820431, 34.456745, 33.547279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109936, 34.966751, 34.238609>,  <40.376419, 34.877022, 33.482159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109936, 34.966751, 34.238609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963551, 34.626095, 34.088524>,  <39.875721, 34.421703, 33.998474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963551, 34.626095, 34.088524>,  <40.109936, 34.966751, 34.238609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963551, 34.626095, 34.088524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162834, -0.455559, 0.875186,
		-0.916274, 0.259186, 0.305393,
		-0.365960, -0.851639, -0.375213,
		39.853764, 34.370602, 33.975960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693398, 34.796093, 34.736004>,  <40.109936, 34.966751, 34.238609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693398, 34.796093, 34.736004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723263, 34.455059, 34.529114>,  <39.741180, 34.250439, 34.404980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723263, 34.455059, 34.529114>,  <39.693398, 34.796093, 34.736004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723263, 34.455059, 34.529114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055774, -0.514289, 0.855802,
		-0.995648, -0.092741, 0.009156,
		0.074659, -0.852588, -0.517223,
		39.745659, 34.199284, 34.373947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140778, 34.361599, 34.939987>,  <39.693398, 34.796093, 34.736004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140778, 34.361599, 34.939987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444462, 34.140892, 34.801910>,  <39.626671, 34.008469, 34.719063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444462, 34.140892, 34.801910>,  <39.140778, 34.361599, 34.939987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444462, 34.140892, 34.801910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074609, -0.453096, 0.888334,
		-0.646555, -0.700186, -0.302829,
		0.759210, -0.551763, -0.345192,
		39.672226, 33.975365, 34.698353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930153, 33.667057, 34.998783>,  <39.140778, 34.361599, 34.939987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930153, 33.667057, 34.998783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330105, 33.660995, 35.000065>,  <39.570076, 33.657360, 35.000835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330105, 33.660995, 35.000065>,  <38.930153, 33.667057, 34.998783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330105, 33.660995, 35.000065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011278, -0.570491, 0.821227,
		-0.010616, -0.821164, -0.570593,
		0.999880, -0.015154, 0.003205,
		39.630070, 33.656448, 35.001026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106396, 32.893444, 35.120995>,  <38.930153, 33.667057, 34.998783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106396, 32.893444, 35.120995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417225, 33.126968, 35.215084>,  <39.603722, 33.267082, 35.271538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417225, 33.126968, 35.215084>,  <39.106396, 32.893444, 35.120995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417225, 33.126968, 35.215084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183049, -0.567178, 0.802995,
		0.602210, -0.580925, -0.547603,
		0.777069, 0.583810, 0.235223,
		39.650345, 33.302113, 35.285652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542542, 32.417603, 35.402161>,  <39.106396, 32.893444, 35.120995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542542, 32.417603, 35.402161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669632, 32.778488, 35.518822>,  <39.745888, 32.995018, 35.588818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669632, 32.778488, 35.518822>,  <39.542542, 32.417603, 35.402161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669632, 32.778488, 35.518822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174327, -0.357931, 0.917331,
		0.932018, -0.240619, -0.271005,
		0.317729, 0.902213, 0.291652,
		39.764950, 33.049152, 35.606316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166679, 32.276218, 35.796162>,  <39.542542, 32.417603, 35.402161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166679, 32.276218, 35.796162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071144, 32.641163, 35.929157>,  <40.013824, 32.860130, 36.008953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071144, 32.641163, 35.929157>,  <40.166679, 32.276218, 35.796162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071144, 32.641163, 35.929157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283977, -0.261803, 0.922397,
		0.928609, 0.314721, -0.196562,
		-0.238837, 0.912365, 0.332486,
		39.999493, 32.914871, 36.028904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641720, 32.402306, 36.399914>,  <40.166679, 32.276218, 35.796162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641720, 32.402306, 36.399914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343388, 32.665657, 36.440453>,  <40.164387, 32.823669, 36.464775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343388, 32.665657, 36.440453>,  <40.641720, 32.402306, 36.399914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343388, 32.665657, 36.440453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086699, -0.054909, 0.994720,
		0.660468, 0.750681, -0.016128,
		-0.745832, 0.658379, 0.101349,
		40.119637, 32.863171, 36.470856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829502, 33.045753, 36.793705>,  <40.641720, 32.402306, 36.399914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829502, 33.045753, 36.793705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441814, 32.955078, 36.832138>,  <40.209202, 32.900673, 36.855198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441814, 32.955078, 36.832138>,  <40.829502, 33.045753, 36.793705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441814, 32.955078, 36.832138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124223, -0.113306, 0.985764,
		-0.212577, 0.967354, 0.137978,
		-0.969216, -0.226691, 0.096081,
		40.151051, 32.887070, 36.860962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660740, 33.401543, 37.403221>,  <40.829502, 33.045753, 36.793705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660740, 33.401543, 37.403221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373245, 33.129837, 37.343872>,  <40.200748, 32.966812, 37.308262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373245, 33.129837, 37.343872>,  <40.660740, 33.401543, 37.403221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373245, 33.129837, 37.343872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106611, -0.103213, 0.988929,
		-0.687062, 0.726597, 0.001765,
		-0.718735, -0.679267, -0.148377,
		40.157623, 32.926056, 37.299358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974426, 33.564190, 37.813293>,  <40.660740, 33.401543, 37.403221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974426, 33.564190, 37.813293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969498, 33.170631, 37.741970>,  <39.966541, 32.934498, 37.699177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969498, 33.170631, 37.741970>,  <39.974426, 33.564190, 37.813293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969498, 33.170631, 37.741970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451038, -0.153684, 0.879174,
		-0.892420, 0.091256, -0.441881,
		-0.012320, -0.983897, -0.178311,
		39.965801, 32.875462, 37.688477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304882, 33.286869, 37.930698>,  <39.974426, 33.564190, 37.813293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304882, 33.286869, 37.930698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607323, 33.031765, 37.989460>,  <39.788788, 32.878704, 38.024719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607323, 33.031765, 37.989460>,  <39.304882, 33.286869, 37.930698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607323, 33.031765, 37.989460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359724, -0.217462, 0.907364,
		-0.546732, -0.738901, -0.393839,
		0.756097, -0.637758, 0.146908,
		39.834152, 32.840439, 38.033531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074253, 32.906303, 38.523064>,  <39.304882, 33.286869, 37.930698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074253, 32.906303, 38.523064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426476, 32.720989, 38.483078>,  <39.637810, 32.609802, 38.459087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426476, 32.720989, 38.483078>,  <39.074253, 32.906303, 38.523064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426476, 32.720989, 38.483078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012069, -0.188924, 0.981918,
		-0.473790, -0.865839, -0.160767,
		0.880555, -0.463283, -0.099960,
		39.690643, 32.582005, 38.453091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040333, 32.315311, 38.897408>,  <39.074253, 32.906303, 38.523064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040333, 32.315311, 38.897408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438610, 32.334499, 38.865692>,  <39.677578, 32.346012, 38.846664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438610, 32.334499, 38.865692>,  <39.040333, 32.315311, 38.897408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438610, 32.334499, 38.865692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085917, -0.157310, 0.983805,
		0.034723, -0.986383, -0.160755,
		0.995697, 0.047972, -0.079285,
		39.737320, 32.348892, 38.841908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429043, 31.761978, 39.267166>,  <39.040333, 32.315311, 38.897408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429043, 31.761978, 39.267166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654438, 32.092422, 39.265423>,  <39.789677, 32.290688, 39.264378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654438, 32.092422, 39.265423>,  <39.429043, 31.761978, 39.267166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654438, 32.092422, 39.265423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122606, -0.078413, 0.989353,
		0.816973, -0.558026, -0.145472,
		0.563492, 0.826110, -0.004356,
		39.823486, 32.340256, 39.264114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948929, 31.599773, 39.729622>,  <39.429043, 31.761978, 39.267166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948929, 31.599773, 39.729622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984486, 31.997208, 39.701660>,  <40.005821, 32.235668, 39.684883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984486, 31.997208, 39.701660>,  <39.948929, 31.599773, 39.729622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984486, 31.997208, 39.701660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213715, 0.049522, 0.975640,
		0.972843, -0.101669, -0.207942,
		0.088895, 0.993585, -0.069905,
		40.011154, 32.295284, 39.680687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663914, 31.802662, 40.016171>,  <39.948929, 31.599773, 39.729622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663914, 31.802662, 40.016171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439571, 32.133816, 40.013351>,  <40.304966, 32.332508, 40.011662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439571, 32.133816, 40.013351>,  <40.663914, 31.802662, 40.016171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439571, 32.133816, 40.013351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338022, 0.236749, 0.910874,
		0.755766, 0.508487, -0.412625,
		-0.560856, 0.827883, -0.007047,
		40.271317, 32.382179, 40.011238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061893, 32.367195, 40.230412>,  <40.663914, 31.802662, 40.016171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061893, 32.367195, 40.230412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692451, 32.487358, 40.325661>,  <40.470787, 32.559456, 40.382812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692451, 32.487358, 40.325661>,  <41.061893, 32.367195, 40.230412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692451, 32.487358, 40.325661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341099, 0.360565, 0.868127,
		0.174932, 0.883034, -0.435489,
		-0.923607, 0.300407, 0.238127,
		40.415371, 32.577480, 40.397099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134327, 33.130375, 40.522442>,  <41.061893, 32.367195, 40.230412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134327, 33.130375, 40.522442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779541, 33.002365, 40.655632>,  <40.566669, 32.925560, 40.735546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779541, 33.002365, 40.655632>,  <41.134327, 33.130375, 40.522442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779541, 33.002365, 40.655632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136431, 0.507251, 0.850931,
		-0.441222, 0.800176, -0.406254,
		-0.886967, -0.320024, 0.332980,
		40.513451, 32.906357, 40.755527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810715, 33.692169, 40.689861>,  <41.134327, 33.130375, 40.522442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810715, 33.692169, 40.689861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607677, 33.410431, 40.888351>,  <40.485855, 33.241386, 41.007446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607677, 33.410431, 40.888351>,  <40.810715, 33.692169, 40.689861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607677, 33.410431, 40.888351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100040, 0.523857, 0.845911,
		-0.855767, 0.479024, -0.195446,
		-0.507598, -0.704350, 0.496221,
		40.455399, 33.199127, 41.037216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172634, 33.982845, 41.018539>,  <40.810715, 33.692169, 40.689861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172634, 33.982845, 41.018539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292442, 33.701530, 41.276432>,  <40.364326, 33.532742, 41.431168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292442, 33.701530, 41.276432>,  <40.172634, 33.982845, 41.018539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292442, 33.701530, 41.276432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098757, 0.694981, 0.712214,
		-0.948965, -0.149650, 0.277614,
		0.299519, -0.703283, 0.644734,
		40.382298, 33.490547, 41.469852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689915, 33.858215, 41.450523>,  <40.172634, 33.982845, 41.018539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689915, 33.858215, 41.450523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834763, 34.211792, 41.332188>,  <40.921669, 34.423939, 41.261189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834763, 34.211792, 41.332188>,  <40.689915, 33.858215, 41.450523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834763, 34.211792, 41.332188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884601, -0.225830, 0.408022,
		0.293860, -0.409447, -0.863713,
		0.362116, 0.883942, -0.295835,
		40.943398, 34.476974, 41.243439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300404, 33.618496, 41.251537>,  <40.689915, 33.858215, 41.450523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300404, 33.618496, 41.251537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299747, 34.012367, 41.321281>,  <41.299355, 34.248692, 41.363129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299747, 34.012367, 41.321281>,  <41.300404, 33.618496, 41.251537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299747, 34.012367, 41.321281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867839, -0.085229, 0.489481,
		0.496843, 0.152116, -0.854405,
		-0.001638, 0.984681, 0.174357,
		41.299255, 34.307770, 41.373589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241631, 33.887589, 41.996807>,  <41.300404, 33.618496, 41.251537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241631, 33.887589, 41.996807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895264, 33.840904, 42.191360>,  <40.687443, 33.812893, 42.308094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895264, 33.840904, 42.191360>,  <41.241631, 33.887589, 41.996807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895264, 33.840904, 42.191360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227361, -0.774297, -0.590568,
		0.445530, -0.621967, 0.643941,
		-0.865915, -0.116709, 0.486384,
		40.635490, 33.805893, 42.337276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273193, 33.149738, 42.265003>,  <41.241631, 33.887589, 41.996807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273193, 33.149738, 42.265003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924103, 33.333107, 42.197842>,  <40.714649, 33.443130, 42.157543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924103, 33.333107, 42.197842>,  <41.273193, 33.149738, 42.265003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924103, 33.333107, 42.197842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310206, -0.786277, -0.534360,
		-0.376985, -0.414265, 0.828412,
		-0.872728, 0.458424, -0.167907,
		40.662285, 33.470634, 42.147469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769749, 32.669502, 42.415867>,  <41.273193, 33.149738, 42.265003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769749, 32.669502, 42.415867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622269, 32.934803, 42.155357>,  <40.533779, 33.093983, 41.999054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622269, 32.934803, 42.155357>,  <40.769749, 32.669502, 42.415867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622269, 32.934803, 42.155357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220052, -0.742995, -0.632088,
		-0.903126, -0.089739, 0.419893,
		-0.368701, 0.663254, -0.651271,
		40.511658, 33.133778, 41.959976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524197, 32.260750, 41.891140>,  <40.769749, 32.669502, 42.415867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524197, 32.260750, 41.891140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419060, 32.617661, 41.744308>,  <40.355976, 32.831806, 41.656208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419060, 32.617661, 41.744308>,  <40.524197, 32.260750, 41.891140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419060, 32.617661, 41.744308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397032, -0.446778, -0.801720,
		-0.879363, -0.064986, 0.471697,
		-0.262844, 0.892282, -0.367079,
		40.340206, 32.885345, 41.634186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782864, 32.195427, 41.569920>,  <40.524197, 32.260750, 41.891140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782864, 32.195427, 41.569920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966702, 32.514503, 41.413738>,  <40.077003, 32.705952, 41.320030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966702, 32.514503, 41.413738>,  <39.782864, 32.195427, 41.569920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966702, 32.514503, 41.413738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308926, -0.268597, -0.912371,
		-0.832668, 0.539943, 0.122982,
		0.459596, 0.797694, -0.390455,
		40.104580, 32.753811, 41.296600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392406, 32.439365, 41.042019>,  <39.782864, 32.195427, 41.569920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392406, 32.439365, 41.042019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736050, 32.622471, 40.950466>,  <39.942234, 32.732334, 40.895535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736050, 32.622471, 40.950466>,  <39.392406, 32.439365, 41.042019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736050, 32.622471, 40.950466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194203, -0.122200, -0.973320,
		-0.473521, 0.880636, -0.016084,
		0.859106, 0.457764, -0.228886,
		39.993782, 32.759800, 40.881802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276669, 33.009361, 40.645020>,  <39.392406, 32.439365, 41.042019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276669, 33.009361, 40.645020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647964, 32.890236, 40.555859>,  <39.870743, 32.818760, 40.502361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647964, 32.890236, 40.555859>,  <39.276669, 33.009361, 40.645020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647964, 32.890236, 40.555859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285420, -0.185914, -0.940198,
		0.238567, 0.936344, -0.257575,
		0.928235, -0.297817, -0.222898,
		39.926434, 32.800892, 40.488991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538925, 33.456375, 40.174732>,  <39.276669, 33.009361, 40.645020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538925, 33.456375, 40.174732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757256, 33.124573, 40.127407>,  <39.888256, 32.925491, 40.099010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757256, 33.124573, 40.127407>,  <39.538925, 33.456375, 40.174732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757256, 33.124573, 40.127407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100690, 0.075243, -0.992069,
		0.831825, 0.553412, -0.042453,
		0.545828, -0.829502, -0.118313,
		39.921005, 32.875721, 40.091915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095409, 33.568474, 39.591774>,  <39.538925, 33.456375, 40.174732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095409, 33.568474, 39.591774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070587, 33.169907, 39.614750>,  <40.055695, 32.930767, 39.628536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070587, 33.169907, 39.614750>,  <40.095409, 33.568474, 39.591774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070587, 33.169907, 39.614750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144502, -0.065910, -0.987307,
		0.987557, -0.052970, 0.148075,
		-0.062057, -0.996419, 0.057436,
		40.051971, 32.870979, 39.631981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713490, 33.239952, 39.236240>,  <40.095409, 33.568474, 39.591774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713490, 33.239952, 39.236240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403103, 32.987690, 39.241177>,  <40.216873, 32.836334, 39.244137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403103, 32.987690, 39.241177>,  <40.713490, 33.239952, 39.236240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403103, 32.987690, 39.241177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025776, -0.051245, -0.998354,
		0.630249, -0.774369, 0.056020,
		-0.775965, -0.630656, 0.012337,
		40.170315, 32.798492, 39.244877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897507, 32.515312, 38.941803>,  <40.713490, 33.239952, 39.236240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897507, 32.515312, 38.941803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514385, 32.610832, 38.877827>,  <40.284512, 32.668144, 38.839443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514385, 32.610832, 38.877827>,  <40.897507, 32.515312, 38.941803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514385, 32.610832, 38.877827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152679, -0.048708, -0.987075,
		-0.243500, -0.969847, 0.010194,
		-0.957808, 0.238797, -0.159936,
		40.227043, 32.682472, 38.829845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493553, 31.910254, 38.669567>,  <40.897507, 32.515312, 38.941803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493553, 31.910254, 38.669567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363392, 32.273800, 38.565205>,  <40.285294, 32.491928, 38.502586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363392, 32.273800, 38.565205>,  <40.493553, 31.910254, 38.669567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363392, 32.273800, 38.565205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047954, -0.259703, -0.964497,
		-0.944358, -0.326365, 0.040925,
		-0.325406, 0.908868, -0.260903,
		40.265770, 32.546459, 38.486935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169735, 31.652554, 38.097366>,  <40.493553, 31.910254, 38.669567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169735, 31.652554, 38.097366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958847, 31.987881, 38.041847>,  <39.832314, 32.189075, 38.008537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958847, 31.987881, 38.041847>,  <40.169735, 31.652554, 38.097366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958847, 31.987881, 38.041847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374445, 0.082584, -0.923564,
		-0.762777, -0.538893, -0.357443,
		-0.527221, 0.838316, -0.138793,
		39.800682, 32.239376, 38.000210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744625, 31.591249, 37.491871>,  <40.169735, 31.652554, 38.097366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744625, 31.591249, 37.491871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827274, 31.977341, 37.555916>,  <39.876865, 32.208996, 37.594345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827274, 31.977341, 37.555916>,  <39.744625, 31.591249, 37.491871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827274, 31.977341, 37.555916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275891, 0.099530, -0.956022,
		-0.938718, 0.241711, -0.245733,
		0.206623, 0.965230, 0.160117,
		39.889263, 32.266911, 37.603951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359051, 31.897461, 37.037487>,  <39.744625, 31.591249, 37.491871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359051, 31.897461, 37.037487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598366, 32.205578, 37.125767>,  <39.741955, 32.390450, 37.178734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598366, 32.205578, 37.125767>,  <39.359051, 31.897461, 37.037487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598366, 32.205578, 37.125767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165942, 0.150349, -0.974607,
		-0.783912, 0.619715, -0.037872,
		0.598285, 0.770291, 0.220697,
		39.777851, 32.436665, 37.191975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074234, 32.445961, 36.645706>,  <39.359051, 31.897461, 37.037487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074234, 32.445961, 36.645706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460251, 32.506863, 36.731045>,  <39.691860, 32.543404, 36.782249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460251, 32.506863, 36.731045>,  <39.074234, 32.445961, 36.645706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460251, 32.506863, 36.731045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196223, 0.119982, -0.973191,
		-0.173769, 0.981032, 0.085912,
		0.965039, 0.152252, 0.213350,
		39.749763, 32.552540, 36.795052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005051, 33.137241, 37.002544>,  <39.074234, 32.445961, 36.645706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005051, 33.137241, 37.002544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403961, 33.147705, 36.974949>,  <39.643307, 33.153984, 36.958393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403961, 33.147705, 36.974949>,  <39.005051, 33.137241, 37.002544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403961, 33.147705, 36.974949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071628, 0.119216, -0.990281,
		-0.017681, 0.992524, 0.120765,
		0.997275, 0.026159, -0.068985,
		39.703144, 33.155552, 36.954254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211647, 33.810604, 36.547451>,  <39.005051, 33.137241, 37.002544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211647, 33.810604, 36.547451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502529, 33.536079, 36.552296>,  <39.677059, 33.371365, 36.555202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502529, 33.536079, 36.552296>,  <39.211647, 33.810604, 36.547451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502529, 33.536079, 36.552296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193320, 0.187847, -0.962985,
		0.658638, 0.702626, 0.269282,
		0.727203, -0.686316, 0.012109,
		39.720692, 33.330185, 36.555927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853424, 34.118416, 36.264706>,  <39.211647, 33.810604, 36.547451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853424, 34.118416, 36.264706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903114, 33.723816, 36.222019>,  <39.932930, 33.487057, 36.196407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903114, 33.723816, 36.222019>,  <39.853424, 34.118416, 36.264706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903114, 33.723816, 36.222019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203830, 0.130628, -0.970252,
		0.971092, 0.098781, 0.217306,
		0.124229, -0.986498, -0.106717,
		39.940384, 33.427868, 36.190002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396477, 34.184555, 35.911976>,  <39.853424, 34.118416, 36.264706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396477, 34.184555, 35.911976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219803, 33.831207, 35.849281>,  <40.113796, 33.619198, 35.811665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219803, 33.831207, 35.849281>,  <40.396477, 34.184555, 35.911976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219803, 33.831207, 35.849281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028492, 0.160801, -0.986575,
		0.896717, -0.440224, -0.045855,
		-0.441687, -0.883372, -0.156735,
		40.087296, 33.566196, 35.802261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827450, 33.850674, 35.468842>,  <40.396477, 34.184555, 35.911976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827450, 33.850674, 35.468842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469620, 33.678341, 35.421299>,  <40.254921, 33.574940, 35.392773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469620, 33.678341, 35.421299>,  <40.827450, 33.850674, 35.468842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469620, 33.678341, 35.421299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039929, 0.187842, -0.981387,
		0.445139, -0.882666, -0.150835,
		-0.894570, -0.430831, -0.118860,
		40.201248, 33.549091, 35.385639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895050, 33.551071, 34.869209>,  <40.827450, 33.850674, 35.468842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895050, 33.551071, 34.869209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498165, 33.577377, 34.911514>,  <40.260033, 33.593159, 34.936897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498165, 33.577377, 34.911514>,  <40.895050, 33.551071, 34.869209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498165, 33.577377, 34.911514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076801, 0.345402, -0.935307,
		-0.098038, -0.936148, -0.337662,
		-0.992215, 0.065763, 0.105759,
		40.200500, 33.597107, 34.943241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572868, 33.182343, 34.234760>,  <40.895050, 33.551071, 34.869209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572868, 33.182343, 34.234760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308357, 33.436020, 34.395012>,  <40.149651, 33.588226, 34.491165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308357, 33.436020, 34.395012>,  <40.572868, 33.182343, 34.234760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308357, 33.436020, 34.395012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334269, 0.228993, -0.914235,
		-0.671546, -0.738484, 0.060563,
		-0.661280, 0.634195, 0.400631,
		40.109974, 33.626278, 34.515202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921970, 33.026623, 33.823452>,  <40.572868, 33.182343, 34.234760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921970, 33.026623, 33.823452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861759, 33.386749, 33.986801>,  <39.825634, 33.602825, 34.084808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861759, 33.386749, 33.986801>,  <39.921970, 33.026623, 33.823452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861759, 33.386749, 33.986801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391898, 0.324891, -0.860733,
		-0.907611, -0.289604, 0.303928,
		-0.150528, 0.900319, 0.408370,
		39.816601, 33.656845, 34.109314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204872, 33.660633, 33.746052>,  <39.921970, 33.026623, 33.823452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204872, 33.660633, 33.746052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577370, 33.780857, 33.663635>,  <40.800869, 33.852993, 33.614185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577370, 33.780857, 33.663635>,  <40.204872, 33.660633, 33.746052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577370, 33.780857, 33.663635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193920, -0.887456, -0.418111,
		-0.308517, 0.349408, -0.884721,
		0.931242, 0.300559, -0.206038,
		40.856743, 33.871025, 33.601826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413315, 33.480324, 32.965797>,  <40.204872, 33.660633, 33.746052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413315, 33.480324, 32.965797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744438, 33.511497, 33.188026>,  <40.943111, 33.530201, 33.321365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744438, 33.511497, 33.188026>,  <40.413315, 33.480324, 32.965797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744438, 33.511497, 33.188026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218523, -0.956883, -0.191369,
		0.516702, 0.279822, -0.809147,
		0.827808, 0.077937, 0.555571,
		40.992783, 33.534878, 33.354698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723251, 32.957970, 32.727310>,  <40.413315, 33.480324, 32.965797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723251, 32.957970, 32.727310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898849, 33.057396, 33.072678>,  <41.004208, 33.117050, 33.279900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898849, 33.057396, 33.072678>,  <40.723251, 32.957970, 32.727310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898849, 33.057396, 33.072678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267841, -0.953484, 0.138310,
		0.857637, 0.170542, -0.485153,
		0.438998, 0.248564, 0.863422,
		41.030548, 33.131966, 33.331703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440285, 32.942516, 32.704166>,  <40.723251, 32.957970, 32.727310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440285, 32.942516, 32.704166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343105, 32.881870, 33.087414>,  <41.284798, 32.845482, 33.317364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343105, 32.881870, 33.087414>,  <41.440285, 32.942516, 32.704166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343105, 32.881870, 33.087414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612888, -0.789582, 0.030468,
		0.751893, 0.594621, 0.284750,
		-0.242951, -0.151611, 0.958117,
		41.270222, 32.836388, 33.374847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093651, 32.905212, 32.958111>,  <41.440285, 32.942516, 32.704166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093651, 32.905212, 32.958111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797970, 32.695118, 33.126728>,  <41.620560, 32.569061, 33.227898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797970, 32.695118, 33.126728>,  <42.093651, 32.905212, 32.958111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797970, 32.695118, 33.126728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478202, -0.850084, -0.220633,
		0.474235, 0.038491, 0.879556,
		-0.739205, -0.525238, 0.421547,
		41.576210, 32.537548, 33.253193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372452, 32.356426, 33.311180>,  <42.093651, 32.905212, 32.958111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372452, 32.356426, 33.311180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998150, 32.229542, 33.249538>,  <41.773571, 32.153412, 33.212555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998150, 32.229542, 33.249538>,  <42.372452, 32.356426, 33.311180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998150, 32.229542, 33.249538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345305, -0.912906, -0.217639,
		-0.071645, -0.256869, 0.963787,
		-0.935752, -0.317208, -0.154103,
		41.717422, 32.134380, 33.203308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110886, 31.965122, 32.763992>,  <42.372452, 32.356426, 33.311180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110886, 31.965122, 32.763992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277966, 32.219673, 32.504593>,  <42.378216, 32.372402, 32.348953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277966, 32.219673, 32.504593>,  <42.110886, 31.965122, 32.763992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277966, 32.219673, 32.504593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785390, 0.105968, 0.609863,
		0.456823, -0.764065, -0.455542,
		0.417702, 0.636377, -0.648497,
		42.403275, 32.410587, 32.310043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772949, 31.829325, 32.559559>,  <42.110886, 31.965122, 32.763992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772949, 31.829325, 32.559559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739029, 32.226715, 32.529072>,  <42.718678, 32.465149, 32.510780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739029, 32.226715, 32.529072>,  <42.772949, 31.829325, 32.559559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739029, 32.226715, 32.529072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805867, 0.113374, 0.581142,
		0.585993, -0.012138, -0.810226,
		-0.084805, 0.993478, -0.076218,
		42.713589, 32.524757, 32.506207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316513, 32.195843, 32.142284>,  <42.772949, 31.829325, 32.559559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316513, 32.195843, 32.142284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178295, 32.440643, 32.426834>,  <43.095364, 32.587524, 32.597565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178295, 32.440643, 32.426834>,  <43.316513, 32.195843, 32.142284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178295, 32.440643, 32.426834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889295, -0.028459, 0.456447,
		0.299590, 0.790347, -0.534413,
		-0.345543, 0.611998, 0.711378,
		43.074631, 32.624241, 32.640247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737415, 32.785469, 32.132317>,  <43.316513, 32.195843, 32.142284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737415, 32.785469, 32.132317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575905, 32.710369, 32.490471>,  <43.479000, 32.665310, 32.705364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575905, 32.710369, 32.490471>,  <43.737415, 32.785469, 32.132317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575905, 32.710369, 32.490471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913518, -0.135692, 0.383500,
		0.049493, 0.972798, 0.226304,
		-0.403776, -0.187752, 0.895385,
		43.454773, 32.654045, 32.759087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065407, 33.307915, 32.645844>,  <43.737415, 32.785469, 32.132317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065407, 33.307915, 32.645844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962547, 32.928608, 32.720314>,  <43.900833, 32.701023, 32.764996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962547, 32.928608, 32.720314>,  <44.065407, 33.307915, 32.645844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962547, 32.928608, 32.720314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875777, -0.147233, 0.459714,
		-0.408522, 0.281260, 0.868333,
		-0.257146, -0.948270, 0.186173,
		43.885403, 32.644127, 32.776165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164833, 33.033314, 33.408043>,  <44.065407, 33.307915, 32.645844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164833, 33.033314, 33.408043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182884, 32.745377, 33.130978>,  <44.193714, 32.572613, 32.964737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182884, 32.745377, 33.130978>,  <44.164833, 33.033314, 33.408043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182884, 32.745377, 33.130978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813108, -0.376348, 0.444093,
		-0.580361, -0.583256, 0.568325,
		0.045132, -0.719844, -0.692667,
		44.196423, 32.529423, 32.923176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833672, 33.204514, 33.335197>,  <44.164833, 33.033314, 33.408043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833672, 33.204514, 33.335197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079281, 33.158653, 33.647564>,  <45.226646, 33.131138, 33.834984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079281, 33.158653, 33.647564>,  <44.833672, 33.204514, 33.335197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079281, 33.158653, 33.647564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366166, 0.917860, -0.153152,
		-0.699216, 0.379985, 0.605564,
		0.614019, -0.114651, 0.780920,
		45.263485, 33.124256, 33.881840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648472, 33.507530, 34.045517>,  <44.833672, 33.204514, 33.335197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648472, 33.507530, 34.045517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039822, 33.474327, 33.969738>,  <45.274632, 33.454407, 33.924271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039822, 33.474327, 33.969738>,  <44.648472, 33.507530, 34.045517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039822, 33.474327, 33.969738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092594, 0.994805, 0.042306,
		0.184953, -0.058933, 0.980979,
		0.978375, -0.083008, -0.189449,
		45.333336, 33.449425, 33.912903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075474, 34.000996, 34.431118>,  <44.648472, 33.507530, 34.045517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075474, 34.000996, 34.431118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334595, 33.897121, 34.144646>,  <45.490067, 33.834797, 33.972763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334595, 33.897121, 34.144646>,  <45.075474, 34.000996, 34.431118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334595, 33.897121, 34.144646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146388, 0.965020, -0.217502,
		0.747608, 0.036060, 0.663161,
		0.647807, -0.259684, -0.716178,
		45.528938, 33.819218, 33.929794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867611, 34.214230, 34.514042>,  <45.075474, 34.000996, 34.431118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867611, 34.214230, 34.514042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692768, 34.197056, 34.154690>,  <45.587864, 34.186752, 33.939079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692768, 34.197056, 34.154690>,  <45.867611, 34.214230, 34.514042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692768, 34.197056, 34.154690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005372, 0.998717, -0.050348,
		0.899392, -0.026833, -0.436317,
		-0.437109, -0.042938, -0.898383,
		45.561634, 34.184174, 33.885174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219639, 34.593777, 34.084106>,  <45.867611, 34.214230, 34.514042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219639, 34.593777, 34.084106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880569, 34.576878, 33.872570>,  <45.677128, 34.566738, 33.745647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880569, 34.576878, 33.872570>,  <46.219639, 34.593777, 34.084106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880569, 34.576878, 33.872570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011514, 0.998055, -0.061274,
		0.530400, -0.045851, -0.846506,
		-0.847669, -0.042246, -0.528840,
		45.626270, 34.564205, 33.713917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207363, 35.200535, 33.895988>,  <46.219639, 34.593777, 34.084106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207363, 35.200535, 33.895988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833874, 35.086887, 33.808861>,  <45.609779, 35.018700, 33.756584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833874, 35.086887, 33.808861>,  <46.207363, 35.200535, 33.895988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833874, 35.086887, 33.808861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283453, 0.958348, -0.034971,
		0.218686, 0.029089, -0.975362,
		-0.933719, -0.284117, -0.217822,
		45.553757, 35.001652, 33.743515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.706856, 35.438229, 34.458298>,  <46.207363, 35.200535, 33.895988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.706856, 35.438229, 34.458298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.535347, 35.258537, 34.771820>,  <46.432442, 35.150723, 34.959934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.535347, 35.258537, 34.771820>,  <46.706856, 35.438229, 34.458298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.535347, 35.258537, 34.771820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547898, -0.819139, -0.169760,
		0.718305, 0.356656, 0.597356,
		-0.428772, -0.449230, 0.783803,
		46.406715, 35.123768, 35.006962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.149910, 34.994179, 34.730534>,  <46.706856, 35.438229, 34.458298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.149910, 34.994179, 34.730534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330585, 35.336403, 34.831726>,  <47.438992, 35.541737, 34.892441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330585, 35.336403, 34.831726>,  <47.149910, 34.994179, 34.730534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.330585, 35.336403, 34.831726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334844, -0.425392, 0.840786,
		0.826958, -0.295063, -0.478622,
		0.451687, 0.855558, 0.252981,
		47.466091, 35.593071, 34.907619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.937660, 34.904587, 34.777317>,  <47.149910, 34.994179, 34.730534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.937660, 34.904587, 34.777317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.789394, 35.191566, 35.013241>,  <47.700436, 35.363754, 35.154793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.789394, 35.191566, 35.013241>,  <47.937660, 34.904587, 34.777317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.789394, 35.191566, 35.013241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399975, -0.449828, 0.798545,
		0.838229, 0.531901, -0.120227,
		-0.370666, 0.717451, 0.589806,
		47.678196, 35.406803, 35.190182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.877190, 31.611559, 26.109468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.499954, 31.643507, 25.980347>,  <34.273613, 31.662676, 25.902874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.499954, 31.643507, 25.980347>,  <34.877190, 31.611559, 26.109468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499954, 31.643507, 25.980347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297692, 0.229821, 0.926586,
		0.148192, 0.969950, -0.192965,
		-0.943090, 0.079869, -0.322804,
		34.217026, 31.667467, 25.883505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538136, 32.275169, 26.235899>,  <34.877190, 31.611559, 26.109468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538136, 32.275169, 26.235899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.258980, 31.988699, 26.233475>,  <34.091488, 31.816816, 26.232019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.258980, 31.988699, 26.233475>,  <34.538136, 32.275169, 26.235899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258980, 31.988699, 26.233475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280637, 0.265665, 0.922315,
		-0.658934, 0.645375, -0.386392,
		-0.697889, -0.716180, -0.006060,
		34.049614, 31.773846, 26.231657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041264, 32.576984, 26.526245>,  <34.538136, 32.275169, 26.235899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041264, 32.576984, 26.526245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.938484, 32.193741, 26.576841>,  <33.876816, 31.963795, 26.607199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.938484, 32.193741, 26.576841>,  <34.041264, 32.576984, 26.526245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938484, 32.193741, 26.576841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295318, 0.202467, 0.933699,
		-0.920199, 0.202555, -0.334970,
		-0.256946, -0.958112, 0.126492,
		33.861401, 31.906307, 26.614788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756073, 32.696289, 27.162983>,  <34.041264, 32.576984, 26.526245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756073, 32.696289, 27.162983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.749878, 32.300995, 27.102133>,  <33.746162, 32.063816, 27.065622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.749878, 32.300995, 27.102133>,  <33.756073, 32.696289, 27.162983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749878, 32.300995, 27.102133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287331, -0.141328, 0.947348,
		-0.957706, 0.058380, -0.281763,
		-0.015485, -0.988240, -0.152125,
		33.745232, 32.004524, 27.056496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175003, 32.458214, 27.574507>,  <33.756073, 32.696289, 27.162983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175003, 32.458214, 27.574507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.444660, 32.168751, 27.515366>,  <33.606453, 31.995073, 27.479881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.444660, 32.168751, 27.515366>,  <33.175003, 32.458214, 27.574507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444660, 32.168751, 27.515366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150260, -0.330363, 0.931817,
		-0.723157, -0.605959, -0.331447,
		0.674141, -0.723653, -0.147853,
		33.646904, 31.951654, 27.471010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909325, 31.930241, 28.031199>,  <33.175003, 32.458214, 27.574507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909325, 31.930241, 28.031199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280796, 31.807844, 27.947369>,  <33.503681, 31.734406, 27.897072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280796, 31.807844, 27.947369>,  <32.909325, 31.930241, 28.031199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280796, 31.807844, 27.947369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193339, -0.082800, 0.977632,
		-0.316500, -0.948427, -0.017735,
		0.928681, -0.305992, -0.209574,
		33.559399, 31.716047, 27.884497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046852, 31.442276, 28.471394>,  <32.909325, 31.930241, 28.031199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046852, 31.442276, 28.471394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.418835, 31.541023, 28.362411>,  <33.642025, 31.600271, 28.297022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.418835, 31.541023, 28.362411>,  <33.046852, 31.442276, 28.471394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418835, 31.541023, 28.362411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310687, -0.131404, 0.941385,
		0.196595, -0.960099, -0.198899,
		0.929959, 0.246867, -0.272457,
		33.697823, 31.615084, 28.280674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427116, 30.948788, 28.719553>,  <33.046852, 31.442276, 28.471394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427116, 30.948788, 28.719553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.686897, 31.250858, 28.683945>,  <33.842766, 31.432100, 28.662579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.686897, 31.250858, 28.683945>,  <33.427116, 30.948788, 28.719553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686897, 31.250858, 28.683945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333104, -0.177302, 0.926070,
		0.683561, -0.631091, -0.366700,
		0.649451, 0.755175, -0.089022,
		33.881733, 31.477411, 28.657238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091637, 30.719368, 28.884201>,  <33.427116, 30.948788, 28.719553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091637, 30.719368, 28.884201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.142368, 31.112970, 28.934238>,  <34.172806, 31.349133, 28.964262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.142368, 31.112970, 28.934238>,  <34.091637, 30.719368, 28.884201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142368, 31.112970, 28.934238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405221, -0.166506, 0.898928,
		0.905379, -0.063315, -0.419857,
		0.126825, 0.984006, 0.125095,
		34.180416, 31.408173, 28.971767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879578, 30.875719, 29.035639>,  <34.091637, 30.719368, 28.884201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879578, 30.875719, 29.035639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.632893, 31.161182, 29.168518>,  <34.484882, 31.332460, 29.248245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.632893, 31.161182, 29.168518>,  <34.879578, 30.875719, 29.035639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632893, 31.161182, 29.168518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352266, -0.127191, 0.927217,
		0.703969, 0.688849, -0.172958,
		-0.616714, 0.713659, 0.332197,
		34.447880, 31.375280, 29.268177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251968, 31.244698, 29.423811>,  <34.879578, 30.875719, 29.035639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251968, 31.244698, 29.423811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894501, 31.379103, 29.542770>,  <34.680019, 31.459745, 29.614145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894501, 31.379103, 29.542770>,  <35.251968, 31.244698, 29.423811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894501, 31.379103, 29.542770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231797, -0.221799, 0.947141,
		0.384212, 0.915370, 0.120329,
		-0.893673, 0.336011, 0.297398,
		34.626400, 31.479906, 29.631990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423386, 31.809929, 29.764431>,  <35.251968, 31.244698, 29.423811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423386, 31.809929, 29.764431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078320, 31.677286, 29.917191>,  <34.871281, 31.597700, 30.008846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078320, 31.677286, 29.917191>,  <35.423386, 31.809929, 29.764431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078320, 31.677286, 29.917191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371554, 0.096805, 0.923351,
		-0.343161, 0.938437, 0.039701,
		-0.862663, -0.331609, 0.381900,
		34.819519, 31.577803, 30.031761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268589, 32.349503, 30.230293>,  <35.423386, 31.809929, 29.764431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268589, 32.349503, 30.230293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066208, 32.019539, 30.331118>,  <34.944778, 31.821560, 30.391611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066208, 32.019539, 30.331118>,  <35.268589, 32.349503, 30.230293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066208, 32.019539, 30.331118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249276, 0.139918, 0.958272,
		-0.825759, 0.547668, 0.134840,
		-0.505948, -0.824914, 0.252059,
		34.914425, 31.772064, 30.406734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894741, 32.574467, 30.766449>,  <35.268589, 32.349503, 30.230293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894741, 32.574467, 30.766449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911995, 32.177704, 30.814220>,  <34.922348, 31.939646, 30.842884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911995, 32.177704, 30.814220>,  <34.894741, 32.574467, 30.766449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911995, 32.177704, 30.814220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320962, 0.126964, 0.938543,
		-0.946109, -0.002153, 0.323841,
		0.043137, -0.991905, 0.119430,
		34.924934, 31.880133, 30.850050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842743, 32.567551, 31.492634>,  <34.894741, 32.574467, 30.766449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842743, 32.567551, 31.492634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.936157, 32.189983, 31.399275>,  <34.992207, 31.963442, 31.343260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.936157, 32.189983, 31.399275>,  <34.842743, 32.567551, 31.492634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936157, 32.189983, 31.399275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235358, -0.178022, 0.955466,
		-0.943434, -0.278068, 0.180585,
		0.233537, -0.943920, -0.233398,
		35.006218, 31.906807, 31.329256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644936, 32.164742, 32.089249>,  <34.842743, 32.567551, 31.492634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644936, 32.164742, 32.089249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.929890, 31.966276, 31.890720>,  <35.100861, 31.847197, 31.771603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.929890, 31.966276, 31.890720>,  <34.644936, 32.164742, 32.089249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929890, 31.966276, 31.890720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422813, -0.261026, 0.867810,
		-0.560128, -0.828063, 0.023834,
		0.712381, -0.496162, -0.496324,
		35.143604, 31.817429, 31.741823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705593, 31.498541, 32.357452>,  <34.644936, 32.164742, 32.089249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705593, 31.498541, 32.357452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054924, 31.541260, 32.167339>,  <35.264523, 31.566891, 32.053272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054924, 31.541260, 32.167339>,  <34.705593, 31.498541, 32.357452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054924, 31.541260, 32.167339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484010, -0.300617, 0.821805,
		-0.055110, -0.947746, -0.314229,
		0.873325, 0.106800, -0.475286,
		35.316921, 31.573299, 32.024754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992092, 30.958969, 32.533085>,  <34.705593, 31.498541, 32.357452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992092, 30.958969, 32.533085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287872, 31.199663, 32.412342>,  <35.465340, 31.344080, 32.339897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287872, 31.199663, 32.412342>,  <34.992092, 30.958969, 32.533085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287872, 31.199663, 32.412342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493870, -0.180169, 0.850665,
		0.457492, -0.778108, -0.430407,
		0.739455, 0.601737, -0.301858,
		35.509708, 31.380184, 32.321785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628551, 30.510962, 32.578564>,  <34.992092, 30.958969, 32.533085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628551, 30.510962, 32.578564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768074, 30.884651, 32.548759>,  <35.851788, 31.108866, 32.530876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768074, 30.884651, 32.548759>,  <35.628551, 30.510962, 32.578564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768074, 30.884651, 32.548759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602490, -0.162627, 0.781382,
		0.717870, -0.317449, -0.619588,
		0.348811, 0.934226, -0.074515,
		35.872719, 31.164919, 32.526405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385521, 30.399258, 32.663109>,  <35.628551, 30.510962, 32.578564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385521, 30.399258, 32.663109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319386, 30.789085, 32.723610>,  <36.279705, 31.022982, 32.759911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319386, 30.789085, 32.723610>,  <36.385521, 30.399258, 32.663109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319386, 30.789085, 32.723610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544060, -0.037784, 0.838195,
		0.822595, 0.220872, -0.523978,
		-0.165336, 0.974571, 0.151249,
		36.269783, 31.081457, 32.768986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014336, 30.679914, 32.802124>,  <36.385521, 30.399258, 32.663109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014336, 30.679914, 32.802124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749081, 30.944658, 32.941952>,  <36.589928, 31.103504, 33.025848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749081, 30.944658, 32.941952>,  <37.014336, 30.679914, 32.802124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749081, 30.944658, 32.941952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507879, 0.054812, 0.859683,
		0.549827, 0.747623, -0.372491,
		-0.663135, 0.661858, 0.349565,
		36.550140, 31.143215, 33.046822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474739, 31.267178, 33.056606>,  <37.014336, 30.679914, 32.802124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474739, 31.267178, 33.056606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.121471, 31.249640, 33.243404>,  <36.909512, 31.239117, 33.355484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.121471, 31.249640, 33.243404>,  <37.474739, 31.267178, 33.056606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121471, 31.249640, 33.243404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455346, 0.158722, 0.876052,
		-0.112534, 0.986349, -0.120214,
		-0.883174, -0.043846, 0.466992,
		36.856518, 31.236486, 33.383503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897800, 31.641859, 32.608562>,  <37.474739, 31.267178, 33.056606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897800, 31.641859, 32.608562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.286945, 31.732534, 32.589970>,  <38.520432, 31.786940, 32.578812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.286945, 31.732534, 32.589970>,  <37.897800, 31.641859, 32.608562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286945, 31.732534, 32.589970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134522, 0.390566, -0.910693,
		-0.188287, 0.892228, 0.410459,
		0.972857, 0.226688, -0.046486,
		38.578804, 31.800541, 32.576023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902603, 32.260250, 32.361820>,  <37.897800, 31.641859, 32.608562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902603, 32.260250, 32.361820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248592, 32.092239, 32.251980>,  <38.456184, 31.991434, 32.186073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248592, 32.092239, 32.251980>,  <37.902603, 32.260250, 32.361820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248592, 32.092239, 32.251980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076768, 0.430017, -0.899551,
		0.495917, 0.799165, 0.339708,
		0.864970, -0.420024, -0.274603,
		38.508083, 31.966232, 32.169598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185272, 32.760090, 31.948109>,  <37.902603, 32.260250, 32.361820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185272, 32.760090, 31.948109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.361099, 32.409653, 31.868866>,  <38.466595, 32.199390, 31.821321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.361099, 32.409653, 31.868866>,  <38.185272, 32.760090, 31.948109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361099, 32.409653, 31.868866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253907, 0.090361, -0.962999,
		0.861575, 0.473604, -0.182726,
		0.439568, -0.876090, -0.198105,
		38.492970, 32.146824, 31.809435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645779, 32.931377, 31.398258>,  <38.185272, 32.760090, 31.948109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645779, 32.931377, 31.398258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626736, 32.533112, 31.366297>,  <38.615311, 32.294151, 31.347120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626736, 32.533112, 31.366297>,  <38.645779, 32.931377, 31.398258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626736, 32.533112, 31.366297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077067, 0.083415, -0.993531,
		0.995889, -0.041144, -0.080704,
		-0.047610, -0.995665, -0.079902,
		38.612453, 32.234413, 31.342327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029846, 32.796803, 30.822454>,  <38.645779, 32.931377, 31.398258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029846, 32.796803, 30.822454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796631, 32.476265, 30.875990>,  <38.656700, 32.283943, 30.908112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796631, 32.476265, 30.875990>,  <39.029846, 32.796803, 30.822454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796631, 32.476265, 30.875990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263269, 0.030501, -0.964240,
		0.768605, -0.597427, -0.228752,
		-0.583040, -0.801343, 0.133841,
		38.621719, 32.235863, 30.916142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246845, 32.320477, 30.269154>,  <39.029846, 32.796803, 30.822454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246845, 32.320477, 30.269154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.877552, 32.225620, 30.390087>,  <38.655975, 32.168705, 30.462648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.877552, 32.225620, 30.390087>,  <39.246845, 32.320477, 30.269154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877552, 32.225620, 30.390087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285534, -0.103113, -0.952805,
		0.257123, -0.965988, 0.027485,
		-0.923232, -0.237140, 0.302335,
		38.600582, 32.154480, 30.480787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976559, 31.797359, 29.721630>,  <39.246845, 32.320477, 30.269154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976559, 31.797359, 29.721630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650963, 31.929392, 29.912825>,  <38.455605, 32.008610, 30.027542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650963, 31.929392, 29.912825>,  <38.976559, 31.797359, 29.721630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650963, 31.929392, 29.912825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517357, -0.037785, -0.854935,
		-0.264137, -0.943196, 0.201527,
		-0.813986, 0.330082, 0.477989,
		38.406769, 32.028416, 30.056221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446289, 31.324764, 29.594790>,  <38.976559, 31.797359, 29.721630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446289, 31.324764, 29.594790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.272682, 31.671591, 29.692623>,  <38.168518, 31.879686, 29.751324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.272682, 31.671591, 29.692623>,  <38.446289, 31.324764, 29.594790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272682, 31.671591, 29.692623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563341, -0.049341, -0.824750,
		-0.703047, -0.495741, 0.509870,
		-0.434020, 0.867068, 0.244582,
		38.142475, 31.931711, 29.765997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853054, 31.205887, 29.414896>,  <38.446289, 31.324764, 29.594790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853054, 31.205887, 29.414896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.850323, 31.605362, 29.435209>,  <37.848686, 31.845047, 29.447397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.850323, 31.605362, 29.435209>,  <37.853054, 31.205887, 29.414896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850323, 31.605362, 29.435209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606913, 0.036223, -0.793942,
		-0.794739, -0.036238, 0.605869,
		-0.006824, 0.998687, 0.050781,
		37.848274, 31.904968, 29.450443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103001, 31.372561, 29.243647>,  <37.853054, 31.205887, 29.414896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103001, 31.372561, 29.243647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341957, 31.680981, 29.155468>,  <37.485332, 31.866034, 29.102560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341957, 31.680981, 29.155468>,  <37.103001, 31.372561, 29.243647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341957, 31.680981, 29.155468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602611, 0.250233, -0.757789,
		-0.529131, 0.585543, 0.614133,
		0.597394, 0.771053, -0.220449,
		37.521175, 31.912296, 29.089333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707630, 31.852011, 29.002682>,  <37.103001, 31.372561, 29.243647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707630, 31.852011, 29.002682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.039932, 32.028629, 28.867102>,  <37.239311, 32.134602, 28.785753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.039932, 32.028629, 28.867102>,  <36.707630, 31.852011, 29.002682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039932, 32.028629, 28.867102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471983, 0.235941, -0.849449,
		-0.295100, 0.865660, 0.404411,
		0.830751, 0.441548, -0.338951,
		37.289158, 32.161095, 28.765417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489902, 32.522823, 28.730825>,  <36.707630, 31.852011, 29.002682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489902, 32.522823, 28.730825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848209, 32.442444, 28.572224>,  <37.063194, 32.394215, 28.477062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848209, 32.442444, 28.572224>,  <36.489902, 32.522823, 28.730825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848209, 32.442444, 28.572224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369011, 0.161178, -0.915343,
		0.247847, 0.966250, 0.070225,
		0.895769, -0.200952, -0.396504,
		37.116940, 32.382160, 28.453272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633881, 32.999027, 28.214441>,  <36.489902, 32.522823, 28.730825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633881, 32.999027, 28.214441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.842171, 32.667049, 28.134399>,  <36.967144, 32.467861, 28.086374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.842171, 32.667049, 28.134399>,  <36.633881, 32.999027, 28.214441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842171, 32.667049, 28.134399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204659, 0.106203, -0.973055,
		0.828833, 0.547643, -0.114553,
		0.520721, -0.829944, -0.200104,
		36.998386, 32.418068, 28.074368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152489, 33.103832, 27.767170>,  <36.633881, 32.999027, 28.214441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152489, 33.103832, 27.767170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.061813, 32.718815, 27.707678>,  <37.007408, 32.487804, 27.671982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.061813, 32.718815, 27.707678>,  <37.152489, 33.103832, 27.767170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061813, 32.718815, 27.707678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258297, 0.206653, -0.943704,
		0.939093, -0.175509, -0.295468,
		-0.226688, -0.962544, -0.148732,
		36.993809, 32.430050, 27.663057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377041, 32.988464, 27.111738>,  <37.152489, 33.103832, 27.767170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377041, 32.988464, 27.111738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147076, 32.665215, 27.162975>,  <37.009098, 32.471264, 27.193718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147076, 32.665215, 27.162975>,  <37.377041, 32.988464, 27.111738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147076, 32.665215, 27.162975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141493, -0.056003, -0.988354,
		0.805891, -0.586337, -0.082148,
		-0.574908, -0.808129, 0.128095,
		36.974602, 32.422775, 27.201405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588356, 32.498188, 26.666159>,  <37.377041, 32.988464, 27.111738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588356, 32.498188, 26.666159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216892, 32.367355, 26.736153>,  <36.994015, 32.288857, 26.778149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216892, 32.367355, 26.736153>,  <37.588356, 32.498188, 26.666159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216892, 32.367355, 26.736153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191267, 0.018028, -0.981373,
		0.317833, -0.944825, -0.079301,
		-0.928654, -0.327080, 0.174984,
		36.938297, 32.269230, 26.788649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524750, 32.040333, 26.200243>,  <37.588356, 32.498188, 26.666159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524750, 32.040333, 26.200243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142902, 32.118176, 26.290430>,  <36.913795, 32.164879, 26.344543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142902, 32.118176, 26.290430>,  <37.524750, 32.040333, 26.200243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142902, 32.118176, 26.290430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219660, 0.051225, -0.974231,
		-0.201141, -0.979543, -0.006153,
		-0.954616, 0.194606, 0.225470,
		36.856518, 32.176556, 26.358070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287323, 31.667786, 25.812540>,  <37.524750, 32.040333, 26.200243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287323, 31.667786, 25.812540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994785, 31.929462, 25.889648>,  <36.819263, 32.086468, 25.935913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994785, 31.929462, 25.889648>,  <37.287323, 31.667786, 25.812540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994785, 31.929462, 25.889648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191055, 0.074813, -0.978724,
		-0.654697, -0.752618, 0.070272,
		-0.731348, 0.654193, 0.192771,
		36.775379, 32.125721, 25.947479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.450474, 31.390753, 25.407789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.428371, 31.776381, 25.511723>,  <36.415108, 32.007759, 25.574081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.428371, 31.776381, 25.511723>,  <36.450474, 31.390753, 25.407789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428371, 31.776381, 25.511723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189519, 0.245371, -0.950724,
		-0.980321, -0.101778, 0.169151,
		-0.055258, 0.964072, 0.259832,
		36.411793, 32.065601, 25.589672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881859, 31.588459, 25.129688>,  <36.450474, 31.390753, 25.407789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881859, 31.588459, 25.129688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059444, 31.940338, 25.197840>,  <36.165997, 32.151466, 25.238731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059444, 31.940338, 25.197840>,  <35.881859, 31.588459, 25.129688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059444, 31.940338, 25.197840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355007, 0.347271, -0.867970,
		-0.822720, 0.324861, 0.466474,
		0.443963, 0.879698, 0.170379,
		36.192635, 32.204247, 25.248953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337730, 32.146210, 24.974974>,  <35.881859, 31.588459, 25.129688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337730, 32.146210, 24.974974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699509, 32.313278, 24.940289>,  <35.916576, 32.413521, 24.919477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699509, 32.313278, 24.940289>,  <35.337730, 32.146210, 24.974974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699509, 32.313278, 24.940289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268454, 0.399325, -0.876625,
		-0.331519, 0.816141, 0.473296,
		0.904449, 0.417676, -0.086713,
		35.970844, 32.438580, 24.914274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100243, 32.775932, 24.691101>,  <35.337730, 32.146210, 24.974974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100243, 32.775932, 24.691101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497761, 32.740093, 24.664742>,  <35.736271, 32.718590, 24.648926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497761, 32.740093, 24.664742>,  <35.100243, 32.775932, 24.691101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497761, 32.740093, 24.664742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026097, 0.388118, -0.921240,
		0.108118, 0.917244, 0.383372,
		0.993795, -0.089598, -0.065900,
		35.795898, 32.713215, 24.644972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211956, 33.461208, 24.562620>,  <35.100243, 32.775932, 24.691101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211956, 33.461208, 24.562620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513771, 33.237133, 24.425880>,  <35.694859, 33.102688, 24.343836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513771, 33.237133, 24.425880>,  <35.211956, 33.461208, 24.562620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513771, 33.237133, 24.425880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304136, 0.163096, -0.938563,
		0.581526, 0.812151, -0.047312,
		0.754538, -0.560188, -0.341849,
		35.740131, 33.069077, 24.323326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515881, 33.857796, 24.139723>,  <35.211956, 33.461208, 24.562620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515881, 33.857796, 24.139723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.625183, 33.497200, 24.005474>,  <35.690765, 33.280842, 23.924925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.625183, 33.497200, 24.005474>,  <35.515881, 33.857796, 24.139723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625183, 33.497200, 24.005474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388538, 0.215739, -0.895821,
		0.879982, 0.375193, -0.291312,
		0.273258, -0.901492, -0.335623,
		35.707161, 33.226753, 23.904787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866257, 34.006229, 23.539770>,  <35.515881, 33.857796, 24.139723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866257, 34.006229, 23.539770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733128, 33.631584, 23.495979>,  <35.653252, 33.406796, 23.469704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733128, 33.631584, 23.495979>,  <35.866257, 34.006229, 23.539770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733128, 33.631584, 23.495979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346360, 0.229402, -0.909621,
		0.877076, -0.264824, -0.400756,
		-0.332824, -0.936612, -0.109479,
		35.633282, 33.350601, 23.463135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132137, 33.860447, 22.897629>,  <35.866257, 34.006229, 23.539770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132137, 33.860447, 22.897629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.862000, 33.572857, 22.963335>,  <35.699917, 33.400303, 23.002760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.862000, 33.572857, 22.963335>,  <36.132137, 33.860447, 22.897629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862000, 33.572857, 22.963335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184199, -0.051237, -0.981553,
		0.714126, -0.693147, -0.097832,
		-0.675348, -0.718973, 0.164267,
		35.659393, 33.357166, 23.012615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262768, 33.284676, 22.366003>,  <36.132137, 33.860447, 22.897629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262768, 33.284676, 22.366003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.879723, 33.279861, 22.481131>,  <35.649895, 33.276974, 22.550207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.879723, 33.279861, 22.481131>,  <36.262768, 33.284676, 22.366003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879723, 33.279861, 22.481131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283142, -0.144701, -0.948099,
		0.053065, -0.989402, 0.135158,
		-0.957609, -0.012042, 0.287820,
		35.592442, 33.276249, 22.567476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867451, 32.640877, 21.989948>,  <36.262768, 33.284676, 22.366003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867451, 32.640877, 21.989948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570004, 32.882061, 22.105507>,  <35.391533, 33.026772, 22.174843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570004, 32.882061, 22.105507>,  <35.867451, 32.640877, 21.989948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570004, 32.882061, 22.105507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449309, -0.130683, -0.883766,
		-0.495125, -0.786992, 0.368096,
		-0.743621, 0.602964, 0.288898,
		35.346916, 33.062950, 22.192177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306557, 32.397980, 21.659441>,  <35.867451, 32.640877, 21.989948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306557, 32.397980, 21.659441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168400, 32.756248, 21.771496>,  <35.085506, 32.971210, 21.838728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168400, 32.756248, 21.771496>,  <35.306557, 32.397980, 21.659441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168400, 32.756248, 21.771496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588496, 0.025806, -0.808088,
		-0.731012, -0.443963, 0.518187,
		-0.345389, 0.895674, 0.280135,
		35.064781, 33.024952, 21.855536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554382, 32.419971, 21.583906>,  <35.306557, 32.397980, 21.659441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554382, 32.419971, 21.583906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.691250, 32.793270, 21.540150>,  <34.773369, 33.017250, 21.513897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.691250, 32.793270, 21.540150>,  <34.554382, 32.419971, 21.583906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691250, 32.793270, 21.540150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461910, 0.065681, -0.884492,
		-0.818267, 0.353173, 0.453551,
		0.342168, 0.933250, -0.109389,
		34.793900, 33.073246, 21.507334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923241, 32.667648, 21.416517>,  <34.554382, 32.419971, 21.583906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923241, 32.667648, 21.416517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.184231, 32.951733, 21.310780>,  <34.340824, 33.122185, 21.247337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.184231, 32.951733, 21.310780>,  <33.923241, 32.667648, 21.416517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184231, 32.951733, 21.310780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517029, 0.162170, -0.840465,
		-0.554038, 0.685056, 0.473011,
		0.652474, 0.710211, -0.264346,
		34.379974, 33.164795, 21.231476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580807, 33.223251, 21.200321>,  <33.923241, 32.667648, 21.416517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580807, 33.223251, 21.200321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.941765, 33.314014, 21.053795>,  <34.158340, 33.368473, 20.965879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.941765, 33.314014, 21.053795>,  <33.580807, 33.223251, 21.200321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941765, 33.314014, 21.053795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429865, 0.415164, -0.801782,
		-0.029849, 0.880995, 0.472184,
		0.902400, 0.226908, -0.366316,
		34.212486, 33.382088, 20.943899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563324, 33.936573, 21.028679>,  <33.580807, 33.223251, 21.200321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563324, 33.936573, 21.028679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833351, 33.750153, 20.799917>,  <33.995369, 33.638298, 20.662661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833351, 33.750153, 20.799917>,  <33.563324, 33.936573, 21.028679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833351, 33.750153, 20.799917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367694, 0.459513, -0.808485,
		0.639596, 0.756070, 0.138838,
		0.675069, -0.466054, -0.571905,
		34.035873, 33.610336, 20.628345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838375, 34.320011, 20.551376>,  <33.563324, 33.936573, 21.028679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838375, 34.320011, 20.551376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.955589, 33.982082, 20.372309>,  <34.025917, 33.779324, 20.264868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.955589, 33.982082, 20.372309>,  <33.838375, 34.320011, 20.551376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955589, 33.982082, 20.372309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269523, 0.376244, -0.886452,
		0.917326, 0.380419, -0.117446,
		0.293035, -0.844820, -0.447671,
		34.043499, 33.728638, 20.238007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144825, 34.616783, 20.016687>,  <33.838375, 34.320011, 20.551376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144825, 34.616783, 20.016687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065712, 34.238289, 19.914305>,  <34.018246, 34.011192, 19.852875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065712, 34.238289, 19.914305>,  <34.144825, 34.616783, 20.016687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065712, 34.238289, 19.914305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279267, 0.304684, -0.910592,
		0.939623, -0.108619, -0.324515,
		-0.197782, -0.946240, -0.255955,
		34.006378, 33.954418, 19.837519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539860, 34.371773, 19.368605>,  <34.144825, 34.616783, 20.016687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539860, 34.371773, 19.368605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.200993, 34.163612, 19.411486>,  <33.997673, 34.038715, 19.437214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.200993, 34.163612, 19.411486>,  <34.539860, 34.371773, 19.368605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200993, 34.163612, 19.411486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253156, 0.217952, -0.942554,
		0.467138, -0.825641, -0.316384,
		-0.847168, -0.520398, 0.107202,
		33.946842, 34.007492, 19.443647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495964, 34.205578, 18.693195>,  <34.539860, 34.371773, 19.368605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495964, 34.205578, 18.693195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.150490, 34.124855, 18.877943>,  <33.943207, 34.076420, 18.988792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.150490, 34.124855, 18.877943>,  <34.495964, 34.205578, 18.693195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150490, 34.124855, 18.877943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485052, 0.083681, -0.870472,
		0.137029, -0.975841, -0.170167,
		-0.863682, -0.201820, 0.461867,
		33.891384, 34.064312, 19.016504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170990, 33.798046, 18.206276>,  <34.495964, 34.205578, 18.693195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170990, 33.798046, 18.206276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.877506, 33.933002, 18.442188>,  <33.701416, 34.013977, 18.583736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.877506, 33.933002, 18.442188>,  <34.170990, 33.798046, 18.206276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877506, 33.933002, 18.442188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611680, 0.049946, -0.789527,
		-0.295833, -0.940040, 0.169727,
		-0.733710, 0.337387, 0.589780,
		33.657394, 34.034218, 18.619122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546902, 33.691135, 17.776125>,  <34.170990, 33.798046, 18.206276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546902, 33.691135, 17.776125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461857, 33.958302, 18.061413>,  <33.410828, 34.118603, 18.232586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461857, 33.958302, 18.061413>,  <33.546902, 33.691135, 17.776125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461857, 33.958302, 18.061413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606807, 0.481855, -0.632141,
		-0.765886, -0.567189, 0.302847,
		-0.212615, 0.667917, 0.713220,
		33.398071, 34.158676, 18.275379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878605, 33.757736, 17.855494>,  <33.546902, 33.691135, 17.776125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878605, 33.757736, 17.855494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.953396, 34.108459, 18.032694>,  <32.998272, 34.318893, 18.139015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.953396, 34.108459, 18.032694>,  <32.878605, 33.757736, 17.855494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953396, 34.108459, 18.032694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633955, 0.452184, -0.627400,
		-0.750426, -0.163532, 0.640404,
		0.186980, 0.876805, 0.443002,
		33.009491, 34.371502, 18.165594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267315, 34.159016, 17.918394>,  <32.878605, 33.757736, 17.855494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267315, 34.159016, 17.918394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.563274, 34.427982, 17.910383>,  <32.740852, 34.589363, 17.905577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.563274, 34.427982, 17.910383>,  <32.267315, 34.159016, 17.918394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563274, 34.427982, 17.910383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465059, 0.489769, -0.737460,
		-0.486070, 0.554963, 0.675094,
		0.739903, 0.672415, -0.020029,
		32.785244, 34.629707, 17.904375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681780, 33.868328, 18.391466>,  <32.267315, 34.159016, 17.918394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681780, 33.868328, 18.391466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.402523, 34.100376, 18.223627>,  <31.234968, 34.239605, 18.122923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.402523, 34.100376, 18.223627>,  <31.681780, 33.868328, 18.391466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402523, 34.100376, 18.223627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345834, 0.239914, 0.907106,
		0.626893, 0.778401, 0.033129,
		-0.698143, 0.580115, -0.419598,
		31.193081, 34.274410, 18.097748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685289, 34.613644, 18.526800>,  <31.681780, 33.868328, 18.391466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685289, 34.613644, 18.526800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.318811, 34.457314, 18.491364>,  <31.098925, 34.363518, 18.470100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.318811, 34.457314, 18.491364>,  <31.685289, 34.613644, 18.526800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318811, 34.457314, 18.491364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198376, 0.250232, 0.947645,
		-0.348192, 0.885800, -0.306790,
		-0.916193, -0.390822, -0.088593,
		31.043953, 34.340069, 18.464787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164606, 35.048779, 18.760902>,  <31.685289, 34.613644, 18.526800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164606, 35.048779, 18.760902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.992323, 34.694771, 18.831589>,  <30.888952, 34.482365, 18.874001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.992323, 34.694771, 18.831589>,  <31.164606, 35.048779, 18.760902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992323, 34.694771, 18.831589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101356, 0.242003, 0.964967,
		-0.896782, 0.397707, -0.193934,
		-0.430707, -0.885022, 0.176714,
		30.863111, 34.429264, 18.884604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676092, 35.268169, 19.206221>,  <31.164606, 35.048779, 18.760902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676092, 35.268169, 19.206221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.729141, 34.874031, 19.249109>,  <30.760971, 34.637547, 19.274843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.729141, 34.874031, 19.249109>,  <30.676092, 35.268169, 19.206221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729141, 34.874031, 19.249109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130221, 0.124562, 0.983629,
		-0.982575, -0.116491, 0.144833,
		0.132625, -0.985350, 0.107222,
		30.768929, 34.578426, 19.281275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306532, 35.200951, 19.801525>,  <30.676092, 35.268169, 19.206221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306532, 35.200951, 19.801525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.508373, 34.856766, 19.773272>,  <30.629478, 34.650257, 19.756319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.508373, 34.856766, 19.773272>,  <30.306532, 35.200951, 19.801525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508373, 34.856766, 19.773272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010727, -0.075558, 0.997084,
		-0.863286, -0.503887, -0.028896,
		0.504601, -0.860458, -0.070633,
		30.659754, 34.598629, 19.752081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897102, 34.728271, 20.278378>,  <30.306532, 35.200951, 19.801525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897102, 34.728271, 20.278378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.282951, 34.632648, 20.233923>,  <30.514462, 34.575275, 20.207251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.282951, 34.632648, 20.233923>,  <29.897102, 34.728271, 20.278378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282951, 34.632648, 20.233923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066731, -0.186427, 0.980200,
		-0.255050, -0.952939, -0.163879,
		0.964623, -0.239064, -0.111139,
		30.572338, 34.560928, 20.200581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063200, 34.263821, 20.873922>,  <29.897102, 34.728271, 20.278378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063200, 34.263821, 20.873922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.437748, 34.315418, 20.743340>,  <30.662476, 34.346375, 20.664989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.437748, 34.315418, 20.743340>,  <30.063200, 34.263821, 20.873922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437748, 34.315418, 20.743340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349174, -0.247059, 0.903902,
		0.035940, -0.960377, -0.276379,
		0.936369, 0.128991, -0.326459,
		30.718658, 34.354115, 20.645401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501143, 33.618275, 21.081913>,  <30.063200, 34.263821, 20.873922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501143, 33.618275, 21.081913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744335, 33.930954, 21.026329>,  <30.890251, 34.118561, 20.992979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744335, 33.930954, 21.026329>,  <30.501143, 33.618275, 21.081913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744335, 33.930954, 21.026329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550409, -0.288840, 0.783340,
		0.572197, -0.552741, -0.605861,
		0.607981, 0.781696, -0.138960,
		30.926729, 34.165462, 20.984640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140793, 33.343281, 21.174969>,  <30.501143, 33.618275, 21.081913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140793, 33.343281, 21.174969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.218237, 33.734093, 21.210592>,  <31.264704, 33.968578, 21.231966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.218237, 33.734093, 21.210592>,  <31.140793, 33.343281, 21.174969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218237, 33.734093, 21.210592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641901, -0.194804, 0.741630,
		0.741942, -0.086419, -0.664871,
		0.193610, 0.977028, 0.089061,
		31.276320, 34.027203, 21.237310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802376, 33.420822, 21.098692>,  <31.140793, 33.343281, 21.174969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802376, 33.420822, 21.098692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.695858, 33.749027, 21.301018>,  <31.631947, 33.945950, 21.422413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.695858, 33.749027, 21.301018>,  <31.802376, 33.420822, 21.098692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695858, 33.749027, 21.301018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681172, -0.211087, 0.701032,
		0.681976, 0.531229, -0.502698,
		-0.266295, 0.820511, 0.505815,
		31.615969, 33.995182, 21.452763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373180, 33.741177, 21.240631>,  <31.802376, 33.420822, 21.098692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373180, 33.741177, 21.240631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104671, 33.878193, 21.503559>,  <31.943567, 33.960403, 21.661316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104671, 33.878193, 21.503559>,  <32.373180, 33.741177, 21.240631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104671, 33.878193, 21.503559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573471, -0.321842, 0.753358,
		0.469606, 0.882658, 0.019606,
		-0.671268, 0.342538, 0.657318,
		31.903292, 33.980953, 21.700754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801491, 34.058262, 21.731955>,  <32.373180, 33.741177, 21.240631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801491, 34.058262, 21.731955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.450691, 33.986992, 21.910452>,  <32.240211, 33.944229, 22.017550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.450691, 33.986992, 21.910452>,  <32.801491, 34.058262, 21.731955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450691, 33.986992, 21.910452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476551, -0.203746, 0.855212,
		-0.061456, 0.962674, 0.263594,
		-0.876996, -0.178174, 0.446242,
		32.187592, 33.933540, 22.044325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006927, 34.303242, 22.377998>,  <32.801491, 34.058262, 21.731955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006927, 34.303242, 22.377998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699360, 34.048931, 22.404987>,  <32.514820, 33.896343, 22.421181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699360, 34.048931, 22.404987>,  <33.006927, 34.303242, 22.377998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699360, 34.048931, 22.404987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460154, -0.477053, 0.748785,
		-0.443870, 0.606803, 0.659370,
		-0.768920, -0.635775, 0.067473,
		32.468685, 33.858200, 22.425230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883381, 34.225761, 23.049870>,  <33.006927, 34.303242, 22.377998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883381, 34.225761, 23.049870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.714638, 33.911640, 22.868614>,  <32.613392, 33.723167, 22.759861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.714638, 33.911640, 22.868614>,  <32.883381, 34.225761, 23.049870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714638, 33.911640, 22.868614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432439, -0.613553, 0.660719,
		-0.796889, 0.082775, 0.598428,
		-0.421858, -0.785303, -0.453139,
		32.588081, 33.676048, 22.732672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839157, 33.799595, 23.627176>,  <32.883381, 34.225761, 23.049870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839157, 33.799595, 23.627176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742378, 33.556313, 23.324774>,  <32.684311, 33.410343, 23.143333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742378, 33.556313, 23.324774>,  <32.839157, 33.799595, 23.627176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742378, 33.556313, 23.324774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264580, -0.790982, 0.551674,
		-0.933519, -0.066547, 0.352297,
		-0.241948, -0.608209, -0.756004,
		32.669792, 33.373848, 23.097973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640289, 33.131538, 24.031538>,  <32.839157, 33.799595, 23.627176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640289, 33.131538, 24.031538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.704918, 33.010742, 23.655731>,  <32.743694, 32.938263, 23.430246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.704918, 33.010742, 23.655731>,  <32.640289, 33.131538, 24.031538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704918, 33.010742, 23.655731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314780, -0.886526, 0.339094,
		-0.935311, -0.350531, -0.048178,
		0.161574, -0.301993, -0.939518,
		32.753391, 32.920143, 23.373877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215366, 32.536793, 23.879660>,  <32.640289, 33.131538, 24.031538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215366, 32.536793, 23.879660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541103, 32.541832, 23.647562>,  <32.736546, 32.544857, 23.508305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541103, 32.541832, 23.647562>,  <32.215366, 32.536793, 23.879660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541103, 32.541832, 23.647562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324042, -0.839297, 0.436551,
		-0.481495, -0.543527, -0.687562,
		0.814346, 0.012602, -0.580243,
		32.785408, 32.545612, 23.473490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260422, 31.905563, 23.839668>,  <32.215366, 32.536793, 23.879660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260422, 31.905563, 23.839668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603722, 32.008213, 23.661882>,  <32.809704, 32.069801, 23.555212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603722, 32.008213, 23.661882>,  <32.260422, 31.905563, 23.839668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603722, 32.008213, 23.661882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482410, -0.698953, 0.527963,
		-0.175170, -0.667539, -0.723676,
		0.858251, 0.256625, -0.444463,
		32.861198, 32.085201, 23.528543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625397, 31.318033, 23.457344>,  <32.260422, 31.905563, 23.839668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625397, 31.318033, 23.457344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.880791, 31.585514, 23.609749>,  <33.034027, 31.746002, 23.701193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.880791, 31.585514, 23.609749>,  <32.625397, 31.318033, 23.457344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880791, 31.585514, 23.609749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542864, -0.742225, 0.392939,
		0.545556, -0.044049, -0.836916,
		0.638488, 0.668702, 0.381013,
		33.072338, 31.786125, 23.724052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196945, 31.169725, 23.260210>,  <32.625397, 31.318033, 23.457344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196945, 31.169725, 23.260210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.292374, 31.377737, 23.588272>,  <33.349632, 31.502544, 23.785109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.292374, 31.377737, 23.588272>,  <33.196945, 31.169725, 23.260210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292374, 31.377737, 23.588272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650860, -0.712414, 0.262389,
		0.720739, 0.471207, -0.508429,
		0.238573, 0.520030, 0.820154,
		33.363945, 31.533747, 23.834318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876724, 31.014093, 23.392822>,  <33.196945, 31.169725, 23.260210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876724, 31.014093, 23.392822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796368, 31.183445, 23.746181>,  <33.748154, 31.285055, 23.958197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796368, 31.183445, 23.746181>,  <33.876724, 31.014093, 23.392822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796368, 31.183445, 23.746181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523219, -0.716010, 0.462138,
		0.828182, 0.555050, -0.077681,
		-0.200890, 0.423379, 0.883399,
		33.736099, 31.310459, 24.011202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.223164, 31.989857, 27.828945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.892181, 32.119061, 28.012680>,  <37.693592, 32.196583, 28.122921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.892181, 32.119061, 28.012680>,  <38.223164, 31.989857, 27.828945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892181, 32.119061, 28.012680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459069, -0.081970, 0.884611,
		0.323389, 0.942839, -0.080457,
		-0.827451, 0.323009, 0.459336,
		37.643948, 32.215961, 28.150480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396801, 32.569431, 28.269640>,  <38.223164, 31.989857, 27.828945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396801, 32.569431, 28.269640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.051483, 32.443851, 28.427706>,  <37.844292, 32.368504, 28.522545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.051483, 32.443851, 28.427706>,  <38.396801, 32.569431, 28.269640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051483, 32.443851, 28.427706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425076, -0.030202, 0.904654,
		-0.272083, 0.948958, 0.159527,
		-0.863297, -0.313952, 0.395162,
		37.792496, 32.349667, 28.546255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220020, 33.038780, 28.894283>,  <38.396801, 32.569431, 28.269640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220020, 33.038780, 28.894283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.001156, 32.709888, 28.956972>,  <37.869839, 32.512554, 28.994585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.001156, 32.709888, 28.956972>,  <38.220020, 33.038780, 28.894283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001156, 32.709888, 28.956972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374287, -0.072868, 0.924445,
		-0.748684, 0.564476, 0.347619,
		-0.547158, -0.822227, 0.156722,
		37.837009, 32.463219, 29.003988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748825, 33.187214, 29.468725>,  <38.220020, 33.038780, 28.894283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748825, 33.187214, 29.468725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.811974, 32.792248, 29.465055>,  <37.849861, 32.555267, 29.462852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.811974, 32.792248, 29.465055>,  <37.748825, 33.187214, 29.468725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811974, 32.792248, 29.465055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239606, 0.029289, 0.970428,
		-0.957949, -0.155398, 0.241215,
		0.157868, -0.987418, -0.009177,
		37.859333, 32.496021, 29.462303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582634, 33.017059, 30.164642>,  <37.748825, 33.187214, 29.468725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582634, 33.017059, 30.164642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.764275, 32.683552, 30.039028>,  <37.873260, 32.483448, 29.963659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.764275, 32.683552, 30.039028>,  <37.582634, 33.017059, 30.164642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764275, 32.683552, 30.039028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299267, -0.189250, 0.935213,
		-0.839185, -0.518660, 0.163582,
		0.454100, -0.833772, -0.314034,
		37.900505, 32.433422, 29.944818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385689, 32.587231, 30.712431>,  <37.582634, 33.017059, 30.164642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385689, 32.587231, 30.712431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.674706, 32.393108, 30.515493>,  <37.848118, 32.276634, 30.397331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.674706, 32.393108, 30.515493>,  <37.385689, 32.587231, 30.712431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674706, 32.393108, 30.515493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310014, -0.409094, 0.858215,
		-0.617916, -0.772732, -0.145136,
		0.722545, -0.485311, -0.492344,
		37.891468, 32.247517, 30.367790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401749, 31.826181, 30.928843>,  <37.385689, 32.587231, 30.712431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401749, 31.826181, 30.928843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763206, 31.910515, 30.779726>,  <37.980080, 31.961115, 30.690256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763206, 31.910515, 30.779726>,  <37.401749, 31.826181, 30.928843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763206, 31.910515, 30.779726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428137, -0.421966, 0.799151,
		0.011183, -0.881755, -0.471574,
		0.903644, 0.210835, -0.372793,
		38.034302, 31.973766, 30.667889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745544, 31.246704, 31.098343>,  <37.401749, 31.826181, 30.928843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745544, 31.246704, 31.098343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.030689, 31.520771, 31.038519>,  <38.201778, 31.685211, 31.002625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.030689, 31.520771, 31.038519>,  <37.745544, 31.246704, 31.098343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030689, 31.520771, 31.038519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481283, -0.322852, 0.814944,
		0.510089, -0.652925, -0.559909,
		0.712865, 0.685168, -0.149559,
		38.244549, 31.726322, 30.993650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449562, 30.953705, 31.238232>,  <37.745544, 31.246704, 31.098343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449562, 30.953705, 31.238232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.492378, 31.349405, 31.278080>,  <38.518066, 31.586826, 31.301989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.492378, 31.349405, 31.278080>,  <38.449562, 30.953705, 31.238232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492378, 31.349405, 31.278080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476999, -0.139006, 0.867842,
		0.872361, -0.045377, -0.486751,
		0.107041, 0.989251, 0.099619,
		38.524490, 31.646181, 31.307966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074570, 31.021599, 31.565704>,  <38.449562, 30.953705, 31.238232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074570, 31.021599, 31.565704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.897625, 31.371338, 31.645536>,  <38.791458, 31.581181, 31.693436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.897625, 31.371338, 31.645536>,  <39.074570, 31.021599, 31.565704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897625, 31.371338, 31.645536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602099, 0.124604, 0.788639,
		0.664675, 0.469031, -0.581563,
		-0.442362, 0.874347, 0.199582,
		38.764915, 31.633642, 31.705410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641117, 31.432096, 31.800446>,  <39.074570, 31.021599, 31.565704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641117, 31.432096, 31.800446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303955, 31.608099, 31.924322>,  <39.101658, 31.713699, 31.998648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303955, 31.608099, 31.924322>,  <39.641117, 31.432096, 31.800446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303955, 31.608099, 31.924322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311528, -0.070198, 0.947640,
		0.438706, 0.895247, -0.077904,
		-0.842904, 0.440005, 0.309691,
		39.051083, 31.740101, 32.017231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844067, 31.842083, 32.472965>,  <39.641117, 31.432096, 31.800446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844067, 31.842083, 32.472965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.444584, 31.828102, 32.487774>,  <39.204895, 31.819714, 32.496658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.444584, 31.828102, 32.487774>,  <39.844067, 31.842083, 32.472965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444584, 31.828102, 32.487774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046724, -0.340334, 0.939143,
		-0.020224, 0.939655, 0.341526,
		-0.998703, -0.034951, 0.037022,
		39.144974, 31.817617, 32.498882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532078, 32.289547, 32.997440>,  <39.844067, 31.842083, 32.472965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532078, 32.289547, 32.997440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342831, 31.944750, 32.924644>,  <39.229282, 31.737871, 32.880966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342831, 31.944750, 32.924644>,  <39.532078, 32.289547, 32.997440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342831, 31.944750, 32.924644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370262, -0.381995, 0.846750,
		-0.799413, 0.333233, 0.499895,
		-0.473122, -0.861995, -0.181988,
		39.200893, 31.686152, 32.870049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041061, 32.867653, 32.905567>,  <39.532078, 32.289547, 32.997440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041061, 32.867653, 32.905567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.168552, 32.683632, 33.237053>,  <39.245049, 32.573219, 33.435944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.168552, 32.683632, 33.237053>,  <39.041061, 32.867653, 32.905567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168552, 32.683632, 33.237053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928083, -0.026126, -0.371455,
		0.192540, 0.887507, 0.418640,
		0.318732, -0.460053, 0.828710,
		39.264172, 32.545616, 33.485664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282322, 33.243603, 33.554893>,  <39.041061, 32.867653, 32.905567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282322, 33.243603, 33.554893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.425621, 33.591335, 33.691086>,  <39.511600, 33.799973, 33.772800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.425621, 33.591335, 33.691086>,  <39.282322, 33.243603, 33.554893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425621, 33.591335, 33.691086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396503, 0.471833, -0.787502,
		-0.845248, 0.147118, 0.513723,
		0.358247, 0.869327, 0.340483,
		39.533096, 33.852135, 33.793232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710491, 33.747662, 33.501595>,  <39.282322, 33.243603, 33.554893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710491, 33.747662, 33.501595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.055111, 33.950642, 33.507721>,  <39.261883, 34.072430, 33.511398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.055111, 33.950642, 33.507721>,  <38.710491, 33.747662, 33.501595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055111, 33.950642, 33.507721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350883, 0.616992, -0.704416,
		-0.366907, 0.601511, 0.709622,
		0.861545, 0.507450, 0.015318,
		39.313576, 34.102875, 33.512318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488533, 34.415119, 33.547119>,  <38.710491, 33.747662, 33.501595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488533, 34.415119, 33.547119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850914, 34.448624, 33.381115>,  <39.068344, 34.468727, 33.281513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850914, 34.448624, 33.381115>,  <38.488533, 34.415119, 33.547119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850914, 34.448624, 33.381115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335155, 0.740819, -0.582115,
		0.258684, 0.666461, 0.699222,
		0.905954, 0.083764, -0.415006,
		39.122700, 34.473751, 33.256615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620289, 35.126144, 33.511242>,  <38.488533, 34.415119, 33.547119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620289, 35.126144, 33.511242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850056, 34.966797, 33.225208>,  <38.987915, 34.871189, 33.053589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850056, 34.966797, 33.225208>,  <38.620289, 35.126144, 33.511242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850056, 34.966797, 33.225208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309515, 0.703028, -0.640275,
		0.757791, 0.589114, 0.280530,
		0.574416, -0.398367, -0.715088,
		39.022381, 34.847286, 33.010681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833920, 35.713264, 33.121239>,  <38.620289, 35.126144, 33.511242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833920, 35.713264, 33.121239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.940102, 35.414692, 32.877148>,  <39.003811, 35.235550, 32.730694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.940102, 35.414692, 32.877148>,  <38.833920, 35.713264, 33.121239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940102, 35.414692, 32.877148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119633, 0.602542, -0.789070,
		0.956671, 0.282469, 0.070653,
		0.265459, -0.746428, -0.610227,
		39.019741, 35.190765, 32.694080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042210, 36.068710, 32.563408>,  <38.833920, 35.713264, 33.121239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042210, 36.068710, 32.563408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.013199, 35.708237, 32.392475>,  <38.995792, 35.491955, 32.289917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.013199, 35.708237, 32.392475>,  <39.042210, 36.068710, 32.563408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013199, 35.708237, 32.392475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174796, 0.433312, -0.884130,
		0.981930, 0.010574, -0.188950,
		-0.072526, -0.901182, -0.427330,
		38.991440, 35.437881, 32.264275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471882, 36.060005, 32.007328>,  <39.042210, 36.068710, 32.563408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471882, 36.060005, 32.007328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.226021, 35.760197, 31.909008>,  <39.078503, 35.580311, 31.850018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.226021, 35.760197, 31.909008>,  <39.471882, 36.060005, 32.007328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226021, 35.760197, 31.909008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163874, 0.426146, -0.889688,
		0.771587, -0.506570, -0.384759,
		-0.614653, -0.749524, -0.245796,
		39.041626, 35.535339, 31.835270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612751, 36.039398, 31.318216>,  <39.471882, 36.060005, 32.007328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612751, 36.039398, 31.318216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.279278, 35.819836, 31.342461>,  <39.079193, 35.688099, 31.357008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.279278, 35.819836, 31.342461>,  <39.612751, 36.039398, 31.318216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279278, 35.819836, 31.342461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315113, 0.382697, -0.868474,
		0.453520, -0.743128, -0.492016,
		-0.833681, -0.548911, 0.060609,
		39.029175, 35.655163, 31.360643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514042, 35.654320, 30.720642>,  <39.612751, 36.039398, 31.318216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514042, 35.654320, 30.720642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.137753, 35.650352, 30.856251>,  <38.911980, 35.647972, 30.937616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.137753, 35.650352, 30.856251>,  <39.514042, 35.654320, 30.720642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137753, 35.650352, 30.856251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331630, 0.236463, -0.913295,
		-0.071113, -0.971590, -0.225734,
		-0.940726, -0.009913, 0.339024,
		38.855534, 35.647377, 30.957958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156265, 35.206425, 30.292135>,  <39.514042, 35.654320, 30.720642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156265, 35.206425, 30.292135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.893784, 35.450874, 30.469191>,  <38.736294, 35.597546, 30.575424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.893784, 35.450874, 30.469191>,  <39.156265, 35.206425, 30.292135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893784, 35.450874, 30.469191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417664, 0.194389, -0.887564,
		-0.628455, -0.767294, 0.127686,
		-0.656202, 0.611124, 0.442636,
		38.696922, 35.634212, 30.601982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509079, 35.099236, 29.986134>,  <39.156265, 35.206425, 30.292135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509079, 35.099236, 29.986134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.463829, 35.469055, 30.131685>,  <38.436680, 35.690948, 30.219017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.463829, 35.469055, 30.131685>,  <38.509079, 35.099236, 29.986134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463829, 35.469055, 30.131685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375584, 0.299267, -0.877141,
		-0.919859, -0.235890, 0.313393,
		-0.113120, 0.924552, 0.363880,
		38.429893, 35.746422, 30.240849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804916, 35.283829, 29.891592>,  <38.509079, 35.099236, 29.986134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804916, 35.283829, 29.891592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026875, 35.615017, 29.923971>,  <38.160049, 35.813732, 29.943399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026875, 35.615017, 29.923971>,  <37.804916, 35.283829, 29.891592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026875, 35.615017, 29.923971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251164, 0.259496, -0.932512,
		-0.793100, 0.497114, 0.351950,
		0.554895, 0.827973, 0.080949,
		38.193344, 35.863407, 29.948256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422924, 35.812645, 29.764673>,  <37.804916, 35.283829, 29.891592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422924, 35.812645, 29.764673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.780361, 35.988010, 29.726124>,  <37.994823, 36.093231, 29.702993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.780361, 35.988010, 29.726124>,  <37.422924, 35.812645, 29.764673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780361, 35.988010, 29.726124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199423, 0.195392, -0.960235,
		-0.402149, 0.877278, 0.262030,
		0.893592, 0.438413, -0.096373,
		38.048439, 36.119534, 29.697212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296165, 36.569698, 29.606903>,  <37.422924, 35.812645, 29.764673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296165, 36.569698, 29.606903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.643044, 36.415482, 29.480837>,  <37.851170, 36.322952, 29.405197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.643044, 36.415482, 29.480837>,  <37.296165, 36.569698, 29.606903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643044, 36.415482, 29.480837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317786, 0.058799, -0.946338,
		0.383385, 0.920814, -0.071530,
		0.867195, -0.385543, -0.315165,
		37.903202, 36.299820, 29.386288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885136, 36.991333, 30.109182>,  <37.296165, 36.569698, 29.606903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885136, 36.991333, 30.109182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.486393, 36.985443, 30.140306>,  <36.247147, 36.981907, 30.158981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.486393, 36.985443, 30.140306>,  <36.885136, 36.991333, 30.109182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486393, 36.985443, 30.140306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071139, -0.598243, 0.798151,
		0.034795, 0.801180, 0.597412,
		-0.996859, -0.014728, 0.077811,
		36.187336, 36.981026, 30.163651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844505, 37.351467, 30.684387>,  <36.885136, 36.991333, 30.109182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844505, 37.351467, 30.684387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.519142, 37.127674, 30.620716>,  <36.323925, 36.993397, 30.582514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.519142, 37.127674, 30.620716>,  <36.844505, 37.351467, 30.684387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519142, 37.127674, 30.620716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028939, -0.312231, 0.949565,
		-0.580968, 0.767781, 0.270164,
		-0.813411, -0.559486, -0.159178,
		36.275120, 36.959827, 30.572964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473660, 37.393250, 31.233202>,  <36.844505, 37.351467, 30.684387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473660, 37.393250, 31.233202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.300339, 37.071945, 31.069731>,  <36.196346, 36.879162, 30.971647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.300339, 37.071945, 31.069731>,  <36.473660, 37.393250, 31.233202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300339, 37.071945, 31.069731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056257, -0.476679, 0.877276,
		-0.899492, 0.357132, 0.251734,
		-0.433300, -0.803264, -0.408678,
		36.170349, 36.830967, 30.947128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937931, 37.313095, 31.647493>,  <36.473660, 37.393250, 31.233202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937931, 37.313095, 31.647493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.008690, 36.960617, 31.472128>,  <36.051144, 36.749130, 31.366909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.008690, 36.960617, 31.472128>,  <35.937931, 37.313095, 31.647493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008690, 36.960617, 31.472128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130587, -0.462515, 0.876941,
		-0.975528, -0.097878, -0.196890,
		0.176898, -0.881192, -0.438415,
		36.061760, 36.696259, 31.340603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418179, 36.921669, 31.868134>,  <35.937931, 37.313095, 31.647493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418179, 36.921669, 31.868134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.699543, 36.659134, 31.759001>,  <35.868362, 36.501614, 31.693521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.699543, 36.659134, 31.759001>,  <35.418179, 36.921669, 31.868134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699543, 36.659134, 31.759001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133940, -0.499368, 0.855974,
		-0.698049, -0.565559, -0.439171,
		0.703412, -0.656334, -0.272832,
		35.910568, 36.462234, 31.677151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153091, 36.284916, 31.994522>,  <35.418179, 36.921669, 31.868134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153091, 36.284916, 31.994522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.548962, 36.227840, 31.989248>,  <35.786484, 36.193596, 31.986084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.548962, 36.227840, 31.989248>,  <35.153091, 36.284916, 31.994522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548962, 36.227840, 31.989248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025085, -0.263093, 0.964444,
		-0.141086, -0.954160, -0.263957,
		0.989679, -0.142691, -0.013184,
		35.845867, 36.185032, 31.985292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287884, 35.582558, 32.279545>,  <35.153091, 36.284916, 31.994522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287884, 35.582558, 32.279545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629246, 35.785061, 32.329201>,  <35.834061, 35.906563, 32.358994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629246, 35.785061, 32.329201>,  <35.287884, 35.582558, 32.279545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629246, 35.785061, 32.329201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094839, -0.384980, 0.918039,
		0.512551, -0.771684, -0.376556,
		0.853403, 0.506254, 0.124136,
		35.885265, 35.936935, 32.366440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769924, 34.974457, 32.436558>,  <35.287884, 35.582558, 32.279545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769924, 34.974457, 32.436558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.919842, 35.322388, 32.564888>,  <36.009792, 35.531147, 32.641888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.919842, 35.322388, 32.564888>,  <35.769924, 34.974457, 32.436558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919842, 35.322388, 32.564888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181112, -0.408077, 0.894803,
		0.909246, -0.277260, -0.310480,
		0.374793, 0.869828, 0.320827,
		36.032280, 35.583336, 32.661137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443672, 34.842106, 32.699959>,  <35.769924, 34.974457, 32.436558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443672, 34.842106, 32.699959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.379711, 35.199722, 32.867352>,  <36.341335, 35.414291, 32.967785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.379711, 35.199722, 32.867352>,  <36.443672, 34.842106, 32.699959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379711, 35.199722, 32.867352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300887, -0.359617, 0.883257,
		0.940159, 0.267146, -0.211503,
		-0.159898, 0.894041, 0.418478,
		36.331741, 35.467934, 32.992893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032696, 34.964588, 33.117870>,  <36.443672, 34.842106, 32.699959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032696, 34.964588, 33.117870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749577, 35.216011, 33.246830>,  <36.579704, 35.366863, 33.324203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749577, 35.216011, 33.246830>,  <37.032696, 34.964588, 33.117870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749577, 35.216011, 33.246830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232682, -0.223475, 0.946529,
		0.666993, 0.744968, 0.011922,
		-0.707799, 0.628554, 0.322397,
		36.537235, 35.404579, 33.343548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381599, 35.221748, 33.669491>,  <37.032696, 34.964588, 33.117870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381599, 35.221748, 33.669491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.994701, 35.289135, 33.745449>,  <36.762562, 35.329567, 33.791023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.994701, 35.289135, 33.745449>,  <37.381599, 35.221748, 33.669491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994701, 35.289135, 33.745449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155230, -0.199394, 0.967546,
		0.200861, 0.965330, 0.166711,
		-0.967243, 0.168464, 0.189899,
		36.704529, 35.339676, 33.802418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261913, 35.757244, 34.204590>,  <37.381599, 35.221748, 33.669491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261913, 35.757244, 34.204590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.916397, 35.561996, 34.254547>,  <36.709087, 35.444847, 34.284523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.916397, 35.561996, 34.254547>,  <37.261913, 35.757244, 34.204590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916397, 35.561996, 34.254547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146594, -0.006317, 0.989177,
		-0.482049, 0.872753, 0.077013,
		-0.863793, -0.488121, 0.124896,
		36.657261, 35.415562, 34.292015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.915180, 39.339458, 27.034521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814800, 38.959824, 27.110691>,  <34.754574, 38.732044, 27.156393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814800, 38.959824, 27.110691>,  <34.915180, 39.339458, 27.034521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814800, 38.959824, 27.110691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388585, 0.081404, 0.917810,
		-0.886582, 0.304316, 0.348373,
		-0.250946, -0.949086, 0.190424,
		34.739517, 38.675098, 27.167818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611637, 39.312569, 27.648285>,  <34.915180, 39.339458, 27.034521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611637, 39.312569, 27.648285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707470, 38.926018, 27.610960>,  <34.764969, 38.694088, 27.588564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707470, 38.926018, 27.610960>,  <34.611637, 39.312569, 27.648285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707470, 38.926018, 27.610960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287037, -0.021312, 0.957682,
		-0.927475, -0.256229, 0.272281,
		0.239583, -0.966381, -0.093313,
		34.779346, 38.636105, 27.582966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665474, 39.106987, 28.338005>,  <34.611637, 39.312569, 27.648285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665474, 39.106987, 28.338005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806114, 38.777988, 28.159176>,  <34.890499, 38.580589, 28.051878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806114, 38.777988, 28.159176>,  <34.665474, 39.106987, 28.338005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806114, 38.777988, 28.159176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330389, -0.337810, 0.881322,
		-0.875910, -0.457584, 0.152969,
		0.351604, -0.822497, -0.447071,
		34.911594, 38.531239, 28.025055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330986, 38.479828, 28.681837>,  <34.665474, 39.106987, 28.338005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330986, 38.479828, 28.681837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684517, 38.383942, 28.521143>,  <34.896633, 38.326408, 28.424726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684517, 38.383942, 28.521143>,  <34.330986, 38.479828, 28.681837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684517, 38.383942, 28.521143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305681, -0.354138, 0.883824,
		-0.354138, -0.903947, -0.239719,
		-0.883824, 0.239719, 0.401733,
		34.949665, 38.312027, 28.400623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406830, 37.828640, 28.868053>,  <34.330986, 38.479828, 28.681837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406830, 37.828640, 28.868053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770550, 37.965408, 28.773176>,  <34.988781, 38.047470, 28.716249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770550, 37.965408, 28.773176>,  <34.406830, 37.828640, 28.868053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770550, 37.965408, 28.773176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356860, -0.347506, 0.867116,
		0.214056, -0.873116, -0.438005,
		0.909302, 0.341918, -0.237194,
		35.043339, 38.067986, 28.702019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857971, 37.156517, 28.960968>,  <34.406830, 37.828640, 28.868053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857971, 37.156517, 28.960968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098103, 37.476166, 28.948257>,  <35.242180, 37.667957, 28.940630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098103, 37.476166, 28.948257>,  <34.857971, 37.156517, 28.960968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098103, 37.476166, 28.948257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586328, -0.412749, 0.697035,
		0.543901, -0.437080, -0.716333,
		0.600326, 0.799124, -0.031778,
		35.278202, 37.715904, 28.938725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514938, 36.869183, 28.885689>,  <34.857971, 37.156517, 28.960968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514938, 36.869183, 28.885689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572315, 37.239513, 29.025557>,  <35.606743, 37.461712, 29.109478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572315, 37.239513, 29.025557>,  <35.514938, 36.869183, 28.885689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572315, 37.239513, 29.025557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636437, -0.356870, 0.683807,
		0.757873, 0.124457, -0.640421,
		0.143443, 0.925826, 0.349671,
		35.615349, 37.517262, 29.130459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173058, 36.931694, 28.899490>,  <35.514938, 36.869183, 28.885689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173058, 36.931694, 28.899490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017166, 37.170502, 29.179968>,  <35.923630, 37.313786, 29.348255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017166, 37.170502, 29.179968>,  <36.173058, 36.931694, 28.899490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017166, 37.170502, 29.179968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512709, -0.491829, 0.703728,
		0.765010, 0.633774, -0.114418,
		-0.389731, 0.597022, 0.701196,
		35.900246, 37.349609, 29.390327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673031, 36.922474, 29.406359>,  <36.173058, 36.931694, 28.899490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673031, 36.922474, 29.406359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336803, 37.032665, 29.592928>,  <36.135067, 37.098778, 29.704870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336803, 37.032665, 29.592928>,  <36.673031, 36.922474, 29.406359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336803, 37.032665, 29.592928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309276, -0.462851, 0.830733,
		0.444732, 0.842545, 0.303862,
		-0.840572, 0.275476, 0.466424,
		36.084633, 37.115307, 29.732855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460064, 37.083313, 29.099964>,  <36.673031, 36.922474, 29.406359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460064, 37.083313, 29.099964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699722, 36.776699, 29.007492>,  <37.843517, 36.592731, 28.952009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699722, 36.776699, 29.007492>,  <37.460064, 37.083313, 29.099964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699722, 36.776699, 29.007492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300487, 0.052351, -0.952348,
		0.742114, 0.640061, -0.198969,
		0.599145, -0.766538, -0.231181,
		37.879467, 36.546738, 28.938137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847309, 37.313995, 28.425957>,  <37.460064, 37.083313, 29.099964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847309, 37.313995, 28.425957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888206, 36.916840, 28.450367>,  <37.912746, 36.678547, 28.465014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888206, 36.916840, 28.450367>,  <37.847309, 37.313995, 28.425957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888206, 36.916840, 28.450367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141494, -0.075240, -0.987076,
		0.984645, 0.092286, -0.148180,
		0.102242, -0.992886, 0.061027,
		37.918880, 36.618973, 28.468676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252075, 37.146511, 27.868114>,  <37.847309, 37.313995, 28.425957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252075, 37.146511, 27.868114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086819, 36.795967, 27.967161>,  <37.987667, 36.585640, 28.026588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086819, 36.795967, 27.967161>,  <38.252075, 37.146511, 27.868114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086819, 36.795967, 27.967161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208445, -0.173687, -0.962488,
		0.886492, -0.449255, -0.110916,
		-0.413138, -0.876358, 0.247617,
		37.962879, 36.533058, 28.041447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515762, 36.576714, 27.308168>,  <38.252075, 37.146511, 27.868114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515762, 36.576714, 27.308168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199364, 36.404274, 27.481825>,  <38.009525, 36.300812, 27.586020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199364, 36.404274, 27.481825>,  <38.515762, 36.576714, 27.308168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199364, 36.404274, 27.481825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253006, -0.415597, -0.873652,
		0.557057, -0.800896, 0.219666,
		-0.790997, -0.431097, 0.434143,
		37.962063, 36.274944, 27.612068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568993, 35.856880, 27.039448>,  <38.515762, 36.576714, 27.308168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568993, 35.856880, 27.039448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194244, 35.938305, 27.153179>,  <37.969395, 35.987160, 27.221418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194244, 35.938305, 27.153179>,  <38.568993, 35.856880, 27.039448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194244, 35.938305, 27.153179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338366, -0.322518, -0.884019,
		-0.088251, -0.924416, 0.371035,
		-0.936867, 0.203561, 0.284329,
		37.913185, 35.999374, 27.238478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233536, 35.298149, 26.780870>,  <38.568993, 35.856880, 27.039448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233536, 35.298149, 26.780870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945808, 35.564873, 26.858795>,  <37.773170, 35.724907, 26.905550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945808, 35.564873, 26.858795>,  <38.233536, 35.298149, 26.780870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945808, 35.564873, 26.858795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453462, -0.238260, -0.858839,
		-0.526264, -0.706117, 0.473756,
		-0.719317, 0.666807, 0.194810,
		37.730015, 35.764915, 26.917238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707016, 34.948269, 26.621809>,  <38.233536, 35.298149, 26.780870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707016, 34.948269, 26.621809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572880, 35.325035, 26.614326>,  <37.492397, 35.551094, 26.609837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572880, 35.325035, 26.614326>,  <37.707016, 34.948269, 26.621809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572880, 35.325035, 26.614326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484657, -0.189505, -0.853930,
		-0.807871, -0.277291, 0.520052,
		-0.335340, 0.941912, -0.018704,
		37.472279, 35.607609, 26.608715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026291, 34.890327, 26.583893>,  <37.707016, 34.948269, 26.621809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026291, 34.890327, 26.583893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134293, 35.245907, 26.435909>,  <37.199093, 35.459255, 26.347118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134293, 35.245907, 26.435909>,  <37.026291, 34.890327, 26.583893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134293, 35.245907, 26.435909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433280, -0.230957, -0.871164,
		-0.859863, 0.395517, 0.322802,
		0.270007, 0.888946, -0.369961,
		37.215294, 35.512592, 26.324921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374813, 35.158272, 26.299505>,  <37.026291, 34.890327, 26.583893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374813, 35.158272, 26.299505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688820, 35.359634, 26.155100>,  <36.877224, 35.480453, 26.068457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688820, 35.359634, 26.155100>,  <36.374813, 35.158272, 26.299505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688820, 35.359634, 26.155100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379230, -0.070280, -0.922629,
		-0.489833, 0.861184, 0.135738,
		0.785014, 0.503411, -0.361013,
		36.924324, 35.510658, 26.046797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120625, 35.688400, 25.869347>,  <36.374813, 35.158272, 26.299505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120625, 35.688400, 25.869347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495007, 35.642727, 25.736105>,  <36.719635, 35.615322, 25.656160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495007, 35.642727, 25.736105>,  <36.120625, 35.688400, 25.869347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495007, 35.642727, 25.736105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339678, -0.043410, -0.939539,
		0.092822, 0.992510, -0.079416,
		0.935950, -0.114186, -0.333104,
		36.775791, 35.608471, 25.636173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105156, 36.173344, 25.278091>,  <36.120625, 35.688400, 25.869347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105156, 36.173344, 25.278091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429848, 35.953247, 25.199776>,  <36.624660, 35.821190, 25.152786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429848, 35.953247, 25.199776>,  <36.105156, 36.173344, 25.278091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429848, 35.953247, 25.199776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179771, 0.083564, -0.980153,
		0.555682, 0.830814, -0.031086,
		0.811727, -0.550241, -0.195791,
		36.673367, 35.788174, 25.141039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537846, 36.470795, 24.737579>,  <36.105156, 36.173344, 25.278091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537846, 36.470795, 24.737579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628925, 36.081760, 24.718721>,  <36.683575, 35.848339, 24.707407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628925, 36.081760, 24.718721>,  <36.537846, 36.470795, 24.737579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628925, 36.081760, 24.718721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140899, 0.014998, -0.989910,
		0.963482, 0.232049, -0.133622,
		0.227704, -0.972588, -0.047146,
		36.697235, 35.789986, 24.704578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809010, 36.408504, 24.148922>,  <36.537846, 36.470795, 24.737579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809010, 36.408504, 24.148922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802273, 36.019279, 24.240896>,  <36.798229, 35.785744, 24.296082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802273, 36.019279, 24.240896>,  <36.809010, 36.408504, 24.148922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802273, 36.019279, 24.240896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027261, -0.229436, -0.972942,
		0.999486, -0.022659, -0.022662,
		-0.016846, -0.973060, 0.229936,
		36.797218, 35.727360, 24.309877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489010, 36.127106, 23.857677>,  <36.809010, 36.408504, 24.148922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489010, 36.127106, 23.857677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194469, 35.858715, 23.892504>,  <37.017746, 35.697681, 23.913401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194469, 35.858715, 23.892504>,  <37.489010, 36.127106, 23.857677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194469, 35.858715, 23.892504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007470, -0.136737, -0.990579,
		0.676561, -0.728761, 0.105699,
		-0.736348, -0.670977, 0.087067,
		36.973564, 35.657421, 23.918625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.815365, 34.734673, 26.284822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.165190, 34.841007, 26.122602>,  <31.375084, 34.904808, 26.025270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.165190, 34.841007, 26.122602>,  <30.815365, 34.734673, 26.284822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165190, 34.841007, 26.122602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484695, -0.453995, 0.747636,
		0.014634, -0.850422, -0.525898,
		0.874561, 0.265841, -0.405552,
		31.427559, 34.920761, 26.000937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305727, 34.133053, 26.205439>,  <30.815365, 34.734673, 26.284822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305727, 34.133053, 26.205439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.526991, 34.466213, 26.212303>,  <31.659748, 34.666111, 26.216421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.526991, 34.466213, 26.212303>,  <31.305727, 34.133053, 26.205439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526991, 34.466213, 26.212303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457556, -0.320965, 0.829231,
		0.696175, -0.450843, -0.558643,
		0.553158, 0.832900, 0.017162,
		31.692938, 34.716084, 26.217451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885511, 33.896820, 26.261429>,  <31.305727, 34.133053, 26.205439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885511, 33.896820, 26.261429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.944603, 34.275288, 26.376623>,  <31.980059, 34.502369, 26.445740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.944603, 34.275288, 26.376623>,  <31.885511, 33.896820, 26.261429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944603, 34.275288, 26.376623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355015, -0.322506, 0.877470,
		0.923115, -0.027388, -0.383548,
		0.147729, 0.946171, 0.287987,
		31.988922, 34.559139, 26.463018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570873, 33.831596, 26.448730>,  <31.885511, 33.896820, 26.261429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570873, 33.831596, 26.448730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.414288, 34.169193, 26.595394>,  <32.320335, 34.371750, 26.683392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.414288, 34.169193, 26.595394>,  <32.570873, 33.831596, 26.448730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414288, 34.169193, 26.595394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445811, -0.174624, 0.877929,
		0.804992, 0.507134, -0.307903,
		-0.391460, 0.843991, 0.366657,
		32.296848, 34.422390, 26.705391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094505, 34.259396, 26.778301>,  <32.570873, 33.831596, 26.448730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094505, 34.259396, 26.778301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.749012, 34.351654, 26.957531>,  <32.541718, 34.407009, 27.065069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.749012, 34.351654, 26.957531>,  <33.094505, 34.259396, 26.778301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749012, 34.351654, 26.957531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451467, -0.040942, 0.891348,
		0.223930, 0.972176, -0.068766,
		-0.863732, 0.230645, 0.448073,
		32.489891, 34.420849, 27.091953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328259, 34.662247, 27.333450>,  <33.094505, 34.259396, 26.778301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328259, 34.662247, 27.333450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.958885, 34.545223, 27.432793>,  <32.737263, 34.475010, 27.492397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.958885, 34.545223, 27.432793>,  <33.328259, 34.662247, 27.333450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958885, 34.545223, 27.432793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323942, -0.247269, 0.913192,
		-0.205754, 0.923724, 0.323110,
		-0.923432, -0.292562, 0.248356,
		32.681854, 34.457455, 27.507299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182198, 34.881191, 28.050804>,  <33.328259, 34.662247, 27.333450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182198, 34.881191, 28.050804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.884960, 34.626637, 27.968033>,  <32.706619, 34.473904, 27.918369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.884960, 34.626637, 27.968033>,  <33.182198, 34.881191, 28.050804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884960, 34.626637, 27.968033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040677, -0.351610, 0.935262,
		-0.667949, 0.686571, 0.287166,
		-0.743095, -0.636388, -0.206930,
		32.662033, 34.435719, 27.905954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727898, 34.898056, 28.597504>,  <33.182198, 34.881191, 28.050804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727898, 34.898056, 28.597504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.607330, 34.554401, 28.432081>,  <32.534992, 34.348209, 28.332827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.607330, 34.554401, 28.432081>,  <32.727898, 34.898056, 28.597504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607330, 34.554401, 28.432081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099535, -0.403009, 0.909767,
		-0.948283, 0.315383, 0.035959,
		-0.301417, -0.859138, -0.413558,
		32.516907, 34.296661, 28.308014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184280, 34.725197, 28.988976>,  <32.727898, 34.898056, 28.597504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184280, 34.725197, 28.988976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.300404, 34.378746, 28.826225>,  <32.370075, 34.170876, 28.728575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.300404, 34.378746, 28.826225>,  <32.184280, 34.725197, 28.988976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300404, 34.378746, 28.826225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052200, -0.410218, 0.910492,
		-0.955510, -0.285558, -0.073875,
		0.290303, -0.866128, -0.406874,
		32.387493, 34.118908, 28.704163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812630, 34.254108, 29.413389>,  <32.184280, 34.725197, 28.988976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812630, 34.254108, 29.413389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.118195, 34.059921, 29.243324>,  <32.301533, 33.943409, 29.141285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.118195, 34.059921, 29.243324>,  <31.812630, 34.254108, 29.413389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118195, 34.059921, 29.243324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120776, -0.539640, 0.833187,
		-0.633919, -0.687830, -0.353604,
		0.763911, -0.485467, -0.425162,
		32.347370, 33.914280, 29.115776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702242, 33.599720, 29.512266>,  <31.812630, 34.254108, 29.413389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702242, 33.599720, 29.512266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.097900, 33.601528, 29.453524>,  <32.335297, 33.602615, 29.418278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.097900, 33.601528, 29.453524>,  <31.702242, 33.599720, 29.512266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097900, 33.601528, 29.453524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124059, -0.561220, 0.818316,
		-0.078717, -0.827654, -0.555691,
		0.989148, 0.004523, -0.146856,
		32.394646, 33.602886, 29.409468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855112, 32.968544, 29.652205>,  <31.702242, 33.599720, 29.512266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855112, 32.968544, 29.652205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.201668, 33.167473, 29.670271>,  <32.409599, 33.286831, 29.681110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.201668, 33.167473, 29.670271>,  <31.855112, 32.968544, 29.652205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201668, 33.167473, 29.670271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324340, -0.629180, 0.706354,
		0.379705, -0.597328, -0.706416,
		0.866388, 0.497325, 0.045165,
		32.461586, 33.316669, 29.683821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412128, 32.390091, 29.590712>,  <31.855112, 32.968544, 29.652205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412128, 32.390091, 29.590712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.537403, 32.729351, 29.761620>,  <32.612568, 32.932907, 29.864164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.537403, 32.729351, 29.761620>,  <32.412128, 32.390091, 29.590712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537403, 32.729351, 29.761620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208029, -0.500246, 0.840522,
		0.926626, -0.174360, -0.333112,
		0.313191, 0.848147, 0.427269,
		32.631359, 32.983795, 29.889801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014553, 32.242489, 29.844267>,  <32.412128, 32.390091, 29.590712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014553, 32.242489, 29.844267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.935131, 32.572983, 30.055140>,  <32.887478, 32.771278, 30.181664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.935131, 32.572983, 30.055140>,  <33.014553, 32.242489, 29.844267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935131, 32.572983, 30.055140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417425, -0.415378, 0.808219,
		0.886755, 0.380532, -0.262415,
		-0.198551, 0.826230, 0.527182,
		32.875565, 32.820850, 30.213295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634804, 32.319008, 29.577293>,  <33.014553, 32.242489, 29.844267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634804, 32.319008, 29.577293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.908939, 32.041527, 29.488676>,  <34.073421, 31.875038, 29.435507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.908939, 32.041527, 29.488676>,  <33.634804, 32.319008, 29.577293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908939, 32.041527, 29.488676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025154, 0.326592, -0.944830,
		0.727787, 0.641959, 0.241277,
		0.685341, -0.693705, -0.221542,
		34.114540, 31.833416, 29.422215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130764, 32.698009, 29.166311>,  <33.634804, 32.319008, 29.577293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130764, 32.698009, 29.166311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.158882, 32.303989, 29.103399>,  <34.175751, 32.067577, 29.065653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.158882, 32.303989, 29.103399>,  <34.130764, 32.698009, 29.166311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158882, 32.303989, 29.103399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243255, 0.135982, -0.960383,
		0.967412, 0.105765, -0.230060,
		0.070291, -0.985049, -0.157278,
		34.179970, 32.008476, 29.056215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510994, 32.626823, 28.563196>,  <34.130764, 32.698009, 29.166311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510994, 32.626823, 28.563196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.344513, 32.265652, 28.606068>,  <34.244625, 32.048946, 28.631790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.344513, 32.265652, 28.606068>,  <34.510994, 32.626823, 28.563196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344513, 32.265652, 28.606068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204008, -0.022137, -0.978719,
		0.886088, -0.429214, -0.174992,
		-0.416206, -0.902931, 0.107179,
		34.219650, 31.994772, 28.638222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849037, 32.124371, 27.971386>,  <34.510994, 32.626823, 28.563196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849037, 32.124371, 27.971386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.480698, 31.990364, 28.051189>,  <34.259693, 31.909960, 28.099072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.480698, 31.990364, 28.051189>,  <34.849037, 32.124371, 27.971386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480698, 31.990364, 28.051189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165904, -0.126409, -0.978006,
		0.352871, -0.933693, 0.060822,
		-0.920846, -0.335020, 0.199510,
		34.204445, 31.889858, 28.111042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818027, 31.521376, 27.696299>,  <34.849037, 32.124371, 27.971386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818027, 31.521376, 27.696299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.427734, 31.596521, 27.741282>,  <34.193558, 31.641609, 27.768270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.427734, 31.596521, 27.741282>,  <34.818027, 31.521376, 27.696299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427734, 31.596521, 27.741282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153819, -0.222647, -0.962688,
		-0.155814, -0.956627, 0.246142,
		-0.975737, 0.187862, 0.112456,
		34.135014, 31.652882, 27.775019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474758, 30.978373, 27.294373>,  <34.818027, 31.521376, 27.696299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474758, 30.978373, 27.294373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.228527, 31.289173, 27.347031>,  <34.080788, 31.475653, 27.378626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.228527, 31.289173, 27.347031>,  <34.474758, 30.978373, 27.294373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228527, 31.289173, 27.347031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296400, -0.073487, -0.952232,
		-0.730210, -0.625196, 0.275540,
		-0.615581, 0.777000, 0.131647,
		34.043854, 31.522274, 27.386524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964863, 30.718645, 27.080030>,  <34.474758, 30.978373, 27.294373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964863, 30.718645, 27.080030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.910530, 31.113543, 27.046804>,  <33.877930, 31.350481, 27.026869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.910530, 31.113543, 27.046804>,  <33.964863, 30.718645, 27.080030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910530, 31.113543, 27.046804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121373, -0.099794, -0.987578,
		-0.983269, -0.124061, 0.133380,
		-0.135831, 0.987244, -0.083066,
		33.869781, 31.409716, 27.021885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367332, 30.723137, 26.658739>,  <33.964863, 30.718645, 27.080030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367332, 30.723137, 26.658739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.522079, 31.091841, 26.648249>,  <33.614929, 31.313063, 26.641954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.522079, 31.091841, 26.648249>,  <33.367332, 30.723137, 26.658739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522079, 31.091841, 26.648249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110017, 0.017899, -0.993768,
		-0.915547, 0.387345, 0.108334,
		0.386871, 0.921761, -0.026227,
		33.638142, 31.368368, 26.640381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983898, 31.023129, 26.139820>,  <33.367332, 30.723137, 26.658739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983898, 31.023129, 26.139820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.325783, 31.228647, 26.169426>,  <33.530914, 31.351957, 26.187189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.325783, 31.228647, 26.169426>,  <32.983898, 31.023129, 26.139820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325783, 31.228647, 26.169426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000748, 0.141366, -0.989957,
		-0.519099, 0.846186, 0.120444,
		0.854714, 0.513796, 0.074016,
		33.582195, 31.382786, 26.191631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974205, 31.496635, 25.636791>,  <32.983898, 31.023129, 26.139820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974205, 31.496635, 25.636791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.365574, 31.556925, 25.693308>,  <33.600395, 31.593100, 25.727219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.365574, 31.556925, 25.693308>,  <32.974205, 31.496635, 25.636791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365574, 31.556925, 25.693308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133612, 0.059980, -0.989217,
		-0.157574, 0.986755, 0.038547,
		0.978427, 0.150725, 0.141293,
		33.659103, 31.602142, 25.735695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396999, 31.799902, 25.141127>,  <32.974205, 31.496635, 25.636791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396999, 31.799902, 25.141127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.482960, 31.648016, 24.781208>,  <33.534534, 31.556885, 24.565256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.482960, 31.648016, 24.781208>,  <33.396999, 31.799902, 25.141127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482960, 31.648016, 24.781208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271094, 0.861925, -0.428478,
		0.938257, 0.336009, 0.082289,
		0.214900, -0.379714, -0.899797,
		33.547428, 31.534101, 24.511269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682907, 32.299202, 24.838667>,  <33.396999, 31.799902, 25.141127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682907, 32.299202, 24.838667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.581089, 32.059261, 24.535250>,  <33.519997, 31.915297, 24.353199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.581089, 32.059261, 24.535250>,  <33.682907, 32.299202, 24.838667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581089, 32.059261, 24.535250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368141, 0.785425, -0.497574,
		0.894248, 0.152596, -0.420755,
		-0.254543, -0.599852, -0.758542,
		33.504726, 31.879305, 24.307688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887917, 32.630974, 24.248747>,  <33.682907, 32.299202, 24.838667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887917, 32.630974, 24.248747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.633045, 32.365410, 24.092169>,  <33.480122, 32.206074, 23.998222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.633045, 32.365410, 24.092169>,  <33.887917, 32.630974, 24.248747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633045, 32.365410, 24.092169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405572, 0.720724, -0.562200,
		0.655372, -0.199463, -0.728493,
		-0.637180, -0.663906, -0.391446,
		33.441891, 32.166237, 23.974735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016338, 32.763374, 23.543684>,  <33.887917, 32.630974, 24.248747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016338, 32.763374, 23.543684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.668892, 32.565193, 23.541531>,  <33.460423, 32.446285, 23.540237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.668892, 32.565193, 23.541531>,  <34.016338, 32.763374, 23.543684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668892, 32.565193, 23.541531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386880, 0.684977, -0.617358,
		0.309562, -0.534164, -0.786664,
		-0.868617, -0.495455, -0.005385,
		33.408306, 32.416557, 23.539915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658867, 32.562183, 23.302612>,  <34.016338, 32.763374, 23.543684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658867, 32.562183, 23.302612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.973030, 32.785095, 23.194859>,  <35.161530, 32.918842, 23.130207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.973030, 32.785095, 23.194859>,  <34.658867, 32.562183, 23.302612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973030, 32.785095, 23.194859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475807, -0.265203, 0.838615,
		0.395904, -0.786832, -0.473451,
		0.785410, 0.557282, -0.269385,
		35.208652, 32.952278, 23.114042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195850, 32.182949, 23.534304>,  <34.658867, 32.562183, 23.302612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195850, 32.182949, 23.534304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.344841, 32.550999, 23.485914>,  <35.434235, 32.771828, 23.456881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.344841, 32.550999, 23.485914>,  <35.195850, 32.182949, 23.534304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344841, 32.550999, 23.485914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427865, -0.054589, 0.902193,
		0.823524, -0.387808, -0.414021,
		0.372479, 0.920122, -0.120974,
		35.456585, 32.827034, 23.449621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907803, 32.004360, 23.657326>,  <35.195850, 32.182949, 23.534304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907803, 32.004360, 23.657326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.862968, 32.399708, 23.698427>,  <35.836067, 32.636917, 23.723087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.862968, 32.399708, 23.698427>,  <35.907803, 32.004360, 23.657326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862968, 32.399708, 23.698427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611255, -0.012946, 0.791328,
		0.783456, 0.151506, -0.602696,
		-0.112088, 0.988372, 0.102751,
		35.829342, 32.696220, 23.729252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654613, 32.311871, 23.715145>,  <35.907803, 32.004360, 23.657326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654613, 32.311871, 23.715145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.364635, 32.517578, 23.898441>,  <36.190651, 32.641003, 24.008419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.364635, 32.517578, 23.898441>,  <36.654613, 32.311871, 23.715145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364635, 32.517578, 23.898441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510325, -0.045815, 0.858760,
		0.462631, 0.856402, -0.229234,
		-0.724941, 0.514273, 0.458239,
		36.147152, 32.671860, 24.035913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010826, 32.700348, 24.289343>,  <36.654613, 32.311871, 23.715145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010826, 32.700348, 24.289343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.628803, 32.731190, 24.403828>,  <36.399590, 32.749695, 24.472519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.628803, 32.731190, 24.403828>,  <37.010826, 32.700348, 24.289343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628803, 32.731190, 24.403828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281718, -0.064158, 0.957350,
		0.092175, 0.994957, 0.039554,
		-0.955059, 0.077101, 0.286211,
		36.342285, 32.754318, 24.489691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066223, 33.133659, 24.822308>,  <37.010826, 32.700348, 24.289343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066223, 33.133659, 24.822308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.729813, 32.920017, 24.856756>,  <36.527966, 32.791832, 24.877424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.729813, 32.920017, 24.856756>,  <37.066223, 33.133659, 24.822308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729813, 32.920017, 24.856756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242796, -0.230377, 0.942325,
		-0.483457, 0.813426, 0.323430,
		-0.841023, -0.534102, 0.086119,
		36.477505, 32.759789, 24.882591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855545, 33.299095, 25.429459>,  <37.066223, 33.133659, 24.822308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855545, 33.299095, 25.429459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.662254, 32.954361, 25.367832>,  <36.546280, 32.747520, 25.330856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.662254, 32.954361, 25.367832>,  <36.855545, 33.299095, 25.429459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662254, 32.954361, 25.367832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098242, -0.228244, 0.968634,
		-0.869966, 0.452933, 0.194962,
		-0.483225, -0.861833, -0.154067,
		36.517288, 32.695812, 25.321611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295181, 33.277744, 25.858643>,  <36.855545, 33.299095, 25.429459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295181, 33.277744, 25.858643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.365753, 32.893581, 25.772388>,  <36.408096, 32.663086, 25.720636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.365753, 32.893581, 25.772388>,  <36.295181, 33.277744, 25.858643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365753, 32.893581, 25.772388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013741, -0.216648, 0.976153,
		-0.984217, -0.175184, -0.025026,
		0.176428, -0.960403, -0.215636,
		36.418682, 32.605461, 25.707697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814861, 32.961864, 26.188824>,  <36.295181, 33.277744, 25.858643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814861, 32.961864, 26.188824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.114815, 32.703831, 26.130104>,  <36.294785, 32.549011, 26.094872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.114815, 32.703831, 26.130104>,  <35.814861, 32.961864, 26.188824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114815, 32.703831, 26.130104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006510, -0.229078, 0.973386,
		-0.661540, -0.728968, -0.175980,
		0.749881, -0.645080, -0.146799,
		36.339779, 32.510307, 26.086065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652809, 32.475815, 26.678913>,  <35.814861, 32.961864, 26.188824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652809, 32.475815, 26.678913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.031387, 32.402088, 26.572878>,  <36.258533, 32.357853, 26.509256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.031387, 32.402088, 26.572878>,  <35.652809, 32.475815, 26.678913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031387, 32.402088, 26.572878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222079, -0.224347, 0.948867,
		-0.234374, -0.956918, -0.171397,
		0.946440, -0.184326, -0.265092,
		36.315319, 32.346794, 26.493351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755318, 31.889683, 27.093273>,  <35.652809, 32.475815, 26.678913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755318, 31.889683, 27.093273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.114662, 32.026855, 26.983480>,  <36.330269, 32.109158, 26.917604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.114662, 32.026855, 26.983480>,  <35.755318, 31.889683, 27.093273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114662, 32.026855, 26.983480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375279, -0.274480, 0.885340,
		0.228270, -0.898365, -0.375277,
		0.898364, 0.342930, -0.274483,
		36.384171, 32.129734, 26.901136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199146, 31.400923, 27.406635>,  <35.755318, 31.889683, 27.093273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199146, 31.400923, 27.406635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.408596, 31.738707, 27.361555>,  <36.534267, 31.941378, 27.334507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.408596, 31.738707, 27.361555>,  <36.199146, 31.400923, 27.406635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408596, 31.738707, 27.361555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475974, -0.180260, 0.860787,
		0.706586, -0.504373, -0.496331,
		0.523626, 0.844461, -0.112699,
		36.565685, 31.992044, 27.327745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792770, 31.165646, 27.596586>,  <36.199146, 31.400923, 27.406635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792770, 31.165646, 27.596586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.836960, 31.562994, 27.609276>,  <36.863472, 31.801403, 27.616890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.836960, 31.562994, 27.609276>,  <36.792770, 31.165646, 27.596586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836960, 31.562994, 27.609276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435211, -0.077045, 0.897026,
		0.893526, -0.085287, -0.440838,
		0.110469, 0.993373, 0.031724,
		36.870102, 31.861006, 27.618793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407360, 31.210825, 27.816362>,  <36.792770, 31.165646, 27.596586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407360, 31.210825, 27.816362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.276123, 31.580795, 27.893164>,  <37.197380, 31.802778, 27.939243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.276123, 31.580795, 27.893164>,  <37.407360, 31.210825, 27.816362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276123, 31.580795, 27.893164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475827, -0.013769, 0.879431,
		0.816052, 0.379897, -0.435587,
		-0.328096, 0.924926, 0.192002,
		37.177696, 31.858273, 27.950764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.606236, 35.643616, 23.316994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.230305, 35.580917, 23.438421>,  <37.004745, 35.543301, 23.511278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.230305, 35.580917, 23.438421>,  <37.606236, 35.643616, 23.316994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230305, 35.580917, 23.438421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293551, -0.084095, -0.952237,
		0.174785, -0.984053, 0.033022,
		-0.939829, -0.156743, 0.303569,
		36.948357, 35.533894, 23.529491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258923, 35.205292, 22.842438>,  <37.606236, 35.643616, 23.316994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258923, 35.205292, 22.842438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910301, 35.326530, 22.996595>,  <36.701130, 35.399273, 23.089090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910301, 35.326530, 22.996595>,  <37.258923, 35.205292, 22.842438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910301, 35.326530, 22.996595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429201, -0.091642, -0.898548,
		-0.237031, -0.948543, 0.209961,
		-0.871552, 0.303099, 0.385394,
		36.648834, 35.417461, 23.112213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757637, 34.772850, 22.640303>,  <37.258923, 35.205292, 22.842438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757637, 34.772850, 22.640303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.567959, 35.113174, 22.730871>,  <36.454151, 35.317368, 22.785212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.567959, 35.113174, 22.730871>,  <36.757637, 34.772850, 22.640303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567959, 35.113174, 22.730871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396372, 0.023332, -0.917793,
		-0.786150, -0.524957, 0.326173,
		-0.474191, 0.850809, 0.226421,
		36.425701, 35.368416, 22.798798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058525, 34.753010, 22.354425>,  <36.757637, 34.772850, 22.640303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058525, 34.753010, 22.354425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.093330, 35.145931, 22.420767>,  <36.114216, 35.381683, 22.460571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.093330, 35.145931, 22.420767>,  <36.058525, 34.753010, 22.354425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093330, 35.145931, 22.420767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539659, 0.186423, -0.820984,
		-0.837374, -0.018066, 0.546331,
		0.087016, 0.982303, 0.165855,
		36.119434, 35.440620, 22.470524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373653, 34.974449, 22.289364>,  <36.058525, 34.753010, 22.354425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373653, 34.974449, 22.289364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616459, 35.284561, 22.219522>,  <35.762142, 35.470627, 22.177618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616459, 35.284561, 22.219522>,  <35.373653, 34.974449, 22.289364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616459, 35.284561, 22.219522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513805, 0.215256, -0.830463,
		-0.606254, 0.593811, 0.529003,
		0.607010, 0.775276, -0.174603,
		35.798561, 35.517143, 22.167141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794376, 35.496677, 22.189856>,  <35.373653, 34.974449, 22.289364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794376, 35.496677, 22.189856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.147484, 35.626667, 22.054146>,  <35.359348, 35.704662, 21.972719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.147484, 35.626667, 22.054146>,  <34.794376, 35.496677, 22.189856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147484, 35.626667, 22.054146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466435, 0.519918, -0.715628,
		-0.056166, 0.789985, 0.610548,
		0.882771, 0.324975, -0.339275,
		35.412315, 35.724159, 21.952364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741997, 36.258545, 22.121803>,  <34.794376, 35.496677, 22.189856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741997, 36.258545, 22.121803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028500, 36.126144, 21.876068>,  <35.200401, 36.046703, 21.728626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028500, 36.126144, 21.876068>,  <34.741997, 36.258545, 22.121803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028500, 36.126144, 21.876068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470032, 0.421861, -0.775309,
		0.515792, 0.844081, 0.146581,
		0.716260, -0.331000, -0.614338,
		35.243378, 36.026844, 21.691767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955116, 36.849888, 21.751907>,  <34.741997, 36.258545, 22.121803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955116, 36.849888, 21.751907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071075, 36.537708, 21.530331>,  <35.140652, 36.350399, 21.397385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071075, 36.537708, 21.530331>,  <34.955116, 36.849888, 21.751907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071075, 36.537708, 21.530331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415366, 0.418848, -0.807488,
		0.862225, 0.464176, -0.202752,
		0.289895, -0.780453, -0.553944,
		35.158043, 36.303574, 21.364147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139557, 37.145092, 21.200329>,  <34.955116, 36.849888, 21.751907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139557, 37.145092, 21.200329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.086731, 36.770805, 21.069489>,  <35.055035, 36.546234, 20.990984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.086731, 36.770805, 21.069489>,  <35.139557, 37.145092, 21.200329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086731, 36.770805, 21.069489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484465, 0.348821, -0.802258,
		0.864785, 0.052523, -0.499387,
		-0.132060, -0.935717, -0.327101,
		35.047112, 36.490089, 20.971359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245548, 37.187481, 20.539518>,  <35.139557, 37.145092, 21.200329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245548, 37.187481, 20.539518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.037369, 36.849422, 20.588293>,  <34.912460, 36.646587, 20.617558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.037369, 36.849422, 20.588293>,  <35.245548, 37.187481, 20.539518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037369, 36.849422, 20.588293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600750, 0.260926, -0.755656,
		0.606821, -0.466532, -0.643518,
		-0.520449, -0.845142, 0.121934,
		34.881233, 36.595879, 20.624874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119968, 36.992508, 19.819391>,  <35.245548, 37.187481, 20.539518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119968, 36.992508, 19.819391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.860722, 36.781258, 20.038855>,  <34.705173, 36.654507, 20.170532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.860722, 36.781258, 20.038855>,  <35.119968, 36.992508, 19.819391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860722, 36.781258, 20.038855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687283, 0.095339, -0.720106,
		0.327999, -0.843796, -0.424764,
		-0.648119, -0.528127, 0.548656,
		34.666286, 36.622818, 20.203451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829273, 36.364883, 19.404482>,  <35.119968, 36.992508, 19.819391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829273, 36.364883, 19.404482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581928, 36.472298, 19.699919>,  <34.433521, 36.536747, 19.877180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581928, 36.472298, 19.699919>,  <34.829273, 36.364883, 19.404482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581928, 36.472298, 19.699919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760033, 0.034773, -0.648953,
		-0.199952, -0.962641, 0.182596,
		-0.618360, 0.268539, 0.738592,
		34.396420, 36.552860, 19.921497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262665, 35.873894, 19.446144>,  <34.829273, 36.364883, 19.404482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262665, 35.873894, 19.446144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116421, 36.193783, 19.636621>,  <34.028675, 36.385719, 19.750908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116421, 36.193783, 19.636621>,  <34.262665, 35.873894, 19.446144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116421, 36.193783, 19.636621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725233, 0.075910, -0.684306,
		-0.583407, -0.595545, 0.552235,
		-0.365614, 0.799728, 0.476195,
		34.006737, 36.433701, 19.779480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547428, 35.716702, 19.442545>,  <34.262665, 35.873894, 19.446144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547428, 35.716702, 19.442545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.567890, 36.110195, 19.511419>,  <33.580166, 36.346291, 19.552744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.567890, 36.110195, 19.511419>,  <33.547428, 35.716702, 19.442545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567890, 36.110195, 19.511419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743186, 0.152668, -0.651435,
		-0.667127, -0.094642, 0.738908,
		0.051154, 0.983735, 0.172186,
		33.583237, 36.405315, 19.563074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331741, 35.421452, 18.730459>,  <33.547428, 35.716702, 19.442545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331741, 35.421452, 18.730459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232128, 35.085522, 18.537516>,  <33.172359, 34.883965, 18.421749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232128, 35.085522, 18.537516>,  <33.331741, 35.421452, 18.730459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232128, 35.085522, 18.537516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524811, -0.535606, 0.661589,
		-0.813976, -0.088390, 0.574135,
		-0.249032, -0.839829, -0.482358,
		33.157417, 34.833572, 18.392809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958496, 34.977547, 19.183281>,  <33.331741, 35.421452, 18.730459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958496, 34.977547, 19.183281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087139, 34.722942, 18.902878>,  <33.164326, 34.570179, 18.734636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087139, 34.722942, 18.902878>,  <32.958496, 34.977547, 19.183281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087139, 34.722942, 18.902878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263117, -0.651109, 0.711918,
		-0.909580, -0.413409, -0.041927,
		0.321612, -0.636514, -0.701010,
		33.183624, 34.531986, 18.692575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723530, 34.432339, 19.522198>,  <32.958496, 34.977547, 19.183281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723530, 34.432339, 19.522198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981037, 34.303741, 19.244434>,  <33.135540, 34.226582, 19.077776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981037, 34.303741, 19.244434>,  <32.723530, 34.432339, 19.522198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981037, 34.303741, 19.244434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334809, -0.697653, 0.633390,
		-0.688089, -0.640250, -0.341487,
		0.643768, -0.321496, -0.694409,
		33.174168, 34.207291, 19.036112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767994, 33.622574, 19.478073>,  <32.723530, 34.432339, 19.522198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767994, 33.622574, 19.478073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.113922, 33.786541, 19.362112>,  <33.321480, 33.884922, 19.292536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.113922, 33.786541, 19.362112>,  <32.767994, 33.622574, 19.478073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113922, 33.786541, 19.362112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496011, -0.608084, 0.619844,
		0.077801, -0.679852, -0.729211,
		0.864824, 0.409921, -0.289904,
		33.373371, 33.909519, 19.275141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138172, 32.994755, 19.367041>,  <32.767994, 33.622574, 19.478073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138172, 32.994755, 19.367041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384975, 33.307083, 19.406281>,  <33.533058, 33.494480, 19.429825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384975, 33.307083, 19.406281>,  <33.138172, 32.994755, 19.367041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384975, 33.307083, 19.406281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477627, -0.470632, 0.741875,
		0.625437, -0.410889, -0.663324,
		0.617010, 0.780818, 0.098099,
		33.570080, 33.541328, 19.435711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726494, 32.712086, 19.484398>,  <33.138172, 32.994755, 19.367041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726494, 32.712086, 19.484398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.781902, 33.089127, 19.605932>,  <33.815147, 33.315350, 19.678852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.781902, 33.089127, 19.605932>,  <33.726494, 32.712086, 19.484398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781902, 33.089127, 19.605932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570371, -0.326733, 0.753606,
		0.809624, 0.068912, -0.582890,
		0.138517, 0.942601, 0.303837,
		33.823456, 33.371906, 19.697083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427246, 32.637661, 19.671677>,  <33.726494, 32.712086, 19.484398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427246, 32.637661, 19.671677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310127, 32.976398, 19.849276>,  <34.239857, 33.179642, 19.955835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310127, 32.976398, 19.849276>,  <34.427246, 32.637661, 19.671677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310127, 32.976398, 19.849276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625418, -0.181628, 0.758856,
		0.723273, 0.499872, -0.476450,
		-0.292794, 0.846841, 0.443996,
		34.222290, 33.230450, 19.982475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059128, 33.101913, 19.888077>,  <34.427246, 32.637661, 19.671677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059128, 33.101913, 19.888077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.756657, 33.235317, 20.113276>,  <34.575172, 33.315361, 20.248394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.756657, 33.235317, 20.113276>,  <35.059128, 33.101913, 19.888077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756657, 33.235317, 20.113276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576853, -0.066426, 0.814143,
		0.308924, 0.940403, -0.142157,
		-0.756179, 0.333512, 0.562995,
		34.529804, 33.335369, 20.282173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280712, 33.695797, 20.252048>,  <35.059128, 33.101913, 19.888077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280712, 33.695797, 20.252048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.971912, 33.574665, 20.475586>,  <34.786633, 33.501987, 20.609709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.971912, 33.574665, 20.475586>,  <35.280712, 33.695797, 20.252048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971912, 33.574665, 20.475586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549638, 0.123519, 0.826221,
		-0.319233, 0.945006, 0.071090,
		-0.772003, -0.302831, 0.558842,
		34.740311, 33.483814, 20.643238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264751, 34.028343, 20.913261>,  <35.280712, 33.695797, 20.252048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264751, 34.028343, 20.913261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.984257, 33.764149, 21.020607>,  <34.815960, 33.605633, 21.085014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.984257, 33.764149, 21.020607>,  <35.264751, 34.028343, 20.913261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984257, 33.764149, 21.020607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343982, 0.016257, 0.938835,
		-0.624455, 0.750658, 0.215798,
		-0.701236, -0.660491, 0.268365,
		34.773888, 33.566002, 21.101116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104065, 34.299816, 21.507616>,  <35.264751, 34.028343, 20.913261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104065, 34.299816, 21.507616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.986996, 33.917347, 21.503994>,  <34.916752, 33.687866, 21.501822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.986996, 33.917347, 21.503994>,  <35.104065, 34.299816, 21.507616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986996, 33.917347, 21.503994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212412, -0.074244, 0.974356,
		-0.932321, 0.283247, 0.224831,
		-0.292676, -0.956169, -0.009054,
		34.899193, 33.630497, 21.501278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794811, 34.282528, 22.051132>,  <35.104065, 34.299816, 21.507616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794811, 34.282528, 22.051132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.859249, 33.889755, 22.011429>,  <34.897911, 33.654091, 21.987606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.859249, 33.889755, 22.011429>,  <34.794811, 34.282528, 22.051132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859249, 33.889755, 22.011429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268703, -0.053138, 0.961756,
		-0.949657, -0.181601, 0.255289,
		0.161090, -0.981936, -0.099259,
		34.907578, 33.595173, 21.981651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371738, 33.823967, 22.513865>,  <34.794811, 34.282528, 22.051132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371738, 33.823967, 22.513865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711018, 33.635777, 22.416536>,  <34.914585, 33.522861, 22.358139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711018, 33.635777, 22.416536>,  <34.371738, 33.823967, 22.513865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711018, 33.635777, 22.416536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215828, -0.112516, 0.969927,
		-0.483708, -0.875208, 0.006107,
		0.848201, -0.470480, -0.243319,
		34.965477, 33.494633, 22.343540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361038, 33.228058, 22.961340>,  <34.371738, 33.823967, 22.513865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361038, 33.228058, 22.961340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.750813, 33.218620, 22.871964>,  <34.984676, 33.212959, 22.818338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.750813, 33.218620, 22.871964>,  <34.361038, 33.228058, 22.961340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750813, 33.218620, 22.871964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212272, -0.229265, 0.949936,
		-0.073634, -0.973078, -0.218396,
		0.974432, -0.023588, -0.223439,
		35.043140, 33.211544, 22.804932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827324, 32.699852, 22.719271>,  <34.361038, 33.228058, 22.961340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827324, 32.699852, 22.719271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.510174, 32.640011, 22.955566>,  <33.319885, 32.604107, 23.097343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.510174, 32.640011, 22.955566>,  <33.827324, 32.699852, 22.719271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510174, 32.640011, 22.955566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486920, 0.738415, -0.466533,
		-0.366416, -0.657544, -0.658313,
		-0.792874, -0.149601, 0.590738,
		33.272312, 32.595131, 23.132788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242004, 32.577961, 22.268864>,  <33.827324, 32.699852, 22.719271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242004, 32.577961, 22.268864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.079205, 32.716339, 22.607016>,  <32.981525, 32.799366, 22.809908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.079205, 32.716339, 22.607016>,  <33.242004, 32.577961, 22.268864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079205, 32.716339, 22.607016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558785, 0.637826, -0.530035,
		-0.722571, -0.688112, -0.066285,
		-0.407001, 0.345949, 0.845381,
		32.957104, 32.820126, 22.860630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536160, 32.494156, 22.133465>,  <33.242004, 32.577961, 22.268864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536160, 32.494156, 22.133465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.575066, 32.767170, 22.423208>,  <32.598408, 32.930977, 22.597054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.575066, 32.767170, 22.423208>,  <32.536160, 32.494156, 22.133465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575066, 32.767170, 22.423208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442453, 0.681585, -0.582819,
		-0.891502, -0.263807, 0.368280,
		0.097263, 0.682530, 0.724356,
		32.604244, 32.971928, 22.640514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863796, 32.708649, 22.294353>,  <32.536160, 32.494156, 22.133465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863796, 32.708649, 22.294353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.108273, 32.996426, 22.426317>,  <32.254959, 33.169094, 22.505495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.108273, 32.996426, 22.426317>,  <31.863796, 32.708649, 22.294353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108273, 32.996426, 22.426317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513256, 0.677572, -0.526749,
		-0.602505, 0.152617, 0.783387,
		0.611192, 0.719447, 0.329910,
		32.291630, 33.212261, 22.525290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403143, 33.140739, 22.501099>,  <31.863796, 32.708649, 22.294353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403143, 33.140739, 22.501099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.734558, 33.364704, 22.502687>,  <31.933407, 33.499084, 22.503641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.734558, 33.364704, 22.502687>,  <31.403143, 33.140739, 22.501099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734558, 33.364704, 22.502687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457142, 0.680520, -0.572638,
		-0.323333, 0.472637, 0.819799,
		0.828540, 0.559917, 0.003972,
		31.983120, 33.532681, 22.503880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129738, 33.801403, 22.770489>,  <31.403143, 33.140739, 22.501099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129738, 33.801403, 22.770489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456985, 33.841526, 22.543995>,  <31.653334, 33.865601, 22.408098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456985, 33.841526, 22.543995>,  <31.129738, 33.801403, 22.770489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456985, 33.841526, 22.543995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505686, 0.594319, -0.625353,
		0.273799, 0.797950, 0.536945,
		0.818117, 0.100305, -0.566236,
		31.702421, 33.871616, 22.374125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105614, 34.452808, 22.630360>,  <31.129738, 33.801403, 22.770489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105614, 34.452808, 22.630360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.333666, 34.298649, 22.340141>,  <31.470497, 34.206154, 22.166010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.333666, 34.298649, 22.340141>,  <31.105614, 34.452808, 22.630360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333666, 34.298649, 22.340141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545071, 0.483324, -0.685051,
		0.614693, 0.786043, 0.065487,
		0.570131, -0.385401, -0.725545,
		31.504705, 34.183029, 22.122478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329756, 34.924313, 23.153141>,  <31.105614, 34.452808, 22.630360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329756, 34.924313, 23.153141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.108829, 35.237564, 23.267445>,  <30.976274, 35.425514, 23.336027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.108829, 35.237564, 23.267445>,  <31.329756, 34.924313, 23.153141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108829, 35.237564, 23.267445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338664, -0.102440, 0.935314,
		0.761744, 0.613364, -0.208638,
		-0.552316, 0.783128, 0.285758,
		30.943134, 35.472504, 23.353172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751461, 35.242783, 23.653299>,  <31.329756, 34.924313, 23.153141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751461, 35.242783, 23.653299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.388464, 35.397282, 23.719353>,  <31.170666, 35.489979, 23.758986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.388464, 35.397282, 23.719353>,  <31.751461, 35.242783, 23.653299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388464, 35.397282, 23.719353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156521, -0.053886, 0.986204,
		0.389814, 0.920821, -0.011554,
		-0.907495, 0.386244, 0.165133,
		31.116215, 35.513153, 23.768892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871794, 35.784466, 24.200777>,  <31.751461, 35.242783, 23.653299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871794, 35.784466, 24.200777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.480021, 35.703777, 24.202351>,  <31.244957, 35.655365, 24.203295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.480021, 35.703777, 24.202351>,  <31.871794, 35.784466, 24.200777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480021, 35.703777, 24.202351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013734, -0.047208, 0.998791,
		-0.201294, 0.978304, 0.049008,
		-0.979434, -0.201724, 0.003933,
		31.186190, 35.643261, 24.203531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666965, 36.265202, 24.601345>,  <31.871794, 35.784466, 24.200777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666965, 36.265202, 24.601345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.395033, 35.972870, 24.625748>,  <31.231873, 35.797470, 24.640390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.395033, 35.972870, 24.625748>,  <31.666965, 36.265202, 24.601345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395033, 35.972870, 24.625748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224281, -0.127985, 0.966084,
		-0.698231, 0.670458, 0.250919,
		-0.679832, -0.730826, 0.061008,
		31.191084, 35.753624, 24.644051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305952, 36.330536, 25.243670>,  <31.666965, 36.265202, 24.601345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305952, 36.330536, 25.243670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.257187, 35.945614, 25.146425>,  <31.227928, 35.714661, 25.088078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.257187, 35.945614, 25.146425>,  <31.305952, 36.330536, 25.243670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257187, 35.945614, 25.146425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267588, -0.267737, 0.925588,
		-0.955789, 0.047787, 0.290143,
		-0.121913, -0.962306, -0.243113,
		31.220613, 35.656921, 25.073492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927097, 35.980419, 25.747572>,  <31.305952, 36.330536, 25.243670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927097, 35.980419, 25.747572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.102930, 35.673435, 25.560905>,  <31.208429, 35.489246, 25.448906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.102930, 35.673435, 25.560905>,  <30.927097, 35.980419, 25.747572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102930, 35.673435, 25.560905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279240, -0.377040, 0.883100,
		-0.853693, -0.518507, 0.048565,
		0.439583, -0.767458, -0.466664,
		31.234804, 35.443199, 25.420906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811169, 35.484276, 26.120424>,  <30.927097, 35.980419, 25.747572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811169, 35.484276, 26.120424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.121315, 35.345356, 25.909449>,  <31.307402, 35.262005, 25.782864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.121315, 35.345356, 25.909449>,  <30.811169, 35.484276, 26.120424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121315, 35.345356, 25.909449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397471, -0.380635, 0.834945,
		-0.490740, -0.857028, -0.157088,
		0.775365, -0.347304, -0.527437,
		31.353924, 35.241165, 25.751217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.029259, 37.307476, 21.135324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.381561, 37.197330, 20.981215>,  <32.592945, 37.131241, 20.888748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.381561, 37.197330, 20.981215>,  <32.029259, 37.307476, 21.135324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381561, 37.197330, 20.981215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392520, -0.030652, 0.919233,
		-0.264938, -0.960850, 0.081091,
		0.880759, -0.275369, -0.385273,
		32.645790, 37.114719, 20.865633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278999, 36.561989, 21.543858>,  <32.029259, 37.307476, 21.135324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278999, 36.561989, 21.543858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.552429, 36.819351, 21.406017>,  <32.716488, 36.973770, 21.323313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.552429, 36.819351, 21.406017>,  <32.278999, 36.561989, 21.543858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552429, 36.819351, 21.406017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425558, 0.032237, 0.904357,
		0.592982, -0.764842, -0.251772,
		0.683574, 0.643411, -0.344601,
		32.757500, 37.012375, 21.302637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036160, 36.224239, 21.590631>,  <32.278999, 36.561989, 21.543858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036160, 36.224239, 21.590631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.055016, 36.622417, 21.557501>,  <33.066330, 36.861324, 21.537622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.055016, 36.622417, 21.557501>,  <33.036160, 36.224239, 21.590631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055016, 36.622417, 21.557501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244336, 0.068907, 0.967239,
		0.968544, -0.065837, -0.239976,
		0.047145, 0.995448, -0.082826,
		33.069160, 36.921051, 21.532654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720032, 36.419350, 21.878342>,  <33.036160, 36.224239, 21.590631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720032, 36.419350, 21.878342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.491531, 36.745216, 21.918318>,  <33.354431, 36.940735, 21.942303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.491531, 36.745216, 21.918318>,  <33.720032, 36.419350, 21.878342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491531, 36.745216, 21.918318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332500, 0.118372, 0.935645,
		0.750408, 0.567722, -0.338497,
		-0.571255, 0.814665, 0.099940,
		33.320156, 36.989616, 21.948299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168549, 36.944111, 22.219597>,  <33.720032, 36.419350, 21.878342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168549, 36.944111, 22.219597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.801350, 37.097286, 22.260841>,  <33.581028, 37.189190, 22.285589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.801350, 37.097286, 22.260841>,  <34.168549, 36.944111, 22.219597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801350, 37.097286, 22.260841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221051, 0.278222, 0.934735,
		0.329259, 0.880880, -0.340057,
		-0.918000, 0.382940, 0.103113,
		33.525948, 37.212170, 22.291775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145123, 37.643082, 22.518772>,  <34.168549, 36.944111, 22.219597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145123, 37.643082, 22.518772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.775139, 37.517483, 22.604424>,  <33.553146, 37.442123, 22.655813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.775139, 37.517483, 22.604424>,  <34.145123, 37.643082, 22.518772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775139, 37.517483, 22.604424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075641, 0.400040, 0.913371,
		-0.372457, 0.861030, -0.346270,
		-0.924962, -0.313999, 0.214127,
		33.497650, 37.423283, 22.668661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898212, 38.213211, 22.840715>,  <34.145123, 37.643082, 22.518772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898212, 38.213211, 22.840715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.650028, 37.915241, 22.938789>,  <33.501118, 37.736458, 22.997633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.650028, 37.915241, 22.938789>,  <33.898212, 38.213211, 22.840715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650028, 37.915241, 22.938789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031757, 0.288518, 0.956948,
		-0.783595, 0.601533, -0.155357,
		-0.620459, -0.744926, 0.245184,
		33.463890, 37.691765, 23.012344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353878, 38.559769, 23.249352>,  <33.898212, 38.213211, 22.840715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353878, 38.559769, 23.249352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.363373, 38.170017, 23.338812>,  <33.369068, 37.936165, 23.392488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.363373, 38.170017, 23.338812>,  <33.353878, 38.559769, 23.249352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363373, 38.170017, 23.338812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114822, 0.224893, 0.967594,
		-0.993102, 0.002716, 0.117218,
		0.023734, -0.974380, 0.223653,
		33.370495, 37.877705, 23.405909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917126, 38.479507, 23.724617>,  <33.353878, 38.559769, 23.249352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917126, 38.479507, 23.724617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.127625, 38.144100, 23.781105>,  <33.253925, 37.942856, 23.814999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.127625, 38.144100, 23.781105>,  <32.917126, 38.479507, 23.724617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127625, 38.144100, 23.781105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075132, 0.211280, 0.974534,
		-0.847005, -0.502237, 0.174185,
		0.526249, -0.838522, 0.141221,
		33.285500, 37.892544, 23.823471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735977, 38.299221, 24.389580>,  <32.917126, 38.479507, 23.724617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735977, 38.299221, 24.389580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.023941, 38.027046, 24.334839>,  <33.196720, 37.863743, 24.301994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.023941, 38.027046, 24.334839>,  <32.735977, 38.299221, 24.389580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023941, 38.027046, 24.334839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114352, -0.078199, 0.990358,
		-0.684580, -0.728621, 0.021513,
		0.719913, -0.680439, -0.136853,
		33.239914, 37.822914, 24.293783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600075, 37.789253, 24.956839>,  <32.735977, 38.299221, 24.389580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600075, 37.789253, 24.956839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.982128, 37.767063, 24.840462>,  <33.211361, 37.753750, 24.770636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.982128, 37.767063, 24.840462>,  <32.600075, 37.789253, 24.956839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982128, 37.767063, 24.840462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295689, 0.121860, 0.947480,
		-0.017112, -0.990995, 0.132797,
		0.955131, -0.055480, -0.290941,
		33.268669, 37.750420, 24.753180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907917, 37.333637, 25.380407>,  <32.600075, 37.789253, 24.956839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907917, 37.333637, 25.380407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.168907, 37.599533, 25.234859>,  <33.325500, 37.759071, 25.147532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.168907, 37.599533, 25.234859>,  <32.907917, 37.333637, 25.380407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168907, 37.599533, 25.234859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267075, 0.247641, 0.931313,
		0.709192, -0.704835, -0.015957,
		0.652471, 0.664742, -0.363869,
		33.364647, 37.798954, 25.125698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271362, 37.697556, 25.668457>,  <32.907917, 37.333637, 25.380407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271362, 37.697556, 25.668457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.927397, 37.875408, 25.768728>,  <31.721016, 37.982121, 25.828892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.927397, 37.875408, 25.768728>,  <32.271362, 37.697556, 25.668457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927397, 37.875408, 25.768728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087800, 0.354945, -0.930755,
		-0.502824, -0.822383, -0.266185,
		-0.859918, 0.444635, 0.250680,
		31.669422, 38.008801, 25.843933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555618, 37.403366, 25.380379>,  <32.271362, 37.697556, 25.668457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555618, 37.403366, 25.380379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.484261, 37.791721, 25.444309>,  <31.441446, 38.024734, 25.482668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.484261, 37.791721, 25.444309>,  <31.555618, 37.403366, 25.380379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484261, 37.791721, 25.444309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299411, 0.101168, -0.948745,
		-0.937298, -0.217105, 0.272648,
		-0.178394, 0.970892, 0.159828,
		31.430742, 38.082989, 25.492258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889751, 37.554550, 24.919752>,  <31.555618, 37.403366, 25.380379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889751, 37.554550, 24.919752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.000177, 37.928333, 25.009708>,  <31.066433, 38.152603, 25.063683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.000177, 37.928333, 25.009708>,  <30.889751, 37.554550, 24.919752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000177, 37.928333, 25.009708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345074, 0.314746, -0.884228,
		-0.897058, 0.166499, 0.409347,
		0.276064, 0.934459, 0.224891,
		31.082996, 38.208672, 25.077175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333530, 38.011696, 24.703331>,  <30.889751, 37.554550, 24.919752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333530, 38.011696, 24.703331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.652565, 38.250893, 24.734982>,  <30.843987, 38.394409, 24.753971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.652565, 38.250893, 24.734982>,  <30.333530, 38.011696, 24.703331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652565, 38.250893, 24.734982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186449, 0.369156, -0.910473,
		-0.573667, 0.711427, 0.405929,
		0.797586, 0.597993, 0.079127,
		30.891840, 38.430290, 24.758720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079872, 38.661686, 24.472939>,  <30.333530, 38.011696, 24.703331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079872, 38.661686, 24.472939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478344, 38.683086, 24.445337>,  <30.717428, 38.695927, 24.428776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478344, 38.683086, 24.445337>,  <30.079872, 38.661686, 24.472939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478344, 38.683086, 24.445337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083526, 0.353699, -0.931623,
		-0.025434, 0.933828, 0.356816,
		0.996181, 0.053498, -0.069003,
		30.777199, 38.699135, 24.424637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284433, 39.372662, 24.233288>,  <30.079872, 38.661686, 24.472939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284433, 39.372662, 24.233288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.615961, 39.166336, 24.146574>,  <30.814877, 39.042542, 24.094545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.615961, 39.166336, 24.146574>,  <30.284433, 39.372662, 24.233288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615961, 39.166336, 24.146574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054747, 0.460348, -0.886049,
		0.556835, 0.722504, 0.409784,
		0.828817, -0.515817, -0.216783,
		30.864607, 39.011589, 24.081539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847889, 39.870285, 24.035145>,  <30.284433, 39.372662, 24.233288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847889, 39.870285, 24.035145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.951200, 39.529724, 23.852541>,  <31.013187, 39.325386, 23.742979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.951200, 39.529724, 23.852541>,  <30.847889, 39.870285, 24.035145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951200, 39.529724, 23.852541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336536, 0.522240, -0.783587,
		0.905558, 0.048752, 0.421412,
		0.258280, -0.851404, -0.456511,
		31.028685, 39.274303, 23.715588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397949, 40.124714, 23.539232>,  <30.847889, 39.870285, 24.035145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397949, 40.124714, 23.539232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.278049, 39.773163, 23.390787>,  <31.206110, 39.562233, 23.301720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.278049, 39.773163, 23.390787>,  <31.397949, 40.124714, 23.539232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278049, 39.773163, 23.390787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313961, 0.276453, -0.908297,
		0.900876, -0.388778, 0.193067,
		-0.299752, -0.878878, -0.371111,
		31.188124, 39.509499, 23.279453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047676, 39.895260, 23.134777>,  <31.397949, 40.124714, 23.539232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047676, 39.895260, 23.134777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737782, 39.679100, 23.003475>,  <31.551844, 39.549404, 22.924694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737782, 39.679100, 23.003475>,  <32.047676, 39.895260, 23.134777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737782, 39.679100, 23.003475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308385, 0.130268, -0.942300,
		0.551978, -0.831264, 0.065727,
		-0.774738, -0.540398, -0.328254,
		31.505360, 39.516979, 22.904999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351143, 39.545635, 22.610981>,  <32.047676, 39.895260, 23.134777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351143, 39.545635, 22.610981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.957373, 39.508347, 22.551353>,  <31.721111, 39.485973, 22.515577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.957373, 39.508347, 22.551353>,  <32.351143, 39.545635, 22.610981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957373, 39.508347, 22.551353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156470, -0.077861, -0.984609,
		0.080182, -0.992596, 0.091235,
		-0.984423, -0.093223, -0.149069,
		31.662046, 39.480381, 22.506634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363255, 39.067142, 22.098286>,  <32.351143, 39.545635, 22.610981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363255, 39.067142, 22.098286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.000092, 39.234734, 22.093170>,  <31.782194, 39.335289, 22.090101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.000092, 39.234734, 22.093170>,  <32.363255, 39.067142, 22.098286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000092, 39.234734, 22.093170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009926, -0.009015, -0.999910,
		-0.419053, -0.907953, 0.004026,
		-0.907907, 0.418975, -0.012790,
		31.727718, 39.360428, 22.089333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838257, 38.695145, 21.594204>,  <32.363255, 39.067142, 22.098286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838257, 38.695145, 21.594204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.683208, 39.062210, 21.629160>,  <31.590179, 39.282452, 21.650133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.683208, 39.062210, 21.629160>,  <31.838257, 38.695145, 21.594204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683208, 39.062210, 21.629160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007708, 0.098026, -0.995154,
		-0.921786, -0.385071, -0.045071,
		-0.387623, 0.917666, 0.087391,
		31.566921, 39.337509, 21.655376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363510, 38.809383, 21.000710>,  <31.838257, 38.695145, 21.594204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363510, 38.809383, 21.000710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.455997, 39.178028, 21.125397>,  <31.511490, 39.399216, 21.200209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.455997, 39.178028, 21.125397>,  <31.363510, 38.809383, 21.000710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455997, 39.178028, 21.125397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225629, 0.260869, -0.938637,
		-0.946377, 0.287362, -0.147624,
		0.231218, 0.921613, 0.311718,
		31.525362, 39.454514, 21.218912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266958, 38.082344, 21.103189>,  <31.363510, 38.809383, 21.000710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266958, 38.082344, 21.103189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.968044, 37.845486, 20.982571>,  <30.788696, 37.703369, 20.910200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.968044, 37.845486, 20.982571>,  <31.266958, 38.082344, 21.103189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968044, 37.845486, 20.982571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147942, -0.590656, 0.793246,
		-0.647827, 0.548169, 0.528991,
		-0.747284, -0.592146, -0.301546,
		30.743858, 37.667843, 20.892107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174135, 37.757309, 21.681850>,  <31.266958, 38.082344, 21.103189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174135, 37.757309, 21.681850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.905394, 37.571091, 21.451414>,  <30.744148, 37.459362, 21.313152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.905394, 37.571091, 21.451414>,  <31.174135, 37.757309, 21.681850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905394, 37.571091, 21.451414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279529, -0.560904, 0.779263,
		-0.685911, 0.684586, 0.246714,
		-0.671856, -0.465541, -0.576092,
		30.703836, 37.431427, 21.278587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599228, 37.829845, 22.075062>,  <31.174135, 37.757309, 21.681850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599228, 37.829845, 22.075062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.550592, 37.520290, 21.826447>,  <30.521412, 37.334557, 21.677279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.550592, 37.520290, 21.826447>,  <30.599228, 37.829845, 22.075062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550592, 37.520290, 21.826447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137041, -0.607096, 0.782722,
		-0.983075, 0.180347, -0.032239,
		-0.121589, -0.773892, -0.621536,
		30.514116, 37.288124, 21.639986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049147, 37.444763, 22.282593>,  <30.599228, 37.829845, 22.075062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049147, 37.444763, 22.282593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.254349, 37.182091, 22.061468>,  <30.377470, 37.024487, 21.928793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.254349, 37.182091, 22.061468>,  <30.049147, 37.444763, 22.282593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254349, 37.182091, 22.061468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114238, -0.690513, 0.714242,
		-0.850751, -0.303256, -0.429253,
		0.513004, -0.656679, -0.552811,
		30.408251, 36.985088, 21.895624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681772, 36.811447, 22.193829>,  <30.049147, 37.444763, 22.282593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681772, 36.811447, 22.193829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070427, 36.726124, 22.152992>,  <30.303619, 36.674931, 22.128490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070427, 36.726124, 22.152992>,  <29.681772, 36.811447, 22.193829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070427, 36.726124, 22.152992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078648, -0.698621, 0.711156,
		-0.223015, -0.682957, -0.695582,
		0.971637, -0.213305, -0.102090,
		30.361917, 36.662132, 22.122366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748409, 36.082172, 22.411491>,  <29.681772, 36.811447, 22.193829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748409, 36.082172, 22.411491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.134375, 36.183327, 22.383226>,  <30.365953, 36.244019, 22.366266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.134375, 36.183327, 22.383226>,  <29.748409, 36.082172, 22.411491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134375, 36.183327, 22.383226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232507, -0.697870, 0.677435,
		0.121998, -0.670095, -0.732181,
		0.964913, 0.252883, -0.070664,
		30.423849, 36.259190, 22.362028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150364, 35.603683, 22.172699>,  <29.748409, 36.082172, 22.411491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150364, 35.603683, 22.172699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.392843, 35.827030, 22.399237>,  <30.538330, 35.961040, 22.535160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.392843, 35.827030, 22.399237>,  <30.150364, 35.603683, 22.172699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392843, 35.827030, 22.399237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027946, -0.696707, 0.716811,
		0.794822, -0.450357, -0.406739,
		0.606198, 0.558370, 0.566344,
		30.574703, 35.994541, 22.569139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549059, 35.063068, 22.513309>,  <30.150364, 35.603683, 22.172699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549059, 35.063068, 22.513309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576143, 35.400585, 22.726263>,  <30.592394, 35.603096, 22.854034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576143, 35.400585, 22.726263>,  <30.549059, 35.063068, 22.513309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576143, 35.400585, 22.726263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186952, -0.513426, 0.837522,
		0.980033, -0.156241, 0.122982,
		0.067713, 0.843790, 0.532384,
		30.596457, 35.653721, 22.885979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182112, 35.025852, 22.129622>,  <30.549059, 35.063068, 22.513309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182112, 35.025852, 22.129622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.309708, 34.711430, 21.917828>,  <31.386265, 34.522774, 21.790751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.309708, 34.711430, 21.917828>,  <31.182112, 35.025852, 22.129622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309708, 34.711430, 21.917828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402773, 0.393276, -0.826503,
		0.857915, 0.476910, -0.191152,
		0.318992, -0.786060, -0.529484,
		31.405405, 34.475613, 21.758982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436626, 35.295433, 21.460812>,  <31.182112, 35.025852, 22.129622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436626, 35.295433, 21.460812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391060, 34.902840, 21.399204>,  <31.363720, 34.667286, 21.362240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391060, 34.902840, 21.399204>,  <31.436626, 35.295433, 21.460812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391060, 34.902840, 21.399204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370136, 0.185794, -0.910209,
		0.921967, -0.046680, -0.384445,
		-0.113917, -0.981479, -0.154018,
		31.356884, 34.608395, 21.352999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720308, 35.157143, 20.821123>,  <31.436626, 35.295433, 21.460812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720308, 35.157143, 20.821123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.467283, 34.852470, 20.877264>,  <31.315468, 34.669666, 20.910948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.467283, 34.852470, 20.877264>,  <31.720308, 35.157143, 20.821123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467283, 34.852470, 20.877264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289206, 0.064186, -0.955112,
		0.718486, -0.644761, -0.260886,
		-0.632564, -0.761685, 0.140352,
		31.277514, 34.623966, 20.919369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940756, 34.676220, 20.386459>,  <31.720308, 35.157143, 20.821123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940756, 34.676220, 20.386459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.561079, 34.573818, 20.459661>,  <31.333273, 34.512375, 20.503582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.561079, 34.573818, 20.459661>,  <31.940756, 34.676220, 20.386459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561079, 34.573818, 20.459661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155384, -0.124425, -0.979987,
		0.273654, -0.958634, 0.078324,
		-0.949194, -0.256007, 0.183005,
		31.276321, 34.497017, 20.514563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879721, 34.136971, 20.027378>,  <31.940756, 34.676220, 20.386459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879721, 34.136971, 20.027378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.497421, 34.243313, 20.077768>,  <31.268042, 34.307117, 20.108002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.497421, 34.243313, 20.077768>,  <31.879721, 34.136971, 20.027378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497421, 34.243313, 20.077768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188744, -0.225659, -0.955748,
		-0.225659, -0.937230, 0.265851,
		0.955748, -0.265851, -0.125975,
		31.210697, 34.323067, 20.115561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492250, 33.539181, 19.723991>,  <31.879721, 34.136971, 20.027378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492250, 33.539181, 19.723991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.237316, 33.847404, 19.726522>,  <31.084356, 34.032337, 19.728041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.237316, 33.847404, 19.726522>,  <31.492250, 33.539181, 19.723991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237316, 33.847404, 19.726522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360998, -0.291308, -0.885901,
		-0.680797, -0.566900, 0.463832,
		-0.637335, 0.770561, 0.006328,
		31.046116, 34.078571, 19.728420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834988, 33.288315, 19.451178>,  <31.492250, 33.539181, 19.723991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834988, 33.288315, 19.451178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.799791, 33.683987, 19.404215>,  <30.778673, 33.921391, 19.376038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.799791, 33.683987, 19.404215>,  <30.834988, 33.288315, 19.451178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799791, 33.683987, 19.404215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388287, -0.142599, -0.910439,
		-0.917328, -0.034521, 0.396632,
		-0.087989, 0.989178, -0.117406,
		30.773396, 33.980740, 19.368994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344944, 33.276756, 18.946499>,  <30.834988, 33.288315, 19.451178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344944, 33.276756, 18.946499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.531433, 33.630470, 18.936096>,  <30.643326, 33.842697, 18.929855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.531433, 33.630470, 18.936096>,  <30.344944, 33.276756, 18.946499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531433, 33.630470, 18.936096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294631, 0.127485, -0.947069,
		-0.834164, 0.449207, 0.319974,
		0.466222, 0.884285, -0.026008,
		30.671299, 33.895756, 18.928293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894907, 33.684731, 18.543343>,  <30.344944, 33.276756, 18.946499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894907, 33.684731, 18.543343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.255451, 33.856010, 18.517445>,  <30.471779, 33.958778, 18.501905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.255451, 33.856010, 18.517445>,  <29.894907, 33.684731, 18.543343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255451, 33.856010, 18.517445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090153, 0.039300, -0.995152,
		-0.423577, 0.902830, 0.074027,
		0.901363, 0.428197, -0.064746,
		30.525860, 33.984470, 18.498020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.743225, 31.273783, 34.061184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069065, 31.333509, 33.836998>,  <36.264568, 31.369345, 33.702484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069065, 31.333509, 33.836998>,  <35.743225, 31.273783, 34.061184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069065, 31.333509, 33.836998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579917, 0.227716, -0.782203,
		0.010833, 0.962211, 0.272089,
		0.814604, 0.149315, -0.560469,
		36.313446, 31.378304, 33.668858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642292, 31.813889, 33.626232>,  <35.743225, 31.273783, 34.061184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642292, 31.813889, 33.626232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940342, 31.628437, 33.434471>,  <36.119171, 31.517166, 33.319412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940342, 31.628437, 33.434471>,  <35.642292, 31.813889, 33.626232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940342, 31.628437, 33.434471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474650, 0.136307, -0.869556,
		0.468499, 0.875481, -0.118496,
		0.745128, -0.463630, -0.479407,
		36.163879, 31.489347, 33.290649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797840, 32.203243, 33.047523>,  <35.642292, 31.813889, 33.626232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797840, 32.203243, 33.047523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973671, 31.855114, 32.958702>,  <36.079170, 31.646236, 32.905407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973671, 31.855114, 32.958702>,  <35.797840, 32.203243, 33.047523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973671, 31.855114, 32.958702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378188, 0.044903, -0.924639,
		0.814708, 0.490426, -0.309408,
		0.439574, -0.870325, -0.222056,
		36.105541, 31.594017, 32.892086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363094, 32.351521, 32.591602>,  <35.797840, 32.203243, 33.047523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363094, 32.351521, 32.591602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207512, 31.985548, 32.548500>,  <36.114162, 31.765965, 32.522640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207512, 31.985548, 32.548500>,  <36.363094, 32.351521, 32.591602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207512, 31.985548, 32.548500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306680, 0.238890, -0.921346,
		0.868710, -0.325320, -0.373510,
		-0.388960, -0.914931, -0.107757,
		36.090824, 31.711069, 32.516174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506977, 32.161545, 31.898937>,  <36.363094, 32.351521, 32.591602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506977, 32.161545, 31.898937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205280, 31.922733, 32.008244>,  <36.024261, 31.779446, 32.073826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205280, 31.922733, 32.008244>,  <36.506977, 32.161545, 31.898937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205280, 31.922733, 32.008244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378307, 0.054978, -0.924046,
		0.536663, -0.800330, -0.267328,
		-0.754239, -0.597034, 0.273266,
		35.979008, 31.743624, 32.090225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417938, 31.558338, 31.432899>,  <36.506977, 32.161545, 31.898937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417938, 31.558338, 31.432899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060429, 31.620148, 31.601326>,  <35.845924, 31.657234, 31.702381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060429, 31.620148, 31.601326>,  <36.417938, 31.558338, 31.432899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060429, 31.620148, 31.601326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431296, -0.038396, -0.901393,
		-0.123123, -0.987242, 0.100964,
		-0.893770, 0.154528, 0.421066,
		35.792297, 31.666506, 31.727646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047188, 31.116468, 31.042933>,  <36.417938, 31.558338, 31.432899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047188, 31.116468, 31.042933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757153, 31.307037, 31.241838>,  <35.583134, 31.421379, 31.361183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757153, 31.307037, 31.241838>,  <36.047188, 31.116468, 31.042933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757153, 31.307037, 31.241838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635946, -0.186159, -0.748944,
		-0.264242, -0.859283, 0.437960,
		-0.725086, 0.476421, 0.497266,
		35.539627, 31.449965, 31.391018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430973, 30.675920, 31.049696>,  <36.047188, 31.116468, 31.042933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430973, 30.675920, 31.049696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.314831, 31.053467, 31.112698>,  <35.245144, 31.279995, 31.150499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.314831, 31.053467, 31.112698>,  <35.430973, 30.675920, 31.049696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314831, 31.053467, 31.112698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635425, -0.067108, -0.769241,
		-0.715490, -0.323439, 0.619242,
		-0.290359, 0.943866, 0.157506,
		35.227722, 31.336626, 31.159950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815594, 30.577782, 30.877321>,  <35.430973, 30.675920, 31.049696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815594, 30.577782, 30.877321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851540, 30.976160, 30.878935>,  <34.873108, 31.215187, 30.879902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851540, 30.976160, 30.878935>,  <34.815594, 30.577782, 30.877321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851540, 30.976160, 30.878935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612495, 0.058460, -0.788310,
		-0.785350, 0.068374, 0.615265,
		0.089868, 0.995946, 0.004033,
		34.878502, 31.274944, 30.880144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115742, 30.772968, 30.710325>,  <34.815594, 30.577782, 30.877321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115742, 30.772968, 30.710325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357067, 31.080820, 30.626715>,  <34.501862, 31.265532, 30.576550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357067, 31.080820, 30.626715>,  <34.115742, 30.772968, 30.710325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357067, 31.080820, 30.626715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534897, 0.196097, -0.821846,
		-0.591526, 0.607634, 0.529979,
		0.603309, 0.769627, -0.209025,
		34.538059, 31.311708, 30.564007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712513, 31.192589, 30.512907>,  <34.115742, 30.772968, 30.710325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712513, 31.192589, 30.512907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.061066, 31.322786, 30.366074>,  <34.270195, 31.400906, 30.277973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.061066, 31.322786, 30.366074>,  <33.712513, 31.192589, 30.512907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061066, 31.322786, 30.366074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467069, 0.321388, -0.823745,
		-0.150147, 0.889249, 0.432079,
		0.871380, 0.325494, -0.367085,
		34.322479, 31.420435, 30.255949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471104, 31.695415, 30.136480>,  <33.712513, 31.192589, 30.512907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471104, 31.695415, 30.136480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826138, 31.617357, 29.969576>,  <34.039158, 31.570522, 29.869432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826138, 31.617357, 29.969576>,  <33.471104, 31.695415, 30.136480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826138, 31.617357, 29.969576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338401, 0.338342, -0.878072,
		0.312529, 0.920567, 0.234270,
		0.887587, -0.195146, -0.417263,
		34.092415, 31.558813, 29.844397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500580, 32.289814, 30.492777>,  <33.471104, 31.695415, 30.136480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500580, 32.289814, 30.492777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.222816, 32.562180, 30.585869>,  <33.056160, 32.725597, 30.641724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.222816, 32.562180, 30.585869>,  <33.500580, 32.289814, 30.492777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222816, 32.562180, 30.585869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173756, -0.155189, 0.972484,
		0.698291, 0.715737, -0.010548,
		-0.694405, 0.680909, 0.232731,
		33.014496, 32.766453, 30.655687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842957, 32.685909, 31.010717>,  <33.500580, 32.289814, 30.492777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842957, 32.685909, 31.010717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448818, 32.751114, 31.030777>,  <33.212334, 32.790237, 31.042812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448818, 32.751114, 31.030777>,  <33.842957, 32.685909, 31.010717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448818, 32.751114, 31.030777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046456, -0.026399, 0.998571,
		0.164101, 0.986271, 0.018439,
		-0.985349, 0.163010, 0.050151,
		33.153214, 32.800018, 31.045822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694317, 33.250015, 31.420424>,  <33.842957, 32.685909, 31.010717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694317, 33.250015, 31.420424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369286, 33.017185, 31.432405>,  <33.174267, 32.877487, 31.439594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369286, 33.017185, 31.432405>,  <33.694317, 33.250015, 31.420424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369286, 33.017185, 31.432405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092557, 0.179612, 0.979374,
		-0.575452, 0.793048, -0.199825,
		-0.812581, -0.582078, 0.029956,
		33.125511, 32.842564, 31.441393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312584, 33.571598, 31.846504>,  <33.694317, 33.250015, 31.420424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312584, 33.571598, 31.846504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144630, 33.208626, 31.840036>,  <33.043858, 32.990841, 31.836155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144630, 33.208626, 31.840036>,  <33.312584, 33.571598, 31.846504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144630, 33.208626, 31.840036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162019, 0.057412, 0.985116,
		-0.892999, 0.416254, -0.171128,
		-0.419884, -0.907434, -0.016172,
		33.018665, 32.936394, 31.835184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747368, 33.644478, 32.357346>,  <33.312584, 33.571598, 31.846504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747368, 33.644478, 32.357346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813324, 33.251549, 32.321892>,  <32.852898, 33.015793, 32.300621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813324, 33.251549, 32.321892>,  <32.747368, 33.644478, 32.357346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813324, 33.251549, 32.321892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007924, -0.088542, 0.996041,
		-0.986280, -0.164937, -0.006815,
		0.164888, -0.982322, -0.088634,
		32.862789, 32.956852, 32.295303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222900, 33.290104, 32.774841>,  <32.747368, 33.644478, 32.357346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222900, 33.290104, 32.774841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.544495, 33.054501, 32.742153>,  <32.737450, 32.913139, 32.722542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.544495, 33.054501, 32.742153>,  <32.222900, 33.290104, 32.774841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544495, 33.054501, 32.742153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091026, -0.013900, 0.995751,
		-0.587644, -0.808006, 0.042440,
		0.803983, -0.589011, -0.081718,
		32.785690, 32.877796, 32.717636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113052, 32.737450, 33.197182>,  <32.222900, 33.290104, 32.774841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113052, 32.737450, 33.197182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507542, 32.736694, 33.131023>,  <32.744236, 32.736240, 33.091328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507542, 32.736694, 33.131023>,  <32.113052, 32.737450, 33.197182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507542, 32.736694, 33.131023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165176, -0.041489, 0.985391,
		-0.008716, -0.999137, -0.040607,
		0.986226, -0.001881, -0.165395,
		32.803410, 32.736130, 33.081406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394913, 32.202282, 33.663109>,  <32.113052, 32.737450, 33.197182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394913, 32.202282, 33.663109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.699463, 32.443653, 33.568295>,  <32.882191, 32.588474, 33.511406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.699463, 32.443653, 33.568295>,  <32.394913, 32.202282, 33.663109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699463, 32.443653, 33.568295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281414, 0.021777, 0.959339,
		0.584052, -0.797122, -0.153232,
		0.761374, 0.603426, -0.237040,
		32.927876, 32.624680, 33.497181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025375, 31.862019, 33.947720>,  <32.394913, 32.202282, 33.663109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025375, 31.862019, 33.947720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131119, 32.244637, 33.898502>,  <33.194565, 32.474209, 33.868973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131119, 32.244637, 33.898502>,  <33.025375, 31.862019, 33.947720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131119, 32.244637, 33.898502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253769, 0.054096, 0.965751,
		0.930440, -0.286525, -0.228441,
		0.264354, 0.956544, -0.123044,
		33.210426, 32.531601, 33.861588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614777, 31.959135, 34.456272>,  <33.025375, 31.862019, 33.947720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614777, 31.959135, 34.456272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493061, 32.327908, 34.360394>,  <33.420033, 32.549171, 34.302868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493061, 32.327908, 34.360394>,  <33.614777, 31.959135, 34.456272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493061, 32.327908, 34.360394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153011, 0.295664, 0.942958,
		0.940210, 0.250259, -0.231033,
		-0.304292, 0.921929, -0.239693,
		33.401775, 32.604485, 34.288486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163460, 32.413376, 34.647831>,  <33.614777, 31.959135, 34.456272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163460, 32.413376, 34.647831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827538, 32.630486, 34.643425>,  <33.625984, 32.760750, 34.640781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827538, 32.630486, 34.643425>,  <34.163460, 32.413376, 34.647831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827538, 32.630486, 34.643425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200725, 0.329293, 0.922646,
		0.504417, 0.772632, -0.385491,
		-0.839806, 0.542776, -0.011015,
		33.575596, 32.793320, 34.640121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323765, 33.000103, 34.943840>,  <34.163460, 32.413376, 34.647831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323765, 33.000103, 34.943840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926197, 33.026825, 34.978832>,  <33.687656, 33.042858, 34.999828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926197, 33.026825, 34.978832>,  <34.323765, 33.000103, 34.943840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926197, 33.026825, 34.978832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105638, 0.355661, 0.928626,
		0.030928, 0.932224, -0.360557,
		-0.993924, 0.066809, 0.087478,
		33.628021, 33.046867, 35.005077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290932, 33.549225, 35.331139>,  <34.323765, 33.000103, 34.943840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290932, 33.549225, 35.331139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921463, 33.398487, 35.358917>,  <33.699783, 33.308044, 35.375584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921463, 33.398487, 35.358917>,  <34.290932, 33.549225, 35.331139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921463, 33.398487, 35.358917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030525, 0.253019, 0.966980,
		-0.381975, 0.891049, -0.245209,
		-0.923669, -0.376847, 0.069448,
		33.644363, 33.285435, 35.379753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916389, 34.214973, 35.561165>,  <34.290932, 33.549225, 35.331139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916389, 34.214973, 35.561165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725597, 33.873352, 35.644188>,  <33.611122, 33.668381, 35.694000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725597, 33.873352, 35.644188>,  <33.916389, 34.214973, 35.561165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725597, 33.873352, 35.644188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094994, 0.284863, 0.953850,
		-0.873765, 0.435251, -0.217004,
		-0.476981, -0.854055, 0.207557,
		33.582504, 33.617134, 35.706455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184601, 34.286263, 35.823753>,  <33.916389, 34.214973, 35.561165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184601, 34.286263, 35.823753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383926, 33.970695, 35.967587>,  <33.503521, 33.781357, 36.053886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383926, 33.970695, 35.967587>,  <33.184601, 34.286263, 35.823753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383926, 33.970695, 35.967587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127807, 0.343373, 0.930462,
		-0.857525, -0.509619, 0.070279,
		0.498313, -0.788913, 0.359584,
		33.533421, 33.734020, 36.075462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413368, 34.910786, 35.990791>,  <33.184601, 34.286263, 35.823753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413368, 34.910786, 35.990791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785999, 35.050648, 35.950977>,  <34.009579, 35.134567, 35.927090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785999, 35.050648, 35.950977>,  <33.413368, 34.910786, 35.990791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785999, 35.050648, 35.950977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290761, 0.552235, -0.781342,
		-0.218237, 0.756819, 0.616115,
		0.931575, 0.349660, -0.099535,
		34.065472, 35.155544, 35.921116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294601, 35.583138, 35.950916>,  <33.413368, 34.910786, 35.990791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294601, 35.583138, 35.950916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626324, 35.490585, 35.747459>,  <33.825356, 35.435055, 35.625385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626324, 35.490585, 35.747459>,  <33.294601, 35.583138, 35.950916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626324, 35.490585, 35.747459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389764, 0.412750, -0.823238,
		0.400420, 0.880967, 0.252114,
		0.829306, -0.231376, -0.508643,
		33.875114, 35.421173, 35.594868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559242, 36.156952, 35.471031>,  <33.294601, 35.583138, 35.950916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559242, 36.156952, 35.471031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682331, 35.812504, 35.309155>,  <33.756184, 35.605835, 35.212029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682331, 35.812504, 35.309155>,  <33.559242, 36.156952, 35.471031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682331, 35.812504, 35.309155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410078, 0.263767, -0.873076,
		0.858571, 0.434617, -0.271962,
		0.307719, -0.861124, -0.404690,
		33.774647, 35.554165, 35.187748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604290, 36.446270, 34.935417>,  <33.559242, 36.156952, 35.471031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604290, 36.446270, 34.935417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619072, 36.052197, 34.868427>,  <33.627941, 35.815754, 34.828236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619072, 36.052197, 34.868427>,  <33.604290, 36.446270, 34.935417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619072, 36.052197, 34.868427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448895, 0.133362, -0.883577,
		0.892820, 0.107830, -0.437316,
		0.036955, -0.985184, -0.167473,
		33.630157, 35.756641, 34.818184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890404, 36.369850, 34.306721>,  <33.604290, 36.446270, 34.935417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890404, 36.369850, 34.306721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721828, 36.009792, 34.350773>,  <33.620682, 35.793758, 34.377205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721828, 36.009792, 34.350773>,  <33.890404, 36.369850, 34.306721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721828, 36.009792, 34.350773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268770, 0.007997, -0.963171,
		0.866112, -0.435518, -0.245302,
		-0.421440, -0.900145, 0.110128,
		33.595398, 35.739750, 34.383812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105515, 35.912468, 33.747250>,  <33.890404, 36.369850, 34.306721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105515, 35.912468, 33.747250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747063, 35.778988, 33.864273>,  <33.531990, 35.698898, 33.934486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747063, 35.778988, 33.864273>,  <34.105515, 35.912468, 33.747250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747063, 35.778988, 33.864273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351059, 0.129767, -0.927318,
		0.271484, -0.933704, -0.233438,
		-0.896133, -0.333703, 0.292556,
		33.478222, 35.678879, 33.952042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845863, 35.513721, 33.117443>,  <34.105515, 35.912468, 33.747250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845863, 35.513721, 33.117443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531780, 35.555374, 33.361607>,  <33.343330, 35.580364, 33.508106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531780, 35.555374, 33.361607>,  <33.845863, 35.513721, 33.117443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531780, 35.555374, 33.361607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602724, 0.097547, -0.791965,
		-0.142012, -0.989768, -0.013833,
		-0.785211, 0.104131, 0.610410,
		33.296215, 35.586613, 33.544731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357082, 35.054295, 32.761921>,  <33.845863, 35.513721, 33.117443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357082, 35.054295, 32.761921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150810, 35.307831, 32.992508>,  <33.027046, 35.459953, 33.130859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150810, 35.307831, 32.992508>,  <33.357082, 35.054295, 32.761921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150810, 35.307831, 32.992508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534587, 0.287761, -0.794613,
		-0.669547, -0.717938, 0.190453,
		-0.515678, 0.633845, 0.576470,
		32.996105, 35.497986, 33.165447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602333, 34.814110, 32.725582>,  <33.357082, 35.054295, 32.761921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602333, 34.814110, 32.725582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.637985, 35.203991, 32.807560>,  <32.659378, 35.437920, 32.856747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.637985, 35.203991, 32.807560>,  <32.602333, 34.814110, 32.725582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637985, 35.203991, 32.807560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401051, 0.223469, -0.888380,
		-0.911709, -0.003013, 0.410825,
		0.089130, 0.974706, 0.204947,
		32.664722, 35.496403, 32.869045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051624, 34.997013, 32.447414>,  <32.602333, 34.814110, 32.725582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051624, 34.997013, 32.447414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.251167, 35.340633, 32.493336>,  <32.370892, 35.546806, 32.520889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.251167, 35.340633, 32.493336>,  <32.051624, 34.997013, 32.447414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251167, 35.340633, 32.493336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331664, 0.311596, -0.890453,
		-0.800713, 0.406134, 0.440357,
		0.498856, 0.859048, 0.114799,
		32.400826, 35.598347, 32.527775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569132, 35.584011, 32.146946>,  <32.051624, 34.997013, 32.447414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569132, 35.584011, 32.146946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.932652, 35.750439, 32.159386>,  <32.150764, 35.850296, 32.166847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.932652, 35.750439, 32.159386>,  <31.569132, 35.584011, 32.146946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932652, 35.750439, 32.159386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196166, 0.491875, -0.848279,
		-0.368241, 0.764816, 0.528635,
		0.908800, 0.416071, 0.031098,
		32.205292, 35.875259, 32.168716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444162, 36.210350, 31.934601>,  <31.569132, 35.584011, 32.146946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444162, 36.210350, 31.934601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832047, 36.137737, 31.869225>,  <32.064777, 36.094170, 31.829998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832047, 36.137737, 31.869225>,  <31.444162, 36.210350, 31.934601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832047, 36.137737, 31.869225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058315, 0.477720, -0.876575,
		0.237203, 0.859553, 0.452663,
		0.969708, -0.181529, -0.163441,
		32.122959, 36.083279, 31.820192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699537, 36.767479, 31.627178>,  <31.444162, 36.210350, 31.934601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699537, 36.767479, 31.627178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.963505, 36.482613, 31.531406>,  <32.121887, 36.311691, 31.473944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.963505, 36.482613, 31.531406>,  <31.699537, 36.767479, 31.627178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963505, 36.482613, 31.531406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066539, 0.262020, -0.962766,
		0.748384, 0.651280, 0.125525,
		0.659920, -0.712166, -0.239427,
		32.161480, 36.268963, 31.459578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143944, 37.058414, 31.166210>,  <31.699537, 36.767479, 31.627178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143944, 37.058414, 31.166210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.168903, 36.665897, 31.093365>,  <32.183880, 36.430386, 31.049658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.168903, 36.665897, 31.093365>,  <32.143944, 37.058414, 31.166210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168903, 36.665897, 31.093365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027888, 0.180686, -0.983145,
		0.997662, 0.066424, -0.016092,
		0.062397, -0.981295, -0.182116,
		32.187622, 36.371510, 31.038731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581867, 36.945160, 30.541758>,  <32.143944, 37.058414, 31.166210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581867, 36.945160, 30.541758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.376747, 36.603863, 30.579744>,  <32.253677, 36.399086, 30.602535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.376747, 36.603863, 30.579744>,  <32.581867, 36.945160, 30.541758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376747, 36.603863, 30.579744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161064, -0.013038, -0.986858,
		0.843266, -0.521353, -0.130741,
		-0.512797, -0.853241, 0.094966,
		32.222908, 36.347889, 30.608234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882423, 36.469002, 30.066008>,  <32.581867, 36.945160, 30.541758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882423, 36.469002, 30.066008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512859, 36.331131, 30.132437>,  <32.291119, 36.248409, 30.172295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512859, 36.331131, 30.132437>,  <32.882423, 36.469002, 30.066008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512859, 36.331131, 30.132437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170383, -0.017977, -0.985214,
		0.342569, -0.938548, -0.042118,
		-0.923913, -0.344680, 0.166071,
		32.235683, 36.227726, 30.182259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738403, 36.044926, 29.427813>,  <32.882423, 36.469002, 30.066008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738403, 36.044926, 29.427813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388741, 36.083202, 29.618259>,  <32.178944, 36.106171, 29.732527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388741, 36.083202, 29.618259>,  <32.738403, 36.044926, 29.427813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388741, 36.083202, 29.618259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467715, 0.097979, -0.878432,
		-0.130711, -0.990577, -0.040892,
		-0.874161, 0.095695, 0.476115,
		32.126492, 36.111912, 29.761093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329369, 35.739754, 29.025476>,  <32.738403, 36.044926, 29.427813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329369, 35.739754, 29.025476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.126854, 36.007111, 29.243441>,  <32.005344, 36.167526, 29.374218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.126854, 36.007111, 29.243441>,  <32.329369, 35.739754, 29.025476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126854, 36.007111, 29.243441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497767, 0.289488, -0.817573,
		-0.704206, -0.685161, 0.186142,
		-0.506283, 0.668395, 0.544909,
		31.974970, 36.207630, 29.406914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615137, 35.694515, 28.822935>,  <32.329369, 35.739754, 29.025476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615137, 35.694515, 28.822935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.687796, 36.055431, 28.979330>,  <31.731390, 36.271980, 29.073168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.687796, 36.055431, 28.979330>,  <31.615137, 35.694515, 28.822935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687796, 36.055431, 28.979330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548284, 0.422994, -0.721430,
		-0.816326, -0.083327, 0.571549,
		0.181647, 0.902293, 0.390988,
		31.742290, 36.326118, 29.096626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028322, 35.948441, 28.688417>,  <31.615137, 35.694515, 28.822935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028322, 35.948441, 28.688417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.249100, 36.269825, 28.777693>,  <31.381565, 36.462654, 28.831257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.249100, 36.269825, 28.777693>,  <31.028322, 35.948441, 28.688417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249100, 36.269825, 28.777693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424071, 0.500902, -0.754494,
		-0.718000, 0.321790, 0.617193,
		0.551942, 0.803460, 0.223186,
		31.414682, 36.510864, 28.844648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525368, 36.540813, 28.688017>,  <31.028322, 35.948441, 28.688417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525368, 36.540813, 28.688017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.900778, 36.669071, 28.636850>,  <31.126024, 36.746025, 28.606150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.900778, 36.669071, 28.636850>,  <30.525368, 36.540813, 28.688017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900778, 36.669071, 28.636850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296610, 0.559396, -0.774014,
		-0.176623, 0.764373, 0.620112,
		0.938524, 0.320640, -0.127919,
		31.182335, 36.765263, 28.598475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426044, 37.294983, 28.509626>,  <30.525368, 36.540813, 28.688017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426044, 37.294983, 28.509626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.801620, 37.208992, 28.402168>,  <31.026966, 37.157398, 28.337694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.801620, 37.208992, 28.402168>,  <30.426044, 37.294983, 28.509626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801620, 37.208992, 28.402168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055551, 0.675815, -0.734975,
		0.339561, 0.705022, 0.622609,
		0.938942, -0.214982, -0.268645,
		31.083303, 37.144497, 28.321575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760803, 38.024940, 28.299904>,  <30.426044, 37.294983, 28.509626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760803, 38.024940, 28.299904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.993368, 37.738155, 28.146057>,  <31.132908, 37.566086, 28.053749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.993368, 37.738155, 28.146057>,  <30.760803, 38.024940, 28.299904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993368, 37.738155, 28.146057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113907, 0.539801, -0.834051,
		0.805595, 0.441118, 0.395514,
		0.581414, -0.716959, -0.384615,
		31.167791, 37.523067, 28.030672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139807, 38.429302, 27.851315>,  <30.760803, 38.024940, 28.299904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139807, 38.429302, 27.851315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.200560, 38.055935, 27.721294>,  <31.237011, 37.831913, 27.643282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.200560, 38.055935, 27.721294>,  <31.139807, 38.429302, 27.851315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200560, 38.055935, 27.721294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102356, 0.341950, -0.934127,
		0.983084, 0.108605, 0.147477,
		0.151881, -0.933421, -0.325049,
		31.246124, 37.775909, 27.623779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767984, 38.429306, 27.422594>,  <31.139807, 38.429302, 27.851315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767984, 38.429306, 27.422594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537254, 38.127701, 27.296902>,  <31.398817, 37.946739, 27.221487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537254, 38.127701, 27.296902>,  <31.767984, 38.429306, 27.422594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537254, 38.127701, 27.296902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274441, 0.183436, -0.943946,
		0.769388, -0.630727, 0.101122,
		-0.576823, -0.754012, -0.314231,
		31.364208, 37.901497, 27.202633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268127, 38.211395, 26.875774>,  <31.767984, 38.429306, 27.422594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268127, 38.211395, 26.875774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907063, 38.050858, 26.813643>,  <31.690424, 37.954533, 26.776363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907063, 38.050858, 26.813643>,  <32.268127, 38.211395, 26.875774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907063, 38.050858, 26.813643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130393, 0.088912, -0.987468,
		0.410128, -0.911600, -0.027925,
		-0.902658, -0.401347, -0.155332,
		31.636265, 37.930454, 26.767042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445950, 37.953049, 26.327003>,  <32.268127, 38.211395, 26.875774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445950, 37.953049, 26.327003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.046970, 37.978519, 26.314087>,  <31.807583, 37.993801, 26.306337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.046970, 37.978519, 26.314087>,  <32.445950, 37.953049, 26.327003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046970, 37.978519, 26.314087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040452, 0.131376, -0.990507,
		-0.058833, -0.989285, -0.133616,
		-0.997448, 0.063679, -0.032289,
		31.747736, 37.997623, 26.304399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989902, 37.397141, 26.110136>,  <32.445950, 37.953049, 26.327003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989902, 37.397141, 26.110136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.215759, 37.608974, 25.856928>,  <33.351273, 37.736076, 25.705004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.215759, 37.608974, 25.856928>,  <32.989902, 37.397141, 26.110136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215759, 37.608974, 25.856928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757810, -0.028820, 0.651839,
		0.326963, -0.847764, -0.417601,
		0.564641, 0.529589, -0.633021,
		33.385151, 37.767853, 25.667021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549126, 37.013165, 26.012512>,  <32.989902, 37.397141, 26.110136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549126, 37.013165, 26.012512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647377, 37.394337, 25.941414>,  <33.706326, 37.623039, 25.898754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647377, 37.394337, 25.941414>,  <33.549126, 37.013165, 26.012512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647377, 37.394337, 25.941414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654468, -0.027759, 0.755580,
		0.715080, -0.301921, -0.630480,
		0.245626, 0.952929, -0.177748,
		33.721066, 37.680214, 25.888090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288284, 36.982918, 25.975697>,  <33.549126, 37.013165, 26.012512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288284, 36.982918, 25.975697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175262, 37.351505, 26.082317>,  <34.107449, 37.572659, 26.146290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175262, 37.351505, 26.082317>,  <34.288284, 36.982918, 25.975697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175262, 37.351505, 26.082317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727427, 0.024691, 0.685741,
		0.625310, 0.387658, -0.677280,
		-0.282556, 0.921472, 0.266553,
		34.090496, 37.627949, 26.162283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881775, 37.312366, 26.140369>,  <34.288284, 36.982918, 25.975697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881775, 37.312366, 26.140369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622662, 37.590698, 26.264431>,  <34.467194, 37.757698, 26.338867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622662, 37.590698, 26.264431>,  <34.881775, 37.312366, 26.140369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622662, 37.590698, 26.264431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655505, 0.301650, 0.692330,
		0.388186, 0.651788, -0.651525,
		-0.647785, 0.695830, 0.310154,
		34.428326, 37.799446, 26.357477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182899, 37.966751, 25.985266>,  <34.881775, 37.312366, 26.140369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182899, 37.966751, 25.985266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912899, 37.981205, 26.280039>,  <34.750900, 37.989880, 26.456903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912899, 37.981205, 26.280039>,  <35.182899, 37.966751, 25.985266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912899, 37.981205, 26.280039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663679, 0.466106, 0.585043,
		-0.322347, 0.883991, -0.338605,
		-0.674998, 0.036138, 0.736934,
		34.710400, 37.992046, 26.501120>
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
