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
	<0.454077, 2.615987, 3.207101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.273056, 2.914368, 3.402550>,  <0.164444, 3.093396, 3.519819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.273056, 2.914368, 3.402550>,  <0.454077, 2.615987, 3.207101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.273056, 2.914368, 3.402550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843376, 0.180037, 0.506264,
		0.289678, 0.641203, -0.710595,
		-0.452551, 0.745952, 0.488623,
		0.137291, 3.138153, 3.549137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.894797, 3.177177, 3.161958>,  <0.454077, 2.615987, 3.207101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.894797, 3.177177, 3.161958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.651999, 3.197033, 3.479219>,  <0.506319, 3.208947, 3.669576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.651999, 3.197033, 3.479219>,  <0.894797, 3.177177, 3.161958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.651999, 3.197033, 3.479219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789401, 0.152775, 0.594564,
		-0.091659, 0.987014, -0.131920,
		-0.606996, 0.049641, 0.793153,
		0.469900, 3.211925, 3.717165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.947147, 3.788749, 3.493677>,  <0.894797, 3.177177, 3.161958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.947147, 3.788749, 3.493677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.806028, 3.545071, 3.777765>,  <0.721357, 3.398863, 3.948218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.806028, 3.545071, 3.777765>,  <0.947147, 3.788749, 3.493677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.806028, 3.545071, 3.777765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844058, 0.120405, 0.522559,
		-0.403855, 0.783825, 0.471719,
		-0.352798, -0.609197, 0.710220,
		0.700189, 3.362312, 3.990831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.973127, 4.155555, 4.226007>,  <0.947147, 3.788749, 3.493677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.973127, 4.155555, 4.226007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.033546, 3.760235, 4.217565>,  <1.069798, 3.523043, 4.212499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.033546, 3.760235, 4.217565>,  <0.973127, 4.155555, 4.226007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.033546, 3.760235, 4.217565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876665, 0.124060, 0.464831,
		-0.456774, -0.088714, 0.885148,
		0.151049, -0.988301, -0.021105,
		1.078861, 3.463745, 4.211233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.986962, 3.978808, 4.863050>,  <0.973127, 4.155555, 4.226007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.986962, 3.978808, 4.863050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.218365, 3.744867, 4.635620>,  <1.357206, 3.604503, 4.499162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.218365, 3.744867, 4.635620>,  <0.986962, 3.978808, 4.863050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.218365, 3.744867, 4.635620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810411, 0.333040, 0.481993,
		-0.092536, -0.739617, 0.666636,
		0.578507, -0.584851, -0.568576,
		1.391917, 3.569412, 4.465047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.464534, 3.926666, 5.345136>,  <0.986962, 3.978808, 4.863050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.464534, 3.926666, 5.345136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.622149, 3.804209, 4.998492>,  <1.716717, 3.730734, 4.790506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.622149, 3.804209, 4.998492>,  <1.464534, 3.926666, 5.345136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.622149, 3.804209, 4.998492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912010, 0.247084, 0.327394,
		0.113895, -0.919362, 0.376567,
		0.394037, -0.306144, -0.866609,
		1.740360, 3.712366, 4.738510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.008557, 3.570990, 5.581627>,  <1.464534, 3.926666, 5.345136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.008557, 3.570990, 5.581627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.118685, 3.597683, 5.198013>,  <2.184762, 3.613698, 4.967845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.118685, 3.597683, 5.198013>,  <2.008557, 3.570990, 5.581627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.118685, 3.597683, 5.198013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887364, 0.366142, 0.280222,
		0.369844, -0.928163, 0.041585,
		0.275318, 0.066738, -0.959034,
		2.201281, 3.617702, 4.910303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.644122, 3.372457, 5.572305>,  <2.008557, 3.570990, 5.581627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.644122, 3.372457, 5.572305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.600073, 3.602201, 5.247841>,  <2.573643, 3.740048, 5.053163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.600073, 3.602201, 5.247841>,  <2.644122, 3.372457, 5.572305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.600073, 3.602201, 5.247841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753114, 0.580802, 0.309010,
		0.648607, -0.576868, -0.496520,
		-0.110122, 0.574362, -0.811160,
		2.567036, 3.774510, 5.004493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.760670, 4.318282, 5.492208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.784237, 4.330647, 5.093094>,  <3.798377, 4.338066, 4.853626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.784237, 4.330647, 5.093094>,  <3.760670, 4.318282, 5.492208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.784237, 4.330647, 5.093094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926031, -0.371599, -0.066193,
		-0.372822, 0.927879, 0.006732,
		0.058918, 0.030912, -0.997784,
		3.801912, 4.339920, 4.793758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.232505, 4.714215, 5.275295>,  <3.760670, 4.318282, 5.492208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.232505, 4.714215, 5.275295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.339012, 4.471231, 4.975937>,  <3.402917, 4.325441, 4.796322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.339012, 4.471231, 4.975937>,  <3.232505, 4.714215, 5.275295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.339012, 4.471231, 4.975937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963073, -0.199782, -0.180489,
		-0.039876, 0.768818, -0.638223,
		0.266269, -0.607458, -0.748395,
		3.418893, 4.288994, 4.751418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.853972, 4.953209, 4.668280>,  <3.232505, 4.714215, 5.275295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.853972, 4.953209, 4.668280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.934566, 4.562436, 4.639973>,  <2.982923, 4.327972, 4.622988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.934566, 4.562436, 4.639973>,  <2.853972, 4.953209, 4.668280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.934566, 4.562436, 4.639973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967092, -0.186956, -0.172570,
		0.155358, 0.103211, -0.982452,
		0.201486, -0.976931, -0.070769,
		2.995012, 4.269357, 4.618742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.570864, 4.514869, 3.933199>,  <2.853972, 4.953209, 4.668280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.570864, 4.514869, 3.933199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.586338, 4.271154, 4.250002>,  <2.595622, 4.124926, 4.440084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.586338, 4.271154, 4.250002>,  <2.570864, 4.514869, 3.933199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.586338, 4.271154, 4.250002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863929, -0.418677, -0.279888,
		0.502126, -0.673410, -0.542575,
		0.038684, -0.609286, 0.792007,
		2.597943, 4.088369, 4.487604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.471988, 3.838211, 3.664330>,  <2.570864, 4.514869, 3.933199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.471988, 3.838211, 3.664330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.388195, 3.813564, 4.054678>,  <2.337919, 3.798776, 4.288887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.388195, 3.813564, 4.054678>,  <2.471988, 3.838211, 3.664330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.388195, 3.813564, 4.054678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779513, -0.591991, -0.204711,
		0.590320, -0.803586, 0.075980,
		-0.209482, -0.061618, 0.975869,
		2.325350, 3.795079, 4.347439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.301265, 3.120842, 3.677099>,  <2.471988, 3.838211, 3.664330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.301265, 3.120842, 3.677099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.144165, 3.306210, 3.994839>,  <2.049905, 3.417430, 4.185483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.144165, 3.306210, 3.994839>,  <2.301265, 3.120842, 3.677099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.144165, 3.306210, 3.994839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881083, -0.437112, -0.180626,
		0.263514, -0.770828, 0.579987,
		-0.392751, 0.463419, 0.794348,
		2.026340, 3.445235, 4.233143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.963133, 2.560506, 3.980489>,  <2.301265, 3.120842, 3.677099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.963133, 2.560506, 3.980489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.800457, 2.901448, 4.112000>,  <1.702851, 3.106014, 4.190906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.800457, 2.901448, 4.112000>,  <1.963133, 2.560506, 3.980489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.800457, 2.901448, 4.112000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911219, -0.352687, -0.212817,
		-0.065441, -0.386139, 0.920116,
		-0.406690, 0.852355, 0.328777,
		1.678450, 3.157155, 4.210633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.434257, 2.260378, 4.326636>,  <1.963133, 2.560506, 3.980489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.434257, 2.260378, 4.326636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.321747, 2.637094, 4.252968>,  <1.254241, 2.863123, 4.208767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.321747, 2.637094, 4.252968>,  <1.434257, 2.260378, 4.326636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.321747, 2.637094, 4.252968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913773, -0.321472, -0.248342,
		-0.293091, 0.098437, 0.951003,
		-0.281275, 0.941789, -0.184170,
		1.237364, 2.919630, 4.197717>
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
