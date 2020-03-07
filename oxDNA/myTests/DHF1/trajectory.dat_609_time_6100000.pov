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
	<3.304202, 3.465708, 0.223793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.046894, 3.519480, 0.525292>,  <2.892509, 3.551743, 0.706191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.046894, 3.519480, 0.525292>,  <3.304202, 3.465708, 0.223793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.046894, 3.519480, 0.525292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530813, -0.787764, -0.312515,
		0.551764, -0.601129, 0.578101,
		-0.643269, 0.134429, 0.753747,
		2.853913, 3.559808, 0.751416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.343081, 2.852615, 0.721856>,  <3.304202, 3.465708, 0.223793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.343081, 2.852615, 0.721856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.000484, 3.053171, 0.672811>,  <2.794927, 3.173505, 0.643384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.000484, 3.053171, 0.672811>,  <3.343081, 2.852615, 0.721856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.000484, 3.053171, 0.672811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454451, -0.845137, -0.281457,
		-0.244744, -0.185344, 0.951708,
		-0.856490, 0.501389, -0.122612,
		2.743537, 3.203588, 0.636027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.776911, 2.615677, 1.175906>,  <3.343081, 2.852615, 0.721856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.776911, 2.615677, 1.175906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.664036, 2.752790, 0.817494>,  <2.596310, 2.835059, 0.602447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.664036, 2.752790, 0.817494>,  <2.776911, 2.615677, 1.175906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.664036, 2.752790, 0.817494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483369, -0.857574, -0.175844,
		-0.828688, 0.383492, 0.407689,
		-0.282189, 0.342784, -0.896029,
		2.579379, 2.855626, 0.548685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.015018, 2.547387, 1.051666>,  <2.776911, 2.615677, 1.175906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.015018, 2.547387, 1.051666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.204502, 2.523748, 0.700187>,  <2.318193, 2.509565, 0.489301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.204502, 2.523748, 0.700187>,  <2.015018, 2.547387, 1.051666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.204502, 2.523748, 0.700187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318413, -0.941743, -0.108322,
		-0.821103, 0.331101, -0.464932,
		0.473712, -0.059097, -0.878695,
		2.346616, 2.506019, 0.436579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.558380, 2.373896, 0.656292>,  <2.015018, 2.547387, 1.051666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.558380, 2.373896, 0.656292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.895409, 2.244967, 0.483698>,  <2.097626, 2.167609, 0.380141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.895409, 2.244967, 0.483698>,  <1.558380, 2.373896, 0.656292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.895409, 2.244967, 0.483698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416974, -0.897468, -0.143821,
		-0.340887, 0.301098, -0.890582,
		0.842573, -0.322323, -0.431485,
		2.148180, 2.148270, 0.354252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.360594, 1.948133, 0.092764>,  <1.558380, 2.373896, 0.656292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.360594, 1.948133, 0.092764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.731392, 1.839247, 0.195974>,  <1.953871, 1.773915, 0.257901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.731392, 1.839247, 0.195974>,  <1.360594, 1.948133, 0.092764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.731392, 1.839247, 0.195974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241486, -0.959548, -0.144746,
		0.286992, 0.071869, -0.955233,
		0.926995, -0.272217, 0.258027,
		2.009490, 1.757582, 0.273382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.523993, 1.446273, -0.408331>,  <1.360594, 1.948133, 0.092764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.523993, 1.446273, -0.408331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.784840, 1.397062, -0.109102>,  <1.941347, 1.367536, 0.070435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.784840, 1.397062, -0.109102>,  <1.523993, 1.446273, -0.408331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.784840, 1.397062, -0.109102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104506, -0.991913, -0.072027,
		0.750882, -0.031208, -0.659699,
		0.652116, -0.123026, 0.748071,
		1.980474, 1.360154, 0.115319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.009649, 1.035319, -0.589711>,  <1.523993, 1.446273, -0.408331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.009649, 1.035319, -0.589711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.970673, 0.996880, -0.193475>,  <1.947287, 0.973816, 0.044267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.970673, 0.996880, -0.193475>,  <2.009649, 1.035319, -0.589711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.970673, 0.996880, -0.193475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291581, -0.948896, -0.120735,
		0.951570, -0.300602, 0.064439,
		-0.097439, -0.096099, 0.990591,
		1.941441, 0.968050, 0.103703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.786227, -0.246256, -0.178999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.984360, -0.289407, 0.165792>,  <2.103240, -0.315298, 0.372667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.984360, -0.289407, 0.165792>,  <1.786227, -0.246256, -0.178999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.984360, -0.289407, 0.165792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297627, 0.953280, -0.051725,
		-0.816127, 0.282169, 0.504298,
		0.495333, -0.107878, 0.861979,
		2.132960, -0.321770, 0.424386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.482948, 0.189999, 0.294110>,  <1.786227, -0.246255, -0.178999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.482948, 0.189999, 0.294110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.861961, 0.116724, 0.398892>,  <2.089370, 0.072759, 0.461762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.861961, 0.116724, 0.398892>,  <1.482948, 0.189999, 0.294110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.861961, 0.116724, 0.398892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183629, 0.982726, 0.023008,
		-0.261646, 0.026302, 0.964805,
		0.947534, -0.183186, 0.261956,
		2.146222, 0.061768, 0.477479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.693092, 0.618492, 0.863297>,  <1.482948, 0.189999, 0.294110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.693092, 0.618492, 0.863297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.016396, 0.546263, 0.639114>,  <2.210378, 0.502926, 0.504605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.016396, 0.546263, 0.639114>,  <1.693092, 0.618492, 0.863297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.016396, 0.546263, 0.639114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212145, 0.977198, -0.008899,
		0.549283, -0.111705, 0.828137,
		0.808259, -0.180573, -0.560455,
		2.258873, 0.492091, 0.470978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.245803, 0.902200, 1.223653>,  <1.693092, 0.618492, 0.863297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.245803, 0.902200, 1.223653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.302444, 0.905088, 0.827694>,  <2.336429, 0.906820, 0.590119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.302444, 0.905088, 0.827694>,  <2.245803, 0.902200, 1.223653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.302444, 0.905088, 0.827694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160263, 0.986615, 0.030120,
		0.976865, -0.162909, 0.138551,
		0.141603, 0.007219, -0.989897,
		2.344925, 0.907254, 0.530725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.917785, 1.210349, 0.981795>,  <2.245803, 0.902200, 1.223653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.917785, 1.210349, 0.981795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.650139, 1.249579, 0.687132>,  <2.489551, 1.273117, 0.510334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.650139, 1.249579, 0.687132>,  <2.917785, 1.210349, 0.981795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.650139, 1.249579, 0.687132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121712, 0.992331, 0.021563,
		0.733124, -0.075232, -0.675921,
		-0.669115, 0.098075, -0.736659,
		2.449404, 1.279001, 0.466134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.264048, 1.561253, 0.487909>,  <2.917785, 1.210349, 0.981795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.264048, 1.561253, 0.487909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.883163, 1.614884, 0.378133>,  <2.654633, 1.647063, 0.312267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.883163, 1.614884, 0.378133>,  <3.264048, 1.561253, 0.487909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.883163, 1.614884, 0.378133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162106, 0.983358, -0.082029,
		0.258874, -0.122597, -0.958100,
		-0.952211, 0.134079, -0.274439,
		2.597500, 1.655108, 0.295801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.314807, 1.880489, -0.170851>,  <3.264048, 1.561253, 0.487909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.314807, 1.880489, -0.170851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.958168, 1.967112, -0.011775>,  <2.744185, 2.019085, 0.083671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.958168, 1.967112, -0.011775>,  <3.314807, 1.880489, -0.170851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.958168, 1.967112, -0.011775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224519, 0.974094, -0.027070,
		-0.393250, 0.065154, -0.917120,
		-0.891597, 0.216557, 0.397691,
		2.690689, 2.032079, 0.107532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.072031, 2.434849, -0.590701>,  <3.314807, 1.880489, -0.170851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.072031, 2.434849, -0.590701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.864227, 2.447230, -0.249139>,  <2.739545, 2.454659, -0.044202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.864227, 2.447230, -0.249139>,  <3.072031, 2.434849, -0.590701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.864227, 2.447230, -0.249139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024844, 0.999468, -0.021115,
		-0.854104, 0.010245, -0.520001,
		-0.519508, 0.030953, 0.853905,
		2.708375, 2.456516, 0.007033>
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
