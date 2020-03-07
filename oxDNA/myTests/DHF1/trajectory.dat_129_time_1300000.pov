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
	<3.871719, -0.436826, -0.011646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.551283, -0.431614, 0.227715>,  <3.359021, -0.428487, 0.371331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.551283, -0.431614, 0.227715>,  <3.871719, -0.436826, -0.011646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.551283, -0.431614, 0.227715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081224, 0.992882, 0.087115,
		-0.593007, 0.118392, -0.796446,
		-0.801090, 0.013031, 0.598402,
		3.310956, -0.427705, 0.407235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.309482, 0.045813, -0.264879>,  <3.871719, -0.436826, -0.011646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.309482, 0.045813, -0.264879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.284828, 0.010345, 0.132782>,  <3.270036, -0.010935, 0.371379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.284828, 0.010345, 0.132782>,  <3.309482, 0.045813, -0.264879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.284828, 0.010345, 0.132782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117442, 0.988483, 0.095444,
		-0.991165, 0.122638, -0.050511,
		-0.061634, -0.088669, 0.994153,
		3.266338, -0.016255, 0.431028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.720349, 0.432008, 0.010429>,  <3.309482, 0.045813, -0.264879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.720349, 0.432008, 0.010429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.017878, 0.390831, 0.274590>,  <3.196395, 0.366125, 0.433086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.017878, 0.390831, 0.274590>,  <2.720349, 0.432008, 0.010429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.017878, 0.390831, 0.274590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082049, 0.994658, 0.062634,
		-0.663323, 0.007596, 0.748295,
		0.743822, -0.102943, 0.660403,
		3.241024, 0.359948, 0.472710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.753458, 1.046269, 0.328192>,  <2.720349, 0.432008, 0.010429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.753458, 1.046269, 0.328192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.105320, 0.900768, 0.450760>,  <3.316437, 0.813468, 0.524301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.105320, 0.900768, 0.450760>,  <2.753458, 1.046269, 0.328192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.105320, 0.900768, 0.450760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355850, 0.930813, 0.083416,
		-0.315563, 0.035663, 0.948234,
		0.879654, -0.363752, 0.306421,
		3.369216, 0.791643, 0.542686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.070710, 1.371767, 0.908887>,  <2.753458, 1.046269, 0.328192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.070710, 1.371767, 0.908887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.400791, 1.289536, 0.698448>,  <3.598840, 1.240197, 0.572185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.400791, 1.289536, 0.698448>,  <3.070710, 1.371767, 0.908887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.400791, 1.289536, 0.698448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344755, 0.921111, 0.180828,
		0.447419, -0.330595, 0.830978,
		0.825203, -0.205578, -0.526096,
		3.648352, 1.227862, 0.540619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.745290, 1.728194, 1.105031>,  <3.070710, 1.371767, 0.908887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.745290, 1.728194, 1.105031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.804489, 1.664017, 0.714676>,  <3.840009, 1.625510, 0.480463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.804489, 1.664017, 0.714676>,  <3.745290, 1.728194, 1.105031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.804489, 1.664017, 0.714676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470901, 0.879150, -0.073124,
		0.869683, -0.448724, 0.205666,
		0.147999, -0.160443, -0.975886,
		3.848889, 1.615884, 0.421910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.393781, 1.970340, 1.018033>,  <3.745290, 1.728194, 1.105031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.393781, 1.970340, 1.018033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.264874, 1.942120, 0.640427>,  <4.187529, 1.925187, 0.413863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.264874, 1.942120, 0.640427>,  <4.393781, 1.970340, 1.018033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.264874, 1.942120, 0.640427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535012, 0.809110, -0.243113,
		0.780964, -0.583407, -0.223005,
		-0.322269, -0.070552, -0.944016,
		4.168193, 1.920954, 0.357222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.011264, 2.090732, 0.601508>,  <4.393781, 1.970340, 1.018033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.011264, 2.090732, 0.601508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.700184, 2.172535, 0.363731>,  <4.513536, 2.221617, 0.221066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.700184, 2.172535, 0.363731>,  <5.011264, 2.090732, 0.601508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.700184, 2.172535, 0.363731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386164, 0.901574, -0.195043,
		0.496044, -0.381236, -0.780128,
		-0.777701, 0.204507, -0.594440,
		4.466874, 2.233887, 0.185399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.378824, 3.328308, 6.154966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.516447, 3.529564, 5.837860>,  <4.599020, 3.650317, 5.647596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.516447, 3.529564, 5.837860>,  <4.378824, 3.328308, 6.154966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.516447, 3.529564, 5.837860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232427, -0.772397, -0.591084,
		-0.909727, 0.387626, -0.148805,
		0.344056, 0.503139, -0.792765,
		4.619663, 3.680506, 5.600030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.803666, 3.493285, 5.654503>,  <4.378824, 3.328308, 6.154966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.803666, 3.493285, 5.654503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.169420, 3.454597, 5.497253>,  <4.388872, 3.431385, 5.402904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.169420, 3.454597, 5.497253>,  <3.803666, 3.493285, 5.654503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.169420, 3.454597, 5.497253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351969, -0.669737, -0.653889,
		-0.200047, 0.736273, -0.646439,
		0.914385, -0.096718, -0.393124,
		4.443735, 3.425582, 5.379316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.737100, 3.347778, 4.992743>,  <3.803666, 3.493285, 5.654503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.737100, 3.347778, 4.992743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.111148, 3.220482, 5.055061>,  <4.335577, 3.144104, 5.092452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.111148, 3.220482, 5.055061>,  <3.737100, 3.347778, 4.992743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.111148, 3.220482, 5.055061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197735, -0.833554, -0.515837,
		0.294023, 0.451564, -0.842402,
		0.935121, -0.318241, 0.155794,
		4.391684, 3.125010, 5.101799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.904398, 3.090987, 4.367273>,  <3.737100, 3.347778, 4.992743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.904398, 3.090987, 4.367273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.090710, 2.922905, 4.678780>,  <4.202497, 2.822056, 4.865684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.090710, 2.922905, 4.678780>,  <3.904398, 3.090987, 4.367273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.090710, 2.922905, 4.678780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323415, -0.900014, -0.292194,
		0.823681, -0.115766, -0.555110,
		0.465780, -0.420206, 0.778765,
		4.230444, 2.796843, 4.912409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.536552, 2.535411, 4.360317>,  <3.904398, 3.090987, 4.367273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.536552, 2.535411, 4.360317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.831530, 2.407303, 4.598175>,  <4.008516, 2.330438, 4.740890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.831530, 2.407303, 4.598175>,  <3.536552, 2.535411, 4.360317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.831530, 2.407303, 4.598175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407602, -0.913056, 0.013720,
		0.538550, -0.252497, -0.803872,
		0.737444, -0.320271, 0.594644,
		4.052763, 2.311222, 4.776568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.867206, 1.828504, 4.074368>,  <3.536552, 2.535411, 4.360317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.867206, 1.828504, 4.074368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.916259, 1.859665, 4.470123>,  <3.945691, 1.878362, 4.707577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.916259, 1.859665, 4.470123>,  <3.867206, 1.828504, 4.074368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.916259, 1.859665, 4.470123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311868, -0.943390, 0.112936,
		0.942178, -0.322409, -0.091394,
		0.122632, 0.077903, 0.989390,
		3.953049, 1.883036, 4.766940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.323661, 1.220094, 4.247431>,  <3.867206, 1.828504, 4.074368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.323661, 1.220094, 4.247431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.138361, 1.362831, 4.571915>,  <4.027181, 1.448474, 4.766605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.138361, 1.362831, 4.571915>,  <4.323661, 1.220094, 4.247431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.138361, 1.362831, 4.571915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135406, -0.933105, 0.333139,
		0.875822, 0.044484, 0.480580,
		-0.463250, 0.356844, 0.811210,
		3.999386, 1.469884, 4.815278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.607022, 0.858282, 4.820550>,  <4.323661, 1.220094, 4.247431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.607022, 0.858282, 4.820550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.257873, 1.014297, 4.937828>,  <4.048384, 1.107907, 5.008194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.257873, 1.014297, 4.937828>,  <4.607022, 0.858282, 4.820550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.257873, 1.014297, 4.937828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240962, -0.867051, 0.436074,
		0.424300, 0.309988, 0.850810,
		-0.872873, 0.390039, 0.293194,
		3.996011, 1.131309, 5.025786>
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
