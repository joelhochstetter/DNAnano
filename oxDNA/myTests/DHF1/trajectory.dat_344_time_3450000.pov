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
	<3.238701, 4.154649, 1.215136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276386, 3.922623, 0.891495>,  <3.298998, 3.783407, 0.697310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276386, 3.922623, 0.891495>,  <3.238701, 4.154649, 1.215136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.276386, 3.922623, 0.891495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724958, 0.596985, -0.343577,
		0.682319, -0.554196, 0.476768,
		0.094214, -0.580066, -0.809103,
		3.304651, 3.748603, 0.648764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.946886, 4.135235, 0.954457>,  <3.238701, 4.154649, 1.215136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.946886, 4.135235, 0.954457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.746494, 4.027542, 0.625450>,  <3.626260, 3.962926, 0.428046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.746494, 4.027542, 0.625450>,  <3.946886, 4.135235, 0.954457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.746494, 4.027542, 0.625450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660642, 0.494976, -0.564402,
		0.559082, -0.826143, -0.070105,
		-0.500978, -0.269233, -0.822517,
		3.596201, 3.946772, 0.378695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.273964, 3.763717, 0.435926>,  <3.946886, 4.135235, 0.954457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.273964, 3.763717, 0.435926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.997643, 3.997322, 0.265411>,  <3.831850, 4.137485, 0.163103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.997643, 3.997322, 0.265411>,  <4.273964, 3.763717, 0.435926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.997643, 3.997322, 0.265411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722785, 0.542070, -0.428651,
		-0.019261, -0.604227, -0.796579,
		-0.690804, 0.584012, -0.426286,
		3.790401, 4.172526, 0.137526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.334559, 3.906261, -0.263495>,  <4.273964, 3.763717, 0.435926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.334559, 3.906261, -0.263495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.161911, 4.230156, -0.104485>,  <4.058322, 4.424493, -0.009078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.161911, 4.230156, -0.104485>,  <4.334559, 3.906261, -0.263495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.161911, 4.230156, -0.104485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715478, 0.575694, -0.395812,
		-0.549358, 0.113580, -0.827832,
		-0.431621, 0.809738, 0.397526,
		4.032424, 4.473077, 0.014773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.282280, 4.358310, -0.889640>,  <4.334559, 3.906261, -0.263495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.282280, 4.358310, -0.889640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.297829, 4.492874, -0.513275>,  <4.307158, 4.573613, -0.287456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.297829, 4.492874, -0.513275>,  <4.282280, 4.358310, -0.889640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.297829, 4.492874, -0.513275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933938, 0.322594, -0.153922,
		-0.355314, 0.884737, -0.301648,
		0.038871, 0.336411, 0.940913,
		4.309490, 4.593798, -0.231001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.557758, 5.053629, -0.912442>,  <4.282280, 4.358310, -0.889640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.557758, 5.053629, -0.912442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.625378, 4.928322, -0.538643>,  <4.665949, 4.853137, -0.314363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.625378, 4.928322, -0.538643>,  <4.557758, 5.053629, -0.912442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.625378, 4.928322, -0.538643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941124, 0.332938, -0.058638,
		-0.292760, 0.889390, 0.351107,
		0.169049, -0.313268, 0.934497,
		4.676092, 4.834342, -0.258294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.900873, 5.552405, -0.570559>,  <4.557758, 5.053629, -0.912442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.900873, 5.552405, -0.570559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.986053, 5.241188, -0.334152>,  <5.037162, 5.054458, -0.192308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.986053, 5.241188, -0.334152>,  <4.900873, 5.552405, -0.570559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.986053, 5.241188, -0.334152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944382, 0.319039, 0.079724,
		-0.250586, 0.541168, 0.802710,
		0.212952, -0.778043, 0.591016,
		5.049939, 5.007775, -0.156847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.163108, 5.793222, 0.040016>,  <4.900873, 5.552405, -0.570559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.163108, 5.793222, 0.040016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.290810, 5.414238, 0.047974>,  <5.367431, 5.186848, 0.052748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.290810, 5.414238, 0.047974>,  <5.163108, 5.793222, 0.040016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.290810, 5.414238, 0.047974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931460, 0.317591, 0.177535,
		-0.174525, -0.038149, 0.983913,
		0.319254, -0.947460, 0.019893,
		5.386586, 5.130000, 0.053942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.291782, 5.676120, -0.539005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.460565, 5.425278, -0.277107>,  <1.561834, 5.274772, -0.119969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.460565, 5.425278, -0.277107>,  <1.291782, 5.676120, -0.539005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.460565, 5.425278, -0.277107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745095, -0.651309, -0.143631,
		0.516513, -0.427241, -0.742078,
		0.421957, -0.627106, 0.654745,
		1.587152, 5.237146, -0.080684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.212427, 5.006760, -0.747724>,  <1.291782, 5.676120, -0.539005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.212427, 5.006760, -0.747724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.265005, 4.988831, -0.351601>,  <1.296552, 4.978073, -0.113926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.265005, 4.988831, -0.351601>,  <1.212427, 5.006760, -0.747724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.265005, 4.988831, -0.351601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824021, -0.560295, 0.084013,
		0.551099, -0.827079, -0.110585,
		0.131446, -0.044825, 0.990309,
		1.304439, 4.975383, -0.054508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.111051, 4.325053, -0.525991>,  <1.212427, 5.006760, -0.747724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.111051, 4.325053, -0.525991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.024199, 4.590775, -0.239899>,  <0.972088, 4.750207, -0.068243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.024199, 4.590775, -0.239899>,  <1.111051, 4.325053, -0.525991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.024199, 4.590775, -0.239899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906981, -0.408185, 0.103781,
		0.360889, -0.626166, 0.691140,
		-0.217129, 0.664304, 0.715230,
		0.959061, 4.790066, -0.025330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.804703, 3.916715, -0.081235>,  <1.111051, 4.325053, -0.525991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.804703, 3.916715, -0.081235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.684334, 4.293671, -0.022789>,  <0.612112, 4.519844, 0.012279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.684334, 4.293671, -0.022789>,  <0.804703, 3.916715, -0.081235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.684334, 4.293671, -0.022789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951915, -0.306064, 0.013529,
		0.057470, -0.135018, 0.989175,
		-0.300924, 0.942388, 0.146115,
		0.594057, 4.576387, 0.021046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.203098, 3.833942, 0.409805>,  <0.804703, 3.916715, -0.081235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.203098, 3.833942, 0.409805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.169980, 4.209122, 0.275108>,  <0.150109, 4.434230, 0.194290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.169980, 4.209122, 0.275108>,  <0.203098, 3.833942, 0.409805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.169980, 4.209122, 0.275108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992327, -0.046458, 0.114579,
		0.091825, 0.343644, 0.934600,
		-0.082794, 0.937950, -0.336741,
		0.145142, 4.490507, 0.174086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.046023, 4.448075, 0.940376>,  <0.203098, 3.833942, 0.409805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.046023, 4.448075, 0.940376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.139978, 4.537750, 0.562050>,  <-0.196352, 4.591556, 0.335054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.139978, 4.537750, 0.562050>,  <-0.046023, 4.448075, 0.940376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.139978, 4.537750, 0.562050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970636, -0.106045, 0.215918,
		-0.051892, 0.968759, 0.242515,
		-0.234889, 0.224189, -0.945815,
		-0.210445, 4.605007, 0.278305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.514642, 5.094470, 0.912119>,  <-0.046023, 4.448075, 0.940376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.514642, 5.094470, 0.912119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.578240, 4.872406, 0.585556>,  <-0.616399, 4.739168, 0.389619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.578240, 4.872406, 0.585556>,  <-0.514642, 5.094470, 0.912119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.578240, 4.872406, 0.585556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964112, -0.090781, 0.249493,
		-0.212622, 0.826775, -0.520801,
		-0.158996, -0.555159, -0.816406,
		-0.625939, 4.705858, 0.340634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.058608, 5.369674, 0.682029>,  <-0.514642, 5.094470, 0.912119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.058608, 5.369674, 0.682029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.028753, 4.990982, 0.556725>,  <-1.010839, 4.763767, 0.481542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.028753, 4.990982, 0.556725>,  <-1.058608, 5.369674, 0.682029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.028753, 4.990982, 0.556725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932189, -0.177816, 0.315286,
		-0.354193, 0.268485, -0.895803,
		0.074639, -0.946730, -0.313260,
		-1.006361, 4.706963, 0.462746>
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
