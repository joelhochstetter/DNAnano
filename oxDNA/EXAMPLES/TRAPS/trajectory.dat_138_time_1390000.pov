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
	<36.535275, 53.134621, 49.907360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486557, 53.210632, 50.297039>,  <36.457325, 53.256241, 50.530846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486557, 53.210632, 50.297039>,  <36.535275, 53.134621, 49.907360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486557, 53.210632, 50.297039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291385, -0.931409, 0.218111,
		0.948821, 0.310431, 0.058070,
		-0.121795, 0.190028, 0.974195,
		36.450020, 53.267639, 50.589298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127460, 52.935188, 50.257343>,  <36.535275, 53.134621, 49.907360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127460, 52.935188, 50.257343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852116, 52.928627, 50.547417>,  <36.686909, 52.924690, 50.721462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852116, 52.928627, 50.547417>,  <37.127460, 52.935188, 50.257343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852116, 52.928627, 50.547417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313138, -0.908509, 0.276687,
		0.654296, 0.417542, 0.630519,
		-0.688361, -0.016404, 0.725182,
		36.645607, 52.923706, 50.764973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516441, 53.359097, 50.630463>,  <37.127460, 52.935188, 50.257343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516441, 53.359097, 50.630463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492138, 53.362957, 50.231220>,  <37.477554, 53.365273, 49.991676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492138, 53.362957, 50.231220>,  <37.516441, 53.359097, 50.630463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492138, 53.362957, 50.231220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848537, -0.526085, -0.056741,
		-0.525635, -0.850378, 0.023778,
		-0.060760, 0.009648, -0.998106,
		37.473911, 53.365852, 49.931789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803944, 53.821636, 50.843739>,  <37.516441, 53.359097, 50.630463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803944, 53.821636, 50.843739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730167, 53.521744, 51.097946>,  <36.685902, 53.341808, 51.250469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730167, 53.521744, 51.097946>,  <36.803944, 53.821636, 50.843739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730167, 53.521744, 51.097946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782019, -0.503620, -0.367170,
		0.595338, 0.429263, 0.679195,
		-0.184444, -0.749734, 0.635516,
		36.674835, 53.296825, 51.288601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450344, 53.720005, 51.438187>,  <36.803944, 53.821636, 50.843739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450344, 53.720005, 51.438187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208435, 53.441505, 51.283531>,  <37.063290, 53.274406, 51.190739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208435, 53.441505, 51.283531>,  <37.450344, 53.720005, 51.438187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208435, 53.441505, 51.283531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792075, -0.475358, -0.382951,
		0.082837, -0.537844, 0.838965,
		-0.604777, -0.696246, -0.386635,
		37.027000, 53.232632, 51.167542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883068, 54.324749, 51.705013>,  <37.450344, 53.720005, 51.438187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883068, 54.324749, 51.705013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914059, 53.931927, 51.773796>,  <37.932652, 53.696236, 51.815063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914059, 53.931927, 51.773796>,  <37.883068, 54.324749, 51.705013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914059, 53.931927, 51.773796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633076, 0.181700, 0.752462,
		-0.770202, 0.050561, 0.635792,
		0.077478, -0.982053, 0.171955,
		37.937302, 53.637310, 51.825382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604053, 54.147144, 52.388958>,  <37.883068, 54.324749, 51.705013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604053, 54.147144, 52.388958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919895, 53.926208, 52.282040>,  <38.109398, 53.793648, 52.217888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919895, 53.926208, 52.282040>,  <37.604053, 54.147144, 52.388958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919895, 53.926208, 52.282040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384471, 0.105826, 0.917051,
		-0.478236, -0.826875, 0.295919,
		0.789602, -0.552340, -0.267300,
		38.156776, 53.760506, 52.201851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805874, 53.993198, 53.139416>,  <37.604053, 54.147144, 52.388958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805874, 53.993198, 53.139416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127430, 53.941738, 52.907139>,  <38.320366, 53.910862, 52.767773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127430, 53.941738, 52.907139>,  <37.805874, 53.993198, 53.139416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127430, 53.941738, 52.907139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586675, 0.010942, 0.809749,
		-0.097817, -0.991630, 0.084270,
		0.803893, -0.128646, -0.580694,
		38.368599, 53.903145, 52.732929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117535, 53.292084, 53.322605>,  <37.805874, 53.993198, 53.139416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117535, 53.292084, 53.322605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376350, 53.575943, 53.211079>,  <38.531639, 53.746258, 53.144161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376350, 53.575943, 53.211079>,  <38.117535, 53.292084, 53.322605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376350, 53.575943, 53.211079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404207, -0.009192, 0.914621,
		0.646500, -0.704492, -0.292794,
		0.647035, 0.709652, -0.278818,
		38.570461, 53.788837, 53.127434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831745, 53.088383, 53.599533>,  <38.117535, 53.292084, 53.322605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831745, 53.088383, 53.599533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740299, 53.473969, 53.545120>,  <38.685432, 53.705318, 53.512474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740299, 53.473969, 53.545120>,  <38.831745, 53.088383, 53.599533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740299, 53.473969, 53.545120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249812, 0.193141, 0.948836,
		0.940918, 0.182940, -0.284966,
		-0.228619, 0.963965, -0.136029,
		38.671715, 53.763157, 53.504311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411213, 53.480549, 53.805714>,  <38.831745, 53.088383, 53.599533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411213, 53.480549, 53.805714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115540, 53.748634, 53.832306>,  <38.938133, 53.909485, 53.848263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115540, 53.748634, 53.832306>,  <39.411213, 53.480549, 53.805714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115540, 53.748634, 53.832306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279067, 0.214952, 0.935905,
		0.612963, 0.710361, -0.345923,
		-0.739187, 0.670211, 0.066481,
		38.893784, 53.949699, 53.852249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946644, 53.330154, 53.353531>,  <39.411213, 53.480549, 53.805714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946644, 53.330154, 53.353531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008759, 53.680233, 53.536797>,  <40.046028, 53.890282, 53.646755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008759, 53.680233, 53.536797>,  <39.946644, 53.330154, 53.353531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008759, 53.680233, 53.536797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964471, -0.033971, -0.261995,
		-0.213734, 0.482567, -0.849380,
		0.155285, 0.875200, 0.458162,
		40.055344, 53.942795, 53.674244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213573, 53.688484, 52.904625>,  <39.946644, 53.330154, 53.353531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213573, 53.688484, 52.904625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350983, 53.847637, 53.244904>,  <40.433426, 53.943127, 53.449070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350983, 53.847637, 53.244904>,  <40.213573, 53.688484, 52.904625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350983, 53.847637, 53.244904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937444, -0.199774, -0.285112,
		0.056507, 0.895423, -0.441616,
		0.343519, 0.397880, 0.850697,
		40.454037, 53.967003, 53.500114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727104, 54.207584, 52.773693>,  <40.213573, 53.688484, 52.904625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727104, 54.207584, 52.773693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831005, 54.057487, 53.129608>,  <40.893345, 53.967430, 53.343159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831005, 54.057487, 53.129608>,  <40.727104, 54.207584, 52.773693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831005, 54.057487, 53.129608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908727, -0.216762, -0.356693,
		0.326720, 0.901224, 0.284692,
		0.259750, -0.375246, 0.889787,
		40.908932, 53.944912, 53.396545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368164, 54.554642, 53.014420>,  <40.727104, 54.207584, 52.773693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368164, 54.554642, 53.014420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330666, 54.181240, 53.152855>,  <41.308167, 53.957199, 53.235916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330666, 54.181240, 53.152855>,  <41.368164, 54.554642, 53.014420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330666, 54.181240, 53.152855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953336, -0.184375, -0.239075,
		0.286988, 0.307527, 0.907229,
		-0.093748, -0.933506, 0.346090,
		41.302540, 53.901188, 53.256683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074287, 54.262745, 53.096352>,  <41.368164, 54.554642, 53.014420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074287, 54.262745, 53.096352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835041, 53.950432, 53.168610>,  <41.691494, 53.763042, 53.211964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835041, 53.950432, 53.168610>,  <42.074287, 54.262745, 53.096352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835041, 53.950432, 53.168610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778200, -0.619702, -0.101857,
		0.191472, 0.079654, 0.978260,
		-0.598117, -0.780785, 0.180642,
		41.655605, 53.716198, 53.222801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289349, 53.755894, 53.668194>,  <42.074287, 54.262745, 53.096352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289349, 53.755894, 53.668194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083046, 53.544220, 53.398685>,  <41.959267, 53.417217, 53.236980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083046, 53.544220, 53.398685>,  <42.289349, 53.755894, 53.668194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083046, 53.544220, 53.398685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686138, -0.726075, 0.045041,
		-0.513041, -0.439068, 0.737569,
		-0.515755, -0.529183, -0.673768,
		41.928318, 53.385464, 53.196556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075264, 52.980404, 53.920807>,  <42.289349, 53.755894, 53.668194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075264, 52.980404, 53.920807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163425, 53.053539, 53.537560>,  <42.216324, 53.097420, 53.307610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163425, 53.053539, 53.537560>,  <42.075264, 52.980404, 53.920807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163425, 53.053539, 53.537560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496785, -0.866370, -0.051054,
		-0.839421, -0.464727, -0.281783,
		0.220402, 0.182842, -0.958119,
		42.229546, 53.108391, 53.250122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860500, 52.421425, 53.434883>,  <42.075264, 52.980404, 53.920807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860500, 52.421425, 53.434883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194286, 52.632473, 53.371269>,  <42.394558, 52.759102, 53.333099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194286, 52.632473, 53.371269>,  <41.860500, 52.421425, 53.434883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194286, 52.632473, 53.371269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541968, -0.837989, 0.063597,
		-0.099716, -0.139262, -0.985222,
		0.834462, 0.527617, -0.159037,
		42.444626, 52.790756, 53.323559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453568, 51.946468, 53.046120>,  <41.860500, 52.421425, 53.434883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453568, 51.946468, 53.046120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608967, 52.257835, 53.243355>,  <42.702206, 52.444656, 53.361694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608967, 52.257835, 53.243355>,  <42.453568, 51.946468, 53.046120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608967, 52.257835, 53.243355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630535, -0.614798, 0.473761,
		0.671933, 0.126854, -0.729667,
		0.388500, 0.778416, 0.493088,
		42.725517, 52.491360, 53.391281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206257, 51.925964, 52.969505>,  <42.453568, 51.946468, 53.046120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206257, 51.925964, 52.969505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119125, 52.117149, 53.309883>,  <43.066845, 52.231861, 53.514111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119125, 52.117149, 53.309883>,  <43.206257, 51.925964, 52.969505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119125, 52.117149, 53.309883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809740, -0.398236, 0.430962,
		0.544859, 0.782920, -0.300275,
		-0.217829, 0.477958, 0.850945,
		43.053776, 52.260536, 53.565166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712273, 51.800129, 53.356915>,  <43.206257, 51.925964, 52.969505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712273, 51.800129, 53.356915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473106, 51.944077, 53.643410>,  <43.329605, 52.030445, 53.815308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473106, 51.944077, 53.643410>,  <43.712273, 51.800129, 53.356915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473106, 51.944077, 53.643410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492932, -0.539531, 0.682586,
		0.632072, 0.761184, 0.145204,
		-0.597916, 0.359868, 0.716234,
		43.293732, 52.052036, 53.858280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442268, 51.557198, 53.244263>,  <43.712273, 51.800129, 53.356915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442268, 51.557198, 53.244263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577892, 51.890316, 53.069229>,  <44.659267, 52.090187, 52.964207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577892, 51.890316, 53.069229>,  <44.442268, 51.557198, 53.244263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577892, 51.890316, 53.069229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914416, -0.401056, -0.054749,
		-0.221091, -0.381572, -0.897508,
		0.339061, 0.832800, -0.437586,
		44.679611, 52.140156, 52.937954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.969322, 51.368820, 52.729450>,  <44.442268, 51.557198, 53.244263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.969322, 51.368820, 52.729450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068295, 51.739395, 52.842934>,  <45.127678, 51.961739, 52.911026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068295, 51.739395, 52.842934>,  <44.969322, 51.368820, 52.729450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068295, 51.739395, 52.842934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960528, -0.272966, 0.053634,
		0.127132, 0.259243, -0.957408,
		0.247435, 0.926435, 0.283713,
		45.142525, 52.017326, 52.928047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343601, 51.600742, 52.332691>,  <44.969322, 51.368820, 52.729450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343601, 51.600742, 52.332691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490456, 51.760841, 52.668552>,  <45.578568, 51.856899, 52.870068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490456, 51.760841, 52.668552>,  <45.343601, 51.600742, 52.332691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490456, 51.760841, 52.668552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891098, -0.410211, -0.194089,
		0.266752, 0.819470, -0.507259,
		0.367134, 0.400244, 0.839653,
		45.600597, 51.880913, 52.920448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.907921, 52.049500, 52.162430>,  <45.343601, 51.600742, 52.332691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.907921, 52.049500, 52.162430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947090, 51.877792, 52.521572>,  <45.970592, 51.774769, 52.737057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947090, 51.877792, 52.521572>,  <45.907921, 52.049500, 52.162430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947090, 51.877792, 52.521572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850794, -0.431932, -0.299305,
		0.516294, 0.793197, 0.322924,
		0.097926, -0.429271, 0.897851,
		45.976467, 51.749012, 52.790928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.539047, 51.822750, 52.168201>,  <45.907921, 52.049500, 52.162430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.539047, 51.822750, 52.168201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.484802, 51.680752, 52.538193>,  <46.452255, 51.595551, 52.760189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.484802, 51.680752, 52.538193>,  <46.539047, 51.822750, 52.168201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.484802, 51.680752, 52.538193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884891, -0.463311, -0.048081,
		0.445621, 0.811985, 0.376965,
		-0.135611, -0.354998, 0.924979,
		46.444118, 51.574253, 52.815685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.180557, 51.958721, 52.529346>,  <46.539047, 51.822750, 52.168201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.180557, 51.958721, 52.529346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.953209, 51.653687, 52.652908>,  <46.816799, 51.470665, 52.727043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.953209, 51.653687, 52.652908>,  <47.180557, 51.958721, 52.529346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.953209, 51.653687, 52.652908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769107, -0.625805, -0.129777,
		0.292278, 0.163817, 0.942198,
		-0.568373, -0.762582, 0.308902,
		46.782696, 51.424911, 52.745579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.484051, 51.563652, 53.049694>,  <47.180557, 51.958721, 52.529346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.484051, 51.563652, 53.049694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234577, 51.324524, 52.848251>,  <47.084892, 51.181046, 52.727386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234577, 51.324524, 52.848251>,  <47.484051, 51.563652, 53.049694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234577, 51.324524, 52.848251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764819, -0.599779, -0.235196,
		-0.161447, -0.531857, 0.831302,
		-0.623688, -0.597824, -0.503607,
		47.047470, 51.145176, 52.697170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.535824, 50.765751, 53.210003>,  <47.484051, 51.563652, 53.049694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.535824, 50.765751, 53.210003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.468712, 50.894993, 52.837456>,  <47.428444, 50.972538, 52.613926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.468712, 50.894993, 52.837456>,  <47.535824, 50.765751, 53.210003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.468712, 50.894993, 52.837456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955929, -0.177580, -0.233806,
		-0.240938, -0.929551, -0.279075,
		-0.167776, 0.323109, -0.931371,
		47.418381, 50.991924, 52.558044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.570927, 50.254066, 52.638580>,  <47.535824, 50.765751, 53.210003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.570927, 50.254066, 52.638580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679268, 50.631428, 52.562035>,  <47.744274, 50.857845, 52.516109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679268, 50.631428, 52.562035>,  <47.570927, 50.254066, 52.638580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.679268, 50.631428, 52.562035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949847, -0.294205, -0.105988,
		-0.156289, -0.153056, -0.975780,
		0.270858, 0.943407, -0.191361,
		47.760525, 50.914452, 52.504627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.027344, 50.242844, 52.042004>,  <47.570927, 50.254066, 52.638580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.027344, 50.242844, 52.042004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.089382, 50.534565, 52.308556>,  <48.126606, 50.709599, 52.468487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.089382, 50.534565, 52.308556>,  <48.027344, 50.242844, 52.042004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.089382, 50.534565, 52.308556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981977, -0.187562, -0.023273,
		0.108015, 0.657984, -0.745245,
		0.155094, 0.729299, 0.666385,
		48.135910, 50.753353, 52.508472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.593594, 50.735817, 51.684074>,  <48.027344, 50.242844, 52.042004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.593594, 50.735817, 51.684074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.552261, 50.726250, 52.081818>,  <48.527462, 50.720509, 52.320465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.552261, 50.726250, 52.081818>,  <48.593594, 50.735817, 51.684074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.552261, 50.726250, 52.081818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992571, -0.067032, 0.101531,
		0.064226, 0.997464, 0.030666,
		-0.103329, -0.023917, 0.994360,
		48.521263, 50.719074, 52.380127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.889114, 51.346085, 52.031151>,  <48.593594, 50.735817, 51.684074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.889114, 51.346085, 52.031151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.891991, 50.975796, 52.182400>,  <48.893715, 50.753620, 52.273151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.891991, 50.975796, 52.182400>,  <48.889114, 51.346085, 52.031151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.891991, 50.975796, 52.182400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999725, 0.015096, 0.017946,
		-0.022321, 0.377892, 0.925581,
		0.007191, -0.925727, 0.378125,
		48.894150, 50.698078, 52.295837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.254910, 51.392918, 52.709160>,  <48.889114, 51.346085, 52.031151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.254910, 51.392918, 52.709160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.282330, 51.035446, 52.531784>,  <49.298782, 50.820961, 52.425358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.282330, 51.035446, 52.531784>,  <49.254910, 51.392918, 52.709160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.282330, 51.035446, 52.531784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996352, 0.083973, -0.015206,
		0.050826, -0.440776, 0.896177,
		0.068552, -0.893681, -0.443436,
		49.302895, 50.767342, 52.398754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.521580, 50.898720, 53.121326>,  <49.254910, 51.392918, 52.709160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.521580, 50.898720, 53.121326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.642059, 50.852726, 52.742683>,  <49.714348, 50.825130, 52.515499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.642059, 50.852726, 52.742683>,  <49.521580, 50.898720, 53.121326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.642059, 50.852726, 52.742683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922787, 0.285312, 0.258961,
		0.240301, -0.951512, 0.192042,
		0.301196, -0.114985, -0.946604,
		49.732418, 50.818230, 52.458702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.155621, 50.662964, 53.420559>,  <49.521580, 50.898720, 53.121326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.155621, 50.662964, 53.420559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.212868, 50.659203, 53.024696>,  <50.247215, 50.656944, 52.787178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.212868, 50.659203, 53.024696>,  <50.155621, 50.662964, 53.420559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.212868, 50.659203, 53.024696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980927, 0.134233, 0.140582,
		0.131523, -0.990905, 0.028439,
		0.143121, -0.009406, -0.989661,
		50.255802, 50.656380, 52.727798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.624298, 50.182930, 53.415577>,  <50.155621, 50.662964, 53.420559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.624298, 50.182930, 53.415577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.634079, 50.446709, 53.115036>,  <50.639950, 50.604977, 52.934711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.634079, 50.446709, 53.115036>,  <50.624298, 50.182930, 53.415577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.634079, 50.446709, 53.115036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807833, 0.429703, 0.403436,
		0.588903, -0.616836, -0.522213,
		0.024457, 0.659446, -0.751354,
		50.641415, 50.644543, 52.889629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.243969, 50.091496, 52.972691>,  <50.624298, 50.182930, 53.415577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.243969, 50.091496, 52.972691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.143433, 50.478577, 52.964989>,  <51.083111, 50.710827, 52.960365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.143433, 50.478577, 52.964989>,  <51.243969, 50.091496, 52.972691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.143433, 50.478577, 52.964989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935586, 0.248003, 0.251344,
		0.248003, 0.045157, -0.967706,
		-0.251344, 0.967706, -0.019257,
		51.068031, 50.768890, 52.959213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.651936, 50.459122, 52.573910>,  <51.243969, 50.091496, 52.972691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.651936, 50.459122, 52.573910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.521000, 50.677044, 52.882721>,  <51.442436, 50.807796, 53.068008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.521000, 50.677044, 52.882721>,  <51.651936, 50.459122, 52.573910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.521000, 50.677044, 52.882721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931033, 0.325459, 0.165089,
		-0.161322, 0.772827, -0.613770,
		-0.327343, 0.544808, 0.772031,
		51.422798, 50.840485, 53.114330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.928528, 51.148262, 52.413853>,  <51.651936, 50.459122, 52.573910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.928528, 51.148262, 52.413853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.874435, 51.063118, 52.800926>,  <51.841980, 51.012032, 53.033169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.874435, 51.063118, 52.800926>,  <51.928528, 51.148262, 52.413853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.874435, 51.063118, 52.800926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960542, 0.211410, 0.180736,
		-0.243049, 0.953937, 0.175873,
		-0.135230, -0.212861, 0.967679,
		51.833866, 50.999260, 53.091228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.238064, 51.695435, 52.868454>,  <51.928528, 51.148262, 52.413853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.238064, 51.695435, 52.868454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.216503, 51.358803, 53.083427>,  <52.203568, 51.156822, 53.212410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.216503, 51.358803, 53.083427>,  <52.238064, 51.695435, 52.868454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.216503, 51.358803, 53.083427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996690, -0.012546, 0.080324,
		-0.060856, 0.539984, 0.839472,
		-0.053905, -0.841582, 0.537433,
		52.200333, 51.106327, 53.244656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.628742, 51.834892, 53.385986>,  <52.238064, 51.695435, 52.868454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.628742, 51.834892, 53.385986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.609459, 51.437279, 53.346851>,  <52.597889, 51.198711, 53.323368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.609459, 51.437279, 53.346851>,  <52.628742, 51.834892, 53.385986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.609459, 51.437279, 53.346851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941601, -0.077911, 0.327593,
		-0.333261, -0.076334, 0.939739,
		-0.048210, -0.994034, -0.097841,
		52.594997, 51.139069, 53.317497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.659504, 51.421299, 54.088314>,  <52.628742, 51.834892, 53.385986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.659504, 51.421299, 54.088314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.821854, 51.254318, 53.763107>,  <52.919266, 51.154129, 53.567982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.821854, 51.254318, 53.763107>,  <52.659504, 51.421299, 54.088314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.821854, 51.254318, 53.763107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906039, 0.067165, 0.417831,
		-0.119819, -0.906212, 0.405491,
		0.405878, -0.417455, -0.813016,
		52.943619, 51.129082, 53.519203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.203674, 50.845364, 54.240147>,  <52.659504, 51.421299, 54.088314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.203674, 50.845364, 54.240147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.277020, 50.977615, 53.869835>,  <53.321026, 51.056969, 53.647648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.277020, 50.977615, 53.869835>,  <53.203674, 50.845364, 54.240147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.277020, 50.977615, 53.869835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980226, 0.009788, 0.197640,
		0.074407, -0.943709, -0.322299,
		0.183360, 0.330632, -0.925776,
		53.332027, 51.076805, 53.592102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.738743, 50.374847, 53.800282>,  <53.203674, 50.845364, 54.240147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.738743, 50.374847, 53.800282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.740635, 50.760983, 53.695892>,  <53.741772, 50.992664, 53.633259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.740635, 50.760983, 53.695892>,  <53.738743, 50.374847, 53.800282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.740635, 50.760983, 53.695892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992784, 0.026736, 0.116895,
		0.119821, -0.259644, -0.958242,
		0.004731, 0.965334, -0.260974,
		53.742054, 51.050583, 53.617599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.198151, 50.484268, 53.163731>,  <53.738743, 50.374847, 53.800282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.198151, 50.484268, 53.163731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.158218, 50.778446, 53.431808>,  <54.134258, 50.954952, 53.592655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.158218, 50.778446, 53.431808>,  <54.198151, 50.484268, 53.163731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.158218, 50.778446, 53.431808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993751, 0.039893, 0.104246,
		0.049931, 0.676413, -0.734828,
		-0.099828, 0.735442, 0.670194,
		54.128269, 50.999077, 53.632866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.623905, 51.132095, 53.063744>,  <54.198151, 50.484268, 53.163731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.623905, 51.132095, 53.063744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.566139, 51.071209, 53.454838>,  <54.531479, 51.034676, 53.689495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.566139, 51.071209, 53.454838>,  <54.623905, 51.132095, 53.063744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.566139, 51.071209, 53.454838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984247, 0.079746, 0.157793,
		-0.101990, 0.985124, 0.138305,
		-0.144417, -0.152219, 0.977739,
		54.522816, 51.025543, 53.748161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.827171, 51.790234, 53.461807>,  <54.623905, 51.132095, 53.063744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.827171, 51.790234, 53.461807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.882347, 51.474319, 53.700874>,  <54.915451, 51.284771, 53.844315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.882347, 51.474319, 53.700874>,  <54.827171, 51.790234, 53.461807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.882347, 51.474319, 53.700874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971529, 0.225254, 0.073438,
		-0.192628, 0.570523, 0.798372,
		0.137938, -0.789787, 0.597670,
		54.923729, 51.237385, 53.880177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.162876, 52.354267, 53.855721>,  <54.827171, 51.790234, 53.461807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.162876, 52.354267, 53.855721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.140022, 52.558372, 54.198967>,  <55.126308, 52.680836, 54.404915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.140022, 52.558372, 54.198967>,  <55.162876, 52.354267, 53.855721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.140022, 52.558372, 54.198967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987581, 0.154886, -0.026344,
		-0.146352, 0.845955, -0.512778,
		-0.057136, 0.510265, 0.858117,
		55.122883, 52.711452, 54.456402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.613628, 52.872440, 53.689285>,  <55.162876, 52.354267, 53.855721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.613628, 52.872440, 53.689285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.569603, 52.886871, 54.086594>,  <55.543186, 52.895531, 54.324978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.569603, 52.886871, 54.086594>,  <55.613628, 52.872440, 53.689285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.569603, 52.886871, 54.086594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960116, 0.262285, 0.096866,
		-0.257025, 0.964315, -0.063511,
		-0.110067, 0.036081, 0.993269,
		55.536583, 52.897697, 54.384575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.193871, 53.147854, 53.893330>,  <55.613628, 52.872440, 53.689285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.193871, 53.147854, 53.893330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.048508, 53.082905, 54.260277>,  <55.961288, 53.043938, 54.480446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.048508, 53.082905, 54.260277>,  <56.193871, 53.147854, 53.893330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.048508, 53.082905, 54.260277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910464, 0.146800, 0.386658,
		-0.197452, 0.975749, 0.094483,
		-0.363411, -0.162370, 0.917370,
		55.939484, 53.034195, 54.535488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.482258, 53.624924, 54.427273>,  <56.193871, 53.147854, 53.893330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.482258, 53.624924, 54.427273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.364738, 53.264359, 54.554478>,  <56.294228, 53.048019, 54.630798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.364738, 53.264359, 54.554478>,  <56.482258, 53.624924, 54.427273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.364738, 53.264359, 54.554478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871841, -0.116315, 0.475777,
		-0.391884, 0.417037, 0.820065,
		-0.293802, -0.901416, 0.318008,
		56.276596, 52.993935, 54.649879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.042034, 54.053574, 54.160614>,  <56.482258, 53.624924, 54.427273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.042034, 54.053574, 54.160614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.964737, 54.281212, 54.480309>,  <56.918358, 54.417797, 54.672127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.964737, 54.281212, 54.480309>,  <57.042034, 54.053574, 54.160614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.964737, 54.281212, 54.480309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385891, 0.793029, -0.471373,
		-0.902077, 0.217327, -0.372861,
		-0.193248, 0.569099, 0.799238,
		56.906761, 54.451942, 54.720081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.700359, 54.537846, 53.844273>,  <57.042034, 54.053574, 54.160614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.700359, 54.537846, 53.844273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.857986, 54.665367, 54.189079>,  <56.952560, 54.741879, 54.395966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.857986, 54.665367, 54.189079>,  <56.700359, 54.537846, 53.844273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.857986, 54.665367, 54.189079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454523, 0.747594, -0.484265,
		-0.798825, 0.582640, 0.149699,
		0.394066, 0.318801, 0.862020,
		56.976208, 54.761009, 54.447685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.599358, 55.306473, 53.866329>,  <56.700359, 54.537846, 53.844273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.599358, 55.306473, 53.866329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.939407, 55.217041, 54.057030>,  <57.143436, 55.163380, 54.171452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.939407, 55.217041, 54.057030>,  <56.599358, 55.306473, 53.866329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.939407, 55.217041, 54.057030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444796, 0.789508, -0.422886,
		-0.281850, 0.571565, 0.770632,
		0.850127, -0.223584, 0.476753,
		57.194447, 55.149967, 54.200054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.938347, 55.838840, 53.696102>,  <56.599358, 55.306473, 53.866329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.938347, 55.838840, 53.696102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.235970, 55.641968, 53.876831>,  <57.414543, 55.523846, 53.985268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.235970, 55.641968, 53.876831>,  <56.938347, 55.838840, 53.696102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.235970, 55.641968, 53.876831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572060, 0.818671, -0.050259,
		-0.345156, 0.295864, 0.890692,
		0.744053, -0.492182, 0.451821,
		57.459187, 55.494312, 54.012379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.143044, 56.141048, 54.251141>,  <56.938347, 55.838840, 53.696102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.143044, 56.141048, 54.251141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.478951, 55.948383, 54.150902>,  <57.680492, 55.832787, 54.090759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.478951, 55.948383, 54.150902>,  <57.143044, 56.141048, 54.251141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.478951, 55.948383, 54.150902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507348, 0.860500, 0.046232,
		0.193371, -0.165965, 0.966987,
		0.839765, -0.481659, -0.250598,
		57.730881, 55.803886, 54.075722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.703518, 56.237755, 54.809456>,  <57.143044, 56.141048, 54.251141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.703518, 56.237755, 54.809456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.819412, 56.182335, 54.430645>,  <57.888950, 56.149082, 54.203358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.819412, 56.182335, 54.430645>,  <57.703518, 56.237755, 54.809456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.819412, 56.182335, 54.430645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550990, 0.833206, 0.046675,
		0.782601, -0.535325, 0.317747,
		0.289735, -0.138548, -0.947026,
		57.906334, 56.140770, 54.146538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.530491, 56.288155, 54.588215>,  <57.703518, 56.237755, 54.809456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.530491, 56.288155, 54.588215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.225410, 56.428860, 54.371124>,  <58.042362, 56.513283, 54.240868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.225410, 56.428860, 54.371124>,  <58.530491, 56.288155, 54.588215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.225410, 56.428860, 54.371124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500467, 0.852531, -0.150744,
		0.409666, -0.386589, -0.826270,
		-0.762697, 0.351767, -0.542728,
		57.996601, 56.534389, 54.208305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.188824, 56.232063, 54.420052>,  <58.530491, 56.288155, 54.588215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.188824, 56.232063, 54.420052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.170387, 56.207890, 54.818893>,  <59.159325, 56.193386, 55.058201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.170387, 56.207890, 54.818893>,  <59.188824, 56.232063, 54.420052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.170387, 56.207890, 54.818893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486184, 0.873326, 0.030454,
		-0.872640, -0.483374, -0.069635,
		-0.046093, -0.060431, 0.997107,
		59.156559, 56.189758, 55.118027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.876934, 56.980148, 54.368431>,  <59.188824, 56.232063, 54.420052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.876934, 56.980148, 54.368431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.872963, 57.183483, 54.023991>,  <58.870583, 57.305485, 53.817326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.872963, 57.183483, 54.023991>,  <58.876934, 56.980148, 54.368431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.872963, 57.183483, 54.023991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172136, 0.847417, 0.502247,
		0.985023, 0.153212, 0.079092,
		-0.009926, 0.508340, -0.861099,
		58.869984, 57.335983, 53.765659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.927082, 56.762146, 54.999500>,  <58.876934, 56.980148, 54.368431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.927082, 56.762146, 54.999500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.208878, 57.043060, 55.040482>,  <59.377953, 57.211609, 55.065071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.208878, 57.043060, 55.040482>,  <58.927082, 56.762146, 54.999500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.208878, 57.043060, 55.040482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514390, 0.604711, -0.608053,
		-0.488981, 0.375663, 0.787258,
		0.704486, 0.702284, 0.102455,
		59.420223, 57.253746, 55.071217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.563755, 57.414402, 55.064888>,  <58.927082, 56.762146, 54.999500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.563755, 57.414402, 55.064888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.934021, 57.471588, 54.924767>,  <59.156181, 57.505901, 54.840694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.934021, 57.471588, 54.924767>,  <58.563755, 57.414402, 55.064888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.934021, 57.471588, 54.924767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360361, 0.615252, -0.701145,
		0.115285, 0.775258, 0.621034,
		0.925662, 0.142965, -0.350302,
		59.211720, 57.514477, 54.819675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.602348, 57.962086, 55.576569>,  <58.563755, 57.414402, 55.064888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.602348, 57.962086, 55.576569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.784180, 58.318157, 55.588799>,  <58.893280, 58.531799, 55.596138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.784180, 58.318157, 55.588799>,  <58.602348, 57.962086, 55.576569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.784180, 58.318157, 55.588799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848905, -0.443382, 0.287701,
		0.269662, -0.104827, -0.957232,
		0.454579, 0.890182, 0.030575,
		58.920555, 58.585213, 55.597973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.335556, 57.902691, 55.293392>,  <58.602348, 57.962086, 55.576569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.335556, 57.902691, 55.293392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.365608, 58.157845, 55.599976>,  <59.383640, 58.310936, 55.783928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.365608, 58.157845, 55.599976>,  <59.335556, 57.902691, 55.293392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.365608, 58.157845, 55.599976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725192, -0.562523, 0.397070,
		0.684436, 0.526001, -0.504847,
		0.075129, 0.637880, 0.766463,
		59.388145, 58.349209, 55.829914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.031406, 58.193741, 55.379578>,  <59.335556, 57.902691, 55.293392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.031406, 58.193741, 55.379578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.811096, 58.135590, 55.708336>,  <59.678909, 58.100700, 55.905590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.811096, 58.135590, 55.708336>,  <60.031406, 58.193741, 55.379578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.811096, 58.135590, 55.708336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703241, -0.611207, 0.363150,
		0.449556, 0.778005, 0.438870,
		-0.550773, -0.145376, 0.821897,
		59.645863, 58.091976, 55.954906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.307163, 58.629322, 55.975460>,  <60.031406, 58.193741, 55.379578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.307163, 58.629322, 55.975460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.113853, 58.296394, 56.084038>,  <59.997868, 58.096638, 56.149185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.113853, 58.296394, 56.084038>,  <60.307163, 58.629322, 55.975460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.113853, 58.296394, 56.084038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797542, -0.290686, 0.528609,
		-0.361067, 0.471955, 0.804294,
		-0.483277, -0.832322, 0.271447,
		59.968872, 58.046700, 56.165470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.588646, 59.117409, 56.423573>,  <60.307163, 58.629322, 55.975460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.588646, 59.117409, 56.423573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.800179, 58.824341, 56.594933>,  <60.927097, 58.648499, 56.697746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.800179, 58.824341, 56.594933>,  <60.588646, 59.117409, 56.423573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.800179, 58.824341, 56.594933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845580, 0.411406, -0.340205,
		0.073014, 0.542156, 0.837099,
		0.528832, -0.732674, 0.428398,
		60.958828, 58.604538, 56.723454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.207275, 59.428009, 56.553699>,  <60.588646, 59.117409, 56.423573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.207275, 59.428009, 56.553699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.265053, 59.032387, 56.565689>,  <61.299721, 58.795013, 56.572884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.265053, 59.032387, 56.565689>,  <61.207275, 59.428009, 56.553699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.265053, 59.032387, 56.565689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973990, 0.136766, -0.180662,
		0.174586, 0.055291, 0.983088,
		0.144442, -0.989059, 0.029976,
		61.308384, 58.735668, 56.574680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.724552, 59.243153, 57.047951>,  <61.207275, 59.428009, 56.553699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.724552, 59.243153, 57.047951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.727722, 58.937565, 56.789871>,  <61.729626, 58.754211, 56.635021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.727722, 58.937565, 56.789871>,  <61.724552, 59.243153, 57.047951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.727722, 58.937565, 56.789871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977461, 0.142046, -0.156184,
		0.210968, -0.629422, 0.747877,
		0.007927, -0.763970, -0.645203,
		61.730099, 58.708374, 56.596310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.260746, 58.658360, 57.170090>,  <61.724552, 59.243153, 57.047951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.260746, 58.658360, 57.170090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.146057, 58.743332, 56.796425>,  <62.077244, 58.794315, 56.572224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.146057, 58.743332, 56.796425>,  <62.260746, 58.658360, 57.170090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.146057, 58.743332, 56.796425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952626, 0.166483, -0.254535,
		0.101452, -0.962890, -0.250100,
		-0.286726, 0.212428, -0.934164,
		62.060040, 58.807060, 56.516174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.669689, 58.320835, 56.614178>,  <62.260746, 58.658360, 57.170090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.669689, 58.320835, 56.614178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.502388, 58.642303, 56.444862>,  <62.402008, 58.835186, 56.343273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.502388, 58.642303, 56.444862>,  <62.669689, 58.320835, 56.614178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.502388, 58.642303, 56.444862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891800, 0.274828, -0.359392,
		-0.172501, -0.527807, -0.831663,
		-0.418254, 0.803673, -0.423290,
		62.376911, 58.883404, 56.317875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.763641, 58.192337, 55.929512>,  <62.669689, 58.320835, 56.614178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.763641, 58.192337, 55.929512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.738144, 58.575726, 56.040695>,  <62.722843, 58.805759, 56.107407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.738144, 58.575726, 56.040695>,  <62.763641, 58.192337, 55.929512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.738144, 58.575726, 56.040695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997729, 0.067282, -0.003188,
		-0.021757, 0.277127, -0.960587,
		-0.063747, 0.958475, 0.277962,
		62.719021, 58.863270, 56.124084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.112270, 58.728085, 55.530487>,  <62.763641, 58.192337, 55.929512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.112270, 58.728085, 55.530487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.082916, 58.925137, 55.877342>,  <63.065304, 59.043369, 56.085457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.082916, 58.925137, 55.877342>,  <63.112270, 58.728085, 55.530487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.082916, 58.925137, 55.877342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968002, 0.244401, -0.056928,
		-0.239974, 0.835212, -0.494806,
		-0.073384, 0.492634, 0.867137,
		63.060902, 59.072926, 56.137482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.502892, 59.374878, 55.469219>,  <63.112270, 58.728085, 55.530487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.502892, 59.374878, 55.469219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.466583, 59.299129, 55.860298>,  <63.444798, 59.253681, 56.094948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.466583, 59.299129, 55.860298>,  <63.502892, 59.374878, 55.469219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.466583, 59.299129, 55.860298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954255, 0.264307, 0.139786,
		-0.284884, 0.945664, 0.156718,
		-0.090769, -0.189372, 0.977701,
		63.439354, 59.242317, 56.153610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.219063, 59.574135, 55.583061>,  <63.502892, 59.374878, 55.469219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.219063, 59.574135, 55.583061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.047829, 59.496872, 55.936203>,  <63.945087, 59.450516, 56.148087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.047829, 59.496872, 55.936203>,  <64.219063, 59.574135, 55.583061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.047829, 59.496872, 55.936203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833685, 0.292701, 0.468290,
		-0.348866, 0.936491, 0.035730,
		-0.428091, -0.193158, 0.882852,
		63.919403, 59.438923, 56.201057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.299355, 60.217335, 55.987457>,  <64.219063, 59.574135, 55.583061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.299355, 60.217335, 55.987457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.293938, 59.867516, 56.181358>,  <64.290688, 59.657623, 56.297699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.293938, 59.867516, 56.181358>,  <64.299355, 60.217335, 55.987457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.293938, 59.867516, 56.181358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926086, 0.171850, 0.335904,
		-0.377069, 0.453467, 0.807581,
		-0.013539, -0.874549, 0.484749,
		64.289879, 59.605152, 56.326782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.342735, 60.167995, 56.659161>,  <64.299355, 60.217335, 55.987457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.342735, 60.167995, 56.659161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.532227, 59.838455, 56.534676>,  <64.645920, 59.640732, 56.459984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.532227, 59.838455, 56.534676>,  <64.342735, 60.167995, 56.659161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.532227, 59.838455, 56.534676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869239, 0.380672, 0.315455,
		-0.141419, -0.419956, 0.896458,
		0.473734, -0.823848, -0.311208,
		64.674347, 59.591301, 56.441315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.755508, 59.913727, 57.290920>,  <64.342735, 60.167995, 56.659161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.755508, 59.913727, 57.290920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.896645, 59.816807, 56.929413>,  <64.981323, 59.758656, 56.712509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.896645, 59.816807, 56.929413>,  <64.755508, 59.913727, 57.290920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.896645, 59.816807, 56.929413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887552, 0.392475, 0.241279,
		0.296243, -0.887272, 0.353536,
		0.352834, -0.242304, -0.903768,
		65.002495, 59.744114, 56.658283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.120628, 59.218300, 57.635456>,  <64.755508, 59.913727, 57.290920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.120628, 59.218300, 57.635456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.215820, 59.309258, 58.013168>,  <65.272934, 59.363831, 58.239796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.215820, 59.309258, 58.013168>,  <65.120628, 59.218300, 57.635456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.215820, 59.309258, 58.013168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957317, -0.219109, -0.188506,
		0.164034, 0.948833, -0.269830,
		0.237983, 0.227391, 0.944276,
		65.287216, 59.377476, 58.296452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.758972, 59.773968, 57.738205>,  <65.120628, 59.218300, 57.635456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.758972, 59.773968, 57.738205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.725761, 59.504730, 58.032158>,  <65.705833, 59.343189, 58.208530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.725761, 59.504730, 58.032158>,  <65.758972, 59.773968, 57.738205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.725761, 59.504730, 58.032158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933147, -0.311339, -0.179736,
		0.349777, 0.670830, 0.653944,
		-0.083026, -0.673094, 0.734882,
		65.700851, 59.302803, 58.252621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.447197, 59.770206, 58.065632>,  <65.758972, 59.773968, 57.738205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.447197, 59.770206, 58.065632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.256256, 59.426346, 58.138443>,  <66.141693, 59.220032, 58.182129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.256256, 59.426346, 58.138443>,  <66.447197, 59.770206, 58.065632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.256256, 59.426346, 58.138443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856459, -0.501499, -0.122382,
		0.196494, 0.097482, 0.975647,
		-0.477356, -0.859649, 0.182031,
		66.113052, 59.168449, 58.193054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.818001, 59.264885, 58.542492>,  <66.447197, 59.770206, 58.065632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.818001, 59.264885, 58.542492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.567596, 59.055038, 58.311707>,  <66.417351, 58.929131, 58.173237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.567596, 59.055038, 58.311707>,  <66.818001, 59.264885, 58.542492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.567596, 59.055038, 58.311707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672997, -0.737218, -0.059877,
		-0.393932, -0.425776, 0.814575,
		-0.626013, -0.524619, -0.576960,
		66.379791, 58.897652, 58.138618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.910156, 58.512283, 58.716042>,  <66.818001, 59.264885, 58.542492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.910156, 58.512283, 58.716042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.799393, 58.551384, 58.333679>,  <66.732933, 58.574844, 58.104259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.799393, 58.551384, 58.333679>,  <66.910156, 58.512283, 58.716042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.799393, 58.551384, 58.333679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600752, -0.758803, -0.251626,
		-0.749943, -0.643944, 0.151402,
		-0.276918, 0.097750, -0.955909,
		66.716316, 58.580708, 58.046906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.566017, 57.927723, 58.582336>,  <66.910156, 58.512283, 58.716042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.566017, 57.927723, 58.582336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.779915, 58.092224, 58.287064>,  <66.908257, 58.190926, 58.109901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.779915, 58.092224, 58.287064>,  <66.566017, 57.927723, 58.582336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.779915, 58.092224, 58.287064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598301, -0.801168, -0.012919,
		-0.596722, -0.434747, -0.674477,
		0.534752, 0.411249, -0.738183,
		66.940338, 58.215599, 58.065609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.775879, 57.365692, 58.149136>,  <66.566017, 57.927723, 58.582336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.775879, 57.365692, 58.149136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.054588, 57.652290, 58.135643>,  <67.221817, 57.824249, 58.127548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.054588, 57.652290, 58.135643>,  <66.775879, 57.365692, 58.149136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.054588, 57.652290, 58.135643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717256, -0.696414, 0.023454,
		-0.006687, -0.040537, -0.999156,
		0.696777, 0.716494, -0.033732,
		67.263618, 57.867237, 58.125523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.243019, 57.188641, 57.552799>,  <66.775879, 57.365692, 58.149136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.243019, 57.188641, 57.552799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.414894, 57.400452, 57.845367>,  <67.518021, 57.527538, 58.020908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.414894, 57.400452, 57.845367>,  <67.243019, 57.188641, 57.552799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.414894, 57.400452, 57.845367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679135, -0.723340, 0.124718,
		0.595107, 0.443143, -0.670427,
		0.429679, 0.529531, 0.731418,
		67.543800, 57.559311, 58.064793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.975349, 57.290508, 57.504528>,  <67.243019, 57.188641, 57.552799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.975349, 57.290508, 57.504528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.883926, 57.255493, 57.892365>,  <67.829071, 57.234482, 58.125065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.883926, 57.255493, 57.892365>,  <67.975349, 57.290508, 57.504528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.883926, 57.255493, 57.892365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582209, -0.810512, 0.064058,
		0.780255, 0.579143, 0.236209,
		-0.228549, -0.087542, 0.969589,
		67.815361, 57.229229, 58.183243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.638214, 57.171413, 57.858944>,  <67.975349, 57.290508, 57.504528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.638214, 57.171413, 57.858944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.343994, 57.010952, 58.077316>,  <68.167465, 56.914677, 58.208340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.343994, 57.010952, 58.077316>,  <68.638214, 57.171413, 57.858944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.343994, 57.010952, 58.077316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487096, -0.873226, 0.014632,
		0.470849, 0.276683, 0.837704,
		-0.735553, -0.401153, 0.545929,
		68.123329, 56.890606, 58.241096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.950813, 56.930538, 58.560276>,  <68.638214, 57.171413, 57.858944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.950813, 56.930538, 58.560276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.642639, 56.707783, 58.684418>,  <68.457733, 56.574127, 58.758904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.642639, 56.707783, 58.684418>,  <68.950813, 56.930538, 58.560276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.642639, 56.707783, 58.684418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627876, 0.578395, -0.520798,
		0.110522, -0.596098, -0.795269,
		-0.770426, -0.556890, 0.310350,
		68.411514, 56.540714, 58.777523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.590553, 56.638283, 58.358639>,  <68.950813, 56.930538, 58.560276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.590553, 56.638283, 58.358639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.761108, 56.727108, 58.709381>,  <69.863441, 56.780403, 58.919827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.761108, 56.727108, 58.709381>,  <69.590553, 56.638283, 58.358639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.761108, 56.727108, 58.709381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903130, 0.050450, 0.426394,
		0.050450, -0.973725, 0.222067,
		-0.426394, -0.222067, -0.876855,
		69.889023, 56.793728, 58.972439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.356880, 56.880814, 58.547604>,  <69.590553, 56.638283, 58.358639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.356880, 56.880814, 58.547604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.599998, 56.641354, 58.756294>,  <70.745872, 56.497677, 58.881508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.599998, 56.641354, 58.756294>,  <70.356880, 56.880814, 58.547604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.599998, 56.641354, 58.756294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758523, -0.243264, 0.604537,
		-0.234960, -0.763207, -0.601920,
		0.607813, -0.598613, 0.521753,
		70.782341, 56.461758, 58.912811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.540970, 56.913509, 59.263012>,  <70.356880, 56.880814, 58.547604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.540970, 56.913509, 59.263012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.882225, 56.705273, 59.276550>,  <71.086975, 56.580330, 59.284676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.882225, 56.705273, 59.276550>,  <70.540970, 56.913509, 59.263012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.882225, 56.705273, 59.276550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293109, 0.531990, 0.794401,
		-0.431566, -0.667810, 0.606449,
		0.853134, -0.520592, 0.033848,
		71.138168, 56.549095, 59.286705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.738518, 56.582016, 59.927685>,  <70.540970, 56.913509, 59.263012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.738518, 56.582016, 59.927685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.086411, 56.660694, 59.746628>,  <71.295143, 56.707901, 59.637993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.086411, 56.660694, 59.746628>,  <70.738518, 56.582016, 59.927685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.086411, 56.660694, 59.746628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378051, 0.324049, 0.867219,
		0.317237, -0.925371, 0.207484,
		0.869735, 0.196674, -0.452638,
		71.347328, 56.719704, 59.610836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.362968, 56.383186, 60.269657>,  <70.738518, 56.582016, 59.927685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.362968, 56.383186, 60.269657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.537605, 56.664074, 60.044701>,  <71.642387, 56.832607, 59.909725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.537605, 56.664074, 60.044701>,  <71.362968, 56.383186, 60.269657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.537605, 56.664074, 60.044701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630118, 0.207510, 0.748259,
		0.642141, -0.681053, -0.351882,
		0.436585, 0.702215, -0.562394,
		71.668579, 56.874737, 59.875984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.924393, 56.541969, 60.688900>,  <71.362968, 56.383186, 60.269657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.924393, 56.541969, 60.688900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.998566, 56.745819, 60.352829>,  <72.043068, 56.868130, 60.151188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.998566, 56.745819, 60.352829>,  <71.924393, 56.541969, 60.688900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.998566, 56.745819, 60.352829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743508, 0.486277, 0.459054,
		0.642505, -0.709800, -0.288742,
		0.185428, 0.509626, -0.840177,
		72.054192, 56.898708, 60.100777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.573555, 56.307636, 60.416138>,  <71.924393, 56.541969, 60.688900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.573555, 56.307636, 60.416138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.493927, 56.699486, 60.405579>,  <72.446152, 56.934597, 60.399242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.493927, 56.699486, 60.405579>,  <72.573555, 56.307636, 60.416138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.493927, 56.699486, 60.405579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888073, 0.191729, 0.417811,
		0.414361, 0.059733, -0.908150,
		-0.199076, 0.979628, -0.026398,
		72.434204, 56.993374, 60.397659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.227829, 56.639233, 60.316929>,  <72.573555, 56.307636, 60.416138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.227829, 56.639233, 60.316929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.984573, 56.915688, 60.473129>,  <72.838623, 57.081562, 60.566849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.984573, 56.915688, 60.473129>,  <73.227829, 56.639233, 60.316929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.984573, 56.915688, 60.473129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772400, 0.401644, 0.492017,
		0.183210, 0.600839, -0.778092,
		-0.608139, 0.691140, 0.390502,
		72.802132, 57.123028, 60.590279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.444130, 57.365154, 60.334934>,  <73.227829, 56.639233, 60.316929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.444130, 57.365154, 60.334934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.206612, 57.383400, 60.656265>,  <73.064102, 57.394348, 60.849064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.206612, 57.383400, 60.656265>,  <73.444130, 57.365154, 60.334934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.206612, 57.383400, 60.656265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730645, 0.448723, 0.514593,
		-0.336998, 0.892506, -0.299776,
		-0.593794, 0.045613, 0.803324,
		73.028473, 57.397083, 60.897263>
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
