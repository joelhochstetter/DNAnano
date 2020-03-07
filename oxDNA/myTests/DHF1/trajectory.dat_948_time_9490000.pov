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
	<0.379844, 0.483489, 3.567918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.294609, 0.750822, 3.282843>,  <0.243468, 0.911222, 3.111798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.294609, 0.750822, 3.282843>,  <0.379844, 0.483489, 3.567918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.294609, 0.750822, 3.282843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276200, -0.658482, -0.700082,
		-0.937181, -0.346023, -0.044279,
		-0.213088, 0.668333, -0.712688,
		0.230683, 0.951322, 3.069036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.032101, 0.126110, 2.979746>,  <0.379844, 0.483489, 3.567918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.032101, 0.126110, 2.979746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.187302, 0.468637, 2.843410>,  <0.280422, 0.674154, 2.761609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.187302, 0.468637, 2.843410>,  <0.032101, 0.126110, 2.979746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.187302, 0.468637, 2.843410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265811, -0.458066, -0.848245,
		-0.882496, 0.238522, -0.405350,
		0.388002, 0.856319, -0.340839,
		0.303702, 0.725533, 2.741159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.256002, 0.373352, 2.317473>,  <0.032101, 0.126110, 2.979746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.256002, 0.373352, 2.317473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.128860, 0.461838, 2.381121>,  <0.359778, 0.514929, 2.419309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.128860, 0.461838, 2.381121>,  <-0.256002, 0.373352, 2.317473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.128860, 0.461838, 2.381121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250694, -0.489720, -0.835061,
		-0.106803, 0.843350, -0.526644,
		0.962157, 0.221213, 0.159119,
		0.417508, 0.528202, 2.428856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.127130, 0.564556, 1.693327>,  <-0.256002, 0.373352, 2.317473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.127130, 0.564556, 1.693327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.414749, 0.460926, 1.951273>,  <0.587320, 0.398748, 2.106041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.414749, 0.460926, 1.951273>,  <0.127130, 0.564556, 1.693327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.414749, 0.460926, 1.951273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465792, -0.508986, -0.723858,
		0.515761, 0.820862, -0.245310,
		0.719047, -0.259074, 0.644866,
		0.630463, 0.383204, 2.144733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.750925, 0.877488, 1.331926>,  <0.127130, 0.564556, 1.693327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.750925, 0.877488, 1.331926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.850693, 0.579184, 1.579031>,  <0.910553, 0.400201, 1.727294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.850693, 0.579184, 1.579031>,  <0.750925, 0.877488, 1.331926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.850693, 0.579184, 1.579031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530317, -0.428578, -0.731494,
		0.810280, 0.510058, 0.288595,
		0.249419, -0.745762, 0.617761,
		0.925519, 0.355455, 1.764359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.495876, 0.632958, 1.248860>,  <0.750925, 0.877488, 1.331926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.495876, 0.632958, 1.248860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.327278, 0.311934, 1.417732>,  <1.226119, 0.119319, 1.519056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.327278, 0.311934, 1.417732>,  <1.495876, 0.632958, 1.248860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.327278, 0.311934, 1.417732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535861, -0.596010, -0.598017,
		0.731570, -0.025831, 0.681277,
		-0.421495, -0.802561, 0.422181,
		1.200830, 0.071165, 1.544387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.067279, 0.195414, 1.475339>,  <1.495876, 0.632958, 1.248860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.067279, 0.195414, 1.475339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.737053, -0.017872, 1.401447>,  <1.538917, -0.145843, 1.357112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.737053, -0.017872, 1.401447>,  <2.067279, 0.195414, 1.475339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.737053, -0.017872, 1.401447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543048, -0.661682, -0.516987,
		0.153432, -0.527123, 0.835822,
		-0.825565, -0.533214, -0.184730,
		1.489383, -0.177836, 1.346028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.293185, -0.485705, 1.651773>,  <2.067279, 0.195414, 1.475339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.293185, -0.485705, 1.651773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.020164, -0.477049, 1.359566>,  <1.856352, -0.471855, 1.184241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.020164, -0.477049, 1.359566>,  <2.293185, -0.485705, 1.651773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.020164, -0.477049, 1.359566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616996, -0.518685, -0.591847,
		-0.391716, -0.854692, 0.340676,
		-0.682550, 0.021640, -0.730518,
		1.815400, -0.470557, 1.140410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.652931, 3.752424, -0.274439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.275360, 3.732716, -0.143856>,  <1.048818, 3.720890, -0.065506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.275360, 3.732716, -0.143856>,  <1.652931, 3.752424, -0.274439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.275360, 3.732716, -0.143856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309395, 0.213081, 0.926753,
		-0.115225, 0.975791, -0.185888,
		-0.943927, -0.049272, 0.326458,
		0.992182, 3.717934, -0.045919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.404551, 4.354250, -0.043236>,  <1.652931, 3.752424, -0.274439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.404551, 4.354250, -0.043236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.214676, 4.077549, 0.174442>,  <1.100751, 3.911528, 0.305049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.214676, 4.077549, 0.174442>,  <1.404551, 4.354250, -0.043236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.214676, 4.077549, 0.174442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354970, 0.415318, 0.837560,
		-0.805399, 0.590754, 0.048405,
		-0.474688, -0.691752, 0.544196,
		1.072269, 3.870023, 0.337701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.817403, 4.551213, 0.306995>,  <1.404551, 4.354250, -0.043236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.817403, 4.551213, 0.306995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.004982, 4.280983, 0.534569>,  <1.117530, 4.118845, 0.671113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.004982, 4.280983, 0.534569>,  <0.817403, 4.551213, 0.306995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.004982, 4.280983, 0.534569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271832, 0.723283, 0.634798,
		-0.840354, -0.143033, 0.522825,
		0.468948, -0.675576, 0.568933,
		1.145666, 4.078310, 0.705249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.421677, 4.440329, 0.968975>,  <0.817403, 4.551213, 0.306995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.421677, 4.440329, 0.968975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.804573, 4.351776, 1.043468>,  <1.034310, 4.298645, 1.088165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.804573, 4.351776, 1.043468>,  <0.421677, 4.440329, 0.968975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.804573, 4.351776, 1.043468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013165, 0.609744, 0.792489,
		-0.288998, -0.761053, 0.580756,
		0.957239, -0.221382, 0.186234,
		1.091745, 4.285362, 1.099339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.455528, 4.327383, 1.730522>,  <0.421677, 4.440329, 0.968975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.455528, 4.327383, 1.730522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.823952, 4.415398, 1.602001>,  <1.045006, 4.468207, 1.524889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.823952, 4.415398, 1.602001>,  <0.455528, 4.327383, 1.730522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.823952, 4.415398, 1.602001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135287, 0.592884, 0.793843,
		0.365170, -0.774643, 0.516313,
		0.921058, 0.220037, -0.321302,
		1.100269, 4.481409, 1.505610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.940600, 4.046617, 2.301133>,  <0.455528, 4.327383, 1.730522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.940600, 4.046617, 2.301133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.039299, 4.359501, 2.072306>,  <1.098518, 4.547231, 1.935009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.039299, 4.359501, 2.072306>,  <0.940600, 4.046617, 2.301133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.039299, 4.359501, 2.072306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003781, 0.589541, 0.807730,
		0.969072, -0.201469, 0.142510,
		0.246748, 0.782210, -0.572069,
		1.113323, 4.594164, 1.900685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.216816, 4.575081, 2.792245>,  <0.940600, 4.046617, 2.301133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.216816, 4.575081, 2.792245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.137993, 4.793041, 2.466238>,  <1.090699, 4.923817, 2.270634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.137993, 4.793041, 2.466238>,  <1.216816, 4.575081, 2.792245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.137993, 4.793041, 2.466238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184924, 0.795736, 0.576720,
		0.962794, 0.264363, -0.056040,
		-0.197057, 0.544900, -0.815017,
		1.078876, 4.956511, 2.221733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.699502, 5.202581, 2.769396>,  <1.216816, 4.575081, 2.792245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.699502, 5.202581, 2.769396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.347466, 5.233353, 2.581984>,  <1.136243, 5.251815, 2.469536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.347466, 5.233353, 2.581984>,  <1.699502, 5.202581, 2.769396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.347466, 5.233353, 2.581984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186220, 0.851798, 0.489656,
		0.436761, 0.518192, -0.735334,
		-0.880092, 0.076929, -0.468530,
		1.083438, 5.256431, 2.441425>
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
