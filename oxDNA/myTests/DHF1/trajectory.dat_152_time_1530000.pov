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
	<4.382105, 1.717453, 3.884715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.073593, 1.971802, 3.895981>,  <3.888486, 2.124411, 3.902740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.073593, 1.971802, 3.895981>,  <4.382105, 1.717453, 3.884715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.073593, 1.971802, 3.895981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609141, -0.724577, -0.322389,
		-0.184591, -0.265809, 0.946188,
		-0.771280, 0.635872, 0.028165,
		3.842209, 2.162563, 3.904430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.912362, 1.418010, 4.345068>,  <4.382105, 1.717453, 3.884715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.912362, 1.418010, 4.345068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.749146, 1.665535, 4.076569>,  <3.651216, 1.814050, 3.915469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.749146, 1.665535, 4.076569>,  <3.912362, 1.418010, 4.345068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.749146, 1.665535, 4.076569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534240, -0.758056, -0.374085,
		-0.740332, 0.205966, 0.639911,
		-0.408040, 0.618813, -0.671248,
		3.626733, 1.851179, 3.875194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.151943, 1.431739, 4.359968>,  <3.912362, 1.418010, 4.345068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.151943, 1.431739, 4.359968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.319603, 1.480797, 4.000130>,  <3.420199, 1.510231, 3.784227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.319603, 1.480797, 4.000130>,  <3.151943, 1.431739, 4.359968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.319603, 1.480797, 4.000130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510497, -0.787536, -0.345224,
		-0.750803, 0.603942, -0.267486,
		0.419150, 0.122644, -0.899595,
		3.445348, 1.517590, 3.730251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.682599, 1.249761, 3.737793>,  <3.151943, 1.431739, 4.359968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.682599, 1.249761, 3.737793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.036026, 1.181610, 3.563309>,  <3.248082, 1.140719, 3.458618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.036026, 1.181610, 3.563309>,  <2.682599, 1.249761, 3.737793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.036026, 1.181610, 3.563309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375341, -0.814674, -0.442070,
		-0.280051, 0.554327, -0.783769,
		0.883567, -0.170378, -0.436212,
		3.301096, 1.130497, 3.432445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.488828, 1.022704, 3.046128>,  <2.682599, 1.249761, 3.737793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.488828, 1.022704, 3.046128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.854034, 0.864349, 3.085480>,  <3.073158, 0.769337, 3.109091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.854034, 0.864349, 3.085480>,  <2.488828, 1.022704, 3.046128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.854034, 0.864349, 3.085480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225526, -0.690830, -0.686944,
		0.339915, 0.605003, -0.720020,
		0.913015, -0.395886, 0.098380,
		3.127939, 0.745584, 3.114994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.755005, 0.967447, 2.319064>,  <2.488828, 1.022704, 3.046128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.755005, 0.967447, 2.319064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.952103, 0.707214, 2.550217>,  <3.070361, 0.551075, 2.688908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.952103, 0.707214, 2.550217>,  <2.755005, 0.967447, 2.319064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.952103, 0.707214, 2.550217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115150, -0.707009, -0.697767,
		0.862521, 0.277278, -0.423289,
		0.492745, -0.650580, 0.577882,
		3.099926, 0.512040, 2.723581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.147996, 0.671977, 1.815776>,  <2.755005, 0.967447, 2.319064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.147996, 0.671977, 1.815776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.178032, 0.405075, 2.112190>,  <3.196054, 0.244934, 2.290039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.178032, 0.405075, 2.112190>,  <3.147996, 0.671977, 1.815776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.178032, 0.405075, 2.112190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038378, -0.744516, -0.666500,
		0.996438, 0.021608, -0.081514,
		0.075091, -0.667255, 0.741035,
		3.200559, 0.204899, 2.334501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.579358, 0.170065, 1.578769>,  <3.147996, 0.671977, 1.815776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.579358, 0.170065, 1.578769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.373238, -0.012238, 1.869080>,  <3.249566, -0.121619, 2.043266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.373238, -0.012238, 1.869080>,  <3.579358, 0.170065, 1.578769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.373238, -0.012238, 1.869080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180350, -0.770239, -0.611723,
		0.837818, -0.446115, 0.314709,
		-0.515300, -0.455755, 0.725777,
		3.218648, -0.148964, 2.086813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.969174, 3.384959, 1.201739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.694782, 3.309212, 1.482758>,  <2.530147, 3.263764, 1.651369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.694782, 3.309212, 1.482758>,  <2.969174, 3.384959, 1.201739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.694782, 3.309212, 1.482758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277172, 0.824734, 0.492939,
		-0.672760, 0.532873, -0.513264,
		-0.685981, -0.189367, 0.702546,
		2.488988, 3.252402, 1.693521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.521100, 3.966132, 1.236432>,  <2.969174, 3.384959, 1.201739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.521100, 3.966132, 1.236432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.527382, 3.766464, 1.582977>,  <2.531151, 3.646664, 1.790904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.527382, 3.766464, 1.582977>,  <2.521100, 3.966132, 1.236432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.527382, 3.766464, 1.582977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230740, 0.844891, 0.482616,
		-0.972889, 0.192324, 0.128448,
		0.015706, -0.499169, 0.866362,
		2.532094, 3.616714, 1.842886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.268850, 4.458163, 1.668941>,  <2.521100, 3.966132, 1.236432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.268850, 4.458163, 1.668941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.510139, 4.210022, 1.869453>,  <2.654913, 4.061137, 1.989761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.510139, 4.210022, 1.869453>,  <2.268850, 4.458163, 1.668941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.510139, 4.210022, 1.869453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377610, 0.775741, 0.505605,
		-0.702519, -0.115704, 0.702197,
		0.603224, -0.620353, 0.501281,
		2.691107, 4.023916, 2.019838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.186655, 4.517611, 2.435848>,  <2.268850, 4.458163, 1.668941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.186655, 4.517611, 2.435848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.563534, 4.407265, 2.359779>,  <2.789661, 4.341057, 2.314138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.563534, 4.407265, 2.359779>,  <2.186655, 4.517611, 2.435848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.563534, 4.407265, 2.359779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335048, 0.780964, 0.527103,
		0.003107, -0.560351, 0.828249,
		0.942196, -0.275865, -0.190171,
		2.846193, 4.324505, 2.302728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.490108, 4.328123, 2.981768>,  <2.186655, 4.517611, 2.435848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.490108, 4.328123, 2.981768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.747677, 4.469467, 2.710327>,  <2.902218, 4.554274, 2.547462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.747677, 4.469467, 2.710327>,  <2.490108, 4.328123, 2.981768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.747677, 4.469467, 2.710327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316956, 0.684062, 0.656961,
		0.696350, -0.638119, 0.328483,
		0.643921, 0.353360, -0.678603,
		2.940853, 4.575475, 2.506746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.141125, 4.356464, 3.345893>,  <2.490108, 4.328123, 2.981768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.141125, 4.356464, 3.345893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.135765, 4.616020, 3.041588>,  <3.132549, 4.771754, 2.859004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.135765, 4.616020, 3.041588>,  <3.141125, 4.356464, 3.345893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.135765, 4.616020, 3.041588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404585, 0.699288, 0.589328,
		0.914402, -0.299896, -0.271903,
		-0.013401, 0.648890, -0.760764,
		3.131745, 4.810688, 2.813359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.806155, 4.659978, 3.393234>,  <3.141125, 4.356464, 3.345893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.806155, 4.659978, 3.393234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.591309, 4.928955, 3.189537>,  <3.462401, 5.090341, 3.067319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.591309, 4.928955, 3.189537>,  <3.806155, 4.659978, 3.393234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.591309, 4.928955, 3.189537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504770, 0.739925, 0.444654,
		0.675806, -0.018221, -0.736854,
		-0.537115, 0.672442, -0.509243,
		3.430174, 5.130688, 3.036764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.311488, 5.132771, 3.157515>,  <3.806155, 4.659978, 3.393234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.311488, 5.132771, 3.157515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.955875, 5.315727, 3.165665>,  <3.742508, 5.425501, 3.170555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.955875, 5.315727, 3.165665>,  <4.311488, 5.132771, 3.157515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.955875, 5.315727, 3.165665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421051, 0.799297, 0.428766,
		0.179828, 0.389766, -0.903186,
		-0.889032, 0.457392, 0.020375,
		3.689166, 5.452945, 3.171777>
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
