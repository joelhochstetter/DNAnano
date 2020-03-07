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
	<1.079364, 5.687235, 2.883269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.684742, 5.622406, 2.891665>,  <0.447969, 5.583509, 2.896702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.684742, 5.622406, 2.891665>,  <1.079364, 5.687235, 2.883269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.684742, 5.622406, 2.891665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147777, -0.829859, 0.538048,
		-0.069784, 0.533916, 0.842653,
		-0.986556, -0.162072, 0.020990,
		0.388775, 5.573784, 2.897961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.902312, 5.648891, 3.619928>,  <1.079364, 5.687235, 2.883269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.902312, 5.648891, 3.619928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.658062, 5.454344, 3.369942>,  <0.511512, 5.337615, 3.219950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.658062, 5.454344, 3.369942>,  <0.902312, 5.648891, 3.619928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.658062, 5.454344, 3.369942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198604, -0.858010, 0.473682,
		-0.766611, 0.165122, 0.620518,
		-0.610626, -0.486368, -0.624966,
		0.474874, 5.308434, 3.182452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.443183, 5.322150, 4.053791>,  <0.902312, 5.648891, 3.619928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.443183, 5.322150, 4.053791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.440407, 5.147356, 3.694014>,  <0.438741, 5.042480, 3.478148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.440407, 5.147356, 3.694014>,  <0.443183, 5.322150, 4.053791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.440407, 5.147356, 3.694014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206492, -0.880704, 0.426288,
		-0.978424, -0.182768, 0.096347,
		-0.006942, -0.436985, -0.899442,
		0.438324, 5.016261, 3.424181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.145724, 4.663579, 4.136761>,  <0.443183, 5.322150, 4.053791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.145724, 4.663579, 4.136761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.380836, 4.619078, 3.816227>,  <0.521904, 4.592377, 3.623907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.380836, 4.619078, 3.816227>,  <0.145724, 4.663579, 4.136761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.380836, 4.619078, 3.816227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409547, -0.813290, 0.413317,
		-0.697699, -0.571123, -0.432474,
		0.587781, -0.111252, -0.801334,
		0.557171, 4.585702, 3.575827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.192427, 3.983409, 4.034188>,  <0.145724, 4.663579, 4.136761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.192427, 3.983409, 4.034188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.523144, 4.114920, 3.851620>,  <0.721574, 4.193826, 3.742079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.523144, 4.114920, 3.851620>,  <0.192427, 3.983409, 4.034188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.523144, 4.114920, 3.851620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493010, -0.814225, 0.306560,
		-0.270840, -0.478481, -0.835285,
		0.826793, 0.328776, -0.456421,
		0.771182, 4.213552, 3.714694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.532899, 3.347990, 3.642020>,  <0.192427, 3.983409, 4.034188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.532899, 3.347990, 3.642020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.805531, 3.633451, 3.706703>,  <0.969109, 3.804728, 3.745513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.805531, 3.633451, 3.706703>,  <0.532899, 3.347990, 3.642020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.805531, 3.633451, 3.706703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625010, -0.682693, 0.378540,
		0.380544, -0.156934, -0.911349,
		0.681578, 0.713654, 0.161709,
		1.010004, 3.847548, 3.755216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.117169, 3.008993, 3.709588>,  <0.532899, 3.347990, 3.642020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.117169, 3.008993, 3.709588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.234173, 3.356655, 3.869091>,  <1.304375, 3.565252, 3.964793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.234173, 3.356655, 3.869091>,  <1.117169, 3.008993, 3.709588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.234173, 3.356655, 3.869091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656632, -0.485706, 0.576996,
		0.695178, 0.093061, -0.712789,
		0.292510, 0.869154, 0.398759,
		1.321926, 3.617402, 3.988719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.864803, 2.944649, 3.663248>,  <1.117169, 3.008993, 3.709588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.864803, 2.944649, 3.663248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.762211, 3.201571, 3.952152>,  <1.700655, 3.355724, 4.125495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.762211, 3.201571, 3.952152>,  <1.864803, 2.944649, 3.663248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.762211, 3.201571, 3.952152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645363, -0.442480, 0.622670,
		0.719530, 0.625824, -0.301032,
		-0.256481, 0.642305, 0.722262,
		1.685266, 3.394262, 4.168831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.943809, 2.759333, 5.663446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.563187, 2.844631, 5.752052>,  <0.334813, 2.895810, 5.805216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.563187, 2.844631, 5.752052>,  <0.943809, 2.759333, 5.663446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.563187, 2.844631, 5.752052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261650, -0.183181, -0.947620,
		-0.161492, -0.959674, 0.230101,
		-0.951556, 0.213239, 0.221516,
		0.277720, 2.908605, 5.818507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.257747, 2.921129, 4.942450>,  <0.943809, 2.759333, 5.663446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.257747, 2.921129, 4.942450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.612709, 3.072121, 5.048298>,  <1.825686, 3.162716, 5.111806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.612709, 3.072121, 5.048298>,  <1.257747, 2.921129, 4.942450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.612709, 3.072121, 5.048298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080214, 0.691703, -0.717714,
		-0.453960, 0.615676, 0.644099,
		0.887404, 0.377479, 0.264619,
		1.878930, 3.185364, 5.127684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.173744, 3.571937, 5.161491>,  <1.257747, 2.921129, 4.942450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.173744, 3.571937, 5.161491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.518845, 3.510017, 4.968952>,  <1.725905, 3.472866, 4.853429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.518845, 3.510017, 4.968952>,  <1.173744, 3.571937, 5.161491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.518845, 3.510017, 4.968952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234193, 0.721371, -0.651749,
		0.448120, 0.675027, 0.586112,
		0.862752, -0.154798, -0.481348,
		1.777670, 3.463578, 4.824548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.459078, 4.233082, 5.185280>,  <1.173744, 3.571937, 5.161491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.459078, 4.233082, 5.185280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.570663, 4.016476, 4.868057>,  <1.637614, 3.886512, 4.677723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.570663, 4.016476, 4.868057>,  <1.459078, 4.233082, 5.185280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.570663, 4.016476, 4.868057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394971, 0.688056, -0.608751,
		0.875316, 0.483054, -0.021941,
		0.278963, -0.541515, -0.793058,
		1.654352, 3.854021, 4.630140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.695383, 4.649606, 4.691380>,  <1.459078, 4.233082, 5.185280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.695383, 4.649606, 4.691380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.572990, 4.338249, 4.472115>,  <1.499555, 4.151435, 4.340555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.572990, 4.338249, 4.472115>,  <1.695383, 4.649606, 4.691380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.572990, 4.338249, 4.472115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361475, 0.627649, -0.689487,
		0.880744, -0.012823, -0.473418,
		-0.305982, -0.778391, -0.548163,
		1.481196, 4.104732, 4.307666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.777263, 4.869965, 3.931798>,  <1.695383, 4.649606, 4.691380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.777263, 4.869965, 3.931798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.561821, 4.537922, 3.874073>,  <1.432556, 4.338696, 3.839438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.561821, 4.537922, 3.874073>,  <1.777263, 4.869965, 3.931798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.561821, 4.537922, 3.874073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536970, 0.470175, -0.700427,
		0.649283, -0.299761, -0.698981,
		-0.538605, -0.830107, -0.144314,
		1.400239, 4.288890, 3.830779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.815616, 4.773991, 3.177735>,  <1.777263, 4.869965, 3.931798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.815616, 4.773991, 3.177735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.493950, 4.602329, 3.342243>,  <1.300950, 4.499332, 3.440948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.493950, 4.602329, 3.342243>,  <1.815616, 4.773991, 3.177735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.493950, 4.602329, 3.342243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588821, 0.480522, -0.649914,
		0.081289, -0.764804, -0.639114,
		-0.804165, -0.429155, 0.411271,
		1.252700, 4.473583, 3.465625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.447909, 4.507806, 2.633485>,  <1.815616, 4.773991, 3.177735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.447909, 4.507806, 2.633485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.182976, 4.556141, 2.929245>,  <1.024016, 4.585142, 3.106701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.182976, 4.556141, 2.929245>,  <1.447909, 4.507806, 2.633485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.182976, 4.556141, 2.929245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617661, 0.470504, -0.630175,
		-0.424039, -0.874085, -0.236994,
		-0.662334, 0.120836, 0.739400,
		0.984276, 4.592392, 3.151065>
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
