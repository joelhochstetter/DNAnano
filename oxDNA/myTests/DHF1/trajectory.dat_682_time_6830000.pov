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
	<3.716143, -0.010082, 2.552032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.111921, 0.046190, 2.538134>,  <4.349388, 0.079954, 2.529795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.111921, 0.046190, 2.538134>,  <3.716143, -0.010082, 2.552032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.111921, 0.046190, 2.538134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030143, 0.434350, 0.900239,
		0.141737, -0.889690, 0.434006,
		0.989445, 0.140680, -0.034746,
		4.408755, 0.088394, 2.527710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.111556, -0.309991, 3.153271>,  <3.716143, -0.010082, 2.552032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.111556, -0.309991, 3.153271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.226939, 0.031751, 2.980356>,  <4.296169, 0.236795, 2.876607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.226939, 0.031751, 2.980356>,  <4.111556, -0.309991, 3.153271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.226939, 0.031751, 2.980356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342894, 0.513709, 0.786465,
		0.893988, -0.078634, 0.441137,
		0.288459, 0.854354, -0.432287,
		4.313477, 0.288057, 2.850670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.150095, 0.173644, 3.621891>,  <4.111556, -0.309991, 3.153271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.150095, 0.173644, 3.621891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.125241, 0.444569, 3.328665>,  <4.110328, 0.607124, 3.152729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.125241, 0.444569, 3.328665>,  <4.150095, 0.173644, 3.621891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.125241, 0.444569, 3.328665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470177, 0.628016, 0.620104,
		0.880382, 0.383202, 0.279435,
		-0.062135, 0.677312, -0.733067,
		4.106600, 0.647762, 3.108745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.496986, 0.880047, 3.761820>,  <4.150095, 0.173644, 3.621891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.496986, 0.880047, 3.761820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.167668, 0.928625, 3.540031>,  <3.970078, 0.957772, 3.406958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.167668, 0.928625, 3.540031>,  <4.496986, 0.880047, 3.761820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.167668, 0.928625, 3.540031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348962, 0.662137, 0.663174,
		0.447674, 0.739477, -0.502754,
		-0.823294, 0.121444, -0.554471,
		3.920680, 0.965058, 3.373690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.341684, 1.560047, 3.834875>,  <4.496986, 0.880047, 3.761820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.341684, 1.560047, 3.834875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.996386, 1.411587, 3.698021>,  <3.789207, 1.322510, 3.615909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.996386, 1.411587, 3.698021>,  <4.341684, 1.560047, 3.834875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.996386, 1.411587, 3.698021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498065, 0.736496, 0.457716,
		0.082098, 0.565526, -0.820634,
		-0.863244, -0.371152, -0.342134,
		3.737413, 1.300241, 3.595381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.956812, 2.166341, 3.503451>,  <4.341684, 1.560047, 3.834875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.956812, 2.166341, 3.503451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.687924, 1.893210, 3.617903>,  <3.526592, 1.729332, 3.686574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.687924, 1.893210, 3.617903>,  <3.956812, 2.166341, 3.503451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.687924, 1.893210, 3.617903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501681, 0.704337, 0.502220,
		-0.544461, 0.194056, -0.816030,
		-0.672219, -0.682826, 0.286130,
		3.486259, 1.688363, 3.703742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.273261, 2.505501, 3.442189>,  <3.956812, 2.166341, 3.503451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.273261, 2.505501, 3.442189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.222872, 2.213996, 3.711420>,  <3.192638, 2.039093, 3.872959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.222872, 2.213996, 3.711420>,  <3.273261, 2.505501, 3.442189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.222872, 2.213996, 3.711420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610108, 0.591912, 0.526695,
		-0.782240, -0.344301, -0.519189,
		-0.125972, -0.728764, 0.673079,
		3.185080, 1.995367, 3.913344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.554279, 2.485784, 3.593925>,  <3.273261, 2.505501, 3.442189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.554279, 2.485784, 3.593925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.741311, 2.300835, 3.895277>,  <2.853530, 2.189865, 4.076088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.741311, 2.300835, 3.895277>,  <2.554279, 2.485784, 3.593925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.741311, 2.300835, 3.895277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535272, 0.530154, 0.657587,
		-0.703457, -0.710738, 0.000394,
		0.467581, -0.462373, 0.753379,
		2.881585, 2.162123, 4.121291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.916458, 3.035106, 4.778945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.842434, 2.848639, 5.124994>,  <2.798019, 2.736758, 5.332624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.842434, 2.848639, 5.124994>,  <2.916458, 3.035106, 4.778945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.842434, 2.848639, 5.124994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102562, -0.866360, -0.488775,
		0.977360, -0.179182, 0.112518,
		-0.185061, -0.466169, 0.865123,
		2.786916, 2.708788, 5.384531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.576185, 2.707026, 4.986092>,  <2.916458, 3.035106, 4.778945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.576185, 2.707026, 4.986092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.209808, 2.562529, 5.056007>,  <2.989982, 2.475830, 5.097957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.209808, 2.562529, 5.056007>,  <3.576185, 2.707026, 4.986092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.209808, 2.562529, 5.056007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128647, -0.676869, -0.724775,
		0.380130, -0.641366, 0.666446,
		-0.915943, -0.361245, 0.174788,
		2.935025, 2.454155, 5.108444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.573224, 1.951156, 5.192940>,  <3.576185, 2.707026, 4.986092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.573224, 1.951156, 5.192940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.243668, 2.057167, 4.992555>,  <3.045934, 2.120774, 4.872324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.243668, 2.057167, 4.992555>,  <3.573224, 1.951156, 5.192940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.243668, 2.057167, 4.992555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158185, -0.741264, -0.652308,
		-0.544224, -0.616676, 0.568798,
		-0.823892, 0.265026, -0.500962,
		2.996500, 2.136675, 4.842266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.161356, 1.397544, 5.122135>,  <3.573224, 1.951156, 5.192940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.161356, 1.397544, 5.122135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.062035, 1.639241, 4.819285>,  <3.002442, 1.784260, 4.637576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.062035, 1.639241, 4.819285>,  <3.161356, 1.397544, 5.122135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.062035, 1.639241, 4.819285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336670, -0.679044, -0.652344,
		-0.908294, -0.416880, -0.034821,
		-0.248304, 0.604243, -0.757123,
		2.987543, 1.820514, 4.592149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.972195, 0.924584, 4.615565>,  <3.161356, 1.397544, 5.122135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.972195, 0.924584, 4.615565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.022350, 1.260229, 4.403842>,  <3.052444, 1.461616, 4.276808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.022350, 1.260229, 4.403842>,  <2.972195, 0.924584, 4.615565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.022350, 1.260229, 4.403842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324335, -0.538875, -0.777445,
		-0.937595, -0.074190, -0.339723,
		0.125390, 0.839112, -0.529309,
		3.059967, 1.511963, 4.245049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.550729, 0.818615, 3.976791>,  <2.972195, 0.924584, 4.615565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.550729, 0.818615, 3.976791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.835648, 1.084582, 3.886886>,  <3.006598, 1.244163, 3.832943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.835648, 1.084582, 3.886886>,  <2.550729, 0.818615, 3.976791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.835648, 1.084582, 3.886886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311567, -0.586489, -0.747634,
		-0.628936, 0.462508, -0.624920,
		0.712296, 0.664919, -0.224763,
		3.049336, 1.284058, 3.819457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.574310, 0.762837, 3.314982>,  <2.550729, 0.818615, 3.976791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.574310, 0.762837, 3.314982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.926456, 0.935231, 3.394186>,  <3.137744, 1.038668, 3.441708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.926456, 0.935231, 3.394186>,  <2.574310, 0.762837, 3.314982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.926456, 0.935231, 3.394186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432915, -0.559633, -0.706680,
		-0.193757, 0.707857, -0.679262,
		0.880365, 0.430986, 0.198009,
		3.190566, 1.064527, 3.453589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.893311, 0.846148, 2.627790>,  <2.574310, 0.762837, 3.314982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.893311, 0.846148, 2.627790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.184551, 0.845894, 2.901978>,  <3.359295, 0.845742, 3.066490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.184551, 0.845894, 2.901978>,  <2.893311, 0.846148, 2.627790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.184551, 0.845894, 2.901978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585463, -0.519526, -0.622355,
		0.356514, 0.854455, -0.377896,
		0.728101, -0.000634, 0.685470,
		3.402982, 0.845703, 3.107618>
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
