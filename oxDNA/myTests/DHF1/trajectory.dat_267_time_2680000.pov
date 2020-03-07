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
	<2.952162, 2.395585, 4.133656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.241760, 2.180054, 3.961380>,  <3.415519, 2.050735, 3.858015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.241760, 2.180054, 3.961380>,  <2.952162, 2.395585, 4.133656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.241760, 2.180054, 3.961380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305061, 0.309885, -0.900505,
		0.618682, 0.783349, 0.059980,
		0.723996, -0.538828, -0.430689,
		3.458959, 2.018405, 3.832173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.457155, 2.770863, 3.788022>,  <2.952162, 2.395585, 4.133656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.457155, 2.770863, 3.788022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.393726, 2.416031, 3.614613>,  <3.355669, 2.203131, 3.510567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.393726, 2.416031, 3.614613>,  <3.457155, 2.770863, 3.788022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.393726, 2.416031, 3.614613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305882, 0.461614, -0.832676,
		0.938771, 0.000569, -0.344540,
		-0.158571, -0.887081, -0.433524,
		3.346155, 2.149907, 3.484555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.853018, 2.631485, 3.197669>,  <3.457155, 2.770863, 3.788022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.853018, 2.631485, 3.197669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.510941, 2.425827, 3.171444>,  <3.305694, 2.302433, 3.155709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.510941, 2.425827, 3.171444>,  <3.853018, 2.631485, 3.197669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.510941, 2.425827, 3.171444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244608, 0.511878, -0.823497,
		0.456953, -0.688215, -0.563519,
		-0.855196, -0.514141, -0.065561,
		3.254382, 2.271584, 3.151775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.802847, 2.248282, 2.604951>,  <3.853018, 2.631485, 3.197669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.802847, 2.248282, 2.604951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.436977, 2.373428, 2.707314>,  <3.217456, 2.448516, 2.768731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.436977, 2.373428, 2.707314>,  <3.802847, 2.248282, 2.604951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.436977, 2.373428, 2.707314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001600, 0.635924, -0.771750,
		-0.404190, -0.705490, -0.582163,
		-0.914673, 0.312865, 0.255906,
		3.162575, 2.467288, 2.784085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.432369, 2.079955, 2.013829>,  <3.802847, 2.248282, 2.604951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.432369, 2.079955, 2.013829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.316139, 2.398499, 2.226009>,  <3.246401, 2.589625, 2.353318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.316139, 2.398499, 2.226009>,  <3.432369, 2.079955, 2.013829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.316139, 2.398499, 2.226009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116940, 0.579772, -0.806343,
		-0.949680, -0.172272, -0.261593,
		-0.290575, 0.796359, 0.530452,
		3.228967, 2.637406, 2.385145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.995497, 2.348891, 1.647890>,  <3.432369, 2.079955, 2.013829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.995497, 2.348891, 1.647890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.072929, 2.659653, 1.887539>,  <3.119389, 2.846110, 2.031328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.072929, 2.659653, 1.887539>,  <2.995497, 2.348891, 1.647890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.072929, 2.659653, 1.887539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089812, 0.594076, -0.799379,
		-0.976965, 0.208553, 0.045227,
		0.193581, 0.776904, 0.599122,
		3.131004, 2.892724, 2.067276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.618248, 2.906072, 1.303484>,  <2.995497, 2.348891, 1.647890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.618248, 2.906072, 1.303484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.920067, 3.040283, 1.529079>,  <3.101158, 3.120810, 1.664437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.920067, 3.040283, 1.529079>,  <2.618248, 2.906072, 1.303484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.920067, 3.040283, 1.529079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216668, 0.683850, -0.696710,
		-0.619448, 0.647898, 0.443298,
		0.754546, 0.335527, 0.563988,
		3.146430, 3.140941, 1.698276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.636057, 3.612347, 1.219678>,  <2.618248, 2.906072, 1.303484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.636057, 3.612347, 1.219678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.007904, 3.535263, 1.345329>,  <3.231012, 3.489013, 1.420720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.007904, 3.535263, 1.345329>,  <2.636057, 3.612347, 1.219678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.007904, 3.535263, 1.345329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364142, 0.611439, -0.702526,
		-0.056686, 0.767467, 0.638577,
		0.929617, -0.192709, 0.314127,
		3.286789, 3.477450, 1.439567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.426429, 4.313129, 0.147107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.816855, 4.323883, 0.233429>,  <4.051111, 4.330335, 0.285222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.816855, 4.323883, 0.233429>,  <3.426429, 4.313129, 0.147107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.816855, 4.323883, 0.233429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146604, -0.651609, 0.744254,
		0.160629, -0.758079, -0.632072,
		0.976067, 0.026884, 0.215804,
		4.109675, 4.331948, 0.298170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.695969, 3.575680, 0.217740>,  <3.426429, 4.313129, 0.147107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.695969, 3.575680, 0.217740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.960897, 3.795807, 0.421104>,  <4.119854, 3.927883, 0.543123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.960897, 3.795807, 0.421104>,  <3.695969, 3.575680, 0.217740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.960897, 3.795807, 0.421104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131420, -0.582733, 0.801967,
		0.737604, -0.597975, -0.313634,
		0.662321, 0.550316, 0.508412,
		4.159594, 3.960902, 0.573628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.784309, 3.109621, 0.688963>,  <3.695969, 3.575680, 0.217740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.784309, 3.109621, 0.688963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.927924, 3.451813, 0.838226>,  <4.014093, 3.657128, 0.927784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.927924, 3.451813, 0.838226>,  <3.784309, 3.109621, 0.688963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.927924, 3.451813, 0.838226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151995, -0.340885, 0.927736,
		0.920864, -0.389810, 0.007638,
		0.359037, 0.855480, 0.373158,
		4.035635, 3.708457, 0.950174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.404099, 2.958972, 1.175076>,  <3.784309, 3.109621, 0.688963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.404099, 2.958972, 1.175076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.171182, 3.277985, 1.238167>,  <4.031431, 3.469392, 1.276021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.171182, 3.277985, 1.238167>,  <4.404099, 2.958972, 1.175076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.171182, 3.277985, 1.238167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295270, -0.388231, 0.872979,
		0.757462, 0.461759, 0.461552,
		-0.582295, 0.797531, 0.157726,
		3.996493, 3.517244, 1.285485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.440067, 3.278928, 1.911341>,  <4.404099, 2.958972, 1.175076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.440067, 3.278928, 1.911341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.077476, 3.382156, 1.777657>,  <3.859921, 3.444093, 1.697446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.077476, 3.382156, 1.777657>,  <4.440067, 3.278928, 1.911341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.077476, 3.382156, 1.777657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404978, -0.307272, 0.861149,
		0.119544, 0.915960, 0.383048,
		-0.906478, 0.258071, -0.334211,
		3.805532, 3.459578, 1.677393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.049724, 3.718628, 2.456201>,  <4.440067, 3.278928, 1.911341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.049724, 3.718628, 2.456201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.767182, 3.547623, 2.230530>,  <3.597657, 3.445019, 2.095127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.767182, 3.547623, 2.230530>,  <4.049724, 3.718628, 2.456201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.767182, 3.547623, 2.230530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443420, -0.354026, 0.823434,
		-0.551763, 0.831804, 0.060500,
		-0.706354, -0.427514, -0.564177,
		3.555276, 3.419369, 2.061277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.341790, 3.900162, 2.784399>,  <4.049724, 3.718628, 2.456201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.341790, 3.900162, 2.784399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.296400, 3.574875, 2.556084>,  <3.269166, 3.379703, 2.419094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.296400, 3.574875, 2.556084>,  <3.341790, 3.900162, 2.784399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.296400, 3.574875, 2.556084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456697, -0.467515, 0.756874,
		-0.882356, 0.346564, -0.318343,
		-0.113475, -0.813218, -0.570789,
		3.262357, 3.330909, 2.384847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.654213, 3.701992, 2.897330>,  <3.341790, 3.900162, 2.784399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.654213, 3.701992, 2.897330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.850362, 3.377762, 2.769264>,  <2.968051, 3.183224, 2.692425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.850362, 3.377762, 2.769264>,  <2.654213, 3.701992, 2.897330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.850362, 3.377762, 2.769264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536371, -0.570244, 0.622196,
		-0.686908, -0.133379, -0.714400,
		0.490370, -0.810575, -0.320164,
		2.997473, 3.134589, 2.673215>
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
