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
	<1.756346, 1.535534, 2.599580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.926296, 1.557495, 2.961014>,  <2.028267, 1.570672, 3.177874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.926296, 1.557495, 2.961014>,  <1.756346, 1.535534, 2.599580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.926296, 1.557495, 2.961014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573839, -0.755656, 0.315742,
		0.700135, -0.652664, -0.289554,
		0.424876, 0.054904, 0.903585,
		2.053759, 1.573966, 3.232089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.754494, 0.884118, 2.776771>,  <1.756346, 1.535534, 2.599580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.754494, 0.884118, 2.776771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.767872, 1.090385, 3.119225>,  <1.775899, 1.214146, 3.324697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.767872, 1.090385, 3.119225>,  <1.754494, 0.884118, 2.776771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.767872, 1.090385, 3.119225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633932, -0.651300, 0.417058,
		0.772665, -0.556680, 0.305117,
		0.033445, 0.515670, 0.856134,
		1.777905, 1.245086, 3.376065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.067750, 0.636680, 3.478121>,  <1.754494, 0.884118, 2.776771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.067750, 0.636680, 3.478121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.729301, 0.831429, 3.564873>,  <1.526232, 0.948278, 3.616924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.729301, 0.831429, 3.564873>,  <2.067750, 0.636680, 3.478121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.729301, 0.831429, 3.564873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376979, -0.834320, 0.402241,
		0.376786, 0.258585, 0.889475,
		-0.846121, 0.486872, 0.216879,
		1.475465, 0.977490, 3.629936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.877663, 0.520867, 4.152243>,  <2.067750, 0.636680, 3.478121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.877663, 0.520867, 4.152243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.527557, 0.620529, 3.986431>,  <1.317494, 0.680326, 3.886944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.527557, 0.620529, 3.986431>,  <1.877663, 0.520867, 4.152243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.527557, 0.620529, 3.986431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415410, -0.826220, 0.380520,
		-0.247684, 0.505255, 0.826662,
		-0.875265, 0.249155, -0.414529,
		1.264978, 0.695276, 3.862072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.322587, 0.331125, 4.604041>,  <1.877663, 0.520867, 4.152243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.322587, 0.331125, 4.604041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.129738, 0.353859, 4.254337>,  <1.014029, 0.367499, 4.044515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.129738, 0.353859, 4.254337>,  <1.322587, 0.331125, 4.604041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.129738, 0.353859, 4.254337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539913, -0.805154, 0.245400,
		-0.689965, 0.590336, 0.418868,
		-0.482122, 0.056835, -0.874259,
		0.985101, 0.370909, 3.992060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.647734, 0.317799, 4.781315>,  <1.322587, 0.331125, 4.604041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.647734, 0.317799, 4.781315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.647991, 0.201202, 4.398685>,  <0.648145, 0.131245, 4.169108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.647991, 0.201202, 4.398685>,  <0.647734, 0.317799, 4.781315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.647991, 0.201202, 4.398685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503574, -0.826528, 0.251525,
		-0.863952, 0.481544, -0.147318,
		0.000642, -0.291491, -0.956573,
		0.648184, 0.113755, 4.111713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.100219, -0.019339, 4.696689>,  <0.647734, 0.317799, 4.781315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.100219, -0.019339, 4.696689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.095856, -0.144417, 4.371250>,  <0.213500, -0.219463, 4.175987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.095856, -0.144417, 4.371250>,  <-0.100219, -0.019339, 4.696689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.095856, -0.144417, 4.371250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574361, -0.817990, -0.031666,
		-0.655611, 0.482820, -0.580567,
		0.490187, -0.312694, -0.813596,
		0.242912, -0.238225, 4.127171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.623267, -0.174187, 4.167668>,  <-0.100219, -0.019339, 4.696689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.623267, -0.174187, 4.167668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.294445, -0.370674, 4.052479>,  <-0.097152, -0.488567, 3.983365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.294445, -0.370674, 4.052479>,  <-0.623267, -0.174187, 4.167668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.294445, -0.370674, 4.052479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543312, -0.828022, -0.138531,
		-0.170399, 0.270340, -0.947565,
		0.822055, -0.491219, -0.287973,
		-0.047828, -0.518040, 3.966087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.735773, 3.355770, 4.501647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.558423, 3.351135, 4.143143>,  <-0.452012, 3.348354, 3.928040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.558423, 3.351135, 4.143143>,  <-0.735773, 3.355770, 4.501647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.558423, 3.351135, 4.143143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577947, 0.767992, 0.275979,
		0.685123, -0.640355, 0.347208,
		0.443377, -0.011588, -0.896260,
		-0.425409, 3.347659, 3.874265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.062733, 3.475580, 4.612826>,  <-0.735773, 3.355770, 4.501647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.062733, 3.475580, 4.612826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.038769, 3.550522, 4.233246>,  <-0.099670, 3.595487, 4.005498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.038769, 3.550522, 4.233246>,  <0.062733, 3.475580, 4.612826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.038769, 3.550522, 4.233246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676227, 0.735835, -0.035547,
		0.691612, -0.650726, -0.313415,
		-0.253753, 0.187355, -0.948951,
		-0.114895, 3.606728, 3.948561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.696921, 3.677146, 4.338292>,  <0.062733, 3.475580, 4.612826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.696921, 3.677146, 4.338292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.426546, 3.780472, 4.062210>,  <0.264321, 3.842467, 3.896561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.426546, 3.780472, 4.062210>,  <0.696921, 3.677146, 4.338292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.426546, 3.780472, 4.062210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504874, 0.844566, -0.178353,
		0.536853, -0.469022, -0.701290,
		-0.675937, 0.258314, -0.690205,
		0.223765, 3.857966, 3.855149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.077525, 3.871656, 3.794458>,  <0.696921, 3.677146, 4.338292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.077525, 3.871656, 3.794458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.724579, 4.059219, 3.810242>,  <0.512811, 4.171757, 3.819712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.724579, 4.059219, 3.810242>,  <1.077525, 3.871656, 3.794458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.724579, 4.059219, 3.810242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441982, 0.854629, -0.272510,
		-0.161505, -0.223013, -0.961344,
		-0.882365, 0.468908, 0.039459,
		0.459869, 4.199892, 3.822079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.973684, 4.263554, 3.221068>,  <1.077525, 3.871656, 3.794458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.973684, 4.263554, 3.221068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.729681, 4.434082, 3.488243>,  <0.583279, 4.536399, 3.648548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.729681, 4.434082, 3.488243>,  <0.973684, 4.263554, 3.221068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.729681, 4.434082, 3.488243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312384, 0.904051, -0.291732,
		-0.728222, 0.030694, -0.684654,
		-0.610008, 0.426321, 0.667938,
		0.546679, 4.561978, 3.688624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.539767, 4.813091, 2.839817>,  <0.973684, 4.263554, 3.221068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.539767, 4.813091, 2.839817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.558438, 4.893860, 3.231133>,  <0.569641, 4.942321, 3.465922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.558438, 4.893860, 3.231133>,  <0.539767, 4.813091, 2.839817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.558438, 4.893860, 3.231133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154987, 0.966032, -0.206786,
		-0.986813, 0.161275, 0.013799,
		0.046679, 0.201921, 0.978289,
		0.572442, 4.954436, 3.524619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.321576, 5.448824, 2.893794>,  <0.539767, 4.813091, 2.839817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.321576, 5.448824, 2.893794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.533279, 5.429779, 3.232643>,  <0.660302, 5.418352, 3.435953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.533279, 5.429779, 3.232643>,  <0.321576, 5.448824, 2.893794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.533279, 5.429779, 3.232643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296466, 0.945869, -0.132061,
		-0.794980, 0.321038, 0.514725,
		0.529259, -0.047612, 0.847124,
		0.692057, 5.415495, 3.486780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.181941, 6.016979, 3.232319>,  <0.321576, 5.448824, 2.893794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.181941, 6.016979, 3.232319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.521541, 5.903259, 3.410477>,  <0.725300, 5.835028, 3.517371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.521541, 5.903259, 3.410477>,  <0.181941, 6.016979, 3.232319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.521541, 5.903259, 3.410477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430846, 0.860445, -0.272040,
		-0.305896, 0.422857, 0.853006,
		0.848999, -0.284298, 0.445393,
		0.776240, 5.817970, 3.544095>
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
