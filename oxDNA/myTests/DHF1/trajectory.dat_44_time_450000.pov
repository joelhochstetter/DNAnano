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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<1.791732, 5.589553, 3.508129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.881868, 5.252182, 3.313049>,  <1.935950, 5.049759, 3.196002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.881868, 5.252182, 3.313049>,  <1.791732, 5.589553, 3.508129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.881868, 5.252182, 3.313049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853860, -0.412032, 0.318046,
		-0.469197, 0.344759, -0.813016,
		0.225340, -0.843428, -0.487700,
		1.949471, 4.999154, 3.166740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.585654, 5.536439, 4.272569>,  <1.791732, 5.589553, 3.508129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.585654, 5.536439, 4.272569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.745291, 5.246162, 4.496746>,  <1.841073, 5.071997, 4.631253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.745291, 5.246162, 4.496746>,  <1.585654, 5.536439, 4.272569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.745291, 5.246162, 4.496746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621100, -0.663600, -0.416977,
		0.674507, -0.181679, -0.715565,
		0.399093, -0.725691, 0.560444,
		1.865018, 5.028455, 4.664879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.958990, 5.502623, 3.897790>,  <1.585654, 5.536439, 4.272569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.958990, 5.502623, 3.897790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.776266, 5.268639, 3.629717>,  <0.666632, 5.128248, 3.468873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.776266, 5.268639, 3.629717>,  <0.958990, 5.502623, 3.897790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.776266, 5.268639, 3.629717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860949, -0.480276, -0.167637,
		-0.223811, -0.653571, 0.723017,
		-0.456810, -0.584961, -0.670182,
		0.639223, 5.093150, 3.428662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.004537, 4.733265, 3.957720>,  <0.958990, 5.502623, 3.897790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.004537, 4.733265, 3.957720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.993143, 4.805931, 3.564541>,  <0.986307, 4.849531, 3.328633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.993143, 4.805931, 3.564541>,  <1.004537, 4.733265, 3.957720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.993143, 4.805931, 3.564541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794610, -0.592479, -0.132527,
		-0.606451, -0.784835, -0.127478,
		-0.028484, 0.181666, -0.982948,
		0.984598, 4.860431, 3.269657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.949587, 4.094675, 3.610775>,  <1.004537, 4.733265, 3.957720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.949587, 4.094675, 3.610775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.093975, 4.357277, 3.345837>,  <1.180608, 4.514838, 3.186873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.093975, 4.357277, 3.345837>,  <0.949587, 4.094675, 3.610775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.093975, 4.357277, 3.345837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663096, -0.680086, -0.312709,
		-0.655747, -0.326321, -0.680816,
		0.360969, 0.656505, -0.662346,
		1.202266, 4.554228, 3.147133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.915187, 3.835113, 2.927132>,  <0.949587, 4.094675, 3.610775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.915187, 3.835113, 2.927132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.234432, 4.075455, 2.944971>,  <1.425979, 4.219660, 2.955674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.234432, 4.075455, 2.944971>,  <0.915187, 3.835113, 2.927132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.234432, 4.075455, 2.944971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585674, -0.756312, -0.291510,
		-0.141426, 0.258777, -0.955527,
		0.798113, 0.600855, 0.044597,
		1.473866, 4.255711, 2.958350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.204319, 3.871179, 2.322366>,  <0.915187, 3.835113, 2.927132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.204319, 3.871179, 2.322366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.450640, 3.898071, 2.636377>,  <1.598432, 3.914207, 2.824784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.450640, 3.898071, 2.636377>,  <1.204319, 3.871179, 2.322366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.450640, 3.898071, 2.636377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520573, -0.782622, -0.341330,
		0.591432, 0.618855, -0.516939,
		0.615802, 0.067230, 0.785028,
		1.635380, 3.918240, 2.871886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.827482, 3.909184, 2.071422>,  <1.204319, 3.871179, 2.322366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.827482, 3.909184, 2.071422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.906267, 3.795929, 2.446877>,  <1.953538, 3.727976, 2.672149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.906267, 3.795929, 2.446877>,  <1.827482, 3.909184, 2.071422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.906267, 3.795929, 2.446877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626008, -0.700497, -0.342664,
		0.754533, 0.655085, 0.039275,
		0.196962, -0.283138, 0.938637,
		1.965356, 3.710988, 2.728467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.474868, 4.122700, 5.006354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.651243, 3.772865, 4.925684>,  <2.757068, 3.562965, 4.877282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.651243, 3.772865, 4.925684>,  <2.474868, 4.122700, 5.006354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.651243, 3.772865, 4.925684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539807, 0.437929, -0.718906,
		0.717065, 0.208127, 0.665207,
		0.440938, -0.874586, -0.201676,
		2.783525, 3.510489, 4.865181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.131489, 4.331642, 4.821626>,  <2.474868, 4.122700, 5.006354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.131489, 4.331642, 4.821626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.092235, 3.959846, 4.679403>,  <3.068682, 3.736769, 4.594070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.092235, 3.959846, 4.679403>,  <3.131489, 4.331642, 4.821626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.092235, 3.959846, 4.679403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451652, 0.276768, -0.848180,
		0.886781, -0.243824, 0.392645,
		-0.098136, -0.929489, -0.355557,
		3.062794, 3.681000, 4.572736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.779114, 3.974421, 4.626387>,  <3.131489, 4.331642, 4.821626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.779114, 3.974421, 4.626387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.454796, 3.874359, 4.414715>,  <3.260205, 3.814322, 4.287712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.454796, 3.874359, 4.414715>,  <3.779114, 3.974421, 4.626387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.454796, 3.874359, 4.414715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484716, 0.219842, -0.846593,
		0.328115, -0.942917, -0.056993,
		-0.810796, -0.250154, -0.529181,
		3.211557, 3.799313, 4.255960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.979679, 3.518071, 4.135813>,  <3.779114, 3.974421, 4.626387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.979679, 3.518071, 4.135813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.644285, 3.710258, 4.032980>,  <3.443049, 3.825571, 3.971280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.644285, 3.710258, 4.032980>,  <3.979679, 3.518071, 4.135813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.644285, 3.710258, 4.032980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413358, 0.253399, -0.874599,
		-0.355074, -0.839606, -0.411078,
		-0.838485, 0.480470, -0.257083,
		3.392740, 3.854399, 3.955855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.589101, 3.226053, 3.531498>,  <3.979679, 3.518071, 4.135813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.589101, 3.226053, 3.531498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.538042, 3.621964, 3.556959>,  <3.507407, 3.859509, 3.572236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.538042, 3.621964, 3.556959>,  <3.589101, 3.226053, 3.531498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.538042, 3.621964, 3.556959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559397, 0.124842, -0.819444,
		-0.819012, -0.068992, -0.569613,
		-0.127647, 0.989775, 0.063653,
		3.499748, 3.918896, 3.576055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.465293, 3.478230, 2.878783>,  <3.589101, 3.226053, 3.531498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.465293, 3.478230, 2.878783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.609652, 3.786858, 3.088329>,  <3.696267, 3.972034, 3.214057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.609652, 3.786858, 3.088329>,  <3.465293, 3.478230, 2.878783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.609652, 3.786858, 3.088329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729855, 0.116020, -0.673684,
		-0.580573, 0.625477, -0.521262,
		0.360897, 0.771569, 0.523866,
		3.717921, 4.018328, 3.245489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.714166, 3.833669, 2.375078>,  <3.465293, 3.478230, 2.878783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.714166, 3.833669, 2.375078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.880937, 4.053909, 2.664356>,  <3.980999, 4.186053, 2.837923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.880937, 4.053909, 2.664356>,  <3.714166, 3.833669, 2.375078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.880937, 4.053909, 2.664356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757152, 0.229823, -0.611476,
		-0.502886, 0.802509, -0.321069,
		0.416926, 0.550600, 0.723196,
		4.006014, 4.219090, 2.881315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.963083, 4.380652, 2.020543>,  <3.714166, 3.833669, 2.375078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.963083, 4.380652, 2.020543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.163614, 4.410675, 2.365341>,  <4.283933, 4.428689, 2.572220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.163614, 4.410675, 2.365341>,  <3.963083, 4.380652, 2.020543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.163614, 4.410675, 2.365341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820751, 0.274146, -0.501211,
		-0.273932, 0.958754, 0.075833,
		0.501328, 0.075058, 0.861996,
		4.314013, 4.433192, 2.623940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
