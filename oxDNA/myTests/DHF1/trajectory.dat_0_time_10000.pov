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
	<3.168486, 2.101039, 3.326013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.168193, 1.780823, 3.086302>,  <3.168017, 1.588693, 2.942475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.168193, 1.780823, 3.086302>,  <3.168486, 2.101039, 3.326013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.168193, 1.780823, 3.086302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999904, -0.007726, 0.011544,
		-0.013871, 0.599229, -0.800458,
		-0.000733, -0.800541, -0.599278,
		3.167973, 1.540661, 2.906518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.818599, 2.280948, 2.734807>,  <3.168486, 2.101039, 3.326013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.818599, 2.280948, 2.734807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.806112, 1.881481, 2.751227>,  <2.798620, 1.641800, 2.761079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.806112, 1.881481, 2.751227>,  <2.818599, 2.280948, 2.734807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.806112, 1.881481, 2.751227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982012, 0.022992, -0.187414,
		0.186220, -0.046162, -0.981423,
		-0.031216, -0.998669, 0.041050,
		2.796747, 1.581880, 2.763542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.421996, 2.052768, 2.118770>,  <2.818599, 2.280948, 2.734807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.421996, 2.052768, 2.118770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.409673, 1.758846, 2.389801>,  <2.402279, 1.582492, 2.552419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.409673, 1.758846, 2.389801>,  <2.421996, 2.052768, 2.118770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.409673, 1.758846, 2.389801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989715, -0.072320, -0.123428,
		0.139698, -0.674410, -0.725021,
		-0.030807, -0.734807, 0.677576,
		2.400430, 1.538404, 2.593074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.156052, 1.481734, 1.811683>,  <2.421996, 2.052768, 2.118770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.156052, 1.481734, 1.811683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.014222, 1.453425, 2.184621>,  <1.929124, 1.436440, 2.408384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.014222, 1.453425, 2.184621>,  <2.156052, 1.481734, 1.811683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.014222, 1.453425, 2.184621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933241, -0.034826, -0.357560,
		0.057775, -0.996884, -0.053700,
		-0.354576, -0.070774, 0.932345,
		1.907849, 1.432194, 2.464324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.875753, 0.799632, 1.941458>,  <2.156052, 1.481734, 1.811683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.875753, 0.799632, 1.941458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.685028, 1.071833, 2.164012>,  <1.570593, 1.235154, 2.297545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.685028, 1.071833, 2.164012>,  <1.875753, 0.799632, 1.941458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.685028, 1.071833, 2.164012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845948, -0.183295, -0.500775,
		-0.238795, -0.709450, 0.663067,
		-0.476812, 0.680502, 0.556387,
		1.541984, 1.275984, 2.330929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.187974, 0.580676, 2.087816>,  <1.875753, 0.799632, 1.941458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.187974, 0.580676, 2.087816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.174006, 0.978260, 2.129434>,  <1.165624, 1.216810, 2.154404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.174006, 0.978260, 2.129434>,  <1.187974, 0.580676, 2.087816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.174006, 0.978260, 2.129434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823805, 0.030310, -0.566062,
		-0.565796, -0.105481, 0.817770,
		-0.034922, 0.993959, 0.104045,
		1.163529, 1.276448, 2.160647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.479699, 0.841864, 2.000208>,  <1.187974, 0.580676, 2.087816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.479699, 0.841864, 2.000208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.672364, 1.183275, 1.920719>,  <0.787963, 1.388122, 1.873025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.672364, 1.183275, 1.920719>,  <0.479699, 0.841864, 2.000208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.672364, 1.183275, 1.920719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714840, 0.251478, -0.652505,
		-0.506956, 0.456343, 0.731264,
		0.481663, 0.853528, -0.198724,
		0.816863, 1.439334, 1.861102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.087574, 1.393690, 2.085151>,  <0.479699, 0.841864, 2.000208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.087574, 1.393690, 2.085151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.336645, 1.470675, 1.781775>,  <0.486088, 1.516865, 1.599750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.336645, 1.470675, 1.781775>,  <0.087574, 1.393690, 2.085151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.336645, 1.470675, 1.781775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777317, 0.041012, -0.627771,
		-0.089716, 0.980447, 0.175141,
		0.622679, 0.192461, -0.758439,
		0.523449, 1.528413, 1.554244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.797528, 4.728091, 1.744631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.007948, 4.392559, 1.800682>,  <4.134201, 4.191240, 1.834313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.007948, 4.392559, 1.800682>,  <3.797528, 4.728091, 1.744631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.007948, 4.392559, 1.800682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718465, -0.350172, 0.600989,
		-0.455058, -0.416828, -0.786877,
		0.526052, -0.838829, 0.140128,
		4.165764, 4.140910, 1.842721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.485749, 4.127077, 1.486910>,  <3.797528, 4.728091, 1.744631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.485749, 4.127077, 1.486910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.705790, 4.103125, 1.820090>,  <3.837814, 4.088754, 2.019997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.705790, 4.103125, 1.820090>,  <3.485749, 4.127077, 1.486910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.705790, 4.103125, 1.820090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826779, -0.179492, 0.533123,
		0.117585, -0.981936, -0.148244,
		0.550100, -0.059878, 0.832949,
		3.870820, 4.085162, 2.069974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.363381, 3.421613, 1.880210>,  <3.485749, 4.127077, 1.486910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.363381, 3.421613, 1.880210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.456135, 3.692030, 2.159980>,  <3.511787, 3.854280, 2.327842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.456135, 3.692030, 2.159980>,  <3.363381, 3.421613, 1.880210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.456135, 3.692030, 2.159980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739245, -0.344873, 0.578429,
		0.632256, -0.651175, 0.419790,
		0.231884, 0.676042, 0.699425,
		3.525700, 3.894843, 2.369808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.584779, 3.127499, 2.549100>,  <3.363381, 3.421613, 1.880210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.584779, 3.127499, 2.549100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.399459, 3.480805, 2.577932>,  <3.288268, 3.692789, 2.595232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.399459, 3.480805, 2.577932>,  <3.584779, 3.127499, 2.549100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.399459, 3.480805, 2.577932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726333, -0.425062, 0.540150,
		0.507735, 0.197897, 0.838476,
		-0.463298, 0.883267, 0.072080,
		3.260470, 3.745785, 2.599556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.609327, 3.543447, 3.260013>,  <3.584779, 3.127499, 2.549100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.609327, 3.543447, 3.260013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.288904, 3.549539, 3.020656>,  <3.096650, 3.553195, 2.877041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.288904, 3.549539, 3.020656>,  <3.609327, 3.543447, 3.260013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.288904, 3.549539, 3.020656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437436, -0.697285, 0.567840,
		-0.408604, 0.716632, 0.565228,
		-0.801057, 0.015230, -0.598394,
		3.048587, 3.554108, 2.841137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.982099, 3.662853, 3.642837>,  <3.609327, 3.543447, 3.260013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.982099, 3.662853, 3.642837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.922725, 3.442828, 3.314106>,  <2.887101, 3.310813, 3.116868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.922725, 3.442828, 3.314106>,  <2.982099, 3.662853, 3.642837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.922725, 3.442828, 3.314106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352251, -0.747117, 0.563680,
		-0.924060, 0.373158, -0.082862,
		-0.148434, -0.550063, -0.821826,
		2.878195, 3.277809, 3.067559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.252477, 3.326211, 3.630092>,  <2.982099, 3.662853, 3.642837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.252477, 3.326211, 3.630092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.524555, 3.122233, 3.419458>,  <2.687802, 2.999847, 3.293077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.524555, 3.122233, 3.419458>,  <2.252477, 3.326211, 3.630092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.524555, 3.122233, 3.419458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093876, -0.773051, 0.627359,
		-0.726995, -0.377293, -0.573697,
		0.680195, -0.509944, -0.526586,
		2.728614, 2.969250, 3.261482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.032908, 2.603502, 3.429171>,  <2.252477, 3.326211, 3.630092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.032908, 2.603502, 3.429171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.428240, 2.638265, 3.479210>,  <2.665440, 2.659122, 3.509233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.428240, 2.638265, 3.479210>,  <2.032908, 2.603502, 3.429171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.428240, 2.638265, 3.479210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015015, -0.761685, 0.647774,
		0.151580, -0.642093, -0.751491,
		0.988331, 0.086906, 0.125097,
		2.724740, 2.664337, 3.516739>
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
