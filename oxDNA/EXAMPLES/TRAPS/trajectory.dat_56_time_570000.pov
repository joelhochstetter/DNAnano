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
	<36.553577, 52.834019, 50.059105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324448, 52.511318, 50.117104>,  <36.186970, 52.317696, 50.151901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324448, 52.511318, 50.117104>,  <36.553577, 52.834019, 50.059105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324448, 52.511318, 50.117104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519711, -0.494257, -0.696858,
		0.633859, -0.323818, 0.702400,
		-0.572821, -0.806754, 0.144997,
		36.152603, 52.269291, 50.160603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593174, 53.179127, 49.373020>,  <36.553577, 52.834019, 50.059105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593174, 53.179127, 49.373020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394123, 52.849369, 49.265137>,  <36.274693, 52.651516, 49.200405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394123, 52.849369, 49.265137>,  <36.593174, 53.179127, 49.373020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394123, 52.849369, 49.265137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167036, 0.214047, -0.962436,
		0.851157, -0.523984, 0.031188,
		-0.497626, -0.824393, -0.269712,
		36.244835, 52.602051, 49.184223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095413, 52.652168, 48.970898>,  <36.593174, 53.179127, 49.373020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095413, 52.652168, 48.970898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704853, 52.637161, 48.885826>,  <36.470516, 52.628155, 48.834782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704853, 52.637161, 48.885826>,  <37.095413, 52.652168, 48.970898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704853, 52.637161, 48.885826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192786, 0.292406, -0.936660,
		0.097331, -0.955558, -0.278272,
		-0.976402, -0.037519, -0.212679,
		36.411934, 52.625904, 48.822021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889515, 52.178810, 48.393627>,  <37.095413, 52.652168, 48.970898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889515, 52.178810, 48.393627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661285, 52.507309, 48.392651>,  <36.524349, 52.704407, 48.392063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661285, 52.507309, 48.392651>,  <36.889515, 52.178810, 48.393627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661285, 52.507309, 48.392651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328275, 0.225350, -0.917308,
		-0.752782, -0.524193, -0.398172,
		-0.570574, 0.821243, -0.002440,
		36.490112, 52.753681, 48.391918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457108, 51.663345, 48.376408>,  <36.889515, 52.178810, 48.393627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457108, 51.663345, 48.376408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400974, 51.565544, 47.992630>,  <37.367294, 51.506863, 47.762363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400974, 51.565544, 47.992630>,  <37.457108, 51.663345, 48.376408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400974, 51.565544, 47.992630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226084, 0.935515, -0.271473,
		0.963947, -0.255010, -0.076004,
		-0.140331, -0.244503, -0.959440,
		37.358875, 51.492195, 47.704800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979958, 51.917503, 47.970848>,  <37.457108, 51.663345, 48.376408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979958, 51.917503, 47.970848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634800, 51.910355, 47.768822>,  <37.427704, 51.906067, 47.647606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634800, 51.910355, 47.768822>,  <37.979958, 51.917503, 47.970848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634800, 51.910355, 47.768822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238176, 0.867054, -0.437595,
		0.445736, -0.497894, -0.743922,
		-0.862897, -0.017868, -0.505064,
		37.375931, 51.904995, 47.617302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522678, 51.715168, 48.485413>,  <37.979958, 51.917503, 47.970848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522678, 51.715168, 48.485413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885784, 51.548542, 48.465672>,  <39.103649, 51.448566, 48.453827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885784, 51.548542, 48.465672>,  <38.522678, 51.715168, 48.485413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885784, 51.548542, 48.465672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288890, 0.535525, 0.793571,
		-0.304149, -0.734632, 0.606473,
		0.907764, -0.416568, -0.049348,
		39.158112, 51.423573, 48.450867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754654, 51.869713, 49.186924>,  <38.522678, 51.715168, 48.485413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754654, 51.869713, 49.186924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090988, 51.772274, 48.993568>,  <39.292789, 51.713810, 48.877556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090988, 51.772274, 48.993568>,  <38.754654, 51.869713, 49.186924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090988, 51.772274, 48.993568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527880, 0.566592, 0.632706,
		0.119758, -0.787169, 0.604998,
		0.840834, -0.243595, -0.483384,
		39.343239, 51.699196, 48.848553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235950, 51.786102, 49.794117>,  <38.754654, 51.869713, 49.186924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235950, 51.786102, 49.794117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402382, 51.843742, 49.434982>,  <39.502243, 51.878326, 49.219501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402382, 51.843742, 49.434982>,  <39.235950, 51.786102, 49.794117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402382, 51.843742, 49.434982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713556, 0.560293, 0.420607,
		0.563656, -0.815665, 0.130315,
		0.416089, 0.144091, -0.897835,
		39.527206, 51.886974, 49.165630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954346, 51.616982, 49.830410>,  <39.235950, 51.786102, 49.794117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954346, 51.616982, 49.830410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885818, 51.912056, 49.569191>,  <39.844704, 52.089100, 49.412460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885818, 51.912056, 49.569191>,  <39.954346, 51.616982, 49.830410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885818, 51.912056, 49.569191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610802, 0.599612, 0.517095,
		0.773027, -0.310293, -0.553305,
		-0.171318, 0.737688, -0.653044,
		39.834423, 52.133362, 49.373280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544067, 51.780704, 49.482128>,  <39.954346, 51.616982, 49.830410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544067, 51.780704, 49.482128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331726, 52.119324, 49.497879>,  <40.204323, 52.322495, 49.507328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331726, 52.119324, 49.497879>,  <40.544067, 51.780704, 49.482128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331726, 52.119324, 49.497879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791023, 0.478291, 0.381472,
		0.304103, 0.233652, -0.923541,
		-0.530853, 0.846549, 0.039374,
		40.172470, 52.373287, 49.509693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917763, 52.354992, 49.140923>,  <40.544067, 51.780704, 49.482128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917763, 52.354992, 49.140923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660633, 52.513130, 49.403366>,  <40.506355, 52.608013, 49.560833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660633, 52.513130, 49.403366>,  <40.917763, 52.354992, 49.140923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660633, 52.513130, 49.403366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754416, 0.475208, 0.452807,
		-0.132774, 0.786054, -0.603730,
		-0.642828, 0.395342, 0.656107,
		40.467785, 52.631733, 49.600197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064171, 52.747715, 48.532589>,  <40.917763, 52.354992, 49.140923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064171, 52.747715, 48.532589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830044, 53.034225, 48.380615>,  <40.689568, 53.206131, 48.289429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830044, 53.034225, 48.380615>,  <41.064171, 52.747715, 48.532589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830044, 53.034225, 48.380615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601656, 0.697813, 0.388673,
		0.543524, -0.001097, -0.839393,
		-0.585313, 0.716279, -0.379938,
		40.654449, 53.249107, 48.266632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544788, 53.240044, 48.175663>,  <41.064171, 52.747715, 48.532589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544788, 53.240044, 48.175663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203281, 53.414291, 48.289734>,  <40.998379, 53.518841, 48.358177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203281, 53.414291, 48.289734>,  <41.544788, 53.240044, 48.175663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203281, 53.414291, 48.289734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514041, 0.618150, 0.594688,
		0.082771, 0.654317, -0.751677,
		-0.853763, 0.435615, 0.285181,
		40.947151, 53.544975, 48.375290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626396, 53.929710, 48.097466>,  <41.544788, 53.240044, 48.175663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626396, 53.929710, 48.097466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401844, 53.813152, 48.407288>,  <41.267113, 53.743217, 48.593182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401844, 53.813152, 48.407288>,  <41.626396, 53.929710, 48.097466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401844, 53.813152, 48.407288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663089, 0.401604, 0.631686,
		-0.495137, 0.868217, -0.032231,
		-0.561385, -0.291399, 0.774554,
		41.233429, 53.725731, 48.639652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509724, 54.475815, 48.499031>,  <41.626396, 53.929710, 48.097466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509724, 54.475815, 48.499031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492062, 54.162903, 48.747574>,  <41.481464, 53.975155, 48.896698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492062, 54.162903, 48.747574>,  <41.509724, 54.475815, 48.499031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492062, 54.162903, 48.747574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714713, 0.409833, 0.566765,
		-0.698023, 0.469115, 0.541013,
		-0.044153, -0.782284, 0.621356,
		41.478817, 53.928219, 48.933979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487900, 54.762104, 49.174042>,  <41.509724, 54.475815, 48.499031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487900, 54.762104, 49.174042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636150, 54.393429, 49.219879>,  <41.725101, 54.172226, 49.247379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636150, 54.393429, 49.219879>,  <41.487900, 54.762104, 49.174042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636150, 54.393429, 49.219879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788859, 0.377510, 0.484962,
		-0.490241, -0.089345, 0.866996,
		0.370629, -0.921685, 0.114590,
		41.747337, 54.116924, 49.254257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397533, 54.541245, 49.924519>,  <41.487900, 54.762104, 49.174042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397533, 54.541245, 49.924519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724388, 54.411911, 49.733627>,  <41.920502, 54.334312, 49.619091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724388, 54.411911, 49.733627>,  <41.397533, 54.541245, 49.924519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724388, 54.411911, 49.733627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574514, 0.389002, 0.720147,
		-0.047203, -0.862632, 0.503625,
		0.817133, -0.323333, -0.477232,
		41.969528, 54.314911, 49.590458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943172, 54.792953, 50.401493>,  <41.397533, 54.541245, 49.924519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943172, 54.792953, 50.401493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179401, 54.652515, 50.110851>,  <42.321136, 54.568253, 49.936466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179401, 54.652515, 50.110851>,  <41.943172, 54.792953, 50.401493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179401, 54.652515, 50.110851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806973, 0.251663, 0.534285,
		-0.004727, -0.901884, 0.431952,
		0.590570, -0.351099, -0.726606,
		42.356571, 54.547184, 49.892868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529369, 54.378189, 50.571964>,  <41.943172, 54.792953, 50.401493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529369, 54.378189, 50.571964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635601, 54.568619, 50.236626>,  <42.699341, 54.682877, 50.035423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635601, 54.568619, 50.236626>,  <42.529369, 54.378189, 50.571964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635601, 54.568619, 50.236626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833329, 0.323913, 0.447932,
		0.484801, -0.817577, -0.310704,
		0.265577, 0.476077, -0.838344,
		42.715275, 54.711441, 49.985123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216438, 54.263985, 50.395138>,  <42.529369, 54.378189, 50.571964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216438, 54.263985, 50.395138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126705, 54.619743, 50.235813>,  <43.072865, 54.833199, 50.140217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126705, 54.619743, 50.235813>,  <43.216438, 54.263985, 50.395138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126705, 54.619743, 50.235813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758930, 0.415841, 0.501100,
		0.611310, -0.189878, -0.768275,
		-0.224332, 0.889394, -0.398312,
		43.059406, 54.886562, 50.116318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650909, 54.543159, 50.716587>,  <43.216438, 54.263985, 50.395138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650909, 54.543159, 50.716587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504143, 54.838787, 50.490616>,  <43.416080, 55.016163, 50.355034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504143, 54.838787, 50.490616>,  <43.650909, 54.543159, 50.716587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504143, 54.838787, 50.490616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669624, 0.631385, 0.391096,
		0.645734, -0.234786, -0.726569,
		-0.366921, 0.739072, -0.564926,
		43.394066, 55.060509, 50.321136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143555, 54.793606, 50.182369>,  <43.650909, 54.543159, 50.716587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143555, 54.793606, 50.182369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916698, 55.115353, 50.253189>,  <43.780586, 55.308399, 50.295681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916698, 55.115353, 50.253189>,  <44.143555, 54.793606, 50.182369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916698, 55.115353, 50.253189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802106, 0.490594, 0.340504,
		0.187029, 0.335130, -0.923422,
		-0.567138, 0.804367, 0.177055,
		43.746555, 55.356663, 50.306305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930176, 54.758549, 50.226593>,  <44.143555, 54.793606, 50.182369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930176, 54.758549, 50.226593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296959, 54.906357, 50.286777>,  <45.517029, 54.995041, 50.322887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296959, 54.906357, 50.286777>,  <44.930176, 54.758549, 50.226593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296959, 54.906357, 50.286777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140877, 0.652697, -0.744406,
		-0.373276, 0.661395, 0.650555,
		0.916961, 0.369518, 0.150461,
		45.572048, 55.017212, 50.331917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971218, 55.578236, 50.191776>,  <44.930176, 54.758549, 50.226593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971218, 55.578236, 50.191776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324520, 55.422306, 50.087540>,  <45.536499, 55.328751, 50.024998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324520, 55.422306, 50.087540>,  <44.971218, 55.578236, 50.191776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324520, 55.422306, 50.087540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024933, 0.594007, -0.804074,
		0.468237, 0.703702, 0.534376,
		0.883251, -0.389820, -0.260590,
		45.589497, 55.305359, 50.009361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283314, 56.039227, 49.917599>,  <44.971218, 55.578236, 50.191776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283314, 56.039227, 49.917599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.437904, 55.705441, 49.760471>,  <45.530659, 55.505169, 49.666195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.437904, 55.705441, 49.760471>,  <45.283314, 56.039227, 49.917599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.437904, 55.705441, 49.760471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021875, 0.417499, -0.908414,
		0.922038, 0.359677, 0.143101,
		0.386480, -0.834462, -0.392819,
		45.553848, 55.455101, 49.642624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575665, 56.732494, 49.878799>,  <45.283314, 56.039227, 49.917599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575665, 56.732494, 49.878799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658474, 56.633690, 49.500145>,  <45.708160, 56.574406, 49.272953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658474, 56.633690, 49.500145>,  <45.575665, 56.732494, 49.878799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658474, 56.633690, 49.500145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948368, 0.288321, 0.132168,
		0.240288, -0.925124, 0.293950,
		0.207024, -0.247015, -0.946639,
		45.720581, 56.559586, 49.216152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104912, 57.126820, 49.587498>,  <45.575665, 56.732494, 49.878799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.104912, 57.126820, 49.587498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877579, 57.189507, 49.264404>,  <45.741180, 57.227119, 49.070549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877579, 57.189507, 49.264404>,  <46.104912, 57.126820, 49.587498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877579, 57.189507, 49.264404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146053, -0.946887, -0.286484,
		-0.809732, -0.280791, 0.515258,
		-0.568334, 0.156720, -0.807735,
		45.707077, 57.236523, 49.022083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632355, 57.353653, 50.092754>,  <46.104912, 57.126820, 49.587498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.632355, 57.353653, 50.092754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773582, 57.032192, 50.284370>,  <46.858318, 56.839314, 50.399342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773582, 57.032192, 50.284370>,  <46.632355, 57.353653, 50.092754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773582, 57.032192, 50.284370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375738, 0.590711, 0.714059,
		-0.856834, -0.072116, 0.510524,
		0.353068, -0.803654, 0.479045,
		46.879501, 56.791096, 50.428085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.423050, 57.340691, 50.831654>,  <46.632355, 57.353653, 50.092754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.423050, 57.340691, 50.831654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.768333, 57.150372, 50.764153>,  <46.975506, 57.036179, 50.723652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.768333, 57.150372, 50.764153>,  <46.423050, 57.340691, 50.831654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.768333, 57.150372, 50.764153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471207, 0.639391, 0.607571,
		-0.181184, -0.603981, 0.776131,
		0.863213, -0.475801, -0.168753,
		47.027298, 57.007629, 50.713528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.767513, 57.142979, 51.482677>,  <46.423050, 57.340691, 50.831654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.767513, 57.142979, 51.482677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.017345, 57.221199, 51.180244>,  <47.167244, 57.268131, 50.998787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.017345, 57.221199, 51.180244>,  <46.767513, 57.142979, 51.482677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.017345, 57.221199, 51.180244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628630, 0.448552, 0.635315,
		0.463384, -0.872099, 0.157222,
		0.624580, 0.195560, -0.756079,
		47.204720, 57.279865, 50.953423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.438007, 56.848339, 51.636963>,  <46.767513, 57.142979, 51.482677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.438007, 56.848339, 51.636963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461052, 57.158772, 51.385765>,  <47.474880, 57.345032, 51.235046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461052, 57.158772, 51.385765>,  <47.438007, 56.848339, 51.636963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.461052, 57.158772, 51.385765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736558, 0.391587, 0.551491,
		0.673917, -0.494329, -0.549068,
		0.057610, 0.776079, -0.627998,
		47.478336, 57.391594, 51.197365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.119247, 56.971664, 51.338425>,  <47.438007, 56.848339, 51.636963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.119247, 56.971664, 51.338425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.926155, 57.320675, 51.368538>,  <47.810299, 57.530083, 51.386604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.926155, 57.320675, 51.368538>,  <48.119247, 56.971664, 51.338425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.926155, 57.320675, 51.368538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779290, 0.388738, 0.491519,
		0.399600, 0.295936, -0.867607,
		-0.482730, 0.872528, 0.075281,
		47.781338, 57.582432, 51.391121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.323750, 57.579639, 50.909946>,  <48.119247, 56.971664, 51.338425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.323750, 57.579639, 50.909946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.212898, 57.716888, 51.268936>,  <48.146389, 57.799240, 51.484329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.212898, 57.716888, 51.268936>,  <48.323750, 57.579639, 50.909946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.212898, 57.716888, 51.268936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892522, 0.437833, 0.108202,
		-0.355818, 0.831003, -0.427583,
		-0.277126, 0.343127, 0.897477,
		48.129761, 57.819828, 51.538177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.380100, 58.307461, 50.945232>,  <48.323750, 57.579639, 50.909946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.380100, 58.307461, 50.945232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.423489, 58.120964, 51.296425>,  <48.449524, 58.009068, 51.507141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.423489, 58.120964, 51.296425>,  <48.380100, 58.307461, 50.945232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.423489, 58.120964, 51.296425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884523, 0.448359, 0.128812,
		-0.453709, 0.762625, 0.461033,
		0.108473, -0.466238, 0.877984,
		48.456032, 57.981094, 51.559818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.538639, 58.759228, 51.360363>,  <48.380100, 58.307461, 50.945232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.538639, 58.759228, 51.360363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.676163, 58.440712, 51.559448>,  <48.758678, 58.249603, 51.678898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.676163, 58.440712, 51.559448>,  <48.538639, 58.759228, 51.360363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.676163, 58.440712, 51.559448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895256, 0.437906, 0.082183,
		-0.283393, 0.417325, 0.863440,
		0.343809, -0.796290, 0.497712,
		48.779305, 58.201824, 51.708763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.752060, 58.904758, 52.160221>,  <48.538639, 58.759228, 51.360363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.752060, 58.904758, 52.160221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.953327, 58.628029, 51.953068>,  <49.074089, 58.461990, 51.828773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.953327, 58.628029, 51.953068>,  <48.752060, 58.904758, 52.160221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.953327, 58.628029, 51.953068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857659, 0.473293, 0.201035,
		0.106032, -0.545325, 0.831492,
		0.503169, -0.691820, -0.517887,
		49.104279, 58.420483, 51.797703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.469360, 58.968288, 52.413471>,  <48.752060, 58.904758, 52.160221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.469360, 58.968288, 52.413471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.494476, 58.760742, 52.072453>,  <49.509548, 58.636215, 51.867844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.494476, 58.760742, 52.072453>,  <49.469360, 58.968288, 52.413471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.494476, 58.760742, 52.072453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826717, 0.505588, -0.246818,
		0.559103, -0.689315, 0.460705,
		0.062792, -0.518869, -0.852545,
		49.513313, 58.605080, 51.816689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.153683, 59.022606, 52.747875>,  <49.469360, 58.968288, 52.413471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.153683, 59.022606, 52.747875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.361164, 58.799164, 52.488983>,  <50.485653, 58.665096, 52.333649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.361164, 58.799164, 52.488983>,  <50.153683, 59.022606, 52.747875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.361164, 58.799164, 52.488983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501056, -0.414776, 0.759542,
		-0.692741, -0.718274, 0.064749,
		0.518703, -0.558609, -0.647228,
		50.516773, 58.631580, 52.294815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.115898, 58.112270, 52.656487>,  <50.153683, 59.022606, 52.747875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.115898, 58.112270, 52.656487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.443329, 58.340916, 52.633907>,  <50.639786, 58.478104, 52.620358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.443329, 58.340916, 52.633907>,  <50.115898, 58.112270, 52.656487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.443329, 58.340916, 52.633907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293083, -0.331131, 0.896914,
		0.493999, -0.750737, -0.438588,
		0.818576, 0.571618, -0.056450,
		50.688900, 58.512402, 52.616974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.758202, 57.726418, 52.676777>,  <50.115898, 58.112270, 52.656487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.758202, 57.726418, 52.676777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.774178, 58.091904, 52.838531>,  <50.783764, 58.311195, 52.935585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.774178, 58.091904, 52.838531>,  <50.758202, 57.726418, 52.676777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.774178, 58.091904, 52.838531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239271, -0.401677, 0.883971,
		0.970131, 0.061447, -0.234671,
		0.039944, 0.913718, 0.404382,
		50.786160, 58.366020, 52.959846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.483799, 57.978397, 52.976158>,  <50.758202, 57.726418, 52.676777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.483799, 57.978397, 52.976158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.151375, 58.127609, 53.141174>,  <50.951920, 58.217136, 53.240185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.151375, 58.127609, 53.141174>,  <51.483799, 57.978397, 52.976158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.151375, 58.127609, 53.141174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099339, -0.630262, 0.770001,
		0.547241, 0.680898, 0.486729,
		-0.831059, 0.373025, 0.412545,
		50.902058, 58.239517, 53.264938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.694515, 58.671669, 52.756027>,  <51.483799, 57.978397, 52.976158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.694515, 58.671669, 52.756027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.968170, 58.382549, 52.716991>,  <52.132362, 58.209080, 52.693569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.968170, 58.382549, 52.716991>,  <51.694515, 58.671669, 52.756027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.968170, 58.382549, 52.716991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486225, 0.551711, -0.677643,
		0.543640, 0.416148, 0.728887,
		0.684135, -0.722797, -0.097590,
		52.173412, 58.165710, 52.687714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.261150, 59.016674, 53.064034>,  <51.694515, 58.671669, 52.756027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.261150, 59.016674, 53.064034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.348396, 58.731491, 52.797462>,  <52.400745, 58.560383, 52.637520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.348396, 58.731491, 52.797462>,  <52.261150, 59.016674, 53.064034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.348396, 58.731491, 52.797462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512172, 0.664895, -0.543686,
		0.830726, -0.222740, 0.510177,
		0.218114, -0.712953, -0.666427,
		52.413830, 58.517605, 52.597534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.978405, 58.618259, 53.189808>,  <52.261150, 59.016674, 53.064034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.978405, 58.618259, 53.189808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.820274, 58.702400, 52.832153>,  <52.725395, 58.752884, 52.617561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.820274, 58.702400, 52.832153>,  <52.978405, 58.618259, 53.189808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.820274, 58.702400, 52.832153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691870, 0.708472, -0.139224,
		0.604182, -0.673661, -0.425611,
		-0.395323, 0.210351, -0.894132,
		52.701679, 58.765507, 52.563915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.461502, 58.651112, 52.737602>,  <52.978405, 58.618259, 53.189808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.461502, 58.651112, 52.737602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.166172, 58.874496, 52.586342>,  <52.988976, 59.008526, 52.495586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.166172, 58.874496, 52.586342>,  <53.461502, 58.651112, 52.737602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.166172, 58.874496, 52.586342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626623, 0.775373, -0.078361,
		0.249445, -0.294813, -0.922422,
		-0.738323, 0.558464, -0.378150,
		52.944675, 59.042034, 52.472897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.024460, 58.358879, 53.091358>,  <53.461502, 58.651112, 52.737602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.024460, 58.358879, 53.091358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.918240, 58.721008, 52.958771>,  <53.854507, 58.938286, 52.879219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.918240, 58.721008, 52.958771>,  <54.024460, 58.358879, 53.091358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.918240, 58.721008, 52.958771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963025, -0.232867, 0.135485,
		0.045471, 0.355187, 0.933689,
		-0.265548, 0.905326, -0.331465,
		53.838573, 58.992607, 52.859333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.292442, 57.649899, 52.881763>,  <54.024460, 58.358879, 53.091358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.292442, 57.649899, 52.881763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.351189, 57.942238, 52.615143>,  <54.386436, 58.117641, 52.455170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.351189, 57.942238, 52.615143>,  <54.292442, 57.649899, 52.881763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.351189, 57.942238, 52.615143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989116, -0.102425, 0.105634,
		0.008931, -0.674811, -0.737936,
		0.146866, 0.730848, -0.666552,
		54.395248, 58.161491, 52.415176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.805874, 57.498203, 52.366344>,  <54.292442, 57.649899, 52.881763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.805874, 57.498203, 52.366344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.784912, 57.897629, 52.370853>,  <54.772335, 58.137283, 52.373558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.784912, 57.897629, 52.370853>,  <54.805874, 57.498203, 52.366344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.784912, 57.897629, 52.370853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993437, 0.053281, -0.101214,
		-0.101670, 0.005895, -0.994801,
		-0.052408, 0.998562, 0.011274,
		54.769188, 58.197197, 52.374237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.118843, 57.684418, 51.727425>,  <54.805874, 57.498203, 52.366344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.118843, 57.684418, 51.727425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.120979, 57.961521, 52.015884>,  <55.122261, 58.127785, 52.188961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.120979, 57.961521, 52.015884>,  <55.118843, 57.684418, 51.727425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.120979, 57.961521, 52.015884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999362, -0.029159, 0.020603,
		0.035301, 0.720581, -0.692472,
		0.005345, 0.692757, 0.721151,
		55.122581, 58.169350, 52.232231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.503502, 58.293827, 51.550884>,  <55.118843, 57.684418, 51.727425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.503502, 58.293827, 51.550884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.539940, 58.251312, 51.946945>,  <55.561802, 58.225803, 52.184582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.539940, 58.251312, 51.946945>,  <55.503502, 58.293827, 51.550884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.539940, 58.251312, 51.946945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979174, 0.190718, -0.069611,
		-0.181441, 0.975873, 0.121450,
		0.091095, -0.106290, 0.990154,
		55.567268, 58.219425, 52.243992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.955509, 58.773098, 51.766869>,  <55.503502, 58.293827, 51.550884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.955509, 58.773098, 51.766869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.977890, 58.499935, 52.058212>,  <55.991318, 58.336037, 52.233017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.977890, 58.499935, 52.058212>,  <55.955509, 58.773098, 51.766869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.977890, 58.499935, 52.058212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857761, 0.406236, 0.314989,
		-0.510994, 0.607133, 0.608502,
		0.055956, -0.682907, 0.728359,
		55.994678, 58.295063, 52.276722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.107597, 59.060513, 52.373238>,  <55.955509, 58.773098, 51.766869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.107597, 59.060513, 52.373238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.205788, 58.685066, 52.470188>,  <56.264702, 58.459801, 52.528358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.205788, 58.685066, 52.470188>,  <56.107597, 59.060513, 52.373238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.205788, 58.685066, 52.470188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847824, 0.329099, 0.415799,
		-0.470041, 0.103428, 0.876564,
		0.245471, -0.938614, 0.242379,
		56.279430, 58.403481, 52.542900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.388020, 59.040039, 52.950176>,  <56.107597, 59.060513, 52.373238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.388020, 59.040039, 52.950176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.576347, 58.730160, 52.781334>,  <56.689342, 58.544231, 52.680027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.576347, 58.730160, 52.781334>,  <56.388020, 59.040039, 52.950176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.576347, 58.730160, 52.781334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851526, 0.273910, 0.447076,
		-0.230730, -0.569926, 0.788637,
		0.470815, -0.774699, -0.422107,
		56.717590, 58.497749, 52.654701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.697998, 58.684536, 53.536526>,  <56.388020, 59.040039, 52.950176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.697998, 58.684536, 53.536526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.887558, 58.688034, 53.184311>,  <57.001293, 58.690132, 52.972980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.887558, 58.688034, 53.184311>,  <56.697998, 58.684536, 53.536526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.887558, 58.688034, 53.184311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805298, 0.400239, 0.437383,
		0.356252, -0.916369, 0.182628,
		0.473899, 0.008748, -0.880536,
		57.029728, 58.690659, 52.920151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.375416, 58.439770, 53.639084>,  <56.697998, 58.684536, 53.536526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.375416, 58.439770, 53.639084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.365059, 58.682232, 53.321114>,  <57.358845, 58.827709, 53.130333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.365059, 58.682232, 53.321114>,  <57.375416, 58.439770, 53.639084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.365059, 58.682232, 53.321114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708548, 0.572074, 0.413150,
		0.705188, -0.552546, -0.444300,
		-0.025888, 0.606156, -0.794924,
		57.357292, 58.864079, 53.082638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.956841, 58.540981, 53.135754>,  <57.375416, 58.439770, 53.639084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.956841, 58.540981, 53.135754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.709572, 58.841423, 53.228447>,  <57.561211, 59.021687, 53.284065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.709572, 58.841423, 53.228447>,  <57.956841, 58.540981, 53.135754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.709572, 58.841423, 53.228447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776138, 0.536608, 0.331152,
		0.124378, 0.384570, -0.914678,
		-0.618174, 0.751105, 0.231737,
		57.524120, 59.066753, 53.297970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.922752, 59.286854, 52.805317>,  <57.956841, 58.540981, 53.135754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.922752, 59.286854, 52.805317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.830353, 59.355934, 53.188320>,  <57.774914, 59.397381, 53.418121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.830353, 59.355934, 53.188320>,  <57.922752, 59.286854, 52.805317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.830353, 59.355934, 53.188320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834747, 0.540752, 0.103851,
		-0.499839, 0.823263, -0.269070,
		-0.230997, 0.172697, 0.957505,
		57.761055, 59.407742, 53.475571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.212410, 59.970654, 52.979752>,  <57.922752, 59.286854, 52.805317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.212410, 59.970654, 52.979752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.212311, 59.739716, 53.306351>,  <58.212250, 59.601154, 53.502312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.212311, 59.739716, 53.306351>,  <58.212410, 59.970654, 52.979752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.212311, 59.739716, 53.306351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925998, 0.308119, 0.218153,
		-0.377529, 0.756134, 0.534541,
		-0.000251, -0.577343, 0.816502,
		58.212234, 59.566513, 53.551300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.428024, 60.356846, 53.605091>,  <58.212410, 59.970654, 52.979752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.428024, 60.356846, 53.605091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.486214, 59.971626, 53.695755>,  <58.521126, 59.740494, 53.750153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.486214, 59.971626, 53.695755>,  <58.428024, 60.356846, 53.605091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.486214, 59.971626, 53.695755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934892, 0.208776, 0.287036,
		-0.323751, 0.170148, 0.930717,
		0.145473, -0.963048, 0.226662,
		58.529854, 59.682713, 53.763752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.787193, 60.290115, 54.192612>,  <58.428024, 60.356846, 53.605091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.787193, 60.290115, 54.192612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.847687, 59.931046, 54.027054>,  <58.883984, 59.715603, 53.927719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.847687, 59.931046, 54.027054>,  <58.787193, 60.290115, 54.192612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.847687, 59.931046, 54.027054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921847, -0.023071, 0.386868,
		-0.356830, -0.440055, 0.824029,
		0.151232, -0.897675, -0.413896,
		58.893055, 59.661743, 53.902885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.974705, 59.751205, 54.647366>,  <58.787193, 60.290115, 54.192612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.974705, 59.751205, 54.647366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.146805, 59.597916, 54.320435>,  <59.250065, 59.505943, 54.124275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.146805, 59.597916, 54.320435>,  <58.974705, 59.751205, 54.647366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.146805, 59.597916, 54.320435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857415, -0.109709, 0.502796,
		-0.282350, -0.917118, 0.281377,
		0.430254, -0.383221, -0.817327,
		59.275883, 59.482948, 54.075237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.270012, 59.056602, 54.798935>,  <58.974705, 59.751205, 54.647366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.270012, 59.056602, 54.798935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.469864, 59.227776, 54.497673>,  <59.589775, 59.330479, 54.316917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.469864, 59.227776, 54.497673>,  <59.270012, 59.056602, 54.798935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.469864, 59.227776, 54.497673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856438, -0.113618, 0.503591,
		0.129933, -0.896639, -0.423268,
		0.499631, 0.427936, -0.753153,
		59.619755, 59.356155, 54.271729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.838821, 58.680073, 54.617401>,  <59.270012, 59.056602, 54.798935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.838821, 58.680073, 54.617401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.943222, 59.057732, 54.536934>,  <60.005863, 59.284325, 54.488655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.943222, 59.057732, 54.536934>,  <59.838821, 58.680073, 54.617401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.943222, 59.057732, 54.536934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903744, -0.165743, 0.394684,
		0.339296, -0.284818, -0.896525,
		0.261006, 0.944144, -0.201166,
		60.021523, 59.340977, 54.476585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.614704, 58.723118, 54.522163>,  <59.838821, 58.680073, 54.617401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.614704, 58.723118, 54.522163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.527946, 59.102699, 54.613770>,  <60.475891, 59.330448, 54.668732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.527946, 59.102699, 54.613770>,  <60.614704, 58.723118, 54.522163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.527946, 59.102699, 54.613770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870858, 0.082090, 0.484631,
		0.441091, 0.304553, -0.844207,
		-0.216897, 0.948951, 0.229013,
		60.462879, 59.387386, 54.682472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.993801, 59.224846, 54.193363>,  <60.614704, 58.723118, 54.522163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.993801, 59.224846, 54.193363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.877769, 59.317665, 54.564743>,  <60.808151, 59.373356, 54.787571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.877769, 59.317665, 54.564743>,  <60.993801, 59.224846, 54.193363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.877769, 59.317665, 54.564743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954324, -0.002421, 0.298765,
		0.071574, 0.972702, -0.220743,
		-0.290075, 0.232044, 0.928446,
		60.790749, 59.387280, 54.843277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.394497, 59.878719, 54.475475>,  <60.993801, 59.224846, 54.193363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.394497, 59.878719, 54.475475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.268089, 59.631981, 54.763817>,  <61.192245, 59.483940, 54.936821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.268089, 59.631981, 54.763817>,  <61.394497, 59.878719, 54.475475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.268089, 59.631981, 54.763817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926527, -0.037164, 0.374388,
		-0.204148, 0.786209, 0.583266,
		-0.316024, -0.616843, 0.720857,
		61.173283, 59.446930, 54.980072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.500221, 60.176853, 55.246998>,  <61.394497, 59.878719, 54.475475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.500221, 60.176853, 55.246998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.516617, 59.781555, 55.188080>,  <61.526455, 59.544376, 55.152729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.516617, 59.781555, 55.188080>,  <61.500221, 60.176853, 55.246998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.516617, 59.781555, 55.188080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915531, -0.021891, 0.401651,
		-0.400153, -0.151313, 0.903870,
		0.040988, -0.988244, -0.147291,
		61.528912, 59.485081, 55.143894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.691730, 59.729095, 55.860725>,  <61.500221, 60.176853, 55.246998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.691730, 59.729095, 55.860725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.813019, 59.570614, 55.514069>,  <61.885792, 59.475525, 55.306072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.813019, 59.570614, 55.514069>,  <61.691730, 59.729095, 55.860725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.813019, 59.570614, 55.514069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950204, 0.057101, 0.306351,
		-0.071893, -0.916383, 0.393793,
		0.303221, -0.396209, -0.866646,
		61.903984, 59.451752, 55.254074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.823708, 58.984421, 55.868065>,  <61.691730, 59.729095, 55.860725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.823708, 58.984421, 55.868065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.050270, 59.223919, 55.641548>,  <62.186207, 59.367619, 55.505638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.050270, 59.223919, 55.641548>,  <61.823708, 58.984421, 55.868065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.050270, 59.223919, 55.641548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817534, -0.321502, 0.477781,
		0.104005, -0.733582, -0.671596,
		0.566410, 0.598744, -0.566290,
		62.220192, 59.403542, 55.471661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.465485, 58.593056, 55.702820>,  <61.823708, 58.984421, 55.868065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.465485, 58.593056, 55.702820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.536957, 58.984314, 55.660286>,  <62.579838, 59.219070, 55.634766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.536957, 58.984314, 55.660286>,  <62.465485, 58.593056, 55.702820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.536957, 58.984314, 55.660286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927440, -0.131351, 0.350144,
		0.328525, -0.161181, -0.930641,
		0.178677, 0.978145, -0.106334,
		62.590561, 59.277756, 55.628387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.107136, 58.821720, 55.333363>,  <62.465485, 58.593056, 55.702820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.107136, 58.821720, 55.333363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.000107, 59.084991, 55.614845>,  <62.935890, 59.242954, 55.783737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.000107, 59.084991, 55.614845>,  <63.107136, 58.821720, 55.333363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.000107, 59.084991, 55.614845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947905, 0.048788, 0.314796,
		0.172858, 0.751283, -0.636942,
		-0.267575, 0.658175, 0.703711,
		62.919834, 59.282444, 55.825958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.550228, 59.434158, 55.351524>,  <63.107136, 58.821720, 55.333363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.550228, 59.434158, 55.351524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.393173, 59.413044, 55.718796>,  <63.298939, 59.400375, 55.939159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.393173, 59.413044, 55.718796>,  <63.550228, 59.434158, 55.351524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.393173, 59.413044, 55.718796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907284, 0.141213, 0.396099,
		-0.150567, 0.988571, -0.007554,
		-0.392639, -0.052786, 0.918177,
		63.275383, 59.397209, 55.994247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.693581, 59.991520, 55.770893>,  <63.550228, 59.434158, 55.351524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.693581, 59.991520, 55.770893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.623451, 59.679077, 56.010605>,  <63.581375, 59.491611, 56.154430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.623451, 59.679077, 56.010605>,  <63.693581, 59.991520, 55.770893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.623451, 59.679077, 56.010605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908774, 0.105730, 0.403672,
		-0.378673, 0.615380, 0.691314,
		-0.175319, -0.781108, 0.599278,
		63.570854, 59.444744, 56.190388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.596310, 60.234928, 56.480907>,  <63.693581, 59.991520, 55.770893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.596310, 60.234928, 56.480907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.765236, 59.875084, 56.436455>,  <63.866592, 59.659180, 56.409782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.765236, 59.875084, 56.436455>,  <63.596310, 60.234928, 56.480907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.765236, 59.875084, 56.436455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893019, 0.391898, 0.221208,
		-0.155447, -0.192666, 0.968874,
		0.422319, -0.899608, -0.111135,
		63.891933, 59.605202, 56.403114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.039368, 60.166256, 57.001671>,  <63.596310, 60.234928, 56.480907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.039368, 60.166256, 57.001671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.171082, 59.943787, 56.696449>,  <64.250107, 59.810307, 56.513317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.171082, 59.943787, 56.696449>,  <64.039368, 60.166256, 57.001671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.171082, 59.943787, 56.696449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930271, 0.329535, 0.161255,
		0.161766, -0.762942, 0.625900,
		0.329284, -0.556171, -0.763050,
		64.269867, 59.776936, 56.467533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.637733, 59.702862, 57.140533>,  <64.039368, 60.166256, 57.001671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.637733, 59.702862, 57.140533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.629211, 59.825657, 56.759941>,  <64.624100, 59.899334, 56.531586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.629211, 59.825657, 56.759941>,  <64.637733, 59.702862, 57.140533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.629211, 59.825657, 56.759941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912412, 0.395035, 0.107014,
		0.408718, -0.865857, -0.288516,
		-0.021315, 0.306984, -0.951476,
		64.622818, 59.917751, 56.474499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.360245, 59.747196, 57.075165>,  <64.637733, 59.702862, 57.140533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.360245, 59.747196, 57.075165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.434349, 60.133518, 57.147705>,  <65.478813, 60.365311, 57.191231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.434349, 60.133518, 57.147705>,  <65.360245, 59.747196, 57.075165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.434349, 60.133518, 57.147705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974171, -0.204751, 0.095227,
		0.129104, 0.159026, -0.978797,
		0.185266, 0.965809, 0.181352,
		65.489929, 60.423260, 57.202110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.786499, 60.136681, 56.587177>,  <65.360245, 59.747196, 57.075165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.786499, 60.136681, 56.587177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.813049, 60.229820, 56.975273>,  <65.828979, 60.285706, 57.208130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.813049, 60.229820, 56.975273>,  <65.786499, 60.136681, 56.587177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.813049, 60.229820, 56.975273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957231, -0.289297, 0.003939,
		0.281606, 0.928487, -0.242097,
		0.066381, 0.232852, 0.970244,
		65.832962, 60.299675, 57.266346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.356705, 60.613243, 56.635536>,  <65.786499, 60.136681, 56.587177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.356705, 60.613243, 56.635536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.324280, 60.474815, 57.009415>,  <66.304825, 60.391758, 57.233742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.324280, 60.474815, 57.009415>,  <66.356705, 60.613243, 56.635536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.324280, 60.474815, 57.009415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970761, -0.240004, -0.004666,
		0.225947, 0.906992, 0.355405,
		-0.081066, -0.346068, 0.934701,
		66.299957, 60.370995, 57.289825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.975403, 60.738647, 56.976074>,  <66.356705, 60.613243, 56.635536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.975403, 60.738647, 56.976074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.795547, 60.418777, 57.135239>,  <66.687637, 60.226856, 57.230740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.795547, 60.418777, 57.135239>,  <66.975403, 60.738647, 56.976074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.795547, 60.418777, 57.135239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805749, -0.555397, -0.205678,
		0.385477, 0.228139, 0.894069,
		-0.449640, -0.799680, 0.397915,
		66.660652, 60.178875, 57.254612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.390709, 60.301033, 57.570961>,  <66.975403, 60.738647, 56.976074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.390709, 60.301033, 57.570961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.139923, 60.070122, 57.361710>,  <66.989449, 59.931576, 57.236160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.139923, 60.070122, 57.361710>,  <67.390709, 60.301033, 57.570961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.139923, 60.070122, 57.361710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754802, -0.616345, -0.224484,
		-0.192839, -0.535603, 0.822157,
		-0.626966, -0.577277, -0.523130,
		66.951836, 59.896938, 57.204769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.392601, 59.562744, 57.764622>,  <67.390709, 60.301033, 57.570961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.392601, 59.562744, 57.764622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.327499, 59.622688, 57.374535>,  <67.288437, 59.658653, 57.140484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.327499, 59.622688, 57.374535>,  <67.392601, 59.562744, 57.764622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.327499, 59.622688, 57.374535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814383, -0.537611, -0.218528,
		-0.557037, -0.829769, -0.034539,
		-0.162760, 0.149856, -0.975219,
		67.278671, 59.667645, 57.081970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.310585, 58.864502, 57.379032>,  <67.392601, 59.562744, 57.764622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.310585, 58.864502, 57.379032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.526146, 59.174110, 57.246078>,  <67.655479, 59.359875, 57.166306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.526146, 59.174110, 57.246078>,  <67.310585, 58.864502, 57.379032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.526146, 59.174110, 57.246078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813787, -0.580287, -0.031918,
		-0.217584, -0.253290, -0.942603,
		0.538896, 0.774023, -0.332385,
		67.687813, 59.406319, 57.146362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.807785, 58.648285, 56.848312>,  <67.310585, 58.864502, 57.379032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.807785, 58.648285, 56.848312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.938896, 58.967941, 57.049881>,  <68.017563, 59.159733, 57.170822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.938896, 58.967941, 57.049881>,  <67.807785, 58.648285, 56.848312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.938896, 58.967941, 57.049881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884407, -0.447127, 0.133800,
		0.332241, 0.401813, -0.853324,
		0.327782, 0.799139, 0.503920,
		68.037231, 59.207684, 57.201057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.429604, 58.683941, 56.606430>,  <67.807785, 58.648285, 56.848312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.429604, 58.683941, 56.606430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.428688, 58.923134, 56.927032>,  <68.428139, 59.066650, 57.119392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.428688, 58.923134, 56.927032>,  <68.429604, 58.683941, 56.606430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.428688, 58.923134, 56.927032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977978, -0.165939, 0.126585,
		0.208697, 0.784143, -0.584436,
		-0.002280, 0.597983, 0.801506,
		68.428001, 59.102528, 57.167484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.980103, 59.255825, 56.612839>,  <68.429604, 58.683941, 56.606430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.980103, 59.255825, 56.612839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.928093, 59.171036, 57.000275>,  <68.896889, 59.120163, 57.232735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.928093, 59.171036, 57.000275>,  <68.980103, 59.255825, 56.612839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.928093, 59.171036, 57.000275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990909, -0.061822, 0.119488,
		0.034552, 0.975319, 0.218081,
		-0.130022, -0.211970, 0.968588,
		68.889084, 59.107445, 57.290852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.585785, 59.607349, 56.878922>,  <68.980103, 59.255825, 56.612839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.585785, 59.607349, 56.878922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.428932, 59.323441, 57.112999>,  <69.334816, 59.153095, 57.253445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.428932, 59.323441, 57.112999>,  <69.585785, 59.607349, 56.878922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.428932, 59.323441, 57.112999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916470, -0.246484, 0.315164,
		-0.079452, 0.659904, 0.747137,
		-0.392135, -0.709770, 0.585198,
		69.311295, 59.110508, 57.288559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.795937, 59.711533, 57.660458>,  <69.585785, 59.607349, 56.878922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.795937, 59.711533, 57.660458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.703430, 59.328007, 57.594498>,  <69.647926, 59.097893, 57.554920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.703430, 59.328007, 57.594498>,  <69.795937, 59.711533, 57.660458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.703430, 59.328007, 57.594498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882961, -0.278029, 0.378260,
		-0.408527, -0.058118, 0.910894,
		-0.231271, -0.958813, -0.164899,
		69.634048, 59.040363, 57.545029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.851166, 59.202469, 58.260845>,  <69.795937, 59.711533, 57.660458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.851166, 59.202469, 58.260845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.950943, 59.017933, 57.920273>,  <70.010811, 58.907211, 57.715927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.950943, 59.017933, 57.920273>,  <69.851166, 59.202469, 58.260845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.950943, 59.017933, 57.920273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847709, -0.321023, 0.422297,
		-0.468153, -0.827109, 0.311005,
		0.249446, -0.461341, -0.851435,
		70.025780, 58.879532, 57.664841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.008949, 58.489830, 58.335014>,  <69.851166, 59.202469, 58.260845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.008949, 58.489830, 58.335014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.203888, 58.651936, 58.025627>,  <70.320847, 58.749199, 57.839993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.203888, 58.651936, 58.025627>,  <70.008949, 58.489830, 58.335014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.203888, 58.651936, 58.025627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870842, -0.290791, 0.396326,
		-0.064300, -0.866717, -0.494639,
		0.487339, 0.405268, -0.773471,
		70.350090, 58.773518, 57.793587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.469147, 57.943832, 57.985920>,  <70.008949, 58.489830, 58.335014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.469147, 57.943832, 57.985920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.595413, 58.322193, 58.015892>,  <70.671173, 58.549210, 58.033875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.595413, 58.322193, 58.015892>,  <70.469147, 57.943832, 57.985920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.595413, 58.322193, 58.015892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752612, -0.297690, 0.587329,
		0.577866, -0.129004, -0.805871,
		0.315668, 0.945906, 0.074935,
		70.690117, 58.605965, 58.038372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.262558, 58.102539, 57.985188>,  <70.469147, 57.943832, 57.985920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.262558, 58.102539, 57.985188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.092583, 58.392105, 58.202583>,  <70.990601, 58.565845, 58.333019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.092583, 58.392105, 58.202583>,  <71.262558, 58.102539, 57.985188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.092583, 58.392105, 58.202583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635948, -0.188534, 0.748348,
		0.644206, 0.663629, -0.380257,
		-0.424934, 0.723914, 0.543488,
		70.965103, 58.609280, 58.365631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.710892, 58.790627, 58.228462>,  <71.262558, 58.102539, 57.985188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.710892, 58.790627, 58.228462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.439560, 58.652439, 58.487854>,  <71.276764, 58.569527, 58.643490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.439560, 58.652439, 58.487854>,  <71.710892, 58.790627, 58.228462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.439560, 58.652439, 58.487854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724173, -0.165044, 0.669578,
		-0.124293, 0.923802, 0.362135,
		-0.678325, -0.345472, 0.648478,
		71.236061, 58.548798, 58.682396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.845680, 59.117420, 58.861679>,  <71.710892, 58.790627, 58.228462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.845680, 59.117420, 58.861679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.666168, 58.762756, 58.906288>,  <71.558464, 58.549957, 58.933052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.666168, 58.762756, 58.906288>,  <71.845680, 59.117420, 58.861679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.666168, 58.762756, 58.906288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703247, -0.273396, 0.656276,
		-0.551406, 0.372943, 0.746234,
		-0.448771, -0.886661, 0.111519,
		71.531540, 58.496758, 58.939743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.552429, 59.047028, 59.584354>,  <71.845680, 59.117420, 58.861679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.552429, 59.047028, 59.584354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.685493, 58.718872, 59.398323>,  <71.765335, 58.521980, 59.286705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.685493, 58.718872, 59.398323>,  <71.552429, 59.047028, 59.584354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.685493, 58.718872, 59.398323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732011, -0.086282, 0.675807,
		-0.594552, -0.565257, 0.571832,
		0.332666, -0.820390, -0.465074,
		71.785294, 58.472755, 59.258801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.561470, 58.511902, 60.122383>,  <71.552429, 59.047028, 59.584354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.561470, 58.511902, 60.122383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.789124, 58.428017, 59.804359>,  <71.925713, 58.377686, 59.613544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.789124, 58.428017, 59.804359>,  <71.561470, 58.511902, 60.122383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.789124, 58.428017, 59.804359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751092, -0.260877, 0.606468,
		-0.334599, -0.942317, 0.009046,
		0.569125, -0.209718, -0.795056,
		71.959862, 58.365101, 59.565842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.798805, 57.738991, 60.120090>,  <71.561470, 58.511902, 60.122383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.798805, 57.738991, 60.120090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.053230, 57.993256, 59.945114>,  <72.205887, 58.145817, 59.840130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.053230, 57.993256, 59.945114>,  <71.798805, 57.738991, 60.120090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.053230, 57.993256, 59.945114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704113, -0.246210, 0.666037,
		0.315674, -0.731649, -0.604185,
		0.636062, 0.635665, -0.437442,
		72.244049, 58.183956, 59.813881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.461189, 57.342056, 59.883556>,  <71.798805, 57.738991, 60.120090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.461189, 57.342056, 59.883556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.518051, 57.720551, 59.999786>,  <72.552170, 57.947647, 60.069527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.518051, 57.720551, 59.999786>,  <72.461189, 57.342056, 59.883556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.518051, 57.720551, 59.999786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686874, -0.305681, 0.659366,
		0.712737, 0.105853, -0.693398,
		0.142163, 0.946232, 0.290577,
		72.560699, 58.004421, 60.086960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.134102, 57.494381, 59.674999>,  <72.461189, 57.342056, 59.883556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.134102, 57.494381, 59.674999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.991028, 57.675896, 60.001472>,  <72.905182, 57.784805, 60.197357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.991028, 57.675896, 60.001472>,  <73.134102, 57.494381, 59.674999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.991028, 57.675896, 60.001472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738661, -0.397261, 0.544577,
		0.571356, 0.797661, -0.193102,
		-0.357676, 0.453784, 0.816179,
		72.883728, 57.812031, 60.246326>
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
