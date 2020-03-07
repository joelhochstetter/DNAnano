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
	<4.191057, 2.097446, 2.016992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.531628, 1.918098, 2.125832>,  <4.735970, 1.810490, 2.191135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.531628, 1.918098, 2.125832>,  <4.191057, 2.097446, 2.016992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.531628, 1.918098, 2.125832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519495, -0.792282, 0.320023,
		0.072092, -0.413830, -0.907495,
		0.851427, -0.448368, 0.272100,
		4.787056, 1.783588, 2.207462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.694465, 2.030833, 2.595364>,  <4.191057, 2.097446, 2.016992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.694465, 2.030833, 2.595364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.742672, 1.634262, 2.615562>,  <3.771596, 1.396320, 2.627681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.742672, 1.634262, 2.615562>,  <3.694465, 2.030833, 2.595364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.742672, 1.634262, 2.615562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171783, 0.029272, 0.984700,
		-0.977735, -0.127348, -0.166782,
		0.120518, -0.991426, 0.050496,
		3.778827, 1.336834, 2.630711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.184038, 1.850359, 3.120089>,  <3.694465, 2.030833, 2.595364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.184038, 1.850359, 3.120089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.446819, 1.548874, 3.112846>,  <3.604488, 1.367983, 3.108501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.446819, 1.548874, 3.112846>,  <3.184038, 1.850359, 3.120089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.446819, 1.548874, 3.112846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112791, -0.122001, 0.986100,
		-0.745446, -0.645780, -0.165162,
		0.656954, -0.753713, -0.018107,
		3.643905, 1.322760, 3.107414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.854663, 1.281207, 3.376301>,  <3.184038, 1.850359, 3.120089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.854663, 1.281207, 3.376301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.252239, 1.275055, 3.419838>,  <3.490785, 1.271363, 3.445960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.252239, 1.275055, 3.419838>,  <2.854663, 1.281207, 3.376301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.252239, 1.275055, 3.419838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109911, -0.153839, 0.981964,
		0.001643, -0.987976, -0.154597,
		0.993940, -0.015378, 0.108842,
		3.550421, 1.270441, 3.452491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.220574, 0.599090, 3.623442>,  <2.854663, 1.281207, 3.376301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.220574, 0.599090, 3.623442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.358028, 0.949615, 3.758492>,  <3.440501, 1.159931, 3.839521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.358028, 0.949615, 3.758492>,  <3.220574, 0.599090, 3.623442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.358028, 0.949615, 3.758492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103791, -0.321876, 0.941076,
		0.933350, -0.358429, -0.019655,
		0.343635, 0.876313, 0.337624,
		3.461119, 1.212509, 3.859779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.521004, 0.401665, 4.236074>,  <3.220574, 0.599090, 3.623442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.521004, 0.401665, 4.236074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.506618, 0.800308, 4.265686>,  <3.497987, 1.039494, 4.283453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.506618, 0.800308, 4.265686>,  <3.521004, 0.401665, 4.236074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.506618, 0.800308, 4.265686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037025, -0.075354, 0.996469,
		0.998667, 0.033096, 0.039610,
		-0.035964, 0.996607, 0.074029,
		3.495829, 1.099290, 4.287895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.906216, 0.528629, 4.860794>,  <3.521004, 0.401665, 4.236074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.906216, 0.528629, 4.860794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.711445, 0.877335, 4.839142>,  <3.594582, 1.086558, 4.826151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.711445, 0.877335, 4.839142>,  <3.906216, 0.528629, 4.860794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.711445, 0.877335, 4.839142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185079, -0.042415, 0.981808,
		0.853608, 0.488088, 0.181998,
		-0.486928, 0.871763, -0.054129,
		3.565367, 1.138864, 4.822903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.206210, 1.032082, 5.345306>,  <3.906216, 0.528629, 4.860794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.206210, 1.032082, 5.345306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.824947, 1.136963, 5.284981>,  <3.596190, 1.199891, 5.248785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.824947, 1.136963, 5.284981>,  <4.206210, 1.032082, 5.345306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.824947, 1.136963, 5.284981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177555, -0.081342, 0.980743,
		0.244885, 0.961579, 0.124087,
		-0.953156, 0.262202, -0.150814,
		3.539001, 1.215623, 5.239737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.414833, 0.882646, 1.824092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.027269, 0.846634, 1.731911>,  <2.794731, 0.825027, 1.676602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.027269, 0.846634, 1.731911>,  <3.414833, 0.882646, 1.824092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.027269, 0.846634, 1.731911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157909, 0.492040, -0.856132,
		0.190469, -0.865905, -0.462526,
		-0.968910, -0.090030, -0.230452,
		2.736596, 0.819625, 1.662775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.325124, 0.586469, 1.082935>,  <3.414833, 0.882646, 1.824092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.325124, 0.586469, 1.082935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.010841, 0.804047, 1.200775>,  <2.822272, 0.934593, 1.271479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.010841, 0.804047, 1.200775>,  <3.325124, 0.586469, 1.082935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.010841, 0.804047, 1.200775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095408, 0.577097, -0.811084,
		-0.611198, -0.609167, -0.505325,
		-0.785707, 0.543945, 0.294601,
		2.775129, 0.967230, 1.289155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.731653, 0.475740, 0.641681>,  <3.325124, 0.586469, 1.082935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.731653, 0.475740, 0.641681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.803518, 0.834488, 0.803345>,  <2.846637, 1.049737, 0.900343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.803518, 0.834488, 0.803345>,  <2.731653, 0.475740, 0.641681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.803518, 0.834488, 0.803345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139164, 0.383542, -0.912978,
		-0.973835, 0.220272, -0.055904,
		0.179662, 0.896870, 0.404161,
		2.857417, 1.103549, 0.924593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.330926, 0.871480, 0.284830>,  <2.731653, 0.475740, 0.641681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.330926, 0.871480, 0.284830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.648464, 1.081696, 0.407219>,  <2.838987, 1.207825, 0.480652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.648464, 1.081696, 0.407219>,  <2.330926, 0.871480, 0.284830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.648464, 1.081696, 0.407219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164563, 0.298720, -0.940045,
		-0.585431, 0.796602, 0.150653,
		0.793845, 0.525540, 0.305971,
		2.886618, 1.239357, 0.499010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.290869, 1.608579, -0.004930>,  <2.330926, 0.871480, 0.284830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.290869, 1.608579, -0.004930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.668196, 1.495102, 0.063972>,  <2.894592, 1.427016, 0.105314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.668196, 1.495102, 0.063972>,  <2.290869, 1.608579, -0.004930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.668196, 1.495102, 0.063972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250737, 0.269111, -0.929898,
		0.217449, 0.920379, 0.324989,
		0.943317, -0.283692, 0.172255,
		2.951191, 1.409994, 0.115649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.753320, 2.197420, -0.282726>,  <2.290869, 1.608579, -0.004930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.753320, 2.197420, -0.282726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.989912, 1.876495, -0.250603>,  <3.131867, 1.683941, -0.231329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.989912, 1.876495, -0.250603>,  <2.753320, 2.197420, -0.282726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.989912, 1.876495, -0.250603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443183, 0.240277, -0.863629,
		0.673603, 0.546410, 0.497689,
		0.591479, -0.802311, 0.080308,
		3.167356, 1.635802, -0.226510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.474534, 2.380176, -0.361434>,  <2.753320, 2.197420, -0.282726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.474534, 2.380176, -0.361434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.476404, 2.002975, -0.494537>,  <3.477526, 1.776655, -0.574399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.476404, 2.002975, -0.494537>,  <3.474534, 2.380176, -0.361434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.476404, 2.002975, -0.494537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417348, 0.304235, -0.856307,
		0.908735, -0.134872, 0.394982,
		0.004675, -0.943001, -0.332758,
		3.477807, 1.720075, -0.594365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.098320, 2.286527, -0.741536>,  <3.474534, 2.380176, -0.361434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.098320, 2.286527, -0.741536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.907379, 1.958908, -0.868843>,  <3.792814, 1.762336, -0.945227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.907379, 1.958908, -0.868843>,  <4.098320, 2.286527, -0.741536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.907379, 1.958908, -0.868843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448755, 0.084174, -0.889682,
		0.755482, -0.567516, 0.327371,
		-0.477352, -0.819048, -0.318268,
		3.764174, 1.713194, -0.964323>
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
