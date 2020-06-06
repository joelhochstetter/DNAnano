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
	<42.674461, 32.227531, 22.849905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448124, 32.554173, 22.804329>,  <42.312321, 32.750156, 22.776983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448124, 32.554173, 22.804329>,  <42.674461, 32.227531, 22.849905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448124, 32.554173, 22.804329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632264, -0.518439, -0.575727,
		-0.529217, -0.253723, 0.809663,
		-0.565836, 0.816606, -0.113947,
		42.278370, 32.799152, 22.770147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021042, 32.064487, 23.139437>,  <42.674461, 32.227531, 22.849905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021042, 32.064487, 23.139437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983688, 32.379475, 22.895741>,  <41.961277, 32.568466, 22.749523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983688, 32.379475, 22.895741>,  <42.021042, 32.064487, 23.139437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983688, 32.379475, 22.895741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725897, -0.472660, -0.499666,
		-0.681435, 0.395587, 0.615757,
		-0.093382, 0.787466, -0.609242,
		41.955673, 32.615715, 22.712967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361149, 32.530838, 23.096403>,  <42.021042, 32.064487, 23.139437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361149, 32.530838, 23.096403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576004, 32.452950, 22.768120>,  <41.704918, 32.406216, 22.571150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576004, 32.452950, 22.768120>,  <41.361149, 32.530838, 23.096403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576004, 32.452950, 22.768120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727928, -0.598582, -0.334395,
		-0.426148, 0.777034, -0.463266,
		0.537139, -0.194723, -0.820710,
		41.737144, 32.394531, 22.521908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044762, 32.744511, 22.437632>,  <41.361149, 32.530838, 23.096403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044762, 32.744511, 22.437632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287048, 32.427097, 22.414257>,  <41.432419, 32.236649, 22.400232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287048, 32.427097, 22.414257>,  <41.044762, 32.744511, 22.437632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287048, 32.427097, 22.414257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756923, -0.552012, -0.349787,
		0.245310, 0.256102, -0.935005,
		0.605715, -0.793533, -0.058435,
		41.468761, 32.189037, 22.396727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707893, 33.293827, 22.007563>,  <41.044762, 32.744511, 22.437632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707893, 33.293827, 22.007563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521793, 33.592007, 21.816628>,  <40.410133, 33.770916, 21.702066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521793, 33.592007, 21.816628>,  <40.707893, 33.293827, 22.007563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521793, 33.592007, 21.816628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863792, 0.500165, -0.060817,
		0.193411, -0.440614, -0.876614,
		-0.465249, 0.745449, -0.477336,
		40.382217, 33.815639, 21.673426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051105, 33.424633, 21.418297>,  <40.707893, 33.293827, 22.007563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051105, 33.424633, 21.418297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857925, 33.749809, 21.548458>,  <40.742016, 33.944916, 21.626554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857925, 33.749809, 21.548458>,  <41.051105, 33.424633, 21.418297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857925, 33.749809, 21.548458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835186, 0.539305, -0.107775,
		-0.263107, 0.219723, -0.939413,
		-0.482949, 0.812940, 0.325405,
		40.713039, 33.993690, 21.646080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170757, 33.995060, 20.959475>,  <41.051105, 33.424633, 21.418297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170757, 33.995060, 20.959475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054279, 34.187908, 21.289993>,  <40.984394, 34.303616, 21.488304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054279, 34.187908, 21.289993>,  <41.170757, 33.995060, 20.959475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054279, 34.187908, 21.289993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756870, 0.644371, -0.109246,
		-0.585112, 0.593588, -0.552536,
		-0.291191, 0.482120, 0.826298,
		40.966923, 34.332542, 21.537882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101830, 34.735622, 20.771208>,  <41.170757, 33.995060, 20.959475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101830, 34.735622, 20.771208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139584, 34.700455, 21.167866>,  <41.162235, 34.679352, 21.405861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139584, 34.700455, 21.167866>,  <41.101830, 34.735622, 20.771208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139584, 34.700455, 21.167866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763896, 0.645153, -0.015507,
		-0.638400, 0.758978, 0.128055,
		0.094384, -0.087921, 0.991646,
		41.167900, 34.674080, 21.465359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131382, 35.420025, 20.940233>,  <41.101830, 34.735622, 20.771208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131382, 35.420025, 20.940233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285995, 35.186768, 21.226040>,  <41.378765, 35.046814, 21.397524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285995, 35.186768, 21.226040>,  <41.131382, 35.420025, 20.940233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285995, 35.186768, 21.226040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710538, 0.682213, 0.172399,
		-0.587986, 0.441053, 0.678045,
		0.386534, -0.583145, 0.714517,
		41.401955, 35.011826, 21.440395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186199, 35.779015, 21.519354>,  <41.131382, 35.420025, 20.940233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186199, 35.779015, 21.519354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452976, 35.490776, 21.595169>,  <41.613041, 35.317833, 21.640657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452976, 35.490776, 21.595169>,  <41.186199, 35.779015, 21.519354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452976, 35.490776, 21.595169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714259, 0.690737, 0.112767,
		-0.212180, 0.060168, 0.975376,
		0.666944, -0.720598, 0.189536,
		41.653061, 35.274597, 21.652029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561737, 36.043159, 22.087698>,  <41.186199, 35.779015, 21.519354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561737, 36.043159, 22.087698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804489, 35.775242, 21.916553>,  <41.950142, 35.614491, 21.813868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804489, 35.775242, 21.916553>,  <41.561737, 36.043159, 22.087698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804489, 35.775242, 21.916553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768189, 0.632434, 0.099560,
		0.203909, -0.389100, 0.898344,
		0.606883, -0.669797, -0.427861,
		41.986553, 35.574303, 21.788195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191956, 36.114620, 22.357674>,  <41.561737, 36.043159, 22.087698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191956, 36.114620, 22.357674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319424, 35.935043, 22.023750>,  <42.395905, 35.827297, 21.823397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319424, 35.935043, 22.023750>,  <42.191956, 36.114620, 22.357674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319424, 35.935043, 22.023750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730077, 0.677946, -0.085890,
		0.604514, -0.582103, 0.543801,
		0.318671, -0.448938, -0.834807,
		42.415024, 35.800362, 21.773308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015972, 36.075672, 22.361357>,  <42.191956, 36.114620, 22.357674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015972, 36.075672, 22.361357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912544, 36.024952, 21.978302>,  <42.850487, 35.994522, 21.748470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912544, 36.024952, 21.978302>,  <43.015972, 36.075672, 22.361357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912544, 36.024952, 21.978302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784808, 0.550431, -0.284785,
		0.563222, -0.825196, -0.042812,
		-0.258568, -0.126798, -0.957635,
		42.834972, 35.986912, 21.691011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560192, 35.800461, 22.066427>,  <43.015972, 36.075672, 22.361357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560192, 35.800461, 22.066427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360413, 35.994080, 21.779026>,  <43.240547, 36.110252, 21.606585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360413, 35.994080, 21.779026>,  <43.560192, 35.800461, 22.066427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360413, 35.994080, 21.779026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810307, 0.554437, -0.189743,
		0.306521, -0.676976, -0.669140,
		-0.499447, 0.484049, -0.718505,
		43.210579, 36.139294, 21.563475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131321, 35.866467, 21.588531>,  <43.560192, 35.800461, 22.066427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131321, 35.866467, 21.588531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838638, 36.102085, 21.451347>,  <43.663029, 36.243458, 21.369036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838638, 36.102085, 21.451347>,  <44.131321, 35.866467, 21.588531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838638, 36.102085, 21.451347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673733, 0.548728, -0.494956,
		-0.103360, -0.593229, -0.798371,
		-0.731711, 0.589047, -0.342962,
		43.619125, 36.278801, 21.348459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047932, 35.858860, 20.805870>,  <44.131321, 35.866467, 21.588531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047932, 35.858860, 20.805870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904160, 36.212650, 20.924870>,  <43.817898, 36.424927, 20.996269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904160, 36.212650, 20.924870>,  <44.047932, 35.858860, 20.805870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904160, 36.212650, 20.924870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776600, 0.460276, -0.430161,
		-0.517401, 0.076427, -0.852323,
		-0.359428, 0.884480, 0.297500,
		43.796329, 36.477993, 21.014120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410118, 36.338039, 20.449518>,  <44.047932, 35.858860, 20.805870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.410118, 36.338039, 20.449518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270859, 36.589993, 20.727234>,  <44.187302, 36.741165, 20.893864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270859, 36.589993, 20.727234>,  <44.410118, 36.338039, 20.449518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270859, 36.589993, 20.727234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711693, 0.659645, -0.241581,
		-0.610153, 0.410014, -0.677939,
		-0.348147, 0.629886, 0.694289,
		44.166416, 36.778957, 20.935520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364735, 36.896202, 20.143795>,  <44.410118, 36.338039, 20.449518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364735, 36.896202, 20.143795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382069, 37.037132, 20.517746>,  <44.392467, 37.121689, 20.742117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382069, 37.037132, 20.517746>,  <44.364735, 36.896202, 20.143795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382069, 37.037132, 20.517746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478341, 0.814209, -0.329020,
		-0.877104, 0.461447, -0.133246,
		0.043335, 0.352322, 0.934875,
		44.395069, 37.142830, 20.798208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003029, 37.551228, 20.144552>,  <44.364735, 36.896202, 20.143795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003029, 37.551228, 20.144552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236378, 37.544418, 20.469364>,  <44.376385, 37.540333, 20.664251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236378, 37.544418, 20.469364>,  <44.003029, 37.551228, 20.144552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236378, 37.544418, 20.469364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436438, 0.849744, -0.295731,
		-0.684983, 0.526920, 0.503143,
		0.583369, -0.017020, 0.812029,
		44.411388, 37.539314, 20.712973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892834, 38.207150, 20.448626>,  <44.003029, 37.551228, 20.144552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892834, 38.207150, 20.448626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245377, 38.082172, 20.590378>,  <44.456902, 38.007187, 20.675430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245377, 38.082172, 20.590378>,  <43.892834, 38.207150, 20.448626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245377, 38.082172, 20.590378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358534, 0.930811, -0.071020,
		-0.307673, 0.189653, 0.932400,
		0.881357, -0.312446, 0.354383,
		44.509785, 37.988438, 20.696693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135441, 38.722378, 20.880838>,  <43.892834, 38.207150, 20.448626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135441, 38.722378, 20.880838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460075, 38.508762, 20.786072>,  <44.654858, 38.380592, 20.729212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460075, 38.508762, 20.786072>,  <44.135441, 38.722378, 20.880838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460075, 38.508762, 20.786072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564515, 0.821286, 0.082537,
		0.150499, -0.200729, 0.968018,
		0.811586, -0.534039, -0.236917,
		44.703552, 38.348549, 20.714996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725574, 38.910461, 21.299854>,  <44.135441, 38.722378, 20.880838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725574, 38.910461, 21.299854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877403, 38.751827, 20.965515>,  <44.968498, 38.656647, 20.764912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877403, 38.751827, 20.965515>,  <44.725574, 38.910461, 21.299854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877403, 38.751827, 20.965515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666607, 0.743719, -0.050163,
		0.641532, -0.538143, 0.546661,
		0.379567, -0.396589, -0.835850,
		44.991272, 38.632851, 20.714760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360779, 39.008739, 21.343029>,  <44.725574, 38.910461, 21.299854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360779, 39.008739, 21.343029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336361, 38.954567, 20.947468>,  <45.321712, 38.922062, 20.710131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336361, 38.954567, 20.947468>,  <45.360779, 39.008739, 21.343029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336361, 38.954567, 20.947468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617975, 0.772899, -0.143995,
		0.783825, -0.619907, 0.036516,
		-0.061040, -0.135433, -0.988904,
		45.318050, 38.913937, 20.650797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.090305, 39.169930, 21.089264>,  <45.360779, 39.008739, 21.343029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.090305, 39.169930, 21.089264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854786, 39.186649, 20.766384>,  <45.713474, 39.196682, 20.572657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854786, 39.186649, 20.766384>,  <46.090305, 39.169930, 21.089264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.854786, 39.186649, 20.766384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617908, 0.667069, -0.416184,
		0.521062, -0.743823, -0.418596,
		-0.588799, 0.041796, -0.807198,
		45.678146, 39.199188, 20.524225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.573906, 39.246231, 20.490566>,  <46.090305, 39.169930, 21.089264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.573906, 39.246231, 20.490566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214714, 39.401543, 20.407734>,  <45.999199, 39.494728, 20.358034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214714, 39.401543, 20.407734>,  <46.573906, 39.246231, 20.490566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214714, 39.401543, 20.407734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438854, 0.824787, -0.356559,
		0.032353, -0.411059, -0.911035,
		-0.897976, 0.388276, -0.207079,
		45.945320, 39.518024, 20.345610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.707314, 39.810501, 19.985399>,  <46.573906, 39.246231, 20.490566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.707314, 39.810501, 19.985399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.327835, 39.838757, 20.108677>,  <46.100147, 39.855709, 20.182644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.327835, 39.838757, 20.108677>,  <46.707314, 39.810501, 19.985399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.327835, 39.838757, 20.108677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064672, 0.997469, -0.029543,
		-0.309500, -0.008096, -0.950865,
		-0.948698, 0.070638, 0.308193,
		46.043224, 39.859947, 20.201136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201443, 40.315044, 19.528883>,  <46.707314, 39.810501, 19.985399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201443, 40.315044, 19.528883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.146336, 40.294178, 19.924519>,  <46.113270, 40.281658, 20.161900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.146336, 40.294178, 19.924519>,  <46.201443, 40.315044, 19.528883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.146336, 40.294178, 19.924519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377912, 0.920297, 0.101178,
		-0.915533, 0.387728, -0.107077,
		-0.137773, -0.052166, 0.989089,
		46.105003, 40.278526, 20.221245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792568, 40.917206, 19.903402>,  <46.201443, 40.315044, 19.528883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792568, 40.917206, 19.903402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076061, 40.750858, 20.131348>,  <46.246159, 40.651051, 20.268114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076061, 40.750858, 20.131348>,  <45.792568, 40.917206, 19.903402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.076061, 40.750858, 20.131348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350175, 0.908618, 0.227577,
		-0.612430, 0.038259, 0.789598,
		0.708736, -0.415873, 0.569863,
		46.288681, 40.626095, 20.302307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869972, 41.155670, 20.665802>,  <45.792568, 40.917206, 19.903402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.869972, 41.155670, 20.665802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236790, 41.058205, 20.539524>,  <46.456879, 40.999725, 20.463758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236790, 41.058205, 20.539524>,  <45.869972, 41.155670, 20.665802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.236790, 41.058205, 20.539524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311175, 0.932303, 0.184337,
		0.249407, -0.267281, 0.930783,
		0.917042, -0.243662, -0.315694,
		46.511902, 40.985107, 20.444817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.444252, 41.237350, 21.131243>,  <45.869972, 41.155670, 20.665802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.444252, 41.237350, 21.131243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.491207, 41.296200, 20.738392>,  <46.519379, 41.331509, 20.502682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.491207, 41.296200, 20.738392>,  <46.444252, 41.237350, 21.131243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.491207, 41.296200, 20.738392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364907, 0.913391, 0.180443,
		0.923615, -0.379566, 0.053531,
		0.117385, 0.147126, -0.982127,
		46.526424, 41.340336, 20.443754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.993790, 41.258354, 20.669210>,  <46.444252, 41.237350, 21.131243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.993790, 41.258354, 20.669210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887791, 41.346073, 20.293617>,  <46.824192, 41.398705, 20.068262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887791, 41.346073, 20.293617>,  <46.993790, 41.258354, 20.669210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.887791, 41.346073, 20.293617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918604, 0.353481, -0.176687,
		0.293164, -0.909373, -0.295121,
		-0.264994, 0.219301, -0.938981,
		46.808292, 41.411861, 20.011923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.089645, 41.763340, 21.280558>,  <46.993790, 41.258354, 20.669210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.089645, 41.763340, 21.280558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883930, 42.063625, 21.446423>,  <46.760502, 42.243797, 21.545942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883930, 42.063625, 21.446423>,  <47.089645, 41.763340, 21.280558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.883930, 42.063625, 21.446423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379074, -0.632690, 0.675282,
		0.769293, 0.190101, 0.609958,
		-0.514287, 0.750710, 0.414662,
		46.729645, 42.288837, 21.570822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.150181, 41.866787, 22.032717>,  <47.089645, 41.763340, 21.280558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.150181, 41.866787, 22.032717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788654, 41.965679, 21.893009>,  <46.571739, 42.025013, 21.809185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788654, 41.965679, 21.893009>,  <47.150181, 41.866787, 22.032717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.788654, 41.965679, 21.893009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413889, -0.712344, 0.566800,
		-0.108669, 0.656843, 0.746156,
		-0.903818, 0.247232, -0.349270,
		46.517509, 42.039848, 21.788229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632256, 41.839066, 22.637205>,  <47.150181, 41.866787, 22.032717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.632256, 41.839066, 22.637205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439518, 41.766739, 22.294247>,  <46.323875, 41.723343, 22.088470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439518, 41.766739, 22.294247>,  <46.632256, 41.839066, 22.637205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439518, 41.766739, 22.294247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549112, -0.700215, 0.456262,
		-0.682862, 0.690655, 0.238107,
		-0.481846, -0.180817, -0.857397,
		46.294964, 41.712494, 22.037027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.052902, 41.389637, 22.969917>,  <46.632256, 41.839066, 22.637205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.052902, 41.389637, 22.969917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.944370, 41.337711, 22.588440>,  <45.879250, 41.306557, 22.359554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.944370, 41.337711, 22.588440>,  <46.052902, 41.389637, 22.969917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.944370, 41.337711, 22.588440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759619, -0.579610, 0.295009,
		-0.591065, 0.804488, 0.058661,
		-0.271332, -0.129810, -0.953692,
		45.862972, 41.298767, 22.302332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377251, 41.411598, 22.994556>,  <46.052902, 41.389637, 22.969917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377251, 41.411598, 22.994556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455723, 41.199390, 22.664692>,  <45.502808, 41.072067, 22.466774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455723, 41.199390, 22.664692>,  <45.377251, 41.411598, 22.994556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.455723, 41.199390, 22.664692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896234, -0.438227, 0.068713,
		-0.397842, 0.725608, -0.561441,
		0.196180, -0.530519, -0.824660,
		45.514576, 41.040234, 22.417294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.852589, 41.536411, 22.505669>,  <45.377251, 41.411598, 22.994556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.852589, 41.536411, 22.505669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016941, 41.172844, 22.477280>,  <45.115551, 40.954704, 22.460247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016941, 41.172844, 22.477280>,  <44.852589, 41.536411, 22.505669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016941, 41.172844, 22.477280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908029, -0.414957, 0.057396,
		-0.081619, 0.040863, -0.995825,
		0.410879, -0.908923, -0.070973,
		45.140205, 40.900166, 22.455988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433105, 41.128147, 22.099768>,  <44.852589, 41.536411, 22.505669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433105, 41.128147, 22.099768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626732, 40.852386, 22.315327>,  <44.742908, 40.686932, 22.444662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626732, 40.852386, 22.315327>,  <44.433105, 41.128147, 22.099768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626732, 40.852386, 22.315327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854503, -0.505045, 0.121471,
		0.188426, -0.519290, -0.833567,
		0.484067, -0.689397, 0.538898,
		44.771954, 40.645569, 22.476995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119213, 40.565704, 21.834478>,  <44.433105, 41.128147, 22.099768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119213, 40.565704, 21.834478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312309, 40.426937, 22.156128>,  <44.428165, 40.343678, 22.349117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312309, 40.426937, 22.156128>,  <44.119213, 40.565704, 21.834478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312309, 40.426937, 22.156128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791687, -0.565434, 0.231333,
		0.374425, -0.748287, -0.547606,
		0.482739, -0.346916, 0.804122,
		44.457130, 40.322861, 22.397364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112888, 39.875061, 21.838125>,  <44.119213, 40.565704, 21.834478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112888, 39.875061, 21.838125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155327, 39.961777, 22.226299>,  <44.180790, 40.013805, 22.459204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155327, 39.961777, 22.226299>,  <44.112888, 39.875061, 21.838125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155327, 39.961777, 22.226299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791034, -0.572944, 0.214476,
		0.602501, -0.790404, 0.110699,
		0.106098, 0.216789, 0.970436,
		44.187157, 40.026814, 22.517429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203808, 39.215679, 22.136250>,  <44.112888, 39.875061, 21.838125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203808, 39.215679, 22.136250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086346, 39.450798, 22.437782>,  <44.015869, 39.591869, 22.618702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086346, 39.450798, 22.437782>,  <44.203808, 39.215679, 22.136250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086346, 39.450798, 22.437782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644491, -0.704152, 0.297996,
		0.705972, -0.398328, 0.585609,
		-0.293657, 0.587797, 0.753830,
		43.998249, 39.627136, 22.663931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097984, 38.801052, 22.679527>,  <44.203808, 39.215679, 22.136250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097984, 38.801052, 22.679527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904572, 39.111206, 22.841995>,  <43.788525, 39.297298, 22.939476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904572, 39.111206, 22.841995>,  <44.097984, 38.801052, 22.679527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904572, 39.111206, 22.841995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732871, -0.612349, 0.296527,
		0.478640, -0.154288, 0.864349,
		-0.483533, 0.775386, 0.406168,
		43.759510, 39.343822, 22.963846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902283, 38.655560, 23.468029>,  <44.097984, 38.801052, 22.679527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902283, 38.655560, 23.468029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678349, 38.934845, 23.289555>,  <43.543987, 39.102417, 23.182470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678349, 38.934845, 23.289555>,  <43.902283, 38.655560, 23.468029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678349, 38.934845, 23.289555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825809, -0.514343, 0.231280,
		-0.068008, 0.497941, 0.864540,
		-0.559834, 0.698216, -0.446184,
		43.510399, 39.144310, 23.155699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507969, 38.789112, 23.951595>,  <43.902283, 38.655560, 23.468029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507969, 38.789112, 23.951595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330452, 38.888752, 23.607269>,  <43.223942, 38.948536, 23.400675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330452, 38.888752, 23.607269>,  <43.507969, 38.789112, 23.951595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330452, 38.888752, 23.607269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811431, -0.519359, 0.268042,
		-0.380302, 0.817445, 0.432614,
		-0.443791, 0.249099, -0.860813,
		43.197315, 38.963482, 23.349026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894802, 39.015579, 24.233210>,  <43.507969, 38.789112, 23.951595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894802, 39.015579, 24.233210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847286, 38.957363, 23.840332>,  <42.818775, 38.922432, 23.604605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847286, 38.957363, 23.840332>,  <42.894802, 39.015579, 24.233210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847286, 38.957363, 23.840332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824754, -0.536339, 0.179226,
		-0.552874, 0.831359, -0.056324,
		-0.118792, -0.145543, -0.982194,
		42.811649, 38.913700, 23.545673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083656, 38.971584, 24.151316>,  <42.894802, 39.015579, 24.233210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083656, 38.971584, 24.151316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235725, 38.777241, 23.836506>,  <42.326965, 38.660633, 23.647619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235725, 38.777241, 23.836506>,  <42.083656, 38.971584, 24.151316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235725, 38.777241, 23.836506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822815, -0.566290, -0.047865,
		-0.422429, 0.665773, -0.615060,
		0.380170, -0.485861, -0.787026,
		42.349777, 38.631481, 23.600399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552593, 38.899208, 23.662127>,  <42.083656, 38.971584, 24.151316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552593, 38.899208, 23.662127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826614, 38.635975, 23.537144>,  <41.991028, 38.478035, 23.462154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826614, 38.635975, 23.537144>,  <41.552593, 38.899208, 23.662127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826614, 38.635975, 23.537144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722206, -0.669723, -0.172888,
		-0.095487, 0.344098, -0.934066,
		0.685056, -0.658079, -0.312459,
		42.032131, 38.438553, 23.443405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357258, 38.710476, 22.970144>,  <41.552593, 38.899208, 23.662127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357258, 38.710476, 22.970144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593304, 38.420868, 23.113007>,  <41.734932, 38.247105, 23.198723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593304, 38.420868, 23.113007>,  <41.357258, 38.710476, 22.970144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593304, 38.420868, 23.113007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696721, -0.680222, -0.227767,
		0.407852, -0.114428, -0.905850,
		0.590116, -0.724020, 0.357154,
		41.770340, 38.203663, 23.220152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336311, 38.241795, 22.462481>,  <41.357258, 38.710476, 22.970144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336311, 38.241795, 22.462481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451683, 38.048668, 22.793224>,  <41.520905, 37.932793, 22.991671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451683, 38.048668, 22.793224>,  <41.336311, 38.241795, 22.462481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451683, 38.048668, 22.793224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557618, -0.786708, -0.264863,
		0.778377, -0.384678, -0.496137,
		0.288428, -0.482819, 0.826859,
		41.538212, 37.903824, 23.041283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274078, 37.619247, 22.247332>,  <41.336311, 38.241795, 22.462481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274078, 37.619247, 22.247332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284725, 37.570839, 22.644249>,  <41.291111, 37.541794, 22.882399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284725, 37.570839, 22.644249>,  <41.274078, 37.619247, 22.247332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284725, 37.570839, 22.644249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697803, -0.713031, -0.068245,
		0.715795, -0.690609, -0.103423,
		0.026613, -0.121018, 0.992293,
		41.292709, 37.534534, 22.941936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239300, 36.902649, 22.258635>,  <41.274078, 37.619247, 22.247332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239300, 36.902649, 22.258635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169983, 37.034561, 22.629841>,  <41.128395, 37.113708, 22.852566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169983, 37.034561, 22.629841>,  <41.239300, 36.902649, 22.258635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169983, 37.034561, 22.629841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620141, -0.768555, 0.157313,
		0.765111, -0.548241, 0.337692,
		-0.173290, 0.329779, 0.928017,
		41.117996, 37.133495, 22.908247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208225, 36.306568, 22.646023>,  <41.239300, 36.902649, 22.258635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208225, 36.306568, 22.646023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023819, 36.587662, 22.862774>,  <40.913174, 36.756317, 22.992825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023819, 36.587662, 22.862774>,  <41.208225, 36.306568, 22.646023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023819, 36.587662, 22.862774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760832, -0.627301, 0.166218,
		0.456727, -0.335648, 0.823858,
		-0.461016, 0.702733, 0.541877,
		40.885513, 36.798481, 23.025337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786537, 35.831711, 23.043383>,  <41.208225, 36.306568, 22.646023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786537, 35.831711, 23.043383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639866, 36.201927, 23.081181>,  <40.551865, 36.424057, 23.103859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639866, 36.201927, 23.081181>,  <40.786537, 35.831711, 23.043383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639866, 36.201927, 23.081181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925018, -0.373546, 0.069323,
		0.099459, -0.061990, 0.993109,
		-0.366675, 0.925538, 0.094494,
		40.529865, 36.479588, 23.109529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310535, 35.842484, 23.602333>,  <40.786537, 35.831711, 23.043383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310535, 35.842484, 23.602333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214268, 36.162735, 23.382854>,  <40.156506, 36.354885, 23.251167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214268, 36.162735, 23.382854>,  <40.310535, 35.842484, 23.602333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214268, 36.162735, 23.382854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951590, -0.305991, -0.029097,
		-0.191192, 0.515130, 0.835516,
		-0.240671, 0.800632, -0.548695,
		40.142067, 36.402924, 23.218246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744251, 36.208637, 23.876818>,  <40.310535, 35.842484, 23.602333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744251, 36.208637, 23.876818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745155, 36.292168, 23.485638>,  <39.745697, 36.342285, 23.250929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745155, 36.292168, 23.485638>,  <39.744251, 36.208637, 23.876818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745155, 36.292168, 23.485638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936657, -0.342080, -0.075209,
		-0.350242, 0.916174, 0.194823,
		0.002259, 0.208823, -0.977951,
		39.745834, 36.354816, 23.192253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169888, 36.711178, 23.744362>,  <39.744251, 36.208637, 23.876818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169888, 36.711178, 23.744362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240032, 36.557907, 23.381611>,  <39.282120, 36.465946, 23.163960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240032, 36.557907, 23.381611>,  <39.169888, 36.711178, 23.744362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240032, 36.557907, 23.381611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979308, -0.162406, -0.120747,
		-0.101015, 0.909287, -0.403724,
		0.175361, -0.383173, -0.906878,
		39.292641, 36.442955, 23.109547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597233, 36.901638, 23.309116>,  <39.169888, 36.711178, 23.744362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597233, 36.901638, 23.309116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749725, 36.614143, 23.076538>,  <38.841221, 36.441647, 22.936991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749725, 36.614143, 23.076538>,  <38.597233, 36.901638, 23.309116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749725, 36.614143, 23.076538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911307, -0.186376, -0.367128,
		0.155502, 0.669835, -0.726044,
		0.381232, -0.718738, -0.581444,
		38.864094, 36.398521, 22.902105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216312, 37.107521, 22.763367>,  <38.597233, 36.901638, 23.309116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216312, 37.107521, 22.763367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362530, 36.735619, 22.745808>,  <38.450260, 36.512478, 22.735273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362530, 36.735619, 22.745808>,  <38.216312, 37.107521, 22.763367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362530, 36.735619, 22.745808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740605, -0.261960, -0.618774,
		0.563812, 0.258696, -0.784342,
		0.365541, -0.929760, -0.043895,
		38.472191, 36.456692, 22.732639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236172, 36.925610, 22.047812>,  <38.216312, 37.107521, 22.763367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236172, 36.925610, 22.047812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241425, 36.585880, 22.258892>,  <38.244576, 36.382042, 22.385540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241425, 36.585880, 22.258892>,  <38.236172, 36.925610, 22.047812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241425, 36.585880, 22.258892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638180, -0.413401, -0.649481,
		0.769775, -0.328240, -0.547453,
		0.013132, -0.849327, 0.527702,
		38.245365, 36.331081, 22.417202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187454, 36.376083, 21.595396>,  <38.236172, 36.925610, 22.047812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187454, 36.376083, 21.595396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053978, 36.242313, 21.947945>,  <37.973892, 36.162052, 22.159473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053978, 36.242313, 21.947945>,  <38.187454, 36.376083, 21.595396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053978, 36.242313, 21.947945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800841, -0.392657, -0.452187,
		0.497299, -0.856727, -0.136796,
		-0.333687, -0.334425, 0.881370,
		37.953873, 36.141987, 22.212357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949287, 35.699715, 21.453259>,  <38.187454, 36.376083, 21.595396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949287, 35.699715, 21.453259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778015, 35.811874, 21.796894>,  <37.675251, 35.879169, 22.003075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778015, 35.811874, 21.796894>,  <37.949287, 35.699715, 21.453259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778015, 35.811874, 21.796894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838340, -0.478188, -0.261767,
		0.337407, -0.832294, 0.439822,
		-0.428184, 0.280398, 0.859090,
		37.649559, 35.895992, 22.054621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759510, 35.085106, 21.905647>,  <37.949287, 35.699715, 21.453259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759510, 35.085106, 21.905647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529533, 35.412201, 21.916595>,  <37.391548, 35.608459, 21.923164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529533, 35.412201, 21.916595>,  <37.759510, 35.085106, 21.905647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529533, 35.412201, 21.916595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686464, -0.463894, -0.559973,
		-0.445220, -0.340731, 0.828059,
		-0.574932, 0.817744, 0.027365,
		37.357052, 35.657524, 21.924807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047585, 34.950829, 21.888103>,  <37.759510, 35.085106, 21.905647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047585, 34.950829, 21.888103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027035, 35.326046, 21.751030>,  <37.014706, 35.551178, 21.668785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027035, 35.326046, 21.751030>,  <37.047585, 34.950829, 21.888103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027035, 35.326046, 21.751030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446825, -0.328468, -0.832139,
		-0.893145, 0.110370, 0.436017,
		-0.051374, 0.938045, -0.342685,
		37.011623, 35.607460, 21.648224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434258, 35.161797, 21.504372>,  <37.047585, 34.950829, 21.888103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434258, 35.161797, 21.504372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698299, 35.393578, 21.313168>,  <36.856724, 35.532646, 21.198446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698299, 35.393578, 21.313168>,  <36.434258, 35.161797, 21.504372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698299, 35.393578, 21.313168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412864, -0.251740, -0.875312,
		-0.627536, 0.775152, 0.073060,
		0.660108, 0.579453, -0.478008,
		36.896332, 35.567413, 21.169765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286152, 35.033443, 22.296585>,  <36.434258, 35.161797, 21.504372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286152, 35.033443, 22.296585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178093, 35.252693, 22.613213>,  <36.113258, 35.384243, 22.803188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178093, 35.252693, 22.613213>,  <36.286152, 35.033443, 22.296585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178093, 35.252693, 22.613213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058859, -0.829998, 0.554652,
		0.961019, 0.103247, 0.256482,
		-0.270146, 0.548128, 0.791566,
		36.097050, 35.417133, 22.850683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767120, 34.830318, 22.920349>,  <36.286152, 35.033443, 22.296585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767120, 34.830318, 22.920349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457928, 35.016560, 23.092728>,  <36.272411, 35.128304, 23.196156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457928, 35.016560, 23.092728>,  <36.767120, 34.830318, 22.920349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457928, 35.016560, 23.092728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047848, -0.720120, 0.692197,
		0.632620, 0.514436, 0.578919,
		-0.772983, 0.465598, 0.430948,
		36.226032, 35.156239, 23.222012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959160, 34.771561, 23.696033>,  <36.767120, 34.830318, 22.920349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959160, 34.771561, 23.696033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568501, 34.849552, 23.659939>,  <36.334106, 34.896347, 23.638283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568501, 34.849552, 23.659939>,  <36.959160, 34.771561, 23.696033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568501, 34.849552, 23.659939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210602, -0.785807, 0.581509,
		0.042472, 0.586934, 0.808520,
		-0.976649, 0.194974, -0.090235,
		36.275505, 34.908043, 23.632868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607124, 34.838902, 24.445385>,  <36.959160, 34.771561, 23.696033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607124, 34.838902, 24.445385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327099, 34.745670, 24.175396>,  <36.159084, 34.689732, 24.013403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327099, 34.745670, 24.175396>,  <36.607124, 34.838902, 24.445385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327099, 34.745670, 24.175396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292853, -0.768373, 0.569069,
		-0.651269, 0.596051, 0.469651,
		-0.700062, -0.233079, -0.674973,
		36.117081, 34.675747, 23.972904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066116, 34.629478, 24.853811>,  <36.607124, 34.838902, 24.445385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066116, 34.629478, 24.853811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958084, 34.467461, 24.504414>,  <35.893265, 34.370251, 24.294775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958084, 34.467461, 24.504414>,  <36.066116, 34.629478, 24.853811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958084, 34.467461, 24.504414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382178, -0.787584, 0.483375,
		-0.883740, 0.464381, 0.057912,
		-0.270081, -0.405045, -0.873496,
		35.877060, 34.345947, 24.242365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485928, 34.382347, 25.004827>,  <36.066116, 34.629478, 24.853811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485928, 34.382347, 25.004827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549984, 34.190464, 24.659752>,  <35.588417, 34.075333, 24.452707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549984, 34.190464, 24.659752>,  <35.485928, 34.382347, 25.004827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549984, 34.190464, 24.659752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345908, -0.845822, 0.406118,
		-0.924500, 0.233373, -0.301390,
		0.160145, -0.479710, -0.862689,
		35.598026, 34.046551, 24.400946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867336, 34.042160, 24.913399>,  <35.485928, 34.382347, 25.004827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867336, 34.042160, 24.913399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143822, 33.828064, 24.719185>,  <35.309711, 33.699604, 24.602657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143822, 33.828064, 24.719185>,  <34.867336, 34.042160, 24.913399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143822, 33.828064, 24.719185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323445, -0.829962, 0.454473,
		-0.646228, -0.157094, -0.746801,
		0.691212, -0.535242, -0.485534,
		35.351185, 33.667492, 24.573524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545254, 33.491470, 24.551218>,  <34.867336, 34.042160, 24.913399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545254, 33.491470, 24.551218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928822, 33.387535, 24.596737>,  <35.158962, 33.325176, 24.624048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928822, 33.387535, 24.596737>,  <34.545254, 33.491470, 24.551218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928822, 33.387535, 24.596737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283654, -0.875256, 0.391749,
		-0.002190, -0.407936, -0.913008,
		0.958924, -0.259836, 0.113796,
		35.216499, 33.309586, 24.630877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575024, 32.912022, 24.182962>,  <34.545254, 33.491470, 24.551218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575024, 32.912022, 24.182962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860149, 32.939541, 24.462151>,  <35.031223, 32.956051, 24.629663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860149, 32.939541, 24.462151>,  <34.575024, 32.912022, 24.182962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860149, 32.939541, 24.462151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328564, -0.846462, 0.418985,
		0.619631, -0.527986, -0.580765,
		0.712813, 0.068798, 0.697971,
		35.073994, 32.960178, 24.671541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687004, 32.148540, 24.316185>,  <34.575024, 32.912022, 24.182962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687004, 32.148540, 24.316185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843243, 32.337082, 24.632477>,  <34.936985, 32.450207, 24.822252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843243, 32.337082, 24.632477>,  <34.687004, 32.148540, 24.316185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843243, 32.337082, 24.632477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216693, -0.787752, 0.576620,
		0.894693, -0.396574, -0.205557,
		0.390600, 0.471355, 0.790731,
		34.960423, 32.478489, 24.869696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133099, 31.639917, 24.635216>,  <34.687004, 32.148540, 24.316185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133099, 31.639917, 24.635216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044327, 31.932560, 24.893051>,  <34.991062, 32.108147, 25.047752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044327, 31.932560, 24.893051>,  <35.133099, 31.639917, 24.635216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044327, 31.932560, 24.893051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486876, -0.655913, 0.576827,
		0.844806, -0.185819, 0.501770,
		-0.221932, 0.731607, 0.644591,
		34.977749, 32.152042, 25.086428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312752, 31.334705, 25.215460>,  <35.133099, 31.639917, 24.635216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312752, 31.334705, 25.215460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073387, 31.631657, 25.335976>,  <34.929768, 31.809828, 25.408285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073387, 31.631657, 25.335976>,  <35.312752, 31.334705, 25.215460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073387, 31.631657, 25.335976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540146, -0.651567, 0.532638,
		0.591731, 0.155996, 0.790898,
		-0.598412, 0.742378, 0.301292,
		34.893864, 31.854370, 25.426363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275124, 31.269966, 25.862391>,  <35.312752, 31.334705, 25.215460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275124, 31.269966, 25.862391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947144, 31.495499, 25.822845>,  <34.750355, 31.630817, 25.799118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947144, 31.495499, 25.822845>,  <35.275124, 31.269966, 25.862391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947144, 31.495499, 25.822845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509570, -0.640259, 0.574811,
		0.260799, 0.521694, 0.812293,
		-0.819953, 0.563830, -0.098860,
		34.701157, 31.664648, 25.793188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061047, 31.443699, 26.523695>,  <35.275124, 31.269966, 25.862391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061047, 31.443699, 26.523695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745728, 31.479832, 26.280243>,  <34.556538, 31.501511, 26.134172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745728, 31.479832, 26.280243>,  <35.061047, 31.443699, 26.523695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745728, 31.479832, 26.280243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529068, -0.604516, 0.595524,
		-0.314131, 0.791455, 0.524329,
		-0.788295, 0.090333, -0.608630,
		34.509239, 31.506931, 26.097654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512474, 31.614435, 26.947115>,  <35.061047, 31.443699, 26.523695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512474, 31.614435, 26.947115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353622, 31.423069, 26.633835>,  <34.258312, 31.308249, 26.445866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353622, 31.423069, 26.633835>,  <34.512474, 31.614435, 26.947115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353622, 31.423069, 26.633835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399324, -0.678292, 0.616814,
		-0.826334, 0.557707, 0.078328,
		-0.397131, -0.478416, -0.783201,
		34.234482, 31.279545, 26.398874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749374, 31.592758, 27.040503>,  <34.512474, 31.614435, 26.947115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749374, 31.592758, 27.040503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872013, 31.292576, 26.806301>,  <33.945595, 31.112467, 26.665779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872013, 31.292576, 26.806301>,  <33.749374, 31.592758, 27.040503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872013, 31.292576, 26.806301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298668, -0.659913, 0.689429,
		-0.903768, -0.036504, -0.426463,
		0.306595, -0.750454, -0.585506,
		33.963993, 31.067440, 26.630650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129505, 31.141571, 27.074097>,  <33.749374, 31.592758, 27.040503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129505, 31.141571, 27.074097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447186, 30.922295, 26.969234>,  <33.637794, 30.790730, 26.906317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447186, 30.922295, 26.969234>,  <33.129505, 31.141571, 27.074097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447186, 30.922295, 26.969234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264621, -0.700388, 0.662896,
		-0.547005, -0.457103, -0.701315,
		0.794204, -0.548191, -0.262157,
		33.685448, 30.757837, 26.890587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924145, 30.520578, 26.899511>,  <33.129505, 31.141571, 27.074097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924145, 30.520578, 26.899511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301632, 30.439819, 27.004307>,  <33.528126, 30.391365, 27.067184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301632, 30.439819, 27.004307>,  <32.924145, 30.520578, 26.899511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301632, 30.439819, 27.004307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321836, -0.743231, 0.586541,
		0.076297, -0.637845, -0.766376,
		0.943716, -0.201896, 0.261987,
		33.584747, 30.379251, 27.082903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895496, 29.866127, 27.042120>,  <32.924145, 30.520578, 26.899511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895496, 29.866127, 27.042120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256111, 29.937466, 27.199818>,  <33.472481, 29.980268, 27.294436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256111, 29.937466, 27.199818>,  <32.895496, 29.866127, 27.042120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256111, 29.937466, 27.199818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175927, -0.681330, 0.710520,
		0.395328, -0.709917, -0.582866,
		0.901535, 0.178347, 0.394243,
		33.526573, 29.990969, 27.318090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182980, 29.153143, 27.187908>,  <32.895496, 29.866127, 27.042120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182980, 29.153143, 27.187908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421509, 29.389019, 27.405777>,  <33.564625, 29.530544, 27.536499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421509, 29.389019, 27.405777>,  <33.182980, 29.153143, 27.187908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421509, 29.389019, 27.405777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085673, -0.627887, 0.773575,
		0.798162, -0.507962, -0.323902,
		0.596321, 0.589688, 0.544674,
		33.600407, 29.565926, 27.569180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582542, 28.665409, 27.506237>,  <33.182980, 29.153143, 27.187908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582542, 28.665409, 27.506237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637356, 29.003193, 27.713356>,  <33.670246, 29.205862, 27.837627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637356, 29.003193, 27.713356>,  <33.582542, 28.665409, 27.506237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637356, 29.003193, 27.713356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052166, -0.528154, 0.847545,
		0.989191, -0.089133, -0.116429,
		0.137036, 0.844458, 0.517796,
		33.678467, 29.256531, 27.868694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187138, 28.531248, 27.966127>,  <33.582542, 28.665409, 27.506237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187138, 28.531248, 27.966127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948624, 28.820858, 28.104828>,  <33.805515, 28.994623, 28.188047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948624, 28.820858, 28.104828>,  <34.187138, 28.531248, 27.966127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948624, 28.820858, 28.104828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160250, -0.530601, 0.832335,
		0.786618, 0.440740, 0.432413,
		-0.596282, 0.724024, 0.346752,
		33.769737, 29.038065, 28.208853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314022, 28.586960, 28.705740>,  <34.187138, 28.531248, 27.966127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314022, 28.586960, 28.705740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955463, 28.754478, 28.647648>,  <33.740330, 28.854990, 28.612793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955463, 28.754478, 28.647648>,  <34.314022, 28.586960, 28.705740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955463, 28.754478, 28.647648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379066, -0.554426, 0.740892,
		0.229761, 0.719182, 0.655734,
		-0.896392, 0.418794, -0.145233,
		33.686546, 28.880117, 28.604078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137440, 28.881287, 29.391699>,  <34.314022, 28.586960, 28.705740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137440, 28.881287, 29.391699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798744, 28.840973, 29.182747>,  <33.595528, 28.816784, 29.057377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798744, 28.840973, 29.182747>,  <34.137440, 28.881287, 29.391699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798744, 28.840973, 29.182747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397414, -0.532960, 0.747004,
		-0.353693, 0.840117, 0.411224,
		-0.846737, -0.100784, -0.522378,
		33.544724, 28.810738, 29.026033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620205, 28.884884, 29.931107>,  <34.137440, 28.881287, 29.391699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620205, 28.884884, 29.931107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432693, 28.738071, 29.609726>,  <33.320187, 28.649984, 29.416897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432693, 28.738071, 29.609726>,  <33.620205, 28.884884, 29.931107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432693, 28.738071, 29.609726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511522, -0.628751, 0.585677,
		-0.720133, 0.685536, 0.107000,
		-0.468779, -0.367032, -0.803451,
		33.292061, 28.627962, 29.368690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004250, 28.913488, 30.187248>,  <33.620205, 28.884884, 29.931107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004250, 28.913488, 30.187248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035625, 28.663002, 29.876972>,  <33.054451, 28.512711, 29.690805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035625, 28.663002, 29.876972>,  <33.004250, 28.913488, 30.187248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035625, 28.663002, 29.876972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311913, -0.754441, 0.577519,
		-0.946867, 0.196645, -0.254507,
		0.078444, -0.626218, -0.775692,
		33.059158, 28.475136, 29.644264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451584, 28.594524, 30.279242>,  <33.004250, 28.913488, 30.187248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451584, 28.594524, 30.279242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689014, 28.369122, 30.049416>,  <32.831474, 28.233881, 29.911520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689014, 28.369122, 30.049416>,  <32.451584, 28.594524, 30.279242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689014, 28.369122, 30.049416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384811, -0.825773, 0.412334,
		-0.706812, -0.023655, -0.707006,
		0.593580, -0.563506, -0.574564,
		32.867088, 28.200069, 29.877047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039303, 28.002787, 30.243309>,  <32.451584, 28.594524, 30.279242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039303, 28.002787, 30.243309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388569, 27.900768, 30.077160>,  <32.598129, 27.839558, 29.977470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388569, 27.900768, 30.077160>,  <32.039303, 28.002787, 30.243309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388569, 27.900768, 30.077160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073087, -0.911052, 0.405763,
		-0.481912, -0.323941, -0.814140,
		0.873166, -0.255045, -0.415371,
		32.650520, 27.824255, 29.952549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827824, 27.394035, 29.853180>,  <32.039303, 28.002787, 30.243309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827824, 27.394035, 29.853180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210487, 27.412659, 29.968163>,  <32.440086, 27.423834, 30.037153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210487, 27.412659, 29.968163>,  <31.827824, 27.394035, 29.853180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210487, 27.412659, 29.968163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081291, -0.905196, 0.417148,
		0.279629, -0.422437, -0.862180,
		0.956661, 0.046559, 0.287459,
		32.497486, 27.426626, 30.054399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096100, 26.737118, 29.765068>,  <31.827824, 27.394035, 29.853180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096100, 26.737118, 29.765068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366238, 26.876617, 30.025002>,  <32.528320, 26.960318, 30.180962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366238, 26.876617, 30.025002>,  <32.096100, 26.737118, 29.765068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366238, 26.876617, 30.025002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159271, -0.791367, 0.590229,
		0.720099, -0.502108, -0.478900,
		0.675344, 0.348749, 0.649834,
		32.568840, 26.981241, 30.219952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578178, 26.183014, 29.870195>,  <32.096100, 26.737118, 29.765068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578178, 26.183014, 29.870195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602386, 26.432602, 30.181835>,  <32.616913, 26.582355, 30.368820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602386, 26.432602, 30.181835>,  <32.578178, 26.183014, 29.870195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602386, 26.432602, 30.181835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034546, -0.778755, 0.626376,
		0.997569, -0.064824, -0.025575,
		0.060521, 0.623970, 0.779101,
		32.620544, 26.619793, 30.415565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974922, 25.940165, 30.369791>,  <32.578178, 26.183014, 29.870195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974922, 25.940165, 30.369791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761322, 26.199226, 30.587189>,  <32.633163, 26.354664, 30.717628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761322, 26.199226, 30.587189>,  <32.974922, 25.940165, 30.369791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761322, 26.199226, 30.587189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340144, -0.753070, 0.563194,
		0.774046, 0.115878, 0.622435,
		-0.533999, 0.647656, 0.543495,
		32.601124, 26.393522, 30.750237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070560, 25.692463, 31.086241>,  <32.974922, 25.940165, 30.369791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070560, 25.692463, 31.086241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769039, 25.947479, 31.149899>,  <32.588127, 26.100489, 31.188093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769039, 25.947479, 31.149899>,  <33.070560, 25.692463, 31.086241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769039, 25.947479, 31.149899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391750, -0.630463, 0.670110,
		0.527559, 0.442783, 0.725000,
		-0.753799, 0.637542, 0.159146,
		32.542900, 26.138742, 31.197643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906212, 25.852558, 31.908506>,  <33.070560, 25.692463, 31.086241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906212, 25.852558, 31.908506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569550, 25.904869, 31.698929>,  <32.367554, 25.936256, 31.573183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569550, 25.904869, 31.698929>,  <32.906212, 25.852558, 31.908506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569550, 25.904869, 31.698929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493378, -0.580660, 0.647621,
		-0.219539, 0.803574, 0.553237,
		-0.841654, 0.130777, -0.523943,
		32.317055, 25.944101, 31.541746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531715, 26.080387, 32.423950>,  <32.906212, 25.852558, 31.908506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531715, 26.080387, 32.423950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274147, 25.952454, 32.145939>,  <32.119606, 25.875694, 31.979132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274147, 25.952454, 32.145939>,  <32.531715, 26.080387, 32.423950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274147, 25.952454, 32.145939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483644, -0.533739, 0.693694,
		-0.592831, 0.782834, 0.189003,
		-0.643926, -0.319833, -0.695030,
		32.080971, 25.856504, 31.937429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919760, 26.140375, 32.690601>,  <32.531715, 26.080387, 32.423950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919760, 26.140375, 32.690601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845793, 25.885941, 32.390949>,  <31.801413, 25.733280, 32.211159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845793, 25.885941, 32.390949>,  <31.919760, 26.140375, 32.690601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845793, 25.885941, 32.390949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577239, -0.546628, 0.606624,
		-0.795363, 0.544603, -0.266093,
		-0.184915, -0.636086, -0.749134,
		31.790318, 25.695114, 32.166210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154034, 25.927521, 32.779678>,  <31.919760, 26.140375, 32.690601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154034, 25.927521, 32.779678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352448, 25.665359, 32.551853>,  <31.471497, 25.508062, 32.415157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352448, 25.665359, 32.551853>,  <31.154034, 25.927521, 32.779678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352448, 25.665359, 32.551853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461492, -0.754625, 0.466440,
		-0.735506, 0.031472, -0.676787,
		0.496040, -0.655401, -0.569556,
		31.501259, 25.468739, 32.380985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643461, 25.601942, 32.498180>,  <31.154034, 25.927521, 32.779678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643461, 25.601942, 32.498180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984638, 25.393490, 32.486107>,  <31.189344, 25.268417, 32.478863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984638, 25.393490, 32.486107>,  <30.643461, 25.601942, 32.498180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984638, 25.393490, 32.486107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396491, -0.684378, 0.611900,
		-0.339535, -0.509950, -0.790359,
		0.852942, -0.521132, -0.030180,
		31.240520, 25.237150, 32.477055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489202, 24.919844, 32.634171>,  <30.643461, 25.601942, 32.498180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489202, 24.919844, 32.634171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880861, 24.843269, 32.661366>,  <31.115856, 24.797325, 32.677685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880861, 24.843269, 32.661366>,  <30.489202, 24.919844, 32.634171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880861, 24.843269, 32.661366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184058, -0.694310, 0.695741,
		-0.085982, -0.693747, -0.715068,
		0.979147, -0.191436, 0.067992,
		31.174606, 24.785839, 32.681763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586363, 24.196882, 32.526066>,  <30.489202, 24.919844, 32.634171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586363, 24.196882, 32.526066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911226, 24.315636, 32.726967>,  <31.106144, 24.386889, 32.847507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911226, 24.315636, 32.726967>,  <30.586363, 24.196882, 32.526066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911226, 24.315636, 32.726967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142880, -0.733434, 0.664575,
		0.565674, -0.611501, -0.553244,
		0.812156, 0.296885, 0.502255,
		31.154873, 24.404701, 32.877644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991497, 23.643187, 32.687859>,  <30.586363, 24.196882, 32.526066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991497, 23.643187, 32.687859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124517, 23.914402, 32.950058>,  <31.204329, 24.077131, 33.107376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124517, 23.914402, 32.950058>,  <30.991497, 23.643187, 32.687859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124517, 23.914402, 32.950058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167125, -0.641687, 0.748537,
		0.928160, -0.358475, -0.100075,
		0.332549, 0.678036, 0.655498,
		31.224281, 24.117813, 33.146706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665945, 23.577030, 33.117245>,  <30.991497, 23.643187, 32.687859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665945, 23.577030, 33.117245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359678, 23.758175, 33.299965>,  <31.175919, 23.866861, 33.409599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359678, 23.758175, 33.299965>,  <31.665945, 23.577030, 33.117245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359678, 23.758175, 33.299965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039630, -0.742027, 0.669197,
		0.642013, 0.494281, 0.586094,
		-0.765669, 0.452860, 0.456803,
		31.129978, 23.894033, 33.437004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923622, 23.698900, 33.742172>,  <31.665945, 23.577030, 33.117245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923622, 23.698900, 33.742172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532701, 23.625088, 33.700542>,  <31.298149, 23.580801, 33.675564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532701, 23.625088, 33.700542>,  <31.923622, 23.698900, 33.742172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532701, 23.625088, 33.700542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081337, -0.780412, 0.619953,
		-0.195618, 0.597416, 0.777707,
		-0.977301, -0.184530, -0.104070,
		31.239511, 23.569729, 33.669323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535437, 23.767012, 34.375595>,  <31.923622, 23.698900, 33.742172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535437, 23.767012, 34.375595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334890, 23.492657, 34.164619>,  <31.214563, 23.328043, 34.038033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334890, 23.492657, 34.164619>,  <31.535437, 23.767012, 34.375595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334890, 23.492657, 34.164619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172382, -0.676553, 0.715933,
		-0.847891, 0.268021, 0.457434,
		-0.501363, -0.685887, -0.527441,
		31.184481, 23.286890, 34.006386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024014, 23.406572, 34.880127>,  <31.535437, 23.767012, 34.375595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024014, 23.406572, 34.880127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169521, 23.193378, 34.574551>,  <31.256826, 23.065462, 34.391205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169521, 23.193378, 34.574551>,  <31.024014, 23.406572, 34.880127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169521, 23.193378, 34.574551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302828, -0.707906, 0.638094,
		-0.880889, -0.463462, -0.096114,
		0.363772, -0.532984, -0.763936,
		31.278652, 23.033484, 34.345371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817490, 22.659052, 35.016499>,  <31.024014, 23.406572, 34.880127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817490, 22.659052, 35.016499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165640, 22.670193, 34.819859>,  <31.374531, 22.676878, 34.701874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165640, 22.670193, 34.819859>,  <30.817490, 22.659052, 35.016499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165640, 22.670193, 34.819859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409305, -0.595909, 0.690914,
		-0.273702, -0.802569, -0.530066,
		0.870377, 0.027854, -0.491597,
		31.426754, 22.678549, 34.672379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430820, 22.834185, 35.623245>,  <30.817490, 22.659052, 35.016499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430820, 22.834185, 35.623245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566648, 23.103550, 35.885910>,  <30.648146, 23.265169, 36.043510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566648, 23.103550, 35.885910>,  <30.430820, 22.834185, 35.623245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566648, 23.103550, 35.885910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260465, 0.738167, -0.622309,
		-0.903798, 0.040280, 0.426060,
		0.339570, 0.673415, 0.656662,
		30.668520, 23.305574, 36.082909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285664, 23.498722, 35.700584>,  <30.430820, 22.834185, 35.623245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285664, 23.498722, 35.700584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914465, 23.366867, 35.770054>,  <29.691746, 23.287754, 35.811733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914465, 23.366867, 35.770054>,  <30.285664, 23.498722, 35.700584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914465, 23.366867, 35.770054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044691, 0.561228, 0.826454,
		-0.369900, 0.759184, -0.535550,
		-0.927996, -0.329640, 0.173669,
		29.636066, 23.267975, 35.822155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985819, 24.142010, 35.878418>,  <30.285664, 23.498722, 35.700584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985819, 24.142010, 35.878418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822315, 23.799717, 36.005310>,  <29.724213, 23.594341, 36.081448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822315, 23.799717, 36.005310>,  <29.985819, 24.142010, 35.878418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822315, 23.799717, 36.005310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025235, 0.336868, 0.941214,
		-0.912294, 0.392734, -0.116104,
		-0.408758, -0.855733, 0.317234,
		29.699688, 23.542997, 36.100479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376629, 24.319691, 36.218304>,  <29.985819, 24.142010, 35.878418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376629, 24.319691, 36.218304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491377, 23.960320, 36.351292>,  <29.560226, 23.744698, 36.431084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491377, 23.960320, 36.351292>,  <29.376629, 24.319691, 36.218304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491377, 23.960320, 36.351292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269851, 0.408787, 0.871822,
		-0.919177, -0.160382, 0.359710,
		0.286869, -0.898427, 0.332468,
		29.577438, 23.690792, 36.451031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055943, 25.128273, 36.352215>,  <29.376629, 24.319691, 36.218304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055943, 25.128273, 36.352215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674572, 25.248104, 36.338165>,  <28.445749, 25.320004, 36.329735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674572, 25.248104, 36.338165>,  <29.055943, 25.128273, 36.352215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674572, 25.248104, 36.338165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299582, 0.954056, 0.005244,
		0.035079, -0.005522, -0.999370,
		-0.953425, 0.299577, -0.035122,
		28.388544, 25.337976, 36.327629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868454, 25.457226, 35.670307>,  <29.055943, 25.128273, 36.352215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868454, 25.457226, 35.670307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675606, 25.575798, 36.000080>,  <28.559896, 25.646942, 36.197945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675606, 25.575798, 36.000080>,  <28.868454, 25.457226, 35.670307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675606, 25.575798, 36.000080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476656, 0.878309, -0.037059,
		-0.735090, 0.375103, -0.564748,
		-0.482122, 0.296432, 0.824431,
		28.530970, 25.664728, 36.247410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517412, 25.735189, 35.295742>,  <28.868454, 25.457226, 35.670307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517412, 25.735189, 35.295742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883621, 25.650593, 35.158867>,  <30.103346, 25.599834, 35.076744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883621, 25.650593, 35.158867>,  <29.517412, 25.735189, 35.295742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883621, 25.650593, 35.158867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277813, 0.947617, 0.157611,
		0.290928, -0.239360, 0.926319,
		0.915522, -0.211490, -0.342186,
		30.158278, 25.587145, 35.056210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024645, 25.986443, 35.713608>,  <29.517412, 25.735189, 35.295742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024645, 25.986443, 35.713608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195618, 25.964981, 35.352627>,  <30.298203, 25.952105, 35.136040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195618, 25.964981, 35.352627>,  <30.024645, 25.986443, 35.713608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195618, 25.964981, 35.352627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386405, 0.913303, 0.128715,
		0.817307, -0.403730, 0.411110,
		0.427434, -0.053655, -0.902453,
		30.323849, 25.948885, 35.081890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749205, 26.362347, 35.712193>,  <30.024645, 25.986443, 35.713608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749205, 26.362347, 35.712193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675175, 26.327675, 35.320637>,  <30.630756, 26.306871, 35.085701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675175, 26.327675, 35.320637>,  <30.749205, 26.362347, 35.712193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675175, 26.327675, 35.320637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368652, 0.917234, -0.150920,
		0.910957, -0.388803, -0.137802,
		-0.185075, -0.086680, -0.978894,
		30.619652, 26.301670, 35.026970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421591, 26.759663, 35.412781>,  <30.749205, 26.362347, 35.712193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421591, 26.759663, 35.412781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146759, 26.727577, 35.123924>,  <30.981859, 26.708326, 34.950611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146759, 26.727577, 35.123924>,  <31.421591, 26.759663, 35.412781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146759, 26.727577, 35.123924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345614, 0.838165, -0.421936,
		0.639119, -0.539485, -0.548163,
		-0.687079, -0.080214, -0.722141,
		30.940636, 26.703512, 34.907284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768215, 26.988247, 34.835155>,  <31.421591, 26.759663, 35.412781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768215, 26.988247, 34.835155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383204, 27.026337, 34.733589>,  <31.152197, 27.049191, 34.672649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383204, 27.026337, 34.733589>,  <31.768215, 26.988247, 34.835155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383204, 27.026337, 34.733589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193102, 0.898063, -0.395215,
		0.190395, -0.429437, -0.882799,
		-0.962529, 0.095223, -0.253912,
		31.094444, 27.054903, 34.657417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846865, 27.188778, 34.137226>,  <31.768215, 26.988247, 34.835155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846865, 27.188778, 34.137226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475796, 27.282600, 34.253441>,  <31.253155, 27.338894, 34.323170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475796, 27.282600, 34.253441>,  <31.846865, 27.188778, 34.137226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475796, 27.282600, 34.253441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008146, 0.765182, -0.643762,
		-0.373308, -0.599566, -0.707927,
		-0.927671, 0.234555, 0.290533,
		31.197495, 27.352966, 34.340599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404020, 27.290770, 33.523575>,  <31.846865, 27.188778, 34.137226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404020, 27.290770, 33.523575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228102, 27.494156, 33.819695>,  <31.122551, 27.616188, 33.997364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228102, 27.494156, 33.819695>,  <31.404020, 27.290770, 33.523575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228102, 27.494156, 33.819695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126637, 0.780949, -0.611622,
		-0.889124, -0.362739, -0.279068,
		-0.439797, 0.508468, 0.740297,
		31.096163, 27.646696, 34.041782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755825, 27.633644, 33.222214>,  <31.404020, 27.290770, 33.523575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755825, 27.633644, 33.222214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825850, 27.825954, 33.565891>,  <30.867865, 27.941341, 33.772099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825850, 27.825954, 33.565891>,  <30.755825, 27.633644, 33.222214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825850, 27.825954, 33.565891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112858, 0.876714, -0.467585,
		-0.978068, -0.015110, 0.207738,
		0.175061, 0.480775, 0.859191,
		30.878368, 27.970186, 33.823650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270832, 28.161175, 33.369942>,  <30.755825, 27.633644, 33.222214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270832, 28.161175, 33.369942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607752, 28.289238, 33.543392>,  <30.809904, 28.366076, 33.647461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607752, 28.289238, 33.543392>,  <30.270832, 28.161175, 33.369942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607752, 28.289238, 33.543392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044015, 0.842652, -0.536656,
		-0.537212, 0.432938, 0.723856,
		0.842298, 0.320159, 0.433627,
		30.860441, 28.385286, 33.673481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162016, 28.801958, 33.545532>,  <30.270832, 28.161175, 33.369942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162016, 28.801958, 33.545532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559862, 28.765186, 33.526413>,  <30.798571, 28.743122, 33.514942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559862, 28.765186, 33.526413>,  <30.162016, 28.801958, 33.545532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559862, 28.765186, 33.526413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047921, 0.817140, -0.574444,
		0.091868, 0.569061, 0.817147,
		0.994617, -0.091932, -0.047799,
		30.858248, 28.737606, 33.512074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356602, 29.595936, 33.502350>,  <30.162016, 28.801958, 33.545532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356602, 29.595936, 33.502350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675978, 29.368908, 33.421997>,  <30.867603, 29.232691, 33.373787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675978, 29.368908, 33.421997>,  <30.356602, 29.595936, 33.502350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675978, 29.368908, 33.421997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369410, 0.725289, -0.580941,
		0.475424, 0.389639, 0.788767,
		0.798441, -0.567572, -0.200883,
		30.915510, 29.198637, 33.361732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901194, 30.065647, 33.499336>,  <30.356602, 29.595936, 33.502350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901194, 30.065647, 33.499336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031780, 29.756775, 33.281288>,  <31.110132, 29.571451, 33.150459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031780, 29.756775, 33.281288>,  <30.901194, 30.065647, 33.499336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031780, 29.756775, 33.281288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254591, 0.627240, -0.736039,
		0.910276, 0.101510, 0.401364,
		0.326467, -0.772182, -0.545118,
		31.129721, 29.525120, 33.117752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376947, 30.359262, 33.159176>,  <30.901194, 30.065647, 33.499336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376947, 30.359262, 33.159176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304611, 30.034218, 32.937561>,  <31.261209, 29.839191, 32.804592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304611, 30.034218, 32.937561>,  <31.376947, 30.359262, 33.159176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304611, 30.034218, 32.937561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259367, 0.503984, -0.823850,
		0.948696, -0.292687, 0.119623,
		-0.180843, -0.812610, -0.554041,
		31.250359, 29.790436, 32.771347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001217, 30.294277, 32.775429>,  <31.376947, 30.359262, 33.159176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001217, 30.294277, 32.775429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716133, 30.092510, 32.580448>,  <31.545082, 29.971451, 32.463459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716133, 30.092510, 32.580448>,  <32.001217, 30.294277, 32.775429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716133, 30.092510, 32.580448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317367, 0.387837, -0.865367,
		0.625557, -0.771457, -0.116329,
		-0.712710, -0.504418, -0.487449,
		31.502319, 29.941185, 32.434212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377647, 30.038210, 32.263458>,  <32.001217, 30.294277, 32.775429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377647, 30.038210, 32.263458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998770, 30.049305, 32.135681>,  <31.771442, 30.055962, 32.059013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998770, 30.049305, 32.135681>,  <32.377647, 30.038210, 32.263458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998770, 30.049305, 32.135681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317250, 0.225731, -0.921085,
		0.046562, -0.973795, -0.222612,
		-0.947199, 0.027736, -0.319447,
		31.714611, 30.057625, 32.039848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392693, 29.649416, 31.613195>,  <32.377647, 30.038210, 32.263458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392693, 29.649416, 31.613195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047123, 29.849838, 31.592903>,  <31.839781, 29.970093, 31.580729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047123, 29.849838, 31.592903>,  <32.392693, 29.649416, 31.613195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047123, 29.849838, 31.592903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161632, 0.180455, -0.970212,
		-0.476978, -0.846391, -0.236886,
		-0.863926, 0.501058, -0.050731,
		31.787945, 30.000156, 31.577684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984951, 29.384958, 30.941877>,  <32.392693, 29.649416, 31.613195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984951, 29.384958, 30.941877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880400, 29.749290, 31.069672>,  <31.817669, 29.967890, 31.146347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880400, 29.749290, 31.069672>,  <31.984951, 29.384958, 30.941877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880400, 29.749290, 31.069672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225460, 0.379445, -0.897323,
		-0.938536, -0.162510, -0.304534,
		-0.261379, 0.910830, 0.319483,
		31.801987, 30.022539, 31.165516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864077, 29.710514, 30.308758>,  <31.984951, 29.384958, 30.941877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864077, 29.710514, 30.308758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910036, 30.006180, 30.574219>,  <31.937611, 30.183580, 30.733496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910036, 30.006180, 30.574219>,  <31.864077, 29.710514, 30.308758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910036, 30.006180, 30.574219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221925, 0.632090, -0.742436,
		-0.968271, 0.232584, -0.091414,
		0.114897, 0.739166, 0.663651,
		31.944506, 30.227930, 30.773314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617828, 30.291271, 29.978268>,  <31.864077, 29.710514, 30.308758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617828, 30.291271, 29.978268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795446, 30.472527, 30.287457>,  <31.902018, 30.581280, 30.472971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795446, 30.472527, 30.287457>,  <31.617828, 30.291271, 29.978268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795446, 30.472527, 30.287457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250158, 0.765688, -0.592573,
		-0.860374, 0.456496, 0.226646,
		0.444047, 0.453137, 0.772974,
		31.928661, 30.608467, 30.519348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451633, 30.998232, 29.858564>,  <31.617828, 30.291271, 29.978268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451633, 30.998232, 29.858564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755384, 30.994255, 30.118793>,  <31.937635, 30.991869, 30.274931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755384, 30.994255, 30.118793>,  <31.451633, 30.998232, 29.858564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755384, 30.994255, 30.118793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510005, 0.629989, -0.585669,
		-0.404031, 0.776540, 0.483471,
		0.759377, -0.009944, 0.650575,
		31.983198, 30.991272, 30.313967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670204, 31.661121, 29.942240>,  <31.451633, 30.998232, 29.858564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670204, 31.661121, 29.942240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994223, 31.458435, 30.060268>,  <32.188633, 31.336824, 30.131086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994223, 31.458435, 30.060268>,  <31.670204, 31.661121, 29.942240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994223, 31.458435, 30.060268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583246, 0.644425, -0.494511,
		0.060424, 0.572675, 0.817552,
		0.810045, -0.506714, 0.295072,
		32.237236, 31.306421, 30.148790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032543, 32.210300, 30.307316>,  <31.670204, 31.661121, 29.942240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032543, 32.210300, 30.307316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272449, 31.915260, 30.183231>,  <32.416393, 31.738237, 30.108782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272449, 31.915260, 30.183231>,  <32.032543, 32.210300, 30.307316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272449, 31.915260, 30.183231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570002, 0.665912, -0.481309,
		0.561584, 0.111854, 0.819824,
		0.599767, -0.737597, -0.310209,
		32.452381, 31.693981, 30.090168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575985, 32.513313, 30.382614>,  <32.032543, 32.210300, 30.307316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575985, 32.513313, 30.382614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665508, 32.217804, 30.128334>,  <32.719223, 32.040497, 29.975765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665508, 32.217804, 30.128334>,  <32.575985, 32.513313, 30.382614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665508, 32.217804, 30.128334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476766, 0.651868, -0.589713,
		0.850061, -0.171097, 0.498119,
		0.223809, -0.738778, -0.635701,
		32.732651, 31.996170, 29.937624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326321, 32.479870, 30.213554>,  <32.575985, 32.513313, 30.382614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326321, 32.479870, 30.213554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130844, 32.297905, 29.915764>,  <33.013557, 32.188728, 29.737089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130844, 32.297905, 29.915764>,  <33.326321, 32.479870, 30.213554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130844, 32.297905, 29.915764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365400, 0.668146, -0.648123,
		0.792255, -0.588760, -0.160291,
		-0.488687, -0.454909, -0.744475,
		32.984238, 32.161434, 29.692421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737637, 32.399643, 29.677380>,  <33.326321, 32.479870, 30.213554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737637, 32.399643, 29.677380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377811, 32.397106, 29.502682>,  <33.161915, 32.395584, 29.397863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377811, 32.397106, 29.502682>,  <33.737637, 32.399643, 29.677380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377811, 32.397106, 29.502682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342214, 0.611124, -0.713734,
		0.271432, -0.791509, -0.547575,
		-0.899564, -0.006343, -0.436744,
		33.107941, 32.395203, 29.371658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932922, 32.335983, 29.014893>,  <33.737637, 32.399643, 29.677380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932922, 32.335983, 29.014893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554676, 32.462952, 28.986477>,  <33.327728, 32.539135, 28.969427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554676, 32.462952, 28.986477>,  <33.932922, 32.335983, 29.014893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554676, 32.462952, 28.986477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239492, 0.531645, -0.812402,
		-0.220109, -0.785236, -0.578754,
		-0.945619, 0.317424, -0.071038,
		33.270988, 32.558178, 28.965166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907711, 32.533699, 28.326040>,  <33.932922, 32.335983, 29.014893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907711, 32.533699, 28.326040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556820, 32.682034, 28.447998>,  <33.346287, 32.771034, 28.521172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556820, 32.682034, 28.447998>,  <33.907711, 32.533699, 28.326040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556820, 32.682034, 28.447998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048756, 0.700620, -0.711867,
		-0.477599, -0.609602, -0.632681,
		-0.877224, 0.370834, 0.304894,
		33.293652, 32.793285, 28.539467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422695, 32.540237, 27.739706>,  <33.907711, 32.533699, 28.326040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422695, 32.540237, 27.739706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347832, 32.826969, 28.008373>,  <33.302914, 32.999008, 28.169573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347832, 32.826969, 28.008373>,  <33.422695, 32.540237, 27.739706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347832, 32.826969, 28.008373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055539, 0.674933, -0.735786,
		-0.980759, -0.175010, -0.086506,
		-0.187155, 0.716825, 0.671666,
		33.291683, 33.042015, 28.209873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861961, 32.849777, 27.440714>,  <33.422695, 32.540237, 27.739706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861961, 32.849777, 27.440714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007957, 33.097004, 27.719219>,  <33.095554, 33.245338, 27.886322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007957, 33.097004, 27.719219>,  <32.861961, 32.849777, 27.440714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007957, 33.097004, 27.719219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131323, 0.774555, -0.618723,
		-0.921704, 0.134390, 0.363869,
		0.364987, 0.618064, 0.696262,
		33.117455, 33.282425, 27.928099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288452, 33.384277, 27.495447>,  <32.861961, 32.849777, 27.440714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288452, 33.384277, 27.495447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650558, 33.515942, 27.602890>,  <32.867821, 33.594940, 27.667355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650558, 33.515942, 27.602890>,  <32.288452, 33.384277, 27.495447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650558, 33.515942, 27.602890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115437, 0.799028, -0.590109,
		-0.408863, 0.503198, 0.761329,
		0.905265, 0.329160, 0.268606,
		32.922138, 33.614689, 27.683472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210808, 34.085075, 27.616121>,  <32.288452, 33.384277, 27.495447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210808, 34.085075, 27.616121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605038, 34.032715, 27.573212>,  <32.841576, 34.001301, 27.547466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605038, 34.032715, 27.573212>,  <32.210808, 34.085075, 27.616121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605038, 34.032715, 27.573212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047015, 0.820673, -0.569460,
		0.162576, 0.556202, 0.814989,
		0.985575, -0.130898, -0.107272,
		32.900711, 33.993446, 27.541031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452850, 34.735802, 27.516642>,  <32.210808, 34.085075, 27.616121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452850, 34.735802, 27.516642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758984, 34.502438, 27.407906>,  <32.942665, 34.362419, 27.342665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758984, 34.502438, 27.407906>,  <32.452850, 34.735802, 27.516642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758984, 34.502438, 27.407906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232824, 0.644698, -0.728119,
		0.600043, 0.493966, 0.629242,
		0.765337, -0.583406, -0.271839,
		32.988586, 34.327415, 27.326353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960907, 35.179726, 27.446411>,  <32.452850, 34.735802, 27.516642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960907, 35.179726, 27.446411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096493, 34.883293, 27.214581>,  <33.177845, 34.705433, 27.075483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096493, 34.883293, 27.214581>,  <32.960907, 35.179726, 27.446411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096493, 34.883293, 27.214581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340849, 0.670927, -0.658543,
		0.876884, 0.025674, 0.480015,
		0.338963, -0.741079, -0.579574,
		33.198181, 34.660969, 27.040709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630207, 35.365185, 27.274521>,  <32.960907, 35.179726, 27.446411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630207, 35.365185, 27.274521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509373, 35.098450, 27.002029>,  <33.436871, 34.938408, 26.838535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509373, 35.098450, 27.002029>,  <33.630207, 35.365185, 27.274521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509373, 35.098450, 27.002029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462959, 0.522057, -0.716328,
		0.833314, -0.531774, 0.151012,
		-0.302088, -0.666839, -0.681226,
		33.418747, 34.898399, 26.797661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258129, 35.189777, 26.814260>,  <33.630207, 35.365185, 27.274521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258129, 35.189777, 26.814260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944752, 35.078995, 26.591724>,  <33.756725, 35.012524, 26.458202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944752, 35.078995, 26.591724>,  <34.258129, 35.189777, 26.814260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944752, 35.078995, 26.591724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321239, 0.585859, -0.744026,
		0.532002, -0.761618, -0.370015,
		-0.783441, -0.276961, -0.556339,
		33.709721, 34.995907, 26.424824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572704, 34.846600, 26.183470>,  <34.258129, 35.189777, 26.814260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572704, 34.846600, 26.183470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216614, 35.019188, 26.125042>,  <34.002960, 35.122742, 26.089985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216614, 35.019188, 26.125042>,  <34.572704, 34.846600, 26.183470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216614, 35.019188, 26.125042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385521, 0.542830, -0.746129,
		-0.242641, -0.720535, -0.649581,
		-0.890224, 0.431468, -0.146069,
		33.949547, 35.148628, 26.081221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549820, 35.083183, 25.502150>,  <34.572704, 34.846600, 26.183470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549820, 35.083183, 25.502150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193886, 35.247402, 25.581799>,  <33.980328, 35.345932, 25.629587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193886, 35.247402, 25.581799>,  <34.549820, 35.083183, 25.502150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193886, 35.247402, 25.581799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077056, 0.565339, -0.821252,
		-0.449733, -0.715433, -0.534692,
		-0.889833, 0.410545, 0.199123,
		33.926937, 35.370567, 25.641535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123653, 35.047226, 24.911091>,  <34.549820, 35.083183, 25.502150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123653, 35.047226, 24.911091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956951, 35.336834, 25.130951>,  <33.856930, 35.510597, 25.262867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956951, 35.336834, 25.130951>,  <34.123653, 35.047226, 24.911091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956951, 35.336834, 25.130951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045689, 0.620582, -0.782809,
		-0.907871, -0.301126, -0.291709,
		-0.416754, 0.724017, 0.549650,
		33.831924, 35.554039, 25.295845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635387, 35.349957, 24.488913>,  <34.123653, 35.047226, 24.911091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635387, 35.349957, 24.488913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701572, 35.627583, 24.769169>,  <33.741283, 35.794159, 24.937323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701572, 35.627583, 24.769169>,  <33.635387, 35.349957, 24.488913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701572, 35.627583, 24.769169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083639, 0.697996, -0.711200,
		-0.982662, 0.176281, 0.057444,
		0.165467, 0.694065, 0.700639,
		33.751213, 35.835800, 24.979361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270908, 35.902573, 24.256739>,  <33.635387, 35.349957, 24.488913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270908, 35.902573, 24.256739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555588, 36.045795, 24.498493>,  <33.726395, 36.131729, 24.643545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555588, 36.045795, 24.498493>,  <33.270908, 35.902573, 24.256739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555588, 36.045795, 24.498493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281993, 0.642376, -0.712624,
		-0.643399, 0.677607, 0.356211,
		0.711701, 0.358052, 0.604384,
		33.769096, 36.153210, 24.679808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677200, 35.514687, 23.921698>,  <33.270908, 35.902573, 24.256739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677200, 35.514687, 23.921698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317699, 35.541428, 23.748367>,  <32.101997, 35.557472, 23.644369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317699, 35.541428, 23.748367>,  <32.677200, 35.514687, 23.921698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317699, 35.541428, 23.748367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382999, -0.600796, 0.701681,
		-0.213432, 0.796602, 0.565572,
		-0.898754, 0.066852, -0.433326,
		32.048073, 35.561481, 23.618370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163403, 35.689598, 24.372562>,  <32.677200, 35.514687, 23.921698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163403, 35.689598, 24.372562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972006, 35.488808, 24.084377>,  <31.857168, 35.368332, 23.911467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972006, 35.488808, 24.084377>,  <32.163403, 35.689598, 24.372562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972006, 35.488808, 24.084377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529720, -0.489361, 0.692765,
		-0.700318, 0.713125, -0.031754,
		-0.478488, -0.501976, -0.720464,
		31.828459, 35.338215, 23.868238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540888, 35.750385, 24.571856>,  <32.163403, 35.689598, 24.372562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540888, 35.750385, 24.571856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503914, 35.451298, 24.308834>,  <31.481730, 35.271847, 24.151022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503914, 35.451298, 24.308834>,  <31.540888, 35.750385, 24.571856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503914, 35.451298, 24.308834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489866, -0.540785, 0.683800,
		-0.866883, 0.385321, -0.316293,
		-0.092436, -0.747716, -0.657554,
		31.476183, 35.226982, 24.111568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890045, 35.579014, 24.614756>,  <31.540888, 35.750385, 24.571856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890045, 35.579014, 24.614756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040201, 35.244694, 24.454498>,  <31.130295, 35.044102, 24.358343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040201, 35.244694, 24.454498>,  <30.890045, 35.579014, 24.614756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040201, 35.244694, 24.454498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504644, -0.546875, 0.668029,
		-0.777443, -0.048587, -0.627074,
		0.375389, -0.835803, -0.400645,
		31.152819, 34.993954, 24.334305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292301, 35.089073, 24.455172>,  <30.890045, 35.579014, 24.614756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292301, 35.089073, 24.455172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616709, 34.855225, 24.446503>,  <30.811354, 34.714916, 24.441301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616709, 34.855225, 24.446503>,  <30.292301, 35.089073, 24.455172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616709, 34.855225, 24.446503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470904, -0.674355, 0.568766,
		-0.347126, -0.451074, -0.822214,
		0.811019, -0.584618, -0.021673,
		30.860014, 34.679840, 24.440001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045034, 34.432034, 24.384081>,  <30.292301, 35.089073, 24.455172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045034, 34.432034, 24.384081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414345, 34.386829, 24.530937>,  <30.635931, 34.359707, 24.619051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414345, 34.386829, 24.530937>,  <30.045034, 34.432034, 24.384081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414345, 34.386829, 24.530937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373212, -0.490227, 0.787649,
		0.090971, -0.864237, -0.494791,
		0.923276, -0.113009, 0.367140,
		30.691328, 34.352928, 24.641079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188332, 33.723049, 24.493826>,  <30.045034, 34.432034, 24.384081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188332, 33.723049, 24.493826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445021, 33.894932, 24.747925>,  <30.599035, 33.998062, 24.900385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445021, 33.894932, 24.747925>,  <30.188332, 33.723049, 24.493826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445021, 33.894932, 24.747925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306875, -0.615227, 0.726170,
		0.702864, -0.660943, -0.262938,
		0.641724, 0.429710, 0.635248,
		30.637537, 34.023846, 24.938499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526497, 33.071747, 24.916712>,  <30.188332, 33.723049, 24.493826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526497, 33.071747, 24.916712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588621, 33.404160, 25.130352>,  <30.625895, 33.603607, 25.258537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588621, 33.404160, 25.130352>,  <30.526497, 33.071747, 24.916712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588621, 33.404160, 25.130352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093533, -0.525864, 0.845411,
		0.983428, -0.181256, -0.003942,
		0.155308, 0.831032, 0.534102,
		30.635214, 33.653469, 25.290583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004580, 32.808079, 25.346149>,  <30.526497, 33.071747, 24.916712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004580, 32.808079, 25.346149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847374, 33.142525, 25.499229>,  <30.753052, 33.343193, 25.591078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847374, 33.142525, 25.499229>,  <31.004580, 32.808079, 25.346149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847374, 33.142525, 25.499229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257235, -0.499543, 0.827216,
		0.882820, 0.226663, 0.411404,
		-0.393013, 0.836111, 0.382701,
		30.729469, 33.393356, 25.614040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200214, 32.897205, 26.106546>,  <31.004580, 32.808079, 25.346149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200214, 32.897205, 26.106546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874851, 33.129852, 26.102757>,  <30.679634, 33.269440, 26.100483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874851, 33.129852, 26.102757>,  <31.200214, 32.897205, 26.106546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874851, 33.129852, 26.102757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339276, -0.461131, 0.819908,
		0.472506, 0.670132, 0.572417,
		-0.813406, 0.581619, -0.009473,
		30.630829, 33.304337, 26.099915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175894, 33.233913, 26.769360>,  <31.200214, 32.897205, 26.106546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175894, 33.233913, 26.769360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806290, 33.270775, 26.620918>,  <30.584528, 33.292892, 26.531853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806290, 33.270775, 26.620918>,  <31.175894, 33.233913, 26.769360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806290, 33.270775, 26.620918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376494, -0.388804, 0.840883,
		-0.066797, 0.916700, 0.393953,
		-0.924008, 0.092152, -0.371103,
		30.529087, 33.298420, 26.509588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790112, 33.600796, 27.214556>,  <31.175894, 33.233913, 26.769360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790112, 33.600796, 27.214556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515266, 33.406921, 26.998055>,  <30.350359, 33.290596, 26.868155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515266, 33.406921, 26.998055>,  <30.790112, 33.600796, 27.214556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515266, 33.406921, 26.998055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385582, -0.388137, 0.837064,
		-0.615796, 0.783853, 0.079806,
		-0.687111, -0.484689, -0.541254,
		30.309134, 33.261517, 26.835678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152140, 33.766125, 27.553337>,  <30.790112, 33.600796, 27.214556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152140, 33.766125, 27.553337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097532, 33.439354, 27.329197>,  <30.064768, 33.243290, 27.194714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097532, 33.439354, 27.329197>,  <30.152140, 33.766125, 27.553337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097532, 33.439354, 27.329197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378537, -0.479704, 0.791577,
		-0.915463, 0.320178, -0.243749,
		-0.136518, -0.816928, -0.560350,
		30.056578, 33.194275, 27.161093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450882, 33.547405, 27.730415>,  <30.152140, 33.766125, 27.553337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450882, 33.547405, 27.730415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614296, 33.224304, 27.560410>,  <29.712345, 33.030445, 27.458406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614296, 33.224304, 27.560410>,  <29.450882, 33.547405, 27.730415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614296, 33.224304, 27.560410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278243, -0.553696, 0.784858,
		-0.869299, -0.202384, -0.450955,
		0.408535, -0.807750, -0.425015,
		29.736856, 32.981979, 27.432905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893259, 32.925426, 27.890705>,  <29.450882, 33.547405, 27.730415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893259, 32.925426, 27.890705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241495, 32.748589, 27.804333>,  <29.450436, 32.642487, 27.752510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241495, 32.748589, 27.804333>,  <28.893259, 32.925426, 27.890705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241495, 32.748589, 27.804333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171169, -0.683606, 0.709496,
		-0.461277, -0.580718, -0.670813,
		0.870589, -0.442096, -0.215930,
		29.502672, 32.615959, 27.739553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780312, 32.208374, 27.863405>,  <28.893259, 32.925426, 27.890705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780312, 32.208374, 27.863405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177036, 32.227844, 27.910633>,  <29.415071, 32.239525, 27.938971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177036, 32.227844, 27.910633>,  <28.780312, 32.208374, 27.863405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177036, 32.227844, 27.910633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033531, -0.792823, 0.608529,
		0.123230, -0.607505, -0.784698,
		0.991811, 0.048677, 0.118070,
		29.474579, 32.242447, 27.946054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062555, 31.520491, 27.614927>,  <28.780312, 32.208374, 27.863405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062555, 31.520491, 27.614927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328455, 31.672871, 27.871983>,  <29.487995, 31.764299, 28.026215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328455, 31.672871, 27.871983>,  <29.062555, 31.520491, 27.614927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328455, 31.672871, 27.871983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134159, -0.785357, 0.604330,
		0.734920, -0.487945, -0.470959,
		0.664751, 0.380950, 0.642637,
		29.527880, 31.787155, 28.064774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437943, 30.914974, 27.935560>,  <29.062555, 31.520491, 27.614927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437943, 30.914974, 27.935560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511137, 31.228020, 28.173561>,  <29.555054, 31.415848, 28.316362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511137, 31.228020, 28.173561>,  <29.437943, 30.914974, 27.935560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511137, 31.228020, 28.173561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002498, -0.605590, 0.795773,
		0.983112, -0.144131, -0.112771,
		0.182988, 0.782615, 0.595003,
		29.566034, 31.462805, 28.352062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014502, 30.692333, 28.370897>,  <29.437943, 30.914974, 27.935560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014502, 30.692333, 28.370897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811317, 30.987118, 28.549274>,  <29.689407, 31.163988, 28.656301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811317, 30.987118, 28.549274>,  <30.014502, 30.692333, 28.370897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811317, 30.987118, 28.549274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093370, -0.561764, 0.822012,
		0.856306, 0.375911, 0.354163,
		-0.507959, 0.736961, 0.445943,
		29.658930, 31.208206, 28.683058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349415, 30.723564, 28.999142>,  <30.014502, 30.692333, 28.370897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349415, 30.723564, 28.999142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993402, 30.902157, 29.036011>,  <29.779795, 31.009312, 29.058132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993402, 30.902157, 29.036011>,  <30.349415, 30.723564, 28.999142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993402, 30.902157, 29.036011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118145, -0.421156, 0.899260,
		0.440322, 0.789482, 0.427592,
		-0.890033, 0.446482, 0.092171,
		29.726393, 31.036102, 29.063662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430597, 31.043772, 29.725761>,  <30.349415, 30.723564, 28.999142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430597, 31.043772, 29.725761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050308, 31.018803, 29.604282>,  <29.822136, 31.003822, 29.531395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050308, 31.018803, 29.604282>,  <30.430597, 31.043772, 29.725761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050308, 31.018803, 29.604282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281635, -0.235753, 0.930109,
		-0.129655, 0.969806, 0.206555,
		-0.950721, -0.062420, -0.303698,
		29.765091, 31.000076, 29.513172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035931, 31.204082, 30.252163>,  <30.430597, 31.043772, 29.725761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035931, 31.204082, 30.252163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793785, 31.000271, 30.007568>,  <29.648499, 30.877985, 29.860811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793785, 31.000271, 30.007568>,  <30.035931, 31.204082, 30.252163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793785, 31.000271, 30.007568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300473, -0.565113, 0.768351,
		-0.737055, 0.648868, 0.189001,
		-0.605365, -0.509527, -0.611487,
		29.612175, 30.847412, 29.824121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407154, 31.208883, 30.549963>,  <30.035931, 31.204082, 30.252163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407154, 31.208883, 30.549963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419554, 30.884525, 30.316216>,  <29.426994, 30.689911, 30.175966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419554, 30.884525, 30.316216>,  <29.407154, 31.208883, 30.549963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419554, 30.884525, 30.316216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212922, -0.576589, 0.788803,
		-0.976578, 0.099973, -0.190530,
		0.030999, -0.810895, -0.584370,
		29.428854, 30.641256, 30.140905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924282, 30.686937, 30.975191>,  <29.407154, 31.208883, 30.549963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924282, 30.686937, 30.975191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081240, 30.438564, 30.703758>,  <29.175413, 30.289541, 30.540899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081240, 30.438564, 30.703758>,  <28.924282, 30.686937, 30.975191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081240, 30.438564, 30.703758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190818, -0.776654, 0.600331,
		-0.899787, -0.106080, -0.423237,
		0.392392, -0.620932, -0.678582,
		29.198957, 30.252285, 30.500183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426607, 30.114182, 30.905643>,  <28.924282, 30.686937, 30.975191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426607, 30.114182, 30.905643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772947, 29.978271, 30.758755>,  <28.980751, 29.896727, 30.670622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772947, 29.978271, 30.758755>,  <28.426607, 30.114182, 30.905643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772947, 29.978271, 30.758755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160435, -0.883814, 0.439470,
		-0.473878, -0.321601, -0.819764,
		0.865853, -0.339774, -0.367224,
		29.032703, 29.876339, 30.648588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308777, 29.446321, 30.633284>,  <28.426607, 30.114182, 30.905643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308777, 29.446321, 30.633284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701742, 29.457771, 30.707092>,  <28.937521, 29.464642, 30.751377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701742, 29.457771, 30.707092>,  <28.308777, 29.446321, 30.633284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701742, 29.457771, 30.707092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063403, -0.878340, 0.473813,
		0.175638, -0.477179, -0.861076,
		0.982411, 0.028625, 0.184524,
		28.996466, 29.466358, 30.762449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551704, 28.812645, 30.438723>,  <28.308777, 29.446321, 30.633284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551704, 28.812645, 30.438723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838549, 28.952408, 30.679943>,  <29.010654, 29.036264, 30.824675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838549, 28.952408, 30.679943>,  <28.551704, 28.812645, 30.438723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838549, 28.952408, 30.679943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144221, -0.920922, 0.362082,
		0.681876, -0.172680, -0.710793,
		0.717109, 0.349406, 0.603050,
		29.053682, 29.057230, 30.860859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079800, 28.372374, 30.304089>,  <28.551704, 28.812645, 30.438723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079800, 28.372374, 30.304089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147501, 28.542625, 30.659660>,  <29.188122, 28.644777, 30.873003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147501, 28.542625, 30.659660>,  <29.079800, 28.372374, 30.304089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147501, 28.542625, 30.659660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258255, -0.889578, 0.376770,
		0.951135, 0.165801, -0.260484,
		0.169252, 0.425630, 0.888928,
		29.198277, 28.670315, 30.926338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644302, 28.062847, 30.499643>,  <29.079800, 28.372374, 30.304089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644302, 28.062847, 30.499643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495808, 28.196751, 30.846081>,  <29.406712, 28.277094, 31.053944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495808, 28.196751, 30.846081>,  <29.644302, 28.062847, 30.499643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495808, 28.196751, 30.846081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187046, -0.886669, 0.422886,
		0.909505, 0.318989, 0.266547,
		-0.371235, 0.334760, 0.866095,
		29.384438, 28.297178, 31.105909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040770, 27.703695, 30.986326>,  <29.644302, 28.062847, 30.499643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040770, 27.703695, 30.986326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718597, 27.839890, 31.180378>,  <29.525293, 27.921606, 31.296808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718597, 27.839890, 31.180378>,  <30.040770, 27.703695, 30.986326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718597, 27.839890, 31.180378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029936, -0.840849, 0.540442,
		0.591933, 0.420766, 0.687439,
		-0.805431, 0.340485, 0.485130,
		29.476969, 27.942036, 31.325916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186926, 27.532064, 31.647615>,  <30.040770, 27.703695, 30.986326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186926, 27.532064, 31.647615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793930, 27.606537, 31.644867>,  <29.558132, 27.651220, 31.643217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793930, 27.606537, 31.644867>,  <30.186926, 27.532064, 31.647615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793930, 27.606537, 31.644867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156420, -0.804280, 0.573294,
		0.101211, 0.564331, 0.819321,
		-0.982491, 0.186182, -0.006871,
		29.499182, 27.662392, 31.642805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039343, 27.455851, 32.385185>,  <30.186926, 27.532064, 31.647615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039343, 27.455851, 32.385185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680601, 27.417980, 32.212357>,  <29.465357, 27.395258, 32.108658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680601, 27.417980, 32.212357>,  <30.039343, 27.455851, 32.385185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680601, 27.417980, 32.212357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208653, -0.770761, 0.601990,
		-0.390022, 0.630051, 0.671505,
		-0.896854, -0.094678, -0.432075,
		29.411545, 27.389578, 32.082733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574808, 27.406219, 32.925056>,  <30.039343, 27.455851, 32.385185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574808, 27.406219, 32.925056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403288, 27.225662, 32.612038>,  <29.300377, 27.117329, 32.424225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403288, 27.225662, 32.612038>,  <29.574808, 27.406219, 32.925056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403288, 27.225662, 32.612038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272130, -0.761449, 0.588337,
		-0.861439, 0.465232, 0.203671,
		-0.428798, -0.451392, -0.782546,
		29.274649, 27.090244, 32.377274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991289, 27.128744, 33.279697>,  <29.574808, 27.406219, 32.925056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991289, 27.128744, 33.279697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991823, 26.941494, 32.926231>,  <28.992144, 26.829144, 32.714153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991823, 26.941494, 32.926231>,  <28.991289, 27.128744, 33.279697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991823, 26.941494, 32.926231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433395, -0.796630, 0.421366,
		-0.901203, 0.382412, -0.203946,
		0.001334, -0.468125, -0.883661,
		28.992224, 26.801056, 32.661133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250568, 26.802454, 33.130642>,  <28.991289, 27.128744, 33.279697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250568, 26.802454, 33.130642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531046, 26.603054, 32.926750>,  <28.699333, 26.483414, 32.804417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531046, 26.603054, 32.926750>,  <28.250568, 26.802454, 33.130642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531046, 26.603054, 32.926750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415371, -0.866701, 0.276219,
		-0.579477, 0.018044, -0.814789,
		0.701194, -0.498502, -0.509728,
		28.741404, 26.453503, 32.773830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889471, 26.310465, 32.795010>,  <28.250568, 26.802454, 33.130642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889471, 26.310465, 32.795010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269506, 26.185780, 32.800255>,  <28.497528, 26.110970, 32.803402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269506, 26.185780, 32.800255>,  <27.889471, 26.310465, 32.795010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269506, 26.185780, 32.800255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307070, -0.926851, 0.215999,
		-0.055174, -0.209245, -0.976305,
		0.950086, -0.311711, 0.013115,
		28.554533, 26.092266, 32.804188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874830, 25.714514, 32.362103>,  <27.889471, 26.310465, 32.795010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874830, 25.714514, 32.362103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185667, 25.696392, 32.613205>,  <28.372169, 25.685520, 32.763866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185667, 25.696392, 32.613205>,  <27.874830, 25.714514, 32.362103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185667, 25.696392, 32.613205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268327, -0.926067, 0.265329,
		0.569321, -0.374629, -0.731797,
		0.777093, -0.045303, 0.627753,
		28.418795, 25.682800, 32.801529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136747, 25.104172, 32.290485>,  <27.874830, 25.714514, 32.362103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136747, 25.104172, 32.290485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253376, 25.211754, 32.657669>,  <28.323353, 25.276302, 32.877979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253376, 25.211754, 32.657669>,  <28.136747, 25.104172, 32.290485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253376, 25.211754, 32.657669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094627, -0.946840, 0.307473,
		0.951857, -0.176515, -0.250622,
		0.291573, 0.268955, 0.917959,
		28.340847, 25.292440, 32.933056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186001, 24.485394, 31.910288>,  <28.136747, 25.104172, 32.290485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186001, 24.485394, 31.910288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946571, 24.282696, 31.662121>,  <27.802914, 24.161077, 31.513220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946571, 24.282696, 31.662121>,  <28.186001, 24.485394, 31.910288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946571, 24.282696, 31.662121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449263, 0.428864, -0.783734,
		0.663227, -0.747854, -0.029046,
		-0.598576, -0.506744, -0.620418,
		27.766998, 24.130672, 31.475996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692211, 24.198498, 31.423141>,  <28.186001, 24.485394, 31.910288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692211, 24.198498, 31.423141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321844, 24.195183, 31.272087>,  <28.099625, 24.193193, 31.181456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321844, 24.195183, 31.272087>,  <28.692211, 24.198498, 31.423141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321844, 24.195183, 31.272087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332339, 0.457275, -0.824894,
		0.179520, -0.889286, -0.420645,
		-0.925918, -0.008289, -0.377634,
		28.044069, 24.192696, 31.158796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780092, 23.876686, 30.816456>,  <28.692211, 24.198498, 31.423141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780092, 23.876686, 30.816456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426453, 24.056999, 30.767208>,  <28.214268, 24.165188, 30.737659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426453, 24.056999, 30.767208>,  <28.780092, 23.876686, 30.816456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426453, 24.056999, 30.767208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342882, 0.446786, -0.826326,
		-0.317487, -0.772771, -0.549570,
		-0.884101, 0.450785, -0.123120,
		28.161222, 24.192234, 30.730272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583372, 23.773554, 30.018524>,  <28.780092, 23.876686, 30.816456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583372, 23.773554, 30.018524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416994, 24.088757, 30.200089>,  <28.317167, 24.277878, 30.309027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416994, 24.088757, 30.200089>,  <28.583372, 23.773554, 30.018524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416994, 24.088757, 30.200089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256224, 0.580468, -0.772920,
		-0.872548, -0.205189, -0.443349,
		-0.415945, 0.788006, 0.453912,
		28.292212, 24.325159, 30.336262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391985, 24.140165, 29.409307>,  <28.583372, 23.773554, 30.018524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391985, 24.140165, 29.409307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308294, 24.408348, 29.694042>,  <28.258080, 24.569258, 29.864883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308294, 24.408348, 29.694042>,  <28.391985, 24.140165, 29.409307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308294, 24.408348, 29.694042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091218, 0.738154, -0.668437,
		-0.973603, -0.074923, -0.215600,
		-0.209228, 0.670459, 0.711835,
		28.245525, 24.609486, 29.907593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918352, 24.620224, 29.114153>,  <28.391985, 24.140165, 29.409307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918352, 24.620224, 29.114153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081032, 24.814827, 29.423450>,  <28.178638, 24.931589, 29.609030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081032, 24.814827, 29.423450>,  <27.918352, 24.620224, 29.114153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081032, 24.814827, 29.423450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218717, 0.769939, -0.599464,
		-0.886995, 0.412922, 0.206725,
		0.406698, 0.486508, 0.773245,
		28.203041, 24.960779, 29.655424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634268, 25.294008, 29.195065>,  <27.918352, 24.620224, 29.114153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634268, 25.294008, 29.195065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998152, 25.310059, 29.360386>,  <28.216482, 25.319689, 29.459578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998152, 25.310059, 29.360386>,  <27.634268, 25.294008, 29.195065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998152, 25.310059, 29.360386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149634, 0.896776, -0.416415,
		-0.387348, 0.440661, 0.809802,
		0.909710, 0.040124, 0.413302,
		28.271065, 25.322096, 29.484377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779795, 26.004429, 29.348969>,  <27.634268, 25.294008, 29.195065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779795, 26.004429, 29.348969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162979, 25.890404, 29.361908>,  <28.392891, 25.821989, 29.369671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162979, 25.890404, 29.361908>,  <27.779795, 26.004429, 29.348969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162979, 25.890404, 29.361908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275315, 0.881739, -0.383064,
		0.080675, 0.375867, 0.923155,
		0.957963, -0.285062, 0.032348,
		28.450369, 25.804886, 29.371613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150766, 26.556463, 29.546976>,  <27.779795, 26.004429, 29.348969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150766, 26.556463, 29.546976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427124, 26.328835, 29.368618>,  <28.592939, 26.192257, 29.261602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427124, 26.328835, 29.368618>,  <28.150766, 26.556463, 29.546976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427124, 26.328835, 29.368618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357817, 0.805091, -0.473070,
		0.628199, 0.167292, 0.759855,
		0.690894, -0.569071, -0.445897,
		28.634392, 26.158113, 29.234848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724512, 26.855324, 29.583618>,  <28.150766, 26.556463, 29.546976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724512, 26.855324, 29.583618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836552, 26.588810, 29.307182>,  <28.903776, 26.428902, 29.141321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836552, 26.588810, 29.307182>,  <28.724512, 26.855324, 29.583618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836552, 26.588810, 29.307182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568697, 0.695155, -0.439708,
		0.773387, -0.269859, 0.573628,
		0.280101, -0.666285, -0.691092,
		28.920582, 26.388924, 29.099855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537035, 26.803223, 29.517473>,  <28.724512, 26.855324, 29.583618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537035, 26.803223, 29.517473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348600, 26.721569, 29.174217>,  <29.235538, 26.672577, 28.968264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348600, 26.721569, 29.174217>,  <29.537035, 26.803223, 29.517473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348600, 26.721569, 29.174217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512399, 0.728554, -0.454596,
		0.717997, -0.653866, -0.238620,
		-0.471092, -0.204130, -0.858140,
		29.207273, 26.660330, 28.916775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050541, 26.841011, 29.126871>,  <29.537035, 26.803223, 29.517473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050541, 26.841011, 29.126871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756390, 26.810413, 28.857540>,  <29.579899, 26.792055, 28.695942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756390, 26.810413, 28.857540>,  <30.050541, 26.841011, 29.126871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756390, 26.810413, 28.857540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560845, 0.488999, -0.668082,
		0.380362, -0.868924, -0.316695,
		-0.735376, -0.076496, -0.673328,
		29.535776, 26.787464, 28.655542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314392, 26.602154, 28.434944>,  <30.050541, 26.841011, 29.126871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314392, 26.602154, 28.434944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989128, 26.829323, 28.383980>,  <29.793970, 26.965624, 28.353401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989128, 26.829323, 28.383980>,  <30.314392, 26.602154, 28.434944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989128, 26.829323, 28.383980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447469, 0.470006, -0.760832,
		-0.372208, -0.675692, -0.636318,
		-0.813162, 0.567921, -0.127411,
		29.745180, 26.999699, 28.345757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205441, 26.675848, 27.750334>,  <30.314392, 26.602154, 28.434944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205441, 26.675848, 27.750334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955219, 26.953754, 27.892311>,  <29.805086, 27.120499, 27.977497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955219, 26.953754, 27.892311>,  <30.205441, 26.675848, 27.750334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955219, 26.953754, 27.892311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086278, 0.513761, -0.853584,
		-0.775397, -0.503338, -0.381327,
		-0.625553, 0.694767, 0.354941,
		29.767553, 27.162184, 27.998793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786867, 26.766674, 27.185104>,  <30.205441, 26.675848, 27.750334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786867, 26.766674, 27.185104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773512, 27.092731, 27.416424>,  <29.765499, 27.288366, 27.555216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773512, 27.092731, 27.416424>,  <29.786867, 26.766674, 27.185104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773512, 27.092731, 27.416424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104755, 0.578289, -0.809079,
		-0.993937, 0.033567, -0.104697,
		-0.033387, 0.815141, 0.578299,
		29.763496, 27.337275, 27.589914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521788, 27.261829, 26.771103>,  <29.786867, 26.766674, 27.185104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521788, 27.261829, 26.771103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620071, 27.494331, 27.081398>,  <29.679043, 27.633833, 27.267574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620071, 27.494331, 27.081398>,  <29.521788, 27.261829, 26.771103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620071, 27.494331, 27.081398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132891, 0.772516, -0.620934,
		-0.960191, 0.255658, 0.112571,
		0.245710, 0.581256, 0.775737,
		29.693785, 27.668709, 27.314119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087460, 27.821863, 26.745255>,  <29.521788, 27.261829, 26.771103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087460, 27.821863, 26.745255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427647, 27.949337, 26.912655>,  <29.631760, 28.025822, 27.013096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427647, 27.949337, 26.912655>,  <29.087460, 27.821863, 26.745255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427647, 27.949337, 26.912655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072506, 0.859017, -0.506787,
		-0.521006, 0.400663, 0.753672,
		0.850468, 0.318685, 0.418503,
		29.682787, 28.044943, 27.038206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915592, 28.364946, 27.200439>,  <29.087460, 27.821863, 26.745255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915592, 28.364946, 27.200439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307465, 28.388741, 27.123821>,  <29.542587, 28.403017, 27.077850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307465, 28.388741, 27.123821>,  <28.915592, 28.364946, 27.200439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307465, 28.388741, 27.123821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118136, 0.942908, -0.311397,
		0.162087, 0.327698, 0.930775,
		0.979679, 0.059485, -0.191546,
		29.601368, 28.406586, 27.066357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131508, 29.181019, 27.298269>,  <28.915592, 28.364946, 27.200439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131508, 29.181019, 27.298269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434315, 29.037292, 27.079979>,  <29.615999, 28.951056, 26.949005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434315, 29.037292, 27.079979>,  <29.131508, 29.181019, 27.298269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434315, 29.037292, 27.079979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041389, 0.859908, -0.508768,
		0.652083, 0.362558, 0.665837,
		0.757017, -0.359317, -0.545726,
		29.661419, 28.929497, 26.916262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567778, 29.738478, 27.267179>,  <29.131508, 29.181019, 27.298269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567778, 29.738478, 27.267179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677868, 29.502178, 26.963795>,  <29.743921, 29.360399, 26.781763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677868, 29.502178, 26.963795>,  <29.567778, 29.738478, 27.267179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677868, 29.502178, 26.963795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194910, 0.806836, -0.557697,
		0.941415, 0.005659, 0.337204,
		0.275224, -0.590749, -0.758464,
		29.760435, 29.324953, 26.736256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965260, 30.161642, 26.951551>,  <29.567778, 29.738478, 27.267179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965260, 30.161642, 26.951551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895201, 29.894596, 26.662106>,  <29.853165, 29.734369, 26.488438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895201, 29.894596, 26.662106>,  <29.965260, 30.161642, 26.951551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895201, 29.894596, 26.662106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028951, 0.731164, -0.681587,
		0.984116, -0.140328, -0.108735,
		-0.175149, -0.667613, -0.723613,
		29.842655, 29.694313, 26.445023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452042, 30.353760, 26.410843>,  <29.965260, 30.161642, 26.951551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452042, 30.353760, 26.410843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147120, 30.141842, 26.262138>,  <29.964167, 30.014690, 26.172916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147120, 30.141842, 26.262138>,  <30.452042, 30.353760, 26.410843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147120, 30.141842, 26.262138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228604, 0.757782, -0.611151,
		0.605497, -0.380900, -0.698777,
		-0.762308, -0.529794, -0.371760,
		29.918427, 29.982904, 26.150610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540283, 30.582537, 25.732193>,  <30.452042, 30.353760, 26.410843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540283, 30.582537, 25.732193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169804, 30.433723, 25.756672>,  <29.947515, 30.344437, 25.771360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169804, 30.433723, 25.756672>,  <30.540283, 30.582537, 25.732193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169804, 30.433723, 25.756672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330379, 0.722626, -0.607174,
		0.181664, -0.582584, -0.792208,
		-0.926201, -0.372031, 0.061199,
		29.891943, 30.322115, 25.775032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250992, 30.603378, 25.003191>,  <30.540283, 30.582537, 25.732193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250992, 30.603378, 25.003191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964016, 30.599419, 25.281811>,  <29.791830, 30.597042, 25.448982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964016, 30.599419, 25.281811>,  <30.250992, 30.603378, 25.003191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964016, 30.599419, 25.281811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460742, 0.756703, -0.463807,
		-0.522489, -0.653684, -0.547451,
		-0.717441, -0.009899, 0.696549,
		29.748783, 30.596449, 25.490776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671583, 30.421818, 24.639652>,  <30.250992, 30.603378, 25.003191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671583, 30.421818, 24.639652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508978, 30.623646, 24.944324>,  <29.411415, 30.744743, 25.127127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508978, 30.623646, 24.944324>,  <29.671583, 30.421818, 24.639652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508978, 30.623646, 24.944324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411626, 0.643122, -0.645722,
		-0.815666, -0.576022, -0.053743,
		-0.406513, 0.504572, 0.761678,
		29.387024, 30.775017, 25.172829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930981, 30.632666, 24.473383>,  <29.671583, 30.421818, 24.639652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930981, 30.632666, 24.473383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001017, 30.873295, 24.785141>,  <29.043039, 31.017672, 24.972195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001017, 30.873295, 24.785141>,  <28.930981, 30.632666, 24.473383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001017, 30.873295, 24.785141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541453, 0.719997, -0.434088,
		-0.822296, -0.346000, 0.451788,
		0.175092, 0.601571, 0.779394,
		29.053545, 31.053766, 25.018959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276016, 30.992334, 24.699986>,  <28.930981, 30.632666, 24.473383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276016, 30.992334, 24.699986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542236, 31.241016, 24.865166>,  <28.701967, 31.390226, 24.964273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542236, 31.241016, 24.865166>,  <28.276016, 30.992334, 24.699986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542236, 31.241016, 24.865166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552807, 0.782361, -0.286906,
		-0.501447, -0.037332, 0.864383,
		0.665549, 0.621705, 0.412950,
		28.741901, 31.427528, 24.989050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912506, 31.517620, 25.171978>,  <28.276016, 30.992334, 24.699986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912506, 31.517620, 25.171978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265198, 31.698574, 25.118454>,  <28.476812, 31.807146, 25.086340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265198, 31.698574, 25.118454>,  <27.912506, 31.517620, 25.171978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265198, 31.698574, 25.118454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471675, 0.850693, -0.232043,
		0.008857, 0.267712, 0.963458,
		0.881728, 0.452384, -0.133808,
		28.529716, 31.834290, 25.078312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851837, 32.251030, 25.531319>,  <27.912506, 31.517620, 25.171978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851837, 32.251030, 25.531319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149801, 32.269566, 25.265099>,  <28.328581, 32.280685, 25.105366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149801, 32.269566, 25.265099>,  <27.851837, 32.251030, 25.531319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149801, 32.269566, 25.265099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357524, 0.869977, -0.339583,
		0.563280, 0.490910, 0.664623,
		0.744911, 0.046339, -0.665552,
		28.373274, 32.283466, 25.065434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048048, 32.992767, 25.442797>,  <27.851837, 32.251030, 25.531319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048048, 32.992767, 25.442797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205578, 32.820522, 25.117966>,  <28.300097, 32.717175, 24.923067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205578, 32.820522, 25.117966>,  <28.048048, 32.992767, 25.442797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205578, 32.820522, 25.117966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296005, 0.776999, -0.555566,
		0.870220, 0.459175, 0.178536,
		0.393825, -0.430617, -0.812078,
		28.323725, 32.691338, 24.874342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345446, 33.585201, 25.051935>,  <28.048048, 32.992767, 25.442797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345446, 33.585201, 25.051935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288713, 33.280834, 24.798672>,  <28.254675, 33.098213, 24.646713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288713, 33.280834, 24.798672>,  <28.345446, 33.585201, 25.051935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288713, 33.280834, 24.798672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327469, 0.639677, -0.695398,
		0.934157, 0.108711, -0.339902,
		-0.141830, -0.760918, -0.633158,
		28.246164, 33.052559, 24.608725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652241, 33.838875, 24.459330>,  <28.345446, 33.585201, 25.051935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652241, 33.838875, 24.459330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405947, 33.541439, 24.355064>,  <28.258169, 33.362980, 24.292505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405947, 33.541439, 24.355064>,  <28.652241, 33.838875, 24.459330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405947, 33.541439, 24.355064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306231, 0.530634, -0.790348,
		0.726010, -0.406823, -0.554440,
		-0.615737, -0.743587, -0.260664,
		28.221226, 33.318363, 24.276865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682865, 33.797794, 23.763065>,  <28.652241, 33.838875, 24.459330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682865, 33.797794, 23.763065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352287, 33.587246, 23.842987>,  <28.153940, 33.460918, 23.890940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352287, 33.587246, 23.842987>,  <28.682865, 33.797794, 23.763065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352287, 33.587246, 23.842987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425237, 0.350982, -0.834257,
		0.369005, -0.774430, -0.513901,
		-0.826444, -0.526375, 0.199802,
		28.104353, 33.429337, 23.902929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473644, 33.436722, 23.181179>,  <28.682865, 33.797794, 23.763065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473644, 33.436722, 23.181179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136414, 33.477310, 23.392433>,  <27.934076, 33.501663, 23.519186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136414, 33.477310, 23.392433>,  <28.473644, 33.436722, 23.181179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136414, 33.477310, 23.392433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484035, 0.284821, -0.827398,
		-0.234382, -0.953195, -0.191010,
		-0.843075, 0.101471, 0.528137,
		27.883492, 33.507751, 23.550875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994835, 33.182869, 22.625546>,  <28.473644, 33.436722, 23.181179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994835, 33.182869, 22.625546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795559, 33.385242, 22.907207>,  <27.675993, 33.506668, 23.076204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795559, 33.385242, 22.907207>,  <27.994835, 33.182869, 22.625546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795559, 33.385242, 22.907207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658358, 0.307758, -0.686913,
		-0.564245, -0.805799, 0.179767,
		-0.498189, 0.505938, 0.704155,
		27.646103, 33.537025, 23.118454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314339, 33.006390, 22.504660>,  <27.994835, 33.182869, 22.625546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314339, 33.006390, 22.504660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304382, 33.356365, 22.698097>,  <27.298409, 33.566349, 22.814159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304382, 33.356365, 22.698097>,  <27.314339, 33.006390, 22.504660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304382, 33.356365, 22.698097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591670, 0.377026, -0.712585,
		-0.805796, -0.303863, 0.508291,
		-0.024889, 0.874939, 0.483593,
		27.296915, 33.618847, 22.843176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627712, 33.255211, 22.375116>,  <27.314339, 33.006390, 22.504660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627712, 33.255211, 22.375116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825937, 33.569180, 22.523880>,  <26.944872, 33.757561, 22.613138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825937, 33.569180, 22.523880>,  <26.627712, 33.255211, 22.375116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825937, 33.569180, 22.523880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484106, 0.605114, -0.632043,
		-0.721152, 0.133172, 0.679856,
		0.495561, 0.784922, 0.371910,
		26.974606, 33.804657, 22.635452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.117004, 33.774372, 22.401340>,  <26.627712, 33.255211, 22.375116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.117004, 33.774372, 22.401340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457968, 33.983459, 22.406441>,  <26.662546, 34.108913, 22.409500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457968, 33.983459, 22.406441>,  <26.117004, 33.774372, 22.401340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457968, 33.983459, 22.406441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448839, 0.744001, -0.494982,
		-0.268224, 0.416203, 0.868810,
		0.852408, 0.522722, 0.012751,
		26.713690, 34.140274, 22.410267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976824, 34.455345, 22.524073>,  <26.117004, 33.774372, 22.401340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976824, 34.455345, 22.524073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333197, 34.459286, 22.342461>,  <26.547020, 34.461651, 22.233494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333197, 34.459286, 22.342461>,  <25.976824, 34.455345, 22.524073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333197, 34.459286, 22.342461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300595, 0.762207, -0.573309,
		0.340417, 0.647259, 0.682036,
		0.890931, 0.009852, -0.454031,
		26.600475, 34.462242, 22.206251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248177, 35.197201, 22.474171>,  <25.976824, 34.455345, 22.524073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248177, 35.197201, 22.474171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432711, 34.975368, 22.197155>,  <26.543432, 34.842270, 22.030945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432711, 34.975368, 22.197155>,  <26.248177, 35.197201, 22.474171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432711, 34.975368, 22.197155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168815, 0.711439, -0.682170,
		0.871016, 0.431621, 0.234592,
		0.461337, -0.554578, -0.692539,
		26.571112, 34.808994, 21.989393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537415, 35.108051, 23.285742>,  <26.248177, 35.197201, 22.474171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537415, 35.108051, 23.285742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827232, 35.120373, 23.010326>,  <27.001123, 35.127766, 22.845078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827232, 35.120373, 23.010326>,  <26.537415, 35.108051, 23.285742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827232, 35.120373, 23.010326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501819, 0.708374, -0.496370,
		0.472451, 0.705164, 0.528709,
		0.724546, 0.030806, -0.688537,
		27.044596, 35.129616, 22.803764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831142, 35.036331, 23.384520>,  <26.537415, 35.108051, 23.285742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831142, 35.036331, 23.384520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862526, 35.376865, 23.177029>,  <25.881355, 35.581184, 23.052534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862526, 35.376865, 23.177029>,  <25.831142, 35.036331, 23.384520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862526, 35.376865, 23.177029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454337, -0.493690, -0.741518,
		-0.887369, -0.177501, -0.425524,
		0.078457, 0.851331, -0.518729,
		25.886063, 35.632263, 23.021410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192604, 34.679844, 23.244030>,  <25.831142, 35.036331, 23.384520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.192604, 34.679844, 23.244030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970343, 34.836479, 23.537399>,  <24.836987, 34.930462, 23.713421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970343, 34.836479, 23.537399>,  <25.192604, 34.679844, 23.244030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.970343, 34.836479, 23.537399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044981, -0.866688, 0.496819,
		0.830197, 0.309049, 0.463963,
		-0.555653, 0.391588, 0.733422,
		24.803646, 34.953957, 23.757425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417580, 34.686062, 22.841183>,  <25.192604, 34.679844, 23.244030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.417580, 34.686062, 22.841183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.169729, 34.461792, 23.060894>,  <24.021019, 34.327229, 23.192720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.169729, 34.461792, 23.060894>,  <24.417580, 34.686062, 22.841183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.169729, 34.461792, 23.060894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779004, 0.353697, -0.517736,
		0.096004, -0.748692, -0.655929,
		-0.619625, -0.560676, 0.549278,
		23.983841, 34.293591, 23.225677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.986061, 34.209263, 22.477531>,  <24.417580, 34.686062, 22.841183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.986061, 34.209263, 22.477531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.790970, 34.310398, 22.811764>,  <23.673916, 34.371078, 23.012302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.790970, 34.310398, 22.811764>,  <23.986061, 34.209263, 22.477531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.790970, 34.310398, 22.811764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743391, 0.381534, -0.549364,
		-0.457703, -0.889103, 0.001873,
		-0.487727, 0.252838, 0.835581,
		23.644651, 34.386250, 23.062439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.361591, 34.191319, 22.257828>,  <23.986061, 34.209263, 22.477531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.361591, 34.191319, 22.257828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.314924, 34.404480, 22.593067>,  <23.286924, 34.532375, 22.794210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.314924, 34.404480, 22.593067>,  <23.361591, 34.191319, 22.257828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.314924, 34.404480, 22.593067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703927, 0.550924, -0.448295,
		-0.700624, -0.642262, 0.310847,
		-0.116670, 0.532900, 0.838097,
		23.279922, 34.564350, 22.844496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.077097, 33.667194, 22.298862>,  <23.361591, 34.191319, 22.257828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.077097, 33.667194, 22.298862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.039865, 33.406342, 21.997917>,  <23.017527, 33.249828, 21.817348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.039865, 33.406342, 21.997917>,  <23.077097, 33.667194, 22.298862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.039865, 33.406342, 21.997917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952776, 0.161035, -0.257457,
		0.289055, -0.740801, 0.606351,
		-0.093081, -0.652137, -0.752365,
		23.011942, 33.210701, 21.772207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.394016, 33.579453, 22.648842>,  <23.077097, 33.667194, 22.298862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.394016, 33.579453, 22.648842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.304794, 33.964489, 22.587299>,  <22.251261, 34.195511, 22.550373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.304794, 33.964489, 22.587299>,  <22.394016, 33.579453, 22.648842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.304794, 33.964489, 22.587299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633466, -0.263096, -0.727668,
		-0.740924, -0.064847, 0.668451,
		-0.223054, 0.962588, -0.153856,
		22.237879, 34.253265, 22.541143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.689163, 33.506107, 22.429905>,  <22.394016, 33.579453, 22.648842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.689163, 33.506107, 22.429905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.775135, 33.882645, 22.325848>,  <21.826717, 34.108566, 22.263414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.775135, 33.882645, 22.325848>,  <21.689163, 33.506107, 22.429905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.775135, 33.882645, 22.325848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605517, -0.080548, -0.791746,
		-0.766261, 0.327688, 0.552689,
		0.214928, 0.941346, -0.260141,
		21.839613, 34.165047, 22.247805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.140579, 33.783691, 22.240421>,  <21.689163, 33.506107, 22.429905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.140579, 33.783691, 22.240421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.372324, 34.052147, 22.055420>,  <21.511370, 34.213223, 21.944420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.372324, 34.052147, 22.055420>,  <21.140579, 33.783691, 22.240421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.372324, 34.052147, 22.055420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577859, -0.061966, -0.813780,
		-0.574821, 0.738735, 0.351925,
		0.579361, 0.671142, -0.462504,
		21.546133, 34.253490, 21.916668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.678753, 34.177433, 21.994041>,  <21.140579, 33.783691, 22.240421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.678753, 34.177433, 21.994041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.010496, 34.219925, 21.774632>,  <21.209543, 34.245419, 21.642986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.010496, 34.219925, 21.774632>,  <20.678753, 34.177433, 21.994041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.010496, 34.219925, 21.774632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537957, -0.113298, -0.835324,
		-0.150883, 0.987866, -0.036818,
		0.829359, 0.106229, -0.548524,
		21.259304, 34.251793, 21.610075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.462839, 34.633770, 21.442587>,  <20.678753, 34.177433, 21.994041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.462839, 34.633770, 21.442587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.803522, 34.499348, 21.281757>,  <21.007933, 34.418694, 21.185259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.803522, 34.499348, 21.281757>,  <20.462839, 34.633770, 21.442587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.803522, 34.499348, 21.281757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428134, -0.003831, -0.903707,
		0.302151, 0.941836, -0.147138,
		0.851708, -0.336051, -0.402075,
		21.059034, 34.398533, 21.161135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.809557, 35.146049, 20.979107>,  <20.462839, 34.633770, 21.442587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.809557, 35.146049, 20.979107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.919910, 34.779320, 20.863647>,  <20.986122, 34.559280, 20.794373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.919910, 34.779320, 20.863647>,  <20.809557, 35.146049, 20.979107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.919910, 34.779320, 20.863647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308904, 0.199802, -0.929870,
		0.910201, 0.345702, -0.228089,
		0.275885, -0.916826, -0.288649,
		21.002676, 34.504272, 20.777054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034685, 35.234680, 20.341494>,  <20.809557, 35.146049, 20.979107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034685, 35.234680, 20.341494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.947165, 34.844624, 20.355515>,  <20.894653, 34.610588, 20.363928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.947165, 34.844624, 20.355515>,  <21.034685, 35.234680, 20.341494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.947165, 34.844624, 20.355515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262030, 0.024113, -0.964759,
		0.939929, -0.220274, -0.260792,
		-0.218799, -0.975140, 0.035054,
		20.881525, 34.552082, 20.366030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.137424, 34.945290, 19.716005>,  <21.034685, 35.234680, 20.341494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.137424, 34.945290, 19.716005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.911009, 34.649776, 19.862324>,  <20.775160, 34.472469, 19.950115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.911009, 34.649776, 19.862324>,  <21.137424, 34.945290, 19.716005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.911009, 34.649776, 19.862324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249731, -0.269206, -0.930141,
		0.785644, -0.617844, -0.032115,
		-0.566037, -0.738780, 0.365795,
		20.741198, 34.428143, 19.972063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.200045, 34.446228, 19.217371>,  <21.137424, 34.945290, 19.716005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.200045, 34.446228, 19.217371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.874495, 34.346340, 19.427227>,  <20.679165, 34.286407, 19.553141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.874495, 34.346340, 19.427227>,  <21.200045, 34.446228, 19.217371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.874495, 34.346340, 19.427227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443352, -0.316719, -0.838527,
		0.375559, -0.915057, 0.147057,
		-0.813876, -0.249718, 0.524639,
		20.630331, 34.271423, 19.584620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.928114, 33.993099, 18.874052>,  <21.200045, 34.446228, 19.217371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.928114, 33.993099, 18.874052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.607496, 34.082020, 19.096081>,  <20.415125, 34.135372, 19.229298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.607496, 34.082020, 19.096081>,  <20.928114, 33.993099, 18.874052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.607496, 34.082020, 19.096081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583054, -0.084783, -0.807997,
		-0.132562, -0.971283, 0.197574,
		-0.801545, 0.222307, 0.555072,
		20.367033, 34.148712, 19.262602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.371904, 33.553146, 18.690929>,  <20.928114, 33.993099, 18.874052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.371904, 33.553146, 18.690929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.198605, 33.873592, 18.856098>,  <20.094625, 34.065861, 18.955200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.198605, 33.873592, 18.856098>,  <20.371904, 33.553146, 18.690929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.198605, 33.873592, 18.856098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686702, 0.003313, -0.726932,
		-0.583726, -0.598497, 0.548694,
		-0.433249, 0.801118, 0.412923,
		20.068630, 34.113926, 18.979975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.700794, 33.363644, 18.706165>,  <20.371904, 33.553146, 18.690929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.700794, 33.363644, 18.706165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.707214, 33.762051, 18.741264>,  <19.711065, 34.001095, 18.762323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.707214, 33.762051, 18.741264>,  <19.700794, 33.363644, 18.706165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.707214, 33.762051, 18.741264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767579, 0.068513, -0.637282,
		-0.640753, -0.057127, 0.765619,
		0.016049, 0.996014, 0.087750,
		19.712029, 34.060856, 18.767590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.990788, 33.503529, 18.642288>,  <19.700794, 33.363644, 18.706165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.990788, 33.503529, 18.642288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.159389, 33.863464, 18.597359>,  <19.260551, 34.079426, 18.570400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.159389, 33.863464, 18.597359>,  <18.990788, 33.503529, 18.642288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.159389, 33.863464, 18.597359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576264, 0.170154, -0.799354,
		-0.700180, 0.401662, 0.590267,
		0.421507, 0.899842, -0.112325,
		19.285841, 34.133415, 18.563662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.442719, 33.972816, 18.584389>,  <18.990788, 33.503529, 18.642288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.442719, 33.972816, 18.584389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.764526, 34.114410, 18.393627>,  <18.957611, 34.199368, 18.279169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.764526, 34.114410, 18.393627>,  <18.442719, 33.972816, 18.584389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.764526, 34.114410, 18.393627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572785, 0.250118, -0.780614,
		-0.157045, 0.901185, 0.403984,
		0.804522, 0.353987, -0.476905,
		19.005882, 34.220608, 18.250555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.096085, 34.510529, 18.100336>,  <18.442719, 33.972816, 18.584389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.096085, 34.510529, 18.100336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.472193, 34.490620, 17.965630>,  <18.697859, 34.478672, 17.884806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.472193, 34.490620, 17.965630>,  <18.096085, 34.510529, 18.100336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.472193, 34.490620, 17.965630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290632, 0.397738, -0.870251,
		0.177261, 0.916148, 0.359516,
		0.940272, -0.049775, -0.336765,
		18.754274, 34.475689, 17.864599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.220812, 35.177929, 17.820984>,  <18.096085, 34.510529, 18.100336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.220812, 35.177929, 17.820984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.481033, 34.926220, 17.650902>,  <18.637167, 34.775196, 17.548853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.481033, 34.926220, 17.650902>,  <18.220812, 35.177929, 17.820984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.481033, 34.926220, 17.650902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353969, 0.244113, -0.902837,
		0.671928, 0.737852, -0.063935,
		0.650553, -0.629272, -0.425203,
		18.676199, 34.737438, 17.523340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449112, 35.539940, 17.320021>,  <18.220812, 35.177929, 17.820984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.449112, 35.539940, 17.320021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.526407, 35.157417, 17.232258>,  <18.572784, 34.927902, 17.179600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.526407, 35.157417, 17.232258>,  <18.449112, 35.539940, 17.320021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.526407, 35.157417, 17.232258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339986, 0.144502, -0.929262,
		0.920363, 0.254163, -0.297207,
		0.193237, -0.956305, -0.219407,
		18.584379, 34.870525, 17.166435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.805771, 35.505455, 16.616892>,  <18.449112, 35.539940, 17.320021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.805771, 35.505455, 16.616892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.659920, 35.138229, 16.679119>,  <18.572409, 34.917892, 16.716455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.659920, 35.138229, 16.679119>,  <18.805771, 35.505455, 16.616892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.659920, 35.138229, 16.679119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430405, 0.018022, -0.902456,
		0.825710, -0.396017, -0.401712,
		-0.364628, -0.918066, 0.155567,
		18.550531, 34.862808, 16.725790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.982859, 35.232174, 16.003748>,  <18.805771, 35.505455, 16.616892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.982859, 35.232174, 16.003748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.698235, 35.005169, 16.169453>,  <18.527460, 34.868965, 16.268875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.698235, 35.005169, 16.169453>,  <18.982859, 35.232174, 16.003748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.698235, 35.005169, 16.169453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461840, -0.066556, -0.884462,
		0.529516, -0.820670, -0.214742,
		-0.711559, -0.567513, 0.414261,
		18.484766, 34.834915, 16.293732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.902912, 34.704762, 15.572963>,  <18.982859, 35.232174, 16.003748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.902912, 34.704762, 15.572963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.554852, 34.717312, 15.769677>,  <18.346016, 34.724842, 15.887706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.554852, 34.717312, 15.769677>,  <18.902912, 34.704762, 15.572963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.554852, 34.717312, 15.769677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484711, -0.234422, -0.842675,
		0.088849, -0.971629, 0.219189,
		-0.870150, 0.031372, 0.491787,
		18.293806, 34.726723, 15.917213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.441168, 34.345905, 15.134236>,  <18.902912, 34.704762, 15.572963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.441168, 34.345905, 15.134236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.166204, 34.507309, 15.375781>,  <18.001226, 34.604153, 15.520708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.166204, 34.507309, 15.375781>,  <18.441168, 34.345905, 15.134236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.166204, 34.507309, 15.375781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693244, -0.116664, -0.711197,
		-0.216530, -0.907505, 0.359930,
		-0.687406, 0.403515, 0.603861,
		17.959982, 34.628361, 15.556940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.839041, 33.909512, 15.041059>,  <18.441168, 34.345905, 15.134236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.839041, 33.909512, 15.041059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.795698, 34.304329, 15.088389>,  <17.769691, 34.541222, 15.116787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.795698, 34.304329, 15.088389>,  <17.839041, 33.909512, 15.041059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.795698, 34.304329, 15.088389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436634, 0.059676, -0.897658,
		-0.893090, -0.148933, 0.424511,
		-0.108358, 0.987045, 0.118325,
		17.763191, 34.600441, 15.123887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.080942, 34.035011, 15.068190>,  <17.839041, 33.909512, 15.041059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.080942, 34.035011, 15.068190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.294117, 34.340225, 14.921899>,  <17.422022, 34.523354, 14.834125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.294117, 34.340225, 14.921899>,  <17.080942, 34.035011, 15.068190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.294117, 34.340225, 14.921899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618397, 0.056211, -0.783853,
		-0.577550, 0.643908, 0.501815,
		0.532937, 0.763035, -0.365726,
		17.453999, 34.569138, 14.812181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.626200, 34.587181, 14.823202>,  <17.080942, 34.035011, 15.068190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.626200, 34.587181, 14.823202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976175, 34.638390, 14.636399>,  <17.186161, 34.669113, 14.524318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976175, 34.638390, 14.636399>,  <16.626200, 34.587181, 14.823202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976175, 34.638390, 14.636399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483043, 0.298391, -0.823184,
		0.033969, 0.945819, 0.322912,
		0.874938, 0.128018, -0.467007,
		17.238657, 34.676796, 14.496297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.415140, 35.216087, 14.398423>,  <16.626200, 34.587181, 14.823202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.415140, 35.216087, 14.398423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.732077, 35.014755, 14.260522>,  <16.922239, 34.893955, 14.177781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.732077, 35.014755, 14.260522>,  <16.415140, 35.216087, 14.398423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.732077, 35.014755, 14.260522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395017, 0.007385, -0.918644,
		0.464924, 0.864065, -0.192971,
		0.792343, -0.503326, -0.344754,
		16.969780, 34.863758, 14.157096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.579586, 35.669556, 13.840047>,  <16.415140, 35.216087, 14.398423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.579586, 35.669556, 13.840047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.769161, 35.325886, 13.762891>,  <16.882906, 35.119686, 13.716597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.769161, 35.325886, 13.762891>,  <16.579586, 35.669556, 13.840047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.769161, 35.325886, 13.762891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111743, 0.158603, -0.980999,
		0.873440, 0.486487, -0.020838,
		0.473938, -0.859172, -0.192891,
		16.911343, 35.068134, 13.705024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.261711, 35.937679, 14.260276>,  <16.579586, 35.669556, 13.840047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.261711, 35.937679, 14.260276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.937513, 36.145802, 14.367887>,  <16.742994, 36.270676, 14.432453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.937513, 36.145802, 14.367887>,  <17.261711, 35.937679, 14.260276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.937513, 36.145802, 14.367887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582849, 0.670789, 0.458616,
		0.058162, 0.528509, -0.846933,
		-0.810496, 0.520309, 0.269026,
		16.694365, 36.301895, 14.448594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.332682, 36.626663, 14.075888>,  <17.261711, 35.937679, 14.260276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.332682, 36.626663, 14.075888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.068867, 36.610100, 14.376100>,  <16.910578, 36.600163, 14.556227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.068867, 36.610100, 14.376100>,  <17.332682, 36.626663, 14.075888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.068867, 36.610100, 14.376100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594056, 0.583056, 0.554205,
		-0.460553, 0.811376, -0.359945,
		-0.659537, -0.041413, 0.750531,
		16.871006, 36.597675, 14.601259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.359541, 37.212132, 14.361162>,  <17.332682, 36.626663, 14.075888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.359541, 37.212132, 14.361162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.191961, 37.003986, 14.658807>,  <17.091413, 36.879101, 14.837394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.191961, 37.003986, 14.658807>,  <17.359541, 37.212132, 14.361162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.191961, 37.003986, 14.658807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752013, 0.260427, 0.605519,
		-0.508877, 0.813265, 0.282214,
		-0.418951, -0.520363, 0.744112,
		17.066277, 36.847878, 14.882040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.486525, 37.687531, 14.914700>,  <17.359541, 37.212132, 14.361162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.486525, 37.687531, 14.914700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.385090, 37.328552, 15.059077>,  <17.324228, 37.113163, 15.145703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.385090, 37.328552, 15.059077>,  <17.486525, 37.687531, 14.914700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.385090, 37.328552, 15.059077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455270, 0.218497, 0.863127,
		-0.853477, 0.383205, 0.353173,
		-0.253588, -0.897448, 0.360944,
		17.309013, 37.059319, 15.167360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.184208, 37.615116, 15.690927>,  <17.486525, 37.687531, 14.914700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.184208, 37.615116, 15.690927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.329519, 37.244198, 15.654799>,  <17.416706, 37.021648, 15.633123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.329519, 37.244198, 15.654799>,  <17.184208, 37.615116, 15.690927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.329519, 37.244198, 15.654799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537721, 0.129516, 0.833116,
		-0.760844, -0.351220, 0.545675,
		0.363280, -0.927292, -0.090317,
		17.438503, 36.966011, 15.627705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.156469, 37.430485, 16.393654>,  <17.184208, 37.615116, 15.690927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.156469, 37.430485, 16.393654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.466431, 37.256046, 16.210636>,  <17.652407, 37.151382, 16.100824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.466431, 37.256046, 16.210636>,  <17.156469, 37.430485, 16.393654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.466431, 37.256046, 16.210636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522143, 0.033691, 0.852192,
		-0.356220, -0.899270, 0.253810,
		0.774903, -0.436094, -0.457546,
		17.698902, 37.125217, 16.073372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.492018, 36.933815, 16.891405>,  <17.156469, 37.430485, 16.393654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.492018, 36.933815, 16.891405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.787376, 37.016277, 16.634571>,  <17.964592, 37.065754, 16.480471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.787376, 37.016277, 16.634571>,  <17.492018, 36.933815, 16.891405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.787376, 37.016277, 16.634571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668242, -0.095626, 0.737773,
		0.090700, -0.973835, -0.208374,
		0.738395, 0.206160, -0.642084,
		18.008894, 37.078125, 16.441946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.919672, 36.473469, 17.117023>,  <17.492018, 36.933815, 16.891405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.919672, 36.473469, 17.117023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.136057, 36.740387, 16.912251>,  <18.265888, 36.900539, 16.789387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.136057, 36.740387, 16.912251>,  <17.919672, 36.473469, 17.117023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.136057, 36.740387, 16.912251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700691, -0.020917, 0.713158,
		0.465180, -0.744498, -0.478884,
		0.540962, 0.667296, -0.511933,
		18.298346, 36.940575, 16.758671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.557056, 36.142799, 16.922209>,  <17.919672, 36.473469, 17.117023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.557056, 36.142799, 16.922209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.599581, 36.540184, 16.938824>,  <18.625095, 36.778614, 16.948793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.599581, 36.540184, 16.938824>,  <18.557056, 36.142799, 16.922209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.599581, 36.540184, 16.938824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713040, -0.105285, 0.693173,
		0.693017, -0.044073, -0.719573,
		0.106310, 0.993465, 0.041539,
		18.631474, 36.838223, 16.951284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.214386, 36.203110, 17.090227>,  <18.557056, 36.142799, 16.922209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.214386, 36.203110, 17.090227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.108027, 36.583992, 17.150364>,  <19.044210, 36.812523, 17.186445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.108027, 36.583992, 17.150364>,  <19.214386, 36.203110, 17.090227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.108027, 36.583992, 17.150364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744564, 0.103801, 0.659432,
		0.612309, 0.287281, -0.736578,
		-0.265900, 0.952205, 0.150341,
		19.028257, 36.869652, 17.195467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855455, 36.490124, 17.131872>,  <19.214386, 36.203110, 17.090227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.855455, 36.490124, 17.131872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562487, 36.696465, 17.309616>,  <19.386705, 36.820271, 17.416262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562487, 36.696465, 17.309616>,  <19.855455, 36.490124, 17.131872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.562487, 36.696465, 17.309616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572574, 0.113532, 0.811954,
		0.368401, 0.849120, -0.378518,
		-0.732421, 0.515854, 0.444358,
		19.342760, 36.851219, 17.442923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.205446, 36.967003, 17.381350>,  <19.855455, 36.490124, 17.131872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.205446, 36.967003, 17.381350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.855013, 37.006542, 17.570118>,  <19.644753, 37.030266, 17.683378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.855013, 37.006542, 17.570118>,  <20.205446, 36.967003, 17.381350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.855013, 37.006542, 17.570118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481955, 0.208239, 0.851091,
		-0.014141, 0.973070, -0.230076,
		-0.876082, 0.098851, 0.471921,
		19.592188, 37.036198, 17.711695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.215574, 37.606205, 17.852777>,  <20.205446, 36.967003, 17.381350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.215574, 37.606205, 17.852777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.955503, 37.330128, 17.979839>,  <19.799461, 37.164482, 18.056076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.955503, 37.330128, 17.979839>,  <20.215574, 37.606205, 17.852777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.955503, 37.330128, 17.979839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401966, 0.042312, 0.914677,
		-0.644742, 0.722390, 0.249923,
		-0.650178, -0.690190, 0.317656,
		19.760450, 37.123070, 18.075136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.035786, 37.898205, 18.572628>,  <20.215574, 37.606205, 17.852777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.035786, 37.898205, 18.572628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.926729, 37.513374, 18.575928>,  <19.861296, 37.282475, 18.577908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.926729, 37.513374, 18.575928>,  <20.035786, 37.898205, 18.572628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.926729, 37.513374, 18.575928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142572, -0.031923, 0.989270,
		-0.951493, 0.270893, 0.145869,
		-0.272643, -0.962080, 0.008248,
		19.844936, 37.224751, 18.578402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.503704, 37.860538, 19.030533>,  <20.035786, 37.898205, 18.572628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.503704, 37.860538, 19.030533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.657127, 37.492599, 18.997646>,  <19.749182, 37.271835, 18.977915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.657127, 37.492599, 18.997646>,  <19.503704, 37.860538, 19.030533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.657127, 37.492599, 18.997646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004365, -0.090828, 0.995857,
		-0.923506, -0.381612, -0.038853,
		0.383560, -0.919849, -0.082215,
		19.772196, 37.216644, 18.972982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232618, 37.466492, 19.557865>,  <19.503704, 37.860538, 19.030533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.232618, 37.466492, 19.557865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.539400, 37.238670, 19.439621>,  <19.723469, 37.101978, 19.368673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.539400, 37.238670, 19.439621>,  <19.232618, 37.466492, 19.557865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.539400, 37.238670, 19.439621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212568, -0.209165, 0.954497,
		-0.605472, -0.794894, -0.039350,
		0.766954, -0.569556, -0.295612,
		19.769487, 37.067802, 19.350937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.249355, 37.013290, 20.060472>,  <19.232618, 37.466492, 19.557865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.249355, 37.013290, 20.060472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.586964, 36.896965, 19.880226>,  <19.789530, 36.827171, 19.772078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.586964, 36.896965, 19.880226>,  <19.249355, 37.013290, 20.060472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.586964, 36.896965, 19.880226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322168, -0.396800, 0.859510,
		-0.428763, -0.870618, -0.241216,
		0.844020, -0.290815, -0.450619,
		19.840170, 36.809723, 19.745041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.255947, 36.341530, 20.234196>,  <19.249355, 37.013290, 20.060472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.255947, 36.341530, 20.234196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.611689, 36.487659, 20.124222>,  <19.825132, 36.575336, 20.058237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.611689, 36.487659, 20.124222>,  <19.255947, 36.341530, 20.234196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.611689, 36.487659, 20.124222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400462, -0.332204, 0.853973,
		0.220645, -0.869584, -0.441746,
		0.889351, 0.365327, -0.274936,
		19.878494, 36.597256, 20.041740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758905, 35.807327, 20.182377>,  <19.255947, 36.341530, 20.234196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758905, 35.807327, 20.182377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.934002, 36.154022, 20.277996>,  <20.039061, 36.362041, 20.335367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.934002, 36.154022, 20.277996>,  <19.758905, 35.807327, 20.182377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.934002, 36.154022, 20.277996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319396, -0.398439, 0.859786,
		0.840458, -0.300012, -0.451247,
		0.437741, 0.866740, 0.239049,
		20.065325, 36.414043, 20.349710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.298054, 35.641922, 20.723806>,  <19.758905, 35.807327, 20.182377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.298054, 35.641922, 20.723806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.294464, 36.041763, 20.734467>,  <20.292311, 36.281670, 20.740862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.294464, 36.041763, 20.734467>,  <20.298054, 35.641922, 20.723806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.294464, 36.041763, 20.734467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381172, -0.021218, 0.924261,
		0.924461, 0.018454, -0.380831,
		-0.008976, 0.999605, 0.026649,
		20.291771, 36.341644, 20.742462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.035517, 35.923576, 20.720488>,  <20.298054, 35.641922, 20.723806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.035517, 35.923576, 20.720488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.781790, 36.178635, 20.895325>,  <20.629553, 36.331669, 21.000227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.781790, 36.178635, 20.895325>,  <21.035517, 35.923576, 20.720488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.781790, 36.178635, 20.895325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545582, -0.031335, 0.837471,
		0.547704, 0.769695, -0.328010,
		-0.634319, 0.637642, 0.437094,
		20.591494, 36.369926, 21.026453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.478249, 36.243671, 21.105753>,  <21.035517, 35.923576, 20.720488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.478249, 36.243671, 21.105753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.127186, 36.367256, 21.252319>,  <20.916548, 36.441406, 21.340260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.127186, 36.367256, 21.252319>,  <21.478249, 36.243671, 21.105753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.127186, 36.367256, 21.252319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453310, 0.286827, 0.843943,
		0.155644, 0.906794, -0.391789,
		-0.877659, 0.308957, 0.366416,
		20.863888, 36.459942, 21.362244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.453854, 36.877232, 21.334179>,  <21.478249, 36.243671, 21.105753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.453854, 36.877232, 21.334179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.120281, 36.766331, 21.525047>,  <20.920137, 36.699791, 21.639568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.120281, 36.766331, 21.525047>,  <21.453854, 36.877232, 21.334179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.120281, 36.766331, 21.525047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376190, 0.347041, 0.859095,
		-0.403780, 0.895933, -0.185111,
		-0.833932, -0.277248, 0.477169,
		20.870102, 36.683155, 21.668198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.216972, 37.407043, 21.693808>,  <21.453854, 36.877232, 21.334179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.216972, 37.407043, 21.693808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049540, 37.101738, 21.890671>,  <20.949080, 36.918556, 22.008789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049540, 37.101738, 21.890671>,  <21.216972, 37.407043, 21.693808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.049540, 37.101738, 21.890671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332382, 0.375566, 0.865143,
		-0.845169, 0.525718, 0.096490,
		-0.418582, -0.763264, 0.492156,
		20.923965, 36.872761, 22.038317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.975264, 37.668434, 22.223766>,  <21.216972, 37.407043, 21.693808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.975264, 37.668434, 22.223766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.969683, 37.289310, 22.351177>,  <20.966335, 37.061836, 22.427624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.969683, 37.289310, 22.351177>,  <20.975264, 37.668434, 22.223766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.969683, 37.289310, 22.351177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320037, 0.297566, 0.899461,
		-0.947302, 0.114489, 0.299184,
		-0.013952, -0.947812, 0.318525,
		20.965498, 37.004967, 22.446735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.580820, 37.605045, 22.819225>,  <20.975264, 37.668434, 22.223766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.580820, 37.605045, 22.819225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812523, 37.282852, 22.869286>,  <20.951546, 37.089539, 22.899323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812523, 37.282852, 22.869286>,  <20.580820, 37.605045, 22.819225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.812523, 37.282852, 22.869286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295240, 0.350424, 0.888840,
		-0.759798, -0.477919, 0.440795,
		0.579259, -0.805479, 0.125151,
		20.986301, 37.041210, 22.906830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.096539, 37.332844, 23.379391>,  <20.580820, 37.605045, 22.819225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.096539, 37.332844, 23.379391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.853909, 37.262680, 23.069218>,  <19.708330, 37.220581, 22.883114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.853909, 37.262680, 23.069218>,  <20.096539, 37.332844, 23.379391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.853909, 37.262680, 23.069218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785775, -0.016089, 0.618303,
		-0.120931, 0.984364, -0.128072,
		-0.606575, -0.175408, -0.775434,
		19.671936, 37.210056, 22.836588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.497900, 37.790829, 23.393391>,  <20.096539, 37.332844, 23.379391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.497900, 37.790829, 23.393391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.398138, 37.450920, 23.207626>,  <19.338282, 37.246975, 23.096169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.398138, 37.450920, 23.207626>,  <19.497900, 37.790829, 23.393391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.398138, 37.450920, 23.207626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864591, -0.020622, 0.502052,
		-0.436209, 0.526740, -0.729566,
		-0.249406, -0.849776, -0.464411,
		19.323317, 37.195988, 23.068302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.834341, 37.922226, 23.066799>,  <19.497900, 37.790829, 23.393391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.834341, 37.922226, 23.066799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.935858, 37.558895, 23.199787>,  <18.996769, 37.340897, 23.279581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.935858, 37.558895, 23.199787>,  <18.834341, 37.922226, 23.066799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.935858, 37.558895, 23.199787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862665, -0.057092, 0.502543,
		-0.437490, -0.414354, -0.798068,
		0.253794, -0.908323, 0.332472,
		19.011995, 37.286400, 23.299528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.305244, 37.343319, 23.003979>,  <18.834341, 37.922226, 23.066799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.305244, 37.343319, 23.003979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.502972, 37.243649, 23.337101>,  <18.621607, 37.183846, 23.536974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.502972, 37.243649, 23.337101>,  <18.305244, 37.343319, 23.003979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.502972, 37.243649, 23.337101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864798, -0.043786, 0.500206,
		-0.088174, -0.967468, -0.237132,
		0.494317, -0.249177, 0.832804,
		18.651266, 37.168896, 23.586943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.132832, 36.644836, 23.148401>,  <18.305244, 37.343319, 23.003979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.132832, 36.644836, 23.148401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.207382, 36.884804, 23.459621>,  <18.252113, 37.028782, 23.646355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.207382, 36.884804, 23.459621>,  <18.132832, 36.644836, 23.148401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.207382, 36.884804, 23.459621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819148, -0.342364, 0.460200,
		0.542458, -0.723110, 0.427611,
		0.186377, 0.599916, 0.778052,
		18.263296, 37.064777, 23.693037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.820227, 26.919518, 26.000280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.058365, 27.080673, 26.278343>,  <32.201248, 27.177366, 26.445181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.058365, 27.080673, 26.278343>,  <31.820227, 26.919518, 26.000280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058365, 27.080673, 26.278343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178218, 0.777426, -0.603197,
		-0.783455, 0.483001, 0.391036,
		0.595346, 0.402887, 0.695158,
		32.236969, 27.201540, 26.486891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522964, 27.692558, 26.177000>,  <31.820227, 26.919518, 26.000280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522964, 27.692558, 26.177000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.911943, 27.652981, 26.261429>,  <32.145332, 27.629234, 26.312086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.911943, 27.652981, 26.261429>,  <31.522964, 27.692558, 26.177000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911943, 27.652981, 26.261429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178308, 0.898963, -0.400090,
		-0.150159, 0.426703, 0.891839,
		0.972450, -0.098945, 0.211072,
		32.203678, 27.623297, 26.324751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773636, 28.288252, 26.655399>,  <31.522964, 27.692558, 26.177000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773636, 28.288252, 26.655399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.110001, 28.147129, 26.491257>,  <32.311821, 28.062456, 26.392771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.110001, 28.147129, 26.491257>,  <31.773636, 28.288252, 26.655399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110001, 28.147129, 26.491257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185478, 0.900244, -0.393903,
		0.508394, 0.255125, 0.822464,
		0.840912, -0.352806, -0.410359,
		32.362274, 28.041286, 26.368149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180668, 28.946243, 26.650253>,  <31.773636, 28.288252, 26.655399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180668, 28.946243, 26.650253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.386982, 28.695236, 26.416950>,  <32.510769, 28.544632, 26.276968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.386982, 28.695236, 26.416950>,  <32.180668, 28.946243, 26.650253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386982, 28.695236, 26.416950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276375, 0.766281, -0.580026,
		0.810915, 0.137971, 0.568666,
		0.515785, -0.627517, -0.583257,
		32.541718, 28.506981, 26.241974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869614, 29.262884, 26.558382>,  <32.180668, 28.946243, 26.650253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869614, 29.262884, 26.558382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794350, 29.014160, 26.254292>,  <32.749191, 28.864925, 26.071836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794350, 29.014160, 26.254292>,  <32.869614, 29.262884, 26.558382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794350, 29.014160, 26.254292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175158, 0.740399, -0.648944,
		0.966393, -0.255266, -0.030399,
		-0.188161, -0.621811, -0.760228,
		32.737900, 28.827618, 26.026222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424549, 29.238985, 26.156126>,  <32.869614, 29.262884, 26.558382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424549, 29.238985, 26.156126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.134029, 29.131405, 25.903095>,  <32.959717, 29.066856, 25.751276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.134029, 29.131405, 25.903095>,  <33.424549, 29.238985, 26.156126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134029, 29.131405, 25.903095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195435, 0.801498, -0.565160,
		0.659009, -0.534104, -0.529566,
		-0.726301, -0.268949, -0.632577,
		32.916138, 29.050720, 25.713322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732605, 29.350479, 25.528982>,  <33.424549, 29.238985, 26.156126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732605, 29.350479, 25.528982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.338463, 29.329853, 25.463966>,  <33.101978, 29.317476, 25.424957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.338463, 29.329853, 25.463966>,  <33.732605, 29.350479, 25.528982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338463, 29.329853, 25.463966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089009, 0.657486, -0.748190,
		0.145447, -0.751700, -0.643267,
		-0.985354, -0.051566, -0.162538,
		33.042858, 29.314383, 25.415205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655025, 29.317364, 24.811901>,  <33.732605, 29.350479, 25.528982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655025, 29.317364, 24.811901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.295372, 29.435360, 24.941227>,  <33.079578, 29.506157, 25.018824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.295372, 29.435360, 24.941227>,  <33.655025, 29.317364, 24.811901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295372, 29.435360, 24.941227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057660, 0.652448, -0.755637,
		-0.433853, -0.698064, -0.569631,
		-0.899137, 0.294990, 0.323317,
		33.025631, 29.523857, 25.038221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153313, 29.366255, 24.265572>,  <33.655025, 29.317364, 24.811901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153313, 29.366255, 24.265572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.023670, 29.620453, 24.545887>,  <32.945885, 29.772972, 24.714077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.023670, 29.620453, 24.545887>,  <33.153313, 29.366255, 24.265572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023670, 29.620453, 24.545887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189501, 0.682149, -0.706230,
		-0.926848, -0.361691, -0.100659,
		-0.324102, 0.635493, 0.700790,
		32.926441, 29.811100, 24.756124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613445, 29.713522, 23.948908>,  <33.153313, 29.366255, 24.265572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613445, 29.713522, 23.948908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.726006, 29.941715, 24.257545>,  <32.793541, 30.078632, 24.442728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.726006, 29.941715, 24.257545>,  <32.613445, 29.713522, 23.948908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726006, 29.941715, 24.257545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221614, 0.820988, -0.526181,
		-0.933649, -0.022929, 0.357453,
		0.281400, 0.570485, 0.771596,
		32.810425, 30.112862, 24.489025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182014, 30.155308, 24.038870>,  <32.613445, 29.713522, 23.948908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182014, 30.155308, 24.038870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.460827, 30.362671, 24.237019>,  <32.628117, 30.487089, 24.355907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.460827, 30.362671, 24.237019>,  <32.182014, 30.155308, 24.038870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460827, 30.362671, 24.237019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347664, 0.848566, -0.398831,
		-0.627115, 0.105775, 0.771712,
		0.697034, 0.518409, 0.495374,
		32.669937, 30.518194, 24.385632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864876, 30.628235, 24.469730>,  <32.182014, 30.155308, 24.038870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864876, 30.628235, 24.469730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.235703, 30.754143, 24.388275>,  <32.458199, 30.829687, 24.339403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.235703, 30.754143, 24.388275>,  <31.864876, 30.628235, 24.469730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235703, 30.754143, 24.388275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374544, 0.754043, -0.539570,
		-0.016290, 0.576488, 0.816943,
		0.927066, 0.314770, -0.203637,
		32.513821, 30.848574, 24.327185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865719, 31.464046, 24.553995>,  <31.864876, 30.628235, 24.469730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865719, 31.464046, 24.553995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.179638, 31.354027, 24.331844>,  <32.367989, 31.288015, 24.198555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.179638, 31.354027, 24.331844>,  <31.865719, 31.464046, 24.553995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179638, 31.354027, 24.331844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241334, 0.689762, -0.682632,
		0.570834, 0.669759, 0.474945,
		0.784797, -0.275049, -0.555375,
		32.415077, 31.271511, 24.165232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145187, 32.065315, 24.283970>,  <31.865719, 31.464046, 24.553995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145187, 32.065315, 24.283970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.341473, 31.818199, 24.038193>,  <32.459244, 31.669930, 23.890726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.341473, 31.818199, 24.038193>,  <32.145187, 32.065315, 24.283970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341473, 31.818199, 24.038193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084482, 0.668128, -0.739235,
		0.867216, 0.414662, 0.275667,
		0.490714, -0.617787, -0.614442,
		32.488686, 31.632862, 23.853861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600071, 32.485195, 23.887732>,  <32.145187, 32.065315, 24.283970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600071, 32.485195, 23.887732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.512814, 32.152836, 23.682980>,  <32.460457, 31.953421, 23.560129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.512814, 32.152836, 23.682980>,  <32.600071, 32.485195, 23.887732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512814, 32.152836, 23.682980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207234, 0.551989, -0.807690,
		0.953659, -0.070116, -0.292605,
		-0.218146, -0.830898, -0.511879,
		32.447369, 31.903566, 23.529415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835705, 32.601948, 23.274303>,  <32.600071, 32.485195, 23.887732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835705, 32.601948, 23.274303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.571690, 32.306168, 23.221291>,  <32.413280, 32.128700, 23.189482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.571690, 32.306168, 23.221291>,  <32.835705, 32.601948, 23.274303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571690, 32.306168, 23.221291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388040, 0.486649, -0.782686,
		0.643256, -0.465172, -0.608142,
		-0.660035, -0.739451, -0.132534,
		32.373680, 32.084332, 23.181530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790154, 32.605133, 22.429638>,  <32.835705, 32.601948, 23.274303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790154, 32.605133, 22.429638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.476871, 32.396000, 22.564240>,  <32.288902, 32.270519, 22.645000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.476871, 32.396000, 22.564240>,  <32.790154, 32.605133, 22.429638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476871, 32.396000, 22.564240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490744, 0.187489, -0.850892,
		0.381787, -0.831559, -0.403421,
		-0.783204, -0.522836, 0.336502,
		32.241909, 32.239147, 22.665190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631027, 32.197983, 21.912090>,  <32.790154, 32.605133, 22.429638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631027, 32.197983, 21.912090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.294231, 32.165363, 22.125412>,  <32.092155, 32.145794, 22.253405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.294231, 32.165363, 22.125412>,  <32.631027, 32.197983, 21.912090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294231, 32.165363, 22.125412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538950, 0.082458, -0.838292,
		0.024383, -0.993253, -0.113377,
		-0.841985, -0.081545, 0.533303,
		32.041637, 32.140900, 22.285402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279190, 31.685722, 21.621044>,  <32.631027, 32.197983, 21.912090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279190, 31.685722, 21.621044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.015682, 31.917736, 21.812706>,  <31.857578, 32.056942, 21.927702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.015682, 31.917736, 21.812706>,  <32.279190, 31.685722, 21.621044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015682, 31.917736, 21.812706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603730, -0.027536, -0.796713,
		-0.448926, -0.814128, 0.368323,
		-0.658768, 0.580032, 0.479152,
		31.818052, 32.091747, 21.956451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545647, 31.440414, 21.518923>,  <32.279190, 31.685722, 21.621044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545647, 31.440414, 21.518923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.501230, 31.825493, 21.617626>,  <31.474581, 32.056538, 21.676847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.501230, 31.825493, 21.617626>,  <31.545647, 31.440414, 21.518923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501230, 31.825493, 21.617626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567557, 0.142393, -0.810928,
		-0.815812, -0.230097, 0.530572,
		-0.111043, 0.962694, 0.246759,
		31.467918, 32.114300, 21.691654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918831, 31.615143, 21.240118>,  <31.545647, 31.440414, 21.518923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918831, 31.615143, 21.240118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.090889, 31.973194, 21.286972>,  <31.194124, 32.188026, 21.315084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.090889, 31.973194, 21.286972>,  <30.918831, 31.615143, 21.240118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090889, 31.973194, 21.286972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390245, 0.301374, -0.869990,
		-0.814054, 0.328511, 0.478954,
		0.430146, 0.895128, 0.117135,
		31.219933, 32.241734, 21.322113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395941, 32.191914, 21.294489>,  <30.918831, 31.615143, 21.240118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395941, 32.191914, 21.294489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.742397, 32.338879, 21.158955>,  <30.950272, 32.427055, 21.077633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.742397, 32.338879, 21.158955>,  <30.395941, 32.191914, 21.294489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742397, 32.338879, 21.158955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481761, 0.433238, -0.761716,
		-0.133064, 0.822992, 0.552248,
		0.866141, 0.367409, -0.338837,
		31.002239, 32.449100, 21.057304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818531, 32.625526, 21.584173>,  <30.395941, 32.191914, 21.294489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818531, 32.625526, 21.584173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.473152, 32.737518, 21.416332>,  <29.265924, 32.804714, 21.315628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.473152, 32.737518, 21.416332>,  <29.818531, 32.625526, 21.584173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473152, 32.737518, 21.416332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418176, -0.862495, 0.285011,
		-0.282109, 0.421560, 0.861802,
		-0.863449, 0.279980, -0.419604,
		29.214117, 32.821514, 21.290451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281149, 32.673836, 22.038252>,  <29.818531, 32.625526, 21.584173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281149, 32.673836, 22.038252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.194571, 32.579548, 21.659286>,  <29.142624, 32.522976, 21.431908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.194571, 32.579548, 21.659286>,  <29.281149, 32.673836, 22.038252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194571, 32.579548, 21.659286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146227, -0.951642, 0.270176,
		-0.965282, 0.197015, 0.171511,
		-0.216446, -0.235716, -0.947412,
		29.129637, 32.508835, 21.375063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649288, 32.228573, 22.088100>,  <29.281149, 32.673836, 22.038252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649288, 32.228573, 22.088100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.804245, 32.179672, 21.722591>,  <28.897219, 32.150333, 21.503286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.804245, 32.179672, 21.722591>,  <28.649288, 32.228573, 22.088100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804245, 32.179672, 21.722591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303013, -0.952986, -0.000964,
		-0.870696, 0.277259, -0.406222,
		0.387391, -0.122251, -0.913774,
		28.920462, 32.142998, 21.448460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111219, 31.855410, 21.775518>,  <28.649288, 32.228573, 22.088100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111219, 31.855410, 21.775518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.466459, 31.801914, 21.599613>,  <28.679604, 31.769817, 21.494070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.466459, 31.801914, 21.599613>,  <28.111219, 31.855410, 21.775518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466459, 31.801914, 21.599613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218264, -0.964692, -0.147413,
		-0.404520, 0.226902, -0.885934,
		0.888102, -0.133737, -0.439761,
		28.732889, 31.761793, 21.467686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971960, 31.309093, 21.167171>,  <28.111219, 31.855410, 21.775518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971960, 31.309093, 21.167171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.366665, 31.308216, 21.232029>,  <28.603489, 31.307690, 21.270945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.366665, 31.308216, 21.232029>,  <27.971960, 31.309093, 21.167171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366665, 31.308216, 21.232029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010664, -0.996867, -0.078376,
		0.161810, 0.079068, -0.983649,
		0.986764, -0.002192, 0.162146,
		28.662695, 31.307558, 21.280672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175667, 30.785627, 20.779165>,  <27.971960, 31.309093, 21.167171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175667, 30.785627, 20.779165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.476448, 30.834713, 21.038242>,  <28.656918, 30.864164, 21.193689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.476448, 30.834713, 21.038242>,  <28.175667, 30.785627, 20.779165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476448, 30.834713, 21.038242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039435, -0.972387, 0.230017,
		0.658037, -0.198504, -0.726350,
		0.751953, 0.122716, 0.647694,
		28.702034, 30.871529, 21.232552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559210, 30.191559, 20.693731>,  <28.175667, 30.785627, 20.779165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559210, 30.191559, 20.693731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.667118, 30.311024, 21.059906>,  <28.731863, 30.382702, 21.279612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.667118, 30.311024, 21.059906>,  <28.559210, 30.191559, 20.693731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667118, 30.311024, 21.059906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078953, -0.954344, 0.288087,
		0.959683, -0.005441, -0.281034,
		0.269770, 0.298660, 0.915438,
		28.748049, 30.400621, 21.334538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080711, 29.752422, 20.994932>,  <28.559210, 30.191559, 20.693731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080711, 29.752422, 20.994932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.931467, 29.930397, 21.320587>,  <28.841921, 30.037182, 21.515980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.931467, 29.930397, 21.320587>,  <29.080711, 29.752422, 20.994932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931467, 29.930397, 21.320587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003325, -0.876857, 0.480739,
		0.927781, 0.182076, 0.325685,
		-0.373110, 0.444938, 0.814137,
		28.819534, 30.063879, 21.564829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575134, 29.657631, 21.555895>,  <29.080711, 29.752422, 20.994932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575134, 29.657631, 21.555895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.217213, 29.712780, 21.725750>,  <29.002460, 29.745871, 21.827663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.217213, 29.712780, 21.725750>,  <29.575134, 29.657631, 21.555895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217213, 29.712780, 21.725750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123315, -0.837795, 0.531876,
		0.429090, 0.528289, 0.732661,
		-0.894804, 0.137875, 0.424636,
		28.948771, 29.754143, 21.853140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692480, 29.433449, 22.218861>,  <29.575134, 29.657631, 21.555895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692480, 29.433449, 22.218861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.293697, 29.456470, 22.239883>,  <29.054428, 29.470284, 22.252497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.293697, 29.456470, 22.239883>,  <29.692480, 29.433449, 22.218861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293697, 29.456470, 22.239883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007906, -0.745520, 0.666436,
		0.077539, 0.663993, 0.743707,
		-0.996958, 0.057554, 0.052558,
		28.994610, 29.473738, 22.255651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535986, 29.626842, 22.871220>,  <29.692480, 29.433449, 22.218861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535986, 29.626842, 22.871220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.210278, 29.453918, 22.716263>,  <29.014853, 29.350164, 22.623289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.210278, 29.453918, 22.716263>,  <29.535986, 29.626842, 22.871220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210278, 29.453918, 22.716263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001419, -0.668840, 0.743405,
		-0.580484, 0.604783, 0.545230,
		-0.814270, -0.432309, -0.387393,
		28.965996, 29.324226, 22.600044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122934, 29.518723, 23.379232>,  <29.535986, 29.626842, 22.871220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122934, 29.518723, 23.379232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.992172, 29.261948, 23.101803>,  <28.913715, 29.107882, 22.935345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.992172, 29.261948, 23.101803>,  <29.122934, 29.518723, 23.379232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992172, 29.261948, 23.101803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099676, -0.706384, 0.700776,
		-0.939786, 0.298220, 0.166934,
		-0.326905, -0.641940, -0.693575,
		28.894100, 29.069366, 22.893730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599566, 29.019682, 23.622410>,  <29.122934, 29.518723, 23.379232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599566, 29.019682, 23.622410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.770790, 28.839001, 23.309303>,  <28.873526, 28.730591, 23.121439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.770790, 28.839001, 23.309303>,  <28.599566, 29.019682, 23.622410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770790, 28.839001, 23.309303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140052, -0.822516, 0.551229,
		-0.892831, -0.345589, -0.288827,
		0.428063, -0.451704, -0.782768,
		28.899208, 28.703489, 23.074472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234734, 28.328554, 23.490299>,  <28.599566, 29.019682, 23.622410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234734, 28.328554, 23.490299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.584229, 28.290817, 23.299435>,  <28.793926, 28.268175, 23.184916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.584229, 28.290817, 23.299435>,  <28.234734, 28.328554, 23.490299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584229, 28.290817, 23.299435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148310, -0.882618, 0.446083,
		-0.463237, -0.460527, -0.757183,
		0.873737, -0.094344, -0.477162,
		28.846350, 28.262514, 23.156286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223600, 27.679295, 23.130964>,  <28.234734, 28.328554, 23.490299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223600, 27.679295, 23.130964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.598448, 27.792454, 23.212723>,  <28.823357, 27.860350, 23.261778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.598448, 27.792454, 23.212723>,  <28.223600, 27.679295, 23.130964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598448, 27.792454, 23.212723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176360, -0.889205, 0.422150,
		0.301176, -0.359558, -0.883182,
		0.937118, 0.282899, 0.204396,
		28.879583, 27.877323, 23.274042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618412, 27.062008, 23.064123>,  <28.223600, 27.679295, 23.130964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618412, 27.062008, 23.064123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.857342, 27.312809, 23.264153>,  <29.000700, 27.463289, 23.384171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.857342, 27.312809, 23.264153>,  <28.618412, 27.062008, 23.064123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857342, 27.312809, 23.264153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363713, -0.767507, 0.527869,
		0.714784, -0.133426, -0.686499,
		0.597324, 0.627001, 0.500074,
		29.036539, 27.500910, 23.414175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112316, 26.668661, 23.040144>,  <28.618412, 27.062008, 23.064123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112316, 26.668661, 23.040144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.189610, 26.937557, 23.326012>,  <29.235987, 27.098894, 23.497532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.189610, 26.937557, 23.326012>,  <29.112316, 26.668661, 23.040144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189610, 26.937557, 23.326012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258320, -0.737558, 0.623922,
		0.946536, 0.064050, -0.316175,
		0.193235, 0.672239, 0.714671,
		29.247580, 27.139229, 23.540413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806026, 26.585743, 23.354311>,  <29.112316, 26.668661, 23.040144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806026, 26.585743, 23.354311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.597216, 26.766735, 23.643517>,  <29.471930, 26.875330, 23.817039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.597216, 26.766735, 23.643517>,  <29.806026, 26.585743, 23.354311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597216, 26.766735, 23.643517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275191, -0.712999, 0.644905,
		0.807314, 0.535626, 0.247688,
		-0.522029, 0.452480, 0.723013,
		29.440607, 26.902479, 23.860420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.419773, 26.679684, 23.949188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058550, 26.764835, 24.098412>,  <29.841816, 26.815926, 24.187946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058550, 26.764835, 24.098412>,  <30.419773, 26.679684, 23.949188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058550, 26.764835, 24.098412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316922, -0.256004, 0.913248,
		0.289915, 0.942945, 0.163721,
		-0.903056, 0.212877, 0.373059,
		29.787634, 26.828699, 24.210329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561235, 26.853920, 24.607105>,  <30.419773, 26.679684, 23.949188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561235, 26.853920, 24.607105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.165035, 26.800713, 24.621071>,  <29.927315, 26.768787, 24.629450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.165035, 26.800713, 24.621071>,  <30.561235, 26.853920, 24.607105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165035, 26.800713, 24.621071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081647, -0.364494, 0.927620,
		-0.110665, 0.921656, 0.371891,
		-0.990498, -0.133019, 0.034914,
		29.867886, 26.760807, 24.631546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337902, 27.133177, 25.311008>,  <30.561235, 26.853920, 24.607105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337902, 27.133177, 25.311008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.093285, 26.853977, 25.161980>,  <29.946514, 26.686457, 25.072563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.093285, 26.853977, 25.161980>,  <30.337902, 27.133177, 25.311008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093285, 26.853977, 25.161980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119858, -0.547180, 0.828389,
		-0.782079, 0.461941, 0.418285,
		-0.611544, -0.698001, -0.372571,
		29.909821, 26.644577, 25.050209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874897, 27.004658, 25.862631>,  <30.337902, 27.133177, 25.311008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874897, 27.004658, 25.862631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.882107, 26.693344, 25.611568>,  <29.886433, 26.506556, 25.460932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.882107, 26.693344, 25.611568>,  <29.874897, 27.004658, 25.862631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882107, 26.693344, 25.611568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210422, -0.610744, 0.763358,
		-0.977444, -0.145832, 0.152759,
		0.018025, -0.778284, -0.627654,
		29.887514, 26.459860, 25.423273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410017, 26.477087, 26.235275>,  <29.874897, 27.004658, 25.862631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410017, 26.477087, 26.235275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.639812, 26.295261, 25.963001>,  <29.777689, 26.186165, 25.799637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.639812, 26.295261, 25.963001>,  <29.410017, 26.477087, 26.235275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639812, 26.295261, 25.963001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245176, -0.697863, 0.672961,
		-0.780930, -0.553496, -0.289465,
		0.574488, -0.454565, -0.680686,
		29.812159, 26.158892, 25.758795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293793, 25.791079, 26.330648>,  <29.410017, 26.477087, 26.235275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293793, 25.791079, 26.330648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.653297, 25.784584, 26.155396>,  <29.869001, 25.780687, 26.050243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.653297, 25.784584, 26.155396>,  <29.293793, 25.791079, 26.330648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653297, 25.784584, 26.155396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277776, -0.752072, 0.597686,
		-0.339212, -0.658881, -0.671424,
		0.898763, -0.016237, -0.438134,
		29.922926, 25.779713, 26.023956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308752, 25.159916, 26.107687>,  <29.293793, 25.791079, 26.330648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308752, 25.159916, 26.107687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.690058, 25.276203, 26.074783>,  <29.918842, 25.345976, 26.055040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.690058, 25.276203, 26.074783>,  <29.308752, 25.159916, 26.107687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690058, 25.276203, 26.074783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300751, -0.887083, 0.350189,
		0.028835, -0.358563, -0.933060,
		0.953266, 0.290717, -0.082260,
		29.976038, 25.363419, 26.050106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689165, 24.609091, 25.803732>,  <29.308752, 25.159916, 26.107687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689165, 24.609091, 25.803732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.974356, 24.814476, 25.994736>,  <30.145470, 24.937708, 26.109339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.974356, 24.814476, 25.994736>,  <29.689165, 24.609091, 25.803732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974356, 24.814476, 25.994736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360493, -0.852531, 0.378466,
		0.601421, -0.097699, -0.792936,
		0.712978, 0.513465, 0.477510,
		30.188250, 24.968515, 26.137989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272345, 24.093262, 25.797842>,  <29.689165, 24.609091, 25.803732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272345, 24.093262, 25.797842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337095, 24.368019, 26.081242>,  <30.375946, 24.532873, 26.251282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337095, 24.368019, 26.081242>,  <30.272345, 24.093262, 25.797842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337095, 24.368019, 26.081242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385860, -0.704865, 0.595212,
		0.908244, 0.177030, -0.379147,
		0.161877, 0.686896, 0.708498,
		30.385658, 24.574087, 26.293791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916195, 23.827639, 26.112396>,  <30.272345, 24.093262, 25.797842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916195, 23.827639, 26.112396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.741665, 24.065514, 26.382496>,  <30.636948, 24.208239, 26.544556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.741665, 24.065514, 26.382496>,  <30.916195, 23.827639, 26.112396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741665, 24.065514, 26.382496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186604, -0.674334, 0.714459,
		0.880227, 0.437742, 0.183257,
		-0.436325, 0.594690, 0.675251,
		30.610767, 24.243921, 26.585072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189108, 23.596157, 26.807560>,  <30.916195, 23.827639, 26.112396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189108, 23.596157, 26.807560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870476, 23.814674, 26.911114>,  <30.679296, 23.945786, 26.973246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870476, 23.814674, 26.911114>,  <31.189108, 23.596157, 26.807560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870476, 23.814674, 26.911114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104257, -0.545963, 0.831297,
		0.595474, 0.635205, 0.491859,
		-0.796581, 0.546296, 0.258882,
		30.631502, 23.978563, 26.988779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227921, 23.704527, 27.567419>,  <31.189108, 23.596157, 26.807560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227921, 23.704527, 27.567419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.846333, 23.743740, 27.454048>,  <30.617380, 23.767267, 27.386026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.846333, 23.743740, 27.454048>,  <31.227921, 23.704527, 27.567419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846333, 23.743740, 27.454048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289412, -0.548695, 0.784331,
		-0.078625, 0.830255, 0.551810,
		-0.953970, 0.098032, -0.283427,
		30.560141, 23.773149, 27.369020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925272, 23.675125, 28.127928>,  <31.227921, 23.704527, 27.567419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925272, 23.675125, 28.127928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636667, 23.593754, 27.863190>,  <30.463505, 23.544931, 27.704348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636667, 23.593754, 27.863190>,  <30.925272, 23.675125, 28.127928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636667, 23.593754, 27.863190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389633, -0.670872, 0.630965,
		-0.572369, 0.713125, 0.404779,
		-0.721512, -0.203429, -0.661844,
		30.420214, 23.532724, 27.664637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289570, 23.855007, 28.426357>,  <30.925272, 23.675125, 28.127928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289570, 23.855007, 28.426357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.215635, 23.585052, 28.140598>,  <30.171274, 23.423080, 27.969143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.215635, 23.585052, 28.140598>,  <30.289570, 23.855007, 28.426357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215635, 23.585052, 28.140598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372950, -0.624380, 0.686337,
		-0.909255, 0.393294, -0.136291,
		-0.184835, -0.674885, -0.714399,
		30.160185, 23.382587, 27.926279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637089, 23.758751, 28.462626>,  <30.289570, 23.855007, 28.426357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637089, 23.758751, 28.462626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.763445, 23.432720, 28.268364>,  <29.839258, 23.237101, 28.151806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.763445, 23.432720, 28.268364>,  <29.637089, 23.758751, 28.462626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763445, 23.432720, 28.268364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557814, -0.573601, 0.599854,
		-0.767500, 0.081418, -0.635857,
		0.315889, -0.815078, -0.485655,
		29.858212, 23.188196, 28.122667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042189, 23.351315, 28.446371>,  <29.637089, 23.758751, 28.462626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042189, 23.351315, 28.446371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.331881, 23.085285, 28.373524>,  <29.505695, 22.925667, 28.329815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.331881, 23.085285, 28.373524>,  <29.042189, 23.351315, 28.446371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331881, 23.085285, 28.373524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497686, -0.686955, 0.529529,
		-0.477285, -0.292862, -0.828511,
		0.724229, -0.665075, -0.182120,
		29.549149, 22.885763, 28.318888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598925, 22.833504, 28.388762>,  <29.042189, 23.351315, 28.446371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598925, 22.833504, 28.388762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.968369, 22.683575, 28.420887>,  <29.190035, 22.593616, 28.440163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.968369, 22.683575, 28.420887>,  <28.598925, 22.833504, 28.388762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968369, 22.683575, 28.420887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337487, -0.695749, 0.634063,
		-0.181783, -0.612733, -0.769099,
		0.923611, -0.374823, 0.080314,
		29.245451, 22.571127, 28.444981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608015, 22.047297, 28.403662>,  <28.598925, 22.833504, 28.388762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608015, 22.047297, 28.403662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.934538, 22.173981, 28.596882>,  <29.130451, 22.249990, 28.712814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.934538, 22.173981, 28.596882>,  <28.608015, 22.047297, 28.403662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934538, 22.173981, 28.596882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153809, -0.686903, 0.710287,
		0.556764, -0.654110, -0.512011,
		0.816307, 0.316711, 0.483050,
		29.179430, 22.268993, 28.741796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899586, 21.408014, 28.721510>,  <28.608015, 22.047297, 28.403662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899586, 21.408014, 28.721510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.133453, 21.671070, 28.911530>,  <29.273773, 21.828903, 29.025541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.133453, 21.671070, 28.911530>,  <28.899586, 21.408014, 28.721510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133453, 21.671070, 28.911530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016853, -0.595278, 0.803343,
		0.811097, -0.461684, -0.359124,
		0.584669, 0.657641, 0.475047,
		29.308853, 21.868362, 29.054043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623674, 21.040018, 28.847992>,  <28.899586, 21.408014, 28.721510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623674, 21.040018, 28.847992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.582548, 21.356331, 29.089352>,  <29.557873, 21.546118, 29.234167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.582548, 21.356331, 29.089352>,  <29.623674, 21.040018, 28.847992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582548, 21.356331, 29.089352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120539, -0.612051, 0.781578,
		0.987370, 0.007626, 0.158249,
		-0.102816, 0.790781, 0.603401,
		29.551702, 21.593565, 29.270372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978382, 20.849827, 29.413906>,  <29.623674, 21.040018, 28.847992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978382, 20.849827, 29.413906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.720266, 21.126816, 29.542957>,  <29.565397, 21.293009, 29.620388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.720266, 21.126816, 29.542957>,  <29.978382, 20.849827, 29.413906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720266, 21.126816, 29.542957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095470, -0.492105, 0.865285,
		0.757951, 0.527556, 0.383660,
		-0.645287, 0.692472, 0.322626,
		29.526680, 21.334557, 29.639746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057159, 20.927336, 30.121050>,  <29.978382, 20.849827, 29.413906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057159, 20.927336, 30.121050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.701876, 21.101372, 30.062016>,  <29.488707, 21.205793, 30.026594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.701876, 21.101372, 30.062016>,  <30.057159, 20.927336, 30.121050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701876, 21.101372, 30.062016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357808, -0.453558, 0.816247,
		0.288203, 0.777805, 0.558533,
		-0.888207, 0.435092, -0.147588,
		29.435413, 21.231899, 30.017738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722769, 21.221294, 30.716282>,  <30.057159, 20.927336, 30.121050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722769, 21.221294, 30.716282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.393148, 21.173603, 30.494751>,  <29.195377, 21.144989, 30.361832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.393148, 21.173603, 30.494751>,  <29.722769, 21.221294, 30.716282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393148, 21.173603, 30.494751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478173, -0.377859, 0.792826,
		-0.303797, 0.918154, 0.254362,
		-0.824050, -0.119229, -0.553829,
		29.145933, 21.137835, 30.328602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152544, 21.213720, 31.262264>,  <29.722769, 21.221294, 30.716282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152544, 21.213720, 31.262264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.006472, 20.965767, 30.984447>,  <29.918829, 20.816996, 30.817757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.006472, 20.965767, 30.984447>,  <30.152544, 21.213720, 31.262264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006472, 20.965767, 30.984447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872249, 0.488539, 0.022591,
		0.325307, 0.614064, -0.719097,
		-0.365179, -0.619883, -0.694542,
		29.896917, 20.779802, 30.776085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398579, 21.311422, 31.996742>,  <30.152544, 21.213720, 31.262264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398579, 21.311422, 31.996742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694239, 21.513100, 32.175381>,  <30.871634, 21.634106, 32.282562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694239, 21.513100, 32.175381>,  <30.398579, 21.311422, 31.996742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694239, 21.513100, 32.175381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004032, 0.659728, -0.751493,
		-0.673530, 0.557266, 0.485604,
		0.739149, 0.504195, 0.446594,
		30.915983, 21.664358, 32.309361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135849, 22.036215, 32.063011>,  <30.398579, 21.311422, 31.996742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135849, 22.036215, 32.063011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534054, 22.073853, 32.067120>,  <30.772976, 22.096436, 32.069584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534054, 22.073853, 32.067120>,  <30.135849, 22.036215, 32.063011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534054, 22.073853, 32.067120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059693, 0.708336, -0.703347,
		-0.073459, 0.699576, 0.710773,
		0.995510, 0.094096, 0.010274,
		30.832706, 22.102081, 32.070202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214787, 22.715698, 32.071121>,  <30.135849, 22.036215, 32.063011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214787, 22.715698, 32.071121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.568312, 22.569817, 31.953911>,  <30.780428, 22.482288, 31.883585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.568312, 22.569817, 31.953911>,  <30.214787, 22.715698, 32.071121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568312, 22.569817, 31.953911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125904, 0.788648, -0.601816,
		0.450576, 0.495002, 0.742937,
		0.883815, -0.364702, -0.293023,
		30.833456, 22.460405, 31.866003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692228, 23.221188, 32.122700>,  <30.214787, 22.715698, 32.071121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692228, 23.221188, 32.122700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870583, 22.984592, 31.853977>,  <30.977594, 22.842636, 31.692743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870583, 22.984592, 31.853977>,  <30.692228, 23.221188, 32.122700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870583, 22.984592, 31.853977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321789, 0.806297, -0.496323,
		0.835248, 0.005121, 0.549849,
		0.445883, -0.591489, -0.671810,
		31.004347, 22.807146, 31.652433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400938, 23.420692, 32.033955>,  <30.692228, 23.221188, 32.122700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400938, 23.420692, 32.033955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.329514, 23.231174, 31.689018>,  <31.286659, 23.117464, 31.482056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.329514, 23.231174, 31.689018>,  <31.400938, 23.420692, 32.033955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329514, 23.231174, 31.689018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466644, 0.730811, -0.498155,
		0.866233, -0.491358, 0.090599,
		-0.178561, -0.473795, -0.862342,
		31.275946, 23.089035, 31.430315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917494, 23.618942, 31.615944>,  <31.400938, 23.420692, 32.033955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917494, 23.618942, 31.615944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655102, 23.489426, 31.343224>,  <31.497667, 23.411716, 31.179592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655102, 23.489426, 31.343224>,  <31.917494, 23.618942, 31.615944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655102, 23.489426, 31.343224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387418, 0.630794, -0.672314,
		0.647771, -0.705162, -0.288337,
		-0.655972, -0.323799, -0.681803,
		31.458309, 23.392288, 31.138683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273205, 23.672115, 30.956133>,  <31.917494, 23.618942, 31.615944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273205, 23.672115, 30.956133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.890425, 23.619659, 30.852566>,  <31.660755, 23.588186, 30.790424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.890425, 23.619659, 30.852566>,  <32.273205, 23.672115, 30.956133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890425, 23.619659, 30.852566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163026, 0.495192, -0.853351,
		0.240125, -0.858829, -0.452497,
		-0.956955, -0.131142, -0.258919,
		31.603338, 23.580317, 30.774891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238731, 23.473963, 30.181320>,  <32.273205, 23.672115, 30.956133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238731, 23.473963, 30.181320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.880686, 23.629082, 30.269306>,  <31.665859, 23.722153, 30.322098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.880686, 23.629082, 30.269306>,  <32.238731, 23.473963, 30.181320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880686, 23.629082, 30.269306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021310, 0.530023, -0.847716,
		-0.445330, -0.754114, -0.482694,
		-0.895113, 0.387800, 0.219965,
		31.612152, 23.745422, 30.335297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788048, 23.291897, 29.571638>,  <32.238731, 23.473963, 30.181320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788048, 23.291897, 29.571638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.628326, 23.606110, 29.760738>,  <31.532494, 23.794638, 29.874199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.628326, 23.606110, 29.760738>,  <31.788048, 23.291897, 29.571638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628326, 23.606110, 29.760738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135248, 0.459530, -0.877804,
		-0.906788, -0.414450, -0.077251,
		-0.399305, 0.785534, 0.472750,
		31.508535, 23.841770, 29.902563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206469, 23.546940, 29.126728>,  <31.788048, 23.291897, 29.571638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206469, 23.546940, 29.126728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.352980, 23.829632, 29.368843>,  <31.440886, 23.999247, 29.514112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.352980, 23.829632, 29.368843>,  <31.206469, 23.546940, 29.126728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352980, 23.829632, 29.368843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000515, 0.650341, -0.759642,
		-0.930506, 0.278550, 0.237841,
		0.366276, 0.706729, 0.605290,
		31.462862, 24.041651, 29.550430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014605, 24.167194, 28.914848>,  <31.206469, 23.546940, 29.126728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014605, 24.167194, 28.914848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294571, 24.341301, 29.141357>,  <31.462551, 24.445765, 29.277264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294571, 24.341301, 29.141357>,  <31.014605, 24.167194, 28.914848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294571, 24.341301, 29.141357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048015, 0.762378, -0.645348,
		-0.712611, 0.478878, 0.512700,
		0.699914, 0.435264, 0.566273,
		31.504545, 24.471880, 29.311239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846676, 24.897774, 28.932590>,  <31.014605, 24.167194, 28.914848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846676, 24.897774, 28.932590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.234102, 24.859150, 29.024288>,  <31.466558, 24.835976, 29.079306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.234102, 24.859150, 29.024288>,  <30.846676, 24.897774, 28.932590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234102, 24.859150, 29.024288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228473, 0.709765, -0.666359,
		-0.098366, 0.697790, 0.709516,
		0.968568, -0.096558, 0.229243,
		31.524673, 24.830183, 29.093061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041542, 25.591587, 28.834976>,  <30.846676, 24.897774, 28.932590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041542, 25.591587, 28.834976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.370638, 25.364357, 28.842884>,  <31.568094, 25.228018, 28.847630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.370638, 25.364357, 28.842884>,  <31.041542, 25.591587, 28.834976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370638, 25.364357, 28.842884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425672, 0.592701, -0.683747,
		0.376703, 0.570960, 0.729452,
		0.822738, -0.568077, 0.019770,
		31.617460, 25.193933, 28.848814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590628, 26.041801, 28.945799>,  <31.041542, 25.591587, 28.834976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590628, 26.041801, 28.945799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.723980, 25.726250, 28.739292>,  <31.803991, 25.536919, 28.615389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.723980, 25.726250, 28.739292>,  <31.590628, 26.041801, 28.945799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723980, 25.726250, 28.739292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484289, 0.613118, -0.624140,
		0.808902, -0.041947, 0.586446,
		0.333380, -0.788877, -0.516267,
		31.823994, 25.489586, 28.584412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232891, 26.241568, 28.715715>,  <31.590628, 26.041801, 28.945799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232891, 26.241568, 28.715715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.177753, 25.919247, 28.485348>,  <32.144672, 25.725855, 28.347126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.177753, 25.919247, 28.485348>,  <32.232891, 26.241568, 28.715715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177753, 25.919247, 28.485348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442449, 0.470133, -0.763685,
		0.886137, -0.360083, 0.291722,
		-0.137841, -0.805801, -0.575920,
		32.136402, 25.677505, 28.312572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845741, 26.010004, 28.568058>,  <32.232891, 26.241568, 28.715715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845741, 26.010004, 28.568058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597134, 25.906292, 28.272358>,  <32.447971, 25.844065, 28.094938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597134, 25.906292, 28.272358>,  <32.845741, 26.010004, 28.568058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597134, 25.906292, 28.272358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431691, 0.674096, -0.599365,
		0.653729, -0.691643, -0.307033,
		-0.621516, -0.259279, -0.739252,
		32.410679, 25.828508, 28.050583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248104, 25.997728, 28.008482>,  <32.845741, 26.010004, 28.568058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248104, 25.997728, 28.008482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884155, 26.016815, 27.843628>,  <32.665787, 26.028267, 27.744715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884155, 26.016815, 27.843628>,  <33.248104, 25.997728, 28.008482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884155, 26.016815, 27.843628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343611, 0.643374, -0.684106,
		0.232515, -0.764064, -0.601784,
		-0.909873, 0.047715, -0.412135,
		32.611195, 26.031130, 27.719988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354664, 25.931986, 27.223085>,  <33.248104, 25.997728, 28.008482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354664, 25.931986, 27.223085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006676, 26.120499, 27.281109>,  <32.797882, 26.233606, 27.315924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006676, 26.120499, 27.281109>,  <33.354664, 25.931986, 27.223085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006676, 26.120499, 27.281109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265644, 0.695772, -0.667333,
		-0.415432, -0.542026, -0.730496,
		-0.869971, 0.471283, 0.145060,
		32.745686, 26.261883, 27.324627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222729, 26.120029, 26.477318>,  <33.354664, 25.931986, 27.223085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222729, 26.120029, 26.477318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966843, 26.309845, 26.719170>,  <32.813313, 26.423735, 26.864281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966843, 26.309845, 26.719170>,  <33.222729, 26.120029, 26.477318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966843, 26.309845, 26.719170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011117, 0.792282, -0.610054,
		-0.768532, -0.383539, -0.512109,
		-0.639714, 0.474539, 0.604630,
		32.774929, 26.452208, 26.900558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652924, 26.307039, 25.980814>,  <33.222729, 26.120029, 26.477318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652924, 26.307039, 25.980814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661819, 26.536095, 26.308617>,  <32.667156, 26.673527, 26.505299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661819, 26.536095, 26.308617>,  <32.652924, 26.307039, 25.980814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661819, 26.536095, 26.308617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017557, 0.819808, -0.572370,
		-0.999599, -0.001660, 0.028283,
		0.022236, 0.572637, 0.819508,
		32.668491, 26.707886, 26.554468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.021711, 35.163452, 16.242142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.339472, 35.024040, 16.043163>,  <17.530128, 34.940392, 15.923777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.339472, 35.024040, 16.043163>,  <17.021711, 35.163452, 16.242142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.339472, 35.024040, 16.043163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360855, -0.387962, 0.848098,
		-0.488580, -0.853235, -0.182427,
		0.794401, -0.348534, -0.497444,
		17.577793, 34.919479, 15.893930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.156149, 34.582626, 16.535919>,  <17.021711, 35.163452, 16.242142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.156149, 34.582626, 16.535919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.511875, 34.592564, 16.353271>,  <17.725311, 34.598526, 16.243683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.511875, 34.592564, 16.353271>,  <17.156149, 34.582626, 16.535919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.511875, 34.592564, 16.353271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424264, -0.417421, 0.803592,
		-0.170635, -0.908374, -0.381760,
		0.889316, 0.024846, -0.456617,
		17.778669, 34.600018, 16.216286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.574680, 33.971214, 16.650370>,  <17.156149, 34.582626, 16.535919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.574680, 33.971214, 16.650370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.853355, 34.244705, 16.563519>,  <18.020559, 34.408798, 16.511408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.853355, 34.244705, 16.563519>,  <17.574680, 33.971214, 16.650370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.853355, 34.244705, 16.563519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509701, -0.258796, 0.820506,
		0.504810, -0.682306, -0.528796,
		0.696686, 0.683728, -0.217129,
		18.062361, 34.449825, 16.498381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.186813, 33.644932, 16.787697>,  <17.574680, 33.971214, 16.650370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.186813, 33.644932, 16.787697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.297884, 34.029148, 16.781158>,  <18.364527, 34.259678, 16.777235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.297884, 34.029148, 16.781158>,  <18.186813, 33.644932, 16.787697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.297884, 34.029148, 16.781158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673255, -0.182434, 0.716551,
		0.685291, -0.209972, -0.697343,
		0.277675, 0.960536, -0.016344,
		18.381186, 34.317310, 16.776255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.852314, 33.551620, 16.854462>,  <18.186813, 33.644932, 16.787697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.852314, 33.551620, 16.854462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.767262, 33.930408, 16.950832>,  <18.716230, 34.157681, 17.008654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.767262, 33.930408, 16.950832>,  <18.852314, 33.551620, 16.854462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.767262, 33.930408, 16.950832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657722, -0.043637, 0.751995,
		0.722627, 0.318358, -0.613562,
		-0.212630, 0.946965, 0.240925,
		18.703472, 34.214497, 17.023109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.443415, 33.865044, 16.861082>,  <18.852314, 33.551620, 16.854462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.443415, 33.865044, 16.861082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.221754, 34.118259, 17.077293>,  <19.088757, 34.270191, 17.207020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.221754, 34.118259, 17.077293>,  <19.443415, 33.865044, 16.861082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.221754, 34.118259, 17.077293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598816, -0.147891, 0.787113,
		0.578216, 0.759858, -0.297123,
		-0.554152, 0.633043, 0.540528,
		19.055508, 34.308174, 17.239452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.909821, 34.308514, 17.238159>,  <19.443415, 33.865044, 16.861082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.909821, 34.308514, 17.238159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.561661, 34.344830, 17.431721>,  <19.352764, 34.366619, 17.547857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.561661, 34.344830, 17.431721>,  <19.909821, 34.308514, 17.238159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.561661, 34.344830, 17.431721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486995, 0.014238, 0.873289,
		0.072398, 0.995768, -0.056608,
		-0.870399, 0.090792, 0.483903,
		19.300541, 34.372066, 17.576891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.942558, 34.896454, 17.649763>,  <19.909821, 34.308514, 17.238159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.942558, 34.896454, 17.649763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.666164, 34.700680, 17.862553>,  <19.500328, 34.583218, 17.990227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.666164, 34.700680, 17.862553>,  <19.942558, 34.896454, 17.649763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.666164, 34.700680, 17.862553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589173, 0.045069, 0.806749,
		-0.418824, 0.870876, 0.257218,
		-0.690986, -0.489432, 0.531972,
		19.458868, 34.553852, 18.022144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.947151, 35.229145, 18.331722>,  <19.942558, 34.896454, 17.649763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.947151, 35.229145, 18.331722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.757183, 34.881626, 18.387775>,  <19.643202, 34.673115, 18.421408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.757183, 34.881626, 18.387775>,  <19.947151, 35.229145, 18.331722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757183, 34.881626, 18.387775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440941, -0.097115, 0.892267,
		-0.761593, 0.485545, 0.429212,
		-0.474919, -0.868801, 0.140134,
		19.614708, 34.620987, 18.429815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.699823, 35.343769, 18.999729>,  <19.947151, 35.229145, 18.331722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.699823, 35.343769, 18.999729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.686470, 34.953537, 18.912895>,  <19.678457, 34.719398, 18.860794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.686470, 34.953537, 18.912895>,  <19.699823, 35.343769, 18.999729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.686470, 34.953537, 18.912895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420488, -0.210759, 0.882480,
		-0.906684, -0.061822, 0.417256,
		-0.033384, -0.975581, -0.217087,
		19.676455, 34.660862, 18.847769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.542534, 35.137569, 19.616621>,  <19.699823, 35.343769, 18.999729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.542534, 35.137569, 19.616621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.702299, 34.832870, 19.412575>,  <19.798159, 34.650051, 19.290148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.702299, 34.832870, 19.412575>,  <19.542534, 35.137569, 19.616621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.702299, 34.832870, 19.412575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562789, -0.235514, 0.792340,
		-0.723699, -0.603556, 0.334634,
		0.399411, -0.761743, -0.510115,
		19.822123, 34.604347, 19.259541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.519665, 34.570171, 20.072634>,  <19.542534, 35.137569, 19.616621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.519665, 34.570171, 20.072634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.796572, 34.469151, 19.802231>,  <19.962715, 34.408539, 19.639988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.796572, 34.469151, 19.802231>,  <19.519665, 34.570171, 20.072634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.796572, 34.469151, 19.802231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585440, -0.351171, 0.730711,
		-0.421934, -0.901609, -0.095252,
		0.692265, -0.252548, -0.676009,
		20.004251, 34.393387, 19.599428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.607697, 33.792339, 20.223059>,  <19.519665, 34.570171, 20.072634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.607697, 33.792339, 20.223059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.916910, 33.977135, 20.049168>,  <20.102438, 34.088013, 19.944834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.916910, 33.977135, 20.049168>,  <19.607697, 33.792339, 20.223059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.916910, 33.977135, 20.049168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574760, -0.220070, 0.788175,
		0.268454, -0.859150, -0.435652,
		0.773035, 0.461984, -0.434726,
		20.148821, 34.115730, 19.918749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.087811, 33.461113, 20.526115>,  <19.607697, 33.792339, 20.223059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.087811, 33.461113, 20.526115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.279194, 33.762253, 20.345318>,  <20.394024, 33.942936, 20.236839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.279194, 33.762253, 20.345318>,  <20.087811, 33.461113, 20.526115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.279194, 33.762253, 20.345318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667806, 0.022273, 0.744002,
		0.570187, -0.657818, -0.492099,
		0.478458, 0.752847, -0.451994,
		20.422731, 33.988106, 20.209719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.762850, 33.235962, 20.278276>,  <20.087811, 33.461113, 20.526115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.762850, 33.235962, 20.278276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.785679, 33.634136, 20.308884>,  <20.799377, 33.873039, 20.327248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.785679, 33.634136, 20.308884>,  <20.762850, 33.235962, 20.278276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.785679, 33.634136, 20.308884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555842, -0.095349, 0.825801,
		0.829326, -0.004600, -0.558746,
		0.057074, 0.995433, 0.076519,
		20.802801, 33.932766, 20.331839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.457201, 33.330681, 20.467911>,  <20.762850, 33.235962, 20.278276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.457201, 33.330681, 20.467911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.311796, 33.690823, 20.563595>,  <21.224552, 33.906906, 20.621004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.311796, 33.690823, 20.563595>,  <21.457201, 33.330681, 20.467911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.311796, 33.690823, 20.563595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568209, 0.010804, 0.822813,
		0.738239, 0.435024, -0.515517,
		-0.363513, 0.900354, 0.239209,
		21.202742, 33.960930, 20.635357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.036554, 33.686638, 20.704054>,  <21.457201, 33.330681, 20.467911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.036554, 33.686638, 20.704054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.746775, 33.925007, 20.842648>,  <21.572906, 34.068027, 20.925804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.746775, 33.925007, 20.842648>,  <22.036554, 33.686638, 20.704054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.746775, 33.925007, 20.842648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567687, 0.230640, 0.790276,
		0.391031, 0.769208, -0.505384,
		-0.724449, 0.595922, 0.346482,
		21.529440, 34.103783, 20.946592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.273354, 34.448959, 20.813303>,  <22.036554, 33.686638, 20.704054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.273354, 34.448959, 20.813303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.964508, 34.397110, 21.062153>,  <21.779200, 34.366001, 21.211462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.964508, 34.397110, 21.062153>,  <22.273354, 34.448959, 20.813303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.964508, 34.397110, 21.062153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605688, 0.146141, 0.782167,
		-0.192305, 0.980735, -0.034326,
		-0.772115, -0.129623, 0.622123,
		21.732874, 34.358223, 21.248789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.233522, 35.047482, 21.208252>,  <22.273354, 34.448959, 20.813303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.233522, 35.047482, 21.208252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.021101, 34.797405, 21.437031>,  <21.893648, 34.647362, 21.574297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.021101, 34.797405, 21.437031>,  <22.233522, 35.047482, 21.208252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.021101, 34.797405, 21.437031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603865, 0.194273, 0.773050,
		-0.594415, 0.755909, 0.274360,
		-0.531054, -0.625188, 0.571945,
		21.861784, 34.609848, 21.608614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.197672, 35.322186, 21.816229>,  <22.233522, 35.047482, 21.208252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.197672, 35.322186, 21.816229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.078432, 34.962498, 21.944317>,  <22.006887, 34.746685, 22.021170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.078432, 34.962498, 21.944317>,  <22.197672, 35.322186, 21.816229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.078432, 34.962498, 21.944317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474681, 0.151398, 0.867039,
		-0.828140, 0.410465, 0.381711,
		-0.298099, -0.899220, 0.320218,
		21.989002, 34.692730, 22.040382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.831537, 35.426361, 22.419266>,  <22.197672, 35.322186, 21.816229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.831537, 35.426361, 22.419266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.938080, 35.041328, 22.439194>,  <22.002007, 34.810307, 22.451151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.938080, 35.041328, 22.439194>,  <21.831537, 35.426361, 22.419266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.938080, 35.041328, 22.439194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428372, 0.164522, 0.888499,
		-0.863453, -0.215317, 0.456167,
		0.266358, -0.962586, 0.049821,
		22.017988, 34.752552, 22.454140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.709154, 35.968346, 22.991402>,  <21.831537, 35.426361, 22.419266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.709154, 35.968346, 22.991402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.480463, 36.295563, 22.966339>,  <21.343248, 36.491894, 22.951302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.480463, 36.295563, 22.966339>,  <21.709154, 35.968346, 22.991402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.480463, 36.295563, 22.966339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368868, -0.324511, -0.870993,
		-0.732845, -0.474860, 0.487284,
		-0.571729, 0.818046, -0.062655,
		21.308945, 36.540977, 22.947542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.065531, 35.760517, 22.804579>,  <21.709154, 35.968346, 22.991402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.065531, 35.760517, 22.804579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.036396, 36.144032, 22.694729>,  <21.018915, 36.374142, 22.628819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.036396, 36.144032, 22.694729>,  <21.065531, 35.760517, 22.804579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.036396, 36.144032, 22.694729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397938, -0.280427, -0.873502,
		-0.914516, 0.045659, 0.401965,
		-0.072839, 0.958789, -0.274625,
		21.014544, 36.431667, 22.612341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361406, 35.926262, 22.643967>,  <21.065531, 35.760517, 22.804579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361406, 35.926262, 22.643967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.526730, 36.227341, 22.438980>,  <20.625923, 36.407990, 22.315989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.526730, 36.227341, 22.438980>,  <20.361406, 35.926262, 22.643967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.526730, 36.227341, 22.438980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620448, -0.179143, -0.763513,
		-0.666499, 0.633526, 0.392968,
		0.413308, 0.752697, -0.512468,
		20.650723, 36.453152, 22.285240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.807730, 36.276627, 22.300558>,  <20.361406, 35.926262, 22.643967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.807730, 36.276627, 22.300558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.143505, 36.394127, 22.117668>,  <20.344971, 36.464626, 22.007935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.143505, 36.394127, 22.117668>,  <19.807730, 36.276627, 22.300558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.143505, 36.394127, 22.117668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454706, -0.081136, -0.886938,
		-0.297632, 0.952434, 0.065460,
		0.839439, 0.293746, -0.457226,
		20.395336, 36.482250, 21.980501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.642088, 36.705700, 21.804523>,  <19.807730, 36.276627, 22.300558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.642088, 36.705700, 21.804523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.016783, 36.644600, 21.678547>,  <20.241600, 36.607941, 21.602961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.016783, 36.644600, 21.678547>,  <19.642088, 36.705700, 21.804523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.016783, 36.644600, 21.678547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314161, 0.029853, -0.948900,
		0.154344, 0.987814, -0.020023,
		0.936739, -0.152747, -0.314941,
		20.297804, 36.598774, 21.584064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.849272, 37.279404, 21.498093>,  <19.642088, 36.705700, 21.804523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.849272, 37.279404, 21.498093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.065882, 36.982143, 21.340881>,  <20.195848, 36.803787, 21.246555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.065882, 36.982143, 21.340881>,  <19.849272, 37.279404, 21.498093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.065882, 36.982143, 21.340881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196258, 0.342838, -0.918665,
		0.817455, 0.574616, 0.039806,
		0.541526, -0.743155, -0.393027,
		20.228340, 36.759197, 21.222973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.296202, 37.639458, 20.967045>,  <19.849272, 37.279404, 21.498093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.296202, 37.639458, 20.967045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.290642, 37.250648, 20.873260>,  <20.287306, 37.017361, 20.816990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.290642, 37.250648, 20.873260>,  <20.296202, 37.639458, 20.967045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.290642, 37.250648, 20.873260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077275, 0.232737, -0.969465,
		0.996913, -0.031591, 0.071879,
		-0.013897, -0.972027, -0.234459,
		20.286472, 36.959042, 20.802923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.713863, 37.561489, 20.424088>,  <20.296202, 37.639458, 20.967045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.713863, 37.561489, 20.424088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.513437, 37.215603, 20.410244>,  <20.393181, 37.008072, 20.401937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.513437, 37.215603, 20.410244>,  <20.713863, 37.561489, 20.424088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.513437, 37.215603, 20.410244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052807, 0.070466, -0.996115,
		0.863796, -0.497293, -0.080971,
		-0.501067, -0.864716, -0.034608,
		20.363117, 36.956188, 20.399862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.059645, 37.212692, 19.797991>,  <20.713863, 37.561489, 20.424088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.059645, 37.212692, 19.797991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.699507, 37.069645, 19.897175>,  <20.483423, 36.983818, 19.956686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.699507, 37.069645, 19.897175>,  <21.059645, 37.212692, 19.797991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.699507, 37.069645, 19.897175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245145, -0.053990, -0.967982,
		0.359555, -0.932306, -0.039058,
		-0.900347, -0.357618, 0.247962,
		20.429403, 36.962360, 19.971563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.014761, 36.668953, 19.329582>,  <21.059645, 37.212692, 19.797991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.014761, 36.668953, 19.329582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.643227, 36.731480, 19.463943>,  <20.420307, 36.768997, 19.544559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.643227, 36.731480, 19.463943>,  <21.014761, 36.668953, 19.329582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.643227, 36.731480, 19.463943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354194, -0.108684, -0.928835,
		-0.108684, -0.981709, 0.156316,
		0.928835, -0.156316, -0.335903,
		20.364576, 36.778374, 19.564714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.684927, 36.229664, 18.830484>,  <21.014761, 36.668953, 19.329582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.684927, 36.229664, 18.830484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.412481, 36.455067, 19.017483>,  <20.249014, 36.590309, 19.129681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.412481, 36.455067, 19.017483>,  <20.684927, 36.229664, 18.830484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.412481, 36.455067, 19.017483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526481, 0.066790, -0.847560,
		-0.508826, -0.823410, 0.251182,
		-0.681112, 0.563503, 0.467494,
		20.208147, 36.624119, 19.157730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.081631, 35.976482, 18.542107>,  <20.684927, 36.229664, 18.830484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.081631, 35.976482, 18.542107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.973164, 36.335129, 18.682137>,  <19.908083, 36.550316, 18.766153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.973164, 36.335129, 18.682137>,  <20.081631, 35.976482, 18.542107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.973164, 36.335129, 18.682137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605987, 0.123545, -0.785822,
		-0.747829, -0.425228, 0.509836,
		-0.271165, 0.896615, 0.350073,
		19.891813, 36.604115, 18.787159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399315, 35.965580, 18.461031>,  <20.081631, 35.976482, 18.542107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399315, 35.965580, 18.461031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.506943, 36.349789, 18.489330>,  <19.571520, 36.580315, 18.506310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.506943, 36.349789, 18.489330>,  <19.399315, 35.965580, 18.461031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.506943, 36.349789, 18.489330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464170, 0.193691, -0.864309,
		-0.843888, 0.199722, 0.497961,
		0.269072, 0.960518, 0.070749,
		19.587664, 36.637943, 18.510555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.839165, 36.372253, 18.466381>,  <19.399315, 35.965580, 18.461031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.839165, 36.372253, 18.466381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.126724, 36.625595, 18.351803>,  <19.299259, 36.777599, 18.283056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.126724, 36.625595, 18.351803>,  <18.839165, 36.372253, 18.466381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.126724, 36.625595, 18.351803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547912, 0.262722, -0.794210,
		-0.427761, 0.727901, 0.535892,
		0.718897, 0.633355, -0.286444,
		19.342394, 36.815601, 18.265869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.453936, 37.073864, 18.354429>,  <18.839165, 36.372253, 18.466381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.453936, 37.073864, 18.354429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.806835, 37.033733, 18.170441>,  <19.018574, 37.009655, 18.060047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.806835, 37.033733, 18.170441>,  <18.453936, 37.073864, 18.354429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.806835, 37.033733, 18.170441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433829, 0.206200, -0.877083,
		0.182841, 0.973353, 0.138395,
		0.882248, -0.100327, -0.459971,
		19.071510, 37.003635, 18.032450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567810, 37.720581, 18.045534>,  <18.453936, 37.073864, 18.354429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.567810, 37.720581, 18.045534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.787043, 37.438202, 17.866093>,  <18.918581, 37.268776, 17.758429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.787043, 37.438202, 17.866093>,  <18.567810, 37.720581, 18.045534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.787043, 37.438202, 17.866093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352980, 0.291021, -0.889220,
		0.758296, 0.645712, -0.089683,
		0.548080, -0.705948, -0.448604,
		18.951468, 37.226418, 17.731512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059870, 37.996197, 17.484398>,  <18.567810, 37.720581, 18.045534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.059870, 37.996197, 17.484398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.944147, 37.630421, 17.371189>,  <18.874714, 37.410954, 17.303265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.944147, 37.630421, 17.371189>,  <19.059870, 37.996197, 17.484398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.944147, 37.630421, 17.371189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314177, 0.369995, -0.874297,
		0.904209, -0.164022, -0.394339,
		-0.289308, -0.914440, -0.283021,
		18.857355, 37.356091, 17.286283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.895247, 38.103977, 16.794918>,  <19.059870, 37.996197, 17.484398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.895247, 38.103977, 16.794918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.798889, 37.719433, 16.848206>,  <18.741076, 37.488705, 16.880178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.798889, 37.719433, 16.848206>,  <18.895247, 38.103977, 16.794918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.798889, 37.719433, 16.848206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401550, -0.026240, -0.915461,
		0.883588, -0.274022, -0.379715,
		-0.240892, -0.961365, 0.133219,
		18.726622, 37.431023, 16.888172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.049307, 37.835625, 16.144506>,  <18.895247, 38.103977, 16.794918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.049307, 37.835625, 16.144506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.804295, 37.579079, 16.329315>,  <18.657288, 37.425152, 16.440201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.804295, 37.579079, 16.329315>,  <19.049307, 37.835625, 16.144506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.804295, 37.579079, 16.329315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500379, -0.137866, -0.854759,
		0.611907, -0.754751, -0.236477,
		-0.612529, -0.641361, 0.462023,
		18.620537, 37.386669, 16.467922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.951349, 37.382195, 15.665200>,  <19.049307, 37.835625, 16.144506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.951349, 37.382195, 15.665200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.659601, 37.283821, 15.920554>,  <18.484552, 37.224796, 16.073767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.659601, 37.283821, 15.920554>,  <18.951349, 37.382195, 15.665200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.659601, 37.283821, 15.920554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596016, -0.229644, -0.769434,
		0.335832, -0.941690, 0.020914,
		-0.729371, -0.245935, 0.638384,
		18.440790, 37.210041, 16.112070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.887388, 36.706890, 15.590613>,  <18.951349, 37.382195, 15.665200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.887388, 36.706890, 15.590613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.536224, 36.852657, 15.714850>,  <18.325525, 36.940117, 15.789392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.536224, 36.852657, 15.714850>,  <18.887388, 36.706890, 15.590613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.536224, 36.852657, 15.714850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446283, -0.387713, -0.806542,
		-0.173501, -0.846685, 0.503013,
		-0.877911, 0.364422, 0.310592,
		18.272850, 36.961983, 15.808028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.411303, 28.303186, 21.964020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555593, 28.540154, 22.252163>,  <28.642168, 28.682335, 22.425049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555593, 28.540154, 22.252163>,  <28.411303, 28.303186, 21.964020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555593, 28.540154, 22.252163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146263, 0.798735, -0.583635,
		-0.921131, 0.105172, 0.374776,
		0.360728, 0.592420, 0.720357,
		28.663813, 28.717880, 22.468269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940823, 28.785252, 21.951242>,  <28.411303, 28.303186, 21.964020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940823, 28.785252, 21.951242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263361, 28.926250, 22.141212>,  <28.456884, 29.010849, 22.255196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263361, 28.926250, 22.141212>,  <27.940823, 28.785252, 21.951242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263361, 28.926250, 22.141212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055871, 0.844798, -0.532161,
		-0.588802, 0.402570, 0.700892,
		0.806344, 0.352497, 0.474926,
		28.505264, 29.032000, 22.283689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704037, 29.442038, 22.057182>,  <27.940823, 28.785252, 21.951242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704037, 29.442038, 22.057182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097221, 29.463303, 22.127567>,  <28.333132, 29.476061, 22.169798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097221, 29.463303, 22.127567>,  <27.704037, 29.442038, 22.057182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097221, 29.463303, 22.127567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011460, 0.937678, -0.347317,
		-0.183460, 0.343416, 0.921091,
		0.982960, 0.053163, 0.175962,
		28.392109, 29.479252, 22.180355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904322, 30.175339, 22.493578>,  <27.704037, 29.442038, 22.057182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904322, 30.175339, 22.493578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220888, 30.043739, 22.287502>,  <28.410828, 29.964779, 22.163857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220888, 30.043739, 22.287502>,  <27.904322, 30.175339, 22.493578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220888, 30.043739, 22.287502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229933, 0.941132, -0.247792,
		0.566383, 0.077648, 0.820476,
		0.791417, -0.328999, -0.515187,
		28.458313, 29.945040, 22.132946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409796, 30.647181, 22.625332>,  <27.904322, 30.175339, 22.493578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409796, 30.647181, 22.625332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555088, 30.467430, 22.298866>,  <28.642263, 30.359579, 22.102987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555088, 30.467430, 22.298866>,  <28.409796, 30.647181, 22.625332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555088, 30.467430, 22.298866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271786, 0.889001, -0.368523,
		0.891176, -0.087962, 0.445048,
		0.363233, -0.449377, -0.816163,
		28.664059, 30.332617, 22.054018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062319, 30.834980, 22.476549>,  <28.409796, 30.647181, 22.625332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062319, 30.834980, 22.476549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956184, 30.709404, 22.111904>,  <28.892504, 30.634058, 21.893118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956184, 30.709404, 22.111904>,  <29.062319, 30.834980, 22.476549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956184, 30.709404, 22.111904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330324, 0.858682, -0.391857,
		0.905805, -0.405102, -0.124139,
		-0.265338, -0.313940, -0.911613,
		28.876583, 30.615223, 21.838421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651436, 31.011206, 22.093925>,  <29.062319, 30.834980, 22.476549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651436, 31.011206, 22.093925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369514, 30.966072, 21.813778>,  <29.200361, 30.938992, 21.645689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369514, 30.966072, 21.813778>,  <29.651436, 31.011206, 22.093925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369514, 30.966072, 21.813778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254253, 0.881503, -0.397879,
		0.662274, -0.458498, -0.592599,
		-0.704805, -0.112835, -0.700370,
		29.158073, 30.932222, 21.603666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965969, 31.328760, 21.562586>,  <29.651436, 31.011206, 22.093925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965969, 31.328760, 21.562586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571697, 31.319340, 21.495792>,  <29.335135, 31.313688, 21.455717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571697, 31.319340, 21.495792>,  <29.965969, 31.328760, 21.562586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571697, 31.319340, 21.495792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049301, 0.906699, -0.418888,
		0.161267, -0.421121, -0.892552,
		-0.985679, -0.023549, -0.166982,
		29.275993, 31.312275, 21.445698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785852, 31.488714, 20.767721>,  <29.965969, 31.328760, 21.562586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785852, 31.488714, 20.767721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479168, 31.574596, 21.009731>,  <29.295158, 31.626125, 21.154938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479168, 31.574596, 21.009731>,  <29.785852, 31.488714, 20.767721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479168, 31.574596, 21.009731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046874, 0.958626, -0.280784,
		-0.640280, -0.186920, -0.745052,
		-0.766710, 0.214704, 0.605027,
		29.249155, 31.639008, 21.191240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475029, 31.805996, 20.344069>,  <29.785852, 31.488714, 20.767721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475029, 31.805996, 20.344069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319895, 31.899342, 20.700748>,  <29.226814, 31.955349, 20.914757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319895, 31.899342, 20.700748>,  <29.475029, 31.805996, 20.344069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319895, 31.899342, 20.700748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020090, 0.965050, -0.261296,
		-0.921510, -0.119254, -0.369590,
		-0.387834, 0.233362, 0.891699,
		29.203545, 31.969351, 20.968258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854029, 32.083176, 20.180656>,  <29.475029, 31.805996, 20.344069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854029, 32.083176, 20.180656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972193, 32.210541, 20.540955>,  <29.043091, 32.286961, 20.757133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972193, 32.210541, 20.540955>,  <28.854029, 32.083176, 20.180656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972193, 32.210541, 20.540955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060012, 0.934778, -0.350127,
		-0.953484, 0.157486, 0.257034,
		0.295410, 0.318415, 0.900747,
		29.060816, 32.306065, 20.811178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253527, 32.549713, 20.540728>,  <28.854029, 32.083176, 20.180656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253527, 32.549713, 20.540728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646814, 32.589615, 20.601818>,  <28.882788, 32.613556, 20.638472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646814, 32.589615, 20.601818>,  <28.253527, 32.549713, 20.540728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646814, 32.589615, 20.601818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038850, 0.932535, -0.358983,
		-0.178231, 0.347026, 0.920764,
		0.983221, 0.099754, 0.152724,
		28.941780, 32.619541, 20.647635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339684, 33.182396, 20.879658>,  <28.253527, 32.549713, 20.540728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339684, 33.182396, 20.879658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287415, 33.240200, 20.487324>,  <28.256054, 33.274883, 20.251923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287415, 33.240200, 20.487324>,  <28.339684, 33.182396, 20.879658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287415, 33.240200, 20.487324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950740, -0.298771, 0.082643,
		-0.281103, 0.943320, 0.176435,
		-0.130672, 0.144512, -0.980837,
		28.248213, 33.283554, 20.193073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651442, 33.397072, 20.825331>,  <28.339684, 33.182396, 20.879658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651442, 33.397072, 20.825331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792173, 33.258114, 20.477646>,  <27.876614, 33.174740, 20.269035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792173, 33.258114, 20.477646>,  <27.651442, 33.397072, 20.825331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792173, 33.258114, 20.477646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906881, -0.356556, -0.224575,
		-0.231907, 0.867286, -0.440494,
		0.351831, -0.347395, -0.869213,
		27.897722, 33.153896, 20.216883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364202, 34.122597, 21.256193>,  <27.651442, 33.397072, 20.825331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364202, 34.122597, 21.256193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143873, 34.371395, 21.478802>,  <27.011677, 34.520676, 21.612366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143873, 34.371395, 21.478802>,  <27.364202, 34.122597, 21.256193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143873, 34.371395, 21.478802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443158, -0.347073, 0.826530,
		0.707254, 0.701896, -0.084468,
		-0.550821, 0.621999, 0.556519,
		26.978626, 34.557995, 21.645758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782318, 34.447781, 21.821383>,  <27.364202, 34.122597, 21.256193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782318, 34.447781, 21.821383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401907, 34.435425, 21.944408>,  <27.173660, 34.428013, 22.018225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401907, 34.435425, 21.944408>,  <27.782318, 34.447781, 21.821383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401907, 34.435425, 21.944408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285903, -0.466166, 0.837227,
		0.117516, 0.884158, 0.452167,
		-0.951026, -0.030889, 0.307565,
		27.116600, 34.426159, 22.036678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856398, 34.671715, 22.461279>,  <27.782318, 34.447781, 21.821383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856398, 34.671715, 22.461279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489052, 34.514847, 22.440094>,  <27.268644, 34.420727, 22.427383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489052, 34.514847, 22.440094>,  <27.856398, 34.671715, 22.461279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489052, 34.514847, 22.440094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090614, -0.338671, 0.936532,
		-0.385217, 0.855280, 0.346560,
		-0.918367, -0.392171, -0.052962,
		27.213541, 34.397194, 22.424206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625008, 34.798306, 23.134985>,  <27.856398, 34.671715, 22.461279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625008, 34.798306, 23.134985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422676, 34.493900, 22.972504>,  <27.301277, 34.311256, 22.875015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422676, 34.493900, 22.972504>,  <27.625008, 34.798306, 23.134985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422676, 34.493900, 22.972504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187529, -0.556635, 0.809315,
		-0.842003, 0.333200, 0.424274,
		-0.505829, -0.761009, -0.406204,
		27.270927, 34.265598, 22.850643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124586, 34.693195, 23.574186>,  <27.625008, 34.798306, 23.134985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124586, 34.693195, 23.574186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189089, 34.350769, 23.377758>,  <27.227791, 34.145313, 23.259901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189089, 34.350769, 23.377758>,  <27.124586, 34.693195, 23.574186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189089, 34.350769, 23.377758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362022, -0.411587, 0.836383,
		-0.918116, -0.312651, 0.243542,
		0.161257, -0.856064, -0.491071,
		27.237467, 34.093948, 23.230436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946129, 34.216770, 24.017797>,  <27.124586, 34.693195, 23.574186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946129, 34.216770, 24.017797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143734, 33.997646, 23.747730>,  <27.262297, 33.866173, 23.585690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143734, 33.997646, 23.747730>,  <26.946129, 34.216770, 24.017797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143734, 33.997646, 23.747730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274873, -0.638310, 0.719031,
		-0.824861, -0.540796, -0.164755,
		0.494013, -0.547814, -0.675167,
		27.291939, 33.833302, 23.545179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743166, 33.629818, 24.170687>,  <26.946129, 34.216770, 24.017797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743166, 33.629818, 24.170687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091898, 33.588242, 23.979225>,  <27.301136, 33.563297, 23.864347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091898, 33.588242, 23.979225>,  <26.743166, 33.629818, 24.170687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091898, 33.588242, 23.979225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264879, -0.721962, 0.639227,
		-0.412010, -0.684082, -0.601896,
		0.871830, -0.103938, -0.478655,
		27.353447, 33.557060, 23.835629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968523, 32.931011, 24.240540>,  <26.743166, 33.629818, 24.170687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968523, 32.931011, 24.240540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316320, 33.094234, 24.129211>,  <27.525000, 33.192169, 24.062414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316320, 33.094234, 24.129211>,  <26.968523, 32.931011, 24.240540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316320, 33.094234, 24.129211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492364, -0.761006, 0.422430,
		-0.039427, -0.504336, -0.862607,
		0.869496, 0.408062, -0.278322,
		27.577169, 33.216652, 24.045715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392263, 32.374981, 23.997982>,  <26.968523, 32.931011, 24.240540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392263, 32.374981, 23.997982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649824, 32.670712, 24.076763>,  <27.804361, 32.848148, 24.124031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649824, 32.670712, 24.076763>,  <27.392263, 32.374981, 23.997982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649824, 32.670712, 24.076763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504590, -0.603844, 0.617058,
		0.575134, -0.297946, -0.761872,
		0.643902, 0.739324, 0.196951,
		27.842995, 32.892509, 24.135849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009417, 32.009617, 23.881172>,  <27.392263, 32.374981, 23.997982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009417, 32.009617, 23.881172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097466, 32.340988, 24.087181>,  <28.150295, 32.539810, 24.210787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097466, 32.340988, 24.087181>,  <28.009417, 32.009617, 23.881172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097466, 32.340988, 24.087181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567443, -0.538196, 0.623180,
		0.793445, 0.155068, -0.588557,
		0.220124, 0.828431, 0.515021,
		28.163504, 32.589520, 24.241688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673162, 32.046791, 23.830832>,  <28.009417, 32.009617, 23.881172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673162, 32.046791, 23.830832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577541, 32.263371, 24.153244>,  <28.520168, 32.393318, 24.346691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577541, 32.263371, 24.153244>,  <28.673162, 32.046791, 23.830832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577541, 32.263371, 24.153244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650864, -0.526659, 0.546815,
		0.720576, 0.655334, -0.226512,
		-0.239051, 0.541450, 0.806031,
		28.505825, 32.425804, 24.395054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288082, 32.325184, 24.203102>,  <28.673162, 32.046791, 23.830832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288082, 32.325184, 24.203102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995279, 32.279572, 24.471775>,  <28.819597, 32.252205, 24.632978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995279, 32.279572, 24.471775>,  <29.288082, 32.325184, 24.203102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995279, 32.279572, 24.471775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638295, -0.459495, 0.617612,
		0.238209, 0.880830, 0.409140,
		-0.732009, -0.114032, 0.671685,
		28.775677, 32.245361, 24.673281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653795, 32.302814, 24.756058>,  <29.288082, 32.325184, 24.203102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653795, 32.302814, 24.756058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301191, 32.146679, 24.862320>,  <29.089628, 32.052998, 24.926077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301191, 32.146679, 24.862320>,  <29.653795, 32.302814, 24.756058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301191, 32.146679, 24.862320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468457, -0.652664, 0.595464,
		-0.059052, 0.649355, 0.758189,
		-0.881511, -0.390342, 0.265654,
		29.036737, 32.029575, 24.942017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678171, 32.183014, 25.429520>,  <29.653795, 32.302814, 24.756058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678171, 32.183014, 25.429520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382351, 31.948551, 25.297165>,  <29.204859, 31.807875, 25.217752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382351, 31.948551, 25.297165>,  <29.678171, 32.183014, 25.429520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382351, 31.948551, 25.297165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308855, -0.732292, 0.606925,
		-0.598057, 0.346656, 0.722604,
		-0.739551, -0.586155, -0.330886,
		29.160486, 31.772705, 25.197899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432674, 32.640881, 26.113966>,  <29.678171, 32.183014, 25.429520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432674, 32.640881, 26.113966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686693, 32.849339, 26.342045>,  <29.839104, 32.974411, 26.478893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686693, 32.849339, 26.342045>,  <29.432674, 32.640881, 26.113966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686693, 32.849339, 26.342045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247289, 0.562151, -0.789199,
		-0.731823, 0.642182, 0.228119,
		0.635046, 0.521142, 0.570199,
		29.877207, 33.005680, 26.513105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287920, 33.290787, 26.029640>,  <29.432674, 32.640881, 26.113966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287920, 33.290787, 26.029640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660620, 33.304520, 26.174232>,  <29.884239, 33.312759, 26.260988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660620, 33.304520, 26.174232>,  <29.287920, 33.290787, 26.029640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660620, 33.304520, 26.174232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276645, 0.577679, -0.767955,
		-0.235187, 0.815542, 0.528752,
		0.931748, 0.034337, 0.361479,
		29.940144, 33.314819, 26.282677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522209, 34.032059, 25.931824>,  <29.287920, 33.290787, 26.029640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522209, 34.032059, 25.931824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863560, 33.838596, 26.009621>,  <30.068369, 33.722519, 26.056299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863560, 33.838596, 26.009621>,  <29.522209, 34.032059, 25.931824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863560, 33.838596, 26.009621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449647, 0.494157, -0.744061,
		0.263762, 0.722415, 0.639176,
		0.853374, -0.483658, 0.194492,
		30.119572, 33.693501, 26.067968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109818, 34.459820, 26.101589>,  <29.522209, 34.032059, 25.931824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109818, 34.459820, 26.101589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305304, 34.141628, 25.958275>,  <30.422596, 33.950714, 25.872286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305304, 34.141628, 25.958275>,  <30.109818, 34.459820, 26.101589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305304, 34.141628, 25.958275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398183, 0.568780, -0.719681,
		0.776277, 0.209056, 0.594718,
		0.488717, -0.795478, -0.358288,
		30.451920, 33.902985, 25.850788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828217, 34.749294, 26.024275>,  <30.109818, 34.459820, 26.101589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828217, 34.749294, 26.024275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770710, 34.414280, 25.813423>,  <30.736206, 34.213272, 25.686913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770710, 34.414280, 25.813423>,  <30.828217, 34.749294, 26.024275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770710, 34.414280, 25.813423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526542, 0.386269, -0.757330,
		0.837905, -0.386435, 0.385466,
		-0.143765, -0.837535, -0.527131,
		30.727581, 34.163021, 25.655283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499697, 34.572586, 25.724236>,  <30.828217, 34.749294, 26.024275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499697, 34.572586, 25.724236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238201, 34.398468, 25.476639>,  <31.081305, 34.293999, 25.328081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238201, 34.398468, 25.476639>,  <31.499697, 34.572586, 25.724236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238201, 34.398468, 25.476639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565650, 0.262259, -0.781832,
		0.502660, -0.861244, 0.074774,
		-0.653738, -0.435292, -0.618990,
		31.042080, 34.267879, 25.290941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847666, 34.400509, 25.135298>,  <31.499697, 34.572586, 25.724236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847666, 34.400509, 25.135298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478214, 34.347683, 24.991371>,  <31.256544, 34.315987, 24.905016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478214, 34.347683, 24.991371>,  <31.847666, 34.400509, 25.135298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478214, 34.347683, 24.991371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329391, 0.206521, -0.921331,
		0.195968, -0.969491, -0.147255,
		-0.923634, -0.132047, -0.359813,
		31.201126, 34.308064, 24.883427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921078, 33.934628, 24.584255>,  <31.847666, 34.400509, 25.135298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921078, 33.934628, 24.584255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601120, 34.165833, 24.519669>,  <31.409145, 34.304554, 24.480917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601120, 34.165833, 24.519669>,  <31.921078, 33.934628, 24.584255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601120, 34.165833, 24.519669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411865, 0.333023, -0.848211,
		-0.436506, -0.744981, -0.504447,
		-0.799893, 0.578013, -0.161465,
		31.361153, 34.339237, 24.471230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578783, 33.866100, 23.860411>,  <31.921078, 33.934628, 24.584255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578783, 33.866100, 23.860411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479670, 34.230492, 23.992302>,  <31.420202, 34.449127, 24.071438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479670, 34.230492, 23.992302>,  <31.578783, 33.866100, 23.860411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479670, 34.230492, 23.992302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304019, 0.396266, -0.866340,
		-0.919878, -0.114421, -0.375143,
		-0.247783, 0.910978, 0.329730,
		31.405334, 34.503784, 24.091221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366224, 34.179996, 23.289436>,  <31.578783, 33.866100, 23.860411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366224, 34.179996, 23.289436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390165, 34.511570, 23.511890>,  <31.404530, 34.710514, 23.645363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390165, 34.511570, 23.511890>,  <31.366224, 34.179996, 23.289436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390165, 34.511570, 23.511890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418732, 0.484896, -0.767814,
		-0.906135, 0.278827, -0.318079,
		0.059852, 0.828934, 0.556135,
		31.408121, 34.760250, 23.678732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162109, 34.842793, 22.843649>,  <31.366224, 34.179996, 23.289436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162109, 34.842793, 22.843649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396002, 34.941006, 23.152920>,  <31.536337, 34.999931, 23.338482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396002, 34.941006, 23.152920>,  <31.162109, 34.842793, 22.843649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396002, 34.941006, 23.152920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563857, 0.562215, -0.604963,
		-0.583228, 0.789703, 0.190302,
		0.584732, 0.245528, 0.773178,
		31.571421, 35.014664, 23.384872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157976, 35.554180, 23.078030>,  <31.162109, 34.842793, 22.843649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157976, 35.554180, 23.078030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509848, 35.367561, 23.114899>,  <31.720970, 35.255589, 23.137020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509848, 35.367561, 23.114899>,  <31.157976, 35.554180, 23.078030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509848, 35.367561, 23.114899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434851, 0.710652, -0.553062,
		0.192527, 0.526599, 0.828026,
		0.879680, -0.466548, 0.092172,
		31.773752, 35.227596, 23.142550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.458569, 30.938580, 29.295456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.854269, 30.967297, 29.346413>,  <29.091690, 30.984528, 29.376987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.854269, 30.967297, 29.346413>,  <28.458569, 30.938580, 29.295456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854269, 30.967297, 29.346413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053100, 0.635346, -0.770400,
		-0.136248, 0.768883, 0.624704,
		0.989251, 0.071793, 0.127392,
		29.151045, 30.988834, 29.384630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547823, 31.614891, 29.255692>,  <28.458569, 30.938580, 29.295456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547823, 31.614891, 29.255692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.911869, 31.456802, 29.205906>,  <29.130297, 31.361948, 29.176035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.911869, 31.456802, 29.205906>,  <28.547823, 31.614891, 29.255692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911869, 31.456802, 29.205906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286753, 0.817580, -0.499336,
		0.299107, 0.418763, 0.857422,
		0.910114, -0.395223, -0.124462,
		29.184904, 31.338236, 29.168568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164843, 32.094826, 29.506445>,  <28.547823, 31.614891, 29.255692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164843, 32.094826, 29.506445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.285574, 31.834427, 29.227848>,  <29.358013, 31.678188, 29.060690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.285574, 31.834427, 29.227848>,  <29.164843, 32.094826, 29.506445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285574, 31.834427, 29.227848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165539, 0.755254, -0.634183,
		0.938880, 0.076119, 0.335724,
		0.301830, -0.650997, -0.696492,
		29.376123, 31.639128, 29.018900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625881, 32.480209, 29.158045>,  <29.164843, 32.094826, 29.506445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625881, 32.480209, 29.158045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.599922, 32.167061, 28.910530>,  <29.584347, 31.979172, 28.762020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.599922, 32.167061, 28.910530>,  <29.625881, 32.480209, 29.158045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599922, 32.167061, 28.910530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262757, 0.584806, -0.767438,
		0.962677, -0.212397, 0.167751,
		-0.064900, -0.782873, -0.618788,
		29.580452, 31.932199, 28.724894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285017, 32.531357, 28.850237>,  <29.625881, 32.480209, 29.158045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285017, 32.531357, 28.850237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.049219, 32.314064, 28.611107>,  <29.907740, 32.183689, 28.467628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.049219, 32.314064, 28.611107>,  <30.285017, 32.531357, 28.850237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049219, 32.314064, 28.611107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187808, 0.627641, -0.755510,
		0.785636, -0.557646, -0.267968,
		-0.589495, -0.543229, -0.597828,
		29.872370, 32.151096, 28.431759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725321, 32.415737, 28.224258>,  <30.285017, 32.531357, 28.850237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725321, 32.415737, 28.224258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.339840, 32.351166, 28.139198>,  <30.108551, 32.312424, 28.088161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.339840, 32.351166, 28.139198>,  <30.725321, 32.415737, 28.224258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339840, 32.351166, 28.139198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102874, 0.510463, -0.853724,
		0.246369, -0.844610, -0.475327,
		-0.963701, -0.161432, -0.212650,
		30.050730, 32.302734, 28.075403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614716, 31.997383, 27.541536>,  <30.725321, 32.415737, 28.224258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614716, 31.997383, 27.541536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.282892, 32.206158, 27.620949>,  <30.083797, 32.331421, 27.668596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.282892, 32.206158, 27.620949>,  <30.614716, 31.997383, 27.541536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282892, 32.206158, 27.620949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001411, 0.353565, -0.935409,
		-0.558418, -0.776256, -0.292567,
		-0.829559, 0.521936, 0.198533,
		30.034025, 32.362740, 27.680510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361574, 31.973030, 26.952971>,  <30.614716, 31.997383, 27.541536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361574, 31.973030, 26.952971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.147114, 32.277035, 27.099899>,  <30.018438, 32.459438, 27.188057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.147114, 32.277035, 27.099899>,  <30.361574, 31.973030, 26.952971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147114, 32.277035, 27.099899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052479, 0.464320, -0.884111,
		-0.842491, -0.454738, -0.288830,
		-0.536149, 0.760013, 0.367321,
		29.986269, 32.505039, 27.210096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728445, 32.107109, 26.529341>,  <30.361574, 31.973030, 26.952971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728445, 32.107109, 26.529341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.839060, 32.444424, 26.713684>,  <29.905428, 32.646812, 26.824289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.839060, 32.444424, 26.713684>,  <29.728445, 32.107109, 26.529341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839060, 32.444424, 26.713684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036326, 0.488388, -0.871870,
		-0.960317, 0.224363, 0.165690,
		0.276536, 0.843290, 0.460857,
		29.922020, 32.697411, 26.851942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331951, 31.881161, 25.957069>,  <29.728445, 32.107109, 26.529341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331951, 31.881161, 25.957069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.263107, 31.622959, 25.659424>,  <29.221802, 31.468039, 25.480837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.263107, 31.622959, 25.659424>,  <29.331951, 31.881161, 25.957069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263107, 31.622959, 25.659424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338209, -0.748188, 0.570815,
		-0.925199, -0.153423, 0.347085,
		-0.172109, -0.645505, -0.744112,
		29.211475, 31.429308, 25.436190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872604, 31.318851, 26.207243>,  <29.331951, 31.881161, 25.957069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872604, 31.318851, 26.207243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.047941, 31.153881, 25.887802>,  <29.153143, 31.054899, 25.696138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.047941, 31.153881, 25.887802>,  <28.872604, 31.318851, 26.207243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047941, 31.153881, 25.887802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220350, -0.812084, 0.540338,
		-0.871380, -0.412823, -0.265090,
		0.438340, -0.412427, -0.798600,
		29.179443, 31.030153, 25.648222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663431, 30.560337, 26.178881>,  <28.872604, 31.318851, 26.207243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663431, 30.560337, 26.178881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.003246, 30.548458, 25.968204>,  <29.207136, 30.541330, 25.841799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.003246, 30.548458, 25.968204>,  <28.663431, 30.560337, 26.178881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003246, 30.548458, 25.968204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240260, -0.867069, 0.436424,
		-0.469639, -0.497302, -0.729473,
		0.849538, -0.029699, -0.526691,
		29.258108, 30.539549, 25.810198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654844, 29.976158, 25.877048>,  <28.663431, 30.560337, 26.178881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654844, 29.976158, 25.877048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.044933, 30.063217, 25.861176>,  <29.278986, 30.115452, 25.851652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.044933, 30.063217, 25.861176>,  <28.654844, 29.976158, 25.877048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044933, 30.063217, 25.861176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216510, -0.902046, 0.373412,
		0.045476, -0.372751, -0.926816,
		0.975221, 0.217647, -0.039683,
		29.337500, 30.128511, 25.849270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909664, 29.369507, 25.664906>,  <28.654844, 29.976158, 25.877048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909664, 29.369507, 25.664906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.231998, 29.546158, 25.822689>,  <29.425400, 29.652147, 25.917358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.231998, 29.546158, 25.822689>,  <28.909664, 29.369507, 25.664906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231998, 29.546158, 25.822689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218425, -0.840871, 0.495203,
		0.550382, -0.312893, -0.774066,
		0.805835, 0.441626, 0.394457,
		29.473749, 29.678646, 25.941027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411043, 28.848557, 25.517141>,  <28.909664, 29.369507, 25.664906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411043, 28.848557, 25.517141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.543211, 29.098698, 25.799915>,  <29.622511, 29.248783, 25.969580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.543211, 29.098698, 25.799915>,  <29.411043, 28.848557, 25.517141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543211, 29.098698, 25.799915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352411, -0.776574, 0.522244,
		0.875574, 0.076572, -0.476976,
		0.330418, 0.625355, 0.706933,
		29.642336, 29.286304, 26.011995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054802, 28.552889, 25.743040>,  <29.411043, 28.848557, 25.517141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054802, 28.552889, 25.743040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.953150, 28.785454, 26.052200>,  <29.892159, 28.924994, 26.237696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.953150, 28.785454, 26.052200>,  <30.054802, 28.552889, 25.743040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953150, 28.785454, 26.052200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288862, -0.717035, 0.634366,
		0.923026, 0.384473, 0.014271,
		-0.254130, 0.581414, 0.772901,
		29.876911, 28.959877, 26.284071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616955, 28.556458, 26.198757>,  <30.054802, 28.552889, 25.743040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616955, 28.556458, 26.198757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.299812, 28.650902, 26.423481>,  <30.109528, 28.707569, 26.558315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.299812, 28.650902, 26.423481>,  <30.616955, 28.556458, 26.198757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299812, 28.650902, 26.423481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350130, -0.578058, 0.737060,
		0.498788, 0.781089, 0.375647,
		-0.792855, 0.236111, 0.561811,
		30.061956, 28.721735, 26.592024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901146, 28.585016, 26.902739>,  <30.616955, 28.556458, 26.198757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901146, 28.585016, 26.902739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.507095, 28.534859, 26.949726>,  <30.270664, 28.504765, 26.977919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.507095, 28.534859, 26.949726>,  <30.901146, 28.585016, 26.902739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507095, 28.534859, 26.949726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171723, -0.741881, 0.648170,
		0.005873, 0.658703, 0.752380,
		-0.985128, -0.125394, 0.117471,
		30.211557, 28.497240, 26.984968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767046, 28.501043, 27.547512>,  <30.901146, 28.585016, 26.902739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767046, 28.501043, 27.547512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.425583, 28.353092, 27.400837>,  <30.220705, 28.264320, 27.312832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.425583, 28.353092, 27.400837>,  <30.767046, 28.501043, 27.547512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425583, 28.353092, 27.400837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035469, -0.661118, 0.749443,
		-0.519629, 0.652772, 0.551248,
		-0.853656, -0.369880, -0.366689,
		30.169487, 28.242128, 27.290831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258455, 28.509983, 28.038303>,  <30.767046, 28.501043, 27.547512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258455, 28.509983, 28.038303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.102724, 28.213501, 27.819565>,  <30.009285, 28.035612, 27.688322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.102724, 28.213501, 27.819565>,  <30.258455, 28.509983, 28.038303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102724, 28.213501, 27.819565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401696, -0.397630, 0.824943,
		-0.828893, 0.540839, -0.142930,
		-0.389328, -0.741204, -0.546845,
		29.985926, 27.991140, 27.655512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491356, 28.439037, 28.219896>,  <30.258455, 28.509983, 28.038303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491356, 28.439037, 28.219896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.599476, 28.095776, 28.045307>,  <29.664347, 27.889818, 27.940554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.599476, 28.095776, 28.045307>,  <29.491356, 28.439037, 28.219896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599476, 28.095776, 28.045307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482889, -0.513042, 0.709652,
		-0.832920, 0.018950, -0.553068,
		0.270299, -0.858155, -0.436474,
		29.680565, 27.838329, 27.914366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895042, 28.059113, 28.263042>,  <29.491356, 28.439037, 28.219896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895042, 28.059113, 28.263042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.161903, 27.778526, 28.162762>,  <29.322020, 27.610174, 28.102592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.161903, 27.778526, 28.162762>,  <28.895042, 28.059113, 28.263042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161903, 27.778526, 28.162762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546574, -0.689622, 0.475057,
		-0.506126, -0.179909, -0.843487,
		0.667154, -0.701466, -0.250702,
		29.362049, 27.568087, 28.087551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565634, 27.447298, 28.098461>,  <28.895042, 28.059113, 28.263042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565634, 27.447298, 28.098461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.940140, 27.324947, 28.167564>,  <29.164843, 27.251537, 28.209026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.940140, 27.324947, 28.167564>,  <28.565634, 27.447298, 28.098461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940140, 27.324947, 28.167564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347878, -0.738903, 0.577064,
		-0.048860, -0.600384, -0.798218,
		0.936265, -0.305878, 0.172758,
		29.221020, 27.233185, 28.219391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.832451, 27.391733, 29.707903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.461704, 27.530140, 29.766136>,  <33.239258, 27.613184, 29.801077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.461704, 27.530140, 29.766136>,  <33.832451, 27.391733, 29.707903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461704, 27.530140, 29.766136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178971, 0.748209, -0.638868,
		-0.329987, -0.566089, -0.755415,
		-0.926865, 0.346015, 0.145586,
		33.183643, 27.633944, 29.809813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591515, 27.471607, 29.080181>,  <33.832451, 27.391733, 29.707903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591515, 27.471607, 29.080181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.349625, 27.686340, 29.315510>,  <33.204491, 27.815180, 29.456707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.349625, 27.686340, 29.315510>,  <33.591515, 27.471607, 29.080181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349625, 27.686340, 29.315510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078482, 0.775265, -0.626742,
		-0.792560, -0.332832, -0.510951,
		-0.604722, 0.536831, 0.588323,
		33.168209, 27.847389, 29.492006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025433, 27.640009, 28.617100>,  <33.591515, 27.471607, 29.080181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025433, 27.640009, 28.617100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053112, 27.884018, 28.932842>,  <33.069717, 28.030424, 29.122288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053112, 27.884018, 28.932842>,  <33.025433, 27.640009, 28.617100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053112, 27.884018, 28.932842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039048, 0.792303, -0.608877,
		-0.996839, 0.011308, 0.078643,
		0.069195, 0.610023, 0.789357,
		33.073872, 28.067024, 29.169649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769669, 28.111519, 28.260044>,  <33.025433, 27.640009, 28.617100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769669, 28.111519, 28.260044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.882061, 28.256157, 28.615639>,  <32.949497, 28.342939, 28.828997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.882061, 28.256157, 28.615639>,  <32.769669, 28.111519, 28.260044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882061, 28.256157, 28.615639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178888, 0.890338, -0.418684,
		-0.942895, 0.276671, 0.185481,
		0.280979, 0.361595, 0.888988,
		32.966354, 28.364635, 28.882336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395779, 28.678917, 28.417238>,  <32.769669, 28.111519, 28.260044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395779, 28.678917, 28.417238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.756561, 28.715378, 28.586075>,  <32.973030, 28.737255, 28.687376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.756561, 28.715378, 28.586075>,  <32.395779, 28.678917, 28.417238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756561, 28.715378, 28.586075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246539, 0.693800, -0.676654,
		-0.354526, 0.714376, 0.603306,
		0.901959, 0.091153, 0.422092,
		33.027149, 28.742723, 28.712702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491005, 29.364857, 28.462778>,  <32.395779, 28.678917, 28.417238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491005, 29.364857, 28.462778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.858730, 29.213055, 28.504425>,  <33.079365, 29.121973, 28.529413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.858730, 29.213055, 28.504425>,  <32.491005, 29.364857, 28.462778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858730, 29.213055, 28.504425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358891, 0.699982, -0.617432,
		0.161440, 0.604979, 0.779704,
		0.919312, -0.379507, 0.104116,
		33.134525, 29.099203, 28.535660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887703, 29.908138, 28.672506>,  <32.491005, 29.364857, 28.462778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887703, 29.908138, 28.672506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144600, 29.646610, 28.512486>,  <33.298740, 29.489695, 28.416473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144600, 29.646610, 28.512486>,  <32.887703, 29.908138, 28.672506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144600, 29.646610, 28.512486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390729, 0.728280, -0.562973,
		0.659433, 0.205254, 0.723200,
		0.642245, -0.653818, -0.400053,
		33.337273, 29.450464, 28.392469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510555, 30.285439, 28.609383>,  <32.887703, 29.908138, 28.672506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510555, 30.285439, 28.609383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.598541, 29.964291, 28.387745>,  <33.651333, 29.771603, 28.254763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.598541, 29.964291, 28.387745>,  <33.510555, 30.285439, 28.609383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598541, 29.964291, 28.387745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368984, 0.594281, -0.714619,
		0.903031, -0.047259, 0.426967,
		0.219966, -0.802868, -0.554092,
		33.664532, 29.723431, 28.221518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266872, 30.361027, 28.337355>,  <33.510555, 30.285439, 28.609383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266872, 30.361027, 28.337355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.056587, 30.118584, 28.098606>,  <33.930416, 29.973118, 27.955357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.056587, 30.118584, 28.098606>,  <34.266872, 30.361027, 28.337355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056587, 30.118584, 28.098606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278972, 0.540009, -0.794081,
		0.803616, -0.583970, -0.114803,
		-0.525714, -0.606110, -0.596871,
		33.898872, 29.936750, 27.919544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762272, 30.201530, 27.737179>,  <34.266872, 30.361027, 28.337355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762272, 30.201530, 27.737179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384403, 30.148800, 27.617031>,  <34.157684, 30.117161, 27.544943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384403, 30.148800, 27.617031>,  <34.762272, 30.201530, 27.737179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384403, 30.148800, 27.617031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150442, 0.639598, -0.753845,
		0.291493, -0.757322, -0.584376,
		-0.944669, -0.131826, -0.300371,
		34.101002, 30.109253, 27.526920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785252, 30.007545, 27.089130>,  <34.762272, 30.201530, 27.737179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785252, 30.007545, 27.089130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.414761, 30.156834, 27.110344>,  <34.192467, 30.246407, 27.123072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.414761, 30.156834, 27.110344>,  <34.785252, 30.007545, 27.089130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414761, 30.156834, 27.110344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158902, 0.514117, -0.842873,
		-0.341844, -0.772263, -0.535493,
		-0.926225, 0.373222, 0.053033,
		34.136894, 30.268801, 27.126253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719810, 30.127432, 26.394987>,  <34.785252, 30.007545, 27.089130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719810, 30.127432, 26.394987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.400513, 30.313938, 26.547516>,  <34.208935, 30.425842, 26.639032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.400513, 30.313938, 26.547516>,  <34.719810, 30.127432, 26.394987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400513, 30.313938, 26.547516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105095, 0.515545, -0.850393,
		-0.593099, -0.718893, -0.362527,
		-0.798241, 0.466268, 0.381321,
		34.161041, 30.453819, 26.661913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219028, 30.032923, 25.923903>,  <34.719810, 30.127432, 26.394987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219028, 30.032923, 25.923903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.156998, 30.365639, 26.137096>,  <34.119781, 30.565269, 26.265013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.156998, 30.365639, 26.137096>,  <34.219028, 30.032923, 25.923903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156998, 30.365639, 26.137096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372335, 0.548939, -0.748354,
		-0.915051, 0.082399, -0.394831,
		-0.155075, 0.831791, 0.532987,
		34.110474, 30.615175, 26.296993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798481, 30.452396, 25.513525>,  <34.219028, 30.032923, 25.923903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798481, 30.452396, 25.513525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944962, 30.727074, 25.764713>,  <34.032852, 30.891880, 25.915426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944962, 30.727074, 25.764713>,  <33.798481, 30.452396, 25.513525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944962, 30.727074, 25.764713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167677, 0.615106, -0.770408,
		-0.915303, 0.387422, 0.110111,
		0.366203, 0.686694, 0.627970,
		34.054821, 30.933083, 25.953104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145725, 30.868933, 25.527592>,  <33.798481, 30.452396, 25.513525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145725, 30.868933, 25.527592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025356, 30.645065, 25.218731>,  <32.953133, 30.510746, 25.033415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025356, 30.645065, 25.218731>,  <33.145725, 30.868933, 25.527592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025356, 30.645065, 25.218731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157601, -0.769362, 0.619066,
		-0.940535, 0.307984, 0.143316,
		-0.300924, -0.559667, -0.772151,
		32.935078, 30.477165, 24.987085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412518, 30.633076, 25.630522>,  <33.145725, 30.868933, 25.527592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412518, 30.633076, 25.630522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.593502, 30.382504, 25.376637>,  <32.702091, 30.232161, 25.224304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.593502, 30.382504, 25.376637>,  <32.412518, 30.633076, 25.630522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593502, 30.382504, 25.376637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216130, -0.767545, 0.603458,
		-0.865197, -0.135861, -0.482675,
		0.452462, -0.626431, -0.634715,
		32.729240, 30.194574, 25.186222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957188, 30.000669, 25.632141>,  <32.412518, 30.633076, 25.630522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957188, 30.000669, 25.632141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.280617, 29.863728, 25.440723>,  <32.474674, 29.781563, 25.325872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.280617, 29.863728, 25.440723>,  <31.957188, 30.000669, 25.632141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280617, 29.863728, 25.440723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143341, -0.903411, 0.404107,
		-0.570670, -0.258155, -0.779546,
		0.808572, -0.342353, -0.478545,
		32.523190, 29.761023, 25.297159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743130, 29.338270, 25.454723>,  <31.957188, 30.000669, 25.632141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743130, 29.338270, 25.454723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.136105, 29.299545, 25.390915>,  <32.371891, 29.276310, 25.352631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.136105, 29.299545, 25.390915>,  <31.743130, 29.338270, 25.454723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136105, 29.299545, 25.390915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004703, -0.867455, 0.497494,
		-0.186541, -0.488006, -0.852674,
		0.982436, -0.096813, -0.159520,
		32.430836, 29.270502, 25.343060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927666, 28.661118, 25.020731>,  <31.743130, 29.338270, 25.454723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927666, 28.661118, 25.020731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.248577, 28.772697, 25.231838>,  <32.441124, 28.839645, 25.358501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.248577, 28.772697, 25.231838>,  <31.927666, 28.661118, 25.020731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248577, 28.772697, 25.231838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061322, -0.917936, 0.391960,
		0.593794, -0.282097, -0.753545,
		0.802277, 0.278952, 0.527766,
		32.489262, 28.856382, 25.390167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371567, 28.077988, 25.031776>,  <31.927666, 28.661118, 25.020731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371567, 28.077988, 25.031776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.490669, 28.327026, 25.321251>,  <32.562130, 28.476450, 25.494936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.490669, 28.327026, 25.321251>,  <32.371567, 28.077988, 25.031776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490669, 28.327026, 25.321251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191951, -0.781631, 0.593471,
		0.935146, -0.037796, -0.352241,
		0.297753, 0.622595, 0.723684,
		32.579994, 28.513805, 25.538357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033588, 27.757349, 25.322565>,  <32.371567, 28.077988, 25.031776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033588, 27.757349, 25.322565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878754, 27.988213, 25.610191>,  <32.785854, 28.126730, 25.782766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878754, 27.988213, 25.610191>,  <33.033588, 27.757349, 25.322565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878754, 27.988213, 25.610191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034547, -0.770233, 0.636826,
		0.921396, 0.271349, 0.278208,
		-0.387087, 0.577158, 0.719064,
		32.762627, 28.161360, 25.825911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452682, 27.608677, 25.823769>,  <33.033588, 27.757349, 25.322565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452682, 27.608677, 25.823769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.130676, 27.765129, 26.002193>,  <32.937473, 27.859001, 26.109249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.130676, 27.765129, 26.002193>,  <33.452682, 27.608677, 25.823769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130676, 27.765129, 26.002193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071545, -0.810403, 0.581488,
		0.588930, 0.436190, 0.680367,
		-0.805011, 0.391133, 0.446064,
		32.889172, 27.882469, 26.136013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487236, 27.536900, 26.615862>,  <33.452682, 27.608677, 25.823769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487236, 27.536900, 26.615862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092861, 27.579712, 26.564514>,  <32.856236, 27.605400, 26.533707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092861, 27.579712, 26.564514>,  <33.487236, 27.536900, 26.615862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092861, 27.579712, 26.564514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164107, -0.765479, 0.622183,
		-0.031669, 0.634497, 0.772276,
		-0.985934, 0.107032, -0.128368,
		32.797081, 27.611822, 26.526005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162331, 27.655439, 27.180614>,  <33.487236, 27.536900, 26.615862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162331, 27.655439, 27.180614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889751, 27.479729, 26.946465>,  <32.726204, 27.374302, 26.805975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889751, 27.479729, 26.946465>,  <33.162331, 27.655439, 27.180614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889751, 27.479729, 26.946465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158553, -0.692233, 0.704041,
		-0.714483, 0.572582, 0.402074,
		-0.681451, -0.439276, -0.585373,
		32.685318, 27.347946, 26.770853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606453, 27.476421, 27.616301>,  <33.162331, 27.655439, 27.180614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606453, 27.476421, 27.616301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.609112, 27.232243, 27.299488>,  <32.610706, 27.085735, 27.109400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.609112, 27.232243, 27.299488>,  <32.606453, 27.476421, 27.616301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609112, 27.232243, 27.299488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282147, -0.761011, 0.584170,
		-0.959348, 0.219588, -0.177291,
		0.006644, -0.610445, -0.792031,
		32.611103, 27.049109, 27.061878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041924, 27.206245, 27.732395>,  <32.606453, 27.476421, 27.616301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041924, 27.206245, 27.732395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.259037, 26.974609, 27.489071>,  <32.389305, 26.835629, 27.343077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.259037, 26.974609, 27.489071>,  <32.041924, 27.206245, 27.732395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259037, 26.974609, 27.489071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424204, -0.814140, 0.396520,
		-0.724870, 0.042823, -0.687554,
		0.542784, -0.579088, -0.608311,
		32.421871, 26.800882, 27.306578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516544, 26.676933, 27.487551>,  <32.041924, 27.206245, 27.732395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516544, 26.676933, 27.487551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.894014, 26.554264, 27.437870>,  <32.120495, 26.480661, 27.408062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.894014, 26.554264, 27.437870>,  <31.516544, 26.676933, 27.487551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894014, 26.554264, 27.437870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263667, -0.923789, 0.277657,
		-0.199889, -0.229270, -0.952617,
		0.943676, -0.306675, -0.124204,
		32.177116, 26.462261, 27.400608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386742, 26.018078, 27.256981>,  <31.516544, 26.676933, 27.487551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386742, 26.018078, 27.256981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.764193, 26.028515, 27.388973>,  <31.990664, 26.034777, 27.468168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.764193, 26.028515, 27.388973>,  <31.386742, 26.018078, 27.256981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764193, 26.028515, 27.388973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126689, -0.892514, 0.432862,
		0.305808, -0.450265, -0.838894,
		0.943627, 0.026094, 0.329981,
		32.047279, 26.036343, 27.487968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224392, 25.652594, 26.587307>,  <31.386742, 26.018078, 27.256981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224392, 25.652594, 26.587307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.899624, 25.448315, 26.474190>,  <30.704763, 25.325747, 26.406321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.899624, 25.448315, 26.474190>,  <31.224392, 25.652594, 26.587307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899624, 25.448315, 26.474190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125140, 0.625427, -0.770182,
		0.570192, -0.589942, -0.571708,
		-0.811924, -0.510695, -0.282789,
		30.656048, 25.295105, 26.389353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155043, 25.869617, 25.973274>,  <31.224392, 25.652594, 26.587307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155043, 25.869617, 25.973274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.800428, 25.685848, 25.995140>,  <30.587660, 25.575586, 26.008259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.800428, 25.685848, 25.995140>,  <31.155043, 25.869617, 25.973274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800428, 25.685848, 25.995140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355345, 0.600460, -0.716364,
		0.296290, -0.654506, -0.695582,
		-0.886534, -0.459423, 0.054665,
		30.534468, 25.548021, 26.011539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035130, 25.738850, 25.350201>,  <31.155043, 25.869617, 25.973274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035130, 25.738850, 25.350201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.690382, 25.743069, 25.553009>,  <30.483534, 25.745600, 25.674694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.690382, 25.743069, 25.553009>,  <31.035130, 25.738850, 25.350201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690382, 25.743069, 25.553009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434524, 0.500131, -0.749038,
		-0.261477, -0.865885, -0.426465,
		-0.861869, 0.010548, 0.507020,
		30.431822, 25.746233, 25.705114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435202, 25.458584, 24.911058>,  <31.035130, 25.738850, 25.350201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435202, 25.458584, 24.911058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.256552, 25.682175, 25.190506>,  <30.149361, 25.816328, 25.358175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.256552, 25.682175, 25.190506>,  <30.435202, 25.458584, 24.911058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256552, 25.682175, 25.190506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541180, 0.453023, -0.708445,
		-0.712495, -0.694490, 0.100175,
		-0.446626, 0.558976, 0.698621,
		30.122564, 25.849867, 25.400093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791094, 25.481422, 24.598112>,  <30.435202, 25.458584, 24.911058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791094, 25.481422, 24.598112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.812445, 25.774227, 24.869793>,  <29.825254, 25.949909, 25.032801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.812445, 25.774227, 24.869793>,  <29.791094, 25.481422, 24.598112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812445, 25.774227, 24.869793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473922, 0.617257, -0.628007,
		-0.878948, -0.288367, 0.379862,
		0.053376, 0.732010, 0.679200,
		29.828457, 25.993830, 25.073553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051023, 25.751293, 24.700708>,  <29.791094, 25.481422, 24.598112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051023, 25.751293, 24.700708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.328304, 26.021965, 24.799965>,  <29.494673, 26.184368, 24.859520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.328304, 26.021965, 24.799965>,  <29.051023, 25.751293, 24.700708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328304, 26.021965, 24.799965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402535, 0.649072, -0.645501,
		-0.597861, 0.347576, 0.722325,
		0.693201, 0.676681, 0.248143,
		29.536264, 26.224970, 24.874409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639164, 26.372242, 24.600372>,  <29.051023, 25.751293, 24.700708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639164, 26.372242, 24.600372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.025803, 26.474758, 24.601372>,  <29.257786, 26.536268, 24.601971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.025803, 26.474758, 24.601372>,  <28.639164, 26.372242, 24.600372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025803, 26.474758, 24.601372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188335, 0.716850, -0.671309,
		-0.173842, 0.648414, 0.741173,
		0.966596, 0.256291, 0.002499,
		29.315781, 26.551645, 24.602121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662073, 27.074196, 24.802397>,  <28.639164, 26.372242, 24.600372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662073, 27.074196, 24.802397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.999203, 26.981834, 24.607941>,  <29.201481, 26.926418, 24.491266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.999203, 26.981834, 24.607941>,  <28.662073, 27.074196, 24.802397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999203, 26.981834, 24.607941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163810, 0.750368, -0.640401,
		0.512654, 0.619380, 0.594605,
		0.842824, -0.230902, -0.486140,
		29.252050, 26.912563, 24.462099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765404, 27.712641, 24.634188>,  <28.662073, 27.074196, 24.802397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765404, 27.712641, 24.634188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.981281, 27.463970, 24.407120>,  <29.110807, 27.314768, 24.270880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.981281, 27.463970, 24.407120>,  <28.765404, 27.712641, 24.634188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981281, 27.463970, 24.407120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015241, 0.666977, -0.744922,
		0.841725, 0.410681, 0.350488,
		0.539692, -0.621678, -0.567670,
		29.143188, 27.277468, 24.236818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366480, 28.119677, 24.404793>,  <28.765404, 27.712641, 24.634188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366480, 28.119677, 24.404793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.326214, 27.803982, 24.162479>,  <29.302055, 27.614565, 24.017092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.326214, 27.803982, 24.162479>,  <29.366480, 28.119677, 24.404793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326214, 27.803982, 24.162479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108514, 0.613954, -0.781847,
		0.988985, -0.012967, -0.147446,
		-0.100663, -0.789235, -0.605785,
		29.296015, 27.567211, 23.980743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976004, 28.187347, 23.919777>,  <29.366480, 28.119677, 24.404793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976004, 28.187347, 23.919777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.674919, 27.970661, 23.770126>,  <29.494268, 27.840649, 23.680336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.674919, 27.970661, 23.770126>,  <29.976004, 28.187347, 23.919777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674919, 27.970661, 23.770126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035560, 0.600901, -0.798532,
		0.657390, -0.587759, -0.471568,
		-0.752711, -0.541716, -0.374126,
		29.449106, 27.808147, 23.657888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098860, 28.290123, 23.258175>,  <29.976004, 28.187347, 23.919777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098860, 28.290123, 23.258175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.724340, 28.153065, 23.289001>,  <29.499628, 28.070829, 23.307497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.724340, 28.153065, 23.289001>,  <30.098860, 28.290123, 23.258175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724340, 28.153065, 23.289001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270040, 0.562073, -0.781763,
		0.224550, -0.752774, -0.618796,
		-0.936299, -0.342644, 0.077066,
		29.443451, 28.050272, 23.312120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974958, 28.165560, 22.576904>,  <30.098860, 28.290123, 23.258175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974958, 28.165560, 22.576904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.627426, 28.202362, 22.771500>,  <29.418907, 28.224443, 22.888256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.627426, 28.202362, 22.771500>,  <29.974958, 28.165560, 22.576904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627426, 28.202362, 22.771500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340804, 0.601626, -0.722426,
		-0.359151, -0.793462, -0.491354,
		-0.868829, 0.092004, 0.486489,
		29.366777, 28.229963, 22.917446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459700, 28.199970, 22.069397>,  <29.974958, 28.165560, 22.576904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459700, 28.199970, 22.069397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.264368, 28.350597, 22.384289>,  <29.147169, 28.440973, 22.573223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.264368, 28.350597, 22.384289>,  <29.459700, 28.199970, 22.069397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264368, 28.350597, 22.384289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345166, 0.745190, -0.570572,
		-0.801495, -0.550352, -0.233920,
		-0.488330, 0.376569, 0.787229,
		29.117868, 28.463568, 22.620457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.758293, 40.125114, 20.396515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.139317, 40.061962, 20.292431>,  <45.367931, 40.024071, 20.229980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.139317, 40.061962, 20.292431>,  <44.758293, 40.125114, 20.396515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139317, 40.061962, 20.292431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148097, -0.987334, 0.056919,
		-0.265901, -0.015682, -0.963873,
		0.952557, -0.157882, -0.260210,
		45.425083, 40.014599, 20.214367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761223, 39.766705, 19.818380>,  <44.758293, 40.125114, 20.396515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761223, 39.766705, 19.818380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.126511, 39.702217, 19.968067>,  <45.345684, 39.663525, 20.057878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.126511, 39.702217, 19.968067>,  <44.761223, 39.766705, 19.818380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126511, 39.702217, 19.968067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123162, -0.984653, -0.123651,
		0.388407, 0.066832, -0.919061,
		0.913220, -0.161220, 0.374215,
		45.400478, 39.653851, 20.080332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017719, 39.269203, 19.417654>,  <44.761223, 39.766705, 19.818380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017719, 39.269203, 19.417654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.181217, 39.232208, 19.780834>,  <45.279316, 39.210011, 19.998743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.181217, 39.232208, 19.780834>,  <45.017719, 39.269203, 19.417654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181217, 39.232208, 19.780834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143689, -0.988966, -0.036056,
		0.901267, -0.115725, -0.417524,
		0.408744, -0.092490, 0.907950,
		45.303841, 39.204460, 20.053219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.013187, 38.596336, 19.434696>,  <45.017719, 39.269203, 19.417654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.013187, 38.596336, 19.434696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.115616, 38.707825, 19.804939>,  <45.177071, 38.774719, 20.027084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.115616, 38.707825, 19.804939>,  <45.013187, 38.596336, 19.434696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115616, 38.707825, 19.804939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202687, -0.920764, 0.333335,
		0.945171, -0.272964, -0.179284,
		0.256067, 0.278719, 0.925606,
		45.192436, 38.791439, 20.082621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.489750, 38.023945, 19.668530>,  <45.013187, 38.596336, 19.434696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.489750, 38.023945, 19.668530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.305164, 38.218910, 19.965034>,  <45.194412, 38.335892, 20.142937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.305164, 38.218910, 19.965034>,  <45.489750, 38.023945, 19.668530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305164, 38.218910, 19.965034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300618, -0.872029, 0.386256,
		0.834671, -0.044592, 0.548940,
		-0.461468, 0.487418, 0.741263,
		45.166725, 38.365135, 20.187414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.714184, 37.639797, 20.327419>,  <45.489750, 38.023945, 19.668530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.714184, 37.639797, 20.327419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.407719, 37.873066, 20.435425>,  <45.223839, 38.013027, 20.500229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.407719, 37.873066, 20.435425>,  <45.714184, 37.639797, 20.327419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407719, 37.873066, 20.435425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377244, -0.748274, 0.545685,
		0.520272, 0.316222, 0.793297,
		-0.766161, 0.583172, 0.270014,
		45.177872, 38.048019, 20.516428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654720, 37.598312, 21.104349>,  <45.714184, 37.639797, 20.327419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654720, 37.598312, 21.104349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.293076, 37.726887, 20.991741>,  <45.076088, 37.804031, 20.924175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.293076, 37.726887, 20.991741>,  <45.654720, 37.598312, 21.104349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293076, 37.726887, 20.991741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423555, -0.761080, 0.491283,
		-0.056346, 0.563417, 0.824249,
		-0.904116, 0.321434, -0.281522,
		45.021839, 37.823318, 20.907284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190483, 37.481407, 21.737507>,  <45.654720, 37.598312, 21.104349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.190483, 37.481407, 21.737507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.937294, 37.517277, 21.429920>,  <44.785381, 37.538799, 21.245369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.937294, 37.517277, 21.429920>,  <45.190483, 37.481407, 21.737507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937294, 37.517277, 21.429920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519302, -0.785847, 0.335813,
		-0.574175, 0.611885, 0.543986,
		-0.632968, 0.089678, -0.768966,
		44.747402, 37.544182, 21.199230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448372, 37.427719, 22.048691>,  <45.190483, 37.481407, 21.737507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448372, 37.427719, 22.048691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.428017, 37.351227, 21.656601>,  <44.415802, 37.305332, 21.421347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.428017, 37.351227, 21.656601>,  <44.448372, 37.427719, 22.048691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428017, 37.351227, 21.656601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726275, -0.666620, 0.167755,
		-0.685518, 0.720451, -0.104959,
		-0.050892, -0.191228, -0.980226,
		44.412750, 37.293858, 21.362534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757694, 37.513412, 21.937248>,  <44.448372, 37.427719, 22.048691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757694, 37.513412, 21.937248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.877701, 37.301590, 21.619869>,  <43.949703, 37.174496, 21.429441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.877701, 37.301590, 21.619869>,  <43.757694, 37.513412, 21.937248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877701, 37.301590, 21.619869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793171, -0.600579, 0.100924,
		-0.529973, 0.599060, -0.600213,
		0.300016, -0.529559, -0.793447,
		43.967705, 37.142723, 21.381836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215542, 37.535469, 21.431137>,  <43.757694, 37.513412, 21.937248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215542, 37.535469, 21.431137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.415100, 37.202698, 21.333977>,  <43.534836, 37.003036, 21.275681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.415100, 37.202698, 21.333977>,  <43.215542, 37.535469, 21.431137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415100, 37.202698, 21.333977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839846, -0.533262, 0.101436,
		-0.213917, 0.153394, -0.964733,
		0.498896, -0.831926, -0.242901,
		43.564770, 36.953121, 21.261106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775444, 37.148766, 20.938395>,  <43.215542, 37.535469, 21.431137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775444, 37.148766, 20.938395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.032021, 36.870617, 21.068016>,  <43.185966, 36.703728, 21.145790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.032021, 36.870617, 21.068016>,  <42.775444, 37.148766, 20.938395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032021, 36.870617, 21.068016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754986, -0.647164, 0.105706,
		0.136212, -0.312461, -0.940114,
		0.641437, -0.695375, 0.324055,
		43.224453, 36.662003, 21.165232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514614, 36.640415, 20.630907>,  <42.775444, 37.148766, 20.938395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514614, 36.640415, 20.630907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.733509, 36.489513, 20.929760>,  <42.864845, 36.398972, 21.109072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.733509, 36.489513, 20.929760>,  <42.514614, 36.640415, 20.630907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733509, 36.489513, 20.929760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712390, -0.678523, 0.179184,
		0.439349, -0.630308, -0.640066,
		0.547241, -0.377253, 0.747133,
		42.897682, 36.376339, 21.153900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417423, 35.914486, 20.492956>,  <42.514614, 36.640415, 20.630907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417423, 35.914486, 20.492956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.555691, 35.947956, 20.866802>,  <42.638653, 35.968037, 21.091110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.555691, 35.947956, 20.866802>,  <42.417423, 35.914486, 20.492956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555691, 35.947956, 20.866802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427024, -0.872877, 0.236083,
		0.835560, -0.480712, -0.265999,
		0.345672, 0.083674, 0.934617,
		42.659393, 35.973057, 21.147188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546284, 35.180321, 20.653839>,  <42.417423, 35.914486, 20.492956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546284, 35.180321, 20.653839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.537880, 35.381443, 20.999496>,  <42.532837, 35.502117, 21.206890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.537880, 35.381443, 20.999496>,  <42.546284, 35.180321, 20.653839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537880, 35.381443, 20.999496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655215, -0.659770, 0.367963,
		0.755150, -0.558469, 0.343310,
		-0.021010, 0.502809, 0.864142,
		42.531578, 35.532288, 21.258739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708481, 34.697414, 21.116993>,  <42.546284, 35.180321, 20.653839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708481, 34.697414, 21.116993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.477314, 34.950520, 21.323143>,  <42.338612, 35.102383, 21.446833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.477314, 34.950520, 21.323143>,  <42.708481, 34.697414, 21.116993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477314, 34.950520, 21.323143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547064, -0.768997, 0.330703,
		0.605581, -0.090823, 0.790584,
		-0.577921, 0.632767, 0.515376,
		42.303936, 35.140350, 21.477757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580166, 34.432842, 21.889944>,  <42.708481, 34.697414, 21.116993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580166, 34.432842, 21.889944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.292065, 34.698677, 21.810390>,  <42.119205, 34.858177, 21.762659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.292065, 34.698677, 21.810390>,  <42.580166, 34.432842, 21.889944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292065, 34.698677, 21.810390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688945, -0.651728, 0.317183,
		0.081180, 0.365471, 0.927276,
		-0.720253, 0.664591, -0.198882,
		42.075989, 34.898056, 21.750727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010780, 34.452724, 22.487421>,  <42.580166, 34.432842, 21.889944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010780, 34.452724, 22.487421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.824059, 34.626865, 22.179508>,  <41.712025, 34.731350, 21.994761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.824059, 34.626865, 22.179508>,  <42.010780, 34.452724, 22.487421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824059, 34.626865, 22.179508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843603, -0.480411, 0.239873,
		-0.265385, 0.761366, 0.591518,
		-0.466803, 0.435348, -0.769784,
		41.684017, 34.757469, 21.948572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302490, 34.613499, 22.756601>,  <42.010780, 34.452724, 22.487421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302490, 34.613499, 22.756601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.275261, 34.636829, 22.358212>,  <41.258923, 34.650829, 22.119179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.275261, 34.636829, 22.358212>,  <41.302490, 34.613499, 22.756601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275261, 34.636829, 22.358212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925923, -0.375448, 0.041299,
		-0.371527, 0.925006, 0.079569,
		-0.068076, 0.058331, -0.995973,
		41.254837, 34.654327, 22.059420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623486, 34.814251, 22.683142>,  <41.302490, 34.613499, 22.756601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623486, 34.814251, 22.683142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.730347, 34.677933, 22.322590>,  <40.794464, 34.596142, 22.106258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.730347, 34.677933, 22.322590>,  <40.623486, 34.814251, 22.683142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730347, 34.677933, 22.322590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767157, -0.641282, 0.015084,
		-0.583180, 0.687470, -0.432765,
		0.267154, -0.340795, -0.901381,
		40.810493, 34.575695, 22.052176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071396, 34.939304, 22.199644>,  <40.623486, 34.814251, 22.683142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071396, 34.939304, 22.199644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.259914, 34.610676, 22.071331>,  <40.373028, 34.413498, 21.994343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.259914, 34.610676, 22.071331>,  <40.071396, 34.939304, 22.199644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259914, 34.610676, 22.071331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875193, -0.480660, -0.054810,
		-0.109156, 0.306577, -0.945566,
		0.471299, -0.821570, -0.320781,
		40.401302, 34.364204, 21.975098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531162, 35.489117, 22.291740>,  <40.071396, 34.939304, 22.199644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531162, 35.489117, 22.291740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.330280, 35.773941, 22.488007>,  <39.209751, 35.944836, 22.605766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.330280, 35.773941, 22.488007>,  <39.531162, 35.489117, 22.291740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330280, 35.773941, 22.488007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841297, 0.533565, 0.086760,
		-0.200023, 0.456367, -0.867017,
		-0.502204, 0.712065, 0.490666,
		39.179619, 35.987560, 22.635206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857857, 36.101566, 22.016798>,  <39.531162, 35.489117, 22.291740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857857, 36.101566, 22.016798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.675114, 36.205044, 22.357235>,  <39.565468, 36.267128, 22.561497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.675114, 36.205044, 22.357235>,  <39.857857, 36.101566, 22.016798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675114, 36.205044, 22.357235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761884, 0.607644, 0.224281,
		-0.459142, 0.750899, -0.474700,
		-0.456861, 0.258689, 0.851092,
		39.538055, 36.282650, 22.612562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727516, 36.804970, 21.996496>,  <39.857857, 36.101566, 22.016798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727516, 36.804970, 21.996496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735138, 36.681633, 22.376930>,  <39.739712, 36.607632, 22.605190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735138, 36.681633, 22.376930>,  <39.727516, 36.804970, 21.996496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735138, 36.681633, 22.376930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752017, 0.631289, 0.189593,
		-0.658869, 0.711619, 0.243906,
		0.019057, -0.308338, 0.951086,
		39.740856, 36.589130, 22.662256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839039, 37.393219, 22.414865>,  <39.727516, 36.804970, 21.996496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839039, 37.393219, 22.414865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.931515, 37.096375, 22.666523>,  <39.987000, 36.918270, 22.817518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.931515, 37.096375, 22.666523>,  <39.839039, 37.393219, 22.414865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931515, 37.096375, 22.666523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667940, 0.591256, 0.451966,
		-0.707394, 0.315739, 0.632378,
		0.231194, -0.742109, 0.629145,
		40.000874, 36.873741, 22.855267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832401, 37.599873, 23.122808>,  <39.839039, 37.393219, 22.414865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832401, 37.599873, 23.122808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.057507, 37.269245, 23.126350>,  <40.192570, 37.070869, 23.128475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.057507, 37.269245, 23.126350>,  <39.832401, 37.599873, 23.122808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057507, 37.269245, 23.126350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771373, 0.528973, 0.353796,
		-0.297122, -0.192271, 0.935281,
		0.562763, -0.826571, 0.008857,
		40.226334, 37.021275, 23.129007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175232, 37.570744, 23.675817>,  <39.832401, 37.599873, 23.122808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175232, 37.570744, 23.675817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.413692, 37.337738, 23.454807>,  <40.556770, 37.197937, 23.322201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.413692, 37.337738, 23.454807>,  <40.175232, 37.570744, 23.675817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413692, 37.337738, 23.454807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779853, 0.583735, 0.226017,
		0.190871, -0.565628, 0.802268,
		0.596153, -0.582511, -0.552524,
		40.592537, 37.162987, 23.289049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713161, 37.513592, 24.153013>,  <40.175232, 37.570744, 23.675817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713161, 37.513592, 24.153013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.845936, 37.400188, 23.793137>,  <40.925602, 37.332146, 23.577211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.845936, 37.400188, 23.793137>,  <40.713161, 37.513592, 24.153013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845936, 37.400188, 23.793137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816034, 0.564740, 0.123114,
		0.473187, -0.775044, 0.418808,
		0.331937, -0.283506, -0.899690,
		40.945518, 37.315136, 23.523230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359806, 37.377460, 24.250406>,  <40.713161, 37.513592, 24.153013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359806, 37.377460, 24.250406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335392, 37.424835, 23.853973>,  <41.320744, 37.453259, 23.616114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335392, 37.424835, 23.853973>,  <41.359806, 37.377460, 24.250406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335392, 37.424835, 23.853973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830299, 0.557104, 0.015442,
		0.553966, -0.821953, -0.132342,
		-0.061036, 0.118438, -0.991084,
		41.317081, 37.460365, 23.556648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036957, 37.310970, 24.063848>,  <41.359806, 37.377460, 24.250406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036957, 37.310970, 24.063848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.877277, 37.489735, 23.743622>,  <41.781471, 37.596992, 23.551485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.877277, 37.489735, 23.743622>,  <42.036957, 37.310970, 24.063848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877277, 37.489735, 23.743622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740842, 0.671657, 0.005533,
		0.540179, -0.590885, -0.599217,
		-0.399199, 0.446914, -0.800568,
		41.757519, 37.623810, 23.503452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610039, 37.324879, 23.689095>,  <42.036957, 37.310970, 24.063848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610039, 37.324879, 23.689095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.350357, 37.587955, 23.536266>,  <42.194546, 37.745800, 23.444571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.350357, 37.587955, 23.536266>,  <42.610039, 37.324879, 23.689095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350357, 37.587955, 23.536266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745798, 0.649082, -0.149927,
		0.149389, -0.382280, -0.911891,
		-0.649206, 0.657689, -0.382070,
		42.155594, 37.785263, 23.421646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952747, 37.559341, 23.087734>,  <42.610039, 37.324879, 23.689095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952747, 37.559341, 23.087734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.673176, 37.828491, 23.184677>,  <42.505432, 37.989983, 23.242844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.673176, 37.828491, 23.184677>,  <42.952747, 37.559341, 23.087734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673176, 37.828491, 23.184677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675093, 0.732581, -0.087033,
		-0.236109, 0.102784, -0.966275,
		-0.698929, 0.672875, 0.242358,
		42.463497, 38.030354, 23.257385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878269, 38.107754, 22.483845>,  <42.952747, 37.559341, 23.087734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878269, 38.107754, 22.483845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.721165, 38.263031, 22.817322>,  <42.626904, 38.356197, 23.017408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.721165, 38.263031, 22.817322>,  <42.878269, 38.107754, 22.483845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721165, 38.263031, 22.817322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581242, 0.807303, -0.102082,
		-0.712670, 0.444484, -0.542711,
		-0.392758, 0.388197, 0.833693,
		42.603336, 38.379490, 23.067430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427704, 38.712582, 22.311295>,  <42.878269, 38.107754, 22.483845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427704, 38.712582, 22.311295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.570194, 38.745983, 22.683559>,  <42.655689, 38.766026, 22.906918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.570194, 38.745983, 22.683559>,  <42.427704, 38.712582, 22.311295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570194, 38.745983, 22.683559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516527, 0.812387, -0.270606,
		-0.778654, 0.577108, 0.246261,
		0.356228, 0.083508, 0.930660,
		42.677063, 38.771034, 22.962757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467709, 39.432003, 22.385260>,  <42.427704, 38.712582, 22.311295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467709, 39.432003, 22.385260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.698502, 39.301491, 22.684761>,  <42.836979, 39.223183, 22.864462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.698502, 39.301491, 22.684761>,  <42.467709, 39.432003, 22.385260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698502, 39.301491, 22.684761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692927, 0.680846, -0.237279,
		-0.432368, 0.655738, 0.618923,
		0.576984, -0.326277, 0.748754,
		42.871597, 39.203609, 22.909388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731941, 40.068756, 22.697689>,  <42.467709, 39.432003, 22.385260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731941, 40.068756, 22.697689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.979401, 39.787460, 22.837818>,  <43.127876, 39.618683, 22.921896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.979401, 39.787460, 22.837818>,  <42.731941, 40.068756, 22.697689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979401, 39.787460, 22.837818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779318, 0.605834, -0.160088,
		-0.099657, 0.372051, 0.922847,
		0.618653, -0.703238, 0.350321,
		43.164997, 39.576488, 22.942915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092369, 40.384052, 23.332071>,  <42.731941, 40.068756, 22.697689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092369, 40.384052, 23.332071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.307476, 40.070015, 23.209148>,  <43.436539, 39.881592, 23.135395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.307476, 40.070015, 23.209148>,  <43.092369, 40.384052, 23.332071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307476, 40.070015, 23.209148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829632, 0.557651, 0.027133,
		0.150068, -0.269542, 0.951224,
		0.537764, -0.785094, -0.307306,
		43.468803, 39.834488, 23.116957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727928, 40.464375, 23.603701>,  <43.092369, 40.384052, 23.332071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727928, 40.464375, 23.603701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.814297, 40.194622, 23.321255>,  <43.866116, 40.032772, 23.151787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.814297, 40.194622, 23.321255>,  <43.727928, 40.464375, 23.603701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814297, 40.194622, 23.321255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940297, 0.338474, -0.035732,
		0.263098, -0.656241, 0.707197,
		0.215919, -0.674377, -0.706113,
		43.879074, 39.992310, 23.109421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442783, 40.206638, 23.742298>,  <43.727928, 40.464375, 23.603701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442783, 40.206638, 23.742298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.354031, 40.143562, 23.357403>,  <44.300777, 40.105717, 23.126465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.354031, 40.143562, 23.357403>,  <44.442783, 40.206638, 23.742298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354031, 40.143562, 23.357403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932727, 0.253337, -0.256594,
		0.284233, -0.954439, 0.090874,
		-0.221881, -0.157693, -0.962237,
		44.287468, 40.096252, 23.068731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012680, 39.796684, 23.454943>,  <44.442783, 40.206638, 23.742298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012680, 39.796684, 23.454943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.843624, 39.985672, 23.145584>,  <44.742191, 40.099064, 22.959969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.843624, 39.985672, 23.145584>,  <45.012680, 39.796684, 23.454943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843624, 39.985672, 23.145584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904704, 0.270514, -0.329140,
		0.053707, -0.838805, -0.541776,
		-0.422643, 0.472470, -0.773399,
		44.716831, 40.127415, 22.913565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517628, 39.734066, 22.964027>,  <45.012680, 39.796684, 23.454943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517628, 39.734066, 22.964027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.281475, 40.010174, 22.796707>,  <45.139782, 40.175838, 22.696316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.281475, 40.010174, 22.796707>,  <45.517628, 39.734066, 22.964027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281475, 40.010174, 22.796707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802194, 0.444640, -0.398472,
		-0.089061, -0.570808, -0.816239,
		-0.590383, 0.690271, -0.418299,
		45.104359, 40.217255, 22.671217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557457, 39.663528, 22.211927>,  <45.517628, 39.734066, 22.964027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557457, 39.663528, 22.211927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.442497, 40.038765, 22.289280>,  <45.373524, 40.263905, 22.335691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.442497, 40.038765, 22.289280>,  <45.557457, 39.663528, 22.211927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442497, 40.038765, 22.289280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835181, 0.344282, -0.428884,
		-0.468909, 0.038250, -0.882418,
		-0.287396, 0.938087, 0.193382,
		45.356277, 40.320190, 22.347294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.431440, 26.734882, 27.910049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.776215, 26.749031, 28.112362>,  <28.983080, 26.757521, 28.233749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.776215, 26.749031, 28.112362>,  <28.431440, 26.734882, 27.910049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776215, 26.749031, 28.112362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258766, -0.827173, 0.498823,
		0.436014, -0.560833, -0.703817,
		0.861935, 0.035370, 0.505783,
		29.034796, 26.759642, 28.264097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731947, 26.108385, 27.815626>,  <28.431440, 26.734882, 27.910049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731947, 26.108385, 27.815626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.904425, 26.260098, 28.143093>,  <29.007912, 26.351126, 28.339573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.904425, 26.260098, 28.143093>,  <28.731947, 26.108385, 27.815626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904425, 26.260098, 28.143093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174187, -0.855290, 0.487994,
		0.885285, -0.353022, -0.302731,
		0.431196, 0.379282, 0.818667,
		29.033783, 26.373882, 28.388693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167742, 25.604778, 28.126196>,  <28.731947, 26.108385, 27.815626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167742, 25.604778, 28.126196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.101187, 25.849056, 28.435871>,  <29.061253, 25.995623, 28.621675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.101187, 25.849056, 28.435871>,  <29.167742, 25.604778, 28.126196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101187, 25.849056, 28.435871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170623, -0.791121, 0.587380,
		0.971186, -0.034361, 0.235832,
		-0.166389, 0.610694, 0.774189,
		29.051270, 26.032265, 28.668127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594479, 25.442064, 28.626766>,  <29.167742, 25.604778, 28.126196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594479, 25.442064, 28.626766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.303732, 25.641430, 28.815762>,  <29.129284, 25.761049, 28.929159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.303732, 25.641430, 28.815762>,  <29.594479, 25.442064, 28.626766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303732, 25.641430, 28.815762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018612, -0.702026, 0.711909,
		0.686524, 0.508670, 0.519557,
		-0.726869, 0.498412, 0.472490,
		29.085670, 25.790953, 28.957508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647778, 25.374769, 29.335855>,  <29.594479, 25.442064, 28.626766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647778, 25.374769, 29.335855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.268524, 25.501884, 29.338860>,  <29.040972, 25.578154, 29.340662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.268524, 25.501884, 29.338860>,  <29.647778, 25.374769, 29.335855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268524, 25.501884, 29.338860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170920, -0.529584, 0.830860,
		0.268016, 0.786480, 0.556432,
		-0.948132, 0.317789, 0.007512,
		28.984085, 25.597221, 29.341112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421782, 25.294645, 30.058081>,  <29.647778, 25.374769, 29.335855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421782, 25.294645, 30.058081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.054728, 25.339848, 29.905670>,  <28.834496, 25.366968, 29.814224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.054728, 25.339848, 29.905670>,  <29.421782, 25.294645, 30.058081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054728, 25.339848, 29.905670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355906, -0.660308, 0.661305,
		-0.176862, 0.742444, 0.646139,
		-0.917633, 0.113005, -0.381024,
		28.779438, 25.373749, 29.791363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934450, 25.463310, 30.598457>,  <29.421782, 25.294645, 30.058081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934450, 25.463310, 30.598457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.701929, 25.308743, 30.312027>,  <28.562416, 25.216002, 30.140169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.701929, 25.308743, 30.312027>,  <28.934450, 25.463310, 30.598457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701929, 25.308743, 30.312027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448456, -0.582167, 0.678210,
		-0.678949, 0.715375, 0.165125,
		-0.581305, -0.386419, -0.716076,
		28.527538, 25.192818, 30.097204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177071, 25.482149, 30.857897>,  <28.934450, 25.463310, 30.598457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177071, 25.482149, 30.857897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.210936, 25.199638, 30.576756>,  <28.231255, 25.030132, 30.408072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.210936, 25.199638, 30.576756>,  <28.177071, 25.482149, 30.857897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210936, 25.199638, 30.576756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574173, -0.611078, 0.544894,
		-0.814345, 0.357427, -0.457262,
		0.084663, -0.706279, -0.702852,
		28.236334, 24.987755, 30.365900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505129, 25.313095, 30.652016>,  <28.177071, 25.482149, 30.857897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505129, 25.313095, 30.652016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.754942, 25.011990, 30.568775>,  <27.904829, 24.831327, 30.518831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.754942, 25.011990, 30.568775>,  <27.505129, 25.313095, 30.652016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754942, 25.011990, 30.568775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566979, -0.620249, 0.542057,
		-0.537115, -0.220545, -0.814167,
		0.624535, -0.752762, -0.208101,
		27.942303, 24.786161, 30.506344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020000, 24.711893, 30.496704>,  <27.505129, 25.313095, 30.652016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020000, 24.711893, 30.496704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.379070, 24.554996, 30.577034>,  <27.594511, 24.460859, 30.625233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.379070, 24.554996, 30.577034>,  <27.020000, 24.711893, 30.496704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379070, 24.554996, 30.577034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429602, -0.677507, 0.597015,
		-0.098113, -0.622199, -0.776687,
		0.897672, -0.392241, 0.200826,
		27.648373, 24.437325, 30.637281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904583, 24.061054, 30.501495>,  <27.020000, 24.711893, 30.496704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904583, 24.061054, 30.501495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.246119, 24.084011, 30.708443>,  <27.451040, 24.097786, 30.832611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.246119, 24.084011, 30.708443>,  <26.904583, 24.061054, 30.501495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246119, 24.084011, 30.708443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276213, -0.792485, 0.543759,
		0.441213, -0.607185, -0.660801,
		0.853837, 0.057392, 0.517367,
		27.502270, 24.101229, 30.863653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160755, 23.377306, 30.629288>,  <26.904583, 24.061054, 30.501495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160755, 23.377306, 30.629288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.351995, 23.605450, 30.896454>,  <27.466740, 23.742336, 31.056753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.351995, 23.605450, 30.896454>,  <27.160755, 23.377306, 30.629288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351995, 23.605450, 30.896454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159084, -0.691645, 0.704499,
		0.863778, -0.443076, -0.239941,
		0.478101, 0.570360, 0.667913,
		27.495426, 23.776558, 31.096828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748749, 22.978977, 30.919811>,  <27.160755, 23.377306, 30.629288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748749, 22.978977, 30.919811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.542307, 23.232689, 31.150055>,  <27.418442, 23.384916, 31.288200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.542307, 23.232689, 31.150055>,  <27.748749, 22.978977, 30.919811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542307, 23.232689, 31.150055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186727, -0.739185, 0.647100,
		0.835923, 0.226491, 0.499935,
		-0.516106, 0.634277, 0.575610,
		27.387474, 23.422972, 31.322739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020443, 22.279234, 30.558922>,  <27.748749, 22.978977, 30.919811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020443, 22.279234, 30.558922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.638866, 22.399181, 30.562328>,  <27.409920, 22.471149, 30.564373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.638866, 22.399181, 30.562328>,  <28.020443, 22.279234, 30.558922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638866, 22.399181, 30.562328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123595, 0.418739, -0.899657,
		-0.273344, -0.857168, -0.436515,
		-0.953943, 0.299867, 0.008518,
		27.352684, 22.489141, 30.564884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271730, 21.755373, 30.020981>,  <28.020443, 22.279234, 30.558922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271730, 21.755373, 30.020981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.639330, 21.599022, 30.041588>,  <28.859890, 21.505211, 30.053951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.639330, 21.599022, 30.041588>,  <28.271730, 21.755373, 30.020981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639330, 21.599022, 30.041588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358309, 0.773533, -0.522744,
		0.164478, 0.498861, 0.850932,
		0.919000, -0.390876, 0.051517,
		28.915030, 21.481760, 30.057043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782217, 22.276747, 30.169586>,  <28.271730, 21.755373, 30.020981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782217, 22.276747, 30.169586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.997826, 21.998177, 29.980083>,  <29.127192, 21.831034, 29.866383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.997826, 21.998177, 29.980083>,  <28.782217, 22.276747, 30.169586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997826, 21.998177, 29.980083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417102, 0.709355, -0.568192,
		0.731765, 0.108664, 0.672839,
		0.539023, -0.696425, -0.473757,
		29.159533, 21.789249, 29.837955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426727, 22.571487, 30.126213>,  <28.782217, 22.276747, 30.169586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426727, 22.571487, 30.126213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.467344, 22.265301, 29.872047>,  <29.491714, 22.081589, 29.719549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.467344, 22.265301, 29.872047>,  <29.426727, 22.571487, 30.126213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467344, 22.265301, 29.872047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450666, 0.604810, -0.656585,
		0.886899, -0.219688, 0.406384,
		0.101541, -0.765468, -0.635412,
		29.497807, 22.035660, 29.681423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016407, 22.729900, 29.762505>,  <29.426727, 22.571487, 30.126213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016407, 22.729900, 29.762505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.808863, 22.473511, 29.536255>,  <29.684336, 22.319677, 29.400505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.808863, 22.473511, 29.536255>,  <30.016407, 22.729900, 29.762505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808863, 22.473511, 29.536255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228495, 0.533598, -0.814287,
		0.823755, -0.551745, -0.130403,
		-0.518861, -0.640977, -0.565626,
		29.653204, 22.281218, 29.366568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429312, 22.478495, 29.230675>,  <30.016407, 22.729900, 29.762505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429312, 22.478495, 29.230675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.066498, 22.386135, 29.089836>,  <29.848808, 22.330719, 29.005333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.066498, 22.386135, 29.089836>,  <30.429312, 22.478495, 29.230675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066498, 22.386135, 29.089836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211735, 0.472672, -0.855424,
		0.363940, -0.850452, -0.379842,
		-0.907037, -0.230897, -0.352094,
		29.794386, 22.316866, 28.984207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549042, 22.192503, 28.611170>,  <30.429312, 22.478495, 29.230675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549042, 22.192503, 28.611170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.166065, 22.304092, 28.581566>,  <29.936279, 22.371046, 28.563803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.166065, 22.304092, 28.581566>,  <30.549042, 22.192503, 28.611170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166065, 22.304092, 28.581566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178975, 0.372685, -0.910535,
		-0.226432, -0.885031, -0.406754,
		-0.957443, 0.278972, -0.074010,
		29.878832, 22.387783, 28.559362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165651, 21.860241, 27.937216>,  <30.549042, 22.192503, 28.611170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165651, 21.860241, 27.937216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.006075, 22.208668, 28.051819>,  <29.910330, 22.417725, 28.120581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.006075, 22.208668, 28.051819>,  <30.165651, 21.860241, 27.937216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006075, 22.208668, 28.051819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141582, 0.367216, -0.919297,
		-0.905981, -0.326180, -0.269824,
		-0.398940, 0.871068, 0.286510,
		29.886393, 22.469988, 28.137772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245792, 22.214167, 27.385448>,  <30.165651, 21.860241, 27.937216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245792, 22.214167, 27.385448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109663, 22.513866, 27.612713>,  <30.027985, 22.693686, 27.749071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109663, 22.513866, 27.612713>,  <30.245792, 22.214167, 27.385448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109663, 22.513866, 27.612713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069283, 0.622566, -0.779494,
		-0.937753, -0.225916, -0.263784,
		-0.340323, 0.749249, 0.568161,
		30.007566, 22.738642, 27.783161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754250, 22.512451, 26.985512>,  <30.245792, 22.214167, 27.385448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754250, 22.512451, 26.985512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.896585, 22.765556, 27.260609>,  <29.981987, 22.917419, 27.425667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.896585, 22.765556, 27.260609>,  <29.754250, 22.512451, 26.985512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896585, 22.765556, 27.260609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001923, 0.735413, -0.677616,
		-0.934544, 0.242447, 0.260473,
		0.355842, 0.632762, 0.687742,
		30.003338, 22.955385, 27.466932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460756, 23.169128, 26.887831>,  <29.754250, 22.512451, 26.985512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460756, 23.169128, 26.887831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.733795, 23.314766, 27.141285>,  <29.897619, 23.402149, 27.293358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.733795, 23.314766, 27.141285>,  <29.460756, 23.169128, 26.887831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733795, 23.314766, 27.141285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000110, 0.867000, -0.498308,
		-0.730793, 0.340214, 0.591773,
		0.682599, 0.364095, 0.633635,
		29.938576, 23.423994, 27.331375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322760, 23.972635, 27.030867>,  <29.460756, 23.169128, 26.887831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322760, 23.972635, 27.030867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.704937, 23.908894, 27.130249>,  <29.934244, 23.870649, 27.189878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.704937, 23.908894, 27.130249>,  <29.322760, 23.972635, 27.030867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704937, 23.908894, 27.130249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262166, 0.844903, -0.466271,
		-0.135620, 0.510633, 0.849036,
		0.955446, -0.159353, 0.248456,
		29.991571, 23.861088, 27.204786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591875, 24.660595, 27.337719>,  <29.322760, 23.972635, 27.030867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591875, 24.660595, 27.337719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.899967, 24.438454, 27.212288>,  <30.084822, 24.305170, 27.137030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.899967, 24.438454, 27.212288>,  <29.591875, 24.660595, 27.337719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899967, 24.438454, 27.212288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278851, 0.735441, -0.617550,
		0.573575, 0.388214, 0.721320,
		0.770230, -0.555352, -0.313577,
		30.131037, 24.271849, 27.118216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151243, 25.092762, 27.377407>,  <29.591875, 24.660595, 27.337719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151243, 25.092762, 27.377407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.317188, 24.818623, 27.138012>,  <30.416756, 24.654139, 26.994375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.317188, 24.818623, 27.138012>,  <30.151243, 25.092762, 27.377407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317188, 24.818623, 27.138012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247862, 0.718010, -0.650405,
		0.875473, 0.121486, 0.467748,
		0.414863, -0.685349, -0.598486,
		30.441647, 24.613018, 26.958466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818007, 25.391483, 27.218578>,  <30.151243, 25.092762, 27.377407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818007, 25.391483, 27.218578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687868, 25.139759, 26.936268>,  <30.609785, 24.988724, 26.766882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687868, 25.139759, 26.936268>,  <30.818007, 25.391483, 27.218578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687868, 25.139759, 26.936268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025456, 0.740282, -0.671814,
		0.945253, -0.236537, -0.224828,
		-0.325345, -0.629311, -0.705775,
		30.590265, 24.950966, 26.724535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583570, 25.255150, 27.123140>,  <30.818007, 25.391483, 27.218578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583570, 25.255150, 27.123140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.851412, 25.425426, 27.366589>,  <32.012115, 25.527592, 27.512657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.851412, 25.425426, 27.366589>,  <31.583570, 25.255150, 27.123140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851412, 25.425426, 27.366589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012148, -0.825618, 0.564099,
		0.742620, -0.370329, -0.558007,
		0.669603, 0.425690, 0.608621,
		32.052292, 25.553133, 27.549175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019428, 24.678875, 27.502401>,  <31.583570, 25.255150, 27.123140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019428, 24.678875, 27.502401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.036652, 24.988625, 27.754906>,  <32.046986, 25.174475, 27.906408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.036652, 24.988625, 27.754906>,  <32.019428, 24.678875, 27.502401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036652, 24.988625, 27.754906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113879, -0.623924, 0.773143,
		0.992561, -0.105175, 0.061322,
		0.043055, 0.774375, 0.631260,
		32.049568, 25.220938, 27.944284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290291, 24.372810, 28.176611>,  <32.019428, 24.678875, 27.502401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290291, 24.372810, 28.176611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132488, 24.725967, 28.278488>,  <32.037807, 24.937860, 28.339615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132488, 24.725967, 28.278488>,  <32.290291, 24.372810, 28.176611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132488, 24.725967, 28.278488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264219, -0.374461, 0.888801,
		0.880087, 0.283341, 0.381004,
		-0.394505, 0.882891, 0.254694,
		32.014137, 24.990835, 28.354897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753357, 24.627283, 28.781321>,  <32.290291, 24.372810, 28.176611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753357, 24.627283, 28.781321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384815, 24.781685, 28.799721>,  <32.163692, 24.874325, 28.810760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384815, 24.781685, 28.799721>,  <32.753357, 24.627283, 28.781321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384815, 24.781685, 28.799721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150904, -0.464203, 0.872779,
		0.358250, 0.797193, 0.485943,
		-0.921350, 0.386003, 0.046001,
		32.108410, 24.897486, 28.813520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731541, 24.835110, 29.531368>,  <32.753357, 24.627283, 28.781321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731541, 24.835110, 29.531368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361755, 24.810875, 29.380798>,  <32.139885, 24.796333, 29.290457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361755, 24.810875, 29.380798>,  <32.731541, 24.835110, 29.531368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361755, 24.810875, 29.380798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331332, -0.360812, 0.871799,
		-0.188637, 0.930669, 0.313484,
		-0.924465, -0.060586, -0.376423,
		32.084415, 24.792700, 29.267872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371437, 24.944719, 30.110788>,  <32.731541, 24.835110, 29.531368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371437, 24.944719, 30.110788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092037, 24.806190, 29.860298>,  <31.924398, 24.723072, 29.710003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092037, 24.806190, 29.860298>,  <32.371437, 24.944719, 30.110788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092037, 24.806190, 29.860298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371327, -0.572656, 0.730877,
		-0.611733, 0.743051, 0.271400,
		-0.698498, -0.346323, -0.626227,
		31.882488, 24.702293, 29.672430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707621, 25.053211, 30.397375>,  <32.371437, 24.944719, 30.110788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707621, 25.053211, 30.397375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.632273, 24.740639, 30.159424>,  <31.587063, 24.553095, 30.016653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.632273, 24.740639, 30.159424>,  <31.707621, 25.053211, 30.397375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632273, 24.740639, 30.159424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261092, -0.544076, 0.797378,
		-0.946756, 0.305520, -0.101538,
		-0.188371, -0.781434, -0.594876,
		31.575762, 24.506208, 29.980961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346241, 25.458103, 30.936300>,  <31.707621, 25.053211, 30.397375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346241, 25.458103, 30.936300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.545345, 25.582745, 31.260063>,  <31.664808, 25.657530, 31.454321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.545345, 25.582745, 31.260063>,  <31.346241, 25.458103, 30.936300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545345, 25.582745, 31.260063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229124, 0.852836, -0.469226,
		-0.836503, 0.419016, 0.353112,
		0.497759, 0.311603, 0.809407,
		31.694674, 25.676226, 31.502886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152008, 26.107031, 31.023579>,  <31.346241, 25.458103, 30.936300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152008, 26.107031, 31.023579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515785, 26.058830, 31.182774>,  <31.734051, 26.029909, 31.278290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515785, 26.058830, 31.182774>,  <31.152008, 26.107031, 31.023579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515785, 26.058830, 31.182774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301069, 0.850990, -0.430317,
		-0.286829, 0.511170, 0.810207,
		0.909443, -0.120501, 0.397986,
		31.788618, 26.022680, 31.302170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369293, 26.778429, 31.155836>,  <31.152008, 26.107031, 31.023579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369293, 26.778429, 31.155836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734304, 26.616280, 31.177628>,  <31.953310, 26.518990, 31.190702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734304, 26.616280, 31.177628>,  <31.369293, 26.778429, 31.155836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734304, 26.616280, 31.177628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400978, 0.860342, -0.314689,
		0.080697, 0.309006, 0.947630,
		0.912527, -0.405373, 0.054478,
		32.008064, 26.494667, 31.193972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851475, 27.242998, 31.404690>,  <31.369293, 26.778429, 31.155836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851475, 27.242998, 31.404690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.079575, 26.978733, 31.209408>,  <32.216434, 26.820175, 31.092239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.079575, 26.978733, 31.209408>,  <31.851475, 27.242998, 31.404690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079575, 26.978733, 31.209408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448321, 0.748286, -0.488955,
		0.688350, 0.059954, 0.722897,
		0.570248, -0.660662, -0.488204,
		32.250648, 26.780535, 31.062946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670116, 27.381536, 31.510527>,  <31.851475, 27.242998, 31.404690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670116, 27.381536, 31.510527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.661343, 27.178291, 31.166122>,  <32.656078, 27.056343, 30.959480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.661343, 27.178291, 31.166122>,  <32.670116, 27.381536, 31.510527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661343, 27.178291, 31.166122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614958, 0.672167, -0.412334,
		0.788255, -0.538527, 0.297728,
		-0.021930, -0.508114, -0.861010,
		32.654762, 27.025858, 30.907820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396809, 27.413797, 31.142328>,  <32.670116, 27.381536, 31.510527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396809, 27.413797, 31.142328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141685, 27.295303, 30.857948>,  <32.988613, 27.224207, 30.687321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141685, 27.295303, 30.857948>,  <33.396809, 27.413797, 31.142328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141685, 27.295303, 30.857948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438758, 0.618905, -0.651497,
		0.633016, -0.727458, -0.264755,
		-0.637794, -0.296245, -0.710955,
		32.950344, 27.206432, 30.644663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800098, 27.394583, 30.451004>,  <33.396809, 27.413797, 31.142328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800098, 27.394583, 30.451004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421188, 27.418835, 30.325146>,  <33.193844, 27.433386, 30.249630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421188, 27.418835, 30.325146>,  <33.800098, 27.394583, 30.451004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421188, 27.418835, 30.325146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276341, 0.651669, -0.706374,
		0.162217, -0.756077, -0.634061,
		-0.947270, 0.060631, -0.314647,
		33.137009, 27.437023, 30.230751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.995607, 25.676121, 33.946114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.832251, 25.539783, 33.607403>,  <28.734236, 25.457981, 33.404175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.832251, 25.539783, 33.607403>,  <28.995607, 25.676121, 33.946114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832251, 25.539783, 33.607403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599988, 0.598881, -0.530429,
		0.687916, -0.724683, -0.040076,
		-0.408394, -0.340846, -0.846781,
		28.709732, 25.437531, 33.353367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517097, 25.601673, 33.497459>,  <28.995607, 25.676121, 33.946114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517097, 25.601673, 33.497459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.194052, 25.629257, 33.263195>,  <29.000225, 25.645807, 33.122635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.194052, 25.629257, 33.263195>,  <29.517097, 25.601673, 33.497459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194052, 25.629257, 33.263195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454887, 0.704866, -0.544280,
		0.375281, -0.705980, -0.600630,
		-0.807615, 0.068961, -0.585665,
		28.951767, 25.649946, 33.087494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786243, 25.878946, 32.861309>,  <29.517097, 25.601673, 33.497459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786243, 25.878946, 32.861309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.389156, 25.922657, 32.841045>,  <29.150904, 25.948883, 32.828888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.389156, 25.922657, 32.841045>,  <29.786243, 25.878946, 32.861309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389156, 25.922657, 32.841045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118174, 0.802303, -0.585102,
		-0.023298, -0.586828, -0.809376,
		-0.992720, 0.109279, -0.050656,
		29.091341, 25.955441, 32.825848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612307, 25.819622, 32.059410>,  <29.786243, 25.878946, 32.861309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612307, 25.819622, 32.059410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.342651, 26.001259, 32.292423>,  <29.180859, 26.110241, 32.432232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.342651, 26.001259, 32.292423>,  <29.612307, 25.819622, 32.059410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342651, 26.001259, 32.292423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147597, 0.855601, -0.496147,
		-0.723708, -0.248492, -0.643816,
		-0.674138, 0.454091, 0.582528,
		29.140409, 26.137486, 32.467182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123741, 26.102633, 31.524515>,  <29.612307, 25.819622, 32.059410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123741, 26.102633, 31.524515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.066216, 26.326778, 31.850780>,  <29.031700, 26.461266, 32.046539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.066216, 26.326778, 31.850780>,  <29.123741, 26.102633, 31.524515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066216, 26.326778, 31.850780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188122, 0.824683, -0.533393,
		-0.971559, 0.076734, -0.224020,
		-0.143816, 0.560366, 0.815663,
		29.023071, 26.494888, 32.095478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572115, 26.621132, 31.396803>,  <29.123741, 26.102633, 31.524515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572115, 26.621132, 31.396803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.804558, 26.758083, 31.692123>,  <28.944023, 26.840254, 31.869316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.804558, 26.758083, 31.692123>,  <28.572115, 26.621132, 31.396803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804558, 26.758083, 31.692123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150045, 0.846572, -0.510688,
		-0.799874, 0.407544, 0.440578,
		0.581109, 0.342379, 0.738301,
		28.978891, 26.860798, 31.913614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265724, 27.193998, 31.444019>,  <28.572115, 26.621132, 31.396803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265724, 27.193998, 31.444019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.620302, 27.247017, 31.621399>,  <28.833050, 27.278828, 31.727827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.620302, 27.247017, 31.621399>,  <28.265724, 27.193998, 31.444019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620302, 27.247017, 31.621399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148630, 0.825851, -0.543948,
		-0.438322, 0.548090, 0.712371,
		0.886444, 0.132544, 0.443451,
		28.886236, 27.286779, 31.754435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268667, 27.869394, 31.620026>,  <28.265724, 27.193998, 31.444019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268667, 27.869394, 31.620026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.659536, 27.789368, 31.648598>,  <28.894058, 27.741352, 31.665741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.659536, 27.789368, 31.648598>,  <28.268667, 27.869394, 31.620026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659536, 27.789368, 31.648598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212274, 0.932710, -0.291534,
		-0.008299, 0.300043, 0.953890,
		0.977175, -0.200067, 0.071432,
		28.952688, 27.729347, 31.670027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495871, 28.318268, 32.077507>,  <28.268667, 27.869394, 31.620026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495871, 28.318268, 32.077507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.803179, 28.213730, 31.843769>,  <28.987564, 28.151007, 31.703526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.803179, 28.213730, 31.843769>,  <28.495871, 28.318268, 32.077507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803179, 28.213730, 31.843769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132035, 0.957927, -0.254838,
		0.626360, 0.118631, 0.770454,
		0.768270, -0.261347, -0.584344,
		29.033659, 28.135326, 31.668467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079710, 28.750370, 32.233635>,  <28.495871, 28.318268, 32.077507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079710, 28.750370, 32.233635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.166981, 28.621151, 31.865280>,  <29.219343, 28.543619, 31.644266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.166981, 28.621151, 31.865280>,  <29.079710, 28.750370, 32.233635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166981, 28.621151, 31.865280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052080, 0.946132, -0.319565,
		0.974519, 0.021762, 0.223247,
		0.218175, -0.323049, -0.920890,
		29.232433, 28.524237, 31.589012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464968, 29.182201, 32.112637>,  <29.079710, 28.750370, 32.233635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464968, 29.182201, 32.112637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.350674, 29.035706, 31.758411>,  <29.282097, 28.947807, 31.545876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.350674, 29.035706, 31.758411>,  <29.464968, 29.182201, 32.112637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350674, 29.035706, 31.758411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058814, 0.915646, -0.397659,
		0.956503, -0.165708, -0.240090,
		-0.285733, -0.366242, -0.885564,
		29.264954, 28.925833, 31.492743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913622, 29.521143, 31.702248>,  <29.464968, 29.182201, 32.112637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913622, 29.521143, 31.702248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.647310, 29.382702, 31.437840>,  <29.487522, 29.299637, 31.279194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.647310, 29.382702, 31.437840>,  <29.913622, 29.521143, 31.702248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647310, 29.382702, 31.437840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148063, 0.807011, -0.571674,
		0.731310, -0.478482, -0.486046,
		-0.665780, -0.346105, -0.661021,
		29.447577, 29.278870, 31.239534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606747, 29.218449, 31.821560>,  <29.913622, 29.521143, 31.702248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606747, 29.218449, 31.821560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.891108, 29.439487, 31.995575>,  <31.061724, 29.572111, 32.099983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.891108, 29.439487, 31.995575>,  <30.606747, 29.218449, 31.821560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891108, 29.439487, 31.995575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011642, -0.609243, 0.792898,
		0.703196, -0.568736, -0.426678,
		0.710900, 0.552595, 0.435039,
		31.104378, 29.605267, 32.126087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881140, 28.720158, 32.259647>,  <30.606747, 29.218449, 31.821560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881140, 28.720158, 32.259647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.044971, 29.052437, 32.410477>,  <31.143270, 29.251804, 32.500973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.044971, 29.052437, 32.410477>,  <30.881140, 28.720158, 32.259647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044971, 29.052437, 32.410477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231944, -0.494574, 0.837615,
		0.882297, -0.255609, -0.395242,
		0.409578, 0.830699, 0.377074,
		31.167845, 29.301647, 32.523598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617258, 28.600067, 32.412601>,  <30.881140, 28.720158, 32.259647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617258, 28.600067, 32.412601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.482887, 28.898746, 32.642242>,  <31.402266, 29.077953, 32.780025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.482887, 28.898746, 32.642242>,  <31.617258, 28.600067, 32.412601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482887, 28.898746, 32.642242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216110, -0.532159, 0.818599,
		0.916760, 0.399059, 0.017398,
		-0.335928, 0.746699, 0.574103,
		31.382109, 29.122757, 32.814472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057938, 28.624451, 33.104755>,  <31.617258, 28.600067, 32.412601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057938, 28.624451, 33.104755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.697737, 28.788723, 33.161938>,  <31.481617, 28.887287, 33.196247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.697737, 28.788723, 33.161938>,  <32.057938, 28.624451, 33.104755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697737, 28.788723, 33.161938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064812, -0.451833, 0.889745,
		0.429994, 0.791953, 0.433493,
		-0.900503, 0.410680, 0.142957,
		31.427586, 28.911926, 33.204826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129528, 28.822355, 33.809906>,  <32.057938, 28.624451, 33.104755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129528, 28.822355, 33.809906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.749441, 28.774048, 33.695015>,  <31.521389, 28.745064, 33.626080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.749441, 28.774048, 33.695015>,  <32.129528, 28.822355, 33.809906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749441, 28.774048, 33.695015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198219, -0.476952, 0.856286,
		-0.240410, 0.870593, 0.429268,
		-0.950217, -0.120770, -0.287232,
		31.464376, 28.737816, 33.608845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855913, 28.720203, 34.431488>,  <32.129528, 28.822355, 33.809906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855913, 28.720203, 34.431488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.559660, 28.622559, 34.181091>,  <31.381908, 28.563972, 34.030853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.559660, 28.622559, 34.181091>,  <31.855913, 28.720203, 34.431488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559660, 28.622559, 34.181091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358141, -0.644860, 0.675196,
		-0.568503, 0.724268, 0.390179,
		-0.740634, -0.244112, -0.625995,
		31.337469, 28.549326, 33.993294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212917, 28.672035, 34.822723>,  <31.855913, 28.720203, 34.431488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212917, 28.672035, 34.822723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.109674, 28.445438, 34.509682>,  <31.047728, 28.309481, 34.321857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.109674, 28.445438, 34.509682>,  <31.212917, 28.672035, 34.822723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109674, 28.445438, 34.509682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290925, -0.726878, 0.622103,
		-0.921272, 0.388249, 0.022808,
		-0.258109, -0.566490, -0.782603,
		31.032242, 28.275492, 34.274902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528868, 28.355871, 34.996597>,  <31.212917, 28.672035, 34.822723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528868, 28.355871, 34.996597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.711775, 28.137154, 34.716049>,  <30.821520, 28.005922, 34.547722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.711775, 28.137154, 34.716049>,  <30.528868, 28.355871, 34.996597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711775, 28.137154, 34.716049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292218, -0.837242, 0.462206,
		-0.839961, -0.006384, -0.542609,
		0.457246, -0.546795, -0.701386,
		30.848955, 27.973116, 34.505638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093275, 27.764788, 34.958157>,  <30.528868, 28.355871, 34.996597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093275, 27.764788, 34.958157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.424162, 27.637623, 34.772839>,  <30.622694, 27.561325, 34.661648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.424162, 27.637623, 34.772839>,  <30.093275, 27.764788, 34.958157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424162, 27.637623, 34.772839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178826, -0.930629, 0.319297,
		-0.532665, -0.181278, -0.826684,
		0.827218, -0.317911, -0.463297,
		30.672327, 27.542250, 34.633850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783993, 27.185793, 34.622860>,  <30.093275, 27.764788, 34.958157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783993, 27.185793, 34.622860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.181534, 27.158222, 34.588215>,  <30.420059, 27.141680, 34.567429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.181534, 27.158222, 34.588215>,  <29.783993, 27.185793, 34.622860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181534, 27.158222, 34.588215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041801, -0.958237, 0.282904,
		-0.102497, -0.277545, -0.955229,
		0.993854, -0.068926, -0.086615,
		30.479691, 27.137545, 34.562229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953157, 26.678108, 34.010067>,  <29.783993, 27.185793, 34.622860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953157, 26.678108, 34.010067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.232008, 26.686161, 34.296734>,  <30.399319, 26.690992, 34.468735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.232008, 26.686161, 34.296734>,  <29.953157, 26.678108, 34.010067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232008, 26.686161, 34.296734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089491, -0.989345, 0.114841,
		0.711339, -0.144194, -0.687899,
		0.697129, 0.020130, 0.716664,
		30.441147, 26.692200, 34.511734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364309, 26.190134, 33.790695>,  <29.953157, 26.678108, 34.010067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364309, 26.190134, 33.790695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.447235, 26.232189, 34.179737>,  <30.496990, 26.257421, 34.413162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.447235, 26.232189, 34.179737>,  <30.364309, 26.190134, 33.790695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447235, 26.232189, 34.179737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119397, -0.984056, 0.131824,
		0.970961, -0.143456, -0.191457,
		0.207315, 0.105136, 0.972608,
		30.509430, 26.263731, 34.471519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894073, 25.646969, 33.939465>,  <30.364309, 26.190134, 33.790695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894073, 25.646969, 33.939465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.712652, 25.750477, 34.280598>,  <30.603800, 25.812582, 34.485279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.712652, 25.750477, 34.280598>,  <30.894073, 25.646969, 33.939465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712652, 25.750477, 34.280598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026792, -0.952529, 0.303266,
		0.890826, 0.160397, 0.425091,
		-0.453555, 0.258768, 0.852835,
		30.576586, 25.828108, 34.536449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304504, 25.370756, 34.524117>,  <30.894073, 25.646969, 33.939465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304504, 25.370756, 34.524117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.948330, 25.434158, 34.694763>,  <30.734625, 25.472200, 34.797150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.948330, 25.434158, 34.694763>,  <31.304504, 25.370756, 34.524117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948330, 25.434158, 34.694763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011822, -0.929019, 0.369844,
		0.454956, 0.334366, 0.825357,
		-0.890435, 0.158506, 0.426615,
		30.681200, 25.481710, 34.822746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852032, 24.863899, 34.172089>,  <31.304504, 25.370756, 34.524117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852032, 24.863899, 34.172089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.984211, 24.539070, 33.979698>,  <31.063519, 24.344173, 33.864262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.984211, 24.539070, 33.979698>,  <30.852032, 24.863899, 34.172089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984211, 24.539070, 33.979698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399712, 0.582061, -0.708121,
		0.855006, 0.041743, 0.516936,
		0.330447, -0.812073, -0.480981,
		31.083345, 24.295448, 33.835403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640572, 24.937483, 34.053677>,  <30.852032, 24.863899, 34.172089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640572, 24.937483, 34.053677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.488535, 24.701355, 33.768845>,  <31.397312, 24.559677, 33.597946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.488535, 24.701355, 33.768845>,  <31.640572, 24.937483, 34.053677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488535, 24.701355, 33.768845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408190, 0.583778, -0.701844,
		0.830007, -0.557427, 0.019075,
		-0.380091, -0.590322, -0.712076,
		31.374508, 24.524260, 33.555222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129478, 24.801762, 33.624485>,  <31.640572, 24.937483, 34.053677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129478, 24.801762, 33.624485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.827406, 24.695133, 33.384941>,  <31.646162, 24.631157, 33.241215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.827406, 24.695133, 33.384941>,  <32.129478, 24.801762, 33.624485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827406, 24.695133, 33.384941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388121, 0.554401, -0.736208,
		0.528260, -0.788404, -0.315215,
		-0.755185, -0.266568, -0.598864,
		31.600851, 24.615162, 33.205280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425663, 24.756500, 33.003410>,  <32.129478, 24.801762, 33.624485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425663, 24.756500, 33.003410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.040989, 24.758923, 32.893780>,  <31.810184, 24.760376, 32.827999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.040989, 24.758923, 32.893780>,  <32.425663, 24.756500, 33.003410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040989, 24.758923, 32.893780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239812, 0.503024, -0.830335,
		0.132838, -0.864251, -0.485205,
		-0.961688, 0.006058, -0.274078,
		31.752483, 24.760740, 32.811558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314255, 24.491093, 32.324341>,  <32.425663, 24.756500, 33.003410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314255, 24.491093, 32.324341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.016533, 24.744652, 32.408417>,  <31.837898, 24.896788, 32.458862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.016533, 24.744652, 32.408417>,  <32.314255, 24.491093, 32.324341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016533, 24.744652, 32.408417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201332, 0.513074, -0.834398,
		-0.636765, -0.578732, -0.509509,
		-0.744309, 0.633896, 0.210191,
		31.793240, 24.934820, 32.471474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193787, 24.683693, 31.709093>,  <32.314255, 24.491093, 32.324341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193787, 24.683693, 31.709093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.966722, 24.922989, 31.935322>,  <31.830484, 25.066566, 32.071060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.966722, 24.922989, 31.935322>,  <32.193787, 24.683693, 31.709093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966722, 24.922989, 31.935322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031446, 0.702242, -0.711243,
		-0.822664, -0.385958, -0.417446,
		-0.567658, 0.598241, 0.565573,
		31.796425, 25.102461, 32.104992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669077, 24.828703, 31.249794>,  <32.193787, 24.683693, 31.709093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669077, 24.828703, 31.249794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.679880, 25.102661, 31.541050>,  <31.686363, 25.267036, 31.715803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.679880, 25.102661, 31.541050>,  <31.669077, 24.828703, 31.249794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679880, 25.102661, 31.541050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256647, 0.699241, -0.667229,
		-0.966128, 0.204898, -0.156890,
		0.027010, 0.684894, 0.728142,
		31.687983, 25.308128, 31.759493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117403, 24.771488, 30.676727>,  <31.669077, 24.828703, 31.249794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117403, 24.771488, 30.676727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.228241, 24.488342, 30.416836>,  <31.294743, 24.318455, 30.260900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.228241, 24.488342, 30.416836>,  <31.117403, 24.771488, 30.676727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228241, 24.488342, 30.416836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318195, -0.705653, 0.633092,
		-0.906626, 0.031315, -0.420771,
		0.277093, -0.707865, -0.649728,
		31.311369, 24.275982, 30.221918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495949, 24.319592, 30.639944>,  <31.117403, 24.771488, 30.676727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495949, 24.319592, 30.639944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.833179, 24.132034, 30.534599>,  <31.035519, 24.019499, 30.471392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.833179, 24.132034, 30.534599>,  <30.495949, 24.319592, 30.639944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833179, 24.132034, 30.534599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270558, -0.793028, 0.545807,
		-0.464781, -0.388902, -0.795446,
		0.843076, -0.468895, -0.263364,
		31.086102, 23.991365, 30.455589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337778, 23.574888, 30.458981>,  <30.495949, 24.319592, 30.639944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337778, 23.574888, 30.458981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.728607, 23.571335, 30.544067>,  <30.963104, 23.569202, 30.595119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.728607, 23.571335, 30.544067>,  <30.337778, 23.574888, 30.458981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728607, 23.571335, 30.544067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122560, -0.840453, 0.527842,
		0.174090, -0.541811, -0.822273,
		0.977073, -0.008885, 0.212719,
		31.021729, 23.568668, 30.607883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620167, 22.943792, 30.250227>,  <30.337778, 23.574888, 30.458981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620167, 22.943792, 30.250227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.888100, 23.084461, 30.511806>,  <31.048859, 23.168863, 30.668755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.888100, 23.084461, 30.511806>,  <30.620167, 22.943792, 30.250227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888100, 23.084461, 30.511806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031976, -0.866247, 0.498593,
		0.741823, -0.354885, -0.568995,
		0.669833, 0.351673, 0.653949,
		31.089050, 23.189962, 30.707991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037766, 22.379372, 30.362320>,  <30.620167, 22.943792, 30.250227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037766, 22.379372, 30.362320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.114923, 22.611473, 30.678825>,  <31.161219, 22.750734, 30.868729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.114923, 22.611473, 30.678825>,  <31.037766, 22.379372, 30.362320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114923, 22.611473, 30.678825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001507, -0.806582, 0.591120,
		0.981218, -0.112832, -0.156461,
		0.192896, 0.580254, 0.791263,
		31.172792, 22.785549, 30.916204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526514, 21.994251, 30.800285>,  <31.037766, 22.379372, 30.362320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526514, 21.994251, 30.800285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.371637, 22.244858, 31.070858>,  <31.278711, 22.395222, 31.233202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.371637, 22.244858, 31.070858>,  <31.526514, 21.994251, 30.800285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371637, 22.244858, 31.070858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110809, -0.759960, 0.640454,
		0.915317, 0.173024, 0.363673,
		-0.387191, 0.626517, 0.676432,
		31.255480, 22.432814, 31.273787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934500, 21.803204, 31.378473>,  <31.526514, 21.994251, 30.800285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934500, 21.803204, 31.378473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.623398, 22.007290, 31.525322>,  <31.436737, 22.129742, 31.613432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.623398, 22.007290, 31.525322>,  <31.934500, 21.803204, 31.378473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623398, 22.007290, 31.525322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105583, -0.681806, 0.723873,
		0.619636, 0.524235, 0.584148,
		-0.777755, 0.510214, 0.367122,
		31.390072, 22.160355, 31.635458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122154, 22.195217, 32.087521>,  <31.934500, 21.803204, 31.378473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122154, 22.195217, 32.087521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.725107, 22.149521, 32.071228>,  <31.486879, 22.122103, 32.061455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.725107, 22.149521, 32.071228>,  <32.122154, 22.195217, 32.087521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725107, 22.149521, 32.071228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016691, -0.461280, 0.887097,
		-0.120130, 0.879869, 0.459782,
		-0.992618, -0.114241, -0.040727,
		31.427322, 22.115248, 32.059010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897539, 22.376036, 32.746952>,  <32.122154, 22.195217, 32.087521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897539, 22.376036, 32.746952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.644829, 22.110462, 32.586926>,  <31.493202, 21.951118, 32.490910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.644829, 22.110462, 32.586926>,  <31.897539, 22.376036, 32.746952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644829, 22.110462, 32.586926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052096, -0.478578, 0.876498,
		-0.773397, 0.574594, 0.267767,
		-0.631778, -0.663931, -0.400065,
		31.455296, 21.911283, 32.466908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.011959, 33.160423, 20.950356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650028, 32.993134, 20.982319>,  <31.432871, 32.892761, 21.001497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650028, 32.993134, 20.982319>,  <32.011959, 33.160423, 20.950356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650028, 32.993134, 20.982319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154740, -0.148150, 0.976784,
		-0.396673, 0.896183, 0.198765,
		-0.904824, -0.418221, 0.079908,
		31.378582, 32.867668, 21.006290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722828, 33.425137, 21.480125>,  <32.011959, 33.160423, 20.950356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722828, 33.425137, 21.480125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552366, 33.065994, 21.435867>,  <31.450089, 32.850510, 21.409313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552366, 33.065994, 21.435867>,  <31.722828, 33.425137, 21.480125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552366, 33.065994, 21.435867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101204, -0.168855, 0.980431,
		-0.898971, 0.406618, 0.162825,
		-0.426155, -0.897858, -0.110644,
		31.424520, 32.796638, 21.402674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194447, 33.325840, 22.088261>,  <31.722828, 33.425137, 21.480125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194447, 33.325840, 22.088261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308319, 32.962894, 21.964554>,  <31.376642, 32.745129, 21.890329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308319, 32.962894, 21.964554>,  <31.194447, 33.325840, 22.088261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308319, 32.962894, 21.964554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261524, -0.236868, 0.935681,
		-0.922260, -0.347250, 0.169866,
		0.284679, -0.907365, -0.309268,
		31.393723, 32.690685, 21.871773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057985, 32.875668, 22.694210>,  <31.194447, 33.325840, 22.088261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057985, 32.875668, 22.694210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280344, 32.647148, 22.452682>,  <31.413759, 32.510036, 22.307766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280344, 32.647148, 22.452682>,  <31.057985, 32.875668, 22.694210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280344, 32.647148, 22.452682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369817, -0.480576, 0.795161,
		-0.744454, -0.665332, -0.055876,
		0.555899, -0.571297, -0.603818,
		31.447113, 32.475758, 22.271538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989620, 32.214493, 23.056644>,  <31.057985, 32.875668, 22.694210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989620, 32.214493, 23.056644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307297, 32.174862, 22.816830>,  <31.497902, 32.151085, 22.672941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307297, 32.174862, 22.816830>,  <30.989620, 32.214493, 23.056644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307297, 32.174862, 22.816830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487313, -0.485573, 0.725771,
		-0.363023, -0.868564, -0.337360,
		0.794192, -0.099072, -0.599537,
		31.545553, 32.145142, 22.636969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217194, 31.564165, 23.128117>,  <30.989620, 32.214493, 23.056644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217194, 31.564165, 23.128117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537872, 31.746250, 22.973164>,  <31.730280, 31.855501, 22.880192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537872, 31.746250, 22.973164>,  <31.217194, 31.564165, 23.128117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537872, 31.746250, 22.973164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560662, -0.347995, 0.751370,
		0.207224, -0.819562, -0.534206,
		0.801696, 0.455211, -0.387385,
		31.778381, 31.882812, 22.856949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641628, 31.069706, 22.934368>,  <31.217194, 31.564165, 23.128117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641628, 31.069706, 22.934368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871569, 31.387375, 23.013195>,  <32.009533, 31.577976, 23.060492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871569, 31.387375, 23.013195>,  <31.641628, 31.069706, 22.934368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871569, 31.387375, 23.013195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580697, -0.565625, 0.585542,
		0.576490, -0.222161, -0.786323,
		0.574849, 0.794174, 0.197069,
		32.044022, 31.625628, 23.072315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213436, 30.773232, 22.900110>,  <31.641628, 31.069706, 22.934368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213436, 30.773232, 22.900110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292019, 31.113678, 23.094845>,  <32.339169, 31.317945, 23.211685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292019, 31.113678, 23.094845>,  <32.213436, 30.773232, 22.900110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292019, 31.113678, 23.094845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483570, -0.516030, 0.707017,
		0.852975, 0.096525, -0.512948,
		0.196452, 0.851114, 0.486837,
		32.350956, 31.369013, 23.240896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908894, 30.654800, 23.173313>,  <32.213436, 30.773232, 22.900110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908894, 30.654800, 23.173313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800346, 30.980469, 23.378635>,  <32.735218, 31.175871, 23.501829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800346, 30.980469, 23.378635>,  <32.908894, 30.654800, 23.173313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800346, 30.980469, 23.378635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390420, -0.394355, 0.831899,
		0.879734, 0.426155, -0.210854,
		-0.271366, 0.814172, 0.513307,
		32.718937, 31.224720, 23.532627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501247, 30.903084, 23.563225>,  <32.908894, 30.654800, 23.173313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501247, 30.903084, 23.563225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175556, 31.035069, 23.754288>,  <32.980141, 31.114260, 23.868925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175556, 31.035069, 23.754288>,  <33.501247, 30.903084, 23.563225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175556, 31.035069, 23.754288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312517, -0.444260, 0.839622,
		0.489246, 0.832921, 0.258612,
		-0.814230, 0.329962, 0.477655,
		32.931286, 31.134056, 23.897585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742405, 31.288580, 24.185902>,  <33.501247, 30.903084, 23.563225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742405, 31.288580, 24.185902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366390, 31.156307, 24.219307>,  <33.140781, 31.076942, 24.239349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366390, 31.156307, 24.219307>,  <33.742405, 31.288580, 24.185902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366390, 31.156307, 24.219307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213754, -0.380411, 0.899776,
		-0.265772, 0.863676, 0.428286,
		-0.940040, -0.330683, 0.083512,
		33.084377, 31.057102, 24.244360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715229, 31.088490, 24.846495>,  <33.742405, 31.288580, 24.185902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715229, 31.088490, 24.846495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368275, 30.927662, 24.729202>,  <33.160103, 30.831165, 24.658827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368275, 30.927662, 24.729202>,  <33.715229, 31.088490, 24.846495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368275, 30.927662, 24.729202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014498, -0.609409, 0.792723,
		-0.497427, 0.683345, 0.534422,
		-0.867385, -0.402070, -0.293229,
		33.108059, 30.807041, 24.641233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460720, 31.571218, 25.345171>,  <33.715229, 31.088490, 24.846495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460720, 31.571218, 25.345171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760738, 31.575043, 25.609699>,  <33.940750, 31.577337, 25.768415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760738, 31.575043, 25.609699>,  <33.460720, 31.571218, 25.345171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760738, 31.575043, 25.609699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443320, 0.734756, -0.513420,
		-0.490817, 0.678264, 0.546861,
		0.750044, 0.009560, 0.661319,
		33.985752, 31.577911, 25.808094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594845, 32.336227, 25.528145>,  <33.460720, 31.571218, 25.345171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594845, 32.336227, 25.528145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925499, 32.123650, 25.602158>,  <34.123894, 31.996103, 25.646564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925499, 32.123650, 25.602158>,  <33.594845, 32.336227, 25.528145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925499, 32.123650, 25.602158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556013, 0.720675, -0.414097,
		0.086722, 0.445188, 0.891228,
		0.826637, -0.531446, 0.185032,
		34.173489, 31.964216, 25.657667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045162, 32.864197, 25.655993>,  <33.594845, 32.336227, 25.528145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045162, 32.864197, 25.655993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318291, 32.574203, 25.619881>,  <34.482166, 32.400208, 25.598213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318291, 32.574203, 25.619881>,  <34.045162, 32.864197, 25.655993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318291, 32.574203, 25.619881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633796, 0.649285, -0.420394,
		0.363398, 0.229834, 0.902839,
		0.682821, -0.724986, -0.090281,
		34.523136, 32.356709, 25.592796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733601, 33.067047, 25.992630>,  <34.045162, 32.864197, 25.655993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733601, 33.067047, 25.992630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804733, 32.812286, 25.692566>,  <34.847412, 32.659431, 25.512527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804733, 32.812286, 25.692566>,  <34.733601, 33.067047, 25.992630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804733, 32.812286, 25.692566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825390, 0.511616, -0.238707,
		0.535825, -0.576724, 0.616669,
		0.177830, -0.636897, -0.750159,
		34.858082, 32.621216, 25.467518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421070, 33.188229, 25.867630>,  <34.733601, 33.067047, 25.992630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421070, 33.188229, 25.867630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303738, 32.946560, 25.571270>,  <35.233337, 32.801559, 25.393454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303738, 32.946560, 25.571270>,  <35.421070, 33.188229, 25.867630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303738, 32.946560, 25.571270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661204, 0.431530, -0.613670,
		0.690484, -0.669893, 0.272901,
		-0.293328, -0.604173, -0.740901,
		35.215740, 32.765308, 25.348999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079491, 33.061069, 25.476173>,  <35.421070, 33.188229, 25.867630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079491, 33.061069, 25.476173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766560, 33.015316, 25.231266>,  <35.578800, 32.987862, 25.084322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766560, 33.015316, 25.231266>,  <36.079491, 33.061069, 25.476173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766560, 33.015316, 25.231266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464915, 0.546925, -0.696224,
		0.414503, -0.829331, -0.374697,
		-0.782331, -0.114385, -0.612270,
		35.531860, 32.980999, 25.047585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407715, 32.839634, 24.836130>,  <36.079491, 33.061069, 25.476173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407715, 32.839634, 24.836130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042446, 32.988846, 24.770435>,  <35.823284, 33.078373, 24.731018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042446, 32.988846, 24.770435>,  <36.407715, 32.839634, 24.836130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042446, 32.988846, 24.770435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352087, 0.518969, -0.778913,
		-0.205321, -0.769105, -0.605244,
		-0.913169, 0.373026, -0.164236,
		35.768494, 33.100754, 24.721165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275852, 32.962002, 24.038315>,  <36.407715, 32.839634, 24.836130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275852, 32.962002, 24.038315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990189, 33.191158, 24.199196>,  <35.818790, 33.328651, 24.295725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990189, 33.191158, 24.199196>,  <36.275852, 32.962002, 24.038315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990189, 33.191158, 24.199196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056604, 0.619972, -0.782579,
		-0.697691, -0.536120, -0.475187,
		-0.714160, 0.572896, 0.402203,
		35.775940, 33.363026, 24.319857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871387, 33.231712, 23.415466>,  <36.275852, 32.962002, 24.038315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871387, 33.231712, 23.415466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787800, 33.495403, 23.704395>,  <35.737648, 33.653618, 23.877752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787800, 33.495403, 23.704395>,  <35.871387, 33.231712, 23.415466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787800, 33.495403, 23.704395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000499, 0.738700, -0.674034,
		-0.977922, -0.140491, -0.154694,
		-0.208968, 0.659231, 0.722321,
		35.725109, 33.693172, 23.921091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530243, 33.784447, 23.114466>,  <35.871387, 33.231712, 23.415466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530243, 33.784447, 23.114466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632595, 33.972054, 23.452591>,  <35.694008, 34.084618, 23.655466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632595, 33.972054, 23.452591>,  <35.530243, 33.784447, 23.114466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632595, 33.972054, 23.452591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009342, 0.875582, -0.482980,
		-0.966662, 0.115690, 0.228428,
		0.255884, 0.469013, 0.845311,
		35.709358, 34.112759, 23.706184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161343, 34.362953, 23.113840>,  <35.530243, 33.784447, 23.114466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161343, 34.362953, 23.113840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461708, 34.450699, 23.363003>,  <35.641926, 34.503345, 23.512501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461708, 34.450699, 23.363003>,  <35.161343, 34.362953, 23.113840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461708, 34.450699, 23.363003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045404, 0.923841, -0.380074,
		-0.658843, 0.313684, 0.683761,
		0.750910, 0.219364, 0.622908,
		35.686981, 34.516506, 23.549875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980728, 35.028004, 23.466120>,  <35.161343, 34.362953, 23.113840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980728, 35.028004, 23.466120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376404, 34.973728, 23.488335>,  <35.613811, 34.941162, 23.501663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376404, 34.973728, 23.488335>,  <34.980728, 35.028004, 23.466120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376404, 34.973728, 23.488335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146609, 0.911753, -0.383682,
		0.001425, 0.387678, 0.921794,
		0.989193, -0.135690, 0.055538,
		35.673161, 34.933022, 23.504995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206242, 35.572327, 23.870783>,  <34.980728, 35.028004, 23.466120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206242, 35.572327, 23.870783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517231, 35.447380, 23.652439>,  <35.703823, 35.372414, 23.521433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517231, 35.447380, 23.652439>,  <35.206242, 35.572327, 23.870783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517231, 35.447380, 23.652439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245562, 0.949817, -0.193770,
		0.578995, 0.016608, 0.815162,
		0.777472, -0.312365, -0.545861,
		35.750473, 35.353672, 23.488680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596184, 36.150105, 23.831890>,  <35.206242, 35.572327, 23.870783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596184, 36.150105, 23.831890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788895, 35.944645, 23.547901>,  <35.904522, 35.821369, 23.377508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788895, 35.944645, 23.547901>,  <35.596184, 36.150105, 23.831890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788895, 35.944645, 23.547901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309848, 0.857711, -0.410276,
		0.819688, -0.022323, 0.572375,
		0.481774, -0.513648, -0.709972,
		35.933426, 35.790550, 23.334909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873497, 36.401798, 24.043205>,  <35.596184, 36.150105, 23.831890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873497, 36.401798, 24.043205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596115, 36.643349, 24.200409>,  <34.429688, 36.788280, 24.294731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596115, 36.643349, 24.200409>,  <34.873497, 36.401798, 24.043205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596115, 36.643349, 24.200409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258008, -0.717418, 0.647104,
		0.672724, 0.347335, 0.653299,
		-0.693451, 0.603879, 0.393009,
		34.388081, 36.824512, 24.318312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952793, 36.543465, 24.781858>,  <34.873497, 36.401798, 24.043205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952793, 36.543465, 24.781858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565063, 36.617596, 24.717285>,  <34.332424, 36.662075, 24.678541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565063, 36.617596, 24.717285>,  <34.952793, 36.543465, 24.781858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565063, 36.617596, 24.717285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245770, -0.726048, 0.642223,
		0.001811, 0.662200, 0.749325,
		-0.969327, 0.185325, -0.161434,
		34.274265, 36.673195, 24.668856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594181, 36.862572, 25.393633>,  <34.952793, 36.543465, 24.781858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594181, 36.862572, 25.393633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353958, 36.634151, 25.169765>,  <34.209824, 36.497101, 25.035444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353958, 36.634151, 25.169765>,  <34.594181, 36.862572, 25.393633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353958, 36.634151, 25.169765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252977, -0.528293, 0.810499,
		-0.758506, 0.628336, 0.172808,
		-0.600559, -0.571052, -0.559668,
		34.173790, 36.462837, 25.001865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901367, 36.849308, 25.732349>,  <34.594181, 36.862572, 25.393633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901367, 36.849308, 25.732349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874641, 36.512379, 25.518421>,  <33.858604, 36.310223, 25.390064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874641, 36.512379, 25.518421>,  <33.901367, 36.849308, 25.732349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874641, 36.512379, 25.518421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417569, -0.463214, 0.781709,
		-0.906185, 0.275558, -0.320775,
		-0.066818, -0.842319, -0.534822,
		33.854595, 36.259682, 25.357975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407093, 36.501671, 26.101452>,  <33.901367, 36.849308, 25.732349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407093, 36.501671, 26.101452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546501, 36.215549, 25.859173>,  <33.630146, 36.043877, 25.713804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546501, 36.215549, 25.859173>,  <33.407093, 36.501671, 26.101452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546501, 36.215549, 25.859173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439412, -0.695492, 0.568514,
		-0.827922, 0.068015, -0.556704,
		0.348516, -0.715308, -0.605699,
		33.651054, 36.000957, 25.677464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876415, 36.069149, 25.892088>,  <33.407093, 36.501671, 26.101452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876415, 36.069149, 25.892088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200745, 35.842968, 25.831650>,  <33.395344, 35.707260, 25.795387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200745, 35.842968, 25.831650>,  <32.876415, 36.069149, 25.892088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200745, 35.842968, 25.831650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420339, -0.742213, 0.521953,
		-0.407283, -0.359701, -0.839486,
		0.810824, -0.565451, -0.151094,
		33.443993, 35.673332, 25.786322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586834, 35.406998, 25.825016>,  <32.876415, 36.069149, 25.892088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586834, 35.406998, 25.825016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974972, 35.346279, 25.900269>,  <33.207855, 35.309849, 25.945419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974972, 35.346279, 25.900269>,  <32.586834, 35.406998, 25.825016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974972, 35.346279, 25.900269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232385, -0.800068, 0.553072,
		0.066565, -0.580388, -0.811615,
		0.970343, -0.151792, 0.188130,
		33.266075, 35.300743, 25.956707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681534, 34.696243, 25.779848>,  <32.586834, 35.406998, 25.825016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681534, 34.696243, 25.779848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018005, 34.786392, 25.976471>,  <33.219887, 34.840481, 26.094444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018005, 34.786392, 25.976471>,  <32.681534, 34.696243, 25.779848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018005, 34.786392, 25.976471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091686, -0.836408, 0.540384,
		0.532933, -0.499627, -0.682902,
		0.841175, 0.225376, 0.491558,
		33.270359, 34.854004, 26.123938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004242, 34.057560, 25.892490>,  <32.681534, 34.696243, 25.779848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004242, 34.057560, 25.892490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143841, 34.309620, 26.169941>,  <33.227600, 34.460854, 26.336411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143841, 34.309620, 26.169941>,  <33.004242, 34.057560, 25.892490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143841, 34.309620, 26.169941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105447, -0.709059, 0.697221,
		0.931174, -0.316466, -0.181010,
		0.348994, 0.630146, 0.693627,
		33.248539, 34.498665, 26.378029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495609, 33.655453, 26.283802>,  <33.004242, 34.057560, 25.892490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495609, 33.655453, 26.283802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435204, 33.967678, 26.526424>,  <33.398960, 34.155014, 26.671999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435204, 33.967678, 26.526424>,  <33.495609, 33.655453, 26.283802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435204, 33.967678, 26.526424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003081, -0.613964, 0.789328,
		0.988527, 0.117332, 0.095123,
		-0.151016, 0.780565, 0.606558,
		33.389900, 34.201847, 26.708391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993454, 33.642170, 26.881512>,  <33.495609, 33.655453, 26.283802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993454, 33.642170, 26.881512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690273, 33.869953, 27.008774>,  <33.508366, 34.006622, 27.085131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690273, 33.869953, 27.008774>,  <33.993454, 33.642170, 26.881512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690273, 33.869953, 27.008774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097483, -0.383375, 0.918434,
		0.644985, 0.727144, 0.235068,
		-0.757952, 0.569461, 0.318155,
		33.462887, 34.040791, 27.104219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230106, 34.001747, 27.470999>,  <33.993454, 33.642170, 26.881512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230106, 34.001747, 27.470999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830891, 33.998962, 27.495865>,  <33.591362, 33.997292, 27.510784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830891, 33.998962, 27.495865>,  <34.230106, 34.001747, 27.470999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830891, 33.998962, 27.495865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061759, -0.267559, 0.961560,
		0.009935, 0.963516, 0.267465,
		-0.998042, -0.006965, 0.062164,
		33.531479, 33.996872, 27.514515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020889, 34.251804, 28.160864>,  <34.230106, 34.001747, 27.470999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020889, 34.251804, 28.160864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703686, 34.045029, 28.031921>,  <33.513363, 33.920963, 27.954556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703686, 34.045029, 28.031921>,  <34.020889, 34.251804, 28.160864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703686, 34.045029, 28.031921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095913, -0.416598, 0.904017,
		-0.601611, 0.747813, 0.280785,
		-0.793010, -0.516936, -0.322355,
		33.465782, 33.889950, 27.935215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650856, 34.098972, 28.780350>,  <34.020889, 34.251804, 28.160864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650856, 34.098972, 28.780350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453114, 33.874767, 28.514587>,  <33.334469, 33.740242, 28.355129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453114, 33.874767, 28.514587>,  <33.650856, 34.098972, 28.780350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453114, 33.874767, 28.514587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332783, -0.584070, 0.740350,
		-0.803037, 0.587098, 0.102208,
		-0.494355, -0.560515, -0.664406,
		33.304806, 33.706612, 28.315266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038197, 33.935120, 29.140974>,  <33.650856, 34.098972, 28.780350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038197, 33.935120, 29.140974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125603, 33.664585, 28.859600>,  <33.178047, 33.502266, 28.690775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125603, 33.664585, 28.859600>,  <33.038197, 33.935120, 29.140974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125603, 33.664585, 28.859600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233601, -0.736152, 0.635225,
		-0.947460, 0.025515, -0.318855,
		0.218518, -0.676335, -0.703435,
		33.191158, 33.461685, 28.648569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373600, 33.527649, 28.990278>,  <33.038197, 33.935120, 29.140974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373600, 33.527649, 28.990278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667126, 33.287323, 28.863449>,  <32.843243, 33.143127, 28.787352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667126, 33.287323, 28.863449>,  <32.373600, 33.527649, 28.990278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667126, 33.287323, 28.863449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393615, -0.756432, 0.522377,
		-0.553696, -0.258525, -0.791572,
		0.733818, -0.600813, -0.317074,
		32.887272, 33.107079, 28.768328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020157, 32.834972, 28.860918>,  <32.373600, 33.527649, 28.990278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020157, 32.834972, 28.860918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411678, 32.756866, 28.885635>,  <32.646591, 32.710003, 28.900465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411678, 32.756866, 28.885635>,  <32.020157, 32.834972, 28.860918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411678, 32.756866, 28.885635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200476, -0.851727, 0.484118,
		-0.041901, -0.486243, -0.872818,
		0.978802, -0.195264, 0.061792,
		32.705318, 32.698288, 28.904173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076939, 32.120037, 28.675816>,  <32.020157, 32.834972, 28.860918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076939, 32.120037, 28.675816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410580, 32.211670, 28.876530>,  <32.610764, 32.266647, 28.996958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410580, 32.211670, 28.876530>,  <32.076939, 32.120037, 28.675816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410580, 32.211670, 28.876530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064287, -0.863115, 0.500898,
		0.547844, -0.450061, -0.705203,
		0.834107, 0.229078, 0.501786,
		32.660812, 32.280392, 29.027065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386257, 31.423384, 28.854502>,  <32.076939, 32.120037, 28.675816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386257, 31.423384, 28.854502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582775, 31.674057, 29.096458>,  <32.700687, 31.824461, 29.241632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582775, 31.674057, 29.096458>,  <32.386257, 31.423384, 28.854502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582775, 31.674057, 29.096458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037111, -0.708915, 0.704317,
		0.870200, -0.323582, -0.371546,
		0.491298, 0.626685, 0.604890,
		32.730164, 31.862062, 29.277925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989544, 31.057928, 29.063927>,  <32.386257, 31.423384, 28.854502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989544, 31.057928, 29.063927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912823, 31.328804, 29.348076>,  <32.866791, 31.491329, 29.518564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912823, 31.328804, 29.348076>,  <32.989544, 31.057928, 29.063927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912823, 31.328804, 29.348076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182397, -0.735797, 0.652177,
		0.964335, -0.004477, 0.264648,
		-0.191807, 0.677188, 0.710371,
		32.855282, 31.531960, 29.561188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195263, 30.751789, 29.693325>,  <32.989544, 31.057928, 29.063927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195263, 30.751789, 29.693325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956364, 31.054771, 29.798813>,  <32.813023, 31.236561, 29.862106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956364, 31.054771, 29.798813>,  <33.195263, 30.751789, 29.693325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956364, 31.054771, 29.798813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450394, -0.588806, 0.671157,
		0.663654, 0.282071, 0.692820,
		-0.597251, 0.757458, 0.263720,
		32.777187, 31.282009, 29.877930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340824, 30.676424, 30.311918>,  <33.195263, 30.751789, 29.693325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340824, 30.676424, 30.311918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988365, 30.863468, 30.283852>,  <32.776890, 30.975695, 30.267012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988365, 30.863468, 30.283852>,  <33.340824, 30.676424, 30.311918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988365, 30.863468, 30.283852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328068, -0.497720, 0.802899,
		0.340519, 0.730491, 0.591971,
		-0.881146, 0.467609, -0.070167,
		32.724022, 31.003750, 30.262802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178757, 30.932961, 30.930668>,  <33.340824, 30.676424, 30.311918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178757, 30.932961, 30.930668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815304, 30.943352, 30.763950>,  <32.597233, 30.949587, 30.663919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815304, 30.943352, 30.763950>,  <33.178757, 30.932961, 30.930668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815304, 30.943352, 30.763950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375333, -0.488361, 0.787800,
		-0.183082, 0.872255, 0.453489,
		-0.908629, 0.025978, -0.416796,
		32.542717, 30.951145, 30.638912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737461, 31.077091, 31.435984>,  <33.178757, 30.932961, 30.930668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737461, 31.077091, 31.435984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480896, 30.945141, 31.158920>,  <32.326958, 30.865971, 30.992682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480896, 30.945141, 31.158920>,  <32.737461, 31.077091, 31.435984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480896, 30.945141, 31.158920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554908, -0.423973, 0.715768,
		-0.529782, 0.843463, 0.088891,
		-0.641411, -0.329875, -0.692658,
		32.288471, 30.846178, 30.951122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052212, 31.255054, 31.643847>,  <32.737461, 31.077091, 31.435984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052212, 31.255054, 31.643847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009338, 30.956551, 31.381058>,  <31.983614, 30.777449, 31.223385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009338, 30.956551, 31.381058>,  <32.052212, 31.255054, 31.643847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009338, 30.956551, 31.381058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624253, -0.463784, 0.628660,
		-0.773835, 0.477496, -0.416145,
		-0.107182, -0.746259, -0.656971,
		31.977184, 30.732674, 31.183966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221315, 31.090734, 31.551151>,  <32.052212, 31.255054, 31.643847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221315, 31.090734, 31.551151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429968, 30.768936, 31.437531>,  <31.555161, 30.575857, 31.369358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429968, 30.768936, 31.437531>,  <31.221315, 31.090734, 31.551151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429968, 30.768936, 31.437531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566490, -0.575549, 0.589772,
		-0.637957, -0.146730, -0.755964,
		0.521632, -0.804496, -0.284054,
		31.586458, 30.527588, 31.352314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688011, 30.643854, 31.516102>,  <31.221315, 31.090734, 31.551151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688011, 30.643854, 31.516102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033415, 30.444019, 31.543709>,  <31.240658, 30.324120, 31.560274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033415, 30.444019, 31.543709>,  <30.688011, 30.643854, 31.516102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033415, 30.444019, 31.543709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423521, -0.644023, 0.637075,
		-0.273822, -0.579352, -0.767706,
		0.863511, -0.499585, 0.069020,
		31.292469, 30.294144, 31.564415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539398, 29.909653, 31.534460>,  <30.688011, 30.643854, 31.516102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539398, 29.909653, 31.534460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894136, 29.958286, 31.712772>,  <31.106979, 29.987467, 31.819759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894136, 29.958286, 31.712772>,  <30.539398, 29.909653, 31.534460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894136, 29.958286, 31.712772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328166, -0.513440, 0.792897,
		0.325288, -0.849468, -0.415441,
		0.886845, 0.121586, 0.445783,
		31.160191, 29.994762, 31.846508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273764, 29.519655, 30.941414>,  <30.539398, 29.909653, 31.534460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273764, 29.519655, 30.941414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877411, 29.506687, 30.889111>,  <29.639599, 29.498907, 30.857729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877411, 29.506687, 30.889111>,  <30.273764, 29.519655, 30.941414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877411, 29.506687, 30.889111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069627, 0.707680, -0.703094,
		0.115329, -0.705789, -0.698971,
		-0.990884, -0.032420, -0.130758,
		29.580145, 29.496962, 30.849884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162226, 29.428953, 30.244974>,  <30.273764, 29.519655, 30.941414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162226, 29.428953, 30.244974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820971, 29.589344, 30.378464>,  <29.616217, 29.685577, 30.458557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820971, 29.589344, 30.378464>,  <30.162226, 29.428953, 30.244974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820971, 29.589344, 30.378464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050642, 0.573031, -0.817968,
		-0.519220, -0.714741, -0.468569,
		-0.853139, 0.400976, 0.333725,
		29.565029, 29.709637, 30.478580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893875, 29.604105, 29.578838>,  <30.162226, 29.428953, 30.244974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893875, 29.604105, 29.578838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669474, 29.791885, 29.851570>,  <29.534834, 29.904554, 30.015209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669474, 29.791885, 29.851570>,  <29.893875, 29.604105, 29.578838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669474, 29.791885, 29.851570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123642, 0.766893, -0.629752,
		-0.818529, -0.437594, -0.372184,
		-0.561002, 0.469453, 0.681829,
		29.501173, 29.932722, 30.056118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281462, 29.702055, 29.229395>,  <29.893875, 29.604105, 29.578838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281462, 29.702055, 29.229395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318295, 29.976986, 29.517590>,  <29.340393, 30.141945, 29.690506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318295, 29.976986, 29.517590>,  <29.281462, 29.702055, 29.229395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318295, 29.976986, 29.517590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122463, 0.725886, -0.676825,
		-0.988192, -0.025911, 0.151012,
		0.092081, 0.687327, 0.720488,
		29.345919, 30.183184, 29.733736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679993, 30.230322, 29.153442>,  <29.281462, 29.702055, 29.229395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679993, 30.230322, 29.153442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982956, 30.412075, 29.341003>,  <29.164734, 30.521128, 29.453539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982956, 30.412075, 29.341003>,  <28.679993, 30.230322, 29.153442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982956, 30.412075, 29.341003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199799, 0.844974, -0.496085,
		-0.621622, 0.282053, 0.730775,
		0.757408, 0.454385, 0.468900,
		29.210178, 30.548391, 29.481674>
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
