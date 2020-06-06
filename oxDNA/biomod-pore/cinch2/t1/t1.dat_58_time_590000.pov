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
	<42.570202, 32.558735, 22.977604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954502, 32.666237, 22.950100>,  <43.185081, 32.730740, 22.933598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954502, 32.666237, 22.950100>,  <42.570202, 32.558735, 22.977604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954502, 32.666237, 22.950100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265026, -0.962450, -0.058755,
		-0.081970, 0.038225, -0.995901,
		0.960751, 0.268756, -0.068762,
		43.242729, 32.746864, 22.929472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577915, 32.654251, 23.727072>,  <42.570202, 32.558735, 22.977604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577915, 32.654251, 23.727072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325920, 32.911690, 23.900921>,  <42.174721, 33.066154, 24.005230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325920, 32.911690, 23.900921>,  <42.577915, 32.654251, 23.727072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325920, 32.911690, 23.900921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713483, -0.700664, 0.003351,
		0.306681, -0.307984, 0.900607,
		-0.629991, 0.643596, 0.434622,
		42.136921, 33.104767, 24.031307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062656, 32.518475, 24.092932>,  <42.577915, 32.654251, 23.727072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062656, 32.518475, 24.092932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698708, 32.484844, 24.255440>,  <41.480339, 32.464664, 24.352945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698708, 32.484844, 24.255440>,  <42.062656, 32.518475, 24.092932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698708, 32.484844, 24.255440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397964, 0.099892, 0.911946,
		-0.117255, 0.991440, -0.057431,
		-0.909877, -0.084075, 0.406271,
		41.425743, 32.459621, 24.377321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520481, 33.004734, 23.838312>,  <42.062656, 32.518475, 24.092932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520481, 33.004734, 23.838312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231815, 33.176571, 23.621185>,  <41.058617, 33.279675, 23.490910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231815, 33.176571, 23.621185>,  <41.520481, 33.004734, 23.838312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231815, 33.176571, 23.621185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692165, 0.435770, -0.575336,
		-0.010619, -0.790918, -0.611830,
		-0.721661, 0.429597, -0.542818,
		41.015316, 33.305450, 23.458340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769691, 32.947758, 23.781054>,  <41.520481, 33.004734, 23.838312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769691, 32.947758, 23.781054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529556, 33.137505, 24.038601>,  <40.385475, 33.251354, 24.193129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529556, 33.137505, 24.038601>,  <40.769691, 32.947758, 23.781054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529556, 33.137505, 24.038601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151448, -0.723091, 0.673945,
		0.785273, 0.502110, 0.362259,
		-0.600341, 0.474368, 0.643868,
		40.349453, 33.279816, 24.231762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123802, 33.045860, 24.475105>,  <40.769691, 32.947758, 23.781054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123802, 33.045860, 24.475105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729485, 33.074112, 24.536057>,  <40.492893, 33.091064, 24.572628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729485, 33.074112, 24.536057>,  <41.123802, 33.045860, 24.475105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729485, 33.074112, 24.536057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089599, -0.546214, 0.832840,
		0.142056, 0.834662, 0.532126,
		-0.985795, 0.070632, 0.152378,
		40.433746, 33.095303, 24.581770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998081, 33.369316, 25.161974>,  <41.123802, 33.045860, 24.475105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998081, 33.369316, 25.161974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659351, 33.175514, 25.074211>,  <40.456112, 33.059231, 25.021553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659351, 33.175514, 25.074211>,  <40.998081, 33.369316, 25.161974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659351, 33.175514, 25.074211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046068, -0.477785, 0.877268,
		-0.529874, 0.732784, 0.426920,
		-0.846824, -0.484509, -0.219407,
		40.405304, 33.030163, 25.008389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697952, 33.330444, 25.682501>,  <40.998081, 33.369316, 25.161974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697952, 33.330444, 25.682501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506886, 33.021721, 25.514622>,  <40.392246, 32.836487, 25.413895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506886, 33.021721, 25.514622>,  <40.697952, 33.330444, 25.682501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506886, 33.021721, 25.514622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056547, -0.503743, 0.862000,
		-0.876719, 0.388017, 0.284266,
		-0.477668, -0.771806, -0.419700,
		40.363586, 32.790180, 25.388712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223389, 33.114140, 26.164656>,  <40.697952, 33.330444, 25.682501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223389, 33.114140, 26.164656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246506, 32.817303, 25.897537>,  <40.260376, 32.639198, 25.737267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246506, 32.817303, 25.897537>,  <40.223389, 33.114140, 26.164656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246506, 32.817303, 25.897537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041970, -0.670131, 0.741055,
		-0.997446, -0.014801, -0.069876,
		0.057795, -0.742095, -0.667798,
		40.263844, 32.594673, 25.697197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724297, 32.626808, 26.339077>,  <40.223389, 33.114140, 26.164656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724297, 32.626808, 26.339077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005226, 32.434120, 26.129433>,  <40.173782, 32.318508, 26.003647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005226, 32.434120, 26.129433>,  <39.724297, 32.626808, 26.339077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005226, 32.434120, 26.129433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131438, -0.635841, 0.760546,
		-0.699622, -0.603035, -0.383247,
		0.702320, -0.481721, -0.524110,
		40.215923, 32.289604, 25.972200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559013, 31.932913, 26.286854>,  <39.724297, 32.626808, 26.339077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559013, 31.932913, 26.286854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953129, 31.938404, 26.218727>,  <40.189598, 31.941698, 26.177851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953129, 31.938404, 26.218727>,  <39.559013, 31.932913, 26.286854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953129, 31.938404, 26.218727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119389, -0.768403, 0.628732,
		-0.122242, -0.639820, -0.758741,
		0.985293, 0.013728, -0.170318,
		40.248718, 31.942522, 26.167631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607723, 31.289665, 26.084343>,  <39.559013, 31.932913, 26.286854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607723, 31.289665, 26.084343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975105, 31.431648, 26.154144>,  <40.195534, 31.516838, 26.196026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975105, 31.431648, 26.154144>,  <39.607723, 31.289665, 26.084343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975105, 31.431648, 26.154144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155077, -0.729024, 0.666690,
		0.363863, -0.585262, -0.724619,
		0.918452, 0.354955, 0.174504,
		40.250641, 31.538136, 26.206495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097778, 30.725332, 26.107262>,  <39.607723, 31.289665, 26.084343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097778, 30.725332, 26.107262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277275, 31.002754, 26.332691>,  <40.384972, 31.169207, 26.467949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277275, 31.002754, 26.332691>,  <40.097778, 30.725332, 26.107262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277275, 31.002754, 26.332691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126547, -0.673595, 0.728187,
		0.884656, -0.255450, -0.390038,
		0.448742, 0.693553, 0.563573,
		40.411900, 31.210819, 26.501762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786385, 30.474901, 26.326376>,  <40.097778, 30.725332, 26.107262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786385, 30.474901, 26.326376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748859, 30.760376, 26.604038>,  <40.726345, 30.931660, 26.770636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748859, 30.760376, 26.604038>,  <40.786385, 30.474901, 26.326376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748859, 30.760376, 26.604038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383659, -0.617466, 0.686689,
		0.918697, 0.330742, -0.215884,
		-0.093816, 0.713685, 0.694156,
		40.720715, 30.974482, 26.812284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326435, 30.352663, 26.785032>,  <40.786385, 30.474901, 26.326376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326435, 30.352663, 26.785032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066257, 30.565483, 27.001862>,  <40.910149, 30.693174, 27.131960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066257, 30.565483, 27.001862>,  <41.326435, 30.352663, 26.785032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066257, 30.565483, 27.001862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247610, -0.526157, 0.813541,
		0.718058, 0.663388, 0.210497,
		-0.650447, 0.532049, 0.542073,
		40.871124, 30.725098, 27.164484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590363, 30.531860, 27.384087>,  <41.326435, 30.352663, 26.785032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590363, 30.531860, 27.384087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196468, 30.541496, 27.453045>,  <40.960133, 30.547277, 27.494419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196468, 30.541496, 27.453045>,  <41.590363, 30.531860, 27.384087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196468, 30.541496, 27.453045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117101, -0.641091, 0.758478,
		0.128795, 0.767086, 0.628483,
		-0.984733, 0.024092, 0.172396,
		40.901047, 30.548723, 27.504765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472843, 30.754152, 28.120192>,  <41.590363, 30.531860, 27.384087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472843, 30.754152, 28.120192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150333, 30.540974, 28.017513>,  <40.956829, 30.413067, 27.955906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150333, 30.540974, 28.017513>,  <41.472843, 30.754152, 28.120192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150333, 30.540974, 28.017513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118022, -0.570147, 0.813021,
		-0.579653, 0.625220, 0.522593,
		-0.806271, -0.532947, -0.256698,
		40.908451, 30.381090, 27.940504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107899, 30.636518, 28.746157>,  <41.472843, 30.754152, 28.120192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107899, 30.636518, 28.746157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906487, 30.382515, 28.511818>,  <40.785637, 30.230112, 28.371214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906487, 30.382515, 28.511818>,  <41.107899, 30.636518, 28.746157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906487, 30.382515, 28.511818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206278, -0.570112, 0.795250,
		-0.838989, 0.521282, 0.156082,
		-0.503534, -0.635010, -0.585847,
		40.755428, 30.192013, 28.336063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638363, 30.426609, 29.185814>,  <41.107899, 30.636518, 28.746157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638363, 30.426609, 29.185814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646324, 30.140942, 28.905937>,  <40.651100, 29.969542, 28.738012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646324, 30.140942, 28.905937>,  <40.638363, 30.426609, 29.185814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646324, 30.140942, 28.905937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241911, -0.682475, 0.689716,
		-0.970094, 0.155532, -0.186352,
		0.019907, -0.714169, -0.699689,
		40.652298, 29.926691, 28.696030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949066, 30.063108, 29.254597>,  <40.638363, 30.426609, 29.185814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949066, 30.063108, 29.254597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226395, 29.830139, 29.084850>,  <40.392792, 29.690357, 28.983002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226395, 29.830139, 29.084850>,  <39.949066, 30.063108, 29.254597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226395, 29.830139, 29.084850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201103, -0.721864, 0.662170,
		-0.691996, -0.373758, -0.617614,
		0.693324, -0.582423, -0.424363,
		40.434391, 29.655411, 28.957541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635910, 29.424244, 29.294699>,  <39.949066, 30.063108, 29.254597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635910, 29.424244, 29.294699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019962, 29.350056, 29.211040>,  <40.250393, 29.305542, 29.160845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019962, 29.350056, 29.211040>,  <39.635910, 29.424244, 29.294699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019962, 29.350056, 29.211040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033569, -0.819272, 0.572422,
		-0.277515, -0.542582, -0.792837,
		0.960135, -0.185470, -0.209146,
		40.308002, 29.294415, 29.148296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636467, 28.686129, 29.257986>,  <39.635910, 29.424244, 29.294699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636467, 28.686129, 29.257986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013954, 28.794624, 29.333691>,  <40.240448, 28.859722, 29.379112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013954, 28.794624, 29.333691>,  <39.636467, 28.686129, 29.257986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013954, 28.794624, 29.333691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108059, -0.793682, 0.598659,
		0.312593, -0.544515, -0.778324,
		0.943721, 0.271241, 0.189260,
		40.297070, 28.875998, 29.390469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070248, 28.096184, 29.112217>,  <39.636467, 28.686129, 29.257986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070248, 28.096184, 29.112217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283546, 28.334808, 29.352139>,  <40.411526, 28.477983, 29.496092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283546, 28.334808, 29.352139>,  <40.070248, 28.096184, 29.112217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283546, 28.334808, 29.352139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203483, -0.778652, 0.593545,
		0.821125, -0.194454, -0.536602,
		0.533243, 0.596564, 0.599803,
		40.443520, 28.513777, 29.532080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635723, 27.668987, 29.263498>,  <40.070248, 28.096184, 29.112217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635723, 27.668987, 29.263498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614326, 27.941685, 29.555351>,  <40.601490, 28.105303, 29.730463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614326, 27.941685, 29.555351>,  <40.635723, 27.668987, 29.263498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614326, 27.941685, 29.555351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123226, -0.720586, 0.682328,
		0.990936, 0.126407, -0.045465,
		-0.053490, 0.681746, 0.729631,
		40.598278, 28.146208, 29.774240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194546, 27.452803, 29.819357>,  <40.635723, 27.668987, 29.263498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194546, 27.452803, 29.819357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913128, 27.689884, 29.976192>,  <40.744278, 27.832132, 30.070293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913128, 27.689884, 29.976192>,  <41.194546, 27.452803, 29.819357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913128, 27.689884, 29.976192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128140, -0.648487, 0.750363,
		0.699006, 0.477670, 0.532187,
		-0.703542, 0.592702, 0.392088,
		40.702065, 27.867695, 30.093819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346249, 27.319162, 30.497885>,  <41.194546, 27.452803, 29.819357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346249, 27.319162, 30.497885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971756, 27.455307, 30.462959>,  <40.747059, 27.536995, 30.442005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971756, 27.455307, 30.462959>,  <41.346249, 27.319162, 30.497885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971756, 27.455307, 30.462959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303035, -0.656301, 0.690969,
		0.177878, 0.673366, 0.717592,
		-0.936232, 0.340363, -0.087312,
		40.690887, 27.557417, 30.436766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072243, 27.447830, 31.217951>,  <41.346249, 27.319162, 30.497885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072243, 27.447830, 31.217951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775963, 27.358433, 30.964520>,  <40.598194, 27.304794, 30.812460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775963, 27.358433, 30.964520>,  <41.072243, 27.447830, 31.217951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775963, 27.358433, 30.964520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447088, -0.539949, 0.713140,
		-0.501481, 0.811484, 0.300017,
		-0.740695, -0.223492, -0.633579,
		40.553753, 27.291386, 30.774446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443806, 27.696213, 31.467609>,  <41.072243, 27.447830, 31.217951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443806, 27.696213, 31.467609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360397, 27.383713, 31.232265>,  <40.310352, 27.196213, 31.091059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360397, 27.383713, 31.232265>,  <40.443806, 27.696213, 31.467609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360397, 27.383713, 31.232265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499519, -0.432126, 0.750831,
		-0.840834, 0.450458, -0.300144,
		-0.208518, -0.781252, -0.588358,
		40.297844, 27.149338, 31.055758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731262, 27.505686, 31.486397>,  <40.443806, 27.696213, 31.467609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731262, 27.505686, 31.486397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943565, 27.174797, 31.412640>,  <40.070946, 26.976263, 31.368385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943565, 27.174797, 31.412640>,  <39.731262, 27.505686, 31.486397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943565, 27.174797, 31.412640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589546, -0.516661, 0.620884,
		-0.608878, -0.220830, -0.761907,
		0.530757, -0.827222, -0.184394,
		40.102791, 26.926630, 31.357321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279324, 26.897903, 31.257692>,  <39.731262, 27.505686, 31.486397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279324, 26.897903, 31.257692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604839, 26.738811, 31.427193>,  <39.800148, 26.643356, 31.528893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604839, 26.738811, 31.427193>,  <39.279324, 26.897903, 31.257692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604839, 26.738811, 31.427193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561539, -0.350221, 0.749680,
		-0.149762, -0.848032, -0.508344,
		0.813785, -0.397728, 0.423753,
		39.848976, 26.619493, 31.554319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313229, 26.146168, 31.295078>,  <39.279324, 26.897903, 31.257692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313229, 26.146168, 31.295078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498505, 26.319115, 31.604534>,  <39.609669, 26.422882, 31.790207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498505, 26.319115, 31.604534>,  <39.313229, 26.146168, 31.295078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498505, 26.319115, 31.604534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729389, -0.309891, 0.609884,
		0.503438, -0.846774, 0.171827,
		0.463186, 0.432367, 0.773639,
		39.637459, 26.448824, 31.836626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625774, 26.489162, 31.080626>,  <39.313229, 26.146168, 31.295078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625774, 26.489162, 31.080626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608265, 26.332832, 30.712856>,  <38.597759, 26.239035, 30.492195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608265, 26.332832, 30.712856>,  <38.625774, 26.489162, 31.080626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608265, 26.332832, 30.712856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319133, 0.877559, -0.357834,
		0.946698, 0.277754, -0.163140,
		-0.043775, -0.390824, -0.919424,
		38.595131, 26.215586, 30.437029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948036, 26.921062, 30.596380>,  <38.625774, 26.489162, 31.080626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948036, 26.921062, 30.596380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634445, 26.712814, 30.461124>,  <38.446293, 26.587866, 30.379971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634445, 26.712814, 30.461124>,  <38.948036, 26.921062, 30.596380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634445, 26.712814, 30.461124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304393, 0.797096, -0.521520,
		0.541045, -0.305930, -0.783376,
		-0.783974, -0.520620, -0.338141,
		38.399254, 26.556629, 30.359682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908009, 26.948826, 29.900646>,  <38.948036, 26.921062, 30.596380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908009, 26.948826, 29.900646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545113, 26.909519, 30.064236>,  <38.327374, 26.885935, 30.162390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545113, 26.909519, 30.064236>,  <38.908009, 26.948826, 29.900646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545113, 26.909519, 30.064236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275815, 0.873077, -0.402073,
		-0.317555, -0.477578, -0.819194,
		-0.907240, -0.098265, 0.408973,
		38.272942, 26.880039, 30.186928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430084, 26.824265, 29.318987>,  <38.908009, 26.948826, 29.900646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430084, 26.824265, 29.318987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306328, 26.999901, 29.656384>,  <38.232075, 27.105284, 29.858822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306328, 26.999901, 29.656384>,  <38.430084, 26.824265, 29.318987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306328, 26.999901, 29.656384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293316, 0.799697, -0.523880,
		-0.904569, -0.409491, -0.118623,
		-0.309387, 0.439092, 0.843492,
		38.213512, 27.131628, 29.909431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734856, 27.270081, 29.245960>,  <38.430084, 26.824265, 29.318987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734856, 27.270081, 29.245960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945419, 27.399338, 29.560532>,  <38.071758, 27.476892, 29.749275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945419, 27.399338, 29.560532>,  <37.734856, 27.270081, 29.245960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945419, 27.399338, 29.560532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130645, 0.944717, -0.300734,
		-0.840133, 0.055567, 0.539527,
		0.526411, 0.323143, 0.786429,
		38.103344, 27.496281, 29.796459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268326, 27.755413, 29.470104>,  <37.734856, 27.270081, 29.245960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268326, 27.755413, 29.470104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662838, 27.783825, 29.529701>,  <37.899548, 27.800871, 29.565458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662838, 27.783825, 29.529701>,  <37.268326, 27.755413, 29.470104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662838, 27.783825, 29.529701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010125, 0.874938, -0.484130,
		-0.164745, 0.478998, 0.862218,
		0.986284, 0.071028, 0.148991,
		37.958725, 27.805134, 29.574398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441528, 28.368986, 29.795921>,  <37.268326, 27.755413, 29.470104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441528, 28.368986, 29.795921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749554, 28.247189, 29.571674>,  <37.934368, 28.174110, 29.437126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749554, 28.247189, 29.571674>,  <37.441528, 28.368986, 29.795921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749554, 28.247189, 29.571674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014824, 0.869971, -0.492880,
		0.637800, 0.387858, 0.665416,
		0.770060, -0.304494, -0.560617,
		37.980572, 28.155840, 29.403490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827030, 28.994724, 29.748371>,  <37.441528, 28.368986, 29.795921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827030, 28.994724, 29.748371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933506, 28.740772, 29.458248>,  <37.997391, 28.588402, 29.284174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933506, 28.740772, 29.458248>,  <37.827030, 28.994724, 29.748371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933506, 28.740772, 29.458248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096412, 0.766218, -0.635307,
		0.959088, 0.099181, 0.265166,
		0.266185, -0.634880, -0.725309,
		38.013363, 28.550308, 29.240656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373913, 29.294270, 29.512684>,  <37.827030, 28.994724, 29.748371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373913, 29.294270, 29.512684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246353, 29.056938, 29.217045>,  <38.169819, 28.914539, 29.039661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246353, 29.056938, 29.217045>,  <38.373913, 29.294270, 29.512684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246353, 29.056938, 29.217045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113316, 0.750350, -0.651256,
		0.940991, -0.291435, -0.172050,
		-0.318897, -0.593330, -0.739097,
		38.150684, 28.878939, 28.995316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857094, 29.420214, 29.018137>,  <38.373913, 29.294270, 29.512684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857094, 29.420214, 29.018137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541042, 29.267502, 28.826328>,  <38.351410, 29.175875, 28.711243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541042, 29.267502, 28.826328>,  <38.857094, 29.420214, 29.018137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541042, 29.267502, 28.826328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131159, 0.658898, -0.740709,
		0.598743, -0.648150, -0.470541,
		-0.790130, -0.381778, -0.479521,
		38.304005, 29.152967, 28.682472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986919, 29.405836, 28.292353>,  <38.857094, 29.420214, 29.018137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986919, 29.405836, 28.292353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591362, 29.350986, 28.269432>,  <38.354027, 29.318077, 28.255680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591362, 29.350986, 28.269432>,  <38.986919, 29.405836, 28.292353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591362, 29.350986, 28.269432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040086, 0.617398, -0.785629,
		0.143108, -0.774607, -0.616038,
		-0.988895, -0.137125, -0.057304,
		38.294693, 29.309849, 28.252241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777275, 29.279104, 27.527588>,  <38.986919, 29.405836, 28.292353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777275, 29.279104, 27.527588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439816, 29.418987, 27.690544>,  <38.237339, 29.502916, 27.788319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439816, 29.418987, 27.690544>,  <38.777275, 29.279104, 27.527588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439816, 29.418987, 27.690544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204634, 0.492073, -0.846162,
		-0.496375, -0.797226, -0.343572,
		-0.843644, 0.349707, 0.407393,
		38.186722, 29.523899, 27.812761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227024, 29.088705, 27.092411>,  <38.777275, 29.279104, 27.527588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227024, 29.088705, 27.092411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098175, 29.400162, 27.307800>,  <38.020866, 29.587036, 27.437033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098175, 29.400162, 27.307800>,  <38.227024, 29.088705, 27.092411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098175, 29.400162, 27.307800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402464, 0.402198, -0.822350,
		-0.856890, -0.481612, 0.183820,
		-0.322121, 0.778644, 0.538471,
		38.001537, 29.633755, 27.469341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635830, 29.245972, 26.817093>,  <38.227024, 29.088705, 27.092411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635830, 29.245972, 26.817093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709480, 29.569057, 27.041126>,  <37.753670, 29.762909, 27.175547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709480, 29.569057, 27.041126>,  <37.635830, 29.245972, 26.817093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709480, 29.569057, 27.041126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408199, 0.581200, -0.703975,
		-0.894133, -0.099009, 0.436720,
		0.184121, 0.807715, 0.560085,
		37.764717, 29.811373, 27.209152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988491, 29.561106, 26.786491>,  <37.635830, 29.245972, 26.817093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988491, 29.561106, 26.786491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253620, 29.843895, 26.885166>,  <37.412697, 30.013569, 26.944370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253620, 29.843895, 26.885166>,  <36.988491, 29.561106, 26.786491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253620, 29.843895, 26.885166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407431, 0.616940, -0.673339,
		-0.628221, 0.345799, 0.696966,
		0.662826, 0.706971, 0.246685,
		37.452469, 30.055986, 26.959171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575512, 30.102434, 26.939350>,  <36.988491, 29.561106, 26.786491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575512, 30.102434, 26.939350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928318, 30.264908, 26.843792>,  <37.139999, 30.362392, 26.786457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928318, 30.264908, 26.843792>,  <36.575512, 30.102434, 26.939350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928318, 30.264908, 26.843792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443234, 0.542966, -0.713255,
		-0.160000, 0.734985, 0.658936,
		0.882011, 0.406184, -0.238896,
		37.192921, 30.386763, 26.772123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486790, 30.863398, 26.884720>,  <36.575512, 30.102434, 26.939350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486790, 30.863398, 26.884720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819923, 30.817818, 26.668053>,  <37.019802, 30.790470, 26.538054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819923, 30.817818, 26.668053>,  <36.486790, 30.863398, 26.884720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819923, 30.817818, 26.668053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196117, 0.854352, -0.481270,
		0.517615, 0.507048, 0.689186,
		0.832834, -0.113952, -0.541666,
		37.069775, 30.783632, 26.505552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761219, 31.542856, 26.734312>,  <36.486790, 30.863398, 26.884720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761219, 31.542856, 26.734312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932186, 31.316132, 26.452591>,  <37.034767, 31.180096, 26.283558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932186, 31.316132, 26.452591>,  <36.761219, 31.542856, 26.734312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932186, 31.316132, 26.452591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025948, 0.771034, -0.636265,
		0.903684, 0.290224, 0.314843,
		0.427414, -0.566812, -0.704302,
		37.060410, 31.146088, 26.241301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179379, 32.030174, 26.406923>,  <36.761219, 31.542856, 26.734312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179379, 32.030174, 26.406923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185150, 31.729935, 26.142685>,  <37.188614, 31.549789, 25.984142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185150, 31.729935, 26.142685>,  <37.179379, 32.030174, 26.406923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185150, 31.729935, 26.142685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119363, 0.657234, -0.744175,
		0.992746, -0.068113, 0.099077,
		0.014429, -0.750603, -0.660596,
		37.189480, 31.504753, 25.944506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890358, 32.041847, 26.071033>,  <37.179379, 32.030174, 26.406923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890358, 32.041847, 26.071033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639660, 31.845310, 25.829117>,  <37.489243, 31.727388, 25.683968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639660, 31.845310, 25.829117>,  <37.890358, 32.041847, 26.071033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639660, 31.845310, 25.829117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271492, 0.589818, -0.760530,
		0.730398, -0.640855, -0.236270,
		-0.626746, -0.491344, -0.604789,
		37.451637, 31.697906, 25.647680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262226, 31.908518, 25.490698>,  <37.890358, 32.041847, 26.071033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262226, 31.908518, 25.490698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881454, 31.866226, 25.375702>,  <37.652992, 31.840851, 25.306704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881454, 31.866226, 25.375702>,  <38.262226, 31.908518, 25.490698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881454, 31.866226, 25.375702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205810, 0.474370, -0.855929,
		0.226875, -0.873953, -0.429807,
		-0.951929, -0.105730, -0.287491,
		37.595875, 31.834507, 25.289454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264019, 31.725252, 24.717632>,  <38.262226, 31.908518, 25.490698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264019, 31.725252, 24.717632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908924, 31.888847, 24.802158>,  <37.695869, 31.987005, 24.852875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908924, 31.888847, 24.802158>,  <38.264019, 31.725252, 24.717632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908924, 31.888847, 24.802158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141060, 0.678615, -0.720822,
		-0.438211, -0.610090, -0.660122,
		-0.887735, 0.408988, 0.211317,
		37.642605, 32.011543, 24.865553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968327, 31.912262, 24.030254>,  <38.264019, 31.725252, 24.717632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968327, 31.912262, 24.030254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749275, 32.115471, 24.296192>,  <37.617844, 32.237396, 24.455755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749275, 32.115471, 24.296192>,  <37.968327, 31.912262, 24.030254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749275, 32.115471, 24.296192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094633, 0.827089, -0.554047,
		-0.831351, -0.240498, -0.501015,
		-0.547632, 0.508020, 0.664842,
		37.584984, 32.267876, 24.495646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513237, 32.142735, 23.583569>,  <37.968327, 31.912262, 24.030254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513237, 32.142735, 23.583569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512764, 32.361359, 23.918537>,  <37.512482, 32.492535, 24.119518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512764, 32.361359, 23.918537>,  <37.513237, 32.142735, 23.583569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512764, 32.361359, 23.918537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112358, 0.832190, -0.542988,
		-0.993667, 0.093449, -0.062394,
		-0.001182, 0.546559, 0.837420,
		37.512409, 32.525326, 24.169764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086746, 32.569622, 23.437016>,  <37.513237, 32.142735, 23.583569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086746, 32.569622, 23.437016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318935, 32.724922, 23.723320>,  <37.458248, 32.818104, 23.895103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318935, 32.724922, 23.723320>,  <37.086746, 32.569622, 23.437016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318935, 32.724922, 23.723320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263058, 0.742468, -0.616070,
		-0.770620, 0.545898, 0.328848,
		0.580470, 0.388250, 0.715763,
		37.493076, 32.841396, 23.938049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914558, 33.296410, 23.516232>,  <37.086746, 32.569622, 23.437016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914558, 33.296410, 23.516232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294800, 33.229431, 23.620773>,  <37.522945, 33.189243, 23.683498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294800, 33.229431, 23.620773>,  <36.914558, 33.296410, 23.516232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294800, 33.229431, 23.620773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301731, 0.696028, -0.651539,
		-0.072817, 0.698218, 0.712172,
		0.950608, -0.167442, 0.261357,
		37.579983, 33.179199, 23.699181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237133, 33.802975, 23.201838>,  <36.914558, 33.296410, 23.516232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237133, 33.802975, 23.201838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559139, 33.640068, 23.374390>,  <37.752342, 33.542324, 23.477921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559139, 33.640068, 23.374390>,  <37.237133, 33.802975, 23.201838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559139, 33.640068, 23.374390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590104, 0.624601, -0.511519,
		-0.061113, 0.666336, 0.743143,
		0.805011, -0.407271, 0.431379,
		37.800644, 33.517887, 23.503803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724735, 34.477745, 23.163960>,  <37.237133, 33.802975, 23.201838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724735, 34.477745, 23.163960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487541, 34.579445, 22.858353>,  <36.345226, 34.640465, 22.674988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487541, 34.579445, 22.858353>,  <36.724735, 34.477745, 23.163960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487541, 34.579445, 22.858353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639966, -0.724665, 0.255545,
		-0.488685, 0.640480, 0.592430,
		-0.592985, 0.254254, -0.764019,
		36.309647, 34.655720, 22.629147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047947, 34.838753, 23.410236>,  <36.724735, 34.477745, 23.163960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047947, 34.838753, 23.410236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077412, 34.615837, 23.079418>,  <36.095089, 34.482090, 22.880926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077412, 34.615837, 23.079418>,  <36.047947, 34.838753, 23.410236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077412, 34.615837, 23.079418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742744, -0.584067, 0.327409,
		-0.665511, 0.590167, -0.456944,
		0.073660, -0.557287, -0.827046,
		36.099510, 34.448650, 22.831305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369186, 34.780544, 23.050407>,  <36.047947, 34.838753, 23.410236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369186, 34.780544, 23.050407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582233, 34.445438, 23.002293>,  <35.710060, 34.244373, 22.973423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582233, 34.445438, 23.002293>,  <35.369186, 34.780544, 23.050407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582233, 34.445438, 23.002293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764066, -0.537078, 0.357424,
		-0.364041, -0.098462, -0.926164,
		0.532615, -0.837767, -0.120286,
		35.742020, 34.194107, 22.966206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018436, 34.342251, 22.582918>,  <35.369186, 34.780544, 23.050407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018436, 34.342251, 22.582918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183933, 34.141300, 22.886612>,  <35.283230, 34.020729, 23.068829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183933, 34.141300, 22.886612>,  <35.018436, 34.342251, 22.582918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183933, 34.141300, 22.886612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892619, -0.387852, 0.229787,
		0.179031, -0.772780, -0.608900,
		0.413737, -0.502377, 0.759236,
		35.308056, 33.990585, 23.114382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444965, 33.823654, 22.618004>,  <35.018436, 34.342251, 22.582918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444965, 33.823654, 22.618004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644032, 33.748024, 22.956608>,  <34.763470, 33.702644, 23.159771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644032, 33.748024, 22.956608>,  <34.444965, 33.823654, 22.618004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644032, 33.748024, 22.956608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746125, -0.590986, 0.306648,
		0.442296, -0.784210, -0.435188,
		0.497667, -0.189076, 0.846510,
		34.793331, 33.691299, 23.210560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391113, 33.073891, 22.731714>,  <34.444965, 33.823654, 22.618004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391113, 33.073891, 22.731714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460186, 33.271957, 23.072300>,  <34.501629, 33.390797, 23.276651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460186, 33.271957, 23.072300>,  <34.391113, 33.073891, 22.731714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460186, 33.271957, 23.072300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766887, -0.474891, 0.431698,
		0.618115, -0.727523, 0.297732,
		0.172680, 0.495166, 0.851465,
		34.511990, 33.420506, 23.327740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696968, 32.745941, 23.173328>,  <34.391113, 33.073891, 22.731714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696968, 32.745941, 23.173328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486458, 33.011627, 23.385689>,  <34.360153, 33.171040, 23.513105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486458, 33.011627, 23.385689>,  <34.696968, 32.745941, 23.173328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486458, 33.011627, 23.385689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536739, -0.743744, 0.398443,
		0.659505, -0.075264, 0.747923,
		-0.526275, 0.664214, 0.530900,
		34.328575, 33.210892, 23.544958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672455, 32.650726, 23.975784>,  <34.696968, 32.745941, 23.173328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672455, 32.650726, 23.975784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338154, 32.861801, 23.915031>,  <34.137573, 32.988445, 23.878580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338154, 32.861801, 23.915031>,  <34.672455, 32.650726, 23.975784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338154, 32.861801, 23.915031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510258, -0.644129, 0.569855,
		0.202873, 0.553756, 0.807587,
		-0.835751, 0.527686, -0.151882,
		34.087429, 33.020107, 23.869467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348652, 32.576492, 24.669720>,  <34.672455, 32.650726, 23.975784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348652, 32.576492, 24.669720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071266, 32.735340, 24.429253>,  <33.904835, 32.830650, 24.284971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071266, 32.735340, 24.429253>,  <34.348652, 32.576492, 24.669720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071266, 32.735340, 24.429253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693187, -0.595262, 0.406392,
		-0.196467, 0.698541, 0.688070,
		-0.693464, 0.397119, -0.601169,
		33.863228, 32.854477, 24.248901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736732, 32.648270, 25.130190>,  <34.348652, 32.576492, 24.669720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736732, 32.648270, 25.130190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611675, 32.671032, 24.750923>,  <33.536640, 32.684689, 24.523363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611675, 32.671032, 24.750923>,  <33.736732, 32.648270, 25.130190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611675, 32.671032, 24.750923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771432, -0.597620, 0.218503,
		-0.554209, 0.799758, 0.230737,
		-0.312642, 0.056902, -0.948165,
		33.517883, 32.688103, 24.466475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050980, 32.787140, 25.144550>,  <33.736732, 32.648270, 25.130190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050980, 32.787140, 25.144550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089745, 32.596817, 24.794872>,  <33.113003, 32.482624, 24.585066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089745, 32.596817, 24.794872>,  <33.050980, 32.787140, 25.144550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089745, 32.596817, 24.794872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510134, -0.777932, 0.366858,
		-0.854618, 0.410406, -0.318113,
		0.096909, -0.475804, -0.874197,
		33.118816, 32.454075, 24.532614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394455, 32.508965, 25.077219>,  <33.050980, 32.787140, 25.144550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394455, 32.508965, 25.077219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609776, 32.300533, 24.812279>,  <32.738968, 32.175476, 24.653315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609776, 32.300533, 24.812279>,  <32.394455, 32.508965, 25.077219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609776, 32.300533, 24.812279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534018, -0.818916, 0.210239,
		-0.651960, 0.240534, -0.719091,
		0.538306, -0.521075, -0.662349,
		32.771267, 32.144211, 24.613573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918747, 32.244213, 24.565447>,  <32.394455, 32.508965, 25.077219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918747, 32.244213, 24.565447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226673, 31.989021, 24.573086>,  <32.411430, 31.835905, 24.577669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226673, 31.989021, 24.573086>,  <31.918747, 32.244213, 24.565447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226673, 31.989021, 24.573086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601828, -0.715577, 0.354615,
		-0.212572, -0.284481, -0.934817,
		0.769816, -0.637981, 0.019097,
		32.457619, 31.797626, 24.578815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589405, 31.626934, 24.489239>,  <31.918747, 32.244213, 24.565447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589405, 31.626934, 24.489239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961824, 31.503174, 24.566616>,  <32.185276, 31.428917, 24.613043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961824, 31.503174, 24.566616>,  <31.589405, 31.626934, 24.489239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961824, 31.503174, 24.566616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360893, -0.859110, 0.362885,
		0.053911, -0.407676, -0.911534,
		0.931048, -0.309402, 0.193443,
		32.241138, 31.410353, 24.624649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690750, 30.906548, 24.245409>,  <31.589405, 31.626934, 24.489239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690750, 30.906548, 24.245409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928320, 30.974087, 24.560051>,  <32.070862, 31.014610, 24.748837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928320, 30.974087, 24.560051>,  <31.690750, 30.906548, 24.245409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928320, 30.974087, 24.560051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292219, -0.865678, 0.406461,
		0.749575, -0.471267, -0.464806,
		0.593924, 0.168847, 0.786603,
		32.106499, 31.024740, 24.796032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000706, 30.248177, 24.454262>,  <31.690750, 30.906548, 24.245409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000706, 30.248177, 24.454262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031952, 30.464767, 24.789093>,  <32.050701, 30.594723, 24.989992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031952, 30.464767, 24.789093>,  <32.000706, 30.248177, 24.454262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031952, 30.464767, 24.789093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145600, -0.824444, 0.546893,
		0.986255, -0.164600, 0.014437,
		0.078116, 0.541478, 0.837078,
		32.055386, 30.627211, 25.040216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445770, 29.705009, 24.903851>,  <32.000706, 30.248177, 24.454262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445770, 29.705009, 24.903851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329964, 29.997536, 25.150867>,  <32.260479, 30.173052, 25.299078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329964, 29.997536, 25.150867>,  <32.445770, 29.705009, 24.903851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329964, 29.997536, 25.150867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066137, -0.658915, 0.749304,
		0.954886, 0.176091, 0.239132,
		-0.289514, 0.731315, 0.617543,
		32.243111, 30.216930, 25.336130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976162, 29.768881, 25.484911>,  <32.445770, 29.705009, 24.903851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976162, 29.768881, 25.484911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621086, 29.917179, 25.594131>,  <32.408039, 30.006157, 25.659664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621086, 29.917179, 25.594131>,  <32.976162, 29.768881, 25.484911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621086, 29.917179, 25.594131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030086, -0.545049, 0.837864,
		0.459459, 0.751978, 0.472679,
		-0.887689, 0.370743, 0.273052,
		32.354778, 30.028402, 25.676046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094517, 29.787241, 26.179432>,  <32.976162, 29.768881, 25.484911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094517, 29.787241, 26.179432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699036, 29.823181, 26.131443>,  <32.461746, 29.844746, 26.102650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699036, 29.823181, 26.131443>,  <33.094517, 29.787241, 26.179432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699036, 29.823181, 26.131443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149541, -0.536857, 0.830314,
		0.010194, 0.838875, 0.544228,
		-0.988703, 0.089849, -0.119974,
		32.402424, 29.850136, 26.095451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828262, 30.055300, 26.765671>,  <33.094517, 29.787241, 26.179432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828262, 30.055300, 26.765671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522205, 29.861897, 26.595596>,  <32.338573, 29.745855, 26.493551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522205, 29.861897, 26.595596>,  <32.828262, 30.055300, 26.765671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522205, 29.861897, 26.595596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106606, -0.556120, 0.824237,
		-0.634980, 0.675982, 0.373964,
		-0.765138, -0.483507, -0.425188,
		32.292664, 29.716845, 26.468040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334122, 30.083715, 27.268576>,  <32.828262, 30.055300, 26.765671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334122, 30.083715, 27.268576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237324, 29.773441, 27.035423>,  <32.179245, 29.587276, 26.895531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237324, 29.773441, 27.035423>,  <32.334122, 30.083715, 27.268576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237324, 29.773441, 27.035423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179407, -0.554608, 0.812541,
		-0.953548, 0.301200, -0.004954,
		-0.241990, -0.775686, -0.582882,
		32.164726, 29.540735, 26.860559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605801, 29.983051, 27.375921>,  <32.334122, 30.083715, 27.268576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605801, 29.983051, 27.375921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802858, 29.660496, 27.245052>,  <31.921093, 29.466963, 27.166531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802858, 29.660496, 27.245052>,  <31.605801, 29.983051, 27.375921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802858, 29.660496, 27.245052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122308, -0.436389, 0.891406,
		-0.861594, -0.399128, -0.313611,
		0.492642, -0.806388, -0.327174,
		31.950651, 29.418579, 27.146900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233509, 29.411453, 27.631514>,  <31.605801, 29.983051, 27.375921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233509, 29.411453, 27.631514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568604, 29.222378, 27.522144>,  <31.769661, 29.108932, 27.456524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568604, 29.222378, 27.522144>,  <31.233509, 29.411453, 27.631514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568604, 29.222378, 27.522144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064580, -0.582951, 0.809937,
		-0.542235, -0.660860, -0.518888,
		0.837741, -0.472686, -0.273418,
		31.819925, 29.080570, 27.440117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197939, 28.766121, 27.890110>,  <31.233509, 29.411453, 27.631514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197939, 28.766121, 27.890110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590847, 28.777225, 27.815952>,  <31.826591, 28.783888, 27.771458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590847, 28.777225, 27.815952>,  <31.197939, 28.766121, 27.890110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590847, 28.777225, 27.815952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179155, -0.430129, 0.884812,
		-0.055181, -0.902340, -0.427477,
		0.982272, 0.027760, -0.185393,
		31.885529, 28.785553, 27.760334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402161, 28.153595, 28.094765>,  <31.197939, 28.766121, 27.890110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402161, 28.153595, 28.094765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740370, 28.365917, 28.071659>,  <31.943295, 28.493311, 28.057796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740370, 28.365917, 28.071659>,  <31.402161, 28.153595, 28.094765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740370, 28.365917, 28.071659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339980, -0.451796, 0.824799,
		0.411713, -0.717024, -0.562467,
		0.845521, 0.530808, -0.057764,
		31.994026, 28.525160, 28.054331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952536, 27.770931, 28.144012>,  <31.402161, 28.153595, 28.094765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952536, 27.770931, 28.144012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096813, 28.113007, 28.292904>,  <32.183380, 28.318253, 28.382238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096813, 28.113007, 28.292904>,  <31.952536, 27.770931, 28.144012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096813, 28.113007, 28.292904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476918, -0.512082, 0.714367,
		0.801530, -0.080145, -0.592560,
		0.360693, 0.855189, 0.372227,
		32.205021, 28.369564, 28.404572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716549, 27.671440, 28.310171>,  <31.952536, 27.770931, 28.144012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716549, 27.671440, 28.310171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639854, 28.006294, 28.515087>,  <32.593838, 28.207207, 28.638037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639854, 28.006294, 28.515087>,  <32.716549, 27.671440, 28.310171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639854, 28.006294, 28.515087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531419, -0.350283, 0.771295,
		0.825125, 0.420125, -0.377708,
		-0.191736, 0.837136, 0.512290,
		32.582333, 28.257435, 28.668774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290634, 27.943512, 28.637383>,  <32.716549, 27.671440, 28.310171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290634, 27.943512, 28.637383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996716, 28.098965, 28.859749>,  <32.820366, 28.192236, 28.993168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996716, 28.098965, 28.859749>,  <33.290634, 27.943512, 28.637383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996716, 28.098965, 28.859749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379762, -0.443371, 0.811914,
		0.562010, 0.807706, 0.178200,
		-0.734796, 0.388630, 0.555915,
		32.776276, 28.215553, 29.026524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594273, 28.115934, 29.320583>,  <33.290634, 27.943512, 28.637383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594273, 28.115934, 29.320583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201187, 28.119202, 29.394569>,  <32.965336, 28.121162, 29.438961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201187, 28.119202, 29.394569>,  <33.594273, 28.115934, 29.320583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201187, 28.119202, 29.394569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143723, -0.596130, 0.789920,
		0.116714, 0.802847, 0.584649,
		-0.982711, 0.008168, 0.184964,
		32.906372, 28.121653, 29.450058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525806, 28.391901, 29.913582>,  <33.594273, 28.115934, 29.320583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525806, 28.391901, 29.913582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203617, 28.161591, 29.857449>,  <33.010303, 28.023405, 29.823769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203617, 28.161591, 29.857449>,  <33.525806, 28.391901, 29.913582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203617, 28.161591, 29.857449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251923, -0.547004, 0.798324,
		-0.536418, 0.607677, 0.585649,
		-0.805475, -0.575774, -0.140335,
		32.961975, 27.988859, 29.815348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231834, 28.313929, 30.541912>,  <33.525806, 28.391901, 29.913582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231834, 28.313929, 30.541912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045528, 28.020882, 30.343384>,  <32.933743, 27.845055, 30.224266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045528, 28.020882, 30.343384>,  <33.231834, 28.313929, 30.541912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045528, 28.020882, 30.343384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187988, -0.466154, 0.864501,
		-0.864709, 0.495958, 0.079396,
		-0.465767, -0.732616, -0.496321,
		32.905800, 27.801096, 30.194487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875515, 28.073343, 31.062138>,  <33.231834, 28.313929, 30.541912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875515, 28.073343, 31.062138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848499, 27.795727, 30.775433>,  <32.832291, 27.629158, 30.603409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848499, 27.795727, 30.775433>,  <32.875515, 28.073343, 31.062138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848499, 27.795727, 30.775433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284042, -0.675299, 0.680655,
		-0.956430, 0.249564, -0.151525,
		-0.067542, -0.694039, -0.716762,
		32.828236, 27.587515, 30.560404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325493, 27.636635, 31.427195>,  <32.875515, 28.073343, 31.062138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325493, 27.636635, 31.427195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561993, 27.446262, 31.166759>,  <32.703892, 27.332039, 31.010498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561993, 27.446262, 31.166759>,  <32.325493, 27.636635, 31.427195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561993, 27.446262, 31.166759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128494, -0.741408, 0.658638,
		-0.796186, -0.473080, -0.377204,
		0.591250, -0.475930, -0.651086,
		32.739368, 27.303484, 30.971434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001965, 27.053715, 31.289284>,  <32.325493, 27.636635, 31.427195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001965, 27.053715, 31.289284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382988, 26.963547, 31.207481>,  <32.611603, 26.909447, 31.158400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382988, 26.963547, 31.207481>,  <32.001965, 27.053715, 31.289284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382988, 26.963547, 31.207481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020207, -0.717269, 0.696503,
		-0.303691, -0.659326, -0.687795,
		0.952556, -0.225420, -0.204505,
		32.668755, 26.895920, 31.146130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004612, 26.337118, 31.180378>,  <32.001965, 27.053715, 31.289284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004612, 26.337118, 31.180378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380043, 26.446320, 31.264797>,  <32.605301, 26.511841, 31.315449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380043, 26.446320, 31.264797>,  <32.004612, 26.337118, 31.180378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380043, 26.446320, 31.264797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075231, -0.758791, 0.646975,
		0.336766, -0.591359, -0.732723,
		0.938578, 0.273003, 0.211046,
		32.661617, 26.528221, 31.328112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407185, 25.681253, 31.241392>,  <32.004612, 26.337118, 31.180378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407185, 25.681253, 31.241392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617611, 25.956528, 31.441254>,  <32.743866, 26.121693, 31.561171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617611, 25.956528, 31.441254>,  <32.407185, 25.681253, 31.241392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617611, 25.956528, 31.441254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107015, -0.636422, 0.763881,
		0.843683, -0.348382, -0.408447,
		0.526067, 0.688184, 0.499656,
		32.775433, 26.162983, 31.591150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035488, 25.331463, 31.488043>,  <32.407185, 25.681253, 31.241392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035488, 25.331463, 31.488043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971642, 25.660336, 31.706600>,  <32.933334, 25.857658, 31.837734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971642, 25.660336, 31.706600>,  <33.035488, 25.331463, 31.488043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971642, 25.660336, 31.706600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107915, -0.564703, 0.818208,
		0.981263, 0.071633, 0.178860,
		-0.159614, 0.822180, 0.546392,
		32.923756, 25.906990, 31.870518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581699, 25.247412, 31.986776>,  <33.035488, 25.331463, 31.488043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581699, 25.247412, 31.986776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316025, 25.514553, 32.121136>,  <33.156620, 25.674839, 32.201752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316025, 25.514553, 32.121136>,  <33.581699, 25.247412, 31.986776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316025, 25.514553, 32.121136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041675, -0.415542, 0.908619,
		0.746405, 0.617490, 0.248164,
		-0.664186, 0.667855, 0.335897,
		33.116768, 25.714911, 32.221905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757957, 25.497055, 32.741058>,  <33.581699, 25.247412, 31.986776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757957, 25.497055, 32.741058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369228, 25.589703, 32.723572>,  <33.135990, 25.645290, 32.713081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369228, 25.589703, 32.723572>,  <33.757957, 25.497055, 32.741058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369228, 25.589703, 32.723572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116227, -0.309554, 0.943752,
		0.205059, 0.922242, 0.327752,
		-0.971824, 0.231618, -0.043713,
		33.077682, 25.659187, 32.710457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573124, 25.612022, 33.382172>,  <33.757957, 25.497055, 32.741058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573124, 25.612022, 33.382172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202621, 25.609928, 33.231430>,  <32.980320, 25.608671, 33.140987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202621, 25.609928, 33.231430>,  <33.573124, 25.612022, 33.382172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202621, 25.609928, 33.231430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347474, -0.375380, 0.859274,
		-0.145962, 0.926856, 0.345880,
		-0.926260, -0.005237, -0.376850,
		32.924744, 25.608356, 33.118374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194763, 25.881044, 33.949162>,  <33.573124, 25.612022, 33.382172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194763, 25.881044, 33.949162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929699, 25.690582, 33.717937>,  <32.770660, 25.576305, 33.579201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929699, 25.690582, 33.717937>,  <33.194763, 25.881044, 33.949162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929699, 25.690582, 33.717937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407398, -0.418482, 0.811727,
		-0.628415, 0.773402, 0.083328,
		-0.662662, -0.476153, -0.578063,
		32.730900, 25.547737, 33.544518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481060, 26.165033, 34.139168>,  <33.194763, 25.881044, 33.949162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481060, 26.165033, 34.139168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488495, 25.799946, 33.975899>,  <32.492958, 25.580894, 33.877937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488495, 25.799946, 33.975899>,  <32.481060, 26.165033, 34.139168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488495, 25.799946, 33.975899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487188, -0.364766, 0.793469,
		-0.873099, 0.184104, -0.451446,
		0.018591, -0.912717, -0.408170,
		32.494072, 25.526131, 33.853447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908604, 25.853512, 34.340248>,  <32.481060, 26.165033, 34.139168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908604, 25.853512, 34.340248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144482, 25.551094, 34.226646>,  <32.286007, 25.369644, 34.158485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144482, 25.551094, 34.226646>,  <31.908604, 25.853512, 34.340248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144482, 25.551094, 34.226646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319765, -0.541482, 0.777527,
		-0.741628, -0.367688, -0.561065,
		0.589693, -0.756044, -0.284004,
		32.321388, 25.324282, 34.141445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484316, 25.301264, 34.273346>,  <31.908604, 25.853512, 34.340248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484316, 25.301264, 34.273346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829565, 25.103031, 34.312168>,  <32.036713, 24.984093, 34.335461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829565, 25.103031, 34.312168>,  <31.484316, 25.301264, 34.273346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829565, 25.103031, 34.312168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393008, -0.538500, 0.745360,
		-0.317118, -0.681483, -0.659558,
		0.863122, -0.495579, 0.097060,
		32.088501, 24.954357, 34.341286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281311, 24.610014, 34.378265>,  <31.484316, 25.301264, 34.273346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281311, 24.610014, 34.378265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658524, 24.625626, 34.510429>,  <31.884851, 24.634993, 34.589729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658524, 24.625626, 34.510429>,  <31.281311, 24.610014, 34.378265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658524, 24.625626, 34.510429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278983, -0.448340, 0.849211,
		0.181282, -0.893010, -0.411910,
		0.943030, 0.039031, 0.330410,
		31.941433, 24.637335, 34.609550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469704, 23.914402, 34.619629>,  <31.281311, 24.610014, 34.378265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469704, 23.914402, 34.619629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772959, 24.135078, 34.758690>,  <31.954912, 24.267485, 34.842125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772959, 24.135078, 34.758690>,  <31.469704, 23.914402, 34.619629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772959, 24.135078, 34.758690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103315, -0.424779, 0.899383,
		0.643858, -0.717773, -0.265043,
		0.758138, 0.551692, 0.347654,
		32.000401, 24.300587, 34.862988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997557, 23.444372, 34.836166>,  <31.469704, 23.914402, 34.619629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997557, 23.444372, 34.836166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084888, 23.785938, 35.025127>,  <32.137287, 23.990877, 35.138504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084888, 23.785938, 35.025127>,  <31.997557, 23.444372, 34.836166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084888, 23.785938, 35.025127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092430, -0.499998, 0.861080,
		0.971488, -0.144336, -0.188092,
		0.218330, 0.853914, 0.472401,
		32.150387, 24.042112, 35.166847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589188, 23.332996, 35.264267>,  <31.997557, 23.444372, 34.836166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589188, 23.332996, 35.264267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416378, 23.644432, 35.446323>,  <32.312691, 23.831293, 35.555557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416378, 23.644432, 35.446323>,  <32.589188, 23.332996, 35.264267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416378, 23.644432, 35.446323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142741, -0.439277, 0.886939,
		0.890494, 0.448147, 0.078642,
		-0.432024, 0.778589, 0.455142,
		32.286770, 23.878008, 35.582867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065662, 23.578568, 35.756165>,  <32.589188, 23.332996, 35.264267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065662, 23.578568, 35.756165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684036, 23.670074, 35.833538>,  <32.455059, 23.724979, 35.879963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684036, 23.670074, 35.833538>,  <33.065662, 23.578568, 35.756165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684036, 23.670074, 35.833538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091380, -0.392675, 0.915126,
		0.285308, 0.890770, 0.353735,
		-0.954070, 0.228768, 0.193432,
		32.397816, 23.738705, 35.891567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045803, 23.925211, 36.408123>,  <33.065662, 23.578568, 35.756165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045803, 23.925211, 36.408123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702675, 23.733448, 36.334034>,  <32.496796, 23.618391, 36.289581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702675, 23.733448, 36.334034>,  <33.045803, 23.925211, 36.408123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702675, 23.733448, 36.334034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163862, -0.596706, 0.785551,
		-0.487120, 0.643515, 0.590426,
		-0.857825, -0.479407, -0.185220,
		32.445328, 23.589626, 36.278469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868336, 23.561760, 36.961452>,  <33.045803, 23.925211, 36.408123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868336, 23.561760, 36.961452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647076, 23.368908, 36.689697>,  <32.514320, 23.253197, 36.526642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647076, 23.368908, 36.689697>,  <32.868336, 23.561760, 36.961452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647076, 23.368908, 36.689697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143417, -0.858453, 0.492434,
		-0.820643, 0.174954, 0.544000,
		-0.553151, -0.482131, -0.679392,
		32.481129, 23.224268, 36.485878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267696, 23.046431, 37.258160>,  <32.868336, 23.561760, 36.961452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267696, 23.046431, 37.258160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402061, 22.924080, 36.901821>,  <32.482681, 22.850670, 36.688019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402061, 22.924080, 36.901821>,  <32.267696, 23.046431, 37.258160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402061, 22.924080, 36.901821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107442, -0.927184, 0.358867,
		-0.935746, -0.216261, -0.278587,
		0.335911, -0.305876, -0.890845,
		32.502834, 22.832317, 36.634567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983105, 22.464024, 37.275841>,  <32.267696, 23.046431, 37.258160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983105, 22.464024, 37.275841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254368, 22.419968, 36.985195>,  <32.417126, 22.393534, 36.810806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254368, 22.419968, 36.985195>,  <31.983105, 22.464024, 37.275841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254368, 22.419968, 36.985195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205128, -0.921044, 0.331059,
		-0.705710, -0.373559, -0.602019,
		0.678157, -0.110140, -0.726618,
		32.457813, 22.386925, 36.767208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308722, 22.908216, 37.093060>,  <31.983105, 22.464024, 37.275841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308722, 22.908216, 37.093060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986805, 22.906540, 37.330479>,  <30.793655, 22.905535, 37.472931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986805, 22.906540, 37.330479>,  <31.308722, 22.908216, 37.093060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986805, 22.906540, 37.330479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294645, 0.865249, 0.405622,
		-0.515264, 0.501325, -0.695109,
		-0.804790, -0.004191, 0.593544,
		30.745367, 22.905283, 37.508541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523884, 23.685062, 37.241932>,  <31.308722, 22.908216, 37.093060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523884, 23.685062, 37.241932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849607, 23.913380, 37.199802>,  <32.045040, 24.050371, 37.174526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849607, 23.913380, 37.199802>,  <31.523884, 23.685062, 37.241932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849607, 23.913380, 37.199802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415758, 0.446979, -0.792057,
		-0.405024, 0.688769, 0.601292,
		0.814310, 0.570794, -0.105324,
		32.093899, 24.084618, 37.168205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320518, 24.265999, 37.706596>,  <31.523884, 23.685062, 37.241932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320518, 24.265999, 37.706596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276299, 24.487186, 38.036930>,  <31.249765, 24.619900, 38.235130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276299, 24.487186, 38.036930>,  <31.320518, 24.265999, 37.706596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276299, 24.487186, 38.036930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175119, 0.828766, -0.531489,
		-0.978321, 0.085862, -0.188456,
		-0.110551, 0.552969, 0.825835,
		31.243134, 24.653078, 38.284679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848795, 24.918594, 37.647049>,  <31.320518, 24.265999, 37.706596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848795, 24.918594, 37.647049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128933, 24.986580, 37.924358>,  <31.297016, 25.027372, 38.090744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128933, 24.986580, 37.924358>,  <30.848795, 24.918594, 37.647049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128933, 24.986580, 37.924358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240352, 0.858371, -0.453244,
		-0.672122, 0.484057, 0.560304,
		0.700345, 0.169965, 0.693274,
		31.339037, 25.037569, 38.132339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691385, 25.478420, 38.154865>,  <30.848795, 24.918594, 37.647049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691385, 25.478420, 38.154865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073627, 25.422165, 38.051300>,  <31.302973, 25.388412, 37.989162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073627, 25.422165, 38.051300>,  <30.691385, 25.478420, 38.154865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073627, 25.422165, 38.051300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007359, 0.867065, -0.498141,
		0.294553, 0.477933, 0.827538,
		0.955607, -0.140639, -0.258913,
		31.360310, 25.379972, 37.973625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104691, 26.072945, 38.403465>,  <30.691385, 25.478420, 38.154865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104691, 26.072945, 38.403465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276773, 25.874565, 38.101749>,  <31.380022, 25.755537, 37.920719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276773, 25.874565, 38.101749>,  <31.104691, 26.072945, 38.403465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276773, 25.874565, 38.101749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166802, 0.864850, -0.473509,
		0.887187, 0.077889, 0.454789,
		0.430206, -0.495951, -0.754292,
		31.405836, 25.725780, 37.875462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667952, 26.409021, 38.271725>,  <31.104691, 26.072945, 38.403465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667952, 26.409021, 38.271725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602158, 26.228676, 37.920803>,  <31.562681, 26.120468, 37.710251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602158, 26.228676, 37.920803>,  <31.667952, 26.409021, 38.271725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602158, 26.228676, 37.920803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173568, 0.862312, -0.475702,
		0.970988, -0.230519, -0.063582,
		-0.164486, -0.450865, -0.877306,
		31.552813, 26.093416, 37.657612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271919, 26.648197, 37.849728>,  <31.667952, 26.409021, 38.271725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271919, 26.648197, 37.849728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980413, 26.522949, 37.606136>,  <31.805510, 26.447800, 37.459980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980413, 26.522949, 37.606136>,  <32.271919, 26.648197, 37.849728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980413, 26.522949, 37.606136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195672, 0.757021, -0.623403,
		0.656209, -0.573476, -0.490423,
		-0.728767, -0.313121, -0.608978,
		31.761784, 26.429012, 37.423443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519142, 26.714018, 37.152935>,  <32.271919, 26.648197, 37.849728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519142, 26.714018, 37.152935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123447, 26.697704, 37.096733>,  <31.886030, 26.687916, 37.063011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123447, 26.697704, 37.096733>,  <32.519142, 26.714018, 37.152935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123447, 26.697704, 37.096733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068605, 0.718924, -0.691694,
		0.129224, -0.693891, -0.708390,
		-0.989239, -0.040784, -0.140507,
		31.826675, 26.685469, 37.054581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421535, 26.668571, 36.391304>,  <32.519142, 26.714018, 37.152935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421535, 26.668571, 36.391304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093391, 26.806988, 36.573406>,  <31.896503, 26.890038, 36.682667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093391, 26.806988, 36.573406>,  <32.421535, 26.668571, 36.391304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093391, 26.806988, 36.573406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117723, 0.676870, -0.726628,
		-0.559592, -0.649694, -0.514543,
		-0.820365, 0.346042, 0.455255,
		31.847282, 26.910801, 36.709984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999170, 26.885584, 35.862797>,  <32.421535, 26.668571, 36.391304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999170, 26.885584, 35.862797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811945, 27.058956, 36.170837>,  <31.699610, 27.162979, 36.355663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811945, 27.058956, 36.170837>,  <31.999170, 26.885584, 35.862797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811945, 27.058956, 36.170837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271736, 0.758637, -0.592139,
		-0.840880, -0.486421, -0.237310,
		-0.468061, 0.433433, 0.770101,
		31.671526, 27.188986, 36.401867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343502, 27.043180, 35.562725>,  <31.999170, 26.885584, 35.862797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343502, 27.043180, 35.562725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366438, 27.275993, 35.887180>,  <31.380199, 27.415682, 36.081856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366438, 27.275993, 35.887180>,  <31.343502, 27.043180, 35.562725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366438, 27.275993, 35.887180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365032, 0.768444, -0.525591,
		-0.929228, -0.265956, 0.256521,
		0.057338, 0.582032, 0.811142,
		31.383640, 27.450603, 36.130524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786158, 27.361609, 35.454395>,  <31.343502, 27.043180, 35.562725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786158, 27.361609, 35.454395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007515, 27.574409, 35.710751>,  <31.140329, 27.702089, 35.864563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007515, 27.574409, 35.710751>,  <30.786158, 27.361609, 35.454395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007515, 27.574409, 35.710751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317627, 0.846088, -0.428076,
		-0.769980, 0.033332, 0.637197,
		0.553393, 0.532000, 0.640884,
		31.173532, 27.734009, 35.903015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312405, 27.848122, 35.778854>,  <30.786158, 27.361609, 35.454395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312405, 27.848122, 35.778854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692778, 27.971287, 35.790943>,  <30.921001, 28.045187, 35.798199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692778, 27.971287, 35.790943>,  <30.312405, 27.848122, 35.778854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692778, 27.971287, 35.790943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247261, 0.815050, -0.523980,
		-0.185976, 0.490797, 0.851194,
		0.950934, 0.307915, 0.030225,
		30.978058, 28.063662, 35.800011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228951, 28.605564, 35.872997>,  <30.312405, 27.848122, 35.778854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228951, 28.605564, 35.872997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604853, 28.563076, 35.743027>,  <30.830395, 28.537584, 35.665043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604853, 28.563076, 35.743027>,  <30.228951, 28.605564, 35.872997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604853, 28.563076, 35.743027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117744, 0.791766, -0.599369,
		0.320929, 0.601518, 0.731560,
		0.939756, -0.106218, -0.324926,
		30.886780, 28.531210, 35.645550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452471, 29.309813, 35.905975>,  <30.228951, 28.605564, 35.872997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452471, 29.309813, 35.905975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685331, 29.093525, 35.663086>,  <30.825048, 28.963753, 35.517353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685331, 29.093525, 35.663086>,  <30.452471, 29.309813, 35.905975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685331, 29.093525, 35.663086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080385, 0.781435, -0.618787,
		0.809095, 0.311418, 0.498381,
		0.582154, -0.540721, -0.607222,
		30.859978, 28.931309, 35.480919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026215, 29.713118, 35.684086>,  <30.452471, 29.309813, 35.905975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026215, 29.713118, 35.684086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965635, 29.430954, 35.407112>,  <30.929289, 29.261656, 35.240929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965635, 29.430954, 35.407112>,  <31.026215, 29.713118, 35.684086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965635, 29.430954, 35.407112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083336, 0.688905, -0.720045,
		0.984946, -0.166753, -0.045547,
		-0.151447, -0.705410, -0.692431,
		30.920200, 29.219332, 35.199383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379044, 30.007376, 35.173515>,  <31.026215, 29.713118, 35.684086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379044, 30.007376, 35.173515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204378, 29.708500, 34.973103>,  <31.099579, 29.529175, 34.852856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204378, 29.708500, 34.973103>,  <31.379044, 30.007376, 35.173515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204378, 29.708500, 34.973103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141924, 0.607175, -0.781791,
		0.888359, -0.270272, -0.371175,
		-0.436665, -0.747190, -0.501031,
		31.073380, 29.484343, 34.822792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738586, 29.878502, 34.558334>,  <31.379044, 30.007376, 35.173515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738586, 29.878502, 34.558334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371403, 29.725983, 34.514587>,  <31.151093, 29.634472, 34.488338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371403, 29.725983, 34.514587>,  <31.738586, 29.878502, 34.558334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371403, 29.725983, 34.514587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097320, 0.483774, -0.869765,
		0.384548, -0.787767, -0.481193,
		-0.917961, -0.381296, -0.109369,
		31.096014, 29.611593, 34.481777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772030, 29.652056, 33.920284>,  <31.738586, 29.878502, 34.558334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772030, 29.652056, 33.920284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389977, 29.717522, 34.019024>,  <31.160744, 29.756802, 34.078266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389977, 29.717522, 34.019024>,  <31.772030, 29.652056, 33.920284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389977, 29.717522, 34.019024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167096, 0.390370, -0.905367,
		-0.244541, -0.905993, -0.345507,
		-0.955133, 0.163667, 0.246850,
		31.103437, 29.766621, 34.093079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521021, 29.569077, 33.370213>,  <31.772030, 29.652056, 33.920284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521021, 29.569077, 33.370213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222538, 29.747654, 33.567741>,  <31.043447, 29.854799, 33.686260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222538, 29.747654, 33.567741>,  <31.521021, 29.569077, 33.370213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222538, 29.747654, 33.567741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244779, 0.505828, -0.827176,
		-0.619077, -0.738124, -0.268174,
		-0.746208, 0.446442, 0.493824,
		30.998676, 29.881586, 33.715889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916098, 29.358255, 33.095615>,  <31.521021, 29.569077, 33.370213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916098, 29.358255, 33.095615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888212, 29.724926, 33.253017>,  <30.871481, 29.944929, 33.347458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888212, 29.724926, 33.253017>,  <30.916098, 29.358255, 33.095615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888212, 29.724926, 33.253017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189945, 0.375047, -0.907337,
		-0.979317, -0.137995, 0.147973,
		-0.069711, 0.916677, 0.393501,
		30.867298, 29.999929, 33.371067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322214, 29.638512, 32.691517>,  <30.916098, 29.358255, 33.095615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322214, 29.638512, 32.691517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515770, 29.945980, 32.858845>,  <30.631905, 30.130461, 32.959244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515770, 29.945980, 32.858845>,  <30.322214, 29.638512, 32.691517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515770, 29.945980, 32.858845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304336, 0.595986, -0.743088,
		-0.820505, 0.232263, 0.522327,
		0.483891, 0.768671, 0.418324,
		30.660938, 30.176580, 32.984341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860321, 30.217510, 32.520954>,  <30.322214, 29.638512, 32.691517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860321, 30.217510, 32.520954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210426, 30.377903, 32.629128>,  <30.420488, 30.474138, 32.694031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210426, 30.377903, 32.629128>,  <29.860321, 30.217510, 32.520954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210426, 30.377903, 32.629128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088419, 0.682382, -0.725629,
		-0.475498, 0.611204, 0.632717,
		0.875262, 0.400980, 0.270429,
		30.473005, 30.498198, 32.710255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844906, 30.963194, 32.672516>,  <29.860321, 30.217510, 32.520954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844906, 30.963194, 32.672516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221394, 30.897053, 32.554691>,  <30.447287, 30.857368, 32.483997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221394, 30.897053, 32.554691>,  <29.844906, 30.963194, 32.672516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221394, 30.897053, 32.554691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119037, 0.653716, -0.747319,
		0.316132, 0.738454, 0.595606,
		0.941218, -0.165353, -0.294564,
		30.503759, 30.847446, 32.466324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126677, 31.629200, 32.511414>,  <29.844906, 30.963194, 32.672516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126677, 31.629200, 32.511414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371355, 31.373188, 32.325428>,  <30.518162, 31.219580, 32.213837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371355, 31.373188, 32.325428>,  <30.126677, 31.629200, 32.511414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371355, 31.373188, 32.325428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037802, 0.610722, -0.790942,
		0.790190, 0.466239, 0.397770,
		0.611695, -0.640031, -0.464962,
		30.554863, 31.181179, 32.185940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744234, 31.994692, 32.401665>,  <30.126677, 31.629200, 32.511414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744234, 31.994692, 32.401665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763874, 31.690346, 32.142845>,  <30.775658, 31.507738, 31.987553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763874, 31.690346, 32.142845>,  <30.744234, 31.994692, 32.401665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763874, 31.690346, 32.142845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137473, 0.646816, -0.750153,
		0.989288, -0.052119, 0.136357,
		0.049100, -0.760863, -0.647052,
		30.778605, 31.462088, 31.948729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255955, 32.231289, 31.972868>,  <30.744234, 31.994692, 32.401665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255955, 32.231289, 31.972868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095335, 31.931339, 31.762558>,  <30.998962, 31.751369, 31.636372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095335, 31.931339, 31.762558>,  <31.255955, 32.231289, 31.972868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095335, 31.931339, 31.762558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207684, 0.484579, -0.849735,
		0.891978, -0.450408, -0.038846,
		-0.401551, -0.749877, -0.525777,
		30.974869, 31.706377, 31.604824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742971, 32.204380, 31.339069>,  <31.255955, 32.231289, 31.972868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742971, 32.204380, 31.339069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420654, 31.988518, 31.241528>,  <31.227264, 31.858999, 31.183002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420654, 31.988518, 31.241528>,  <31.742971, 32.204380, 31.339069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420654, 31.988518, 31.241528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112708, 0.264496, -0.957778,
		0.581372, -0.799256, -0.152306,
		-0.805794, -0.539659, -0.243853,
		31.178917, 31.826620, 31.168371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015064, 31.861048, 30.767828>,  <31.742971, 32.204380, 31.339069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015064, 31.861048, 30.767828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623236, 31.797932, 30.717976>,  <31.388138, 31.760061, 30.688065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623236, 31.797932, 30.717976>,  <32.015064, 31.861048, 30.767828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623236, 31.797932, 30.717976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112166, 0.085619, -0.989994,
		0.166886, -0.983753, -0.066171,
		-0.979575, -0.157794, -0.124632,
		31.329363, 31.750595, 30.680586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878151, 31.228849, 30.349630>,  <32.015064, 31.861048, 30.767828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878151, 31.228849, 30.349630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576315, 31.488529, 30.311405>,  <31.395212, 31.644337, 30.288469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576315, 31.488529, 30.311405>,  <31.878151, 31.228849, 30.349630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576315, 31.488529, 30.311405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064817, -0.071177, -0.995356,
		-0.652986, -0.757281, 0.011630,
		-0.754592, 0.649199, -0.095562,
		31.349937, 31.683289, 30.282736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398626, 30.919748, 29.876984>,  <31.878151, 31.228849, 30.349630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398626, 30.919748, 29.876984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325113, 31.312935, 29.877781>,  <31.281006, 31.548847, 29.878260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325113, 31.312935, 29.877781>,  <31.398626, 30.919748, 29.876984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325113, 31.312935, 29.877781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049839, 0.011345, -0.998693,
		-0.981703, -0.183443, -0.051075,
		-0.183783, 0.982965, 0.001995,
		31.269978, 31.607824, 29.878380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964426, 30.972851, 29.359571>,  <31.398626, 30.919748, 29.876984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964426, 30.972851, 29.359571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120224, 31.335991, 29.421669>,  <31.213703, 31.553875, 29.458927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120224, 31.335991, 29.421669>,  <30.964426, 30.972851, 29.359571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120224, 31.335991, 29.421669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047153, 0.148678, -0.987761,
		-0.919820, 0.392049, 0.015102,
		0.389496, 0.907850, 0.155243,
		31.237072, 31.608347, 29.468243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839979, 31.257147, 28.770185>,  <30.964426, 30.972851, 29.359571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839979, 31.257147, 28.770185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065720, 31.539165, 28.941963>,  <31.201164, 31.708376, 29.045031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065720, 31.539165, 28.941963>,  <30.839979, 31.257147, 28.770185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065720, 31.539165, 28.941963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170106, 0.409722, -0.896209,
		-0.807820, 0.578826, 0.111294,
		0.564349, 0.705044, 0.429444,
		31.235023, 31.750679, 29.070797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727747, 31.890175, 28.330994>,  <30.839979, 31.257147, 28.770185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727747, 31.890175, 28.330994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063498, 31.984394, 28.526936>,  <31.264948, 32.040928, 28.644501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063498, 31.984394, 28.526936>,  <30.727747, 31.890175, 28.330994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063498, 31.984394, 28.526936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250801, 0.631709, -0.733513,
		-0.482226, 0.738552, 0.471167,
		0.839379, 0.235550, 0.489857,
		31.315311, 32.055058, 28.673893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693388, 32.656197, 28.409912>,  <30.727747, 31.890175, 28.330994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693388, 32.656197, 28.409912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063879, 32.506893, 28.431004>,  <31.286173, 32.417313, 28.443659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063879, 32.506893, 28.431004>,  <30.693388, 32.656197, 28.409912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063879, 32.506893, 28.431004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333295, 0.745529, -0.577149,
		0.176114, 0.552146, 0.814934,
		0.926228, -0.373257, 0.052730,
		31.341747, 32.394917, 28.446823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088627, 33.255306, 28.472002>,  <30.693388, 32.656197, 28.409912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088627, 33.255306, 28.472002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330137, 32.963921, 28.342514>,  <31.475044, 32.789089, 28.264820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330137, 32.963921, 28.342514>,  <31.088627, 33.255306, 28.472002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330137, 32.963921, 28.342514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419669, 0.635739, -0.647854,
		0.677739, 0.255304, 0.689558,
		0.603778, -0.728462, -0.323721,
		31.511271, 32.745380, 28.245398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737606, 33.638393, 28.373575>,  <31.088627, 33.255306, 28.472002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737606, 33.638393, 28.373575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760061, 33.304184, 28.154945>,  <31.773535, 33.103657, 28.023767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760061, 33.304184, 28.154945>,  <31.737606, 33.638393, 28.373575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760061, 33.304184, 28.154945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492351, 0.499415, -0.712864,
		0.868585, -0.229090, 0.439407,
		0.056136, -0.835525, -0.546577,
		31.776901, 33.053528, 27.990973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481243, 33.694527, 28.086315>,  <31.737606, 33.638393, 28.373575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481243, 33.694527, 28.086315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289848, 33.417561, 27.870312>,  <32.175011, 33.251381, 27.740709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289848, 33.417561, 27.870312>,  <32.481243, 33.694527, 28.086315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289848, 33.417561, 27.870312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470272, 0.317277, -0.823516,
		0.741548, -0.647995, 0.173810,
		-0.478488, -0.692414, -0.540010,
		32.146301, 33.209835, 27.708309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956394, 33.441971, 27.633802>,  <32.481243, 33.694527, 28.086315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956394, 33.441971, 27.633802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607239, 33.355824, 27.458675>,  <32.397747, 33.304134, 27.353600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607239, 33.355824, 27.458675>,  <32.956394, 33.441971, 27.633802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607239, 33.355824, 27.458675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331044, 0.397765, -0.855683,
		0.358440, -0.891850, -0.275905,
		-0.872886, -0.215374, -0.437817,
		32.345371, 33.291214, 27.327332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201771, 33.228394, 26.916580>,  <32.956394, 33.441971, 27.633802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201771, 33.228394, 26.916580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812943, 33.322254, 26.918293>,  <32.579647, 33.378571, 26.919321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812943, 33.322254, 26.918293>,  <33.201771, 33.228394, 26.916580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812943, 33.322254, 26.918293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123588, 0.527320, -0.840630,
		-0.199509, -0.816623, -0.541593,
		-0.972071, 0.234648, 0.004280,
		32.521320, 33.392647, 26.919577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918587, 33.058022, 26.180971>,  <33.201771, 33.228394, 26.916580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918587, 33.058022, 26.180971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661907, 33.305096, 26.362820>,  <32.507900, 33.453339, 26.471930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661907, 33.305096, 26.362820>,  <32.918587, 33.058022, 26.180971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661907, 33.305096, 26.362820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062348, 0.548789, -0.833633,
		-0.764416, -0.563288, -0.313647,
		-0.641701, 0.617687, 0.454623,
		32.469398, 33.490402, 26.499207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370625, 33.088970, 25.796377>,  <32.918587, 33.058022, 26.180971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370625, 33.088970, 25.796377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351845, 33.432598, 26.000259>,  <32.340576, 33.638775, 26.122589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351845, 33.432598, 26.000259>,  <32.370625, 33.088970, 25.796377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351845, 33.432598, 26.000259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075015, 0.505796, -0.859385,
		-0.996076, -0.078585, 0.040695,
		-0.046952, 0.859066, 0.509707,
		32.337761, 33.690319, 26.153172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930502, 33.460712, 25.452991>,  <32.370625, 33.088970, 25.796377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930502, 33.460712, 25.452991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122482, 33.743801, 25.660366>,  <32.237671, 33.913654, 25.784790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122482, 33.743801, 25.660366>,  <31.930502, 33.460712, 25.452991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122482, 33.743801, 25.660366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121847, 0.638993, -0.759500,
		-0.868793, 0.301352, 0.392919,
		0.479949, 0.707725, 0.518434,
		32.266468, 33.956120, 25.815897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475271, 34.034851, 25.482777>,  <31.930502, 33.460712, 25.452991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475271, 34.034851, 25.482777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851908, 34.154118, 25.545391>,  <32.077888, 34.225677, 25.582960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851908, 34.154118, 25.545391>,  <31.475271, 34.034851, 25.482777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851908, 34.154118, 25.545391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018194, 0.509202, -0.860455,
		-0.336265, 0.807349, 0.484885,
		0.941592, 0.298162, 0.156538,
		32.134384, 34.243565, 25.592352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868134, 33.890007, 25.913816>,  <31.475271, 34.034851, 25.482777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868134, 33.890007, 25.913816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500944, 34.005737, 25.805290>,  <30.280630, 34.075176, 25.740175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500944, 34.005737, 25.805290>,  <30.868134, 33.890007, 25.913816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500944, 34.005737, 25.805290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391831, -0.555325, 0.733541,
		0.061565, 0.779682, 0.623142,
		-0.917975, 0.289327, -0.271315,
		30.225552, 34.092537, 25.723896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631016, 34.167042, 26.488108>,  <30.868134, 33.890007, 25.913816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631016, 34.167042, 26.488108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293940, 34.098347, 26.284000>,  <30.091694, 34.057129, 26.161535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293940, 34.098347, 26.284000>,  <30.631016, 34.167042, 26.488108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293940, 34.098347, 26.284000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413808, -0.399715, 0.817919,
		-0.344432, 0.900407, 0.265768,
		-0.842692, -0.171741, -0.510270,
		30.041132, 34.046825, 26.130919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040865, 34.401489, 26.884447>,  <30.631016, 34.167042, 26.488108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040865, 34.401489, 26.884447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866039, 34.143150, 26.634052>,  <29.761143, 33.988148, 26.483816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866039, 34.143150, 26.634052>,  <30.040865, 34.401489, 26.884447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866039, 34.143150, 26.634052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502737, -0.401686, 0.765444,
		-0.745807, 0.649255, -0.149127,
		-0.437066, -0.645845, -0.625985,
		29.734919, 33.949398, 26.446257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248276, 34.436611, 26.935692>,  <30.040865, 34.401489, 26.884447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248276, 34.436611, 26.935692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327650, 34.070854, 26.794544>,  <29.375275, 33.851402, 26.709856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327650, 34.070854, 26.794544>,  <29.248276, 34.436611, 26.935692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327650, 34.070854, 26.794544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521735, -0.403326, 0.751744,
		-0.829708, 0.034931, -0.557103,
		0.198435, -0.914389, -0.352868,
		29.387180, 33.796539, 26.688684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642811, 34.099567, 26.947405>,  <29.248276, 34.436611, 26.935692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642811, 34.099567, 26.947405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905884, 33.798393, 26.938091>,  <29.063726, 33.617687, 26.932503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905884, 33.798393, 26.938091>,  <28.642811, 34.099567, 26.947405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905884, 33.798393, 26.938091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495692, -0.455843, 0.739254,
		-0.567227, -0.474649, -0.673024,
		0.657680, -0.752938, -0.023287,
		29.103188, 33.572514, 26.931105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333050, 33.457035, 26.987053>,  <28.642811, 34.099567, 26.947405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333050, 33.457035, 26.987053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692429, 33.358761, 27.132618>,  <28.908056, 33.299797, 27.219957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692429, 33.358761, 27.132618>,  <28.333050, 33.457035, 26.987053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692429, 33.358761, 27.132618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426324, -0.686439, 0.589108,
		0.105071, -0.684428, -0.721470,
		0.898448, -0.245682, 0.363913,
		28.961964, 33.285057, 27.241793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248291, 32.690487, 26.976328>,  <28.333050, 33.457035, 26.987053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248291, 32.690487, 26.976328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560324, 32.792519, 27.204857>,  <28.747543, 32.853737, 27.341974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560324, 32.792519, 27.204857>,  <28.248291, 32.690487, 26.976328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560324, 32.792519, 27.204857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315003, -0.628846, 0.710863,
		0.540597, -0.734499, -0.410202,
		0.780082, 0.255075, 0.571322,
		28.794348, 32.869041, 27.376253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420551, 32.081009, 27.329304>,  <28.248291, 32.690487, 26.976328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420551, 32.081009, 27.329304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572651, 32.371338, 27.558594>,  <28.663912, 32.545536, 27.696167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572651, 32.371338, 27.558594>,  <28.420551, 32.081009, 27.329304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572651, 32.371338, 27.558594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264226, -0.508698, 0.819396,
		0.886337, -0.463037, -0.001651,
		0.380251, 0.725826, 0.573225,
		28.686726, 32.589085, 27.730560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773157, 31.729420, 27.868294>,  <28.420551, 32.081009, 27.329304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773157, 31.729420, 27.868294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714655, 32.095448, 28.018631>,  <28.679554, 32.315063, 28.108833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714655, 32.095448, 28.018631>,  <28.773157, 31.729420, 27.868294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714655, 32.095448, 28.018631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214817, -0.400241, 0.890876,
		0.965641, 0.049560, 0.255110,
		-0.146257, 0.915069, 0.375842,
		28.670778, 32.369968, 28.131384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172190, 31.774746, 28.500830>,  <28.773157, 31.729420, 27.868294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172190, 31.774746, 28.500830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889107, 32.057079, 28.513149>,  <28.719257, 32.226479, 28.520540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889107, 32.057079, 28.513149>,  <29.172190, 31.774746, 28.500830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889107, 32.057079, 28.513149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145464, -0.188232, 0.971292,
		0.691368, 0.682911, 0.235887,
		-0.707708, 0.705833, 0.030798,
		28.676794, 32.268829, 28.522388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327057, 32.188961, 29.087784>,  <29.172190, 31.774746, 28.500830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327057, 32.188961, 29.087784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939533, 32.241848, 29.003944>,  <28.707020, 32.273579, 28.953640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939533, 32.241848, 29.003944>,  <29.327057, 32.188961, 29.087784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939533, 32.241848, 29.003944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237595, -0.255150, 0.937255,
		0.070439, 0.957819, 0.278605,
		-0.968807, 0.132215, -0.209600,
		28.648891, 32.281513, 28.941065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117912, 32.557602, 29.610937>,  <29.327057, 32.188961, 29.087784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117912, 32.557602, 29.610937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776226, 32.416046, 29.458580>,  <28.571215, 32.331112, 29.367165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776226, 32.416046, 29.458580>,  <29.117912, 32.557602, 29.610937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776226, 32.416046, 29.458580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341788, -0.169833, 0.924304,
		-0.391790, 0.919739, 0.024119,
		-0.854214, -0.353889, -0.380894,
		28.519962, 32.309879, 29.344313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576511, 32.940895, 29.950481>,  <29.117912, 32.557602, 29.610937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576511, 32.940895, 29.950481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390652, 32.614697, 29.812454>,  <28.279137, 32.418980, 29.729637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390652, 32.614697, 29.812454>,  <28.576511, 32.940895, 29.950481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390652, 32.614697, 29.812454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466996, -0.105417, 0.877953,
		-0.752342, 0.569085, -0.331850,
		-0.464647, -0.815494, -0.345070,
		28.251257, 32.370049, 29.708933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833427, 32.991631, 30.055693>,  <28.576511, 32.940895, 29.950481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833427, 32.991631, 30.055693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938000, 32.605598, 30.062294>,  <28.000744, 32.373978, 30.066256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938000, 32.605598, 30.062294>,  <27.833427, 32.991631, 30.055693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938000, 32.605598, 30.062294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434224, -0.102322, 0.894975,
		-0.862034, -0.241142, -0.445811,
		0.261433, -0.965080, 0.016504,
		28.016430, 32.316074, 30.067245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381718, 32.753204, 30.561852>,  <27.833427, 32.991631, 30.055693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381718, 32.753204, 30.561852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618711, 32.434116, 30.516933>,  <27.760908, 32.242664, 30.489983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618711, 32.434116, 30.516933>,  <27.381718, 32.753204, 30.561852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618711, 32.434116, 30.516933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226162, -0.298499, 0.927227,
		-0.773185, -0.523970, -0.357269,
		0.592483, -0.797718, -0.112293,
		27.796457, 32.194801, 30.483246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978729, 32.281628, 30.727627>,  <27.381718, 32.753204, 30.561852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978729, 32.281628, 30.727627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335611, 32.104095, 30.761047>,  <27.549742, 31.997576, 30.781099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335611, 32.104095, 30.761047>,  <26.978729, 32.281628, 30.727627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335611, 32.104095, 30.761047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309016, -0.465020, 0.829618,
		-0.329359, -0.766009, -0.552045,
		0.892206, -0.443833, 0.083550,
		27.603273, 31.970945, 30.786112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784679, 31.544577, 30.910042>,  <26.978729, 32.281628, 30.727627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784679, 31.544577, 30.910042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169706, 31.614437, 30.992947>,  <27.400723, 31.656353, 31.042690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169706, 31.614437, 30.992947>,  <26.784679, 31.544577, 30.910042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169706, 31.614437, 30.992947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072638, -0.570494, 0.818083,
		0.261122, -0.802516, -0.536454,
		0.962569, 0.174653, 0.207262,
		27.458477, 31.666834, 31.055124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936749, 31.051979, 31.318892>,  <26.784679, 31.544577, 30.910042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936749, 31.051979, 31.318892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267006, 31.266621, 31.388592>,  <27.465160, 31.395407, 31.430412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267006, 31.266621, 31.388592>,  <26.936749, 31.051979, 31.318892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267006, 31.266621, 31.388592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128980, -0.480199, 0.867625,
		0.549249, -0.693876, -0.465685,
		0.825645, 0.536606, 0.174253,
		27.514700, 31.427603, 31.440868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469688, 30.613937, 31.390594>,  <26.936749, 31.051979, 31.318892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469688, 30.613937, 31.390594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596777, 30.943584, 31.578163>,  <27.673031, 31.141373, 31.690704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596777, 30.943584, 31.578163>,  <27.469688, 30.613937, 31.390594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596777, 30.943584, 31.578163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255745, -0.550700, 0.794559,
		0.913043, -0.132524, -0.385733,
		0.317722, 0.824116, 0.468920,
		27.692093, 31.190819, 31.718840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109993, 30.278624, 31.682007>,  <27.469688, 30.613937, 31.390594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109993, 30.278624, 31.682007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991245, 30.603100, 31.883537>,  <27.919996, 30.797785, 32.004456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991245, 30.603100, 31.883537>,  <28.109993, 30.278624, 31.682007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991245, 30.603100, 31.883537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155553, -0.479484, 0.863654,
		0.942163, 0.334765, 0.016162,
		-0.296871, 0.811189, 0.503825,
		27.902184, 30.846457, 32.034683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604361, 30.386969, 32.144489>,  <28.109993, 30.278624, 31.682007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604361, 30.386969, 32.144489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296892, 30.586193, 32.305031>,  <28.112411, 30.705729, 32.401356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296892, 30.586193, 32.305031>,  <28.604361, 30.386969, 32.144489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296892, 30.586193, 32.305031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138368, -0.483130, 0.864546,
		0.624501, 0.720084, 0.302451,
		-0.768669, 0.498061, 0.401352,
		28.066292, 30.735611, 32.425438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859488, 30.764944, 32.779518>,  <28.604361, 30.386969, 32.144489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859488, 30.764944, 32.779518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470858, 30.670273, 32.777699>,  <28.237679, 30.613470, 32.776608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470858, 30.670273, 32.777699>,  <28.859488, 30.764944, 32.779518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470858, 30.670273, 32.777699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110017, -0.468463, 0.876606,
		-0.209606, 0.851190, 0.481187,
		-0.971577, -0.236680, -0.004548,
		28.179384, 30.599268, 32.776333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541788, 31.090776, 33.404591>,  <28.859488, 30.764944, 32.779518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541788, 31.090776, 33.404591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383333, 30.752964, 33.260456>,  <28.288260, 30.550276, 33.173977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383333, 30.752964, 33.260456>,  <28.541788, 31.090776, 33.404591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383333, 30.752964, 33.260456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185887, -0.458076, 0.869260,
		-0.899177, 0.277367, 0.338449,
		-0.396139, -0.844532, -0.360332,
		28.264492, 30.499605, 33.152355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000256, 30.882378, 33.890648>,  <28.541788, 31.090776, 33.404591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000256, 30.882378, 33.890648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104044, 30.552986, 33.688835>,  <28.166317, 30.355350, 33.567745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104044, 30.552986, 33.688835>,  <28.000256, 30.882378, 33.890648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104044, 30.552986, 33.688835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008111, -0.524268, 0.851515,
		-0.965716, -0.216852, -0.142712,
		0.259472, -0.823479, -0.504535,
		28.181885, 30.305943, 33.537476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592688, 30.272114, 34.208553>,  <28.000256, 30.882378, 33.890648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592688, 30.272114, 34.208553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899321, 30.080879, 34.037071>,  <28.083300, 29.966139, 33.934181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899321, 30.080879, 34.037071>,  <27.592688, 30.272114, 34.208553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899321, 30.080879, 34.037071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085989, -0.585173, 0.806336,
		-0.636366, -0.654985, -0.407472,
		0.766580, -0.478087, -0.428706,
		28.129295, 29.937454, 33.908459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467550, 29.558020, 34.234947>,  <27.592688, 30.272114, 34.208553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467550, 29.558020, 34.234947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863018, 29.530010, 34.181835>,  <28.100298, 29.513205, 34.149967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863018, 29.530010, 34.181835>,  <27.467550, 29.558020, 34.234947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863018, 29.530010, 34.181835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056426, -0.646293, 0.761000,
		-0.139100, -0.759870, -0.635019,
		0.988669, -0.070023, -0.132775,
		28.159618, 29.509003, 34.142002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557547, 28.864408, 34.057270>,  <27.467550, 29.558020, 34.234947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557547, 28.864408, 34.057270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918818, 28.992592, 34.171516>,  <28.135580, 29.069502, 34.240063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918818, 28.992592, 34.171516>,  <27.557547, 28.864408, 34.057270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918818, 28.992592, 34.171516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141400, -0.850320, 0.506914,
		0.405308, -0.417448, -0.813304,
		0.903179, 0.320457, 0.285614,
		28.189772, 29.088730, 34.257202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032835, 28.243782, 34.031723>,  <27.557547, 28.864408, 34.057270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032835, 28.243782, 34.031723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220890, 28.508610, 34.265179>,  <28.333723, 28.667507, 34.405251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220890, 28.508610, 34.265179>,  <28.032835, 28.243782, 34.031723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220890, 28.508610, 34.265179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332044, -0.745373, 0.578070,
		0.817752, -0.077978, -0.570264,
		0.470136, 0.662071, 0.583639,
		28.361931, 28.707232, 34.440269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638987, 27.766424, 34.162498>,  <28.032835, 28.243782, 34.031723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638987, 27.766424, 34.162498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606691, 28.056118, 34.436424>,  <28.587315, 28.229935, 34.600780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606691, 28.056118, 34.436424>,  <28.638987, 27.766424, 34.162498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606691, 28.056118, 34.436424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137906, -0.688563, 0.711944,
		0.987149, -0.036960, 0.155468,
		-0.080736, 0.724234, 0.684811,
		28.582470, 28.273388, 34.641869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959299, 27.514526, 34.686592>,  <28.638987, 27.766424, 34.162498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959299, 27.514526, 34.686592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741627, 27.792538, 34.874554>,  <28.611023, 27.959345, 34.987331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741627, 27.792538, 34.874554>,  <28.959299, 27.514526, 34.686592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741627, 27.792538, 34.874554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215237, -0.657002, 0.722510,
		0.810890, 0.292035, 0.507122,
		-0.544179, 0.695027, 0.469900,
		28.578373, 28.001045, 35.015522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201473, 27.414936, 35.358822>,  <28.959299, 27.514526, 34.686592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201473, 27.414936, 35.358822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863989, 27.624886, 35.403820>,  <28.661497, 27.750854, 35.430820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863989, 27.624886, 35.403820>,  <29.201473, 27.414936, 35.358822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863989, 27.624886, 35.403820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195136, -0.495130, 0.846622,
		0.500071, 0.692353, 0.520169,
		-0.843713, 0.524874, 0.112497,
		28.610874, 27.782349, 35.437569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056437, 27.751245, 36.128101>,  <29.201473, 27.414936, 35.358822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056437, 27.751245, 36.128101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701267, 27.725662, 35.945892>,  <28.488165, 27.710312, 35.836567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701267, 27.725662, 35.945892>,  <29.056437, 27.751245, 36.128101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701267, 27.725662, 35.945892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386108, -0.434625, 0.813647,
		-0.250020, 0.898337, 0.361220,
		-0.887925, -0.063958, -0.455521,
		28.434891, 27.706474, 35.809235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649275, 27.957596, 36.693768>,  <29.056437, 27.751245, 36.128101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649275, 27.957596, 36.693768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437178, 27.748810, 36.426517>,  <28.309919, 27.623539, 36.266167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437178, 27.748810, 36.426517>,  <28.649275, 27.957596, 36.693768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437178, 27.748810, 36.426517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299394, -0.621990, 0.723527,
		-0.793224, 0.583679, 0.173533,
		-0.530244, -0.521965, -0.668128,
		28.278105, 27.592220, 36.226078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131350, 27.700401, 37.160309>,  <28.649275, 27.957596, 36.693768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131350, 27.700401, 37.160309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084396, 27.502178, 36.816067>,  <28.056225, 27.383244, 36.609520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084396, 27.502178, 36.816067>,  <28.131350, 27.700401, 37.160309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084396, 27.502178, 36.816067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267667, -0.818737, 0.507961,
		-0.956334, 0.289982, -0.036538,
		-0.117384, -0.495560, -0.860605,
		28.049181, 27.353510, 36.557884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428854, 27.427666, 37.056854>,  <28.131350, 27.700401, 37.160309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428854, 27.427666, 37.056854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655416, 27.192120, 36.826229>,  <27.791353, 27.050791, 36.687855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655416, 27.192120, 36.826229>,  <27.428854, 27.427666, 37.056854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655416, 27.192120, 36.826229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333499, -0.803535, 0.493061,
		-0.753631, -0.086993, -0.651515,
		0.566409, -0.588866, -0.576557,
		27.825338, 27.015459, 36.653263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044043, 26.774471, 36.987286>,  <27.428854, 27.427666, 37.056854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044043, 26.774471, 36.987286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413836, 26.675598, 36.871193>,  <27.635712, 26.616274, 36.801537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413836, 26.675598, 36.871193>,  <27.044043, 26.774471, 36.987286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413836, 26.675598, 36.871193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039145, -0.818835, 0.572693,
		-0.379208, -0.518084, -0.766674,
		0.924483, -0.247181, -0.290229,
		27.691181, 26.601444, 36.784122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994732, 26.055723, 36.797741>,  <27.044043, 26.774471, 36.987286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994732, 26.055723, 36.797741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365774, 26.175018, 36.887718>,  <27.588400, 26.246595, 36.941704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365774, 26.175018, 36.887718>,  <26.994732, 26.055723, 36.797741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365774, 26.175018, 36.887718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004263, -0.610567, 0.791953,
		0.373532, -0.733663, -0.567638,
		0.927608, 0.298240, 0.224939,
		27.644056, 26.264490, 36.955200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410826, 25.432398, 36.768116>,  <26.994732, 26.055723, 36.797741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410826, 25.432398, 36.768116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578709, 25.689079, 37.024883>,  <27.679438, 25.843088, 37.178944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578709, 25.689079, 37.024883>,  <27.410826, 25.432398, 36.768116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578709, 25.689079, 37.024883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030978, -0.696687, 0.716707,
		0.907132, -0.320691, -0.272524,
		0.419706, 0.641705, 0.641921,
		27.704620, 25.881590, 37.217461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243406, 24.732788, 36.849457>,  <27.410826, 25.432398, 36.768116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243406, 24.732788, 36.849457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023830, 24.506401, 36.603416>,  <26.892086, 24.370569, 36.455791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023830, 24.506401, 36.603416>,  <27.243406, 24.732788, 36.849457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023830, 24.506401, 36.603416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208511, 0.619904, -0.756467,
		0.809439, -0.543509, -0.222279,
		-0.548938, -0.565966, -0.615102,
		26.859148, 24.336611, 36.418884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712236, 24.640995, 36.192448>,  <27.243406, 24.732788, 36.849457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712236, 24.640995, 36.192448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326097, 24.601120, 36.095974>,  <27.094414, 24.577196, 36.038090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326097, 24.601120, 36.095974>,  <27.712236, 24.640995, 36.192448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326097, 24.601120, 36.095974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139382, 0.584373, -0.799426,
		0.220631, -0.805339, -0.550228,
		-0.965347, -0.099686, -0.241180,
		27.036493, 24.571215, 36.023621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675261, 24.427391, 35.438965>,  <27.712236, 24.640995, 36.192448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675261, 24.427391, 35.438965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320087, 24.593185, 35.518738>,  <27.106983, 24.692661, 35.566601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320087, 24.593185, 35.518738>,  <27.675261, 24.427391, 35.438965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320087, 24.593185, 35.518738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106256, 0.606684, -0.787810,
		-0.447529, -0.678333, -0.582737,
		-0.887935, 0.414487, 0.199432,
		27.053707, 24.717531, 35.578568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319660, 24.297703, 34.825756>,  <27.675261, 24.427391, 35.438965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319660, 24.297703, 34.825756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151844, 24.601521, 35.024582>,  <27.051155, 24.783812, 35.143879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151844, 24.601521, 35.024582>,  <27.319660, 24.297703, 34.825756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151844, 24.601521, 35.024582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192918, 0.609687, -0.768807,
		-0.887000, -0.226653, -0.402319,
		-0.419541, 0.759546, 0.497067,
		27.025982, 24.829384, 35.173702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686913, 24.516397, 34.435234>,  <27.319660, 24.297703, 34.825756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686913, 24.516397, 34.435234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777557, 24.843418, 34.646992>,  <26.831944, 25.039631, 34.774048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777557, 24.843418, 34.646992>,  <26.686913, 24.516397, 34.435234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777557, 24.843418, 34.646992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087955, 0.524136, -0.847080,
		-0.970006, 0.238521, 0.046868,
		0.226612, 0.817550, 0.529394,
		26.845541, 25.088684, 34.805809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409000, 25.049810, 34.060921>,  <26.686913, 24.516397, 34.435234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409000, 25.049810, 34.060921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643900, 25.261539, 34.305855>,  <26.784840, 25.388577, 34.452816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643900, 25.261539, 34.305855>,  <26.409000, 25.049810, 34.060921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643900, 25.261539, 34.305855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059031, 0.726503, -0.684623,
		-0.807252, 0.438190, 0.395391,
		0.587247, 0.529323, 0.612338,
		26.820074, 25.420336, 34.489555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147957, 25.697302, 34.000675>,  <26.409000, 25.049810, 34.060921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147957, 25.697302, 34.000675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524473, 25.740761, 34.128532>,  <26.750383, 25.766836, 34.205246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524473, 25.740761, 34.128532>,  <26.147957, 25.697302, 34.000675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524473, 25.740761, 34.128532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173444, 0.656669, -0.733964,
		-0.289641, 0.746312, 0.599272,
		0.941289, 0.108646, 0.319642,
		26.806860, 25.773355, 34.224426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182259, 26.351784, 33.953320>,  <26.147957, 25.697302, 34.000675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182259, 26.351784, 33.953320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558546, 26.216110, 33.953892>,  <26.784319, 26.134706, 33.954235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558546, 26.216110, 33.953892>,  <26.182259, 26.351784, 33.953320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558546, 26.216110, 33.953892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222214, 0.613111, -0.758100,
		0.256256, 0.713478, 0.652136,
		0.940720, -0.339182, 0.001432,
		26.840761, 26.114355, 33.954323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578257, 26.913563, 33.916908>,  <26.182259, 26.351784, 33.953320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578257, 26.913563, 33.916908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837952, 26.629742, 33.807346>,  <26.993769, 26.459450, 33.741611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837952, 26.629742, 33.807346>,  <26.578257, 26.913563, 33.916908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837952, 26.629742, 33.807346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293200, 0.565773, -0.770671,
		0.701799, 0.420042, 0.575363,
		0.649239, -0.709553, -0.273903,
		27.032724, 26.416876, 33.725174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160736, 27.269979, 33.682995>,  <26.578257, 26.913563, 33.916908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160736, 27.269979, 33.682995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189337, 26.898582, 33.537235>,  <27.206497, 26.675743, 33.449780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189337, 26.898582, 33.537235>,  <27.160736, 27.269979, 33.682995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189337, 26.898582, 33.537235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299909, 0.368441, -0.879946,
		0.951285, -0.046370, 0.304808,
		0.071501, -0.928494, -0.364399,
		27.210787, 26.620035, 33.427914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898172, 27.239107, 33.377956>,  <27.160736, 27.269979, 33.682995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898172, 27.239107, 33.377956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653013, 26.957935, 33.233597>,  <27.505919, 26.789232, 33.146980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653013, 26.957935, 33.233597>,  <27.898172, 27.239107, 33.377956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653013, 26.957935, 33.233597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087366, 0.393656, -0.915097,
		0.785317, -0.592392, -0.179859,
		-0.612898, -0.702928, -0.360900,
		27.469143, 26.747057, 33.125328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226412, 26.861954, 32.852203>,  <27.898172, 27.239107, 33.377956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226412, 26.861954, 32.852203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832024, 26.816349, 32.803436>,  <27.595390, 26.788986, 32.774178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832024, 26.816349, 32.803436>,  <28.226412, 26.861954, 32.852203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832024, 26.816349, 32.803436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049632, 0.497115, -0.866264,
		0.159371, -0.860162, -0.484482,
		-0.985970, -0.114011, -0.121917,
		27.536232, 26.782146, 32.766861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116371, 26.968218, 32.055290>,  <28.226412, 26.861954, 32.852203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116371, 26.968218, 32.055290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742693, 26.935852, 32.194275>,  <27.518486, 26.916431, 32.277664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742693, 26.935852, 32.194275>,  <28.116371, 26.968218, 32.055290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742693, 26.935852, 32.194275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335965, 0.527173, -0.780523,
		-0.120016, -0.845896, -0.519669,
		-0.934197, -0.080915, 0.347461,
		27.462435, 26.911577, 32.298512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657547, 26.618065, 31.542757>,  <28.116371, 26.968218, 32.055290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657547, 26.618065, 31.542757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438326, 26.839268, 31.793777>,  <27.306793, 26.971991, 31.944389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438326, 26.839268, 31.793777>,  <27.657547, 26.618065, 31.542757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438326, 26.839268, 31.793777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353423, 0.526897, -0.772963,
		-0.758110, -0.645415, -0.093321,
		-0.548053, 0.553009, 0.627550,
		27.273911, 27.005171, 31.982042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048944, 26.643887, 31.214094>,  <27.657547, 26.618065, 31.542757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048944, 26.643887, 31.214094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108728, 26.947498, 31.467560>,  <27.144598, 27.129665, 31.619640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108728, 26.947498, 31.467560>,  <27.048944, 26.643887, 31.214094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108728, 26.947498, 31.467560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361222, 0.638482, -0.679602,
		-0.920424, -0.127322, 0.369605,
		0.149458, 0.759032, 0.633666,
		27.153566, 27.175207, 31.657660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436537, 27.070024, 31.153107>,  <27.048944, 26.643887, 31.214094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436537, 27.070024, 31.153107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702576, 27.328354, 31.303070>,  <26.862200, 27.483351, 31.393047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702576, 27.328354, 31.303070>,  <26.436537, 27.070024, 31.153107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702576, 27.328354, 31.303070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355227, 0.715228, -0.601882,
		-0.656853, 0.267135, 0.705112,
		0.665100, 0.645823, 0.374906,
		26.902105, 27.522100, 31.415543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.063187, 27.746065, 31.204374>,  <26.436537, 27.070024, 31.153107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.063187, 27.746065, 31.204374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453764, 27.831936, 31.213020>,  <26.688110, 27.883459, 31.218208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453764, 27.831936, 31.213020>,  <26.063187, 27.746065, 31.204374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453764, 27.831936, 31.213020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158881, 0.783187, -0.601144,
		-0.145982, 0.583550, 0.798848,
		0.976446, 0.214678, 0.021617,
		26.746698, 27.896339, 31.219505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124199, 28.534237, 31.285982>,  <26.063187, 27.746065, 31.204374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124199, 28.534237, 31.285982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473518, 28.398674, 31.145985>,  <26.683109, 28.317335, 31.061987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473518, 28.398674, 31.145985>,  <26.124199, 28.534237, 31.285982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473518, 28.398674, 31.145985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037522, 0.763045, -0.645256,
		0.485742, 0.550367, 0.679081,
		0.873297, -0.338908, -0.349992,
		26.735508, 28.297001, 31.040987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182554, 29.083776, 31.034073>,  <26.124199, 28.534237, 31.285982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182554, 29.083776, 31.034073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491726, 28.865677, 30.904285>,  <26.677229, 28.734818, 30.826412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491726, 28.865677, 30.904285>,  <26.182554, 29.083776, 31.034073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491726, 28.865677, 30.904285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262536, 0.740391, -0.618785,
		0.577627, 0.393094, 0.715419,
		0.772931, -0.545250, -0.324469,
		26.723606, 28.702103, 30.806944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807835, 29.514570, 31.232534>,  <26.182554, 29.083776, 31.034073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807835, 29.514570, 31.232534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865492, 29.278954, 30.914478>,  <26.900085, 29.137583, 30.723644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865492, 29.278954, 30.914478>,  <26.807835, 29.514570, 31.232534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865492, 29.278954, 30.914478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130325, 0.807834, -0.574821,
		0.980938, -0.020771, 0.193210,
		0.144142, -0.589044, -0.795142,
		26.908735, 29.102240, 30.675936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348484, 29.854496, 30.837280>,  <26.807835, 29.514570, 31.232534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348484, 29.854496, 30.837280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179356, 29.598656, 30.580490>,  <27.077879, 29.445152, 30.426416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179356, 29.598656, 30.580490>,  <27.348484, 29.854496, 30.837280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179356, 29.598656, 30.580490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111858, 0.739834, -0.663425,
		0.899282, -0.208702, -0.384363,
		-0.422823, -0.639600, -0.641975,
		27.052509, 29.406775, 30.387897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676838, 29.994949, 30.198668>,  <27.348484, 29.854496, 30.837280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676838, 29.994949, 30.198668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348120, 29.786617, 30.106243>,  <27.150888, 29.661617, 30.050789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348120, 29.786617, 30.106243>,  <27.676838, 29.994949, 30.198668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348120, 29.786617, 30.106243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193867, 0.636919, -0.746157,
		0.535786, -0.568394, -0.624389,
		-0.821796, -0.520829, -0.231059,
		27.101582, 29.630369, 30.036924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640091, 29.940033, 29.515961>,  <27.676838, 29.994949, 30.198668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640091, 29.940033, 29.515961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256607, 29.860249, 29.597046>,  <27.026516, 29.812378, 29.645697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256607, 29.860249, 29.597046>,  <27.640091, 29.940033, 29.515961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256607, 29.860249, 29.597046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284379, 0.666994, -0.688656,
		0.002152, -0.717868, -0.696175,
		-0.958709, -0.199460, 0.202712,
		26.968994, 29.800411, 29.657860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356501, 29.789888, 28.869968>,  <27.640091, 29.940033, 29.515961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356501, 29.789888, 28.869968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057835, 29.895489, 29.114197>,  <26.878635, 29.958849, 29.260733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057835, 29.895489, 29.114197>,  <27.356501, 29.789888, 28.869968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057835, 29.895489, 29.114197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278923, 0.709031, -0.647671,
		-0.603899, -0.653894, -0.455772,
		-0.746665, 0.264003, 0.610569,
		26.833836, 29.974689, 29.297367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648264, 29.601313, 28.477200>,  <27.356501, 29.789888, 28.869968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648264, 29.601313, 28.477200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602167, 29.900913, 28.738186>,  <26.574509, 30.080673, 28.894777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602167, 29.900913, 28.738186>,  <26.648264, 29.601313, 28.477200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602167, 29.900913, 28.738186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318395, 0.594334, -0.738506,
		-0.940927, -0.292848, 0.169988,
		-0.115240, 0.749004, 0.652467,
		26.567595, 30.125614, 28.933926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002449, 29.853228, 28.276739>,  <26.648264, 29.601313, 28.477200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002449, 29.853228, 28.276739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162731, 30.145729, 28.497540>,  <26.258900, 30.321230, 28.630020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162731, 30.145729, 28.497540>,  <26.002449, 29.853228, 28.276739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162731, 30.145729, 28.497540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288415, 0.672529, -0.681558,
		-0.869628, 0.113899, 0.480390,
		0.400705, 0.731253, 0.552000,
		26.282942, 30.365105, 28.663139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442310, 30.345667, 28.216635>,  <26.002449, 29.853228, 28.276739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442310, 30.345667, 28.216635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768538, 30.532471, 28.353310>,  <25.964273, 30.644552, 28.435314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768538, 30.532471, 28.353310>,  <25.442310, 30.345667, 28.216635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768538, 30.532471, 28.353310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168340, 0.756422, -0.632050,
		-0.553632, 0.457961, 0.695531,
		0.815569, 0.467009, 0.341686,
		26.013208, 30.672573, 28.455816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.300028, 30.981480, 28.555689>,  <25.442310, 30.345667, 28.216635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.300028, 30.981480, 28.555689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683399, 31.013039, 28.446003>,  <25.913422, 31.031973, 28.380192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683399, 31.013039, 28.446003>,  <25.300028, 30.981480, 28.555689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683399, 31.013039, 28.446003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162180, 0.941315, -0.296014,
		0.234769, 0.328180, 0.914976,
		0.958426, 0.078895, -0.274216,
		25.970926, 31.036707, 28.363739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524595, 31.706137, 28.733749>,  <25.300028, 30.981480, 28.555689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524595, 31.706137, 28.733749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.731173, 31.551426, 28.428150>,  <25.855120, 31.458599, 28.244791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.731173, 31.551426, 28.428150>,  <25.524595, 31.706137, 28.733749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.731173, 31.551426, 28.428150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205047, 0.810375, -0.548861,
		0.831409, 0.440111, 0.339206,
		0.516444, -0.386775, -0.763996,
		25.886106, 31.435394, 28.198952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059101, 32.221706, 28.537107>,  <25.524595, 31.706137, 28.733749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059101, 32.221706, 28.537107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004400, 31.971386, 28.229946>,  <25.971581, 31.821194, 28.045649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004400, 31.971386, 28.229946>,  <26.059101, 32.221706, 28.537107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004400, 31.971386, 28.229946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275830, 0.768583, -0.577233,
		0.951429, 0.132873, -0.277719,
		-0.136752, -0.625799, -0.767903,
		25.963375, 31.783646, 27.999575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417624, 32.578003, 28.061077>,  <26.059101, 32.221706, 28.537107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417624, 32.578003, 28.061077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184528, 32.326015, 27.855724>,  <26.044672, 32.174824, 27.732513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184528, 32.326015, 27.855724>,  <26.417624, 32.578003, 28.061077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184528, 32.326015, 27.855724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165971, 0.710673, -0.683665,
		0.795533, -0.313190, -0.518691,
		-0.582737, -0.629965, -0.513384,
		26.009706, 32.137028, 27.701710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607075, 32.769604, 27.321730>,  <26.417624, 32.578003, 28.061077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607075, 32.769604, 27.321730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271639, 32.553417, 27.294399>,  <26.070377, 32.423706, 27.278000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271639, 32.553417, 27.294399>,  <26.607075, 32.769604, 27.321730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271639, 32.553417, 27.294399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320983, 0.591543, -0.739626,
		0.440159, -0.598309, -0.669541,
		-0.838588, -0.540465, -0.068327,
		26.020063, 32.391277, 27.273901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510088, 32.536427, 26.632116>,  <26.607075, 32.769604, 27.321730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510088, 32.536427, 26.632116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148890, 32.565948, 26.801422>,  <25.932171, 32.583660, 26.903006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148890, 32.565948, 26.801422>,  <26.510088, 32.536427, 26.632116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148890, 32.565948, 26.801422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351277, 0.440439, -0.826207,
		-0.247399, -0.894744, -0.371789,
		-0.902994, 0.073802, 0.423267,
		25.877991, 32.588089, 26.928402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.015079, 32.184456, 26.171593>,  <26.510088, 32.536427, 26.632116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.015079, 32.184456, 26.171593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782591, 32.400223, 26.415302>,  <25.643097, 32.529682, 26.561527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782591, 32.400223, 26.415302>,  <26.015079, 32.184456, 26.171593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782591, 32.400223, 26.415302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538178, 0.306787, -0.785013,
		-0.610364, -0.784164, 0.111990,
		-0.581222, 0.539415, 0.609272,
		25.608225, 32.562046, 26.598083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432503, 32.070019, 25.925663>,  <26.015079, 32.184456, 26.171593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432503, 32.070019, 25.925663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350456, 32.393127, 26.146725>,  <25.301228, 32.586994, 26.279362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350456, 32.393127, 26.146725>,  <25.432503, 32.070019, 25.925663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350456, 32.393127, 26.146725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547052, 0.373601, -0.749104,
		-0.811579, -0.455986, 0.365262,
		-0.205119, 0.807774, 0.552655,
		25.288921, 32.635460, 26.312521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.763836, 32.239731, 25.786242>,  <25.432503, 32.070019, 25.925663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.763836, 32.239731, 25.786242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920385, 32.574127, 25.940098>,  <25.014317, 32.774765, 26.032412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920385, 32.574127, 25.940098>,  <24.763836, 32.239731, 25.786242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920385, 32.574127, 25.940098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446344, 0.537978, -0.715092,
		-0.804737, 0.108187, 0.583690,
		0.391376, 0.835988, 0.384642,
		25.037798, 32.824924, 26.055490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.202543, 32.710049, 25.998543>,  <24.763836, 32.239731, 25.786242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.202543, 32.710049, 25.998543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523516, 32.945305, 25.958138>,  <24.716099, 33.086456, 25.933895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523516, 32.945305, 25.958138>,  <24.202543, 32.710049, 25.998543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.523516, 32.945305, 25.958138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521666, 0.609147, -0.597332,
		-0.289781, 0.532012, 0.795607,
		0.802429, 0.588136, -0.101013,
		24.764244, 33.121746, 25.927834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.994797, 33.368191, 25.830078>,  <24.202543, 32.710049, 25.998543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.994797, 33.368191, 25.830078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373220, 33.396683, 25.703651>,  <24.600275, 33.413776, 25.627796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373220, 33.396683, 25.703651>,  <23.994797, 33.368191, 25.830078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.373220, 33.396683, 25.703651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280961, 0.666179, -0.690845,
		0.161348, 0.742383, 0.650257,
		0.946059, 0.071230, -0.316067,
		24.657038, 33.418053, 25.608831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.053480, 34.003719, 25.815184>,  <23.994797, 33.368191, 25.830078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.053480, 34.003719, 25.815184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325615, 33.850895, 25.565010>,  <24.488895, 33.759201, 25.414906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325615, 33.850895, 25.565010>,  <24.053480, 34.003719, 25.815184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.325615, 33.850895, 25.565010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310126, 0.623129, -0.718005,
		0.664051, 0.682449, 0.305449,
		0.680336, -0.382064, -0.625435,
		24.529716, 33.736275, 25.377380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.259663, 34.512695, 25.468037>,  <24.053480, 34.003719, 25.815184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.259663, 34.512695, 25.468037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.398232, 34.239372, 25.210953>,  <24.481373, 34.075378, 25.056702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.398232, 34.239372, 25.210953>,  <24.259663, 34.512695, 25.468037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.398232, 34.239372, 25.210953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357732, 0.537135, -0.763881,
		0.867190, 0.494545, -0.058365,
		0.346424, -0.683309, -0.642712,
		24.502159, 34.034378, 25.018139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.735691, 34.777668, 24.967768>,  <24.259663, 34.512695, 25.468037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.735691, 34.777668, 24.967768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548193, 34.461475, 24.810074>,  <24.435694, 34.271759, 24.715458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548193, 34.461475, 24.810074>,  <24.735691, 34.777668, 24.967768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548193, 34.461475, 24.810074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379815, 0.583306, -0.717980,
		0.797507, -0.186813, -0.573658,
		-0.468746, -0.790478, -0.394236,
		24.407568, 34.224331, 24.691803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.977190, 35.033684, 24.951897>,  <24.735691, 34.777668, 24.967768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.977190, 35.033684, 24.951897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.716288, 35.252659, 24.742180>,  <23.559746, 35.384045, 24.616350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.716288, 35.252659, 24.742180>,  <23.977190, 35.033684, 24.951897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.716288, 35.252659, 24.742180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434918, -0.836776, -0.332645,
		-0.620816, 0.011054, 0.783879,
		-0.652254, 0.547434, -0.524291,
		23.520611, 35.416889, 24.584892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.287161, 34.903324, 25.245617>,  <23.977190, 35.033684, 24.951897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.287161, 34.903324, 25.245617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.260738, 34.997063, 24.857655>,  <23.244884, 35.053307, 24.624878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.260738, 34.997063, 24.857655>,  <23.287161, 34.903324, 25.245617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.260738, 34.997063, 24.857655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264776, -0.941299, -0.209406,
		-0.962045, 0.242976, 0.124228,
		-0.066055, 0.234351, -0.969905,
		23.240921, 35.067368, 24.566683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.590694, 34.690575, 24.978975>,  <23.287161, 34.903324, 25.245617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.590694, 34.690575, 24.978975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.880386, 34.690987, 24.703152>,  <23.054201, 34.691235, 24.537659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.880386, 34.690987, 24.703152>,  <22.590694, 34.690575, 24.978975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.880386, 34.690987, 24.703152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064573, -0.995503, -0.069305,
		-0.686529, 0.094720, -0.720907,
		0.724230, 0.001029, -0.689558,
		23.097656, 34.691296, 24.496284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.405910, 34.233307, 24.413380>,  <22.590694, 34.690575, 24.978975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.405910, 34.233307, 24.413380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.801344, 34.292164, 24.400375>,  <23.038603, 34.327477, 24.392572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.801344, 34.292164, 24.400375>,  <22.405910, 34.233307, 24.413380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.801344, 34.292164, 24.400375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143019, -0.984125, -0.105091,
		-0.047457, 0.099242, -0.993931,
		0.988581, 0.147138, -0.032510,
		23.097918, 34.336304, 24.390623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.795074, 34.566181, 24.028143>,  <22.405910, 34.233307, 24.413380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.795074, 34.566181, 24.028143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851851, 34.174309, 24.084827>,  <21.885916, 33.939186, 24.118839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851851, 34.174309, 24.084827>,  <21.795074, 34.566181, 24.028143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.851851, 34.174309, 24.084827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983831, 0.155417, 0.089005,
		-0.109221, 0.126788, 0.985898,
		0.141941, -0.979679, 0.141713,
		21.894432, 33.880405, 24.127340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.213491, 34.952621, 23.963251>,  <21.795074, 34.566181, 24.028143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.213491, 34.952621, 23.963251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.008049, 35.044216, 23.632488>,  <20.884785, 35.099174, 23.434031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.008049, 35.044216, 23.632488>,  <21.213491, 34.952621, 23.963251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.008049, 35.044216, 23.632488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770839, -0.300137, -0.561894,
		-0.376852, -0.926003, -0.022361,
		-0.513605, 0.228988, -0.826907,
		20.853968, 35.112911, 23.384417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.321671, 34.346828, 23.539591>,  <21.213491, 34.952621, 23.963251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.321671, 34.346828, 23.539591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.215492, 34.681263, 23.347546>,  <21.151785, 34.881924, 23.232319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.215492, 34.681263, 23.347546>,  <21.321671, 34.346828, 23.539591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.215492, 34.681263, 23.347546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607002, -0.241966, -0.756968,
		-0.749058, -0.492362, -0.443275,
		-0.265444, 0.836082, -0.480111,
		21.135859, 34.932087, 23.203512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.126926, 34.142948, 22.827473>,  <21.321671, 34.346828, 23.539591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.126926, 34.142948, 22.827473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.266773, 34.516277, 22.860153>,  <21.350681, 34.740276, 22.879761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.266773, 34.516277, 22.860153>,  <21.126926, 34.142948, 22.827473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.266773, 34.516277, 22.860153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779258, -0.241273, -0.578398,
		-0.520121, 0.265882, -0.811653,
		0.349616, 0.933324, 0.081700,
		21.371658, 34.796276, 22.884663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.457937, 34.247849, 22.239403>,  <21.126926, 34.142948, 22.827473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.457937, 34.247849, 22.239403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595779, 34.545563, 22.468239>,  <21.678486, 34.724190, 22.605541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595779, 34.545563, 22.468239>,  <21.457937, 34.247849, 22.239403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.595779, 34.545563, 22.468239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934848, -0.216598, -0.281328,
		-0.085474, 0.631765, -0.770433,
		0.344607, 0.744284, 0.572090,
		21.699162, 34.768848, 22.639866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.816759, 34.613277, 21.862171>,  <21.457937, 34.247849, 22.239403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.816759, 34.613277, 21.862171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.996775, 34.743259, 22.194885>,  <22.104784, 34.821251, 22.394514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.996775, 34.743259, 22.194885>,  <21.816759, 34.613277, 21.862171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.996775, 34.743259, 22.194885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892857, -0.180974, -0.412376,
		0.016526, 0.928251, -0.371587,
		0.450037, 0.324959, 0.831786,
		22.131786, 34.840748, 22.444422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.294117, 35.105362, 21.645887>,  <21.816759, 34.613277, 21.862171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.294117, 35.105362, 21.645887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.428104, 34.984032, 22.002716>,  <22.508497, 34.911236, 22.216812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.428104, 34.984032, 22.002716>,  <22.294117, 35.105362, 21.645887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.428104, 34.984032, 22.002716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942225, 0.105178, -0.318041,
		0.002642, 0.947066, 0.321029,
		0.334971, -0.303322, 0.892071,
		22.528595, 34.893036, 22.270338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.869394, 35.457779, 21.673929>,  <22.294117, 35.105362, 21.645887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.869394, 35.457779, 21.673929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.894327, 35.183849, 21.964344>,  <22.909286, 35.019489, 22.138592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.894327, 35.183849, 21.964344>,  <22.869394, 35.457779, 21.673929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.894327, 35.183849, 21.964344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986116, -0.069924, -0.150617,
		0.153914, 0.725343, 0.670961,
		0.062332, -0.684827, 0.726035,
		22.913027, 34.978401, 22.182154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.319675, 35.792458, 22.058867>,  <22.869394, 35.457779, 21.673929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.319675, 35.792458, 22.058867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.300848, 35.399754, 22.132553>,  <23.289553, 35.164131, 22.176765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.300848, 35.399754, 22.132553>,  <23.319675, 35.792458, 22.058867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.300848, 35.399754, 22.132553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981019, -0.080162, -0.176567,
		0.188113, 0.172411, 0.966896,
		-0.047067, -0.981758, 0.184218,
		23.286728, 35.105225, 22.187819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.934742, 35.645821, 22.452271>,  <23.319675, 35.792458, 22.058867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.934742, 35.645821, 22.452271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.855490, 35.272144, 22.333584>,  <23.807940, 35.047939, 22.262371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.855490, 35.272144, 22.333584>,  <23.934742, 35.645821, 22.452271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.855490, 35.272144, 22.333584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970921, -0.228551, 0.071252,
		-0.134377, -0.273972, 0.952304,
		-0.198129, -0.934186, -0.296717,
		23.796051, 34.991890, 22.244568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.497702, 35.277000, 22.750126>,  <23.934742, 35.645821, 22.452271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.497702, 35.277000, 22.750126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327631, 35.042683, 22.474133>,  <24.225590, 34.902092, 22.308537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327631, 35.042683, 22.474133>,  <24.497702, 35.277000, 22.750126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.327631, 35.042683, 22.474133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903630, -0.318313, -0.286583,
		-0.051753, -0.745337, 0.664676,
		-0.425176, -0.585790, -0.689983,
		24.200079, 34.866947, 22.267138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804291, 34.697559, 22.844303>,  <24.497702, 35.277000, 22.750126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804291, 34.697559, 22.844303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673229, 34.674786, 22.467072>,  <24.594593, 34.661121, 22.240732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673229, 34.674786, 22.467072>,  <24.804291, 34.697559, 22.844303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.673229, 34.674786, 22.467072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937526, -0.143195, -0.317080,
		-0.116993, -0.988056, 0.100295,
		-0.327655, -0.056933, -0.943081,
		24.574932, 34.657707, 22.184147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.264660, 34.285805, 22.599890>,  <24.804291, 34.697559, 22.844303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.264660, 34.285805, 22.599890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094316, 34.365570, 22.246872>,  <24.992111, 34.413429, 22.035061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094316, 34.365570, 22.246872>,  <25.264660, 34.285805, 22.599890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.094316, 34.365570, 22.246872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825214, -0.314395, -0.469231,
		-0.371036, -0.928112, -0.030669,
		-0.425856, 0.199410, -0.882543,
		24.966560, 34.425392, 21.982109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417135, 33.684361, 22.060251>,  <25.264660, 34.285805, 22.599890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417135, 33.684361, 22.060251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327814, 34.034096, 21.887894>,  <25.274221, 34.243938, 21.784479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327814, 34.034096, 21.887894>,  <25.417135, 33.684361, 22.060251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.327814, 34.034096, 21.887894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819412, -0.071038, -0.568787,
		-0.527922, -0.480090, -0.700580,
		-0.223301, 0.874338, -0.430894,
		25.260824, 34.296398, 21.758625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.512434, 33.579857, 21.428986>,  <25.417135, 33.684361, 22.060251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.512434, 33.579857, 21.428986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515554, 33.979786, 21.435867>,  <25.517427, 34.219742, 21.439997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515554, 33.979786, 21.435867>,  <25.512434, 33.579857, 21.428986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515554, 33.979786, 21.435867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683979, 0.007213, -0.729466,
		-0.729460, 0.017458, -0.683801,
		0.007803, 0.999822, 0.017203,
		25.517895, 34.279732, 21.441029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.359518, 33.785370, 20.687374>,  <25.512434, 33.579857, 21.428986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.359518, 33.785370, 20.687374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552326, 34.072456, 20.888386>,  <25.668011, 34.244709, 21.008993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552326, 34.072456, 20.888386>,  <25.359518, 33.785370, 20.687374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552326, 34.072456, 20.888386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687382, 0.045872, -0.724846,
		-0.543288, 0.694820, -0.471236,
		0.482022, 0.717719, 0.502528,
		25.696932, 34.287773, 21.039145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502016, 34.329323, 20.251760>,  <25.359518, 33.785370, 20.687374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502016, 34.329323, 20.251760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775124, 34.432240, 20.525291>,  <25.938988, 34.493992, 20.689411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775124, 34.432240, 20.525291>,  <25.502016, 34.329323, 20.251760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775124, 34.432240, 20.525291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594910, 0.347565, -0.724762,
		-0.424153, 0.901664, 0.084240,
		0.682771, 0.257295, 0.683830,
		25.979956, 34.509430, 20.730440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599100, 34.994503, 20.120493>,  <25.502016, 34.329323, 20.251760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599100, 34.994503, 20.120493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922840, 34.877663, 20.324306>,  <26.117085, 34.807560, 20.446594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922840, 34.877663, 20.324306>,  <25.599100, 34.994503, 20.120493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922840, 34.877663, 20.324306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586559, 0.357753, -0.726609,
		0.029955, 0.886956, 0.460882,
		0.809352, -0.292100, 0.509535,
		26.165646, 34.790031, 20.477167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041368, 35.600330, 20.177162>,  <25.599100, 34.994503, 20.120493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041368, 35.600330, 20.177162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278313, 35.283527, 20.236271>,  <26.420479, 35.093445, 20.271736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278313, 35.283527, 20.236271>,  <26.041368, 35.600330, 20.177162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278313, 35.283527, 20.236271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666318, 0.378486, -0.642471,
		0.452910, 0.479038, 0.751927,
		0.592362, -0.792005, 0.147772,
		26.456020, 35.045925, 20.280602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707159, 35.924259, 20.304411>,  <26.041368, 35.600330, 20.177162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707159, 35.924259, 20.304411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769024, 35.546890, 20.187080>,  <26.806143, 35.320469, 20.116682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769024, 35.546890, 20.187080>,  <26.707159, 35.924259, 20.304411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769024, 35.546890, 20.187080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617306, 0.324089, -0.716868,
		0.771370, -0.070198, 0.632503,
		0.154664, -0.943419, -0.293326,
		26.815424, 35.263866, 20.099083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418596, 35.824757, 20.495800>,  <26.707159, 35.924259, 20.304411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418596, 35.824757, 20.495800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323780, 35.556538, 20.214611>,  <27.266890, 35.395607, 20.045897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323780, 35.556538, 20.214611>,  <27.418596, 35.824757, 20.495800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323780, 35.556538, 20.214611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678856, 0.403295, -0.613602,
		0.694957, -0.622667, 0.359611,
		-0.237041, -0.670551, -0.702974,
		27.252668, 35.355373, 20.003719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037704, 35.796520, 20.147289>,  <27.418596, 35.824757, 20.495800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037704, 35.796520, 20.147289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794872, 35.597458, 19.899487>,  <27.649172, 35.478020, 19.750805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794872, 35.597458, 19.899487>,  <28.037704, 35.796520, 20.147289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794872, 35.597458, 19.899487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476202, 0.396275, -0.784982,
		0.636146, -0.771560, -0.003587,
		-0.607082, -0.497655, -0.619508,
		27.612747, 35.448162, 19.713634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389931, 35.282486, 19.736332>,  <28.037704, 35.796520, 20.147289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389931, 35.282486, 19.736332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081635, 35.359425, 19.493362>,  <27.896658, 35.405590, 19.347580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081635, 35.359425, 19.493362>,  <28.389931, 35.282486, 19.736332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081635, 35.359425, 19.493362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635260, 0.305384, -0.709355,
		0.049052, -0.932599, -0.357564,
		-0.770739, 0.192351, -0.607423,
		27.850412, 35.417130, 19.311136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351246, 34.901398, 19.125841>,  <28.389931, 35.282486, 19.736332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351246, 34.901398, 19.125841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155600, 35.240990, 19.045849>,  <28.038212, 35.444744, 18.997852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155600, 35.240990, 19.045849>,  <28.351246, 34.901398, 19.125841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155600, 35.240990, 19.045849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529639, 0.106925, -0.841457,
		-0.693001, -0.517486, -0.501954,
		-0.489114, 0.848985, -0.199982,
		28.008865, 35.495686, 18.985855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234137, 34.900902, 18.379028>,  <28.351246, 34.901398, 19.125841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234137, 34.900902, 18.379028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264071, 35.278603, 18.507267>,  <28.282030, 35.505222, 18.584211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264071, 35.278603, 18.507267>,  <28.234137, 34.900902, 18.379028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264071, 35.278603, 18.507267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591504, 0.216800, -0.776608,
		-0.802822, 0.247753, -0.542306,
		0.074835, 0.944254, 0.320599,
		28.286522, 35.561878, 18.603447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291800, 35.415337, 17.776089>,  <28.234137, 34.900902, 18.379028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291800, 35.415337, 17.776089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486023, 35.540119, 18.102749>,  <28.602556, 35.614990, 18.298744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486023, 35.540119, 18.102749>,  <28.291800, 35.415337, 17.776089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486023, 35.540119, 18.102749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714243, 0.397082, -0.576353,
		-0.504074, 0.863139, -0.030006,
		0.485558, 0.311956, 0.816650,
		28.631691, 35.633705, 18.347744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006927, 35.473518, 17.548647>,  <28.291800, 35.415337, 17.776089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006927, 35.473518, 17.548647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875298, 35.255478, 17.857082>,  <28.796320, 35.124653, 18.042145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875298, 35.255478, 17.857082>,  <29.006927, 35.473518, 17.548647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875298, 35.255478, 17.857082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708860, -0.682085, -0.179660,
		0.623881, 0.487473, 0.610855,
		-0.329075, -0.545097, 0.771089,
		28.776575, 35.091949, 18.088409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382912, 36.059105, 17.814833>,  <29.006927, 35.473518, 17.548647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382912, 36.059105, 17.814833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779068, 36.098480, 17.853695>,  <30.016762, 36.122105, 17.877012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779068, 36.098480, 17.853695>,  <29.382912, 36.059105, 17.814833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779068, 36.098480, 17.853695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120112, 0.960418, 0.251338,
		-0.068572, -0.260592, 0.963011,
		0.990390, 0.098434, 0.097158,
		30.076185, 36.128010, 17.882843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509209, 36.348698, 18.471451>,  <29.382912, 36.059105, 17.814833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509209, 36.348698, 18.471451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797369, 36.477261, 18.225616>,  <29.970264, 36.554398, 18.078115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797369, 36.477261, 18.225616>,  <29.509209, 36.348698, 18.471451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797369, 36.477261, 18.225616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180646, 0.942506, 0.281155,
		0.669618, -0.091521, 0.737045,
		0.720401, 0.321411, -0.614587,
		30.013489, 36.573685, 18.041241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298437, 36.849739, 18.059584>,  <29.509209, 36.348698, 18.471451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298437, 36.849739, 18.059584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291002, 37.213200, 18.226440>,  <29.286541, 37.431274, 18.326555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291002, 37.213200, 18.226440>,  <29.298437, 36.849739, 18.059584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291002, 37.213200, 18.226440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986355, -0.084926, 0.141038,
		0.163581, -0.408830, 0.897831,
		-0.018589, 0.908651, 0.417143,
		29.285425, 37.485794, 18.351583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175079, 36.915157, 18.847900>,  <29.298437, 36.849739, 18.059584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175079, 36.915157, 18.847900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013672, 37.189831, 18.606030>,  <28.916828, 37.354633, 18.460907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013672, 37.189831, 18.606030>,  <29.175079, 36.915157, 18.847900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013672, 37.189831, 18.606030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887910, -0.134344, 0.439963,
		0.220880, 0.714434, 0.663924,
		-0.403519, 0.686684, -0.604679,
		28.892616, 37.395836, 18.424625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959530, 37.579414, 19.222282>,  <29.175079, 36.915157, 18.847900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959530, 37.579414, 19.222282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773914, 37.468750, 18.885681>,  <28.662544, 37.402351, 18.683720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773914, 37.468750, 18.885681>,  <28.959530, 37.579414, 19.222282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773914, 37.468750, 18.885681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863494, -0.070629, 0.499389,
		-0.197595, 0.958369, -0.206119,
		-0.464041, -0.276659, -0.841502,
		28.634703, 37.385754, 18.633230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279966, 37.816441, 19.299557>,  <28.959530, 37.579414, 19.222282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279966, 37.816441, 19.299557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188803, 37.584183, 18.986916>,  <28.134104, 37.444828, 18.799332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188803, 37.584183, 18.986916>,  <28.279966, 37.816441, 19.299557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188803, 37.584183, 18.986916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968688, 0.054011, 0.242337,
		-0.098497, 0.812360, -0.574777,
		-0.227909, -0.580649, -0.781603,
		28.120430, 37.409988, 18.752434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807840, 38.208706, 18.927530>,  <28.279966, 37.816441, 19.299557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807840, 38.208706, 18.927530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741795, 37.815498, 18.895519>,  <27.702168, 37.579575, 18.876312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741795, 37.815498, 18.895519>,  <27.807840, 38.208706, 18.927530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741795, 37.815498, 18.895519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985772, 0.161895, 0.045204,
		-0.031481, 0.086352, -0.995767,
		-0.165113, -0.983023, -0.080027,
		27.692261, 37.520592, 18.871511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203333, 38.115288, 18.445732>,  <27.807840, 38.208706, 18.927530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203333, 38.115288, 18.445732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256798, 37.789341, 18.671341>,  <27.288876, 37.593773, 18.806705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256798, 37.789341, 18.671341>,  <27.203333, 38.115288, 18.445732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256798, 37.789341, 18.671341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959129, 0.036867, 0.280556,
		-0.249411, -0.578468, -0.776640,
		0.133661, -0.814872, 0.564020,
		27.296896, 37.544880, 18.840548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703938, 37.716091, 18.224382>,  <27.203333, 38.115288, 18.445732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703938, 37.716091, 18.224382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812262, 37.590412, 18.588348>,  <26.877256, 37.515007, 18.806728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812262, 37.590412, 18.588348>,  <26.703938, 37.716091, 18.224382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812262, 37.590412, 18.588348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960628, -0.149181, 0.234389,
		0.062099, -0.937564, -0.342224,
		0.270808, -0.314195, 0.909915,
		26.893503, 37.496155, 18.861322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236528, 37.306290, 18.386274>,  <26.703938, 37.716091, 18.224382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236528, 37.306290, 18.386274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391411, 37.321533, 18.754757>,  <26.484341, 37.330681, 18.975845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391411, 37.321533, 18.754757>,  <26.236528, 37.306290, 18.386274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391411, 37.321533, 18.754757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890531, -0.243323, 0.384380,
		0.238798, -0.969196, -0.060280,
		0.387207, 0.038109, 0.921205,
		26.507572, 37.332966, 19.031118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093781, 36.647419, 18.891380>,  <26.236528, 37.306290, 18.386274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093781, 36.647419, 18.891380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150726, 36.948868, 19.148064>,  <26.184895, 37.129738, 19.302074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150726, 36.948868, 19.148064>,  <26.093781, 36.647419, 18.891380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150726, 36.948868, 19.148064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887656, -0.189644, 0.419646,
		0.437950, -0.629359, 0.641956,
		0.142365, 0.753620, 0.641708,
		26.193436, 37.174953, 19.340576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750996, 36.448887, 19.555832>,  <26.093781, 36.647419, 18.891380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750996, 36.448887, 19.555832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813309, 36.838551, 19.621258>,  <25.850697, 37.072350, 19.660513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813309, 36.838551, 19.621258>,  <25.750996, 36.448887, 19.555832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813309, 36.838551, 19.621258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814553, 0.033021, 0.579148,
		0.558779, -0.223454, 0.798645,
		0.155785, 0.974155, 0.163564,
		25.860044, 37.130798, 19.670326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748022, 36.438038, 20.290972>,  <25.750996, 36.448887, 19.555832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748022, 36.438038, 20.290972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667562, 36.804817, 20.153130>,  <25.619287, 37.024883, 20.070425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667562, 36.804817, 20.153130>,  <25.748022, 36.438038, 20.290972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667562, 36.804817, 20.153130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781857, 0.061644, 0.620403,
		0.590118, 0.394226, 0.704519,
		-0.201150, 0.916944, -0.344605,
		25.607218, 37.079899, 20.049747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361773, 36.796692, 20.869267>,  <25.748022, 36.438038, 20.290972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361773, 36.796692, 20.869267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.305162, 37.026051, 20.546482>,  <25.271196, 37.163666, 20.352812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.305162, 37.026051, 20.546482>,  <25.361773, 36.796692, 20.869267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.305162, 37.026051, 20.546482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864552, 0.325479, 0.382900,
		0.482203, 0.751849, 0.449671,
		-0.141525, 0.573400, -0.806960,
		25.262705, 37.198071, 20.304394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204990, 37.342308, 21.219810>,  <25.361773, 36.796692, 20.869267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204990, 37.342308, 21.219810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073298, 37.368893, 20.843048>,  <24.994282, 37.384842, 20.616991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073298, 37.368893, 20.843048>,  <25.204990, 37.342308, 21.219810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.073298, 37.368893, 20.843048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890335, 0.310392, 0.333106,
		0.314500, 0.948282, -0.043018,
		-0.329231, 0.066462, -0.941908,
		24.974527, 37.388832, 20.560476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.894485, 38.022285, 21.145649>,  <25.204990, 37.342308, 21.219810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.894485, 38.022285, 21.145649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732536, 37.788654, 20.864243>,  <24.635366, 37.648476, 20.695398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732536, 37.788654, 20.864243>,  <24.894485, 38.022285, 21.145649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.732536, 37.788654, 20.864243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912291, 0.206125, 0.353890,
		-0.061685, 0.785093, -0.616299,
		-0.404871, -0.584073, -0.703518,
		24.611074, 37.613434, 20.653187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.409344, 38.471390, 20.880287>,  <24.894485, 38.022285, 21.145649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.409344, 38.471390, 20.880287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322460, 38.097504, 20.767769>,  <24.270330, 37.873173, 20.700258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322460, 38.097504, 20.767769>,  <24.409344, 38.471390, 20.880287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.322460, 38.097504, 20.767769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960270, 0.152888, 0.233468,
		-0.175219, 0.320832, -0.930787,
		-0.217211, -0.934715, -0.281296,
		24.257298, 37.817089, 20.683380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.761030, 38.477970, 20.295815>,  <24.409344, 38.471390, 20.880287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.761030, 38.477970, 20.295815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.779362, 38.139320, 20.507896>,  <23.790359, 37.936131, 20.635145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.779362, 38.139320, 20.507896>,  <23.761030, 38.477970, 20.295815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.779362, 38.139320, 20.507896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980357, 0.063809, 0.186623,
		-0.191832, -0.528345, -0.827075,
		0.045826, -0.846629, 0.530207,
		23.793110, 37.885330, 20.666958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.053585, 38.328571, 20.279928>,  <23.761030, 38.477970, 20.295815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.053585, 38.328571, 20.279928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.182238, 38.066051, 20.552933>,  <23.259430, 37.908539, 20.716736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.182238, 38.066051, 20.552933>,  <23.053585, 38.328571, 20.279928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.182238, 38.066051, 20.552933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920826, -0.048929, 0.386891,
		-0.220522, -0.752911, -0.620076,
		0.321634, -0.656301, 0.682511,
		23.278728, 37.869160, 20.757687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.544828, 37.704082, 20.330923>,  <23.053585, 38.328571, 20.279928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.544828, 37.704082, 20.330923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.753794, 37.693684, 20.671841>,  <22.879173, 37.687443, 20.876392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.753794, 37.693684, 20.671841>,  <22.544828, 37.704082, 20.330923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.753794, 37.693684, 20.671841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849243, -0.105682, 0.517318,
		0.076623, -0.994060, -0.077288,
		0.522414, -0.025998, 0.852296,
		22.910519, 37.685883, 20.927530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.244722, 37.222824, 20.681778>,  <22.544828, 37.704082, 20.330923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.244722, 37.222824, 20.681778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430532, 37.418369, 20.977139>,  <22.542019, 37.535694, 21.154354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430532, 37.418369, 20.977139>,  <22.244722, 37.222824, 20.681778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.430532, 37.418369, 20.977139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772478, -0.184022, 0.607794,
		0.433008, -0.852732, 0.292150,
		0.464523, 0.488859, 0.738400,
		22.569889, 37.565025, 21.198658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.124416, 36.788109, 21.350702>,  <22.244722, 37.222824, 20.681778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.124416, 36.788109, 21.350702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.222258, 37.147961, 21.495392>,  <22.280962, 37.363873, 21.582205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.222258, 37.147961, 21.495392>,  <22.124416, 36.788109, 21.350702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.222258, 37.147961, 21.495392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736751, -0.070089, 0.672521,
		0.630370, -0.431000, 0.645656,
		0.244603, 0.899626, 0.361722,
		22.295639, 37.417847, 21.603909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.149931, 36.756721, 22.086910>,  <22.124416, 36.788109, 21.350702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.149931, 36.756721, 22.086910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.076286, 37.143604, 22.016914>,  <22.032099, 37.375732, 21.974916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.076286, 37.143604, 22.016914>,  <22.149931, 36.756721, 22.086910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.076286, 37.143604, 22.016914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800602, -0.044286, 0.597557,
		0.570209, 0.250114, 0.782498,
		-0.184111, 0.967203, -0.174990,
		22.021053, 37.433765, 21.964418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.039431, 37.048168, 22.819517>,  <22.149931, 36.756721, 22.086910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.039431, 37.048168, 22.819517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.891485, 37.304272, 22.550217>,  <21.802717, 37.457935, 22.388636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.891485, 37.304272, 22.550217>,  <22.039431, 37.048168, 22.819517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.891485, 37.304272, 22.550217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859448, 0.039478, 0.509697,
		0.352917, 0.767143, 0.535668,
		-0.369864, 0.640260, -0.673252,
		21.780525, 37.496349, 22.348242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.832130, 37.727142, 23.164967>,  <22.039431, 37.048168, 22.819517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.832130, 37.727142, 23.164967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.612894, 37.683048, 22.833317>,  <21.481352, 37.656593, 22.634327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.612894, 37.683048, 22.833317>,  <21.832130, 37.727142, 23.164967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.612894, 37.683048, 22.833317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836419, 0.072875, 0.543224,
		0.000541, 0.991230, -0.132145,
		-0.548091, -0.110235, -0.829123,
		21.448467, 37.649979, 22.584579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.353054, 38.188854, 23.187176>,  <21.832130, 37.727142, 23.164967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.353054, 38.188854, 23.187176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180597, 37.925217, 22.940693>,  <21.077124, 37.767033, 22.792803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180597, 37.925217, 22.940693>,  <21.353054, 38.188854, 23.187176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.180597, 37.925217, 22.940693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830917, 0.023822, 0.555886,
		-0.351703, 0.751682, -0.557924,
		-0.431140, -0.659096, -0.616207,
		21.051254, 37.727489, 22.755831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.545059, 38.345490, 23.109064>,  <21.353054, 38.188854, 23.187176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.545059, 38.345490, 23.109064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.551102, 37.970974, 22.968697>,  <20.554728, 37.746265, 22.884476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.551102, 37.970974, 22.968697>,  <20.545059, 38.345490, 23.109064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.551102, 37.970974, 22.968697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951973, -0.120806, 0.281340,
		-0.305807, 0.329815, -0.893143,
		0.015106, -0.936284, -0.350918,
		20.555634, 37.690090, 22.863420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.820501, 38.214577, 23.159031>,  <20.545059, 38.345490, 23.109064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.820501, 38.214577, 23.159031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968473, 37.896599, 22.966690>,  <20.057257, 37.705814, 22.851286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968473, 37.896599, 22.966690>,  <19.820501, 38.214577, 23.159031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.968473, 37.896599, 22.966690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912570, -0.407989, -0.027576,
		-0.174261, 0.449014, -0.876367,
		0.369930, -0.794941, -0.480854,
		20.079453, 37.658115, 22.822433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.323526, 38.052303, 22.781601>,  <19.820501, 38.214577, 23.159031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.323526, 38.052303, 22.781601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.517204, 37.707344, 22.840694>,  <19.633411, 37.500370, 22.876150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.517204, 37.707344, 22.840694>,  <19.323526, 38.052303, 22.781601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.517204, 37.707344, 22.840694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873582, -0.485963, 0.026335,
		0.049083, -0.141811, -0.988676,
		0.484195, -0.862397, 0.147736,
		19.662462, 37.448624, 22.885015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.155907, 37.449463, 22.355370>,  <19.323526, 38.052303, 22.781601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.155907, 37.449463, 22.355370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.280785, 37.327923, 22.715416>,  <19.355711, 37.254997, 22.931444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.280785, 37.327923, 22.715416>,  <19.155907, 37.449463, 22.355370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.280785, 37.327923, 22.715416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820303, -0.564140, 0.094074,
		0.479207, -0.767737, -0.425371,
		0.312193, -0.303852, 0.900116,
		19.374443, 37.236767, 22.985451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.996609, 36.752914, 22.404760>,  <19.155907, 37.449463, 22.355370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.996609, 36.752914, 22.404760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.001528, 36.896740, 22.777977>,  <19.004480, 36.983032, 23.001907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.001528, 36.896740, 22.777977>,  <18.996609, 36.752914, 22.404760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.001528, 36.896740, 22.777977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820276, -0.530000, 0.215054,
		0.571836, -0.767996, 0.288419,
		0.012299, 0.359559, 0.933041,
		19.005217, 37.004608, 23.057890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.383678, 37.057247, 22.844233>,  <18.996609, 36.752914, 22.404760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.383678, 37.057247, 22.844233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.257996, 37.397751, 23.012344>,  <18.182587, 37.602051, 23.113213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.257996, 37.397751, 23.012344>,  <18.383678, 37.057247, 22.844233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.257996, 37.397751, 23.012344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830064, 0.461183, -0.313533,
		-0.460724, 0.250346, -0.851505,
		-0.314208, 0.851256, 0.420281,
		18.163733, 37.653130, 23.138430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.285097, 25.189848, 28.534143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.679901, 25.254097, 28.532784>,  <29.916784, 25.292646, 28.531967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.679901, 25.254097, 28.532784>,  <29.285097, 25.189848, 28.534143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679901, 25.254097, 28.532784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128594, 0.777144, -0.616044,
		-0.096309, 0.608479, 0.787704,
		0.987010, 0.160625, -0.003401,
		29.976004, 25.302284, 28.531763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421947, 25.937864, 28.547060>,  <29.285097, 25.189848, 28.534143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421947, 25.937864, 28.547060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.779406, 25.793705, 28.440094>,  <29.993879, 25.707209, 28.375914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.779406, 25.793705, 28.440094>,  <29.421947, 25.937864, 28.547060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779406, 25.793705, 28.440094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086254, 0.722703, -0.685755,
		0.440409, 0.589756, 0.676925,
		0.893644, -0.360400, -0.267417,
		30.047499, 25.685585, 28.359869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843002, 26.493725, 28.575348>,  <29.421947, 25.937864, 28.547060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843002, 26.493725, 28.575348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.039047, 26.253456, 28.322685>,  <30.156673, 26.109295, 28.171087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.039047, 26.253456, 28.322685>,  <29.843002, 26.493725, 28.575348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039047, 26.253456, 28.322685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144268, 0.770562, -0.620823,
		0.859639, 0.213144, 0.464318,
		0.490110, -0.600670, -0.631655,
		30.186081, 26.073256, 28.133188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391943, 26.892380, 28.256264>,  <29.843002, 26.493725, 28.575348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391943, 26.892380, 28.256264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.393789, 26.588257, 27.996445>,  <30.394897, 26.405783, 27.840553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.393789, 26.588257, 27.996445>,  <30.391943, 26.892380, 28.256264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393789, 26.588257, 27.996445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144569, 0.643236, -0.751895,
		0.989484, -0.090435, 0.112885,
		0.004614, -0.760308, -0.649546,
		30.395174, 26.360165, 27.801580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026310, 26.896122, 27.858772>,  <30.391943, 26.892380, 28.256264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026310, 26.896122, 27.858772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.761368, 26.693367, 27.638100>,  <30.602404, 26.571714, 27.505697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.761368, 26.693367, 27.638100>,  <31.026310, 26.896122, 27.858772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761368, 26.693367, 27.638100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207495, 0.583447, -0.785197,
		0.719884, -0.634550, -0.281272,
		-0.662354, -0.506888, -0.551681,
		30.562662, 26.541300, 27.472595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387390, 26.740646, 27.230982>,  <31.026310, 26.896122, 27.858772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387390, 26.740646, 27.230982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.000122, 26.710598, 27.135483>,  <30.767761, 26.692570, 27.078182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.000122, 26.710598, 27.135483>,  <31.387390, 26.740646, 27.230982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000122, 26.710598, 27.135483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152348, 0.579956, -0.800276,
		0.198582, -0.811177, -0.550052,
		-0.968171, -0.075121, -0.238750,
		30.709671, 26.688061, 27.063858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380875, 26.817047, 26.509090>,  <31.387390, 26.740646, 27.230982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380875, 26.817047, 26.509090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.007607, 26.919991, 26.609455>,  <30.783646, 26.981756, 26.669674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.007607, 26.919991, 26.609455>,  <31.380875, 26.817047, 26.509090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007607, 26.919991, 26.609455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002286, 0.702317, -0.711860,
		-0.359422, -0.663715, -0.655971,
		-0.933172, 0.257358, 0.250911,
		30.727655, 26.997198, 26.684729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165840, 26.820581, 25.894913>,  <31.380875, 26.817047, 26.509090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165840, 26.820581, 25.894913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.877869, 27.007790, 26.099915>,  <30.705086, 27.120115, 26.222916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.877869, 27.007790, 26.099915>,  <31.165840, 26.820581, 25.894913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877869, 27.007790, 26.099915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129908, 0.634507, -0.761922,
		-0.681783, -0.615107, -0.395999,
		-0.719927, 0.468022, 0.512503,
		30.661890, 27.148197, 26.253666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496483, 26.728720, 25.464083>,  <31.165840, 26.820581, 25.894913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496483, 26.728720, 25.464083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.501251, 27.047703, 25.705387>,  <30.504112, 27.239092, 25.850170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.501251, 27.047703, 25.705387>,  <30.496483, 26.728720, 25.464083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501251, 27.047703, 25.705387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280772, 0.581701, -0.763407,
		-0.959700, -0.160277, 0.230838,
		0.011922, 0.797455, 0.603260,
		30.504827, 27.286940, 25.886366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890596, 27.097351, 25.331121>,  <30.496483, 26.728720, 25.464083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890596, 27.097351, 25.331121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.125780, 27.369759, 25.505714>,  <30.266891, 27.533203, 25.610470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.125780, 27.369759, 25.505714>,  <29.890596, 27.097351, 25.331121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125780, 27.369759, 25.505714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294108, 0.682658, -0.668938,
		-0.753527, 0.264936, 0.601669,
		0.587960, 0.681019, 0.436482,
		30.302168, 27.574064, 25.636660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465519, 27.659412, 25.383495>,  <29.890596, 27.097351, 25.331121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465519, 27.659412, 25.383495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.843185, 27.789383, 25.405296>,  <30.069786, 27.867365, 25.418377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.843185, 27.789383, 25.405296>,  <29.465519, 27.659412, 25.383495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843185, 27.789383, 25.405296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244693, 0.802339, -0.544405,
		-0.220622, 0.500673, 0.837050,
		0.944167, 0.324928, 0.054502,
		30.126436, 27.886862, 25.421646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391138, 28.204567, 25.587248>,  <29.465519, 27.659412, 25.383495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391138, 28.204567, 25.587248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.760387, 28.253689, 25.441502>,  <29.981937, 28.283161, 25.354053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.760387, 28.253689, 25.441502>,  <29.391138, 28.204567, 25.587248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760387, 28.253689, 25.441502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273464, 0.875845, -0.397634,
		0.270299, 0.466706, 0.842095,
		0.923123, 0.122803, -0.364368,
		30.037325, 28.290529, 25.332191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482500, 28.862926, 25.687029>,  <29.391138, 28.204567, 25.587248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482500, 28.862926, 25.687029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.753923, 28.767849, 25.409019>,  <29.916777, 28.710802, 25.242214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.753923, 28.767849, 25.409019>,  <29.482500, 28.862926, 25.687029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753923, 28.767849, 25.409019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104895, 0.905142, -0.411964,
		0.727019, 0.352446, 0.589258,
		0.678558, -0.237695, -0.695026,
		29.957491, 28.696541, 25.200512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993521, 29.417719, 25.633760>,  <29.482500, 28.862926, 25.687029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993521, 29.417719, 25.633760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.022730, 29.233635, 25.279839>,  <30.040255, 29.123184, 25.067486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.022730, 29.233635, 25.279839>,  <29.993521, 29.417719, 25.633760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022730, 29.233635, 25.279839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243935, 0.851984, -0.463270,
		0.967039, 0.249663, -0.050047,
		0.073022, -0.460208, -0.884803,
		30.044636, 29.095573, 25.014399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374706, 29.846125, 25.234474>,  <29.993521, 29.417719, 25.633760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374706, 29.846125, 25.234474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.203545, 29.605801, 24.964386>,  <30.100847, 29.461607, 24.802332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.203545, 29.605801, 24.964386>,  <30.374706, 29.846125, 25.234474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203545, 29.605801, 24.964386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241948, 0.795952, -0.554906,
		0.870838, -0.074078, -0.485957,
		-0.427905, -0.600810, -0.675222,
		30.075172, 29.425558, 24.761820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622480, 30.128252, 24.581963>,  <30.374706, 29.846125, 25.234474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622480, 30.128252, 24.581963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.297783, 29.924252, 24.468143>,  <30.102964, 29.801851, 24.399853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.297783, 29.924252, 24.468143>,  <30.622480, 30.128252, 24.581963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297783, 29.924252, 24.468143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218937, 0.717445, -0.661317,
		0.541419, -0.474523, -0.694041,
		-0.811746, -0.510001, -0.284547,
		30.054258, 29.771252, 24.382778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650730, 30.208321, 23.892889>,  <30.622480, 30.128252, 24.581963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650730, 30.208321, 23.892889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.279898, 30.105343, 24.001881>,  <30.057398, 30.043556, 24.067276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.279898, 30.105343, 24.001881>,  <30.650730, 30.208321, 23.892889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279898, 30.105343, 24.001881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373753, 0.690679, -0.619090,
		-0.028816, -0.675786, -0.736534,
		-0.927081, -0.257442, 0.272480,
		30.001774, 30.028111, 24.083624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358757, 30.139669, 23.276224>,  <30.650730, 30.208321, 23.892889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358757, 30.139669, 23.276224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.046118, 30.175110, 23.523209>,  <29.858534, 30.196375, 23.671400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.046118, 30.175110, 23.523209>,  <30.358757, 30.139669, 23.276224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046118, 30.175110, 23.523209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489661, 0.526088, -0.695315,
		-0.386445, -0.845802, -0.367803,
		-0.781596, 0.088602, 0.617461,
		29.811640, 30.201691, 23.708447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728970, 30.080564, 22.845627>,  <30.358757, 30.139669, 23.276224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728970, 30.080564, 22.845627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.592415, 30.273476, 23.168331>,  <29.510483, 30.389223, 23.361954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.592415, 30.273476, 23.168331>,  <29.728970, 30.080564, 22.845627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592415, 30.273476, 23.168331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730887, 0.403469, -0.550470,
		-0.590983, -0.777574, 0.214752,
		-0.341385, 0.482278, 0.806762,
		29.490000, 30.418159, 23.410360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980640, 30.148348, 22.720472>,  <29.728970, 30.080564, 22.845627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980640, 30.148348, 22.720472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.047001, 30.417492, 23.008842>,  <29.086817, 30.578979, 23.181864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.047001, 30.417492, 23.008842>,  <28.980640, 30.148348, 22.720472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047001, 30.417492, 23.008842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753490, 0.558114, -0.347509,
		-0.636184, -0.485558, 0.599586,
		0.165902, 0.672862, 0.720926,
		29.096771, 30.619350, 23.225121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392014, 30.365334, 22.898582>,  <28.980640, 30.148348, 22.720472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392014, 30.365334, 22.898582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.634184, 30.651077, 23.038952>,  <28.779486, 30.822523, 23.123173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.634184, 30.651077, 23.038952>,  <28.392014, 30.365334, 22.898582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634184, 30.651077, 23.038952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647385, 0.698483, -0.304982,
		-0.462982, -0.042538, 0.885347,
		0.605426, 0.714361, 0.350924,
		28.815811, 30.865385, 23.144230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956163, 30.922052, 23.233223>,  <28.392014, 30.365334, 22.898582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956163, 30.922052, 23.233223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.312576, 31.083038, 23.149242>,  <28.526424, 31.179630, 23.098854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.312576, 31.083038, 23.149242>,  <27.956163, 30.922052, 23.233223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312576, 31.083038, 23.149242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453937, 0.789141, -0.413761,
		-0.000844, 0.463979, 0.885846,
		0.891034, 0.402467, -0.209951,
		28.579885, 31.203779, 23.086258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718431, 31.475058, 23.583912>,  <27.956163, 30.922052, 23.233223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718431, 31.475058, 23.583912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.349428, 31.629257, 23.591625>,  <27.128027, 31.721777, 23.596252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.349428, 31.629257, 23.591625>,  <27.718431, 31.475058, 23.583912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349428, 31.629257, 23.591625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140107, -0.380988, 0.913903,
		0.359654, 0.840380, 0.405475,
		-0.922507, 0.385498, 0.019281,
		27.072676, 31.744907, 23.597410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752398, 31.731243, 24.246752>,  <27.718431, 31.475058, 23.583912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752398, 31.731243, 24.246752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.397499, 31.630722, 24.092018>,  <27.184561, 31.570410, 23.999178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.397499, 31.630722, 24.092018>,  <27.752398, 31.731243, 24.246752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397499, 31.630722, 24.092018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192463, -0.560441, 0.805521,
		-0.419229, 0.789147, 0.448882,
		-0.887246, -0.251304, -0.386835,
		27.131325, 31.555330, 23.975967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277554, 31.840284, 24.749226>,  <27.752398, 31.731243, 24.246752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277554, 31.840284, 24.749226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.105938, 31.586712, 24.491837>,  <27.002968, 31.434568, 24.337402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.105938, 31.586712, 24.491837>,  <27.277554, 31.840284, 24.749226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105938, 31.586712, 24.491837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228740, -0.612901, 0.756327,
		-0.873843, 0.471683, 0.117955,
		-0.429041, -0.633930, -0.643472,
		26.977226, 31.396532, 24.298796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589020, 31.648853, 25.006666>,  <27.277554, 31.840284, 24.749226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589020, 31.648853, 25.006666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.633486, 31.333179, 24.765060>,  <26.660166, 31.143776, 24.620098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.633486, 31.333179, 24.765060>,  <26.589020, 31.648853, 25.006666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633486, 31.333179, 24.765060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181224, -0.613687, 0.768470,
		-0.977139, 0.024035, -0.211239,
		0.111164, -0.789184, -0.604013,
		26.666836, 31.096424, 24.583857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018230, 31.281179, 25.145281>,  <26.589020, 31.648853, 25.006666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018230, 31.281179, 25.145281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.301146, 31.041126, 24.995838>,  <26.470894, 30.897095, 24.906172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.301146, 31.041126, 24.995838>,  <26.018230, 31.281179, 25.145281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301146, 31.041126, 24.995838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182975, -0.665900, 0.723254,
		-0.682840, -0.443184, -0.580790,
		0.707283, -0.600137, -0.373612,
		26.513332, 30.861086, 24.883757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744043, 30.634508, 25.277477>,  <26.018230, 31.281179, 25.145281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.744043, 30.634508, 25.277477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.132618, 30.586987, 25.195312>,  <26.365763, 30.558474, 25.146013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.132618, 30.586987, 25.195312>,  <25.744043, 30.634508, 25.277477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132618, 30.586987, 25.195312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047558, -0.750610, 0.659031,
		-0.232479, -0.649977, -0.723522,
		0.971438, -0.118802, -0.205412,
		26.424049, 30.551346, 25.133688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781076, 29.939919, 25.180416>,  <25.744043, 30.634508, 25.277477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781076, 29.939919, 25.180416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.149994, 30.065552, 25.270508>,  <26.371344, 30.140932, 25.324562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.149994, 30.065552, 25.270508>,  <25.781076, 29.939919, 25.180416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149994, 30.065552, 25.270508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086214, -0.735259, 0.672281,
		0.376751, -0.600623, -0.705203,
		0.922294, 0.314081, 0.225227,
		26.426682, 30.159777, 25.338076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077278, 29.414686, 25.470945>,  <25.781076, 29.939919, 25.180416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077278, 29.414686, 25.470945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.361069, 29.678654, 25.569862>,  <26.531343, 29.837034, 25.629213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.361069, 29.678654, 25.569862>,  <26.077278, 29.414686, 25.470945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361069, 29.678654, 25.569862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360293, -0.641232, 0.677503,
		0.605668, -0.391574, -0.692702,
		0.709475, 0.659917, 0.247293,
		26.573912, 29.876629, 25.644051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825254, 29.163815, 25.340466>,  <26.077278, 29.414686, 25.470945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825254, 29.163815, 25.340466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.883589, 29.471237, 25.589642>,  <26.918589, 29.655691, 25.739147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.883589, 29.471237, 25.589642>,  <26.825254, 29.163815, 25.340466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883589, 29.471237, 25.589642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377525, -0.625256, 0.683030,
		0.914444, 0.135567, -0.381332,
		0.145834, 0.768555, 0.622941,
		26.927340, 29.701803, 25.776524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544027, 29.121372, 25.597858>,  <26.825254, 29.163815, 25.340466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544027, 29.121372, 25.597858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.318415, 29.310505, 25.868649>,  <27.183046, 29.423985, 26.031122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.318415, 29.310505, 25.868649>,  <27.544027, 29.121372, 25.597858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318415, 29.310505, 25.868649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286836, -0.656592, 0.697577,
		0.774333, 0.587637, 0.234714,
		-0.564033, 0.472832, 0.676976,
		27.149204, 29.452354, 26.071741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056553, 29.199194, 26.173761>,  <27.544027, 29.121372, 25.597858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056553, 29.199194, 26.173761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.680986, 29.245281, 26.303474>,  <27.455647, 29.272934, 26.381302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.680986, 29.245281, 26.303474>,  <28.056553, 29.199194, 26.173761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680986, 29.245281, 26.303474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196733, -0.593441, 0.780464,
		0.282368, 0.796588, 0.534524,
		-0.938916, 0.115219, 0.324284,
		27.399311, 29.279846, 26.400761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156023, 29.231312, 26.859722>,  <28.056553, 29.199194, 26.173761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156023, 29.231312, 26.859722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.763882, 29.152538, 26.855259>,  <27.528597, 29.105274, 26.852581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.763882, 29.152538, 26.855259>,  <28.156023, 29.231312, 26.859722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763882, 29.152538, 26.855259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142022, -0.743995, 0.652918,
		-0.136883, 0.638505, 0.757347,
		-0.980353, -0.196933, -0.011159,
		27.469776, 29.093458, 26.851912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980143, 29.186998, 27.560566>,  <28.156023, 29.231312, 26.859722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980143, 29.186998, 27.560566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.707432, 28.978680, 27.355061>,  <27.543806, 28.853687, 27.231758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.707432, 28.978680, 27.355061>,  <27.980143, 29.186998, 27.560566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707432, 28.978680, 27.355061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028077, -0.720392, 0.692999,
		-0.731022, 0.458045, 0.505768,
		-0.681776, -0.520798, -0.513762,
		27.502899, 28.822441, 27.200932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449430, 29.011368, 28.068739>,  <27.980143, 29.186998, 27.560566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449430, 29.011368, 28.068739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.411152, 28.748894, 27.769337>,  <27.388184, 28.591410, 27.589695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.411152, 28.748894, 27.769337>,  <27.449430, 29.011368, 28.068739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411152, 28.748894, 27.769337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078866, -0.754593, 0.651437,
		-0.992281, 0.003310, 0.123964,
		-0.095699, -0.656185, -0.748507,
		27.382442, 28.552038, 27.544785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870935, 28.529877, 28.240009>,  <27.449430, 29.011368, 28.068739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870935, 28.529877, 28.240009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.070259, 28.337502, 27.951458>,  <27.189854, 28.222076, 27.778328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.070259, 28.337502, 27.951458>,  <26.870935, 28.529877, 28.240009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070259, 28.337502, 27.951458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112463, -0.789154, 0.603811,
		-0.859676, -0.382011, -0.339153,
		0.498307, -0.480939, -0.721379,
		27.219751, 28.193220, 27.735044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520107, 27.907120, 28.125917>,  <26.870935, 28.529877, 28.240009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520107, 27.907120, 28.125917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.892729, 27.863068, 27.987309>,  <27.116302, 27.836637, 27.904142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.892729, 27.863068, 27.987309>,  <26.520107, 27.907120, 28.125917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892729, 27.863068, 27.987309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103196, -0.833760, 0.542396,
		-0.348651, -0.541031, -0.765328,
		0.931554, -0.110128, -0.346524,
		27.172195, 27.830029, 27.883352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644665, 27.221878, 27.859095>,  <26.520107, 27.907120, 28.125917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644665, 27.221878, 27.859095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.005821, 27.359707, 27.961903>,  <27.222515, 27.442404, 28.023588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.005821, 27.359707, 27.961903>,  <26.644665, 27.221878, 27.859095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.005821, 27.359707, 27.961903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168236, -0.833451, 0.526361,
		0.395585, -0.432006, -0.810484,
		0.902889, 0.344573, 0.257022,
		27.276688, 27.463079, 28.039009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008924, 26.621399, 27.830517>,  <26.644665, 27.221878, 27.859095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008924, 26.621399, 27.830517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.255713, 26.879185, 28.011189>,  <27.403786, 27.033857, 28.119591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.255713, 26.879185, 28.011189>,  <27.008924, 26.621399, 27.830517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255713, 26.879185, 28.011189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340193, -0.735940, 0.585372,
		0.709662, -0.207498, -0.673294,
		0.616968, 0.644466, 0.451680,
		27.440804, 27.072525, 28.146692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.640377, 26.259159, 27.798141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.695059, 26.531288, 28.086163>,  <27.727867, 26.694565, 28.258974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.695059, 26.531288, 28.086163>,  <27.640377, 26.259159, 27.798141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695059, 26.531288, 28.086163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243981, -0.727608, 0.641140,
		0.960096, 0.088032, -0.265453,
		0.136705, 0.680322, 0.720052,
		27.736071, 26.735384, 28.302177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213438, 26.100515, 28.209581>,  <27.640377, 26.259159, 27.798141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213438, 26.100515, 28.209581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.977051, 26.306313, 28.458115>,  <27.835218, 26.429790, 28.607235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.977051, 26.306313, 28.458115>,  <28.213438, 26.100515, 28.209581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977051, 26.306313, 28.458115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225392, -0.634236, 0.739556,
		0.774568, 0.577097, 0.258850,
		-0.590968, 0.514494, 0.621332,
		27.799761, 26.460661, 28.644514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676888, 26.244602, 28.809832>,  <28.213438, 26.100515, 28.209581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676888, 26.244602, 28.809832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.300674, 26.257919, 28.945057>,  <28.074945, 26.265909, 29.026192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.300674, 26.257919, 28.945057>,  <28.676888, 26.244602, 28.809832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300674, 26.257919, 28.945057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279689, -0.488919, 0.826276,
		0.192796, 0.871693, 0.450533,
		-0.940534, 0.033294, 0.338064,
		28.018515, 26.267908, 29.046476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712971, 26.417330, 29.562843>,  <28.676888, 26.244602, 28.809832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712971, 26.417330, 29.562843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.352102, 26.259789, 29.492455>,  <28.135582, 26.165264, 29.450220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.352102, 26.259789, 29.492455>,  <28.712971, 26.417330, 29.562843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352102, 26.259789, 29.492455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093259, -0.576358, 0.811858,
		-0.421176, 0.716024, 0.556704,
		-0.902171, -0.393853, -0.175973,
		28.081451, 26.141632, 29.439663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474360, 26.312511, 30.262714>,  <28.712971, 26.417330, 29.562843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474360, 26.312511, 30.262714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.256140, 26.071877, 30.029316>,  <28.125208, 25.927496, 29.889277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.256140, 26.071877, 30.029316>,  <28.474360, 26.312511, 30.262714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256140, 26.071877, 30.029316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036813, -0.678356, 0.733810,
		-0.837271, 0.421809, 0.347929,
		-0.545548, -0.601589, -0.583496,
		28.092476, 25.891399, 29.854267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019619, 25.979830, 30.722986>,  <28.474360, 26.312511, 30.262714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019619, 25.979830, 30.722986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.017378, 25.756512, 30.391136>,  <28.016033, 25.622520, 30.192026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.017378, 25.756512, 30.391136>,  <28.019619, 25.979830, 30.722986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017378, 25.756512, 30.391136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104327, -0.824782, 0.555743,
		-0.994527, 0.089665, -0.053625,
		-0.005602, -0.558296, -0.829623,
		28.015697, 25.589024, 30.142250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549995, 25.398211, 30.892761>,  <28.019619, 25.979830, 30.722986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549995, 25.398211, 30.892761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.752508, 25.288963, 30.565571>,  <27.874016, 25.223415, 30.369257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.752508, 25.288963, 30.565571>,  <27.549995, 25.398211, 30.892761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752508, 25.288963, 30.565571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162792, -0.901202, 0.401664,
		-0.846864, -0.336515, -0.411799,
		0.506280, -0.273117, -0.817978,
		27.904392, 25.207027, 30.320177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179499, 24.774130, 30.445927>,  <27.549995, 25.398211, 30.892761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179499, 24.774130, 30.445927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.576742, 24.784573, 30.400227>,  <27.815088, 24.790838, 30.372807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.576742, 24.784573, 30.400227>,  <27.179499, 24.774130, 30.445927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576742, 24.784573, 30.400227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074136, -0.894967, 0.439930,
		-0.090765, -0.445368, -0.890735,
		0.993109, 0.026106, -0.114249,
		27.874676, 24.792404, 30.365952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336096, 24.023911, 30.371990>,  <27.179499, 24.774130, 30.445927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336096, 24.023911, 30.371990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.674553, 24.221050, 30.453125>,  <27.877626, 24.339334, 30.501806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.674553, 24.221050, 30.453125>,  <27.336096, 24.023911, 30.371990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674553, 24.221050, 30.453125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359315, -0.808618, 0.465864,
		0.393618, -0.321306, -0.861294,
		0.846143, 0.492849, 0.202836,
		27.928396, 24.368904, 30.513975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901083, 23.564819, 30.173338>,  <27.336096, 24.023911, 30.371990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901083, 23.564819, 30.173338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.036470, 23.836700, 30.433628>,  <28.117702, 23.999828, 30.589802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.036470, 23.836700, 30.433628>,  <27.901083, 23.564819, 30.173338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036470, 23.836700, 30.433628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350571, -0.732843, 0.583131,
		0.873235, 0.030754, -0.486328,
		0.338468, 0.679703, 0.650725,
		28.138010, 24.040611, 30.628845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582916, 23.284557, 30.490379>,  <27.901083, 23.564819, 30.173338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582916, 23.284557, 30.490379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.452610, 23.546791, 30.762875>,  <28.374426, 23.704130, 30.926373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.452610, 23.546791, 30.762875>,  <28.582916, 23.284557, 30.490379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452610, 23.546791, 30.762875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054754, -0.706253, 0.705838,
		0.943863, 0.267240, 0.194179,
		-0.325768, 0.655583, 0.681239,
		28.354879, 23.743465, 30.967247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954473, 23.176197, 31.026819>,  <28.582916, 23.284557, 30.490379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954473, 23.176197, 31.026819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.631371, 23.359463, 31.175201>,  <28.437508, 23.469423, 31.264231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.631371, 23.359463, 31.175201>,  <28.954473, 23.176197, 31.026819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631371, 23.359463, 31.175201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025553, -0.601454, 0.798499,
		0.588958, 0.654474, 0.474123,
		-0.807760, 0.458167, 0.370955,
		28.389042, 23.496912, 31.286488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080187, 23.138109, 31.790098>,  <28.954473, 23.176197, 31.026819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080187, 23.138109, 31.790098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.703190, 23.271439, 31.780266>,  <28.476992, 23.351437, 31.774366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.703190, 23.271439, 31.780266>,  <29.080187, 23.138109, 31.790098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703190, 23.271439, 31.780266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129296, -0.295801, 0.946459,
		0.308207, 0.895208, 0.321888,
		-0.942492, 0.333324, -0.024579,
		28.420443, 23.371435, 31.772892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919254, 23.491179, 32.380806>,  <29.080187, 23.138109, 31.790098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919254, 23.491179, 32.380806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.559904, 23.374794, 32.249191>,  <28.344294, 23.304964, 32.170223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.559904, 23.374794, 32.249191>,  <28.919254, 23.491179, 32.380806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559904, 23.374794, 32.249191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244777, -0.290357, 0.925082,
		-0.364700, 0.911611, 0.189629,
		-0.898375, -0.290961, -0.329034,
		28.290392, 23.287506, 32.150482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526363, 23.612942, 32.927128>,  <28.919254, 23.491179, 32.380806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526363, 23.612942, 32.927128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.329275, 23.337688, 32.714073>,  <28.211021, 23.172537, 32.586239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.329275, 23.337688, 32.714073>,  <28.526363, 23.612942, 32.927128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329275, 23.337688, 32.714073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118655, -0.553246, 0.824524,
		-0.862060, 0.469459, 0.190945,
		-0.492720, -0.688133, -0.532635,
		28.181459, 23.131248, 32.554283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920294, 23.422716, 33.319530>,  <28.526363, 23.612942, 32.927128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920294, 23.422716, 33.319530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.012877, 23.115135, 33.081158>,  <28.068426, 22.930586, 32.938133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.012877, 23.115135, 33.081158>,  <27.920294, 23.422716, 33.319530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012877, 23.115135, 33.081158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155390, -0.633925, 0.757623,
		-0.960355, -0.082756, -0.266215,
		0.231459, -0.768954, -0.595933,
		28.082314, 22.884449, 32.902378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424227, 22.989944, 33.331413>,  <27.920294, 23.422716, 33.319530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424227, 22.989944, 33.331413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.724594, 22.748528, 33.224190>,  <27.904816, 22.603678, 33.159855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.724594, 22.748528, 33.224190>,  <27.424227, 22.989944, 33.331413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724594, 22.748528, 33.224190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155850, -0.556400, 0.816168,
		-0.641742, -0.571099, -0.511873,
		0.750918, -0.603544, -0.268060,
		27.949869, 22.567465, 33.143772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183214, 22.332354, 33.524807>,  <27.424227, 22.989944, 33.331413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183214, 22.332354, 33.524807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.576046, 22.275433, 33.475380>,  <27.811745, 22.241280, 33.445724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.576046, 22.275433, 33.475380>,  <27.183214, 22.332354, 33.524807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576046, 22.275433, 33.475380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050949, -0.430773, 0.901021,
		-0.181447, -0.891170, -0.415803,
		0.982080, -0.142303, -0.123567,
		27.870670, 22.232742, 33.438309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318533, 21.587784, 33.684669>,  <27.183214, 22.332354, 33.524807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318533, 21.587784, 33.684669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.671980, 21.770229, 33.726963>,  <27.884048, 21.879698, 33.752338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.671980, 21.770229, 33.726963>,  <27.318533, 21.587784, 33.684669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671980, 21.770229, 33.726963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097408, -0.399960, 0.911342,
		0.457966, -0.794978, -0.397841,
		0.883617, 0.456116, 0.105731,
		27.937065, 21.907064, 33.758682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744287, 21.067636, 33.930389>,  <27.318533, 21.587784, 33.684669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744287, 21.067636, 33.930389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.919552, 21.414749, 34.024174>,  <28.024710, 21.623016, 34.080444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.919552, 21.414749, 34.024174>,  <27.744287, 21.067636, 33.930389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919552, 21.414749, 34.024174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326274, -0.396580, 0.858062,
		0.837592, -0.299470, -0.456900,
		0.438161, 0.867780, 0.234463,
		28.051001, 21.675083, 34.094513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429874, 20.920080, 34.293900>,  <27.744287, 21.067636, 33.930389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429874, 20.920080, 34.293900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.340925, 21.291996, 34.411232>,  <28.287556, 21.515146, 34.481632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.340925, 21.291996, 34.411232>,  <28.429874, 20.920080, 34.293900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340925, 21.291996, 34.411232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474168, -0.159742, 0.865821,
		0.851888, 0.331623, -0.405354,
		-0.222375, 0.929789, 0.293328,
		28.274214, 21.570932, 34.499229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095829, 21.337225, 34.505413>,  <28.429874, 20.920080, 34.293900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095829, 21.337225, 34.505413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.783979, 21.512028, 34.684837>,  <28.596869, 21.616909, 34.792492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.783979, 21.512028, 34.684837>,  <29.095829, 21.337225, 34.505413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783979, 21.512028, 34.684837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457124, -0.092462, 0.884584,
		0.428044, 0.894693, -0.127681,
		-0.779625, 0.437007, 0.448563,
		28.550093, 21.643129, 34.819405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375803, 21.764977, 35.070343>,  <29.095829, 21.337225, 34.505413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375803, 21.764977, 35.070343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.985620, 21.710258, 35.139366>,  <28.751511, 21.677427, 35.180779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.985620, 21.710258, 35.139366>,  <29.375803, 21.764977, 35.070343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985620, 21.710258, 35.139366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184405, -0.079219, 0.979653,
		-0.120342, 0.987427, 0.102500,
		-0.975455, -0.136795, 0.172553,
		28.692984, 21.669220, 35.191132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235504, 22.186737, 35.584602>,  <29.375803, 21.764977, 35.070343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235504, 22.186737, 35.584602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.987768, 21.872688, 35.583580>,  <28.839127, 21.684259, 35.582966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.987768, 21.872688, 35.583580>,  <29.235504, 22.186737, 35.584602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987768, 21.872688, 35.583580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217921, -0.175037, 0.960142,
		-0.754275, 0.594094, 0.279501,
		-0.619338, -0.785121, -0.002560,
		28.801968, 21.637152, 35.582813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978300, 21.884371, 35.488125>,  <29.235504, 22.186737, 35.584602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978300, 21.884371, 35.488125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.323812, 21.719879, 35.371666>,  <30.531120, 21.621183, 35.301788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.323812, 21.719879, 35.371666>,  <29.978300, 21.884371, 35.488125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323812, 21.719879, 35.371666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208452, 0.817721, -0.536545,
		0.458723, 0.402767, 0.792055,
		0.863783, -0.411231, -0.291149,
		30.582947, 21.596510, 35.284321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472378, 22.281883, 35.597336>,  <29.978300, 21.884371, 35.488125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472378, 22.281883, 35.597336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.623690, 22.047558, 35.310638>,  <30.714478, 21.906961, 35.138618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.623690, 22.047558, 35.310638>,  <30.472378, 22.281883, 35.597336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623690, 22.047558, 35.310638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169201, 0.804994, -0.568643,
		0.910096, 0.093832, 0.403634,
		0.378280, -0.585815, -0.716746,
		30.737173, 21.871813, 35.095615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947756, 22.684389, 35.299641>,  <30.472378, 22.281883, 35.597336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947756, 22.684389, 35.299641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.920322, 22.379959, 35.041630>,  <30.903862, 22.197302, 34.886822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.920322, 22.379959, 35.041630>,  <30.947756, 22.684389, 35.299641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920322, 22.379959, 35.041630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223493, 0.618398, -0.753415,
		0.972290, -0.195831, 0.127683,
		-0.068583, -0.761074, -0.645029,
		30.899748, 22.151636, 34.848122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604877, 22.673979, 34.968983>,  <30.947756, 22.684389, 35.299641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604877, 22.673979, 34.968983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.338583, 22.491852, 34.732513>,  <31.178806, 22.382576, 34.590633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.338583, 22.491852, 34.732513>,  <31.604877, 22.673979, 34.968983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338583, 22.491852, 34.732513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169866, 0.678977, -0.714238,
		0.726595, -0.575913, -0.374677,
		-0.665736, -0.455317, -0.591170,
		31.138861, 22.355257, 34.555164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934875, 22.509716, 34.378300>,  <31.604877, 22.673979, 34.968983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934875, 22.509716, 34.378300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.546167, 22.544430, 34.290543>,  <31.312943, 22.565258, 34.237888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.546167, 22.544430, 34.290543>,  <31.934875, 22.509716, 34.378300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546167, 22.544430, 34.290543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229577, 0.562240, -0.794468,
		0.054404, -0.822407, -0.566292,
		-0.971769, 0.086785, -0.219394,
		31.254637, 22.570465, 34.224724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904757, 22.437008, 33.682915>,  <31.934875, 22.509716, 34.378300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904757, 22.437008, 33.682915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.548765, 22.600788, 33.763199>,  <31.335171, 22.699057, 33.811371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.548765, 22.600788, 33.763199>,  <31.904757, 22.437008, 33.682915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548765, 22.600788, 33.763199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113110, 0.624629, -0.772686,
		-0.441749, -0.664972, -0.602221,
		-0.889980, 0.409451, 0.200714,
		31.281771, 22.723623, 33.823414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521589, 22.405565, 33.052715>,  <31.904757, 22.437008, 33.682915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521589, 22.405565, 33.052715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.359062, 22.687469, 33.285343>,  <31.261547, 22.856613, 33.424919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.359062, 22.687469, 33.285343>,  <31.521589, 22.405565, 33.052715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359062, 22.687469, 33.285343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105368, 0.596087, -0.795976,
		-0.907637, -0.384695, -0.167940,
		-0.406315, 0.704762, 0.581565,
		31.237167, 22.898899, 33.459812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012224, 22.480846, 32.658916>,  <31.521589, 22.405565, 33.052715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012224, 22.480846, 32.658916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.057598, 22.791813, 32.906384>,  <31.084822, 22.978394, 33.054863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.057598, 22.791813, 32.906384>,  <31.012224, 22.480846, 32.658916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057598, 22.791813, 32.906384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309931, 0.619306, -0.721389,
		-0.943968, -0.109917, 0.311196,
		0.113433, 0.777417, 0.618672,
		31.091627, 23.025038, 33.091984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369812, 22.847475, 32.575752>,  <31.012224, 22.480846, 32.658916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369812, 22.847475, 32.575752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.621626, 23.110294, 32.741631>,  <30.772715, 23.267986, 32.841160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.621626, 23.110294, 32.741631>,  <30.369812, 22.847475, 32.575752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621626, 23.110294, 32.741631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198991, 0.652282, -0.731390,
		-0.751058, 0.377914, 0.541381,
		0.629535, 0.657046, 0.414700,
		30.810486, 23.307407, 32.866039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939955, 23.503124, 32.745186>,  <30.369812, 22.847475, 32.575752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939955, 23.503124, 32.745186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.322502, 23.617325, 32.720387>,  <30.552031, 23.685844, 32.705505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.322502, 23.617325, 32.720387>,  <29.939955, 23.503124, 32.745186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322502, 23.617325, 32.720387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241675, 0.653862, -0.716978,
		-0.164159, 0.700681, 0.694333,
		0.956371, 0.285502, -0.062000,
		30.609413, 23.702976, 32.701786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970240, 24.285446, 32.700241>,  <29.939955, 23.503124, 32.745186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970240, 24.285446, 32.700241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.332300, 24.200176, 32.553131>,  <30.549536, 24.149014, 32.464863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.332300, 24.200176, 32.553131>,  <29.970240, 24.285446, 32.700241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332300, 24.200176, 32.553131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174318, 0.602949, -0.778502,
		0.387709, 0.768771, 0.508599,
		0.905149, -0.213174, -0.367779,
		30.603846, 24.136225, 32.442799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265873, 24.914436, 32.449619>,  <29.970240, 24.285446, 32.700241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265873, 24.914436, 32.449619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.472467, 24.628704, 32.260738>,  <30.596424, 24.457264, 32.147411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.472467, 24.628704, 32.260738>,  <30.265873, 24.914436, 32.449619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472467, 24.628704, 32.260738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061292, 0.519192, -0.852457,
		0.854101, 0.469222, 0.224372,
		0.516484, -0.714332, -0.472202,
		30.627413, 24.414404, 32.119080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603210, 25.263186, 32.022209>,  <30.265873, 24.914436, 32.449619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603210, 25.263186, 32.022209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.638840, 24.904251, 31.849304>,  <30.660217, 24.688890, 31.745560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.638840, 24.904251, 31.849304>,  <30.603210, 25.263186, 32.022209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638840, 24.904251, 31.849304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180299, 0.412294, -0.893032,
		0.979570, 0.157483, -0.125064,
		0.089074, -0.897336, -0.432265,
		30.665562, 24.635050, 31.719625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000721, 25.334690, 31.446098>,  <30.603210, 25.263186, 32.022209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000721, 25.334690, 31.446098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804232, 24.999142, 31.352295>,  <30.686338, 24.797812, 31.296013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804232, 24.999142, 31.352295>,  <31.000721, 25.334690, 31.446098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804232, 24.999142, 31.352295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023682, 0.256271, -0.966315,
		0.870713, -0.480228, -0.106019,
		-0.491221, -0.838872, -0.234511,
		30.656866, 24.747480, 31.281942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380428, 25.012650, 30.941668>,  <31.000721, 25.334690, 31.446098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380428, 25.012650, 30.941668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010838, 24.863079, 30.909542>,  <30.789083, 24.773336, 30.890266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010838, 24.863079, 30.909542>,  <31.380428, 25.012650, 30.941668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010838, 24.863079, 30.909542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008474, 0.189926, -0.981762,
		0.382360, -0.907803, -0.172319,
		-0.923975, -0.373927, -0.080313,
		30.733644, 24.750902, 30.885448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508774, 24.805542, 30.287367>,  <31.380428, 25.012650, 30.941668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508774, 24.805542, 30.287367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.113937, 24.787346, 30.348785>,  <30.877035, 24.776428, 30.385637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.113937, 24.787346, 30.348785>,  <31.508774, 24.805542, 30.287367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113937, 24.787346, 30.348785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155932, 0.054537, -0.986261,
		0.036479, -0.997475, -0.060925,
		-0.987094, -0.045478, 0.153549,
		30.817810, 24.773699, 30.394850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284552, 24.477463, 29.797691>,  <31.508774, 24.805542, 30.287367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284552, 24.477463, 29.797691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.939257, 24.647598, 29.906437>,  <30.732080, 24.749680, 29.971685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.939257, 24.647598, 29.906437>,  <31.284552, 24.477463, 29.797691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939257, 24.647598, 29.906437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231126, 0.145772, -0.961941,
		-0.448781, -0.893218, -0.027529,
		-0.863236, 0.425339, 0.271866,
		30.680286, 24.775200, 29.987997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809706, 24.149439, 29.334015>,  <31.284552, 24.477463, 29.797691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809706, 24.149439, 29.334015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.637793, 24.478413, 29.483086>,  <30.534645, 24.675797, 29.572529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.637793, 24.478413, 29.483086>,  <30.809706, 24.149439, 29.334015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637793, 24.478413, 29.483086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395655, 0.199470, -0.896476,
		-0.811629, -0.532744, 0.239671,
		-0.429785, 0.822433, 0.372678,
		30.508858, 24.725142, 29.594889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122154, 24.098627, 28.958614>,  <30.809706, 24.149439, 29.334015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122154, 24.098627, 28.958614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.227682, 24.460033, 29.093708>,  <30.290998, 24.676876, 29.174765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.227682, 24.460033, 29.093708>,  <30.122154, 24.098627, 28.958614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227682, 24.460033, 29.093708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363859, 0.417488, -0.832652,
		-0.893312, 0.096782, 0.438893,
		0.263818, 0.903513, 0.337733,
		30.306828, 24.731087, 29.195028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503448, 24.558451, 28.844522>,  <30.122154, 24.098627, 28.958614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503448, 24.558451, 28.844522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.834358, 24.777767, 28.893494>,  <30.032904, 24.909357, 28.922876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.834358, 24.777767, 28.893494>,  <29.503448, 24.558451, 28.844522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834358, 24.777767, 28.893494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335454, 0.656914, -0.675229,
		-0.450649, 0.517531, 0.727377,
		0.827276, 0.548293, 0.122429,
		30.082541, 24.942255, 28.930222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.790878, 35.619247, 18.595324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.115088, 35.558514, 18.821598>,  <27.309612, 35.522076, 18.957363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.115088, 35.558514, 18.821598>,  <26.790878, 35.619247, 18.595324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115088, 35.558514, 18.821598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558644, -0.490585, 0.668762,
		0.175978, -0.858064, -0.482449,
		0.810524, -0.151830, 0.565685,
		27.358244, 35.512966, 18.991304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712059, 35.033669, 18.899395>,  <26.790878, 35.619247, 18.595324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712059, 35.033669, 18.899395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.006083, 35.137833, 19.149796>,  <27.182497, 35.200329, 19.300035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.006083, 35.137833, 19.149796>,  <26.712059, 35.033669, 18.899395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006083, 35.137833, 19.149796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461264, -0.484627, 0.743218,
		0.496917, -0.835060, -0.236112,
		0.735057, 0.260408, 0.626002,
		27.226601, 35.215954, 19.337597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992247, 34.399429, 19.173553>,  <26.712059, 35.033669, 18.899395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992247, 34.399429, 19.173553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.068481, 34.703011, 19.422604>,  <27.114222, 34.885159, 19.572033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.068481, 34.703011, 19.422604>,  <26.992247, 34.399429, 19.173553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068481, 34.703011, 19.422604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499472, -0.471047, 0.727078,
		0.845106, -0.449554, 0.289304,
		0.190585, 0.758958, 0.622624,
		27.125656, 34.930698, 19.609390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161522, 34.082981, 19.831390>,  <26.992247, 34.399429, 19.173553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161522, 34.082981, 19.831390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.052145, 34.460350, 19.906422>,  <26.986519, 34.686771, 19.951441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.052145, 34.460350, 19.906422>,  <27.161522, 34.082981, 19.831390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052145, 34.460350, 19.906422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471189, -0.301385, 0.828944,
		0.838577, 0.138283, 0.526940,
		-0.273440, 0.943422, 0.187577,
		26.970114, 34.743378, 19.962694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154909, 33.992390, 20.456909>,  <27.161522, 34.082981, 19.831390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154909, 33.992390, 20.456909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.929720, 34.317413, 20.396503>,  <26.794607, 34.512428, 20.360260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.929720, 34.317413, 20.396503>,  <27.154909, 33.992390, 20.456909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929720, 34.317413, 20.396503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546378, -0.228819, 0.805676,
		0.620107, 0.536084, 0.572785,
		-0.562973, 0.812562, -0.151012,
		26.760828, 34.561180, 20.351200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150908, 34.281437, 21.167812>,  <27.154909, 33.992390, 20.456909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150908, 34.281437, 21.167812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.858883, 34.453556, 20.955452>,  <26.683668, 34.556828, 20.828035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.858883, 34.453556, 20.955452>,  <27.150908, 34.281437, 21.167812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858883, 34.453556, 20.955452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571379, 0.041820, 0.819620,
		0.374887, 0.901716, 0.215334,
		-0.730059, 0.430302, -0.530899,
		26.639866, 34.582645, 20.796183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820002, 34.760475, 21.651617>,  <27.150908, 34.281437, 21.167812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820002, 34.760475, 21.651617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.558294, 34.685066, 21.358662>,  <26.401270, 34.639820, 21.182888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.558294, 34.685066, 21.358662>,  <26.820002, 34.760475, 21.651617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558294, 34.685066, 21.358662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747198, 0.011653, 0.664499,
		-0.116740, 0.982000, -0.148489,
		-0.654268, -0.188524, -0.732388,
		26.362013, 34.628510, 21.138945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361439, 35.225487, 21.699884>,  <26.820002, 34.760475, 21.651617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361439, 35.225487, 21.699884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.144199, 34.957638, 21.497242>,  <26.013857, 34.796928, 21.375656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.144199, 34.957638, 21.497242>,  <26.361439, 35.225487, 21.699884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144199, 34.957638, 21.497242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743198, 0.102562, 0.661164,
		-0.390771, 0.735586, -0.553363,
		-0.543097, -0.669622, -0.506608,
		25.981270, 34.756752, 21.345259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627125, 35.492424, 21.797924>,  <26.361439, 35.225487, 21.699884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627125, 35.492424, 21.797924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.583950, 35.126572, 21.642078>,  <25.558044, 34.907059, 21.548571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.583950, 35.126572, 21.642078>,  <25.627125, 35.492424, 21.797924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.583950, 35.126572, 21.642078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917206, -0.059567, 0.393934,
		-0.383513, 0.399877, -0.832476,
		-0.107937, -0.914631, -0.389614,
		25.551569, 34.852180, 21.525194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.103836, 35.515522, 21.309828>,  <25.627125, 35.492424, 21.797924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.103836, 35.515522, 21.309828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.130772, 35.130299, 21.414116>,  <25.146933, 34.899162, 21.476688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.130772, 35.130299, 21.414116>,  <25.103836, 35.515522, 21.309828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130772, 35.130299, 21.414116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996403, -0.051439, 0.067338,
		-0.051439, -0.264319, -0.963063,
		-0.067338, 0.963063, -0.260722,
		25.150972, 34.841381, 21.492332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.556839, 35.167160, 20.970318>,  <25.103836, 35.515522, 21.309828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.556839, 35.167160, 20.970318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.664095, 34.932789, 21.276203>,  <24.728449, 34.792164, 21.459734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.664095, 34.932789, 21.276203>,  <24.556839, 35.167160, 20.970318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664095, 34.932789, 21.276203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963020, -0.141348, 0.229375,
		-0.026308, -0.797938, -0.602165,
		0.268141, -0.585932, 0.764712,
		24.744537, 34.757008, 21.505617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.125702, 34.587711, 20.945721>,  <24.556839, 35.167160, 20.970318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.125702, 34.587711, 20.945721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.259714, 34.593731, 21.322556>,  <24.340122, 34.597343, 21.548656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.259714, 34.593731, 21.322556>,  <24.125702, 34.587711, 20.945721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259714, 34.593731, 21.322556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907051, -0.265429, 0.326811,
		0.254976, -0.964013, -0.075274,
		0.335029, 0.015052, 0.942087,
		24.360224, 34.598248, 21.605183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.721794, 34.141430, 21.264273>,  <24.125702, 34.587711, 20.945721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.721794, 34.141430, 21.264273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.872608, 34.336891, 21.578995>,  <23.963097, 34.454170, 21.767828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.872608, 34.336891, 21.578995>,  <23.721794, 34.141430, 21.264273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.872608, 34.336891, 21.578995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923970, 0.139530, 0.356106,
		0.064230, -0.861249, 0.504108,
		0.377034, 0.488654, 0.786806,
		23.985718, 34.483490, 21.815037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.376923, 33.893974, 21.800800>,  <23.721794, 34.141430, 21.264273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.376923, 33.893974, 21.800800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.529165, 34.226582, 21.962650>,  <23.620510, 34.426144, 22.059761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.529165, 34.226582, 21.962650>,  <23.376923, 33.893974, 21.800800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.529165, 34.226582, 21.962650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909871, 0.258590, 0.324448,
		0.165151, -0.491643, 0.854992,
		0.380605, 0.831516, 0.404625,
		23.643347, 34.476036, 22.084038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.156723, 33.835110, 22.416876>,  <23.376923, 33.893974, 21.800800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.156723, 33.835110, 22.416876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.222420, 34.225174, 22.357437>,  <23.261837, 34.459213, 22.321774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.222420, 34.225174, 22.357437>,  <23.156723, 33.835110, 22.416876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.222420, 34.225174, 22.357437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912051, 0.207509, 0.353700,
		0.375750, 0.077434, 0.923480,
		0.164242, 0.975164, -0.148595,
		23.271692, 34.517723, 22.312859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.074142, 34.069618, 23.096409>,  <23.156723, 33.835110, 22.416876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.074142, 34.069618, 23.096409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.016792, 34.345383, 22.812393>,  <22.982382, 34.510841, 22.641983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.016792, 34.345383, 22.812393>,  <23.074142, 34.069618, 23.096409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.016792, 34.345383, 22.812393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906674, 0.196098, 0.373481,
		0.396719, 0.697322, 0.596955,
		-0.143375, 0.689411, -0.710040,
		22.973780, 34.552204, 22.599380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.007235, 34.679550, 23.434969>,  <23.074142, 34.069618, 23.096409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.007235, 34.679550, 23.434969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.840939, 34.743473, 23.076836>,  <22.741161, 34.781826, 22.861956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.840939, 34.743473, 23.076836>,  <23.007235, 34.679550, 23.434969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.840939, 34.743473, 23.076836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864343, 0.236863, 0.443629,
		0.282968, 0.958309, 0.039659,
		-0.415740, 0.159812, -0.895333,
		22.716217, 34.791416, 22.808235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.636993, 35.201424, 23.581705>,  <23.007235, 34.679550, 23.434969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.636993, 35.201424, 23.581705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.481340, 35.066250, 23.238922>,  <22.387949, 34.985146, 23.033253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.481340, 35.066250, 23.238922>,  <22.636993, 35.201424, 23.581705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.481340, 35.066250, 23.238922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900099, 0.337376, 0.275682,
		0.195955, 0.878623, -0.435457,
		-0.389133, -0.337933, -0.856958,
		22.364601, 34.964870, 22.981834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.246309, 35.739090, 23.299419>,  <22.636993, 35.201424, 23.581705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.246309, 35.739090, 23.299419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.103834, 35.432682, 23.085377>,  <22.018349, 35.248837, 22.956951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.103834, 35.432682, 23.085377>,  <22.246309, 35.739090, 23.299419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.103834, 35.432682, 23.085377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930339, 0.344155, 0.126597,
		0.087183, 0.542923, -0.835244,
		-0.356186, -0.766023, -0.535107,
		21.996979, 35.202873, 22.924845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.790035, 36.079819, 22.842762>,  <22.246309, 35.739090, 23.299419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.790035, 36.079819, 22.842762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.657675, 35.702766, 22.860405>,  <21.578259, 35.476536, 22.870991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.657675, 35.702766, 22.860405>,  <21.790035, 36.079819, 22.842762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.657675, 35.702766, 22.860405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862749, 0.321131, 0.390563,
		-0.382322, 0.091185, -0.919519,
		-0.330899, -0.942635, 0.044106,
		21.558405, 35.419975, 22.873636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.107044, 36.110786, 22.591175>,  <21.790035, 36.079819, 22.842762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.107044, 36.110786, 22.591175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.140419, 35.777584, 22.809948>,  <21.160444, 35.577663, 22.941212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.140419, 35.777584, 22.809948>,  <21.107044, 36.110786, 22.591175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.140419, 35.777584, 22.809948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879196, 0.196829, 0.433904,
		-0.469098, -0.517062, -0.715957,
		0.083435, -0.833010, 0.546931,
		21.165449, 35.527679, 22.974028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.661634, 36.590534, 22.344246>,  <21.107044, 36.110786, 22.591175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.661634, 36.590534, 22.344246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.601933, 36.964703, 22.472443>,  <20.566111, 37.189201, 22.549360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.601933, 36.964703, 22.472443>,  <20.661634, 36.590534, 22.344246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.601933, 36.964703, 22.472443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860861, 0.282387, -0.423292,
		-0.486458, 0.212720, -0.847413,
		-0.149256, 0.935418, 0.320492,
		20.557156, 37.245327, 22.568590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.568472, 37.126488, 21.756710>,  <20.661634, 36.590534, 22.344246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.568472, 37.126488, 21.756710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.732895, 37.285500, 22.084858>,  <20.831549, 37.380905, 22.281746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.732895, 37.285500, 22.084858>,  <20.568472, 37.126488, 21.756710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.732895, 37.285500, 22.084858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817385, 0.237720, -0.524757,
		-0.403623, 0.886263, -0.227215,
		0.411059, 0.397527, 0.820368,
		20.856213, 37.404758, 22.330969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.732203, 37.785282, 21.507961>,  <20.568472, 37.126488, 21.756710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.732203, 37.785282, 21.507961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.966337, 37.741413, 21.829296>,  <21.106819, 37.715092, 22.022097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.966337, 37.741413, 21.829296>,  <20.732203, 37.785282, 21.507961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.966337, 37.741413, 21.829296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801414, 0.228499, -0.552742,
		-0.122939, 0.967347, 0.221645,
		0.585338, -0.109676, 0.803337,
		21.141939, 37.708511, 22.070297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.219345, 38.299274, 21.533703>,  <20.732203, 37.785282, 21.507961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.219345, 38.299274, 21.533703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.401001, 38.067425, 21.804344>,  <21.509995, 37.928314, 21.966728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.401001, 38.067425, 21.804344>,  <21.219345, 38.299274, 21.533703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.401001, 38.067425, 21.804344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871673, 0.132027, -0.471969,
		0.184235, 0.804117, 0.565202,
		0.454140, -0.579625, 0.676603,
		21.537243, 37.893536, 22.007324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.823084, 38.707703, 21.903919>,  <21.219345, 38.299274, 21.533703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.823084, 38.707703, 21.903919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.893236, 38.313904, 21.905266>,  <21.935328, 38.077625, 21.906073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.893236, 38.313904, 21.905266>,  <21.823084, 38.707703, 21.903919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.893236, 38.313904, 21.905266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851319, 0.149940, -0.502767,
		0.494467, 0.091041, 0.864415,
		0.175383, -0.984495, 0.003364,
		21.945850, 38.018555, 21.906275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.496382, 38.549080, 22.158707>,  <21.823084, 38.707703, 21.903919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.496382, 38.549080, 22.158707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.426039, 38.219212, 21.943676>,  <22.383833, 38.021290, 21.814657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.426039, 38.219212, 21.943676>,  <22.496382, 38.549080, 22.158707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.426039, 38.219212, 21.943676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859195, 0.137953, -0.492699,
		0.480476, -0.548530, 0.684294,
		-0.175860, -0.824672, -0.537578,
		22.373281, 37.971809, 21.782402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.099720, 38.360287, 21.988462>,  <22.496382, 38.549080, 22.158707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.099720, 38.360287, 21.988462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.931360, 38.102253, 21.733368>,  <22.830345, 37.947433, 21.580311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.931360, 38.102253, 21.733368>,  <23.099720, 38.360287, 21.988462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.931360, 38.102253, 21.733368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842943, -0.018434, -0.537688,
		0.335099, -0.763887, 0.551531,
		-0.420899, -0.645087, -0.637735,
		22.805090, 37.908726, 21.542048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.625376, 37.828304, 21.929224>,  <23.099720, 38.360287, 21.988462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.625376, 37.828304, 21.929224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.389080, 37.770729, 21.611656>,  <23.247303, 37.736183, 21.421116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.389080, 37.770729, 21.611656>,  <23.625376, 37.828304, 21.929224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.389080, 37.770729, 21.611656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792146, -0.290535, -0.536744,
		-0.153403, -0.945976, 0.285651,
		-0.590739, -0.143940, -0.793920,
		23.211859, 37.727547, 21.373480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.661306, 37.093792, 21.701077>,  <23.625376, 37.828304, 21.929224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.661306, 37.093792, 21.701077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.551956, 37.331558, 21.398571>,  <23.486345, 37.474216, 21.217068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.551956, 37.331558, 21.398571>,  <23.661306, 37.093792, 21.701077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.551956, 37.331558, 21.398571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799416, -0.296865, -0.522308,
		-0.534976, -0.747355, -0.394031,
		-0.273376, 0.594417, -0.756263,
		23.469944, 37.509884, 21.171692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.960787, 36.718193, 21.195158>,  <23.661306, 37.093792, 21.701077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.960787, 36.718193, 21.195158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.905828, 37.079132, 21.031750>,  <23.872854, 37.295696, 20.933704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.905828, 37.079132, 21.031750>,  <23.960787, 36.718193, 21.195158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.905828, 37.079132, 21.031750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872358, -0.085116, -0.481400,
		-0.469163, -0.422518, -0.775477,
		-0.137395, 0.902349, -0.408520,
		23.864611, 37.349838, 20.909193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.990141, 36.575680, 20.441570>,  <23.960787, 36.718193, 21.195158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.990141, 36.575680, 20.441570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.086977, 36.947956, 20.551270>,  <24.145079, 37.171322, 20.617088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.086977, 36.947956, 20.551270>,  <23.990141, 36.575680, 20.441570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.086977, 36.947956, 20.551270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838132, -0.058197, -0.542354,
		-0.488802, 0.361155, -0.794128,
		0.242090, 0.930688, 0.274249,
		24.159603, 37.227161, 20.633545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.168184, 36.824421, 19.739710>,  <23.990141, 36.575680, 20.441570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.168184, 36.824421, 19.739710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.310925, 37.061909, 20.028198>,  <24.396568, 37.204399, 20.201290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.310925, 37.061909, 20.028198>,  <24.168184, 36.824421, 19.739710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.310925, 37.061909, 20.028198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850598, 0.112659, -0.513606,
		-0.386189, 0.796748, -0.464813,
		0.356849, 0.593718, 0.721220,
		24.417980, 37.240025, 20.244564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.443119, 37.445824, 19.432877>,  <24.168184, 36.824421, 19.739710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.443119, 37.445824, 19.432877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.632843, 37.420334, 19.784096>,  <24.746677, 37.405041, 19.994827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.632843, 37.420334, 19.784096>,  <24.443119, 37.445824, 19.432877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.632843, 37.420334, 19.784096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872941, 0.163249, -0.459700,
		-0.114045, 0.984525, 0.133060,
		0.474308, -0.063727, 0.878050,
		24.775135, 37.401215, 20.047510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.001377, 37.870605, 19.264875>,  <24.443119, 37.445824, 19.432877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.001377, 37.870605, 19.264875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.085386, 37.693005, 19.613300>,  <25.135792, 37.586445, 19.822355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.085386, 37.693005, 19.613300>,  <25.001377, 37.870605, 19.264875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085386, 37.693005, 19.613300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977696, 0.096187, -0.186702,
		-0.000889, 0.890848, 0.454300,
		0.210021, -0.444002, 0.871064,
		25.148394, 37.559803, 19.874620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429058, 38.193043, 19.451635>,  <25.001377, 37.870605, 19.264875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429058, 38.193043, 19.451635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.508877, 37.864689, 19.665676>,  <25.556768, 37.667679, 19.794102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.508877, 37.864689, 19.665676>,  <25.429058, 38.193043, 19.451635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508877, 37.864689, 19.665676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941978, 0.010274, -0.335516,
		0.269921, 0.571007, 0.775302,
		0.199547, -0.820881, 0.535103,
		25.568741, 37.618423, 19.826206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988213, 38.374619, 19.982605>,  <25.429058, 38.193043, 19.451635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988213, 38.374619, 19.982605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.968370, 37.988335, 19.880669>,  <25.956465, 37.756565, 19.819508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.968370, 37.988335, 19.880669>,  <25.988213, 38.374619, 19.982605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968370, 37.988335, 19.880669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850390, 0.092979, -0.517873,
		0.523810, -0.242402, 0.816618,
		-0.049605, -0.965710, -0.254839,
		25.953489, 37.698620, 19.804216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589302, 38.081459, 20.177444>,  <25.988213, 38.374619, 19.982605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589302, 38.081459, 20.177444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.462328, 37.812302, 19.910175>,  <26.386145, 37.650806, 19.749813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.462328, 37.812302, 19.910175>,  <26.589302, 38.081459, 20.177444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462328, 37.812302, 19.910175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938886, -0.124076, -0.321090,
		0.133154, -0.729263, 0.671152,
		-0.317433, -0.672889, -0.668174,
		26.367098, 37.610435, 19.709723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092276, 37.546535, 20.189938>,  <26.589302, 38.081459, 20.177444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092276, 37.546535, 20.189938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.909117, 37.452488, 19.846996>,  <26.799221, 37.396061, 19.641232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.909117, 37.452488, 19.846996>,  <27.092276, 37.546535, 20.189938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909117, 37.452488, 19.846996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887333, -0.179985, -0.424553,
		-0.054491, -0.955158, 0.291040,
		-0.457898, -0.235115, -0.857351,
		26.771748, 37.381954, 19.589790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285275, 36.994801, 19.991068>,  <27.092276, 37.546535, 20.189938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285275, 36.994801, 19.991068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.155422, 37.117302, 19.633114>,  <27.077511, 37.190804, 19.418341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.155422, 37.117302, 19.633114>,  <27.285275, 36.994801, 19.991068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155422, 37.117302, 19.633114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865326, -0.285821, -0.411723,
		-0.381870, -0.908028, -0.172224,
		-0.324631, 0.306254, -0.894887,
		27.058033, 37.209179, 19.364647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482567, 36.495281, 19.571644>,  <27.285275, 36.994801, 19.991068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482567, 36.495281, 19.571644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.432863, 36.807583, 19.326698>,  <27.403042, 36.994965, 19.179731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.432863, 36.807583, 19.326698>,  <27.482567, 36.495281, 19.571644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432863, 36.807583, 19.326698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784917, -0.300198, -0.542021,
		-0.607013, -0.548004, -0.575522,
		-0.124259, 0.780751, -0.612362,
		27.395586, 37.041809, 19.142990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603258, 36.219326, 18.919399>,  <27.482567, 36.495281, 19.571644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603258, 36.219326, 18.919399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.648006, 36.616604, 18.932358>,  <27.674856, 36.854969, 18.940132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.648006, 36.616604, 18.932358>,  <27.603258, 36.219326, 18.919399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648006, 36.616604, 18.932358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850591, -0.078850, -0.519882,
		-0.513789, 0.085716, -0.853624,
		0.111870, 0.993194, 0.032397,
		27.681568, 36.914562, 18.942078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.202259, 28.895199, 26.755272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596836, 28.951149, 26.789608>,  <26.833582, 28.984718, 26.810209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596836, 28.951149, 26.789608>,  <26.202259, 28.895199, 26.755272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596836, 28.951149, 26.789608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083613, 0.878418, -0.470522,
		-0.141216, 0.456965, 0.878203,
		0.986442, 0.139874, 0.085839,
		26.892769, 28.993111, 26.815359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233238, 29.564701, 26.876446>,  <26.202259, 28.895199, 26.755272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233238, 29.564701, 26.876446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583685, 29.448109, 26.722843>,  <26.793953, 29.378153, 26.630682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583685, 29.448109, 26.722843>,  <26.233238, 29.564701, 26.876446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583685, 29.448109, 26.722843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070934, 0.709916, -0.700705,
		0.476853, 0.641139, 0.601293,
		0.876116, -0.291481, -0.384004,
		26.846519, 29.360664, 26.607641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476212, 30.133015, 26.943813>,  <26.233238, 29.564701, 26.876446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476212, 30.133015, 26.943813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690674, 29.916584, 26.684654>,  <26.819351, 29.786726, 26.529158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690674, 29.916584, 26.684654>,  <26.476212, 30.133015, 26.943813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690674, 29.916584, 26.684654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020688, 0.775738, -0.630716,
		0.843865, 0.324759, 0.427111,
		0.536157, -0.541076, -0.647899,
		26.851521, 29.754261, 26.490284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869259, 30.630005, 26.614676>,  <26.476212, 30.133015, 26.943813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869259, 30.630005, 26.614676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888090, 30.331200, 26.349419>,  <26.899389, 30.151917, 26.190264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888090, 30.331200, 26.349419>,  <26.869259, 30.630005, 26.614676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888090, 30.331200, 26.349419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206965, 0.642177, -0.738088,
		0.977215, 0.171993, -0.124374,
		0.047076, -0.747012, -0.663142,
		26.902212, 30.107096, 26.150476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162683, 30.919228, 26.058765>,  <26.869259, 30.630005, 26.614676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162683, 30.919228, 26.058765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019407, 30.570103, 25.926163>,  <26.933441, 30.360628, 25.846601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019407, 30.570103, 25.926163>,  <27.162683, 30.919228, 26.058765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019407, 30.570103, 25.926163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053146, 0.373551, -0.926086,
		0.932136, -0.314095, -0.180188,
		-0.358188, -0.872814, -0.331507,
		26.911951, 30.308258, 25.826710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696878, 30.699558, 25.437057>,  <27.162683, 30.919228, 26.058765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696878, 30.699558, 25.437057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335855, 30.529182, 25.411880>,  <27.119242, 30.426956, 25.396774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335855, 30.529182, 25.411880>,  <27.696878, 30.699558, 25.437057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335855, 30.529182, 25.411880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045202, 0.239111, -0.969940,
		0.428186, -0.872583, -0.235065,
		-0.902560, -0.425940, -0.062941,
		27.065088, 30.401400, 25.392998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644213, 30.266857, 24.822670>,  <27.696878, 30.699558, 25.437057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644213, 30.266857, 24.822670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269094, 30.368782, 24.917000>,  <27.044024, 30.429937, 24.973597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269094, 30.368782, 24.917000>,  <27.644213, 30.266857, 24.822670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269094, 30.368782, 24.917000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124260, 0.387905, -0.913285,
		-0.324193, -0.885777, -0.332112,
		-0.937794, 0.254813, 0.235823,
		26.987757, 30.445225, 24.987747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290058, 29.957905, 24.290497>,  <27.644213, 30.266857, 24.822670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290058, 29.957905, 24.290497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066217, 30.238384, 24.467209>,  <26.931913, 30.406672, 24.573236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066217, 30.238384, 24.467209>,  <27.290058, 29.957905, 24.290497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066217, 30.238384, 24.467209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231376, 0.379678, -0.895717,
		-0.795807, -0.603463, -0.050229,
		-0.559603, 0.701197, 0.441778,
		26.898336, 30.448744, 24.599743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803425, 30.133955, 23.768566>,  <27.290058, 29.957905, 24.290497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803425, 30.133955, 23.768566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785543, 30.439999, 24.025505>,  <26.774815, 30.623625, 24.179668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785543, 30.439999, 24.025505>,  <26.803425, 30.133955, 23.768566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785543, 30.439999, 24.025505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000460, 0.643007, -0.765860,
		-0.999000, -0.033940, -0.029096,
		-0.044702, 0.765108, 0.642349,
		26.772133, 30.669531, 24.218210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294256, 30.607477, 23.520847>,  <26.803425, 30.133955, 23.768566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294256, 30.607477, 23.520847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557159, 30.814461, 23.740028>,  <26.714901, 30.938650, 23.871536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557159, 30.814461, 23.740028>,  <26.294256, 30.607477, 23.520847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557159, 30.814461, 23.740028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102303, 0.659064, -0.745097,
		-0.746692, 0.545776, 0.380236,
		0.657256, 0.517458, 0.547952,
		26.754335, 30.969698, 23.904413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954420, 31.224943, 23.635197>,  <26.294256, 30.607477, 23.520847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954420, 31.224943, 23.635197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337732, 31.315491, 23.705006>,  <26.567719, 31.369820, 23.746891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337732, 31.315491, 23.705006>,  <25.954420, 31.224943, 23.635197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337732, 31.315491, 23.705006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059354, 0.754853, -0.653203,
		-0.279606, 0.615591, 0.736796,
		0.958279, 0.226371, 0.174523,
		26.625216, 31.383402, 23.757362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954353, 31.932961, 23.536299>,  <25.954420, 31.224943, 23.635197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954353, 31.932961, 23.536299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332256, 31.834248, 23.450012>,  <26.558998, 31.775019, 23.398241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332256, 31.834248, 23.450012>,  <25.954353, 31.932961, 23.536299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332256, 31.834248, 23.450012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187923, 0.947036, -0.260398,
		0.268551, 0.205475, 0.941095,
		0.944757, -0.246783, -0.215714,
		26.615683, 31.760212, 23.385298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497700, 32.344833, 23.049332>,  <25.954353, 31.932961, 23.536299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497700, 32.344833, 23.049332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434261, 32.666386, 22.820030>,  <25.396198, 32.859318, 22.682449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434261, 32.666386, 22.820030>,  <25.497700, 32.344833, 23.049332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434261, 32.666386, 22.820030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089607, -0.566489, -0.819183,
		-0.983269, -0.181289, 0.017811,
		-0.158598, 0.803881, -0.573256,
		25.386683, 32.907551, 22.648054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147326, 32.701630, 23.675632>,  <25.497700, 32.344833, 23.049332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147326, 32.701630, 23.675632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835245, 32.949974, 23.706146>,  <24.647997, 33.098980, 23.724455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835245, 32.949974, 23.706146>,  <25.147326, 32.701630, 23.675632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.835245, 32.949974, 23.706146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354693, 0.539543, -0.763601,
		-0.515248, -0.568704, -0.641167,
		-0.780199, 0.620862, 0.076283,
		24.601185, 33.136234, 23.729031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.950077, 32.977673, 24.333067>,  <25.147326, 32.701630, 23.675632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.950077, 32.977673, 24.333067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.843433, 33.318283, 24.513657>,  <24.779448, 33.522648, 24.622009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.843433, 33.318283, 24.513657>,  <24.950077, 32.977673, 24.333067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843433, 33.318283, 24.513657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348864, -0.351402, 0.868798,
		0.898450, 0.389133, -0.203378,
		-0.266610, 0.851523, 0.451472,
		24.763451, 33.573742, 24.649097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504412, 33.140598, 24.753498>,  <24.950077, 32.977673, 24.333067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504412, 33.140598, 24.753498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.209900, 33.345303, 24.930584>,  <25.033192, 33.468124, 25.036835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.209900, 33.345303, 24.930584>,  <25.504412, 33.140598, 24.753498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209900, 33.345303, 24.930584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380830, -0.227417, 0.896242,
		0.559338, 0.828485, -0.027450,
		-0.736281, 0.511756, 0.442714,
		24.989016, 33.498829, 25.063398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878901, 33.676945, 25.191734>,  <25.504412, 33.140598, 24.753498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878901, 33.676945, 25.191734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507290, 33.598114, 25.317001>,  <25.284325, 33.550816, 25.392160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507290, 33.598114, 25.317001>,  <25.878901, 33.676945, 25.191734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507290, 33.598114, 25.317001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339549, -0.117754, 0.933188,
		-0.147030, 0.973291, 0.176312,
		-0.929026, -0.197074, 0.313167,
		25.228582, 33.538994, 25.410952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830610, 33.960323, 25.873081>,  <25.878901, 33.676945, 25.191734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830610, 33.960323, 25.873081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.520164, 33.708130, 25.877823>,  <25.333897, 33.556812, 25.880667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.520164, 33.708130, 25.877823>,  <25.830610, 33.960323, 25.873081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520164, 33.708130, 25.877823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314420, -0.370616, 0.873947,
		-0.546616, 0.682008, 0.485876,
		-0.776113, -0.630483, 0.011852,
		25.287331, 33.518986, 25.881378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.466848, 33.961372, 26.568027>,  <25.830610, 33.960323, 25.873081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.466848, 33.961372, 26.568027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.360111, 33.613712, 26.401474>,  <25.296068, 33.405117, 26.301542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.360111, 33.613712, 26.401474>,  <25.466848, 33.961372, 26.568027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.360111, 33.613712, 26.401474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178118, -0.469082, 0.865006,
		-0.947137, 0.156655, 0.279983,
		-0.266843, -0.869150, -0.416382,
		25.280058, 33.352966, 26.276560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172298, 33.678978, 27.100695>,  <25.466848, 33.961372, 26.568027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172298, 33.678978, 27.100695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215206, 33.381207, 26.837082>,  <25.240950, 33.202545, 26.678913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215206, 33.381207, 26.837082>,  <25.172298, 33.678978, 27.100695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215206, 33.381207, 26.837082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151572, -0.642865, 0.750834,
		-0.982609, -0.180431, 0.043876,
		0.107267, -0.744426, -0.659033,
		25.247387, 33.157879, 26.639372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719379, 33.113853, 27.290421>,  <25.172298, 33.678978, 27.100695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719379, 33.113853, 27.290421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.022058, 32.958363, 27.080166>,  <25.203667, 32.865067, 26.954012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.022058, 32.958363, 27.080166>,  <24.719379, 33.113853, 27.290421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.022058, 32.958363, 27.080166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186140, -0.642634, 0.743218,
		-0.626693, -0.660240, -0.413930,
		0.756708, -0.388721, -0.525632,
		25.249067, 32.841743, 26.922474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.789961, 32.446995, 27.636318>,  <24.719379, 33.113853, 27.290421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.789961, 32.446995, 27.636318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107828, 32.466900, 27.394318>,  <25.298548, 32.478844, 27.249117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107828, 32.466900, 27.394318>,  <24.789961, 32.446995, 27.636318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107828, 32.466900, 27.394318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474553, -0.672428, 0.568015,
		-0.378555, -0.738488, -0.557971,
		0.794667, 0.049762, -0.605002,
		25.346228, 32.481827, 27.212816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.790834, 31.842638, 27.289675>,  <24.789961, 32.446995, 27.636318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.790834, 31.842638, 27.289675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154978, 32.008034, 27.296333>,  <25.373463, 32.107273, 27.300329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154978, 32.008034, 27.296333>,  <24.790834, 31.842638, 27.289675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.154978, 32.008034, 27.296333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349168, -0.789092, 0.505387,
		0.222109, -0.454269, -0.862732,
		0.910357, 0.413490, 0.016648,
		25.428085, 32.132080, 27.301327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292734, 31.243444, 27.029650>,  <24.790834, 31.842638, 27.289675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292734, 31.243444, 27.029650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494347, 31.515682, 27.242344>,  <25.615314, 31.679026, 27.369961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494347, 31.515682, 27.242344>,  <25.292734, 31.243444, 27.029650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494347, 31.515682, 27.242344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528691, -0.729964, 0.433172,
		0.682962, 0.062790, -0.727750,
		0.504033, 0.680595, 0.531735,
		25.645557, 31.719860, 27.401865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033333, 31.057449, 26.915033>,  <25.292734, 31.243444, 27.029650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033333, 31.057449, 26.915033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024769, 31.288975, 27.241104>,  <26.019630, 31.427891, 27.436747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024769, 31.288975, 27.241104>,  <26.033333, 31.057449, 26.915033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024769, 31.288975, 27.241104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572999, -0.661058, 0.484432,
		0.819276, 0.477467, -0.317508,
		-0.021409, 0.578816, 0.815177,
		26.018347, 31.462620, 27.485657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698093, 31.090599, 27.284479>,  <26.033333, 31.057449, 26.915033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698093, 31.090599, 27.284479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.443750, 31.199501, 27.573357>,  <26.291145, 31.264841, 27.746683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.443750, 31.199501, 27.573357>,  <26.698093, 31.090599, 27.284479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443750, 31.199501, 27.573357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461909, -0.615404, 0.638684,
		0.618326, 0.739700, 0.265552,
		-0.635857, 0.272254, 0.722194,
		26.252993, 31.281178, 27.790014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123697, 31.056273, 27.878006>,  <26.698093, 31.090599, 27.284479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123697, 31.056273, 27.878006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750233, 31.040337, 28.020378>,  <26.526154, 31.030775, 28.105803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750233, 31.040337, 28.020378>,  <27.123697, 31.056273, 27.878006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750233, 31.040337, 28.020378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294474, -0.651061, 0.699575,
		0.203862, 0.757980, 0.619603,
		-0.933662, -0.039841, 0.355932,
		26.470135, 31.028385, 28.127157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160563, 31.302704, 28.665731>,  <27.123697, 31.056273, 27.878006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160563, 31.302704, 28.665731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835039, 31.078735, 28.603500>,  <26.639725, 30.944355, 28.566162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835039, 31.078735, 28.603500>,  <27.160563, 31.302704, 28.665731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835039, 31.078735, 28.603500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228388, -0.554332, 0.800346,
		-0.534374, 0.615796, 0.579000,
		-0.813808, -0.559921, -0.155580,
		26.590897, 30.910759, 28.556826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350887, 31.982204, 28.889338>,  <27.160563, 31.302704, 28.665731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350887, 31.982204, 28.889338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711185, 32.089413, 29.026054>,  <27.927364, 32.153736, 29.108084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711185, 32.089413, 29.026054>,  <27.350887, 31.982204, 28.889338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711185, 32.089413, 29.026054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197104, 0.448993, -0.871525,
		-0.387047, 0.852391, 0.351602,
		0.900747, 0.268019, 0.341791,
		27.981409, 32.169819, 29.128592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413628, 32.582726, 28.663637>,  <27.350887, 31.982204, 28.889338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413628, 32.582726, 28.663637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793224, 32.506439, 28.764072>,  <28.020983, 32.460667, 28.824333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793224, 32.506439, 28.764072>,  <27.413628, 32.582726, 28.663637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793224, 32.506439, 28.764072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314548, 0.517393, -0.795841,
		0.021872, 0.834224, 0.550992,
		0.948990, -0.190720, 0.251087,
		28.077921, 32.449223, 28.839399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851954, 33.289379, 28.634949>,  <27.413628, 32.582726, 28.663637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851954, 33.289379, 28.634949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098106, 32.977848, 28.586403>,  <28.245798, 32.790928, 28.557276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098106, 32.977848, 28.586403>,  <27.851954, 33.289379, 28.634949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098106, 32.977848, 28.586403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394448, 0.437583, -0.808042,
		0.682433, 0.449383, 0.576489,
		0.615382, -0.778830, -0.121363,
		28.282721, 32.744198, 28.549994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516359, 33.558167, 28.588781>,  <27.851954, 33.289379, 28.634949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516359, 33.558167, 28.588781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561491, 33.195446, 28.426311>,  <28.588570, 32.977814, 28.328829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561491, 33.195446, 28.426311>,  <28.516359, 33.558167, 28.588781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561491, 33.195446, 28.426311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553587, 0.396831, -0.732166,
		0.825113, -0.142245, 0.546768,
		0.112828, -0.906803, -0.406175,
		28.595339, 32.923405, 28.304459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226938, 33.526295, 28.410858>,  <28.516359, 33.558167, 28.588781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226938, 33.526295, 28.410858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079210, 33.217464, 28.203976>,  <28.990574, 33.032166, 28.079845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079210, 33.217464, 28.203976>,  <29.226938, 33.526295, 28.410858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079210, 33.217464, 28.203976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489144, 0.311715, -0.814599,
		0.790153, -0.553836, 0.262533,
		-0.369319, -0.772074, -0.517208,
		28.968414, 32.985844, 28.048813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833870, 33.156445, 28.082367>,  <29.226938, 33.526295, 28.410858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833870, 33.156445, 28.082367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499592, 33.074703, 27.878464>,  <29.299025, 33.025658, 27.756123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499592, 33.074703, 27.878464>,  <29.833870, 33.156445, 28.082367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499592, 33.074703, 27.878464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475901, 0.193794, -0.857882,
		0.274106, -0.959521, -0.064697,
		-0.835694, -0.204362, -0.509757,
		29.248882, 33.013397, 27.725536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158157, 32.881660, 27.542217>,  <29.833870, 33.156445, 28.082367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158157, 32.881660, 27.542217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786619, 33.005775, 27.461258>,  <29.563696, 33.080246, 27.412683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786619, 33.005775, 27.461258>,  <30.158157, 32.881660, 27.542217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786619, 33.005775, 27.461258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292645, 0.279556, -0.914444,
		-0.227159, -0.908609, -0.350469,
		-0.928847, 0.310287, -0.202396,
		29.507965, 33.098862, 27.400539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953304, 32.560055, 26.879812>,  <30.158157, 32.881660, 27.542217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953304, 32.560055, 26.879812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702824, 32.871117, 26.902187>,  <29.552536, 33.057755, 26.915613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702824, 32.871117, 26.902187>,  <29.953304, 32.560055, 26.879812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702824, 32.871117, 26.902187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339538, 0.336589, -0.878306,
		-0.701845, -0.531003, -0.474815,
		-0.626200, 0.777653, 0.055938,
		29.514963, 33.104412, 26.918968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676964, 32.645592, 26.260044>,  <29.953304, 32.560055, 26.879812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676964, 32.645592, 26.260044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605625, 33.007378, 26.415035>,  <29.562822, 33.224449, 26.508030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605625, 33.007378, 26.415035>,  <29.676964, 32.645592, 26.260044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605625, 33.007378, 26.415035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169857, 0.416178, -0.893277,
		-0.969196, -0.093498, -0.227854,
		-0.178348, 0.904463, 0.387476,
		29.552120, 33.278717, 26.531279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227589, 32.950584, 25.797512>,  <29.676964, 32.645592, 26.260044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227589, 32.950584, 25.797512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416414, 33.246269, 25.989647>,  <29.529711, 33.423679, 26.104927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416414, 33.246269, 25.989647>,  <29.227589, 32.950584, 25.797512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416414, 33.246269, 25.989647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112678, 0.489806, -0.864519,
		-0.874333, 0.462232, 0.147928,
		0.472065, 0.739210, 0.480337,
		29.558033, 33.468033, 26.133747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999886, 33.599491, 25.551344>,  <29.227589, 32.950584, 25.797512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999886, 33.599491, 25.551344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346256, 33.719151, 25.711685>,  <29.554079, 33.790947, 25.807890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346256, 33.719151, 25.711685>,  <28.999886, 33.599491, 25.551344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346256, 33.719151, 25.711685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178502, 0.563830, -0.806370,
		-0.467235, 0.769810, 0.434837,
		0.865926, 0.299145, 0.400854,
		29.606033, 33.808895, 25.831942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009199, 34.380375, 25.486828>,  <28.999886, 33.599491, 25.551344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009199, 34.380375, 25.486828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393209, 34.281265, 25.538914>,  <29.623615, 34.221798, 25.570166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393209, 34.281265, 25.538914>,  <29.009199, 34.380375, 25.486828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393209, 34.281265, 25.538914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266104, 0.663634, -0.699127,
		0.086811, 0.705831, 0.703041,
		0.960027, -0.247774, 0.130213,
		29.681217, 34.206932, 25.577978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.300920, 31.475235, 33.109085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.544321, 31.260124, 32.875671>,  <27.690361, 31.131058, 32.735622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.544321, 31.260124, 32.875671>,  <27.300920, 31.475235, 33.109085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544321, 31.260124, 32.875671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233595, 0.581380, -0.779378,
		0.758391, 0.610566, 0.228149,
		0.608504, -0.537779, -0.583539,
		27.726871, 31.098791, 32.700611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640854, 31.943481, 32.644054>,  <27.300920, 31.475235, 33.109085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640854, 31.943481, 32.644054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.732718, 31.602821, 32.455608>,  <27.787836, 31.398424, 32.342541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.732718, 31.602821, 32.455608>,  <27.640854, 31.943481, 32.644054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732718, 31.602821, 32.455608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131164, 0.506716, -0.852077,
		0.964393, 0.133893, 0.228077,
		0.229657, -0.851652, -0.471111,
		27.801615, 31.347326, 32.314274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188416, 32.142315, 32.360607>,  <27.640854, 31.943481, 32.644054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188416, 32.142315, 32.360607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.033945, 31.829403, 32.165096>,  <27.941263, 31.641655, 32.047791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.033945, 31.829403, 32.165096>,  <28.188416, 32.142315, 32.360607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033945, 31.829403, 32.165096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121766, 0.482011, -0.867663,
		0.914354, -0.394585, -0.090885,
		-0.386174, -0.782284, -0.488775,
		27.918093, 31.594717, 32.018463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507103, 32.264309, 31.691151>,  <28.188416, 32.142315, 32.360607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507103, 32.264309, 31.691151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.218206, 31.996685, 31.621037>,  <28.044868, 31.836111, 31.578968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.218206, 31.996685, 31.621037>,  <28.507103, 32.264309, 31.691151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218206, 31.996685, 31.621037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061981, 0.189807, -0.979863,
		0.688860, -0.718561, -0.095617,
		-0.722240, -0.669061, -0.175288,
		28.001534, 31.795967, 31.568451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773710, 31.748091, 31.264093>,  <28.507103, 32.264309, 31.691151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773710, 31.748091, 31.264093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.376287, 31.768002, 31.223373>,  <28.137833, 31.779949, 31.198940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.376287, 31.768002, 31.223373>,  <28.773710, 31.748091, 31.264093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376287, 31.768002, 31.223373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105314, 0.073948, -0.991686,
		-0.041837, -0.996019, -0.078714,
		-0.993558, 0.049779, -0.101801,
		28.078220, 31.782934, 31.192833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724926, 31.327850, 30.767403>,  <28.773710, 31.748091, 31.264093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724926, 31.327850, 30.767403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.377008, 31.525135, 30.773087>,  <28.168259, 31.643507, 30.776497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.377008, 31.525135, 30.773087>,  <28.724926, 31.327850, 30.767403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377008, 31.525135, 30.773087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048258, 0.113696, -0.992343,
		-0.491053, -0.862446, -0.122693,
		-0.869792, 0.493214, 0.014211,
		28.116072, 31.673100, 30.777349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385050, 31.052574, 30.224003>,  <28.724926, 31.327850, 30.767403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385050, 31.052574, 30.224003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.226835, 31.408890, 30.313484>,  <28.131907, 31.622679, 30.367172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.226835, 31.408890, 30.313484>,  <28.385050, 31.052574, 30.224003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226835, 31.408890, 30.313484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003471, 0.245013, -0.969514,
		-0.918443, -0.382704, -0.100004,
		-0.395539, 0.890790, 0.223702,
		28.108173, 31.676126, 30.380594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968689, 31.135868, 29.685396>,  <28.385050, 31.052574, 30.224003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968689, 31.135868, 29.685396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.985796, 31.506512, 29.834831>,  <27.996059, 31.728897, 29.924492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.985796, 31.506512, 29.834831>,  <27.968689, 31.135868, 29.685396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985796, 31.506512, 29.834831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069924, 0.370235, -0.926303,
		-0.996635, 0.065739, -0.048958,
		0.042768, 0.926609, 0.373586,
		27.998627, 31.784494, 29.946907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489754, 31.430466, 29.301348>,  <27.968689, 31.135868, 29.685396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489754, 31.430466, 29.301348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.742062, 31.712643, 29.430641>,  <27.893446, 31.881948, 29.508217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.742062, 31.712643, 29.430641>,  <27.489754, 31.430466, 29.301348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742062, 31.712643, 29.430641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031902, 0.392627, -0.919144,
		-0.775315, 0.590079, 0.225152,
		0.630768, 0.705444, 0.323234,
		27.931292, 31.924276, 29.527611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772577, 31.288006, 29.427959>,  <27.489754, 31.430466, 29.301348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772577, 31.288006, 29.427959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.602369, 31.009251, 29.197037>,  <26.500244, 30.841997, 29.058483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.602369, 31.009251, 29.197037>,  <26.772577, 31.288006, 29.427959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602369, 31.009251, 29.197037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102929, -0.671075, 0.734210,
		-0.899078, 0.252997, 0.357284,
		-0.425518, -0.696887, -0.577308,
		26.474714, 30.800184, 29.023844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371984, 30.946419, 29.903379>,  <26.772577, 31.288006, 29.427959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371984, 30.946419, 29.903379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.411501, 30.698437, 29.592022>,  <26.435211, 30.549648, 29.405207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.411501, 30.698437, 29.592022>,  <26.371984, 30.946419, 29.903379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411501, 30.698437, 29.592022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073192, -0.775576, 0.626997,
		-0.992413, -0.118913, -0.031243,
		0.098790, -0.619953, -0.778395,
		26.441137, 30.512451, 29.358503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917345, 30.494091, 30.079098>,  <26.371984, 30.946419, 29.903379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917345, 30.494091, 30.079098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.198170, 30.334934, 29.842865>,  <26.366665, 30.239439, 29.701124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.198170, 30.334934, 29.842865>,  <25.917345, 30.494091, 30.079098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198170, 30.334934, 29.842865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256450, -0.632424, 0.730940,
		-0.664340, -0.664618, -0.341957,
		0.702058, -0.397898, -0.590586,
		26.408789, 30.215567, 29.665689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787600, 29.715950, 30.154495>,  <25.917345, 30.494091, 30.079098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787600, 29.715950, 30.154495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.143339, 29.720634, 29.971664>,  <26.356783, 29.723446, 29.861967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.143339, 29.720634, 29.971664>,  <25.787600, 29.715950, 30.154495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143339, 29.720634, 29.971664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278269, -0.807078, 0.520760,
		-0.362797, -0.590328, -0.721034,
		0.889351, 0.011711, -0.457076,
		26.410145, 29.724148, 29.834541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.980591, 28.973581, 29.865234>,  <25.787600, 29.715950, 30.154495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.980591, 28.973581, 29.865234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.321117, 29.176151, 29.920071>,  <26.525433, 29.297693, 29.952972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.321117, 29.176151, 29.920071>,  <25.980591, 28.973581, 29.865234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321117, 29.176151, 29.920071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438116, -0.829954, 0.345297,
		0.288646, -0.233896, -0.928427,
		0.851316, 0.506427, 0.137089,
		26.576511, 29.328079, 29.961197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470644, 28.544079, 29.573368>,  <25.980591, 28.973581, 29.865234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470644, 28.544079, 29.573368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.662758, 28.801559, 29.811687>,  <26.778027, 28.956047, 29.954679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.662758, 28.801559, 29.811687>,  <26.470644, 28.544079, 29.573368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662758, 28.801559, 29.811687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390515, -0.765164, 0.511880,
		0.785382, -0.013179, -0.618871,
		0.480284, 0.643700, 0.595800,
		26.806843, 28.994669, 29.990427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067492, 28.346237, 29.622576>,  <26.470644, 28.544079, 29.573368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067492, 28.346237, 29.622576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.021641, 28.571728, 29.949764>,  <26.994131, 28.707022, 30.146076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.021641, 28.571728, 29.949764>,  <27.067492, 28.346237, 29.622576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021641, 28.571728, 29.949764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257101, -0.778509, 0.572558,
		0.959563, 0.275930, -0.055697,
		-0.114625, 0.563725, 0.817970,
		26.987253, 28.740845, 30.195156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549341, 28.083208, 30.070614>,  <27.067492, 28.346237, 29.622576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549341, 28.083208, 30.070614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.318903, 28.284988, 30.327873>,  <27.180639, 28.406057, 30.482229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.318903, 28.284988, 30.327873>,  <27.549341, 28.083208, 30.070614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318903, 28.284988, 30.327873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315509, -0.588621, 0.744297,
		0.754033, 0.631708, 0.179945,
		-0.576098, 0.504450, 0.643149,
		27.146074, 28.436323, 30.520819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917870, 27.930767, 30.773397>,  <27.549341, 28.083208, 30.070614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917870, 27.930767, 30.773397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.546635, 28.048733, 30.864330>,  <27.323895, 28.119513, 30.918890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.546635, 28.048733, 30.864330>,  <27.917870, 27.930767, 30.773397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546635, 28.048733, 30.864330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018154, -0.573943, 0.818694,
		0.371921, 0.763947, 0.527315,
		-0.928087, 0.294917, 0.227330,
		27.268209, 28.137207, 30.932529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951881, 28.349810, 31.426828>,  <27.917870, 27.930767, 30.773397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951881, 28.349810, 31.426828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.590069, 28.188759, 31.370667>,  <27.372982, 28.092129, 31.336969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.590069, 28.188759, 31.370667>,  <27.951881, 28.349810, 31.426828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590069, 28.188759, 31.370667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114117, -0.545837, 0.830084,
		-0.410852, 0.734815, 0.539673,
		-0.904532, -0.402627, -0.140403,
		27.318708, 28.067970, 31.328547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869637, 28.188292, 32.027401>,  <27.951881, 28.349810, 31.426828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869637, 28.188292, 32.027401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.576632, 27.995693, 31.834908>,  <27.400829, 27.880135, 31.719412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.576632, 27.995693, 31.834908>,  <27.869637, 28.188292, 32.027401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576632, 27.995693, 31.834908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123440, -0.601249, 0.789470,
		-0.669468, 0.637700, 0.380987,
		-0.732513, -0.481495, -0.481234,
		27.356878, 27.851244, 31.690536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237997, 28.198477, 32.461624>,  <27.869637, 28.188292, 32.027401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237997, 28.198477, 32.461624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.191614, 27.883705, 32.219204>,  <27.163784, 27.694841, 32.073753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.191614, 27.883705, 32.219204>,  <27.237997, 28.198477, 32.461624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191614, 27.883705, 32.219204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000472, -0.610209, 0.792240,
		-0.993254, 0.091579, 0.071129,
		-0.115956, -0.786929, -0.606050,
		27.156828, 27.647627, 32.037388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793837, 27.871181, 32.826176>,  <27.237997, 28.198477, 32.461624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793837, 27.871181, 32.826176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.924517, 27.606140, 32.556591>,  <27.002924, 27.447115, 32.394840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.924517, 27.606140, 32.556591>,  <26.793837, 27.871181, 32.826176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924517, 27.606140, 32.556591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021792, -0.718181, 0.695516,
		-0.944877, -0.212539, -0.249069,
		0.326700, -0.662604, -0.673960,
		27.022528, 27.407358, 32.354404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325708, 27.336407, 32.732117>,  <26.793837, 27.871181, 32.826176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325708, 27.336407, 32.732117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.672613, 27.172810, 32.618568>,  <26.880756, 27.074652, 32.550442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.672613, 27.172810, 32.618568>,  <26.325708, 27.336407, 32.732117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672613, 27.172810, 32.618568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123398, -0.728986, 0.673314,
		-0.482316, -0.548912, -0.682691,
		0.867263, -0.408993, -0.283867,
		26.932793, 27.050112, 32.533409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.889759, 26.688702, 30.760637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.517189, 26.756775, 30.889317>,  <33.293648, 26.797619, 30.966524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.517189, 26.756775, 30.889317>,  <33.889759, 26.688702, 30.760637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517189, 26.756775, 30.889317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146950, 0.632808, -0.760237,
		-0.332954, -0.755375, -0.564402,
		-0.931422, 0.170184, 0.321698,
		33.237762, 26.807831, 30.985826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555431, 26.571688, 30.202311>,  <33.889759, 26.688702, 30.760637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555431, 26.571688, 30.202311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304493, 26.792751, 30.421768>,  <33.153931, 26.925390, 30.553442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304493, 26.792751, 30.421768>,  <33.555431, 26.571688, 30.202311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304493, 26.792751, 30.421768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321264, 0.458110, -0.828809,
		-0.709388, -0.696207, -0.109842,
		-0.627342, 0.552659, 0.548643,
		33.116291, 26.958549, 30.586361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836647, 26.518099, 29.841408>,  <33.555431, 26.571688, 30.202311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836647, 26.518099, 29.841408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.845425, 26.858242, 30.051704>,  <32.850693, 27.062328, 30.177883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.845425, 26.858242, 30.051704>,  <32.836647, 26.518099, 29.841408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845425, 26.858242, 30.051704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477248, 0.470997, -0.741887,
		-0.878495, -0.234627, 0.416170,
		0.021948, 0.850360, 0.525743,
		32.852009, 27.113350, 30.209427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391438, 26.897921, 29.466579>,  <32.836647, 26.518099, 29.841408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391438, 26.897921, 29.466579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.537769, 27.185543, 29.702927>,  <32.625568, 27.358116, 29.844734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.537769, 27.185543, 29.702927>,  <32.391438, 26.897921, 29.466579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537769, 27.185543, 29.702927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470575, 0.690653, -0.549142,
		-0.802950, -0.077157, 0.591031,
		0.365828, 0.719058, 0.590868,
		32.647518, 27.401260, 29.880188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826841, 27.413927, 29.626507>,  <32.391438, 26.897921, 29.466579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826841, 27.413927, 29.626507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.172596, 27.603043, 29.694988>,  <32.380047, 27.716513, 29.736076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.172596, 27.603043, 29.694988>,  <31.826841, 27.413927, 29.626507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172596, 27.603043, 29.694988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250136, 0.699661, -0.669258,
		-0.436201, 0.535672, 0.723038,
		0.864384, 0.472789, 0.171202,
		32.431911, 27.744879, 29.746349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706114, 28.172867, 29.821121>,  <31.826841, 27.413927, 29.626507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706114, 28.172867, 29.821121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.075409, 28.137981, 29.671440>,  <32.296986, 28.117050, 29.581631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.075409, 28.137981, 29.671440>,  <31.706114, 28.172867, 29.821121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075409, 28.137981, 29.671440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134519, 0.838902, -0.527398,
		0.359917, 0.537251, 0.762773,
		0.923236, -0.087212, -0.374205,
		32.352379, 28.111818, 29.559179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950642, 28.913671, 29.758751>,  <31.706114, 28.172867, 29.821121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950642, 28.913671, 29.758751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.194969, 28.700203, 29.524796>,  <32.341564, 28.572123, 29.384422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.194969, 28.700203, 29.524796>,  <31.950642, 28.913671, 29.758751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194969, 28.700203, 29.524796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046158, 0.713452, -0.699182,
		0.790424, 0.454071, 0.411157,
		0.610819, -0.533672, -0.584889,
		32.378216, 28.540102, 29.349329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295200, 29.387091, 29.320059>,  <31.950642, 28.913671, 29.758751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295200, 29.387091, 29.320059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.380745, 29.044628, 29.131905>,  <32.432072, 28.839151, 29.019012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.380745, 29.044628, 29.131905>,  <32.295200, 29.387091, 29.320059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380745, 29.044628, 29.131905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185897, 0.437056, -0.880014,
		0.959013, 0.275642, -0.065688,
		0.213859, -0.856156, -0.470384,
		32.444904, 28.787781, 28.990789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759338, 29.509054, 28.774254>,  <32.295200, 29.387091, 29.320059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759338, 29.509054, 28.774254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.592838, 29.164303, 28.658390>,  <32.492939, 28.957451, 28.588871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.592838, 29.164303, 28.658390>,  <32.759338, 29.509054, 28.774254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592838, 29.164303, 28.658390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194933, 0.395753, -0.897430,
		0.888111, -0.317086, -0.332739,
		-0.416245, -0.861879, -0.289661,
		32.467964, 28.905739, 28.571491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956482, 29.449612, 28.027018>,  <32.759338, 29.509054, 28.774254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956482, 29.449612, 28.027018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685997, 29.159508, 28.078762>,  <32.523705, 28.985445, 28.109810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685997, 29.159508, 28.078762>,  <32.956482, 29.449612, 28.027018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685997, 29.159508, 28.078762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235179, 0.046105, -0.970858,
		0.698159, -0.686931, -0.201742,
		-0.676214, -0.725258, 0.129363,
		32.483131, 28.941931, 28.117571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095398, 29.050848, 27.462101>,  <32.956482, 29.449612, 28.027018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095398, 29.050848, 27.462101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716557, 28.967628, 27.559845>,  <32.489250, 28.917698, 27.618492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716557, 28.967628, 27.559845>,  <33.095398, 29.050848, 27.462101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716557, 28.967628, 27.559845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293080, 0.250458, -0.922700,
		0.130763, -0.945509, -0.298184,
		-0.947103, -0.208047, 0.244360,
		32.432426, 28.905214, 27.633152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857483, 28.534662, 26.936863>,  <33.095398, 29.050848, 27.462101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857483, 28.534662, 26.936863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.546684, 28.715820, 27.111752>,  <32.360207, 28.824514, 27.216684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.546684, 28.715820, 27.111752>,  <32.857483, 28.534662, 26.936863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546684, 28.715820, 27.111752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244193, 0.423316, -0.872452,
		-0.580210, -0.784660, -0.218322,
		-0.776998, 0.452893, 0.437221,
		32.313583, 28.851688, 27.242918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240185, 28.342419, 26.557692>,  <32.857483, 28.534662, 26.936863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240185, 28.342419, 26.557692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.165470, 28.684963, 26.750256>,  <32.120640, 28.890490, 26.865793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.165470, 28.684963, 26.750256>,  <32.240185, 28.342419, 26.557692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165470, 28.684963, 26.750256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262794, 0.428620, -0.864421,
		-0.946599, -0.287974, 0.144986,
		-0.186787, 0.856362, 0.481409,
		32.109432, 28.941872, 26.894678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703728, 28.472042, 26.209707>,  <32.240185, 28.342419, 26.557692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703728, 28.472042, 26.209707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.849310, 28.801655, 26.383377>,  <31.936659, 28.999422, 26.487579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.849310, 28.801655, 26.383377>,  <31.703728, 28.472042, 26.209707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849310, 28.801655, 26.383377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097159, 0.497192, -0.862184,
		-0.926334, 0.271614, 0.261019,
		0.363957, 0.824031, 0.434176,
		31.958496, 29.048864, 26.513630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913643, 28.529718, 26.199419>,  <31.703728, 28.472042, 26.209707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913643, 28.529718, 26.199419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.719927, 28.229885, 26.018936>,  <30.603697, 28.049986, 25.910646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.719927, 28.229885, 26.018936>,  <30.913643, 28.529718, 26.199419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719927, 28.229885, 26.018936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028563, -0.501901, 0.864453,
		-0.874440, 0.431535, 0.221656,
		-0.484291, -0.749581, -0.451209,
		30.574640, 28.005011, 25.883574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460287, 28.319311, 26.723616>,  <30.913643, 28.529718, 26.199419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460287, 28.319311, 26.723616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.480778, 28.007103, 26.474403>,  <30.493073, 27.819778, 26.324877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.480778, 28.007103, 26.474403>,  <30.460287, 28.319311, 26.723616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480778, 28.007103, 26.474403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106882, -0.624551, 0.773636,
		-0.992951, 0.026959, -0.115418,
		0.051228, -0.780519, -0.623030,
		30.496145, 27.772947, 26.287495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820776, 27.949492, 26.787760>,  <30.460287, 28.319311, 26.723616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820776, 27.949492, 26.787760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.085920, 27.686108, 26.645184>,  <30.245007, 27.528078, 26.559639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.085920, 27.686108, 26.645184>,  <29.820776, 27.949492, 26.787760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085920, 27.686108, 26.645184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268557, -0.653457, 0.707722,
		-0.698924, -0.373396, -0.609984,
		0.662859, -0.658460, -0.356439,
		30.284779, 27.488569, 26.538252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501514, 27.344065, 26.973549>,  <29.820776, 27.949492, 26.787760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501514, 27.344065, 26.973549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870607, 27.221302, 26.880272>,  <30.092062, 27.147644, 26.824306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870607, 27.221302, 26.880272>,  <29.501514, 27.344065, 26.973549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870607, 27.221302, 26.880272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118955, -0.802201, 0.585084,
		-0.366632, -0.512136, -0.776723,
		0.922730, -0.306905, -0.233191,
		30.147427, 27.129230, 26.810314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426178, 26.698353, 26.807663>,  <29.501514, 27.344065, 26.973549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426178, 26.698353, 26.807663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.813416, 26.709957, 26.907223>,  <30.045759, 26.716921, 26.966959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.813416, 26.709957, 26.907223>,  <29.426178, 26.698353, 26.807663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813416, 26.709957, 26.907223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106527, -0.851400, 0.513585,
		0.226812, -0.523714, -0.821146,
		0.968095, 0.029013, 0.248897,
		30.103844, 26.718660, 26.981892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641741, 25.982283, 26.728876>,  <29.426178, 26.698353, 26.807663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641741, 25.982283, 26.728876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.927490, 26.152435, 26.951126>,  <30.098940, 26.254528, 27.084476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.927490, 26.152435, 26.951126>,  <29.641741, 25.982283, 26.728876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927490, 26.152435, 26.951126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062637, -0.829702, 0.554681,
		0.696957, -0.361446, -0.619361,
		0.714372, 0.425384, 0.555627,
		30.141802, 26.280050, 27.117815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129721, 25.423491, 26.974625>,  <29.641741, 25.982283, 26.728876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129721, 25.423491, 26.974625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.218145, 25.703232, 27.246517>,  <30.271200, 25.871077, 27.409653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.218145, 25.703232, 27.246517>,  <30.129721, 25.423491, 26.974625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218145, 25.703232, 27.246517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248694, -0.714357, 0.654099,
		0.943018, 0.024449, -0.331842,
		0.221062, 0.699354, 0.679732,
		30.284464, 25.913038, 27.450438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752443, 25.209171, 27.316681>,  <30.129721, 25.423491, 26.974625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752443, 25.209171, 27.316681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.579222, 25.474602, 27.560692>,  <30.475288, 25.633860, 27.707098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.579222, 25.474602, 27.560692>,  <30.752443, 25.209171, 27.316681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579222, 25.474602, 27.560692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147234, -0.615614, 0.774172,
		0.889261, 0.425076, 0.168894,
		-0.433055, 0.663574, 0.610027,
		30.449305, 25.673674, 27.743700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242798, 25.283602, 27.941536>,  <30.752443, 25.209171, 27.316681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242798, 25.283602, 27.941536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879309, 25.405041, 28.056114>,  <30.661215, 25.477903, 28.124861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879309, 25.405041, 28.056114>,  <31.242798, 25.283602, 27.941536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879309, 25.405041, 28.056114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154264, -0.393390, 0.906337,
		0.387846, 0.867798, 0.310649,
		-0.908723, 0.303597, 0.286445,
		30.606691, 25.496120, 28.142048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243343, 25.421293, 28.615776>,  <31.242798, 25.283602, 27.941536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243343, 25.421293, 28.615776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.845062, 25.388805, 28.597973>,  <30.606094, 25.369312, 28.587290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.845062, 25.388805, 28.597973>,  <31.243343, 25.421293, 28.615776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845062, 25.388805, 28.597973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015277, -0.329970, 0.943868,
		-0.091345, 0.940491, 0.327311,
		-0.995702, -0.081218, -0.044509,
		30.546352, 25.364441, 28.584620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041798, 25.677692, 29.308729>,  <31.243343, 25.421293, 28.615776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041798, 25.677692, 29.308729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.735847, 25.465660, 29.162315>,  <30.552279, 25.338440, 29.074467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.735847, 25.465660, 29.162315>,  <31.041798, 25.677692, 29.308729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735847, 25.465660, 29.162315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096376, -0.467659, 0.878639,
		-0.636929, 0.707326, 0.306613,
		-0.764874, -0.530081, -0.366035,
		30.506386, 25.306635, 29.052505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455532, 25.998407, 29.557043>,  <31.041798, 25.677692, 29.308729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455532, 25.998407, 29.557043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.415869, 25.611027, 29.465595>,  <30.392071, 25.378597, 29.410727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.415869, 25.611027, 29.465595>,  <30.455532, 25.998407, 29.557043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415869, 25.611027, 29.465595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204592, -0.204999, 0.957140,
		-0.973812, 0.141683, -0.177810,
		-0.099160, -0.968453, -0.228618,
		30.386122, 25.320492, 29.397011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840839, 25.800314, 29.875698>,  <30.455532, 25.998407, 29.557043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840839, 25.800314, 29.875698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.053522, 25.473309, 29.787189>,  <30.181131, 25.277105, 29.734085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.053522, 25.473309, 29.787189>,  <29.840839, 25.800314, 29.875698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053522, 25.473309, 29.787189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046272, -0.288915, 0.956236,
		-0.845664, -0.498198, -0.191445,
		0.531706, -0.817513, -0.221272,
		30.213034, 25.228054, 29.720808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488892, 25.240627, 30.288269>,  <29.840839, 25.800314, 29.875698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488892, 25.240627, 30.288269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.855064, 25.108822, 30.195831>,  <30.074768, 25.029737, 30.140368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.855064, 25.108822, 30.195831>,  <29.488892, 25.240627, 30.288269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855064, 25.108822, 30.195831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068244, -0.438789, 0.895995,
		-0.396644, -0.835994, -0.379194,
		0.915432, -0.329513, -0.231095,
		30.129694, 25.009968, 30.126503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052250, 24.837723, 29.920275>,  <29.488892, 25.240627, 30.288269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052250, 24.837723, 29.920275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.680222, 24.828033, 30.066910>,  <28.457005, 24.822220, 30.154890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.680222, 24.828033, 30.066910>,  <29.052250, 24.837723, 29.920275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680222, 24.828033, 30.066910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270431, 0.720542, -0.638503,
		-0.248675, -0.692988, -0.676704,
		-0.930069, -0.024222, 0.366586,
		28.401201, 24.820766, 30.176886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595276, 24.784494, 29.308559>,  <29.052250, 24.837723, 29.920275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595276, 24.784494, 29.308559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.376480, 24.907631, 29.619953>,  <28.245203, 24.981512, 29.806789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.376480, 24.907631, 29.619953>,  <28.595276, 24.784494, 29.308559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376480, 24.907631, 29.619953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482757, 0.643737, -0.593758,
		-0.683922, -0.700597, -0.203503,
		-0.546988, 0.307842, 0.778484,
		28.212383, 24.999983, 29.853498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926619, 24.838100, 29.020479>,  <28.595276, 24.784494, 29.308559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926619, 24.838100, 29.020479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.934607, 25.051537, 29.358681>,  <27.939400, 25.179600, 29.561602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.934607, 25.051537, 29.358681>,  <27.926619, 24.838100, 29.020479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934607, 25.051537, 29.358681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391518, 0.782310, -0.484463,
		-0.919954, -0.321356, 0.224534,
		0.019970, 0.533593, 0.845506,
		27.940598, 25.211615, 29.612333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344120, 25.195612, 29.041077>,  <27.926619, 24.838100, 29.020479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344120, 25.195612, 29.041077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.555347, 25.412498, 29.302502>,  <27.682085, 25.542629, 29.459356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.555347, 25.412498, 29.302502>,  <27.344120, 25.195612, 29.041077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555347, 25.412498, 29.302502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294872, 0.838812, -0.457651,
		-0.796362, 0.048955, 0.602836,
		0.528070, 0.542215, 0.653563,
		27.713768, 25.575163, 29.498571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856934, 25.728148, 29.443899>,  <27.344120, 25.195612, 29.041077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856934, 25.728148, 29.443899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.240124, 25.840828, 29.422249>,  <27.470037, 25.908436, 29.409258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.240124, 25.840828, 29.422249>,  <26.856934, 25.728148, 29.443899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240124, 25.840828, 29.422249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266027, 0.801870, -0.535008,
		-0.107311, 0.526923, 0.843111,
		0.957974, 0.281702, -0.054126,
		27.527515, 25.925339, 29.406012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842636, 26.479464, 29.522943>,  <26.856934, 25.728148, 29.443899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842636, 26.479464, 29.522943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.207817, 26.432259, 29.366692>,  <27.426926, 26.403936, 29.272940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.207817, 26.432259, 29.366692>,  <26.842636, 26.479464, 29.522943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207817, 26.432259, 29.366692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077017, 0.890234, -0.448946,
		0.400734, 0.439951, 0.803651,
		0.912952, -0.118013, -0.390631,
		27.481703, 26.396854, 29.249502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166758, 27.175301, 29.468178>,  <26.842636, 26.479464, 29.522943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166758, 27.175301, 29.468178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.328705, 26.929398, 29.197430>,  <27.425873, 26.781855, 29.034981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.328705, 26.929398, 29.197430>,  <27.166758, 27.175301, 29.468178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328705, 26.929398, 29.197430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119029, 0.769390, -0.627592,
		0.906595, 0.173524, 0.384675,
		0.404867, -0.614759, -0.676871,
		27.450165, 26.744970, 28.994368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781250, 27.571846, 29.263950>,  <27.166758, 27.175301, 29.468178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781250, 27.571846, 29.263950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.766655, 27.313477, 28.958939>,  <27.757898, 27.158455, 28.775930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.766655, 27.313477, 28.958939>,  <27.781250, 27.571846, 29.263950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766655, 27.313477, 28.958939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215933, 0.739917, -0.637100,
		0.975726, -0.187903, 0.112476,
		-0.036490, -0.645922, -0.762530,
		27.755709, 27.119699, 28.730179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172251, 27.881008, 28.785645>,  <27.781250, 27.571846, 29.263950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172251, 27.881008, 28.785645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.928638, 27.634003, 28.586544>,  <27.782471, 27.485800, 28.467083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.928638, 27.634003, 28.586544>,  <28.172251, 27.881008, 28.785645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928638, 27.634003, 28.586544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128283, 0.695997, -0.706492,
		0.782703, -0.366423, -0.503100,
		-0.609032, -0.617513, -0.497754,
		27.745930, 27.448750, 28.437218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467758, 27.958462, 28.011274>,  <28.172251, 27.881008, 28.785645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467758, 27.958462, 28.011274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.097027, 27.808430, 28.018215>,  <27.874588, 27.718410, 28.022379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.097027, 27.808430, 28.018215>,  <28.467758, 27.958462, 28.011274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097027, 27.808430, 28.018215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269394, 0.632071, -0.726577,
		0.261555, -0.678088, -0.686866,
		-0.926831, -0.375078, 0.017351,
		27.818977, 27.695906, 28.023420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303076, 27.728928, 27.251667>,  <28.467758, 27.958462, 28.011274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303076, 27.728928, 27.251667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.966454, 27.768024, 27.464169>,  <27.764481, 27.791483, 27.591669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.966454, 27.768024, 27.464169>,  <28.303076, 27.728928, 27.251667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966454, 27.768024, 27.464169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403922, 0.539136, -0.739039,
		-0.358656, -0.836528, -0.414231,
		-0.841554, 0.097743, 0.531256,
		27.713987, 27.797348, 27.623545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795675, 27.486868, 26.832144>,  <28.303076, 27.728928, 27.251667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795675, 27.486868, 26.832144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.607843, 27.715519, 27.101288>,  <27.495144, 27.852709, 27.262774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.607843, 27.715519, 27.101288>,  <27.795675, 27.486868, 26.832144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607843, 27.715519, 27.101288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397108, 0.543922, -0.739226,
		-0.788544, -0.614322, -0.028416,
		-0.469579, 0.571628, 0.672858,
		27.466970, 27.887007, 27.303144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136690, 27.717810, 26.608555>,  <27.795675, 27.486868, 26.832144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136690, 27.717810, 26.608555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.212492, 27.989326, 26.892338>,  <27.257973, 28.152237, 27.062607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.212492, 27.989326, 26.892338>,  <27.136690, 27.717810, 26.608555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212492, 27.989326, 26.892338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399504, 0.713340, -0.575797,
		-0.896930, -0.174313, 0.406363,
		0.189506, 0.678794, 0.709455,
		27.269344, 28.192965, 27.105175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554211, 28.257900, 26.571440>,  <27.136690, 27.717810, 26.608555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554211, 28.257900, 26.571440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.862967, 28.428127, 26.760365>,  <27.048220, 28.530264, 26.873720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.862967, 28.428127, 26.760365>,  <26.554211, 28.257900, 26.571440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862967, 28.428127, 26.760365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198880, 0.867261, -0.456405,
		-0.603849, 0.258361, 0.754066,
		0.771889, 0.425568, 0.472312,
		27.094534, 28.555798, 26.902058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.461590, 28.079720, 30.392488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.832378, 27.929710, 30.389000>,  <40.054852, 27.839705, 30.386906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.832378, 27.929710, 30.389000>,  <39.461590, 28.079720, 30.392488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832378, 27.929710, 30.389000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358558, 0.892637, -0.273195,
		0.110240, 0.250117, 0.961919,
		0.926976, -0.375021, -0.008723,
		40.110470, 27.817204, 30.386383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790199, 28.569616, 30.664574>,  <39.461590, 28.079720, 30.392488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790199, 28.569616, 30.664574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.102150, 28.370358, 30.512970>,  <40.289318, 28.250803, 30.422007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.102150, 28.370358, 30.512970>,  <39.790199, 28.569616, 30.664574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102150, 28.370358, 30.512970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358174, 0.851726, -0.382457,
		0.513333, 0.162516, 0.842661,
		0.779872, -0.498147, -0.379010,
		40.336113, 28.220913, 30.399267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489182, 28.961702, 30.750362>,  <39.790199, 28.569616, 30.664574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489182, 28.961702, 30.750362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.544029, 28.729355, 30.429417>,  <40.576939, 28.589947, 30.236849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.544029, 28.729355, 30.429417>,  <40.489182, 28.961702, 30.750362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544029, 28.729355, 30.429417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146589, 0.812995, -0.563516,
		0.979648, -0.040349, 0.196627,
		0.137119, -0.580871, -0.802364,
		40.585163, 28.555094, 30.188707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154755, 29.150152, 30.350895>,  <40.489182, 28.961702, 30.750362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154755, 29.150152, 30.350895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.897705, 28.974064, 30.100060>,  <40.743477, 28.868410, 29.949558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.897705, 28.974064, 30.100060>,  <41.154755, 29.150152, 30.350895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897705, 28.974064, 30.100060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205248, 0.689633, -0.694463,
		0.738179, -0.574987, -0.352820,
		-0.642624, -0.440222, -0.627088,
		40.704918, 28.841997, 29.911934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505913, 29.236628, 29.691278>,  <41.154755, 29.150152, 30.350895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505913, 29.236628, 29.691278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.131210, 29.129906, 29.600670>,  <40.906391, 29.065872, 29.546305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.131210, 29.129906, 29.600670>,  <41.505913, 29.236628, 29.691278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131210, 29.129906, 29.600670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051018, 0.536206, -0.842544,
		0.346256, -0.800811, -0.488680,
		-0.936752, -0.266805, -0.226520,
		40.850185, 29.049864, 29.532713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540939, 29.107185, 28.983700>,  <41.505913, 29.236628, 29.691278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540939, 29.107185, 28.983700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.142639, 29.131035, 29.011768>,  <40.903660, 29.145346, 29.028610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.142639, 29.131035, 29.011768>,  <41.540939, 29.107185, 28.983700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142639, 29.131035, 29.011768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009561, 0.690982, -0.722808,
		-0.091585, -0.720408, -0.687477,
		-0.995751, 0.059626, 0.070171,
		40.843914, 29.148922, 29.032820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272285, 28.871214, 28.300220>,  <41.540939, 29.107185, 28.983700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272285, 28.871214, 28.300220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.000755, 29.104984, 28.478050>,  <40.837837, 29.245247, 28.584749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.000755, 29.104984, 28.478050>,  <41.272285, 28.871214, 28.300220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000755, 29.104984, 28.478050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004358, 0.602223, -0.798316,
		-0.734290, -0.543852, -0.406256,
		-0.678822, 0.584425, 0.444576,
		40.797108, 29.280312, 28.611423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671478, 28.963551, 27.805370>,  <41.272285, 28.871214, 28.300220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671478, 28.963551, 27.805370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.654362, 29.272915, 28.058353>,  <40.644093, 29.458534, 28.210144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.654362, 29.272915, 28.058353>,  <40.671478, 28.963551, 27.805370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654362, 29.272915, 28.058353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053003, 0.633904, -0.771593,
		-0.997677, 0.000501, -0.068122,
		-0.042796, 0.773411, 0.632458,
		40.641521, 29.504938, 28.248091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187473, 29.320023, 27.571054>,  <40.671478, 28.963551, 27.805370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187473, 29.320023, 27.571054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.358818, 29.591888, 27.809235>,  <40.461624, 29.755009, 27.952143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.358818, 29.591888, 27.809235>,  <40.187473, 29.320023, 27.571054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358818, 29.591888, 27.809235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072360, 0.682656, -0.727149,
		-0.900707, 0.268393, 0.341602,
		0.428358, 0.679666, 0.595452,
		40.487324, 29.795788, 27.987869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776440, 29.865885, 27.587799>,  <40.187473, 29.320023, 27.571054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776440, 29.865885, 27.587799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.128075, 30.026112, 27.691139>,  <40.339058, 30.122248, 27.753143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.128075, 30.026112, 27.691139>,  <39.776440, 29.865885, 27.587799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128075, 30.026112, 27.691139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116922, 0.706664, -0.697822,
		-0.462091, 0.583242, 0.668057,
		0.879091, 0.400568, 0.258349,
		40.391804, 30.146282, 27.768644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643776, 30.582512, 27.850653>,  <39.776440, 29.865885, 27.587799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643776, 30.582512, 27.850653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.021862, 30.561695, 27.721745>,  <40.248714, 30.549206, 27.644400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.021862, 30.561695, 27.721745>,  <39.643776, 30.582512, 27.850653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021862, 30.561695, 27.721745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128689, 0.847865, -0.514357,
		0.300010, 0.527651, 0.794719,
		0.945216, -0.052041, -0.322271,
		40.305428, 30.546083, 27.625063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810539, 31.261009, 27.777338>,  <39.643776, 30.582512, 27.850653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810539, 31.261009, 27.777338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.120991, 31.090584, 27.591396>,  <40.307262, 30.988329, 27.479832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.120991, 31.090584, 27.591396>,  <39.810539, 31.261009, 27.777338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120991, 31.090584, 27.591396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022508, 0.755446, -0.654824,
		0.630168, 0.497768, 0.595916,
		0.776133, -0.426062, -0.464854,
		40.353832, 30.962765, 27.451941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432468, 31.784130, 27.787712>,  <39.810539, 31.261009, 27.777338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432468, 31.784130, 27.787712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.518406, 31.548309, 27.476257>,  <40.569969, 31.406816, 27.289385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.518406, 31.548309, 27.476257>,  <40.432468, 31.784130, 27.787712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518406, 31.548309, 27.476257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028900, 0.793065, -0.608451,
		0.976220, 0.153225, 0.153348,
		0.214845, -0.589550, -0.778635,
		40.582859, 31.371445, 27.242666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867367, 32.187653, 27.235643>,  <40.432468, 31.784130, 27.787712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867367, 32.187653, 27.235643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.725868, 31.887123, 27.012798>,  <40.640968, 31.706804, 26.879091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.725868, 31.887123, 27.012798>,  <40.867367, 32.187653, 27.235643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725868, 31.887123, 27.012798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026503, 0.603437, -0.796970,
		0.934967, -0.267158, -0.233374,
		-0.353743, -0.751325, -0.557114,
		40.619743, 31.661726, 26.845665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400574, 32.009071, 26.563507>,  <40.867367, 32.187653, 27.235643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400574, 32.009071, 26.563507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.028389, 31.889881, 26.478226>,  <40.805080, 31.818367, 26.427057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.028389, 31.889881, 26.478226>,  <41.400574, 32.009071, 26.563507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028389, 31.889881, 26.478226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046653, 0.480808, -0.875584,
		0.363413, -0.824642, -0.433471,
		-0.930459, -0.297976, -0.213204,
		40.749252, 31.800488, 26.414265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498425, 31.955313, 25.883190>,  <41.400574, 32.009071, 26.563507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498425, 31.955313, 25.883190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.106518, 31.952286, 25.963181>,  <40.871372, 31.950470, 26.011175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.106518, 31.952286, 25.963181>,  <41.498425, 31.955313, 25.883190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106518, 31.952286, 25.963181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182598, 0.442746, -0.877858,
		-0.081895, -0.896615, -0.435172,
		-0.979772, -0.007569, 0.199978,
		40.812588, 31.950014, 26.023174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172634, 31.761469, 25.244411>,  <41.498425, 31.955313, 25.883190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172634, 31.761469, 25.244411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.859684, 31.898376, 25.452545>,  <40.671913, 31.980520, 25.577425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.859684, 31.898376, 25.452545>,  <41.172634, 31.761469, 25.244411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859684, 31.898376, 25.452545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376560, 0.405503, -0.832929,
		-0.496081, -0.847597, -0.188370,
		-0.782372, 0.342268, 0.520333,
		40.624973, 32.001057, 25.608644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530548, 31.609926, 24.862692>,  <41.172634, 31.761469, 25.244411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530548, 31.609926, 24.862692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.447346, 31.906067, 25.118382>,  <40.397423, 32.083752, 25.271795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.447346, 31.906067, 25.118382>,  <40.530548, 31.609926, 24.862692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447346, 31.906067, 25.118382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463999, 0.500621, -0.730810,
		-0.861068, -0.448615, 0.239390,
		-0.208008, 0.740353, 0.639226,
		40.384945, 32.128174, 25.310150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876846, 31.826683, 24.684486>,  <40.530548, 31.609926, 24.862692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876846, 31.826683, 24.684486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.998440, 32.127979, 24.917801>,  <40.071396, 32.308758, 25.057789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.998440, 32.127979, 24.917801>,  <39.876846, 31.826683, 24.684486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998440, 32.127979, 24.917801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403512, 0.656429, -0.637401,
		-0.863001, -0.041602, 0.503487,
		0.303986, 0.753240, 0.583285,
		40.089634, 32.353951, 25.092787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336582, 32.352226, 24.705952>,  <39.876846, 31.826683, 24.684486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336582, 32.352226, 24.705952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.670673, 32.555244, 24.790607>,  <39.871128, 32.677055, 24.841402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.670673, 32.555244, 24.790607>,  <39.336582, 32.352226, 24.705952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670673, 32.555244, 24.790607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252936, 0.696321, -0.671684,
		-0.488280, 0.507478, 0.709964,
		0.835228, 0.507546, 0.211641,
		39.921242, 32.707508, 24.854099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160225, 33.039948, 24.889143>,  <39.336582, 32.352226, 24.705952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160225, 33.039948, 24.889143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.539585, 33.032764, 24.762520>,  <39.767200, 33.028454, 24.686546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.539585, 33.032764, 24.762520>,  <39.160225, 33.039948, 24.889143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539585, 33.032764, 24.762520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178692, 0.794468, -0.580421,
		0.261916, 0.607040, 0.750268,
		0.948404, -0.017954, -0.316557,
		39.824104, 33.027378, 24.667553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512718, 33.124264, 24.536407>,  <39.160225, 33.039948, 24.889143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512718, 33.124264, 24.536407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.225605, 33.224804, 24.276680>,  <38.053337, 33.285130, 24.120844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.225605, 33.224804, 24.276680>,  <38.512718, 33.124264, 24.536407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225605, 33.224804, 24.276680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655400, -0.558717, 0.508219,
		-0.235042, 0.790352, 0.565773,
		-0.717779, 0.251354, -0.649318,
		38.010273, 33.300209, 24.081884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076496, 33.392025, 24.959692>,  <38.512718, 33.124264, 24.536407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076496, 33.392025, 24.959692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.921265, 33.224831, 24.631134>,  <37.828125, 33.124516, 24.434000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.921265, 33.224831, 24.631134>,  <38.076496, 33.392025, 24.959692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921265, 33.224831, 24.631134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468650, -0.677915, 0.566391,
		-0.793576, 0.604749, 0.067195,
		-0.388077, -0.417983, -0.821393,
		37.804840, 33.099434, 24.384716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533596, 33.302116, 25.297115>,  <38.076496, 33.392025, 24.959692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533596, 33.302116, 25.297115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.541119, 33.070988, 24.970737>,  <37.545631, 32.932308, 24.774910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.541119, 33.070988, 24.970737>,  <37.533596, 33.302116, 25.297115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541119, 33.070988, 24.970737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476717, -0.722534, 0.500685,
		-0.878856, 0.379556, -0.289050,
		0.018810, -0.577825, -0.815944,
		37.546761, 32.897640, 24.725954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884178, 32.964931, 25.336832>,  <37.533596, 33.302116, 25.297115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884178, 32.964931, 25.336832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.108402, 32.748680, 25.085915>,  <37.242935, 32.618931, 24.935364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.108402, 32.748680, 25.085915>,  <36.884178, 32.964931, 25.336832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108402, 32.748680, 25.085915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408696, -0.839426, 0.358234,
		-0.720238, 0.055562, -0.691498,
		0.560557, -0.540626, -0.627295,
		37.276569, 32.586491, 24.897726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447250, 32.449055, 25.106356>,  <36.884178, 32.964931, 25.336832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447250, 32.449055, 25.106356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.819603, 32.317677, 25.042381>,  <37.043015, 32.238850, 25.003998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.819603, 32.317677, 25.042381>,  <36.447250, 32.449055, 25.106356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819603, 32.317677, 25.042381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243728, -0.884496, 0.397824,
		-0.272125, -0.331348, -0.903414,
		0.930884, -0.328445, -0.159934,
		37.098869, 32.219143, 24.994400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391617, 31.696089, 24.893698>,  <36.447250, 32.449055, 25.106356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391617, 31.696089, 24.893698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.760475, 31.758301, 25.035378>,  <36.981789, 31.795628, 25.120386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.760475, 31.758301, 25.035378>,  <36.391617, 31.696089, 24.893698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760475, 31.758301, 25.035378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046620, -0.864262, 0.500877,
		0.384024, -0.478394, -0.789725,
		0.922146, 0.155532, 0.354200,
		37.037117, 31.804960, 25.141638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655926, 31.082850, 24.823395>,  <36.391617, 31.696089, 24.893698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655926, 31.082850, 24.823395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.867039, 31.285339, 25.096210>,  <36.993706, 31.406834, 25.259901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.867039, 31.285339, 25.096210>,  <36.655926, 31.082850, 24.823395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867039, 31.285339, 25.096210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022211, -0.794487, 0.606874,
		0.849089, -0.335446, -0.408072,
		0.527782, 0.506227, 0.682041,
		37.025372, 31.437208, 25.300823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202763, 30.650881, 24.891068>,  <36.655926, 31.082850, 24.823395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202763, 30.650881, 24.891068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162430, 30.893253, 25.206707>,  <37.138229, 31.038677, 25.396091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162430, 30.893253, 25.206707>,  <37.202763, 30.650881, 24.891068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162430, 30.893253, 25.206707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312798, -0.733615, 0.603296,
		0.944452, 0.307661, -0.115562,
		-0.100832, 0.605932, 0.789100,
		37.132179, 31.075033, 25.443438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744110, 30.517664, 25.338791>,  <37.202763, 30.650881, 24.891068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744110, 30.517664, 25.338791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.533932, 30.717224, 25.614471>,  <37.407825, 30.836960, 25.779881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.533932, 30.717224, 25.614471>,  <37.744110, 30.517664, 25.338791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533932, 30.717224, 25.614471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157422, -0.739047, 0.655002,
		0.836135, 0.452666, 0.309793,
		-0.525449, 0.498902, 0.689202,
		37.376297, 30.866896, 25.821232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226227, 30.644178, 25.969173>,  <37.744110, 30.517664, 25.338791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226227, 30.644178, 25.969173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.857471, 30.681332, 26.119633>,  <37.636219, 30.703623, 26.209908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.857471, 30.681332, 26.119633>,  <38.226227, 30.644178, 25.969173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857471, 30.681332, 26.119633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296227, -0.456777, 0.838811,
		0.249726, 0.884719, 0.393585,
		-0.921893, 0.092883, 0.376147,
		37.580902, 30.709196, 26.232477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395760, 30.838449, 26.546564>,  <38.226227, 30.644178, 25.969173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395760, 30.838449, 26.546564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.017731, 30.723232, 26.608372>,  <37.790913, 30.654102, 26.645456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.017731, 30.723232, 26.608372>,  <38.395760, 30.838449, 26.546564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017731, 30.723232, 26.608372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276212, -0.450949, 0.848735,
		-0.174791, 0.844794, 0.505739,
		-0.945069, -0.288043, 0.154520,
		37.734211, 30.636820, 26.654728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270248, 31.020828, 27.291016>,  <38.395760, 30.838449, 26.546564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270248, 31.020828, 27.291016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.029259, 30.714588, 27.200787>,  <37.884666, 30.530846, 27.146648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.029259, 30.714588, 27.200787>,  <38.270248, 31.020828, 27.291016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029259, 30.714588, 27.200787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288556, -0.472444, 0.832786,
		-0.744150, 0.436643, 0.505554,
		-0.602476, -0.765598, -0.225573,
		37.848515, 30.484909, 27.133114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050426, 30.834375, 27.919458>,  <38.270248, 31.020828, 27.291016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050426, 30.834375, 27.919458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.937572, 30.526768, 27.690022>,  <37.869862, 30.342203, 27.552359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.937572, 30.526768, 27.690022>,  <38.050426, 30.834375, 27.919458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937572, 30.526768, 27.690022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055695, -0.610003, 0.790439,
		-0.957757, 0.191063, 0.214933,
		-0.282133, -0.769019, -0.573594,
		37.852932, 30.296062, 27.517942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586033, 30.506235, 28.274738>,  <38.050426, 30.834375, 27.919458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586033, 30.506235, 28.274738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.712425, 30.227139, 28.017582>,  <37.788261, 30.059681, 27.863287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.712425, 30.227139, 28.017582>,  <37.586033, 30.506235, 28.274738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712425, 30.227139, 28.017582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007040, -0.675866, 0.736991,
		-0.948740, -0.237400, -0.208649,
		0.315980, -0.697744, -0.642892,
		37.807220, 30.017815, 27.824715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125702, 29.962605, 28.371849>,  <37.586033, 30.506235, 28.274738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125702, 29.962605, 28.371849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.453514, 29.814964, 28.196514>,  <37.650200, 29.726381, 28.091314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.453514, 29.814964, 28.196514>,  <37.125702, 29.962605, 28.371849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453514, 29.814964, 28.196514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052540, -0.713312, 0.698874,
		-0.570625, -0.595777, -0.565187,
		0.819528, -0.369100, -0.438336,
		37.699371, 29.704235, 28.065014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956551, 29.222887, 28.390358>,  <37.125702, 29.962605, 28.371849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956551, 29.222887, 28.390358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.349995, 29.270214, 28.335926>,  <37.586060, 29.298611, 28.303267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.349995, 29.270214, 28.335926>,  <36.956551, 29.222887, 28.390358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349995, 29.270214, 28.335926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169376, -0.865143, 0.472059,
		-0.061877, -0.487369, -0.871001,
		0.983607, 0.118317, -0.136081,
		37.645077, 29.305710, 28.295101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209175, 28.563690, 28.193420>,  <36.956551, 29.222887, 28.390358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209175, 28.563690, 28.193420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.555130, 28.739475, 28.290447>,  <37.762703, 28.844946, 28.348663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.555130, 28.739475, 28.290447>,  <37.209175, 28.563690, 28.193420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555130, 28.739475, 28.290447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266664, -0.811665, 0.519701,
		0.425273, -0.384800, -0.819190,
		0.864889, 0.439463, 0.242567,
		37.814598, 28.871315, 28.363216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827206, 28.102472, 27.988207>,  <37.209175, 28.563690, 28.193420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827206, 28.102472, 27.988207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920532, 28.341930, 28.294720>,  <37.976528, 28.485605, 28.478628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920532, 28.341930, 28.294720>,  <37.827206, 28.102472, 27.988207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920532, 28.341930, 28.294720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215578, -0.800266, 0.559554,
		0.948203, 0.034640, -0.315770,
		0.233317, 0.598644, 0.766282,
		37.990528, 28.521524, 28.524605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495842, 27.839920, 28.254805>,  <37.827206, 28.102472, 27.988207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495842, 27.839920, 28.254805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341961, 28.044788, 28.561970>,  <38.249634, 28.167709, 28.746269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341961, 28.044788, 28.561970>,  <38.495842, 27.839920, 28.254805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341961, 28.044788, 28.561970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294753, -0.720215, 0.628022,
		0.874716, 0.467943, 0.126101,
		-0.384698, 0.512172, 0.767911,
		38.226551, 28.198441, 28.792343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005550, 27.819769, 28.771887>,  <38.495842, 27.839920, 28.254805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005550, 27.819769, 28.771887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.674095, 27.932858, 28.965145>,  <38.475224, 28.000710, 29.081100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.674095, 27.932858, 28.965145>,  <39.005550, 27.819769, 28.771887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674095, 27.932858, 28.965145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218717, -0.630967, 0.744341,
		0.515289, 0.722461, 0.461008,
		-0.828638, 0.282721, 0.483145,
		38.425503, 28.017673, 29.110088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236191, 27.966953, 29.490250>,  <39.005550, 27.819769, 28.771887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236191, 27.966953, 29.490250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.846294, 27.879078, 29.474197>,  <38.612354, 27.826353, 29.464567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.846294, 27.879078, 29.474197>,  <39.236191, 27.966953, 29.490250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846294, 27.879078, 29.474197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117685, -0.658020, 0.743747,
		-0.189798, 0.720241, 0.667255,
		-0.974745, -0.219687, -0.040129,
		38.553871, 27.813171, 29.462158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.301346, 26.517447, 32.531189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.680098, 26.616657, 32.613071>,  <26.907349, 26.676184, 32.662201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.680098, 26.616657, 32.613071>,  <26.301346, 26.517447, 32.531189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680098, 26.616657, 32.613071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008382, -0.617292, 0.786689,
		0.321486, -0.746614, -0.582421,
		0.946877, 0.248027, 0.204709,
		26.964161, 26.691065, 32.674484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651875, 25.815828, 32.688412>,  <26.301346, 26.517447, 32.531189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651875, 25.815828, 32.688412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.883322, 26.111828, 32.825584>,  <27.022190, 26.289427, 32.907890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.883322, 26.111828, 32.825584>,  <26.651875, 25.815828, 32.688412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883322, 26.111828, 32.825584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332629, -0.598019, 0.729199,
		0.744686, -0.307858, -0.592170,
		0.578619, 0.739998, 0.342934,
		27.056908, 26.333828, 32.928463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260183, 25.414841, 32.857700>,  <26.651875, 25.815828, 32.688412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260183, 25.414841, 32.857700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.260063, 25.769035, 33.043568>,  <27.259991, 25.981552, 33.155087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.260063, 25.769035, 33.043568>,  <27.260183, 25.414841, 32.857700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260063, 25.769035, 33.043568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231049, -0.452033, 0.861558,
		0.972942, 0.107621, -0.204454,
		-0.000302, 0.885485, 0.464668,
		27.259972, 26.034681, 33.182968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860266, 25.445692, 33.400139>,  <27.260183, 25.414841, 32.857700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860266, 25.445692, 33.400139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.625921, 25.750439, 33.510647>,  <27.485313, 25.933287, 33.576950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.625921, 25.750439, 33.510647>,  <27.860266, 25.445692, 33.400139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625921, 25.750439, 33.510647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062517, -0.297392, 0.952706,
		0.807995, 0.575427, 0.126602,
		-0.585863, 0.761868, 0.276265,
		27.450163, 25.978998, 33.593525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078979, 25.648823, 33.925365>,  <27.860266, 25.445692, 33.400139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078979, 25.648823, 33.925365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.721144, 25.823780, 33.962025>,  <27.506443, 25.928755, 33.984020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.721144, 25.823780, 33.962025>,  <28.078979, 25.648823, 33.925365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721144, 25.823780, 33.962025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005076, -0.215013, 0.976598,
		0.446862, 0.873188, 0.194569,
		-0.894589, 0.437392, 0.091649,
		27.452766, 25.954998, 33.989521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041012, 25.841959, 34.698490>,  <28.078979, 25.648823, 33.925365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041012, 25.841959, 34.698490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.665054, 25.848412, 34.562057>,  <27.439480, 25.852283, 34.480198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.665054, 25.848412, 34.562057>,  <28.041012, 25.841959, 34.698490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665054, 25.848412, 34.562057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308215, -0.470026, 0.827091,
		-0.146974, 0.882505, 0.446747,
		-0.939895, 0.016133, -0.341083,
		27.383085, 25.853252, 34.459732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621626, 26.095739, 35.268429>,  <28.041012, 25.841959, 34.698490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621626, 26.095739, 35.268429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.384171, 25.892410, 35.018883>,  <27.241697, 25.770412, 34.869156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.384171, 25.892410, 35.018883>,  <27.621626, 26.095739, 35.268429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384171, 25.892410, 35.018883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420516, -0.465031, 0.779046,
		-0.686121, 0.724815, 0.062302,
		-0.593637, -0.508321, -0.623864,
		27.206079, 25.739914, 34.831722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102648, 26.151140, 35.552532>,  <27.621626, 26.095739, 35.268429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102648, 26.151140, 35.552532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.020555, 25.830246, 35.328285>,  <26.971300, 25.637709, 35.193737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.020555, 25.830246, 35.328285>,  <27.102648, 26.151140, 35.552532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020555, 25.830246, 35.328285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400666, -0.453747, 0.795978,
		-0.892942, 0.387982, -0.228305,
		-0.205233, -0.802236, -0.560621,
		26.958986, 25.589575, 35.160099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401180, 25.842323, 35.691948>,  <27.102648, 26.151140, 35.552532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401180, 25.842323, 35.691948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.590807, 25.529202, 35.530712>,  <26.704582, 25.341330, 35.433971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.590807, 25.529202, 35.530712>,  <26.401180, 25.842323, 35.691948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590807, 25.529202, 35.530712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375969, -0.593937, 0.711256,
		-0.796184, -0.185632, -0.575875,
		0.474066, -0.782802, -0.403091,
		26.733027, 25.294361, 35.409786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932062, 25.253666, 35.771564>,  <26.401180, 25.842323, 35.691948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932062, 25.253666, 35.771564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.282459, 25.072639, 35.704845>,  <26.492697, 24.964024, 35.664814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.282459, 25.072639, 35.704845>,  <25.932062, 25.253666, 35.771564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282459, 25.072639, 35.704845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260897, -0.735463, 0.625321,
		-0.405676, -0.504258, -0.762333,
		0.875991, -0.452568, -0.166800,
		26.545256, 24.936869, 35.654804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759003, 24.531982, 35.721809>,  <25.932062, 25.253666, 35.771564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759003, 24.531982, 35.721809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.148674, 24.530628, 35.812111>,  <26.382477, 24.529816, 35.866291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.148674, 24.530628, 35.812111>,  <25.759003, 24.531982, 35.721809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148674, 24.530628, 35.812111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125985, -0.837896, 0.531092,
		0.187356, -0.545820, -0.816688,
		0.974180, -0.003387, 0.225749,
		26.440928, 24.529612, 35.879837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127144, 23.895819, 35.580822>,  <25.759003, 24.531982, 35.721809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127144, 23.895819, 35.580822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.289522, 24.081100, 35.895947>,  <26.386950, 24.192270, 36.085022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.289522, 24.081100, 35.895947>,  <26.127144, 23.895819, 35.580822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289522, 24.081100, 35.895947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257740, -0.769017, 0.584964,
		0.876799, -0.440515, -0.192793,
		0.405947, 0.463206, 0.787812,
		26.411306, 24.220062, 36.132290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585751, 23.363720, 35.659801>,  <26.127144, 23.895819, 35.580822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585751, 23.363720, 35.659801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.889761, 23.153030, 35.812077>,  <27.072168, 23.026617, 35.903442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.889761, 23.153030, 35.812077>,  <26.585751, 23.363720, 35.659801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889761, 23.153030, 35.812077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543088, -0.836486, -0.073113,
		0.356949, -0.151178, -0.921809,
		0.760027, -0.526721, 0.380686,
		27.117769, 22.995014, 35.926281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843166, 22.727068, 35.249550>,  <26.585751, 23.363720, 35.659801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843166, 22.727068, 35.249550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.847319, 22.690483, 35.647850>,  <26.849810, 22.668531, 35.886829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.847319, 22.690483, 35.647850>,  <26.843166, 22.727068, 35.249550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847319, 22.690483, 35.647850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466758, -0.881108, -0.076067,
		0.884324, -0.463987, -0.051840,
		0.010383, -0.091465, 0.995754,
		26.850433, 22.663044, 35.946575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524475, 22.310499, 35.248909>,  <26.843166, 22.727068, 35.249550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524475, 22.310499, 35.248909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.855797, 22.137150, 35.106865>,  <28.054590, 22.033140, 35.021637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.855797, 22.137150, 35.106865>,  <27.524475, 22.310499, 35.248909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855797, 22.137150, 35.106865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231306, 0.312779, -0.921231,
		0.510307, 0.845197, 0.158834,
		0.828302, -0.433371, -0.355112,
		28.104288, 22.007139, 35.000332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853651, 22.776556, 34.720230>,  <27.524475, 22.310499, 35.248909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853651, 22.776556, 34.720230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.036633, 22.428188, 34.648407>,  <28.146421, 22.219168, 34.605312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.036633, 22.428188, 34.648407>,  <27.853651, 22.776556, 34.720230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036633, 22.428188, 34.648407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052376, 0.175184, -0.983142,
		0.887690, 0.459145, 0.034523,
		0.457452, -0.870917, -0.179557,
		28.173868, 22.166914, 34.594540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548067, 22.798323, 34.400562>,  <27.853651, 22.776556, 34.720230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548067, 22.798323, 34.400562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.398924, 22.439774, 34.304649>,  <28.309439, 22.224644, 34.247101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.398924, 22.439774, 34.304649>,  <28.548067, 22.798323, 34.400562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398924, 22.439774, 34.304649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233423, 0.159498, -0.959205,
		0.898049, -0.413617, 0.149764,
		-0.372856, -0.896371, -0.239784,
		28.287067, 22.170862, 34.232716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079912, 22.585867, 33.911678>,  <28.548067, 22.798323, 34.400562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079912, 22.585867, 33.911678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.727018, 22.406277, 33.854992>,  <28.515282, 22.298523, 33.820980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.727018, 22.406277, 33.854992>,  <29.079912, 22.585867, 33.911678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727018, 22.406277, 33.854992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077722, 0.157992, -0.984377,
		0.464351, -0.879466, -0.104491,
		-0.882234, -0.448975, -0.141718,
		28.462349, 22.271584, 33.812477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164984, 22.143740, 33.332268>,  <29.079912, 22.585867, 33.911678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164984, 22.143740, 33.332268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.770105, 22.194008, 33.371567>,  <28.533178, 22.224169, 33.395145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.770105, 22.194008, 33.371567>,  <29.164984, 22.143740, 33.332268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770105, 22.194008, 33.371567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088050, 0.084294, -0.992543,
		-0.133016, -0.988484, -0.072149,
		-0.987195, 0.125671, 0.098248,
		28.473948, 22.231709, 33.401043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814489, 21.704432, 32.761890>,  <29.164984, 22.143740, 33.332268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814489, 21.704432, 32.761890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.569422, 21.997776, 32.879749>,  <28.422380, 22.173782, 32.950466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.569422, 21.997776, 32.879749>,  <28.814489, 21.704432, 32.761890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569422, 21.997776, 32.879749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095559, 0.301339, -0.948717,
		-0.784540, -0.609407, -0.114542,
		-0.612670, 0.733361, 0.294647,
		28.385620, 22.217785, 32.968143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376236, 21.899023, 32.090748>,  <28.814489, 21.704432, 32.761890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376236, 21.899023, 32.090748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.275297, 22.192692, 32.342880>,  <28.214735, 22.368893, 32.494160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.275297, 22.192692, 32.342880>,  <28.376236, 21.899023, 32.090748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275297, 22.192692, 32.342880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179609, 0.604551, -0.776054,
		-0.950822, -0.309046, -0.020692,
		-0.252346, 0.734172, 0.630327,
		28.199593, 22.412943, 32.531979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635750, 22.251654, 31.798304>,  <28.376236, 21.899023, 32.090748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635750, 22.251654, 31.798304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.827360, 22.509720, 32.036396>,  <27.942326, 22.664558, 32.179253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.827360, 22.509720, 32.036396>,  <27.635750, 22.251654, 31.798304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827360, 22.509720, 32.036396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158510, 0.730520, -0.664240,
		-0.863371, 0.223838, 0.452203,
		0.479026, 0.645164, 0.595229,
		27.971067, 22.703270, 32.214966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197556, 22.863575, 31.705181>,  <27.635750, 22.251654, 31.798304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197556, 22.863575, 31.705181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.542284, 23.007671, 31.848007>,  <27.749121, 23.094130, 31.933702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.542284, 23.007671, 31.848007>,  <27.197556, 22.863575, 31.705181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542284, 23.007671, 31.848007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001045, 0.705230, -0.708978,
		-0.507215, 0.610638, 0.608157,
		0.861819, 0.360239, 0.357065,
		27.800829, 23.115744, 31.955126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186708, 23.565710, 31.646694>,  <27.197556, 22.863575, 31.705181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186708, 23.565710, 31.646694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.579704, 23.515450, 31.701729>,  <27.815502, 23.485292, 31.734749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.579704, 23.515450, 31.701729>,  <27.186708, 23.565710, 31.646694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579704, 23.515450, 31.701729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180381, 0.826480, -0.533285,
		-0.046704, 0.548764, 0.834672,
		0.982487, -0.125652, 0.137587,
		27.874451, 23.477755, 31.743006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460299, 24.146666, 31.883118>,  <27.186708, 23.565710, 31.646694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460299, 24.146666, 31.883118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.753868, 23.958019, 31.687595>,  <27.930010, 23.844831, 31.570282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.753868, 23.958019, 31.687595>,  <27.460299, 24.146666, 31.883118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753868, 23.958019, 31.687595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156858, 0.817879, -0.553597,
		0.660869, 0.329626, 0.674239,
		0.733926, -0.471615, -0.488807,
		27.974047, 23.816534, 31.540953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087725, 24.664921, 31.847267>,  <27.460299, 24.146666, 31.883118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087725, 24.664921, 31.847267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.166283, 24.386257, 31.571270>,  <28.213417, 24.219059, 31.405672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.166283, 24.386257, 31.571270>,  <28.087725, 24.664921, 31.847267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166283, 24.386257, 31.571270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240969, 0.716410, -0.654744,
		0.950454, -0.037678, 0.308574,
		0.196396, -0.696661, -0.689994,
		28.225201, 24.177259, 31.364271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680590, 24.864252, 31.491886>,  <28.087725, 24.664921, 31.847267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680590, 24.864252, 31.491886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.473083, 24.624649, 31.247894>,  <28.348579, 24.480886, 31.101500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.473083, 24.624649, 31.247894>,  <28.680590, 24.864252, 31.491886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473083, 24.624649, 31.247894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184179, 0.618435, -0.763948,
		0.834843, -0.508653, -0.210497,
		-0.518763, -0.599007, -0.609980,
		28.317455, 24.444946, 31.064901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062637, 24.905308, 30.818901>,  <28.680590, 24.864252, 31.491886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062637, 24.905308, 30.818901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.696863, 24.759983, 30.747562>,  <28.477398, 24.672787, 30.704760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.696863, 24.759983, 30.747562>,  <29.062637, 24.905308, 30.818901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696863, 24.759983, 30.747562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073023, 0.581532, -0.810240,
		0.398085, -0.727890, -0.558305,
		-0.914437, -0.363313, -0.178346,
		28.422531, 24.650990, 30.694057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551170, 24.513405, 30.358860>,  <29.062637, 24.905308, 30.818901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551170, 24.513405, 30.358860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.929728, 24.637592, 30.394520>,  <30.156862, 24.712105, 30.415916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.929728, 24.637592, 30.394520>,  <29.551170, 24.513405, 30.358860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929728, 24.637592, 30.394520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086222, -0.508790, 0.856562,
		0.311296, -0.802958, -0.508285,
		0.946393, 0.310469, 0.089152,
		30.213646, 24.730734, 30.421265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546047, 24.210405, 30.938253>,  <29.551170, 24.513405, 30.358860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546047, 24.210405, 30.938253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.913591, 24.356773, 30.879200>,  <30.134119, 24.444593, 30.843767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.913591, 24.356773, 30.879200>,  <29.546047, 24.210405, 30.938253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913591, 24.356773, 30.879200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258834, -0.276560, 0.925483,
		0.297823, -0.888604, -0.348833,
		0.918861, 0.365920, -0.147635,
		30.189249, 24.466549, 30.834909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927837, 23.718018, 31.020967>,  <29.546047, 24.210405, 30.938253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927837, 23.718018, 31.020967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.167196, 24.028481, 31.100468>,  <30.310812, 24.214758, 31.148169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.167196, 24.028481, 31.100468>,  <29.927837, 23.718018, 31.020967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167196, 24.028481, 31.100468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267147, -0.427158, 0.863810,
		0.755351, -0.463805, -0.462958,
		0.598395, 0.776158, 0.198751,
		30.346714, 24.261328, 31.160093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521656, 23.417065, 31.272781>,  <29.927837, 23.718018, 31.020967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521656, 23.417065, 31.272781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577396, 23.792820, 31.398083>,  <30.610840, 24.018274, 31.473263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577396, 23.792820, 31.398083>,  <30.521656, 23.417065, 31.272781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577396, 23.792820, 31.398083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427614, -0.342410, 0.836601,
		0.893156, 0.017370, -0.449412,
		0.139352, 0.939390, 0.313253,
		30.619202, 24.074636, 31.492060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185356, 23.479588, 31.461678>,  <30.521656, 23.417065, 31.272781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185356, 23.479588, 31.461678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.006725, 23.768227, 31.673286>,  <30.899548, 23.941410, 31.800251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.006725, 23.768227, 31.673286>,  <31.185356, 23.479588, 31.461678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006725, 23.768227, 31.673286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463417, -0.319236, 0.826640,
		0.765385, 0.614316, -0.191838,
		-0.446577, 0.721599, 0.529022,
		30.872753, 23.984707, 31.831993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664421, 23.608793, 31.998245>,  <31.185356, 23.479588, 31.461678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664421, 23.608793, 31.998245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.348362, 23.801243, 32.150131>,  <31.158726, 23.916712, 32.241264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.348362, 23.801243, 32.150131>,  <31.664421, 23.608793, 31.998245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348362, 23.801243, 32.150131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187464, -0.400130, 0.897080,
		0.583542, 0.780010, 0.225970,
		-0.790149, 0.481123, 0.379717,
		31.111317, 23.945580, 32.264046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864132, 24.040564, 32.614601>,  <31.664421, 23.608793, 31.998245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864132, 24.040564, 32.614601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.485031, 23.915295, 32.638908>,  <31.257570, 23.840134, 32.653492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.485031, 23.915295, 32.638908>,  <31.864132, 24.040564, 32.614601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485031, 23.915295, 32.638908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171123, -0.338316, 0.925343,
		-0.269234, 0.887392, 0.374230,
		-0.947750, -0.313173, 0.060767,
		31.200706, 23.821342, 32.657139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953857, 24.811167, 32.856644>,  <31.864132, 24.040564, 32.614601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953857, 24.811167, 32.856644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196507, 25.050835, 33.065643>,  <32.342098, 25.194635, 33.191044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196507, 25.050835, 33.065643>,  <31.953857, 24.811167, 32.856644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196507, 25.050835, 33.065643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088935, 0.601966, -0.793554,
		-0.789998, 0.527858, 0.311880,
		0.606625, 0.599169, 0.522497,
		32.378494, 25.230585, 33.222393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727787, 25.459345, 32.793915>,  <31.953857, 24.811167, 32.856644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727787, 25.459345, 32.793915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115089, 25.512295, 32.878731>,  <32.347469, 25.544065, 32.929619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115089, 25.512295, 32.878731>,  <31.727787, 25.459345, 32.793915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115089, 25.512295, 32.878731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093269, 0.595677, -0.797791,
		-0.231914, 0.792241, 0.564421,
		0.968255, 0.132376, 0.212037,
		32.405567, 25.552008, 32.942341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862345, 26.078856, 32.650288>,  <31.727787, 25.459345, 32.793915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862345, 26.078856, 32.650288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.239277, 25.953056, 32.696079>,  <32.465435, 25.877577, 32.723557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.239277, 25.953056, 32.696079>,  <31.862345, 26.078856, 32.650288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239277, 25.953056, 32.696079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295652, 0.621904, -0.725139,
		0.156858, 0.717166, 0.679020,
		0.942330, -0.314497, 0.114481,
		32.521976, 25.858707, 32.730423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257111, 26.597065, 32.812740>,  <31.862345, 26.078856, 32.650288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257111, 26.597065, 32.812740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516289, 26.343243, 32.644215>,  <32.671795, 26.190948, 32.543098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516289, 26.343243, 32.644215>,  <32.257111, 26.597065, 32.812740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516289, 26.343243, 32.644215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123837, 0.633532, -0.763742,
		0.751551, 0.442691, 0.489077,
		0.647947, -0.634557, -0.421310,
		32.710674, 26.152876, 32.517822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785381, 26.969542, 32.561394>,  <32.257111, 26.597065, 32.812740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785381, 26.969542, 32.561394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829567, 26.635319, 32.346119>,  <32.856079, 26.434786, 32.216953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829567, 26.635319, 32.346119>,  <32.785381, 26.969542, 32.561394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829567, 26.635319, 32.346119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153085, 0.549342, -0.821455,
		0.982020, 0.008353, 0.188593,
		0.110464, -0.835556, -0.538186,
		32.862705, 26.384651, 32.184662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512573, 27.039936, 32.238892>,  <32.785381, 26.969542, 32.561394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512573, 27.039936, 32.238892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.280590, 26.790367, 32.029369>,  <33.141399, 26.640627, 31.903656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.280590, 26.790367, 32.029369>,  <33.512573, 27.039936, 32.238892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280590, 26.790367, 32.029369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171118, 0.535344, -0.827119,
		0.796475, -0.569324, -0.203711,
		-0.579954, -0.623920, -0.523810,
		33.106606, 26.603191, 31.872227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929256, 26.823586, 31.613049>,  <33.512573, 27.039936, 32.238892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929256, 26.823586, 31.613049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544125, 26.749683, 31.534233>,  <33.313046, 26.705341, 31.486944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544125, 26.749683, 31.534233>,  <33.929256, 26.823586, 31.613049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544125, 26.749683, 31.534233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081683, 0.496168, -0.864375,
		0.257462, -0.848341, -0.462634,
		-0.962830, -0.184754, -0.197040,
		33.255276, 26.694258, 31.475121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.293228, 26.796068, 37.775829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.168894, 26.460781, 37.596596>,  <28.094294, 26.259609, 37.489056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.168894, 26.460781, 37.596596>,  <28.293228, 26.796068, 37.775829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168894, 26.460781, 37.596596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110981, 0.436200, -0.892980,
		0.943962, -0.327297, -0.042560,
		-0.310834, -0.838216, -0.448080,
		28.075644, 26.209316, 37.462173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851030, 26.601717, 37.294182>,  <28.293228, 26.796068, 37.775829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851030, 26.601717, 37.294182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.500441, 26.452812, 37.172062>,  <28.290087, 26.363468, 37.098789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.500441, 26.452812, 37.172062>,  <28.851030, 26.601717, 37.294182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500441, 26.452812, 37.172062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044065, 0.569447, -0.820846,
		0.479424, -0.732906, -0.482703,
		-0.876477, -0.372263, -0.305302,
		28.237497, 26.341133, 37.080471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952747, 26.286648, 36.560684>,  <28.851030, 26.601717, 37.294182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952747, 26.286648, 36.560684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.575941, 26.403725, 36.626331>,  <28.349857, 26.473970, 36.665718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.575941, 26.403725, 36.626331>,  <28.952747, 26.286648, 36.560684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575941, 26.403725, 36.626331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083565, 0.678287, -0.730030,
		-0.324991, -0.673987, -0.663417,
		-0.942018, 0.292691, 0.164115,
		28.293335, 26.491531, 36.675568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703211, 26.392223, 35.891064>,  <28.952747, 26.286648, 36.560684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703211, 26.392223, 35.891064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.433599, 26.569603, 36.127384>,  <28.271833, 26.676031, 36.269176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.433599, 26.569603, 36.127384>,  <28.703211, 26.392223, 35.891064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433599, 26.569603, 36.127384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097056, 0.739679, -0.665925,
		-0.732304, -0.506191, -0.455524,
		-0.674026, 0.443448, 0.590799,
		28.231392, 26.702637, 36.304623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124460, 26.628939, 35.549477>,  <28.703211, 26.392223, 35.891064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124460, 26.628939, 35.549477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.031130, 26.855484, 35.865650>,  <27.975132, 26.991411, 36.055355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.031130, 26.855484, 35.865650>,  <28.124460, 26.628939, 35.549477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031130, 26.855484, 35.865650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102070, 0.794118, -0.599132,
		-0.967026, -0.220474, -0.127481,
		-0.233328, 0.566364, 0.790437,
		27.961132, 27.025393, 36.102779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485399, 27.064863, 35.371975>,  <28.124460, 26.628939, 35.549477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485399, 27.064863, 35.371975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.741697, 27.213051, 35.640957>,  <27.895477, 27.301964, 35.802345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.741697, 27.213051, 35.640957>,  <27.485399, 27.064863, 35.371975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741697, 27.213051, 35.640957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117946, 0.817978, -0.563028,
		-0.758638, 0.440072, 0.480422,
		0.640747, 0.370470, 0.672454,
		27.933922, 27.324192, 35.842693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207333, 27.729921, 35.458969>,  <27.485399, 27.064863, 35.371975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207333, 27.729921, 35.458969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.593750, 27.701908, 35.558453>,  <27.825600, 27.685101, 35.618145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.593750, 27.701908, 35.558453>,  <27.207333, 27.729921, 35.458969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593750, 27.701908, 35.558453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222014, 0.717401, -0.660337,
		-0.132180, 0.693131, 0.708589,
		0.966043, -0.070033, 0.248711,
		27.883562, 27.680899, 35.633064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485769, 28.399637, 35.573650>,  <27.207333, 27.729921, 35.458969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485769, 28.399637, 35.573650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.825615, 28.196716, 35.515965>,  <28.029522, 28.074963, 35.481354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.825615, 28.196716, 35.515965>,  <27.485769, 28.399637, 35.573650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825615, 28.196716, 35.515965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345501, 0.741964, -0.574559,
		0.398477, 0.438328, 0.805658,
		0.849615, -0.507304, -0.144213,
		28.080500, 28.044525, 35.472702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005287, 28.919556, 35.713493>,  <27.485769, 28.399637, 35.573650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005287, 28.919556, 35.713493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.178167, 28.641327, 35.483925>,  <28.281895, 28.474390, 35.346184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.178167, 28.641327, 35.483925>,  <28.005287, 28.919556, 35.713493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178167, 28.641327, 35.483925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393757, 0.718121, -0.573810,
		0.811271, 0.022013, 0.584256,
		0.432198, -0.695570, -0.573923,
		28.307827, 28.432655, 35.311749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584049, 29.217283, 35.615986>,  <28.005287, 28.919556, 35.713493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584049, 29.217283, 35.615986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.596071, 28.935410, 35.332432>,  <28.603285, 28.766285, 35.162300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.596071, 28.935410, 35.332432>,  <28.584049, 29.217283, 35.615986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596071, 28.935410, 35.332432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235228, 0.694271, -0.680187,
		0.971475, -0.146305, 0.186630,
		0.030057, -0.704686, -0.708882,
		28.605089, 28.724003, 35.119766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053484, 29.437061, 35.164295>,  <28.584049, 29.217283, 35.615986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053484, 29.437061, 35.164295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.835520, 29.205986, 34.921200>,  <28.704741, 29.067341, 34.775341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.835520, 29.205986, 34.921200>,  <29.053484, 29.437061, 35.164295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835520, 29.205986, 34.921200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085451, 0.682764, -0.725625,
		0.834128, -0.447333, -0.322682,
		-0.544912, -0.577690, -0.607738,
		28.672047, 29.032679, 34.738880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387011, 29.539595, 34.620060>,  <29.053484, 29.437061, 35.164295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387011, 29.539595, 34.620060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.020988, 29.410095, 34.523842>,  <28.801374, 29.332396, 34.466110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.020988, 29.410095, 34.523842>,  <29.387011, 29.539595, 34.620060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020988, 29.410095, 34.523842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008678, 0.612063, -0.790762,
		0.403236, -0.721503, -0.562880,
		-0.915055, -0.323748, -0.240544,
		28.746471, 29.312971, 34.451679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907787, 29.161848, 34.283100>,  <29.387011, 29.539595, 34.620060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907787, 29.161848, 34.283100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.278954, 29.299511, 34.340412>,  <30.501654, 29.382109, 34.374798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.278954, 29.299511, 34.340412>,  <29.907787, 29.161848, 34.283100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278954, 29.299511, 34.340412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180225, -0.750586, 0.635720,
		0.326333, -0.564071, -0.758505,
		0.927915, 0.344159, 0.143281,
		30.557327, 29.402758, 34.383396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261831, 28.569960, 34.311451>,  <29.907787, 29.161848, 34.283100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261831, 28.569960, 34.311451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.513489, 28.843269, 34.459675>,  <30.664484, 29.007256, 34.548607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.513489, 28.843269, 34.459675>,  <30.261831, 28.569960, 34.311451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513489, 28.843269, 34.459675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349972, -0.674684, 0.649862,
		0.694044, -0.279172, -0.663601,
		0.629145, 0.683274, 0.370558,
		30.702232, 29.048252, 34.570843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903893, 28.227001, 34.361473>,  <30.261831, 28.569960, 34.311451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903893, 28.227001, 34.361473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.930262, 28.541195, 34.607616>,  <30.946083, 28.729712, 34.755302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.930262, 28.541195, 34.607616>,  <30.903893, 28.227001, 34.361473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930262, 28.541195, 34.607616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392368, -0.587430, 0.707795,
		0.917443, 0.194789, -0.346923,
		0.065922, 0.785483, 0.615363,
		30.950039, 28.776840, 34.792225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546196, 28.172712, 34.693592>,  <30.903893, 28.227001, 34.361473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546196, 28.172712, 34.693592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.354433, 28.427284, 34.935295>,  <31.239376, 28.580027, 35.080318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.354433, 28.427284, 34.935295>,  <31.546196, 28.172712, 34.693592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354433, 28.427284, 34.935295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250854, -0.560432, 0.789296,
		0.840976, 0.529975, 0.109024,
		-0.479407, 0.636430, 0.604256,
		31.210611, 28.618214, 35.116573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053246, 28.531715, 35.226433>,  <31.546196, 28.172712, 34.693592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053246, 28.531715, 35.226433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.681082, 28.531212, 35.373039>,  <31.457783, 28.530910, 35.461002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.681082, 28.531212, 35.373039>,  <32.053246, 28.531715, 35.226433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681082, 28.531212, 35.373039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326668, -0.456313, 0.827687,
		0.166207, 0.889818, 0.424969,
		-0.930410, -0.001257, 0.366518,
		31.401958, 28.530834, 35.482994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201836, 28.630337, 35.891106>,  <32.053246, 28.531715, 35.226433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201836, 28.630337, 35.891106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.838007, 28.464390, 35.881596>,  <31.619709, 28.364822, 35.875889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.838007, 28.464390, 35.881596>,  <32.201836, 28.630337, 35.891106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838007, 28.464390, 35.881596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255774, -0.604032, 0.754801,
		-0.327504, 0.680464, 0.655522,
		-0.909572, -0.414866, -0.023778,
		31.565136, 28.339930, 35.874462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955774, 28.555199, 36.563519>,  <32.201836, 28.630337, 35.891106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955774, 28.555199, 36.563519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.727589, 28.293289, 36.365189>,  <31.590677, 28.136143, 36.246193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.727589, 28.293289, 36.365189>,  <31.955774, 28.555199, 36.563519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727589, 28.293289, 36.365189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221709, -0.704042, 0.674663,
		-0.790831, 0.274944, 0.546801,
		-0.570466, -0.654775, -0.495821,
		31.556450, 28.096857, 36.216442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451122, 28.312181, 37.049110>,  <31.955774, 28.555199, 36.563519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451122, 28.312181, 37.049110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.405483, 28.024738, 36.774715>,  <31.378099, 27.852272, 36.610077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.405483, 28.024738, 36.774715>,  <31.451122, 28.312181, 37.049110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405483, 28.024738, 36.774715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181689, -0.693948, 0.696724,
		-0.976714, -0.045142, 0.209741,
		-0.114097, -0.718608, -0.685991,
		31.371254, 27.809156, 36.568916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972197, 27.806089, 37.302704>,  <31.451122, 28.312181, 37.049110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972197, 27.806089, 37.302704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.196062, 27.629623, 37.022091>,  <31.330381, 27.523743, 36.853722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.196062, 27.629623, 37.022091>,  <30.972197, 27.806089, 37.302704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196062, 27.629623, 37.022091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145640, -0.780993, 0.607321,
		-0.815825, -0.442064, -0.372838,
		0.559659, -0.441168, -0.701536,
		31.363960, 27.497274, 36.811630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673674, 27.181379, 37.245365>,  <30.972197, 27.806089, 37.302704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673674, 27.181379, 37.245365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.013208, 27.094658, 37.052505>,  <31.216928, 27.042625, 36.936790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.013208, 27.094658, 37.052505>,  <30.673674, 27.181379, 37.245365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013208, 27.094658, 37.052505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053293, -0.872298, 0.486062,
		-0.525961, -0.438283, -0.728885,
		0.848837, -0.216805, -0.482152,
		31.267860, 27.029615, 36.907860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549936, 26.553656, 36.834984>,  <30.673674, 27.181379, 37.245365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549936, 26.553656, 36.834984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.937534, 26.620464, 36.907810>,  <31.170094, 26.660549, 36.951508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.937534, 26.620464, 36.907810>,  <30.549936, 26.553656, 36.834984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937534, 26.620464, 36.907810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127833, -0.969514, 0.209048,
		0.211432, -0.179293, -0.960807,
		0.968997, 0.167022, 0.182067,
		31.228233, 26.670570, 36.962429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893187, 25.942287, 36.516476>,  <30.549936, 26.553656, 36.834984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893187, 25.942287, 36.516476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.118725, 26.100418, 36.806522>,  <31.254047, 26.195295, 36.980549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.118725, 26.100418, 36.806522>,  <30.893187, 25.942287, 36.516476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118725, 26.100418, 36.806522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163628, -0.914063, 0.371100,
		0.809507, -0.090595, -0.580078,
		0.563848, 0.395325, 0.725117,
		31.287880, 26.219015, 37.024055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497852, 25.527876, 36.502296>,  <30.893187, 25.942287, 36.516476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497852, 25.527876, 36.502296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.497623, 25.674946, 36.874279>,  <31.497486, 25.763187, 37.097469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.497623, 25.674946, 36.874279>,  <31.497852, 25.527876, 36.502296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497623, 25.674946, 36.874279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075511, -0.927284, 0.366664,
		0.997145, 0.070432, -0.027231,
		-0.000574, 0.367673, 0.929955,
		31.497452, 25.785248, 37.153267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937729, 25.036264, 36.912853>,  <31.497852, 25.527876, 36.502296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937729, 25.036264, 36.912853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.771101, 25.258865, 37.200401>,  <31.671124, 25.392426, 37.372929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.771101, 25.258865, 37.200401>,  <31.937729, 25.036264, 36.912853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771101, 25.258865, 37.200401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034219, -0.780589, 0.624107,
		0.908459, 0.284584, 0.306128,
		-0.416571, 0.556500, 0.718871,
		31.646130, 25.425816, 37.416061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749826, 24.906061, 36.190327>,  <31.937729, 25.036264, 36.912853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749826, 24.906061, 36.190327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.902746, 24.601170, 35.981384>,  <31.994497, 24.418236, 35.856018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.902746, 24.601170, 35.981384>,  <31.749826, 24.906061, 36.190327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902746, 24.601170, 35.981384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106130, 0.597777, -0.794606,
		0.917924, 0.248338, 0.309424,
		0.382297, -0.762227, -0.522359,
		32.017437, 24.372501, 35.824677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174961, 25.217899, 35.751633>,  <31.749826, 24.906061, 36.190327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174961, 25.217899, 35.751633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.179829, 24.850857, 35.592712>,  <32.182747, 24.630630, 35.497360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.179829, 24.850857, 35.592712>,  <32.174961, 25.217899, 35.751633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179829, 24.850857, 35.592712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273640, 0.385216, -0.881323,
		0.961755, -0.097996, 0.255781,
		0.012164, -0.917609, -0.397299,
		32.183479, 24.575575, 35.473522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837379, 25.130516, 35.374485>,  <32.174961, 25.217899, 35.751633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837379, 25.130516, 35.374485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.590187, 24.845757, 35.241039>,  <32.441872, 24.674900, 35.160973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.590187, 24.845757, 35.241039>,  <32.837379, 25.130516, 35.374485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590187, 24.845757, 35.241039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193487, 0.273570, -0.942190,
		0.762012, -0.646805, -0.031317,
		-0.617981, -0.711901, -0.333612,
		32.404793, 24.632187, 35.140957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136120, 24.818069, 34.930088>,  <32.837379, 25.130516, 35.374485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136120, 24.818069, 34.930088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.757244, 24.734901, 34.832432>,  <32.529919, 24.685001, 34.773838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.757244, 24.734901, 34.832432>,  <33.136120, 24.818069, 34.930088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757244, 24.734901, 34.832432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214464, 0.155309, -0.964305,
		0.238416, -0.965737, -0.102515,
		-0.947187, -0.207920, -0.244144,
		32.473087, 24.672525, 34.759190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161629, 24.317921, 34.425259>,  <33.136120, 24.818069, 34.930088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161629, 24.317921, 34.425259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811543, 24.509319, 34.396870>,  <32.601490, 24.624159, 34.379837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811543, 24.509319, 34.396870>,  <33.161629, 24.317921, 34.425259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811543, 24.509319, 34.396870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268946, 0.359384, -0.893595,
		-0.402076, -0.801176, -0.443229,
		-0.875216, 0.478498, -0.070974,
		32.548977, 24.652868, 34.375576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029926, 24.308676, 33.724861>,  <33.161629, 24.317921, 34.425259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029926, 24.308676, 33.724861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815804, 24.612362, 33.872936>,  <32.687332, 24.794573, 33.961781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815804, 24.612362, 33.872936>,  <33.029926, 24.308676, 33.724861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815804, 24.612362, 33.872936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247507, 0.560025, -0.790640,
		-0.807584, -0.331607, -0.487694,
		-0.535303, 0.759216, 0.370192,
		32.655212, 24.840126, 33.983994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530003, 24.359562, 33.251007>,  <33.029926, 24.308676, 33.724861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530003, 24.359562, 33.251007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.537327, 24.710579, 33.442669>,  <32.541721, 24.921188, 33.557667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.537327, 24.710579, 33.442669>,  <32.530003, 24.359562, 33.251007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537327, 24.710579, 33.442669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017287, 0.479438, -0.877406,
		-0.999683, 0.007783, 0.023949,
		0.018311, 0.877541, 0.479151,
		32.542820, 24.973841, 33.586414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800175, 24.133923, 33.339413>,  <32.530003, 24.359562, 33.251007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800175, 24.133923, 33.339413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.482100, 23.922878, 33.219875>,  <31.291254, 23.796251, 33.148151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.482100, 23.922878, 33.219875>,  <31.800175, 24.133923, 33.339413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482100, 23.922878, 33.219875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022086, -0.517718, 0.855266,
		-0.605963, 0.673496, 0.423335,
		-0.795186, -0.527609, -0.298843,
		31.243544, 23.764595, 33.130222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174013, 24.137205, 33.842899>,  <31.800175, 24.133923, 33.339413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174013, 24.137205, 33.842899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.144501, 23.794182, 33.639275>,  <31.126793, 23.588367, 33.517097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.144501, 23.794182, 33.639275>,  <31.174013, 24.137205, 33.842899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144501, 23.794182, 33.639275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152005, -0.494821, 0.855597,
		-0.985622, 0.140508, -0.093844,
		-0.073782, -0.857560, -0.509065,
		31.122366, 23.536913, 33.486557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664700, 23.770390, 34.178608>,  <31.174013, 24.137205, 33.842899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664700, 23.770390, 34.178608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.825127, 23.488407, 33.944622>,  <30.921383, 23.319218, 33.804230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.825127, 23.488407, 33.944622>,  <30.664700, 23.770390, 34.178608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825127, 23.488407, 33.944622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152297, -0.680999, 0.716272,
		-0.903299, -0.198187, -0.380491,
		0.401069, -0.704956, -0.584962,
		30.945448, 23.276920, 33.769135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123451, 23.182840, 34.072037>,  <30.664700, 23.770390, 34.178608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123451, 23.182840, 34.072037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.489914, 23.044712, 33.990643>,  <30.709791, 22.961834, 33.941807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.489914, 23.044712, 33.990643>,  <30.123451, 23.182840, 34.072037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489914, 23.044712, 33.990643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166934, -0.790287, 0.589558,
		-0.364397, -0.506161, -0.781675,
		0.916159, -0.345322, -0.203483,
		30.764761, 22.941116, 33.929596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975279, 22.516949, 34.090843>,  <30.123451, 23.182840, 34.072037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975279, 22.516949, 34.090843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.374498, 22.538399, 34.103642>,  <30.614031, 22.551270, 34.111320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.374498, 22.538399, 34.103642>,  <29.975279, 22.516949, 34.090843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374498, 22.538399, 34.103642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024472, -0.807281, 0.589660,
		0.057450, -0.587726, -0.807018,
		0.998048, 0.053625, 0.031995,
		30.673912, 22.554485, 34.113239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163202, 21.884476, 33.885262>,  <29.975279, 22.516949, 34.090843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163202, 21.884476, 33.885262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.483961, 22.014851, 34.085552>,  <30.676416, 22.093075, 34.205727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.483961, 22.014851, 34.085552>,  <30.163202, 21.884476, 33.885262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483961, 22.014851, 34.085552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090211, -0.894531, 0.437808,
		0.590612, -0.305907, -0.746725,
		0.801897, 0.325938, 0.500725,
		30.724531, 22.112633, 34.235771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587070, 21.270559, 33.964836>,  <30.163202, 21.884476, 33.885262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587070, 21.270559, 33.964836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.704485, 21.543865, 34.232265>,  <30.774933, 21.707848, 34.392723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.704485, 21.543865, 34.232265>,  <30.587070, 21.270559, 33.964836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704485, 21.543865, 34.232265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257910, -0.730050, 0.632858,
		0.920499, -0.013335, -0.390517,
		0.293536, 0.683264, 0.668571,
		30.792545, 21.748844, 34.432838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255182, 21.016186, 34.241299>,  <30.587070, 21.270559, 33.964836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255182, 21.016186, 34.241299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.105028, 21.290150, 34.491093>,  <31.014936, 21.454529, 34.640968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.105028, 21.290150, 34.491093>,  <31.255182, 21.016186, 34.241299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105028, 21.290150, 34.491093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047053, -0.658809, 0.750838,
		0.925673, 0.311238, 0.215080,
		-0.375386, 0.684910, 0.624486,
		30.992413, 21.495623, 34.678440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694897, 20.974642, 34.851933>,  <31.255182, 21.016186, 34.241299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694897, 20.974642, 34.851933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.346130, 21.142780, 34.952393>,  <31.136871, 21.243664, 35.012669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.346130, 21.142780, 34.952393>,  <31.694897, 20.974642, 34.851933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346130, 21.142780, 34.952393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047097, -0.582514, 0.811455,
		0.487389, 0.695691, 0.527700,
		-0.871914, 0.420347, 0.251146,
		31.084557, 21.268885, 35.027737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.764973, 31.644775, 22.878565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393406, 31.509106, 22.937988>,  <29.170465, 31.427704, 22.973642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393406, 31.509106, 22.937988>,  <29.764973, 31.644775, 22.878565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393406, 31.509106, 22.937988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343506, -0.639540, 0.687744,
		-0.138257, 0.689890, 0.710590,
		-0.928918, -0.339177, 0.148560,
		29.114731, 31.407352, 22.982557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596605, 31.816502, 23.549992>,  <29.764973, 31.644775, 22.878565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596605, 31.816502, 23.549992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349747, 31.520294, 23.443588>,  <29.201632, 31.342569, 23.379747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349747, 31.520294, 23.443588>,  <29.596605, 31.816502, 23.549992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349747, 31.520294, 23.443588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469227, -0.617736, 0.631054,
		-0.631629, 0.264635, 0.728706,
		-0.617147, -0.740520, -0.266006,
		29.164602, 31.298138, 23.363787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391581, 31.512892, 24.165714>,  <29.596605, 31.816502, 23.549992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391581, 31.512892, 24.165714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312263, 31.235329, 23.888824>,  <29.264673, 31.068790, 23.722691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312263, 31.235329, 23.888824>,  <29.391581, 31.512892, 24.165714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312263, 31.235329, 23.888824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353747, -0.709312, 0.609704,
		-0.914081, -0.123973, 0.386118,
		-0.198291, -0.693907, -0.692224,
		29.252777, 31.027157, 23.681158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102234, 31.011747, 24.475985>,  <29.391581, 31.512892, 24.165714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102234, 31.011747, 24.475985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211992, 30.826359, 24.138962>,  <29.277847, 30.715126, 23.936749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211992, 30.826359, 24.138962>,  <29.102234, 31.011747, 24.475985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211992, 30.826359, 24.138962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293237, -0.794127, 0.532330,
		-0.915817, -0.393137, -0.081996,
		0.274394, -0.463472, -0.842557,
		29.294310, 30.687317, 23.886194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804243, 30.393398, 24.537914>,  <29.102234, 31.011747, 24.475985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804243, 30.393398, 24.537914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094315, 30.329182, 24.270081>,  <29.268358, 30.290651, 24.109381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094315, 30.329182, 24.270081>,  <28.804243, 30.393398, 24.537914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094315, 30.329182, 24.270081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226317, -0.862838, 0.451986,
		-0.650306, -0.479308, -0.589378,
		0.725178, -0.160543, -0.669584,
		29.311869, 30.281019, 24.069206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701767, 29.723318, 24.290926>,  <28.804243, 30.393398, 24.537914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701767, 29.723318, 24.290926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087719, 29.825268, 24.265472>,  <29.319290, 29.886438, 24.250200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087719, 29.825268, 24.265472>,  <28.701767, 29.723318, 24.290926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087719, 29.825268, 24.265472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257975, -0.873582, 0.412678,
		0.049593, -0.414600, -0.908652,
		0.964878, 0.254875, -0.063632,
		29.377182, 29.901730, 24.246382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023001, 29.069918, 24.157347>,  <28.701767, 29.723318, 24.290926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023001, 29.069918, 24.157347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351877, 29.291859, 24.208164>,  <29.549204, 29.425024, 24.238655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351877, 29.291859, 24.208164>,  <29.023001, 29.069918, 24.157347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351877, 29.291859, 24.208164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511087, -0.817867, 0.264357,
		0.250583, -0.152422, -0.956021,
		0.822191, 0.554853, 0.127043,
		29.598536, 29.458315, 24.246277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609344, 28.717045, 23.777956>,  <29.023001, 29.069918, 24.157347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609344, 28.717045, 23.777956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755404, 28.920532, 24.089821>,  <29.843039, 29.042624, 24.276939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755404, 28.920532, 24.089821>,  <29.609344, 28.717045, 23.777956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755404, 28.920532, 24.089821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483761, -0.819226, 0.307967,
		0.795389, 0.264718, -0.545235,
		0.365146, 0.508717, 0.779664,
		29.864948, 29.073147, 24.323719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190891, 28.434090, 23.912228>,  <29.609344, 28.717045, 23.777956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190891, 28.434090, 23.912228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163761, 28.651981, 24.246574>,  <30.147484, 28.782717, 24.447182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163761, 28.651981, 24.246574>,  <30.190891, 28.434090, 23.912228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163761, 28.651981, 24.246574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377086, -0.761654, 0.526962,
		0.923692, 0.350934, -0.153751,
		-0.067823, 0.544728, 0.835866,
		30.143414, 28.815399, 24.497334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740973, 28.246305, 24.271780>,  <30.190891, 28.434090, 23.912228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740973, 28.246305, 24.271780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512297, 28.405418, 24.558819>,  <30.375092, 28.500885, 24.731041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512297, 28.405418, 24.558819>,  <30.740973, 28.246305, 24.271780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512297, 28.405418, 24.558819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336909, -0.683664, 0.647377,
		0.748108, 0.611861, 0.256826,
		-0.571688, 0.397781, 0.717596,
		30.340790, 28.524752, 24.774097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206867, 28.453428, 24.876532>,  <30.740973, 28.246305, 24.271780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206867, 28.453428, 24.876532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832649, 28.402931, 25.008480>,  <30.608118, 28.372633, 25.087650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832649, 28.402931, 25.008480>,  <31.206867, 28.453428, 24.876532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832649, 28.402931, 25.008480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337495, -0.594942, 0.729480,
		0.104165, 0.793793, 0.599202,
		-0.935546, -0.126241, 0.329873,
		30.551985, 28.365059, 25.107443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294724, 28.392405, 25.587030>,  <31.206867, 28.453428, 24.876532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294724, 28.392405, 25.587030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926067, 28.249207, 25.527142>,  <30.704874, 28.163288, 25.491207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926067, 28.249207, 25.527142>,  <31.294724, 28.392405, 25.587030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926067, 28.249207, 25.527142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046247, -0.484431, 0.873606,
		-0.385276, 0.798228, 0.463028,
		-0.921642, -0.357993, -0.149724,
		30.649574, 28.141809, 25.482224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314802, 29.141897, 25.828491>,  <31.294724, 28.392405, 25.587030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314802, 29.141897, 25.828491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619196, 29.295963, 26.037315>,  <31.801832, 29.388403, 26.162609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619196, 29.295963, 26.037315>,  <31.314802, 29.141897, 25.828491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619196, 29.295963, 26.037315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078145, 0.744418, -0.663125,
		-0.644045, 0.545425, 0.536393,
		0.760986, 0.385165, 0.522061,
		31.847492, 29.411512, 26.193933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131998, 29.947132, 25.860586>,  <31.314802, 29.141897, 25.828491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131998, 29.947132, 25.860586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525764, 29.907192, 25.918495>,  <31.762024, 29.883228, 25.953241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525764, 29.907192, 25.918495>,  <31.131998, 29.947132, 25.860586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525764, 29.907192, 25.918495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159203, 0.855707, -0.492363,
		-0.074721, 0.507737, 0.858266,
		0.984414, -0.099848, 0.144772,
		31.821089, 29.877237, 25.961927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276072, 30.598713, 26.152271>,  <31.131998, 29.947132, 25.860586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276072, 30.598713, 26.152271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606956, 30.425308, 26.009281>,  <31.805487, 30.321266, 25.923487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606956, 30.425308, 26.009281>,  <31.276072, 30.598713, 26.152271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606956, 30.425308, 26.009281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242324, 0.849235, -0.469126,
		0.506951, 0.301442, 0.807548,
		0.827212, -0.433512, -0.357473,
		31.855120, 30.295254, 25.902039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748314, 31.154011, 26.123657>,  <31.276072, 30.598713, 26.152271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748314, 31.154011, 26.123657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904852, 30.877182, 25.881042>,  <31.998774, 30.711084, 25.735474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904852, 30.877182, 25.881042>,  <31.748314, 31.154011, 26.123657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904852, 30.877182, 25.881042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346619, 0.721416, -0.599512,
		0.852470, 0.024379, 0.522208,
		0.391344, -0.692073, -0.606535,
		32.022255, 30.669559, 25.699081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439140, 31.245008, 26.061937>,  <31.748314, 31.154011, 26.123657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439140, 31.245008, 26.061937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314972, 31.047749, 25.736866>,  <32.240471, 30.929394, 25.541824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314972, 31.047749, 25.736866>,  <32.439140, 31.245008, 26.061937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314972, 31.047749, 25.736866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386713, 0.715460, -0.581869,
		0.868385, -0.494896, -0.031386,
		-0.310420, -0.493149, -0.812677,
		32.221848, 30.899803, 25.493063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049156, 31.233700, 25.669237>,  <32.439140, 31.245008, 26.061937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049156, 31.233700, 25.669237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754757, 31.167084, 25.406765>,  <32.578117, 31.127113, 25.249283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754757, 31.167084, 25.406765>,  <33.049156, 31.233700, 25.669237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754757, 31.167084, 25.406765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537960, 0.444546, -0.716225,
		0.410979, -0.880139, -0.237595,
		-0.736000, -0.166537, -0.656178,
		32.533958, 31.117121, 25.209911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323448, 30.862213, 25.088963>,  <33.049156, 31.233700, 25.669237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323448, 30.862213, 25.088963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000648, 31.066013, 24.969528>,  <32.806969, 31.188293, 24.897867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000648, 31.066013, 24.969528>,  <33.323448, 30.862213, 25.088963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000648, 31.066013, 24.969528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525495, 0.388864, -0.756730,
		-0.269447, -0.767588, -0.581555,
		-0.807003, 0.509502, -0.298586,
		32.758549, 31.218864, 24.879953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438526, 30.984127, 24.459541>,  <33.323448, 30.862213, 25.088963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438526, 30.984127, 24.459541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142269, 31.249599, 24.501446>,  <32.964516, 31.408882, 24.526588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142269, 31.249599, 24.501446>,  <33.438526, 30.984127, 24.459541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142269, 31.249599, 24.501446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505808, 0.653373, -0.563260,
		-0.442272, -0.364187, -0.819612,
		-0.740644, 0.663680, 0.104760,
		32.920074, 31.448704, 24.532873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546669, 31.425447, 23.838455>,  <33.438526, 30.984127, 24.459541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546669, 31.425447, 23.838455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314621, 31.647381, 24.076992>,  <33.175392, 31.780540, 24.220114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314621, 31.647381, 24.076992>,  <33.546669, 31.425447, 23.838455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314621, 31.647381, 24.076992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519165, 0.816006, -0.254168,
		-0.627641, 0.162153, -0.761429,
		-0.580117, 0.554833, 0.596343,
		33.140587, 31.813831, 24.255896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476112, 31.943262, 23.368450>,  <33.546669, 31.425447, 23.838455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476112, 31.943262, 23.368450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344765, 32.099300, 23.712543>,  <33.265957, 32.192924, 23.918999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344765, 32.099300, 23.712543>,  <33.476112, 31.943262, 23.368450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344765, 32.099300, 23.712543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486649, 0.850423, -0.199885,
		-0.809535, 0.352996, -0.469092,
		-0.328368, 0.390097, 0.860232,
		33.246254, 32.216328, 23.970613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031261, 32.633686, 23.275145>,  <33.476112, 31.943262, 23.368450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031261, 32.633686, 23.275145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200470, 32.641155, 23.637516>,  <33.301994, 32.645638, 23.854939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200470, 32.641155, 23.637516>,  <33.031261, 32.633686, 23.275145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200470, 32.641155, 23.637516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425970, 0.878326, -0.217010,
		-0.799753, 0.477697, 0.363594,
		0.423019, 0.018675, 0.905928,
		33.327377, 32.646759, 23.909294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896561, 33.381687, 23.522091>,  <33.031261, 32.633686, 23.275145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896561, 33.381687, 23.522091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189854, 33.214603, 23.736710>,  <33.365829, 33.114353, 23.865480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189854, 33.214603, 23.736710>,  <32.896561, 33.381687, 23.522091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189854, 33.214603, 23.736710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563788, 0.814599, -0.136281,
		-0.380145, 0.402425, 0.832793,
		0.733235, -0.417712, 0.536548,
		33.409824, 33.089291, 23.897675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145336, 33.899166, 23.837017>,  <32.896561, 33.381687, 23.522091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145336, 33.899166, 23.837017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433918, 33.623219, 23.860977>,  <33.607067, 33.457649, 23.875353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433918, 33.623219, 23.860977>,  <33.145336, 33.899166, 23.837017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433918, 33.623219, 23.860977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662316, 0.662216, -0.350440,
		0.202088, 0.292501, 0.934668,
		0.721456, -0.689865, 0.059902,
		33.650356, 33.416260, 23.878948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706703, 34.234825, 24.116421>,  <33.145336, 33.899166, 23.837017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706703, 34.234825, 24.116421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857609, 33.918766, 23.923203>,  <33.948151, 33.729130, 23.807272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857609, 33.918766, 23.923203>,  <33.706703, 34.234825, 24.116421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857609, 33.918766, 23.923203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777411, 0.553659, -0.298487,
		0.503293, -0.262918, 0.823147,
		0.377265, -0.790150, -0.483048,
		33.970787, 33.681721, 23.778288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038918, 34.265831, 24.559658>,  <33.706703, 34.234825, 24.116421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038918, 34.265831, 24.559658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759190, 34.475231, 24.754349>,  <32.591354, 34.600872, 24.871162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759190, 34.475231, 24.754349>,  <33.038918, 34.265831, 24.559658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759190, 34.475231, 24.754349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159907, -0.549088, 0.820324,
		0.696696, 0.651498, 0.300275,
		-0.699317, 0.523501, 0.486727,
		32.549393, 34.632282, 24.900368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334290, 34.494091, 25.145767>,  <33.038918, 34.265831, 24.559658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334290, 34.494091, 25.145767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954048, 34.533787, 25.263416>,  <32.725903, 34.557606, 25.334005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954048, 34.533787, 25.263416>,  <33.334290, 34.494091, 25.145767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954048, 34.533787, 25.263416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238650, -0.372260, 0.896922,
		0.198503, 0.922807, 0.330186,
		-0.950601, 0.099243, 0.294123,
		32.668869, 34.563560, 25.351652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385303, 34.554173, 25.800171>,  <33.334290, 34.494091, 25.145767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385303, 34.554173, 25.800171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999439, 34.467739, 25.739868>,  <32.767921, 34.415878, 25.703688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999439, 34.467739, 25.739868>,  <33.385303, 34.554173, 25.800171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999439, 34.467739, 25.739868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054323, -0.396762, 0.916313,
		-0.257818, 0.892124, 0.371004,
		-0.964665, -0.216088, -0.150755,
		32.710041, 34.402912, 25.694641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046585, 34.840485, 26.400534>,  <33.385303, 34.554173, 25.800171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046585, 34.840485, 26.400534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791138, 34.587906, 26.224602>,  <32.637871, 34.436359, 26.119043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791138, 34.587906, 26.224602>,  <33.046585, 34.840485, 26.400534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791138, 34.587906, 26.224602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235103, -0.384130, 0.892844,
		-0.732734, 0.673587, 0.096856,
		-0.638614, -0.631446, -0.439828,
		32.599552, 34.398472, 26.092653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372280, 34.734211, 26.854355>,  <33.046585, 34.840485, 26.400534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372280, 34.734211, 26.854355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337811, 34.403290, 26.632313>,  <32.317131, 34.204739, 26.499086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337811, 34.403290, 26.632313>,  <32.372280, 34.734211, 26.854355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337811, 34.403290, 26.632313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098225, -0.547409, 0.831080,
		-0.991426, 0.126140, -0.034091,
		-0.086171, -0.827304, -0.555106,
		32.311958, 34.155098, 26.465780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721762, 34.406437, 27.087229>,  <32.372280, 34.734211, 26.854355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721762, 34.406437, 27.087229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928782, 34.121964, 26.896919>,  <32.052994, 33.951279, 26.782734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928782, 34.121964, 26.896919>,  <31.721762, 34.406437, 27.087229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928782, 34.121964, 26.896919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314244, -0.675161, 0.667389,
		-0.795860, -0.195897, -0.572914,
		0.517549, -0.711183, -0.475774,
		32.084045, 33.908607, 26.754187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277750, 33.774311, 26.948502>,  <31.721762, 34.406437, 27.087229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277750, 33.774311, 26.948502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645634, 33.617275, 26.947552>,  <31.866364, 33.523052, 26.946981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645634, 33.617275, 26.947552>,  <31.277750, 33.774311, 26.948502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645634, 33.617275, 26.947552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295555, -0.696341, 0.654031,
		-0.258421, -0.600816, -0.756464,
		0.919710, -0.392592, -0.002375,
		31.921547, 33.499496, 26.946838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168837, 33.098686, 26.766647>,  <31.277750, 33.774311, 26.948502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168837, 33.098686, 26.766647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533588, 33.111252, 26.930347>,  <31.752439, 33.118790, 27.028568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533588, 33.111252, 26.930347>,  <31.168837, 33.098686, 26.766647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533588, 33.111252, 26.930347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279006, -0.683856, 0.674164,
		0.301047, -0.728941, -0.614830,
		0.911880, 0.031413, 0.409252,
		31.807152, 33.120674, 27.053123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334879, 32.453182, 26.923765>,  <31.168837, 33.098686, 26.766647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334879, 32.453182, 26.923765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593731, 32.659615, 27.148224>,  <31.749043, 32.783474, 27.282898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593731, 32.659615, 27.148224>,  <31.334879, 32.453182, 26.923765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593731, 32.659615, 27.148224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163440, -0.625019, 0.763308,
		0.744654, -0.585673, -0.320121,
		0.647130, 0.516080, 0.561145,
		31.787870, 32.814438, 27.316568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895384, 31.997332, 27.307903>,  <31.334879, 32.453182, 26.923765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895384, 31.997332, 27.307903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829596, 32.334980, 27.512024>,  <31.790123, 32.537567, 27.634497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829596, 32.334980, 27.512024>,  <31.895384, 31.997332, 27.307903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829596, 32.334980, 27.512024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034766, -0.521988, 0.852244,
		0.985769, 0.122429, 0.115199,
		-0.164472, 0.844121, 0.510303,
		31.780254, 32.588215, 27.665115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329350, 31.847191, 27.773016>,  <31.895384, 31.997332, 27.307903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329350, 31.847191, 27.773016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092136, 32.128487, 27.929871>,  <31.949808, 32.297264, 28.023983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092136, 32.128487, 27.929871>,  <32.329350, 31.847191, 27.773016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092136, 32.128487, 27.929871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116219, -0.556676, 0.822560,
		0.796748, 0.442231, 0.411856,
		-0.593032, 0.703238, 0.392135,
		31.914227, 32.339458, 28.047510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549999, 31.897980, 28.466633>,  <32.329350, 31.847191, 27.773016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549999, 31.897980, 28.466633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185940, 32.063622, 28.461834>,  <31.967505, 32.163006, 28.458954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185940, 32.063622, 28.461834>,  <32.549999, 31.897980, 28.466633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185940, 32.063622, 28.461834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224914, -0.469595, 0.853753,
		0.347911, 0.779741, 0.520540,
		-0.910149, 0.414107, -0.011997,
		31.912895, 32.187855, 28.458235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539154, 32.156853, 29.087601>,  <32.549999, 31.897980, 28.466633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539154, 32.156853, 29.087601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156460, 32.132404, 28.973820>,  <31.926842, 32.117733, 28.905552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156460, 32.132404, 28.973820>,  <32.539154, 32.156853, 29.087601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156460, 32.132404, 28.973820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255621, -0.290334, 0.922152,
		-0.138951, 0.954971, 0.262149,
		-0.956740, -0.061123, -0.284452,
		31.869438, 32.114067, 28.888485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173325, 32.571484, 29.503565>,  <32.539154, 32.156853, 29.087601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173325, 32.571484, 29.503565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891779, 32.316822, 29.377556>,  <31.722851, 32.164024, 29.301950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891779, 32.316822, 29.377556>,  <32.173325, 32.571484, 29.503565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891779, 32.316822, 29.377556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246856, -0.196606, 0.948898,
		-0.666057, 0.745664, -0.018778,
		-0.703868, -0.636656, -0.315022,
		31.680618, 32.125824, 29.283049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621431, 32.874744, 29.759071>,  <32.173325, 32.571484, 29.503565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621431, 32.874744, 29.759071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510126, 32.497665, 29.685432>,  <31.443344, 32.271420, 29.641249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510126, 32.497665, 29.685432>,  <31.621431, 32.874744, 29.759071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510126, 32.497665, 29.685432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454175, -0.039748, 0.890025,
		-0.846342, 0.331272, -0.417090,
		-0.278262, -0.942698, -0.184096,
		31.426647, 32.214855, 29.630203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953054, 32.873417, 29.932131>,  <31.621431, 32.874744, 29.759071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953054, 32.873417, 29.932131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076988, 32.493275, 29.920589>,  <31.151348, 32.265190, 29.913664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076988, 32.493275, 29.920589>,  <30.953054, 32.873417, 29.932131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076988, 32.493275, 29.920589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416082, -0.162814, 0.894632,
		-0.854914, -0.265181, -0.445871,
		0.309833, -0.950353, -0.028855,
		31.169939, 32.208168, 29.911932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308956, 32.482735, 30.046522>,  <30.953054, 32.873417, 29.932131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308956, 32.482735, 30.046522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640455, 32.273319, 30.125603>,  <30.839355, 32.147671, 30.173050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640455, 32.273319, 30.125603>,  <30.308956, 32.482735, 30.046522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640455, 32.273319, 30.125603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361821, -0.231769, 0.902978,
		-0.426924, -0.819871, -0.381505,
		0.828747, -0.523540, 0.197699,
		30.889080, 32.116257, 30.184912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078579, 31.915192, 30.463566>,  <30.308956, 32.482735, 30.046522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078579, 31.915192, 30.463566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462347, 31.826103, 30.532745>,  <30.692608, 31.772650, 30.574253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462347, 31.826103, 30.532745>,  <30.078579, 31.915192, 30.463566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462347, 31.826103, 30.532745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248719, -0.379377, 0.891186,
		-0.132876, -0.898035, -0.419377,
		0.959418, -0.222724, 0.172948,
		30.750172, 31.759287, 30.584629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080160, 31.280842, 30.815620>,  <30.078579, 31.915192, 30.463566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080160, 31.280842, 30.815620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430548, 31.440845, 30.923447>,  <30.640781, 31.536848, 30.988142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430548, 31.440845, 30.923447>,  <30.080160, 31.280842, 30.815620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430548, 31.440845, 30.923447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053726, -0.474459, 0.878637,
		0.479362, -0.784143, -0.394121,
		0.875971, 0.400010, 0.269567,
		30.693338, 31.560848, 31.004316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502558, 30.738106, 30.923937>,  <30.080160, 31.280842, 30.815620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502558, 30.738106, 30.923937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651236, 31.044708, 31.133434>,  <30.740442, 31.228670, 31.259132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651236, 31.044708, 31.133434>,  <30.502558, 30.738106, 30.923937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651236, 31.044708, 31.133434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128758, -0.601277, 0.788598,
		0.919382, -0.225682, -0.322186,
		0.371695, 0.766507, 0.523745,
		30.762745, 31.274660, 31.290558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930182, 30.399551, 31.216059>,  <30.502558, 30.738106, 30.923937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930182, 30.399551, 31.216059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912445, 30.732025, 31.437748>,  <30.901804, 30.931509, 31.570761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912445, 30.732025, 31.437748>,  <30.930182, 30.399551, 31.216059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912445, 30.732025, 31.437748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025702, -0.553636, 0.832362,
		0.998686, 0.051152, 0.003185,
		-0.044341, 0.831186, 0.554223,
		30.899143, 30.981380, 31.604015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540043, 30.438910, 31.713133>,  <30.930182, 30.399551, 31.216059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540043, 30.438910, 31.713133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243692, 30.668064, 31.853363>,  <31.065882, 30.805557, 31.937502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243692, 30.668064, 31.853363>,  <31.540043, 30.438910, 31.713133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243692, 30.668064, 31.853363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010317, -0.531616, 0.846922,
		0.671561, 0.623849, 0.399773,
		-0.740878, 0.572884, 0.350576,
		31.021429, 30.839930, 31.958536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781036, 30.753860, 32.337734>,  <31.540043, 30.438910, 31.713133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781036, 30.753860, 32.337734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381338, 30.762997, 32.350296>,  <31.141520, 30.768478, 32.357834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381338, 30.762997, 32.350296>,  <31.781036, 30.753860, 32.337734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381338, 30.762997, 32.350296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018373, -0.434339, 0.900562,
		0.034207, 0.900460, 0.433592,
		-0.999246, 0.022839, 0.031401,
		31.081564, 30.769848, 32.359718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665331, 30.980089, 33.024292>,  <31.781036, 30.753860, 32.337734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665331, 30.980089, 33.024292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319046, 30.823471, 32.899559>,  <31.111275, 30.729500, 32.824718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319046, 30.823471, 32.899559>,  <31.665331, 30.980089, 33.024292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319046, 30.823471, 32.899559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168374, -0.358879, 0.918072,
		-0.471377, 0.847288, 0.244759,
		-0.865710, -0.391547, -0.311829,
		31.059334, 30.706007, 32.806011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088301, 31.281422, 33.491009>,  <31.665331, 30.980089, 33.024292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088301, 31.281422, 33.491009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989267, 30.928329, 33.331264>,  <30.929848, 30.716475, 33.235420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989267, 30.928329, 33.331264>,  <31.088301, 31.281422, 33.491009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989267, 30.928329, 33.331264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219244, -0.350454, 0.910557,
		-0.943734, 0.312998, -0.106766,
		-0.247586, -0.882731, -0.399358,
		30.914991, 30.663509, 33.211456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601194, 31.082764, 33.958580>,  <31.088301, 31.281422, 33.491009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601194, 31.082764, 33.958580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693474, 30.750614, 33.755695>,  <30.748840, 30.551325, 33.633965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693474, 30.750614, 33.755695>,  <30.601194, 31.082764, 33.958580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693474, 30.750614, 33.755695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089476, -0.537164, 0.838719,
		-0.968903, -0.148107, -0.198220,
		0.230697, -0.830373, -0.507208,
		30.762684, 30.501503, 33.603535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061417, 30.663885, 34.138069>,  <30.601194, 31.082764, 33.958580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061417, 30.663885, 34.138069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352646, 30.418495, 34.015717>,  <30.527384, 30.271261, 33.942307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352646, 30.418495, 34.015717>,  <30.061417, 30.663885, 34.138069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352646, 30.418495, 34.015717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056234, -0.498157, 0.865261,
		-0.683190, -0.612772, -0.397193,
		0.728072, -0.613473, -0.305878,
		30.571068, 30.234453, 33.923954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911436, 30.092279, 34.400227>,  <30.061417, 30.663885, 34.138069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911436, 30.092279, 34.400227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290731, 29.996243, 34.317085>,  <30.518309, 29.938622, 34.267200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290731, 29.996243, 34.317085>,  <29.911436, 30.092279, 34.400227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290731, 29.996243, 34.317085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013282, -0.623967, 0.781338,
		-0.317285, -0.743655, -0.588479,
		0.948237, -0.240091, -0.207853,
		30.575203, 29.924215, 34.254730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431747, 29.707336, 33.919518>,  <29.911436, 30.092279, 34.400227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431747, 29.707336, 33.919518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044865, 29.639042, 33.994732>,  <28.812735, 29.598064, 34.039860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044865, 29.639042, 33.994732>,  <29.431747, 29.707336, 33.919518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044865, 29.639042, 33.994732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231951, 0.292148, -0.927819,
		0.103479, -0.941009, -0.322170,
		-0.967208, -0.170737, 0.188037,
		28.754702, 29.587820, 34.051144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153269, 29.455040, 33.262840>,  <29.431747, 29.707336, 33.919518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153269, 29.455040, 33.262840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841803, 29.593399, 33.472233>,  <28.654922, 29.676414, 33.597870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841803, 29.593399, 33.472233>,  <29.153269, 29.455040, 33.262840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841803, 29.593399, 33.472233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387237, 0.391532, -0.834716,
		-0.493686, -0.852677, -0.170928,
		-0.778667, 0.345898, 0.523481,
		28.608202, 29.697168, 33.629276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597017, 29.214451, 32.936123>,  <29.153269, 29.455040, 33.262840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597017, 29.214451, 32.936123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472424, 29.541637, 33.129581>,  <28.397667, 29.737949, 33.245655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472424, 29.541637, 33.129581>,  <28.597017, 29.214451, 32.936123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472424, 29.541637, 33.129581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491186, 0.297104, -0.818819,
		-0.813458, -0.492609, 0.309230,
		-0.311484, 0.817965, 0.483644,
		28.378979, 29.787027, 33.274673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922874, 29.320807, 32.631489>,  <28.597017, 29.214451, 32.936123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922874, 29.320807, 32.631489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016617, 29.674938, 32.792122>,  <28.072863, 29.887417, 32.888500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016617, 29.674938, 32.792122>,  <27.922874, 29.320807, 32.631489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016617, 29.674938, 32.792122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198996, 0.448024, -0.871593,
		-0.951566, 0.124352, 0.281175,
		0.234357, 0.885331, 0.401579,
		28.086924, 29.940538, 32.912594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406593, 29.867201, 32.492691>,  <27.922874, 29.320807, 32.631489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406593, 29.867201, 32.492691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754297, 30.057499, 32.546440>,  <27.962919, 30.171679, 32.578690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754297, 30.057499, 32.546440>,  <27.406593, 29.867201, 32.492691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754297, 30.057499, 32.546440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214451, 0.607787, -0.764595,
		-0.445423, 0.635814, 0.630348,
		0.869258, 0.475747, 0.134371,
		28.015074, 30.200224, 32.586750>
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
