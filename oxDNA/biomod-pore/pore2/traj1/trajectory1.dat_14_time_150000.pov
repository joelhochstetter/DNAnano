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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.185823, 17.310663, -2.583914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.533913, 17.113750, -2.591644>,  <22.742765, 16.995604, -2.596282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.533913, 17.113750, -2.591644>,  <22.185823, 17.310663, -2.583914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.533913, 17.113750, -2.591644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446667, 0.804921, -0.390629,
		0.207856, 0.331301, 0.920345,
		0.870221, -0.492282, -0.019326,
		22.794979, 16.966066, -2.597442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.628551, 17.387808, -1.881309>,  <22.185823, 17.310663, -2.583914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.628551, 17.387808, -1.881309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.922546, 17.627472, -2.008304>,  <23.098944, 17.771271, -2.084501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.922546, 17.627472, -2.008304>,  <22.628551, 17.387808, -1.881309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.922546, 17.627472, -2.008304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129214, 0.583394, 0.801845,
		0.665656, -0.548322, 0.506207,
		0.734987, 0.599162, -0.317489,
		23.143044, 17.807220, -2.103550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.138405, 17.645676, -1.332239>,  <22.628551, 17.387808, -1.881309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.138405, 17.645676, -1.332239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.108490, 17.905205, -1.635141>,  <23.090542, 18.060923, -1.816883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.108490, 17.905205, -1.635141>,  <23.138405, 17.645676, -1.332239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.108490, 17.905205, -1.635141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254734, 0.721758, 0.643565,
		0.964115, 0.241029, 0.111300,
		-0.074786, 0.648822, -0.757256,
		23.086054, 18.099852, -1.862318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.649494, 17.977495, -0.875010>,  <23.138405, 17.645676, -1.332239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.649494, 17.977495, -0.875010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.860329, 18.311081, -0.940350>,  <22.986830, 18.511232, -0.979554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.860329, 18.311081, -0.940350>,  <22.649494, 17.977495, -0.875010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.860329, 18.311081, -0.940350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782922, 0.551295, 0.288284,
		0.330471, -0.024061, 0.943509,
		0.527088, 0.833963, -0.163349,
		23.018456, 18.561270, -0.989355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.801657, 18.380241, -0.293982>,  <22.649494, 17.977495, -0.875010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.801657, 18.380241, -0.293982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.810097, 18.645538, -0.593225>,  <22.815161, 18.804716, -0.772770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.810097, 18.645538, -0.593225>,  <22.801657, 18.380241, -0.293982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.810097, 18.645538, -0.593225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673899, 0.562174, 0.479396,
		0.738522, 0.494032, 0.458821,
		0.021101, 0.663243, -0.748106,
		22.816427, 18.844511, -0.817657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.932238, 19.109585, -0.068127>,  <22.801657, 18.380241, -0.293982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.932238, 19.109585, -0.068127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.700577, 19.041386, -0.387003>,  <22.561581, 19.000467, -0.578329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.700577, 19.041386, -0.387003>,  <22.932238, 19.109585, -0.068127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.700577, 19.041386, -0.387003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785055, 0.380185, 0.489027,
		0.219703, 0.909060, -0.354035,
		-0.579154, -0.170496, -0.797190,
		22.526831, 18.990236, -0.626160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.621956, 19.651403, -0.449781>,  <22.932238, 19.109585, -0.068127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.621956, 19.651403, -0.449781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.395218, 19.322132, -0.436720>,  <22.259174, 19.124569, -0.428883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.395218, 19.322132, -0.436720>,  <22.621956, 19.651403, -0.449781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.395218, 19.322132, -0.436720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679208, 0.489403, 0.546956,
		-0.466223, 0.287861, -0.836524,
		-0.566845, -0.823177, 0.032653,
		22.225164, 19.075178, -0.426924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.005842, 19.845068, -0.779250>,  <22.621956, 19.651403, -0.449781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.005842, 19.845068, -0.779250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.968174, 19.550198, -0.511608>,  <21.945574, 19.373276, -0.351023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.968174, 19.550198, -0.511608>,  <22.005842, 19.845068, -0.779250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.968174, 19.550198, -0.511608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616979, 0.570680, 0.541905,
		-0.781325, -0.361792, -0.508565,
		-0.094171, -0.737177, 0.669105,
		21.939922, 19.329044, -0.310877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.351690, 20.183172, -0.327821>,  <22.005842, 19.845068, -0.779250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.351690, 20.183172, -0.327821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049854, 20.404839, -0.187254>,  <20.868753, 20.537838, -0.102914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049854, 20.404839, -0.187254>,  <21.351690, 20.183172, -0.327821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.049854, 20.404839, -0.187254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008430, -0.543678, 0.839252,
		0.656143, 0.630328, 0.414925,
		-0.754589, 0.554167, 0.351417,
		20.823477, 20.571089, -0.081829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.491541, 20.373022, 0.358795>,  <21.351690, 20.183172, -0.327821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.491541, 20.373022, 0.358795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.095444, 20.415798, 0.323047>,  <20.857786, 20.441463, 0.301598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.095444, 20.415798, 0.323047>,  <21.491541, 20.373022, 0.358795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.095444, 20.415798, 0.323047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117342, -0.293780, 0.948643,
		0.075191, 0.949872, 0.303461,
		-0.990241, 0.106938, -0.089370,
		20.798372, 20.447880, 0.296236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.315689, 20.890057, 0.890943>,  <21.491541, 20.373022, 0.358795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.315689, 20.890057, 0.890943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.032902, 20.627686, 0.785149>,  <20.863230, 20.470263, 0.721673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.032902, 20.627686, 0.785149>,  <21.315689, 20.890057, 0.890943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.032902, 20.627686, 0.785149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104193, -0.273288, 0.956273,
		-0.699527, 0.703613, 0.124863,
		-0.706969, -0.655929, -0.264484,
		20.820810, 20.430906, 0.705804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.546581, 20.766462, 1.222131>,  <21.315689, 20.890057, 0.890943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.546581, 20.766462, 1.222131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.705208, 20.399769, 1.202794>,  <20.800383, 20.179752, 1.191192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.705208, 20.399769, 1.202794>,  <20.546581, 20.766462, 1.222131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705208, 20.399769, 1.202794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369436, -0.207578, 0.905775,
		-0.840388, -0.341339, -0.420992,
		0.396565, -0.916733, -0.048343,
		20.824177, 20.124748, 1.188291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002714, 20.319687, 1.563656>,  <20.546581, 20.766462, 1.222131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002714, 20.319687, 1.563656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.363537, 20.153923, 1.611921>,  <20.580030, 20.054464, 1.640880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.363537, 20.153923, 1.611921>,  <20.002714, 20.319687, 1.563656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.363537, 20.153923, 1.611921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184316, -0.117065, 0.975870,
		-0.390288, -0.902529, -0.181982,
		0.902055, -0.414412, 0.120661,
		20.634153, 20.029600, 1.648119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.928446, 19.606163, 1.973820>,  <20.002714, 20.319687, 1.563656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.928446, 19.606163, 1.973820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.275837, 19.800041, 2.015421>,  <20.484272, 19.916368, 2.040381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.275837, 19.800041, 2.015421>,  <19.928446, 19.606163, 1.973820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.275837, 19.800041, 2.015421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135748, 0.030750, 0.990266,
		0.476780, -0.874142, 0.092502,
		0.868478, 0.484696, 0.104003,
		20.536381, 19.945450, 2.046622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.449026, 19.366217, 2.467830>,  <19.928446, 19.606163, 1.973820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.449026, 19.366217, 2.467830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.458923, 19.764267, 2.429652>,  <20.464863, 20.003098, 2.406745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.458923, 19.764267, 2.429652>,  <20.449026, 19.366217, 2.467830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.458923, 19.764267, 2.429652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213170, 0.098531, 0.972034,
		0.976702, -0.003706, 0.214570,
		0.024744, 0.995127, -0.095445,
		20.466347, 20.062805, 2.401018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.739958, 19.605366, 3.081725>,  <20.449026, 19.366217, 2.467830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.739958, 19.605366, 3.081725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.523716, 19.912296, 2.943764>,  <20.393970, 20.096455, 2.860988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.523716, 19.912296, 2.943764>,  <20.739958, 19.605366, 3.081725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.523716, 19.912296, 2.943764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376041, 0.146336, 0.914975,
		0.752555, 0.624338, 0.209436,
		-0.540606, 0.767325, -0.344903,
		20.361534, 20.142494, 2.840293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.754662, 20.151785, 3.584256>,  <20.739958, 19.605366, 3.081725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.754662, 20.151785, 3.584256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.412560, 20.187477, 3.380068>,  <20.207298, 20.208893, 3.257556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.412560, 20.187477, 3.380068>,  <20.754662, 20.151785, 3.584256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.412560, 20.187477, 3.380068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456699, 0.335706, 0.823849,
		0.244880, 0.937731, -0.246362,
		-0.855254, 0.089231, -0.510469,
		20.155983, 20.214247, 3.226928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.618843, 20.871439, 3.722066>,  <20.754662, 20.151785, 3.584256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.618843, 20.871439, 3.722066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.330864, 20.606277, 3.639863>,  <20.158077, 20.447180, 3.590542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.330864, 20.606277, 3.639863>,  <20.618843, 20.871439, 3.722066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.330864, 20.606277, 3.639863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474408, 0.253927, 0.842887,
		-0.506569, 0.704329, -0.497301,
		-0.719948, -0.662904, -0.205507,
		20.114880, 20.407406, 3.578211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964212, 21.083439, 3.817892>,  <20.618843, 20.871439, 3.722066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964212, 21.083439, 3.817892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.885593, 20.693001, 3.855011>,  <19.838423, 20.458738, 3.877283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.885593, 20.693001, 3.855011>,  <19.964212, 21.083439, 3.817892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.885593, 20.693001, 3.855011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505360, 0.181952, 0.843507,
		-0.840227, 0.118892, -0.529041,
		-0.196546, -0.976093, 0.092798,
		19.826630, 20.400173, 3.882851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.250771, 20.856953, 3.785378>,  <19.964212, 21.083439, 3.817892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.250771, 20.856953, 3.785378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.467216, 20.640587, 4.042939>,  <19.597084, 20.510769, 4.197476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.467216, 20.640587, 4.042939>,  <19.250771, 20.856953, 3.785378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.467216, 20.640587, 4.042939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691003, 0.150393, 0.707034,
		-0.479282, -0.827524, -0.292393,
		0.541113, -0.540912, 0.643902,
		19.629551, 20.478313, 4.236110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.859438, 20.396006, 4.131105>,  <19.250771, 20.856953, 3.785378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.859438, 20.396006, 4.131105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156406, 20.434200, 4.396342>,  <19.334587, 20.457117, 4.555485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156406, 20.434200, 4.396342>,  <18.859438, 20.396006, 4.131105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.156406, 20.434200, 4.396342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649316, -0.141098, 0.747315,
		0.164921, -0.985380, -0.042752,
		0.742421, 0.095489, 0.663094,
		19.379133, 20.462847, 4.595270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.877657, 19.791227, 4.624359>,  <18.859438, 20.396006, 4.131105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.877657, 19.791227, 4.624359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017303, 20.131920, 4.780653>,  <19.101091, 20.336334, 4.874430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017303, 20.131920, 4.780653>,  <18.877657, 19.791227, 4.624359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017303, 20.131920, 4.780653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748470, 0.002560, 0.663164,
		0.563836, -0.523974, 0.638388,
		0.349115, 0.851730, 0.390736,
		19.122038, 20.387440, 4.897874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059881, 19.792309, 5.382766>,  <18.877657, 19.791227, 4.624359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.059881, 19.792309, 5.382766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.898582, 20.143028, 5.277989>,  <18.801804, 20.353460, 5.215123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.898582, 20.143028, 5.277989>,  <19.059881, 19.792309, 5.382766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.898582, 20.143028, 5.277989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845106, -0.247035, 0.474099,
		0.350980, 0.412548, 0.840605,
		-0.403248, 0.876800, -0.261942,
		18.777609, 20.406069, 5.199407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.763536, 20.242363, 5.897184>,  <19.059881, 19.792309, 5.382766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.763536, 20.242363, 5.897184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.556007, 20.365822, 5.578297>,  <18.431490, 20.439898, 5.386964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.556007, 20.365822, 5.578297>,  <18.763536, 20.242363, 5.897184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.556007, 20.365822, 5.578297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852195, -0.112857, 0.510909,
		0.067719, 0.944458, 0.321580,
		-0.518824, 0.308647, -0.797220,
		18.400360, 20.458416, 5.339131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.150457, 20.400778, 6.200121>,  <18.763536, 20.242363, 5.897184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.150457, 20.400778, 6.200121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.057304, 20.420090, 5.811599>,  <18.001413, 20.431677, 5.578485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.057304, 20.420090, 5.811599>,  <18.150457, 20.400778, 6.200121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.057304, 20.420090, 5.811599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957801, 0.161640, 0.237678,
		0.168476, 0.985668, 0.008598,
		-0.232882, 0.048278, -0.971306,
		17.987440, 20.434572, 5.520207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.804508, 20.992184, 6.037640>,  <18.150457, 20.400778, 6.200121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.804508, 20.992184, 6.037640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.650940, 20.682346, 5.836597>,  <17.558800, 20.496445, 5.715972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.650940, 20.682346, 5.836597>,  <17.804508, 20.992184, 6.037640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.650940, 20.682346, 5.836597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883866, 0.150782, 0.442769,
		-0.267182, 0.614223, -0.742525,
		-0.383919, -0.774593, -0.502605,
		17.535765, 20.449968, 5.685816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.137362, 21.250772, 5.738367>,  <17.804508, 20.992184, 6.037640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.137362, 21.250772, 5.738367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.119411, 20.851681, 5.758452>,  <17.108641, 20.612226, 5.770504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.119411, 20.851681, 5.758452>,  <17.137362, 21.250772, 5.738367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.119411, 20.851681, 5.758452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964741, 0.056332, 0.257102,
		-0.259347, -0.036905, -0.965079,
		-0.044876, -0.997730, 0.050213,
		17.105949, 20.552362, 5.773516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.512779, 20.925026, 5.338157>,  <17.137362, 21.250772, 5.738367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.512779, 20.925026, 5.338157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.588425, 20.653980, 5.622431>,  <16.633812, 20.491352, 5.792995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.588425, 20.653980, 5.622431>,  <16.512779, 20.925026, 5.338157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.588425, 20.653980, 5.622431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981925, -0.124869, 0.142235,
		-0.007638, -0.724737, -0.688983,
		0.189116, -0.677616, 0.710684,
		16.645159, 20.450695, 5.835636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.010578, 21.287737, 4.913330>,  <16.512779, 20.925026, 5.338157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.010578, 21.287737, 4.913330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.768447, 21.086842, 5.160339>,  <15.623169, 20.966305, 5.308545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.768447, 21.086842, 5.160339>,  <16.010578, 21.287737, 4.913330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.768447, 21.086842, 5.160339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342776, 0.535706, 0.771702,
		-0.718390, 0.678804, -0.152122,
		-0.605327, -0.502239, 0.617524,
		15.586849, 20.936171, 5.345596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.678669, 21.741055, 5.494594>,  <16.010578, 21.287737, 4.913330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.678669, 21.741055, 5.494594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729243, 21.362045, 5.612045>,  <15.759588, 21.134640, 5.682517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729243, 21.362045, 5.612045>,  <15.678669, 21.741055, 5.494594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.729243, 21.362045, 5.612045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365417, 0.319678, 0.874229,
		-0.922217, -0.003237, 0.386660,
		0.126436, -0.947521, 0.293630,
		15.767174, 21.077789, 5.700134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.506948, 21.660847, 6.241979>,  <15.678669, 21.741055, 5.494594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.506948, 21.660847, 6.241979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.745227, 21.351231, 6.156183>,  <15.888194, 21.165461, 6.104706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.745227, 21.351231, 6.156183>,  <15.506948, 21.660847, 6.241979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.745227, 21.351231, 6.156183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449889, 0.100321, 0.887432,
		-0.665392, -0.625135, 0.407994,
		0.595695, -0.774043, -0.214489,
		15.923935, 21.119019, 6.091836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507577, 21.121170, 6.772606>,  <15.506948, 21.660847, 6.241979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.507577, 21.121170, 6.772606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.873452, 21.094875, 6.613095>,  <16.092978, 21.079100, 6.517388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.873452, 21.094875, 6.613095>,  <15.507577, 21.121170, 6.772606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.873452, 21.094875, 6.613095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366427, -0.281410, 0.886871,
		-0.170518, -0.957333, -0.233316,
		0.914689, -0.065734, -0.398778,
		16.147860, 21.075155, 6.493462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.766261, 20.566364, 7.048331>,  <15.507577, 21.121170, 6.772606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.766261, 20.566364, 7.048331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.091488, 20.751080, 6.906528>,  <16.286623, 20.861908, 6.821445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.091488, 20.751080, 6.906528>,  <15.766261, 20.566364, 7.048331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091488, 20.751080, 6.906528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502739, -0.249884, 0.827533,
		0.293559, -0.851064, -0.435331,
		0.813066, 0.461788, -0.354508,
		16.335407, 20.889616, 6.800175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343969, 20.188522, 7.012336>,  <15.766261, 20.566364, 7.048331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343969, 20.188522, 7.012336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.466763, 20.563667, 7.077056>,  <16.540438, 20.788754, 7.115888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.466763, 20.563667, 7.077056>,  <16.343969, 20.188522, 7.012336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.466763, 20.563667, 7.077056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434235, -0.289308, 0.853077,
		0.846877, -0.191621, -0.496065,
		0.306983, 0.937860, 0.161800,
		16.558857, 20.845026, 7.125596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047228, 20.030426, 7.207501>,  <16.343969, 20.188522, 7.012336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.047228, 20.030426, 7.207501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.914368, 20.397659, 7.294031>,  <16.834652, 20.618000, 7.345949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.914368, 20.397659, 7.294031>,  <17.047228, 20.030426, 7.207501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.914368, 20.397659, 7.294031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413591, -0.064362, 0.908185,
		0.847714, 0.391124, -0.358334,
		-0.332150, 0.918085, 0.216326,
		16.814722, 20.673084, 7.358929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.657578, 20.497034, 7.385369>,  <17.047228, 20.030426, 7.207501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.657578, 20.497034, 7.385369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.310635, 20.578297, 7.567101>,  <17.102468, 20.627054, 7.676141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.310635, 20.578297, 7.567101>,  <17.657578, 20.497034, 7.385369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.310635, 20.578297, 7.567101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398801, -0.262423, 0.878688,
		0.297740, 0.943324, 0.146595,
		-0.867357, 0.203159, 0.454332,
		17.050426, 20.639244, 7.703401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.758640, 20.956068, 7.928860>,  <17.657578, 20.497034, 7.385369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.758640, 20.956068, 7.928860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.402493, 20.796970, 8.017440>,  <17.188803, 20.701511, 8.070587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.402493, 20.796970, 8.017440>,  <17.758640, 20.956068, 7.928860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.402493, 20.796970, 8.017440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264719, -0.056614, 0.962662,
		-0.370357, 0.915748, 0.155699,
		-0.890370, -0.397745, 0.221449,
		17.135382, 20.677647, 8.083875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512810, 21.396336, 8.441701>,  <17.758640, 20.956068, 7.928860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.512810, 21.396336, 8.441701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.309460, 21.054829, 8.486670>,  <17.187450, 20.849924, 8.513651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.309460, 21.054829, 8.486670>,  <17.512810, 21.396336, 8.441701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.309460, 21.054829, 8.486670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003530, 0.132614, 0.991161,
		-0.861129, 0.503483, -0.070431,
		-0.508374, -0.853767, 0.112420,
		17.156948, 20.798698, 8.520395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.998583, 21.578985, 8.998026>,  <17.512810, 21.396336, 8.441701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.998583, 21.578985, 8.998026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.000446, 21.179260, 9.012742>,  <17.001564, 20.939425, 9.021572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.000446, 21.179260, 9.012742>,  <16.998583, 21.578985, 8.998026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.000446, 21.179260, 9.012742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006796, 0.036758, 0.999301,
		-0.999966, -0.004905, -0.006620,
		0.004658, -0.999312, 0.036790,
		17.001844, 20.879467, 9.023779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.606277, 21.452568, 9.633408>,  <16.998583, 21.578985, 8.998026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.606277, 21.452568, 9.633408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.778690, 21.098454, 9.563580>,  <16.882139, 20.885984, 9.521683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.778690, 21.098454, 9.563580>,  <16.606277, 21.452568, 9.633408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.778690, 21.098454, 9.563580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219572, -0.084743, 0.971909,
		-0.875213, -0.457256, 0.157857,
		0.431033, -0.885289, -0.174569,
		16.908001, 20.832867, 9.511209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.403000, 20.855604, 10.160574>,  <16.606277, 21.452568, 9.633408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.403000, 20.855604, 10.160574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.771908, 20.797836, 10.017150>,  <16.993252, 20.763176, 9.931095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.771908, 20.797836, 10.017150>,  <16.403000, 20.855604, 10.160574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.771908, 20.797836, 10.017150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344750, -0.112252, 0.931959,
		-0.174844, -0.983129, -0.053737,
		0.922267, -0.144422, -0.358561,
		17.048588, 20.754511, 9.909582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.728426, 20.426254, 10.663845>,  <16.403000, 20.855604, 10.160574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.728426, 20.426254, 10.663845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.036312, 20.552666, 10.441976>,  <17.221045, 20.628513, 10.308854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.036312, 20.552666, 10.441976>,  <16.728426, 20.426254, 10.663845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.036312, 20.552666, 10.441976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577592, 0.025295, 0.815933,
		0.271891, -0.948412, -0.163066,
		0.769716, 0.316030, -0.554673,
		17.267227, 20.647474, 10.275574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242849, 19.842474, 10.840376>,  <16.728426, 20.426254, 10.663845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.242849, 19.842474, 10.840376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.449562, 20.156380, 10.703508>,  <17.573589, 20.344723, 10.621387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.449562, 20.156380, 10.703508>,  <17.242849, 19.842474, 10.840376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.449562, 20.156380, 10.703508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559777, -0.007335, 0.828611,
		0.647756, -0.619748, -0.443085,
		0.516780, 0.784767, -0.342170,
		17.604595, 20.391809, 10.600858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.875593, 19.676256, 10.864041>,  <17.242849, 19.842474, 10.840376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.875593, 19.676256, 10.864041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.865952, 20.075191, 10.891556>,  <17.860167, 20.314552, 10.908065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.865952, 20.075191, 10.891556>,  <17.875593, 19.676256, 10.864041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.865952, 20.075191, 10.891556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723133, -0.030115, 0.690052,
		0.690288, 0.066377, -0.720484,
		-0.024106, 0.997340, 0.068787,
		17.858719, 20.374393, 10.912192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489006, 19.730034, 11.259023>,  <17.875593, 19.676256, 10.864041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.489006, 19.730034, 11.259023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.365971, 20.110603, 11.253668>,  <18.292150, 20.338945, 11.250455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.365971, 20.110603, 11.253668>,  <18.489006, 19.730034, 11.259023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.365971, 20.110603, 11.253668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753241, 0.252065, 0.607528,
		0.581393, 0.176784, -0.794185,
		-0.307587, 0.951426, -0.013388,
		18.273695, 20.396030, 11.249651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.136908, 20.194382, 11.181401>,  <18.489006, 19.730034, 11.259023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.136908, 20.194382, 11.181401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837688, 20.385731, 11.365392>,  <18.658157, 20.500542, 11.475786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837688, 20.385731, 11.365392>,  <19.136908, 20.194382, 11.181401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.837688, 20.385731, 11.365392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633968, 0.310164, 0.708437,
		0.196230, 0.821557, -0.535292,
		-0.748050, 0.478375, 0.459977,
		18.613274, 20.529243, 11.503385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.428053, 20.872292, 11.368546>,  <19.136908, 20.194382, 11.181401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.428053, 20.872292, 11.368546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.101021, 20.813007, 11.591111>,  <18.904802, 20.777437, 11.724650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.101021, 20.813007, 11.591111>,  <19.428053, 20.872292, 11.368546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.101021, 20.813007, 11.591111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539096, 0.142523, 0.830098,
		-0.202330, 0.978632, -0.036625,
		-0.817581, -0.148209, 0.556413,
		18.855747, 20.768545, 11.758036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.426764, 21.287727, 11.907528>,  <19.428053, 20.872292, 11.368546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.426764, 21.287727, 11.907528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.153599, 21.054688, 12.083806>,  <18.989700, 20.914864, 12.189572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.153599, 21.054688, 12.083806>,  <19.426764, 21.287727, 11.907528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.153599, 21.054688, 12.083806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349898, 0.268696, 0.897426,
		-0.641252, 0.767061, 0.020354,
		-0.682911, -0.582598, 0.440695,
		18.948725, 20.879908, 12.216015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.090464, 21.672016, 12.414807>,  <19.426764, 21.287727, 11.907528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.090464, 21.672016, 12.414807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.979328, 21.315044, 12.557003>,  <18.912647, 21.100861, 12.642321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.979328, 21.315044, 12.557003>,  <19.090464, 21.672016, 12.414807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.979328, 21.315044, 12.557003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222803, 0.300103, 0.927522,
		-0.934433, 0.336903, 0.115457,
		-0.277836, -0.892432, 0.355489,
		18.895977, 21.047316, 12.663650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.599876, 21.757841, 12.939857>,  <19.090464, 21.672016, 12.414807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.599876, 21.757841, 12.939857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.774220, 21.405117, 13.011900>,  <18.878826, 21.193483, 13.055125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.774220, 21.405117, 13.011900>,  <18.599876, 21.757841, 12.939857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.774220, 21.405117, 13.011900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351429, 0.350977, 0.867936,
		-0.828568, -0.315002, 0.462870,
		0.435859, -0.881810, 0.180107,
		18.904978, 21.140574, 13.065932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.428354, 21.681345, 13.637462>,  <18.599876, 21.757841, 12.939857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.428354, 21.681345, 13.637462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711750, 21.410942, 13.556414>,  <18.881788, 21.248701, 13.507785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711750, 21.410942, 13.556414>,  <18.428354, 21.681345, 13.637462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.711750, 21.410942, 13.556414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476807, 0.246855, 0.843633,
		-0.520285, -0.694317, 0.497220,
		0.708490, -0.676008, -0.202620,
		18.924297, 21.208139, 13.495627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.488197, 21.231445, 14.185733>,  <18.428354, 21.681345, 13.637462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.488197, 21.231445, 14.185733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.844917, 21.199059, 14.007681>,  <19.058949, 21.179626, 13.900849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.844917, 21.199059, 14.007681>,  <18.488197, 21.231445, 14.185733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.844917, 21.199059, 14.007681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446560, 0.315549, 0.837265,
		0.072668, -0.945448, 0.317564,
		0.891798, -0.080969, -0.445130,
		19.112457, 21.174768, 13.874142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.947014, 20.804295, 14.649590>,  <18.488197, 21.231445, 14.185733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.947014, 20.804295, 14.649590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.214489, 20.980011, 14.409630>,  <19.374975, 21.085440, 14.265654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.214489, 20.980011, 14.409630>,  <18.947014, 20.804295, 14.649590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.214489, 20.980011, 14.409630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506996, 0.320785, 0.800033,
		0.543885, -0.839120, -0.008212,
		0.668689, 0.439289, -0.599900,
		19.415096, 21.111797, 14.229660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610411, 20.612606, 14.929116>,  <18.947014, 20.804295, 14.649590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.610411, 20.612606, 14.929116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.707233, 20.923149, 14.696333>,  <19.765327, 21.109476, 14.556664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.707233, 20.923149, 14.696333>,  <19.610411, 20.612606, 14.929116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.707233, 20.923149, 14.696333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591662, 0.357265, 0.722702,
		0.768989, -0.519257, -0.372865,
		0.242056, 0.776360, -0.581957,
		19.779850, 21.156057, 14.521746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275923, 20.664204, 14.923125>,  <19.610411, 20.612606, 14.929116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275923, 20.664204, 14.923125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.180878, 21.036854, 14.813133>,  <20.123850, 21.260445, 14.747138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.180878, 21.036854, 14.813133>,  <20.275923, 20.664204, 14.923125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180878, 21.036854, 14.813133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457313, 0.357044, 0.814484,
		0.856974, 0.067780, -0.510883,
		-0.237614, 0.931625, -0.274981,
		20.109594, 21.316341, 14.730639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790504, 21.070469, 15.049973>,  <20.275923, 20.664204, 14.923125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790504, 21.070469, 15.049973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536564, 21.378765, 15.028345>,  <20.384199, 21.563744, 15.015368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536564, 21.378765, 15.028345>,  <20.790504, 21.070469, 15.049973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.536564, 21.378765, 15.028345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570917, 0.515108, 0.639310,
		0.520593, 0.374998, -0.767046,
		-0.634852, 0.770740, -0.054068,
		20.346107, 21.609987, 15.012125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.227175, 21.718849, 14.980523>,  <20.790504, 21.070469, 15.049973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.227175, 21.718849, 14.980523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.864193, 21.806801, 15.123734>,  <20.646404, 21.859571, 15.209660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.864193, 21.806801, 15.123734>,  <21.227175, 21.718849, 14.980523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.864193, 21.806801, 15.123734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419386, 0.422498, 0.803499,
		0.025409, 0.879288, -0.475612,
		-0.907452, 0.219881, 0.358026,
		20.591957, 21.872765, 15.231141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.293390, 22.376568, 15.129812>,  <21.227175, 21.718849, 14.980523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.293390, 22.376568, 15.129812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.982246, 22.257080, 15.350975>,  <20.795561, 22.185389, 15.483672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.982246, 22.257080, 15.350975>,  <21.293390, 22.376568, 15.129812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.982246, 22.257080, 15.350975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348318, 0.527372, 0.774954,
		-0.523080, 0.795391, -0.306172,
		-0.777857, -0.298718, 0.552907,
		20.748890, 22.167465, 15.516847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.016285, 23.018583, 15.412639>,  <21.293390, 22.376568, 15.129812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.016285, 23.018583, 15.412639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.898846, 22.716225, 15.646704>,  <20.828382, 22.534809, 15.787143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.898846, 22.716225, 15.646704>,  <21.016285, 23.018583, 15.412639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.898846, 22.716225, 15.646704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162804, 0.563659, 0.809805,
		-0.941963, 0.333026, -0.042428,
		-0.293601, -0.755898, 0.585163,
		20.810766, 22.489454, 15.822252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.754219, 23.363077, 16.052502>,  <21.016285, 23.018583, 15.412639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.754219, 23.363077, 16.052502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.760311, 22.993359, 16.205050>,  <20.763968, 22.771528, 16.296577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.760311, 22.993359, 16.205050>,  <20.754219, 23.363077, 16.052502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.760311, 22.993359, 16.205050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084672, 0.381236, 0.920592,
		-0.996292, 0.018269, 0.084070,
		0.015232, -0.924297, 0.381370,
		20.764881, 22.716070, 16.319460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.346468, 23.348457, 16.558687>,  <20.754219, 23.363077, 16.052502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.346468, 23.348457, 16.558687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.572929, 23.037376, 16.667976>,  <20.708807, 22.850729, 16.733549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.572929, 23.037376, 16.667976>,  <20.346468, 23.348457, 16.558687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.572929, 23.037376, 16.667976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017565, 0.342768, 0.939256,
		-0.824112, -0.526965, 0.207720,
		0.566155, -0.777701, 0.273224,
		20.742775, 22.804066, 16.749943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.139702, 23.209681, 17.099451>,  <20.346468, 23.348457, 16.558687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.139702, 23.209681, 17.099451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.485062, 23.018970, 17.165449>,  <20.692278, 22.904545, 17.205048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.485062, 23.018970, 17.165449>,  <20.139702, 23.209681, 17.099451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.485062, 23.018970, 17.165449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017452, 0.355066, 0.934678,
		-0.504215, -0.804123, 0.314885,
		0.863402, -0.476774, 0.164996,
		20.744081, 22.875938, 17.214949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.022091, 22.818375, 17.841515>,  <20.139702, 23.209681, 17.099451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.022091, 22.818375, 17.841515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.415451, 22.842438, 17.773041>,  <20.651466, 22.856876, 17.731956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.415451, 22.842438, 17.773041>,  <20.022091, 22.818375, 17.841515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.415451, 22.842438, 17.773041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152902, 0.233187, 0.960336,
		0.097691, -0.970569, 0.220118,
		0.983401, 0.060159, -0.171183,
		20.710472, 22.860485, 17.721685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.386555, 22.398655, 18.358515>,  <20.022091, 22.818375, 17.841515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.386555, 22.398655, 18.358515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.658035, 22.662079, 18.228489>,  <20.820923, 22.820133, 18.150475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.658035, 22.662079, 18.228489>,  <20.386555, 22.398655, 18.358515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.658035, 22.662079, 18.228489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212113, 0.247977, 0.945259,
		0.703117, -0.710498, 0.028614,
		0.678701, 0.658558, -0.325063,
		20.861645, 22.859646, 18.130970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.798969, 22.386620, 18.918488>,  <20.386555, 22.398655, 18.358515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.798969, 22.386620, 18.918488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.915092, 22.715321, 18.722347>,  <20.984766, 22.912540, 18.604664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.915092, 22.715321, 18.722347>,  <20.798969, 22.386620, 18.918488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.915092, 22.715321, 18.722347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099009, 0.483875, 0.869518,
		0.951798, -0.300975, 0.059111,
		0.290306, 0.821753, -0.490351,
		21.002184, 22.961847, 18.575241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.483011, 22.530451, 19.076071>,  <20.798969, 22.386620, 18.918488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.483011, 22.530451, 19.076071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.279308, 22.858459, 18.971594>,  <21.157085, 23.055264, 18.908907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.279308, 22.858459, 18.971594>,  <21.483011, 22.530451, 19.076071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.279308, 22.858459, 18.971594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014375, 0.295350, 0.955281,
		0.860494, 0.490239, -0.138622,
		-0.509258, 0.820020, -0.261195,
		21.126532, 23.104465, 18.893236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.720053, 23.053366, 19.531668>,  <21.483011, 22.530451, 19.076071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.720053, 23.053366, 19.531668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.398445, 23.226757, 19.368868>,  <21.205481, 23.330791, 19.271187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.398445, 23.226757, 19.368868>,  <21.720053, 23.053366, 19.531668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.398445, 23.226757, 19.368868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263226, 0.354283, 0.897327,
		0.533164, 0.828602, -0.170748,
		-0.804020, 0.433477, -0.407001,
		21.157240, 23.356800, 19.246767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.722181, 23.669500, 19.855171>,  <21.720053, 23.053366, 19.531668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.722181, 23.669500, 19.855171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.343964, 23.623943, 19.733206>,  <21.117033, 23.596609, 19.660027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.343964, 23.623943, 19.733206>,  <21.722181, 23.669500, 19.855171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.343964, 23.623943, 19.733206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324941, 0.384591, 0.864004,
		0.018862, 0.916034, -0.400657,
		-0.945546, -0.113893, -0.304911,
		21.060299, 23.589775, 19.641733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.423244, 24.248787, 20.116159>,  <21.722181, 23.669500, 19.855171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.423244, 24.248787, 20.116159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.107346, 24.023628, 20.018633>,  <20.917807, 23.888533, 19.960117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.107346, 24.023628, 20.018633>,  <21.423244, 24.248787, 20.116159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.107346, 24.023628, 20.018633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500306, 0.361056, 0.786977,
		-0.354953, 0.743497, -0.566763,
		-0.789748, -0.562895, -0.243818,
		20.870420, 23.854759, 19.945488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.706244, 24.680244, 20.088923>,  <21.423244, 24.248787, 20.116159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.706244, 24.680244, 20.088923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.627022, 24.298710, 20.179232>,  <20.579489, 24.069790, 20.233418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.627022, 24.298710, 20.179232>,  <20.706244, 24.680244, 20.088923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.627022, 24.298710, 20.179232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602907, 0.300156, 0.739196,
		-0.772838, 0.010279, -0.634520,
		-0.198053, -0.953835, 0.225775,
		20.567606, 24.012560, 20.246964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015001, 24.658573, 20.168701>,  <20.706244, 24.680244, 20.088923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015001, 24.658573, 20.168701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.123810, 24.309887, 20.331732>,  <20.189095, 24.100676, 20.429550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.123810, 24.309887, 20.331732>,  <20.015001, 24.658573, 20.168701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.123810, 24.309887, 20.331732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626187, 0.161258, 0.762814,
		-0.730681, -0.462720, -0.501991,
		0.272020, -0.871714, 0.407578,
		20.205416, 24.048372, 20.454004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.403603, 24.454395, 20.403820>,  <20.015001, 24.658573, 20.168701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.403603, 24.454395, 20.403820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.668072, 24.243019, 20.616838>,  <19.826754, 24.116194, 20.744650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.668072, 24.243019, 20.616838>,  <19.403603, 24.454395, 20.403820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.668072, 24.243019, 20.616838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589690, 0.072787, 0.804343,
		-0.463810, -0.845845, -0.263491,
		0.661171, -0.528440, 0.532545,
		19.866423, 24.084488, 20.776602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052340, 23.926184, 20.757364>,  <19.403603, 24.454395, 20.403820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.052340, 23.926184, 20.757364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.400158, 23.941154, 20.954338>,  <19.608849, 23.950136, 21.072523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.400158, 23.941154, 20.954338>,  <19.052340, 23.926184, 20.757364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.400158, 23.941154, 20.954338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493662, 0.037904, 0.868828,
		0.013852, -0.998580, 0.051435,
		0.869544, 0.037426, 0.492436,
		19.661020, 23.952383, 21.102068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.066719, 23.353106, 21.195694>,  <19.052340, 23.926184, 20.757364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.066719, 23.353106, 21.195694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.300648, 23.626873, 21.369848>,  <19.441004, 23.791134, 21.474340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.300648, 23.626873, 21.369848>,  <19.066719, 23.353106, 21.195694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.300648, 23.626873, 21.369848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454489, -0.168108, 0.874745,
		0.671882, -0.709446, 0.212747,
		0.584820, 0.684417, 0.435384,
		19.476093, 23.832197, 21.500463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.966410, 23.188528, 21.863167>,  <19.066719, 23.353106, 21.195694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.966410, 23.188528, 21.863167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.161938, 23.533051, 21.918602>,  <19.279255, 23.739763, 21.951864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.161938, 23.533051, 21.918602>,  <18.966410, 23.188528, 21.863167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.161938, 23.533051, 21.918602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315491, 0.026422, 0.948561,
		0.813339, -0.507400, 0.284649,
		0.488821, 0.861306, 0.138590,
		19.308584, 23.791443, 21.960178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.338074, 23.108744, 22.580017>,  <18.966410, 23.188528, 21.863167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.338074, 23.108744, 22.580017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.331276, 23.496090, 22.480438>,  <19.327196, 23.728498, 22.420691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.331276, 23.496090, 22.480438>,  <19.338074, 23.108744, 22.580017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.331276, 23.496090, 22.480438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195505, 0.240959, 0.950640,
		0.980556, 0.064827, 0.185225,
		-0.016996, 0.968368, -0.248948,
		19.326178, 23.786600, 22.405754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.552963, 23.389927, 23.181379>,  <19.338074, 23.108744, 22.580017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.552963, 23.389927, 23.181379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.370464, 23.690376, 22.990528>,  <19.260965, 23.870646, 22.876017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.370464, 23.690376, 22.990528>,  <19.552963, 23.389927, 23.181379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.370464, 23.690376, 22.990528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386721, 0.315539, 0.866534,
		0.801428, 0.579868, 0.146512,
		-0.456245, 0.751124, -0.477129,
		19.233591, 23.915714, 22.847389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.623751, 24.071136, 23.528660>,  <19.552963, 23.389927, 23.181379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.623751, 24.071136, 23.528660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.287212, 24.048618, 23.313639>,  <19.085289, 24.035107, 23.184626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.287212, 24.048618, 23.313639>,  <19.623751, 24.071136, 23.528660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.287212, 24.048618, 23.313639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534328, 0.236440, 0.811535,
		0.081413, 0.970014, -0.229009,
		-0.841347, -0.056297, -0.537555,
		19.034809, 24.031729, 23.152372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.407612, 24.768532, 23.213028>,  <19.623751, 24.071136, 23.528660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.407612, 24.768532, 23.213028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183380, 24.989555, 23.459743>,  <19.048841, 25.122169, 23.607773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183380, 24.989555, 23.459743>,  <19.407612, 24.768532, 23.213028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.183380, 24.989555, 23.459743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777178, 0.608210, 0.161479,
		-0.285912, 0.569877, -0.770386,
		-0.560579, 0.552558, 0.616790,
		19.015205, 25.155323, 23.644781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.657829, 25.497288, 23.126160>,  <19.407612, 24.768532, 23.213028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.657829, 25.497288, 23.126160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.467449, 25.422295, 23.469862>,  <19.353222, 25.377298, 23.676083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.467449, 25.422295, 23.469862>,  <19.657829, 25.497288, 23.126160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.467449, 25.422295, 23.469862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732404, 0.456390, 0.505266,
		-0.486884, 0.869804, -0.079908,
		-0.475951, -0.187481, 0.859256,
		19.324663, 25.366051, 23.727638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.416758, 26.102072, 23.516346>,  <19.657829, 25.497288, 23.126160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.416758, 26.102072, 23.516346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.517071, 25.812660, 23.773596>,  <19.577259, 25.639013, 23.927946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.517071, 25.812660, 23.773596>,  <19.416758, 26.102072, 23.516346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.517071, 25.812660, 23.773596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687035, 0.601060, 0.408300,
		-0.681975, 0.339454, 0.647828,
		0.250784, -0.723531, 0.643125,
		19.592306, 25.595600, 23.966534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.491634, 26.447208, 24.171404>,  <19.416758, 26.102072, 23.516346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.491634, 26.447208, 24.171404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.701801, 26.106884, 24.168390>,  <19.827902, 25.902689, 24.166582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.701801, 26.106884, 24.168390>,  <19.491634, 26.447208, 24.171404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.701801, 26.106884, 24.168390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821378, 0.504888, 0.265378,
		-0.221983, -0.145621, 0.964115,
		0.525415, -0.850813, -0.007533,
		19.859426, 25.851641, 24.166130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.735548, 26.241722, 24.770927>,  <19.491634, 26.447208, 24.171404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.735548, 26.241722, 24.770927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975929, 26.139286, 24.468069>,  <20.120157, 26.077824, 24.286354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975929, 26.139286, 24.468069>,  <19.735548, 26.241722, 24.770927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.975929, 26.139286, 24.468069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663446, 0.688111, 0.293840,
		0.445751, -0.678910, 0.583427,
		0.600954, -0.256092, -0.757147,
		20.156216, 26.062458, 24.240925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.096277, 26.633505, 24.770756>,  <19.735548, 26.241722, 24.770927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.096277, 26.633505, 24.770756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.704250, 26.681183, 24.834335>,  <18.469034, 26.709789, 24.872482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.704250, 26.681183, 24.834335>,  <19.096277, 26.633505, 24.770756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.704250, 26.681183, 24.834335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184756, -0.252621, -0.949762,
		-0.073052, -0.960196, 0.269606,
		-0.980066, 0.119193, 0.158948,
		18.410231, 26.716940, 24.882019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.736227, 26.021553, 24.535156>,  <19.096277, 26.633505, 24.770756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.736227, 26.021553, 24.535156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.461853, 26.312454, 24.525379>,  <18.297230, 26.486996, 24.519512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.461853, 26.312454, 24.525379>,  <18.736227, 26.021553, 24.535156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.461853, 26.312454, 24.525379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183666, -0.205540, -0.961260,
		-0.704104, -0.654870, 0.274558,
		-0.685933, 0.727254, -0.024444,
		18.256073, 26.530630, 24.518045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.947111, 25.761621, 24.334116>,  <18.736227, 26.021553, 24.535156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.947111, 25.761621, 24.334116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.053181, 26.128017, 24.213686>,  <18.116823, 26.347855, 24.141428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.053181, 26.128017, 24.213686>,  <17.947111, 25.761621, 24.334116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.053181, 26.128017, 24.213686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260700, -0.232512, -0.937003,
		-0.928288, 0.326960, 0.177142,
		0.265175, 0.915989, -0.301076,
		18.132732, 26.402815, 24.123363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.423555, 26.105162, 23.974966>,  <17.947111, 25.761621, 24.334116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.423555, 26.105162, 23.974966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.768272, 26.261559, 23.845695>,  <17.975101, 26.355396, 23.768133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.768272, 26.261559, 23.845695>,  <17.423555, 26.105162, 23.974966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.768272, 26.261559, 23.845695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197958, -0.327357, -0.923932,
		-0.467043, 0.860211, -0.204714,
		0.861791, 0.390991, -0.323175,
		18.026810, 26.378857, 23.748743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397207, 26.756062, 23.614132>,  <17.423555, 26.105162, 23.974966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.397207, 26.756062, 23.614132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.663074, 26.485741, 23.486691>,  <17.822594, 26.323547, 23.410225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.663074, 26.485741, 23.486691>,  <17.397207, 26.756062, 23.614132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.663074, 26.485741, 23.486691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536622, -0.135094, -0.832938,
		0.519862, 0.724595, -0.452444,
		0.664666, -0.675804, -0.318603,
		17.862474, 26.282999, 23.391109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.702650, 26.820478, 22.873800>,  <17.397207, 26.756062, 23.614132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.702650, 26.820478, 22.873800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717300, 26.431709, 22.966772>,  <17.726091, 26.198448, 23.022554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717300, 26.431709, 22.966772>,  <17.702650, 26.820478, 22.873800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.717300, 26.431709, 22.966772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295877, -0.232704, -0.926448,
		0.954524, -0.034838, -0.296093,
		0.036627, -0.971923, 0.232429,
		17.728289, 26.140133, 23.036501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.098152, 26.444365, 22.355883>,  <17.702650, 26.820478, 22.873800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.098152, 26.444365, 22.355883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.855774, 26.172756, 22.521658>,  <17.710346, 26.009790, 22.621122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.855774, 26.172756, 22.521658>,  <18.098152, 26.444365, 22.355883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.855774, 26.172756, 22.521658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252962, -0.329462, -0.909651,
		0.754215, -0.656036, 0.027869,
		-0.605946, -0.679022, 0.414437,
		17.673990, 25.969049, 22.645988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134850, 25.943764, 21.954096>,  <18.098152, 26.444365, 22.355883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134850, 25.943764, 21.954096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.802536, 25.821877, 22.140406>,  <17.603148, 25.748745, 22.252192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.802536, 25.821877, 22.140406>,  <18.134850, 25.943764, 21.954096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.802536, 25.821877, 22.140406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353060, -0.358421, -0.864224,
		0.430286, -0.882430, 0.190188,
		-0.830784, -0.304716, 0.465774,
		17.553301, 25.730461, 22.280138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.053083, 25.262724, 21.685295>,  <18.134850, 25.943764, 21.954096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.053083, 25.262724, 21.685295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.705528, 25.369884, 21.851795>,  <17.496996, 25.434181, 21.951696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.705528, 25.369884, 21.851795>,  <18.053083, 25.262724, 21.685295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.705528, 25.369884, 21.851795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491527, -0.367346, -0.789594,
		-0.058623, -0.890667, 0.450862,
		-0.868887, 0.267899, 0.416252,
		17.444862, 25.450254, 21.976671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.671762, 24.774002, 21.403391>,  <18.053083, 25.262724, 21.685295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.671762, 24.774002, 21.403391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.387512, 25.026188, 21.528307>,  <17.216963, 25.177500, 21.603256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.387512, 25.026188, 21.528307>,  <17.671762, 24.774002, 21.403391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.387512, 25.026188, 21.528307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608667, -0.328255, -0.722339,
		-0.352901, -0.703391, 0.617011,
		-0.710623, 0.630468, 0.312289,
		17.174324, 25.215326, 21.621994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.015766, 24.389502, 21.562374>,  <17.671762, 24.774002, 21.403391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.015766, 24.389502, 21.562374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.949188, 24.771160, 21.462854>,  <16.909243, 25.000154, 21.403143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.949188, 24.771160, 21.462854>,  <17.015766, 24.389502, 21.562374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.949188, 24.771160, 21.462854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483794, -0.298881, -0.822565,
		-0.859209, -0.016544, 0.511358,
		-0.166444, 0.954147, -0.248797,
		16.899256, 25.057404, 21.388216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.331242, 24.344131, 21.309113>,  <17.015766, 24.389502, 21.562374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.331242, 24.344131, 21.309113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449253, 24.704414, 21.181561>,  <16.520060, 24.920584, 21.105028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449253, 24.704414, 21.181561>,  <16.331242, 24.344131, 21.309113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449253, 24.704414, 21.181561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597629, -0.086445, -0.797099,
		-0.745518, 0.425741, 0.512784,
		0.295031, 0.900706, -0.318882,
		16.537762, 24.974627, 21.085896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708426, 24.726393, 21.089100>,  <16.331242, 24.344131, 21.309113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.708426, 24.726393, 21.089100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.017616, 24.884521, 20.890615>,  <16.203131, 24.979399, 20.771524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.017616, 24.884521, 20.890615>,  <15.708426, 24.726393, 21.089100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.017616, 24.884521, 20.890615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497022, -0.108767, -0.860895,
		-0.394303, 0.912080, 0.112410,
		0.772978, 0.395324, -0.496210,
		16.249510, 25.003119, 20.741753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334712, 25.166975, 20.654213>,  <15.708426, 24.726393, 21.089100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334712, 25.166975, 20.654213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.691909, 25.105988, 20.484829>,  <15.906227, 25.069395, 20.383198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.691909, 25.105988, 20.484829>,  <15.334712, 25.166975, 20.654213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.691909, 25.105988, 20.484829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432502, -0.030379, -0.901121,
		0.124528, 0.987841, -0.093071,
		0.892992, -0.152469, -0.423460,
		15.959806, 25.060247, 20.357790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415337, 25.647444, 20.138781>,  <15.334712, 25.166975, 20.654213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.415337, 25.647444, 20.138781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.668643, 25.367882, 20.005812>,  <15.820627, 25.200144, 19.926031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.668643, 25.367882, 20.005812>,  <15.415337, 25.647444, 20.138781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.668643, 25.367882, 20.005812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431245, 0.038008, -0.901434,
		0.642653, 0.714203, -0.277331,
		0.633266, -0.698906, -0.332422,
		15.858623, 25.158211, 19.906086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.555904, 25.847153, 19.469187>,  <15.415337, 25.647444, 20.138781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.555904, 25.847153, 19.469187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.670070, 25.463818, 19.464657>,  <15.738569, 25.233816, 19.461939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.670070, 25.463818, 19.464657>,  <15.555904, 25.847153, 19.469187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.670070, 25.463818, 19.464657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275323, -0.070668, -0.958751,
		0.918007, 0.276758, -0.284022,
		0.285413, -0.958338, -0.011324,
		15.755693, 25.176317, 19.461260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.001041, 25.832308, 18.913589>,  <15.555904, 25.847153, 19.469187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.001041, 25.832308, 18.913589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.878406, 25.457001, 18.977657>,  <15.804825, 25.231815, 19.016098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.878406, 25.457001, 18.977657>,  <16.001041, 25.832308, 18.913589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.878406, 25.457001, 18.977657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157910, -0.115803, -0.980640,
		0.938652, -0.325945, -0.112658,
		-0.306588, -0.938270, 0.160169,
		15.786429, 25.175520, 19.025707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189558, 25.574478, 18.326624>,  <16.001041, 25.832308, 18.913589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.189558, 25.574478, 18.326624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.958167, 25.291012, 18.488195>,  <15.819332, 25.120932, 18.585138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.958167, 25.291012, 18.488195>,  <16.189558, 25.574478, 18.326624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.958167, 25.291012, 18.488195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273424, -0.298081, -0.914542,
		0.768506, -0.639486, -0.021333,
		-0.578478, -0.708664, 0.403928,
		15.784623, 25.078413, 18.609373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265648, 24.837988, 17.868021>,  <16.189558, 25.574478, 18.326624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265648, 24.837988, 17.868021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.922223, 24.801506, 18.069834>,  <15.716168, 24.779617, 18.190922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.922223, 24.801506, 18.069834>,  <16.265648, 24.837988, 17.868021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.922223, 24.801506, 18.069834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451919, -0.330165, -0.828710,
		0.242163, -0.939506, 0.242249,
		-0.858561, -0.091206, 0.504534,
		15.664655, 24.774145, 18.221193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115700, 24.175638, 17.802582>,  <16.265648, 24.837988, 17.868021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.115700, 24.175638, 17.802582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.778678, 24.381119, 17.867338>,  <15.576465, 24.504408, 17.906193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.778678, 24.381119, 17.867338>,  <16.115700, 24.175638, 17.802582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.778678, 24.381119, 17.867338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345627, -0.285145, -0.893999,
		-0.413090, -0.809197, 0.417801,
		-0.842555, 0.513705, 0.161890,
		15.525911, 24.535229, 17.915905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.584219, 23.683968, 17.690504>,  <16.115700, 24.175638, 17.802582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.584219, 23.683968, 17.690504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.379287, 24.027256, 17.677998>,  <15.256328, 24.233229, 17.670494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.379287, 24.027256, 17.677998>,  <15.584219, 23.683968, 17.690504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.379287, 24.027256, 17.677998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383563, -0.261246, -0.885793,
		-0.768374, -0.441825, 0.463026,
		-0.512329, 0.858220, -0.031267,
		15.225588, 24.284721, 17.668617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.932555, 23.493042, 17.475878>,  <15.584219, 23.683968, 17.690504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.932555, 23.493042, 17.475878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.971606, 23.883469, 17.398151>,  <14.995037, 24.117725, 17.351515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.971606, 23.883469, 17.398151>,  <14.932555, 23.493042, 17.475878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.971606, 23.883469, 17.398151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298433, -0.157552, -0.941337,
		-0.949424, 0.149892, 0.275910,
		0.097628, 0.976069, -0.194317,
		15.000895, 24.176289, 17.339857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.257045, 23.800892, 17.204121>,  <14.932555, 23.493042, 17.475878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.257045, 23.800892, 17.204121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.557418, 24.043121, 17.098763>,  <14.737642, 24.188459, 17.035547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.557418, 24.043121, 17.098763>,  <14.257045, 23.800892, 17.204121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.557418, 24.043121, 17.098763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147314, -0.235191, -0.960720,
		-0.643737, 0.760239, -0.087403,
		0.750934, 0.605575, -0.263395,
		14.782698, 24.224794, 17.019745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.985737, 24.186968, 16.702194>,  <14.257045, 23.800892, 17.204121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.985737, 24.186968, 16.702194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.379296, 24.229340, 16.644615>,  <14.615432, 24.254763, 16.610067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.379296, 24.229340, 16.644615>,  <13.985737, 24.186968, 16.702194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.379296, 24.229340, 16.644615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127821, -0.145848, -0.981015,
		-0.124915, 0.983619, -0.129960,
		0.983899, 0.105932, -0.143946,
		14.674466, 24.261120, 16.601431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.008569, 24.551161, 16.113371>,  <13.985737, 24.186968, 16.702194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.008569, 24.551161, 16.113371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.373544, 24.389656, 16.140011>,  <14.592528, 24.292753, 16.155994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.373544, 24.389656, 16.140011>,  <14.008569, 24.551161, 16.113371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.373544, 24.389656, 16.140011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035003, -0.239154, -0.970350,
		0.407718, 0.883052, -0.232346,
		0.912437, -0.403762, 0.066598,
		14.647275, 24.268528, 16.159990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.395295, 24.852303, 15.675049>,  <14.008569, 24.551161, 16.113371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.395295, 24.852303, 15.675049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.597190, 24.511421, 15.730171>,  <14.718327, 24.306892, 15.763245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.597190, 24.511421, 15.730171>,  <14.395295, 24.852303, 15.675049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.597190, 24.511421, 15.730171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029994, -0.142225, -0.989380,
		0.862752, 0.503511, -0.046225,
		0.504738, -0.852202, 0.137807,
		14.748611, 24.255760, 15.771513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.901203, 24.851284, 15.065607>,  <14.395295, 24.852303, 15.675049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.901203, 24.851284, 15.065607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945819, 24.478409, 15.203350>,  <14.972589, 24.254683, 15.285995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945819, 24.478409, 15.203350>,  <14.901203, 24.851284, 15.065607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.945819, 24.478409, 15.203350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428874, -0.267435, -0.862871,
		0.896452, 0.243929, 0.369962,
		0.111539, -0.932189, 0.344357,
		14.979280, 24.198751, 15.306657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.531946, 24.624241, 14.780987>,  <14.901203, 24.851284, 15.065607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.531946, 24.624241, 14.780987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.314694, 24.304146, 14.882677>,  <15.184343, 24.112089, 14.943691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.314694, 24.304146, 14.882677>,  <15.531946, 24.624241, 14.780987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.314694, 24.304146, 14.882677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177285, -0.405244, -0.896854,
		0.820719, -0.442037, 0.361970,
		-0.543129, -0.800237, 0.254225,
		15.151755, 24.064075, 14.958944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.990520, 24.049442, 14.549541>,  <15.531946, 24.624241, 14.780987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.990520, 24.049442, 14.549541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.619767, 23.900879, 14.527826>,  <15.397316, 23.811741, 14.514797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.619767, 23.900879, 14.527826>,  <15.990520, 24.049442, 14.549541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.619767, 23.900879, 14.527826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187123, -0.331835, -0.924592,
		0.325387, -0.867145, 0.377071,
		-0.926881, -0.371409, -0.054287,
		15.341703, 23.789455, 14.511540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.017736, 23.445436, 14.180771>,  <15.990520, 24.049442, 14.549541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.017736, 23.445436, 14.180771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623967, 23.515747, 14.182177>,  <15.387706, 23.557934, 14.183020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623967, 23.515747, 14.182177>,  <16.017736, 23.445436, 14.180771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.623967, 23.515747, 14.182177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090315, -0.488451, -0.867905,
		-0.150841, -0.854704, 0.496718,
		-0.984424, 0.175776, 0.003514,
		15.328640, 23.568480, 14.183230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800108, 22.813414, 13.950577>,  <16.017736, 23.445436, 14.180771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.800108, 22.813414, 13.950577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.533883, 23.105530, 13.888990>,  <15.374148, 23.280800, 13.852038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.533883, 23.105530, 13.888990>,  <15.800108, 22.813414, 13.950577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.533883, 23.105530, 13.888990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221193, -0.390036, -0.893837,
		-0.712813, -0.560847, 0.421128,
		-0.665561, 0.730289, -0.153967,
		15.334214, 23.324617, 13.842800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206169, 22.516577, 13.689214>,  <15.800108, 22.813414, 13.950577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.206169, 22.516577, 13.689214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.170636, 22.896805, 13.570204>,  <15.149316, 23.124943, 13.498797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.170636, 22.896805, 13.570204>,  <15.206169, 22.516577, 13.689214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.170636, 22.896805, 13.570204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175041, -0.308955, -0.934830,
		-0.980545, -0.030965, 0.193835,
		-0.088833, 0.950572, -0.297525,
		15.143986, 23.181976, 13.480947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.553015, 22.581282, 13.322495>,  <15.206169, 22.516577, 13.689214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.553015, 22.581282, 13.322495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781745, 22.882118, 13.191423>,  <14.918983, 23.062620, 13.112781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781745, 22.882118, 13.191423>,  <14.553015, 22.581282, 13.322495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781745, 22.882118, 13.191423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264390, -0.209164, -0.941461,
		-0.776604, 0.624985, 0.079241,
		0.571825, 0.752093, -0.327677,
		14.953292, 23.107746, 13.093121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.074687, 22.979458, 12.908932>,  <14.553015, 22.581282, 13.322495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.074687, 22.979458, 12.908932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.453753, 23.063576, 12.812842>,  <14.681193, 23.114046, 12.755189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.453753, 23.063576, 12.812842>,  <14.074687, 22.979458, 12.908932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.453753, 23.063576, 12.812842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204186, -0.179211, -0.962388,
		-0.245435, 0.961072, -0.126893,
		0.947665, 0.210294, -0.240222,
		14.738053, 23.126663, 12.740776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.855260, 23.291473, 12.261727>,  <14.074687, 22.979458, 12.908932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.855260, 23.291473, 12.261727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.253921, 23.259735, 12.269629>,  <14.493117, 23.240692, 12.274369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.253921, 23.259735, 12.269629>,  <13.855260, 23.291473, 12.261727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.253921, 23.259735, 12.269629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020130, 0.003963, -0.999790,
		0.079250, 0.996839, 0.005547,
		0.996652, -0.079345, 0.019753,
		14.552916, 23.235931, 12.275555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.044536, 23.765854, 11.663911>,  <13.855260, 23.291473, 12.261727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.044536, 23.765854, 11.663911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338481, 23.505024, 11.738503>,  <14.514849, 23.348526, 11.783259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338481, 23.505024, 11.738503>,  <14.044536, 23.765854, 11.663911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338481, 23.505024, 11.738503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185646, -0.071059, -0.980044,
		0.652312, 0.754818, 0.068836,
		0.734864, -0.652074, 0.186481,
		14.558940, 23.309402, 11.794448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.670261, 23.953587, 11.279457>,  <14.044536, 23.765854, 11.663911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.670261, 23.953587, 11.279457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.691682, 23.560577, 11.350767>,  <14.704535, 23.324772, 11.393553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.691682, 23.560577, 11.350767>,  <14.670261, 23.953587, 11.279457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.691682, 23.560577, 11.350767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066740, -0.174610, -0.982373,
		0.996332, 0.064505, 0.056223,
		0.053551, -0.982522, 0.178275,
		14.707747, 23.265821, 11.404249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.242100, 23.788340, 10.804832>,  <14.670261, 23.953587, 11.279457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.242100, 23.788340, 10.804832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.080504, 23.440140, 10.917275>,  <14.983547, 23.231220, 10.984742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.080504, 23.440140, 10.917275>,  <15.242100, 23.788340, 10.804832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.080504, 23.440140, 10.917275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021667, -0.316323, -0.948404,
		0.914507, -0.377053, 0.146652,
		-0.403988, -0.870500, 0.281110,
		14.959308, 23.178989, 11.001608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.663352, 23.293015, 10.516686>,  <15.242100, 23.788340, 10.804832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.663352, 23.293015, 10.516686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.302434, 23.132210, 10.578974>,  <15.085883, 23.035727, 10.616346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.302434, 23.132210, 10.578974>,  <15.663352, 23.293015, 10.516686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.302434, 23.132210, 10.578974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064020, -0.482137, -0.873754,
		0.426339, -0.778415, 0.460767,
		-0.902295, -0.402013, 0.155719,
		15.031745, 23.011606, 10.625690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.764855, 22.686491, 10.278543>,  <15.663352, 23.293015, 10.516686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.764855, 22.686491, 10.278543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.367587, 22.730835, 10.293093>,  <15.129227, 22.757442, 10.301823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.367587, 22.730835, 10.293093>,  <15.764855, 22.686491, 10.278543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.367587, 22.730835, 10.293093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079840, -0.418407, -0.904744,
		-0.085083, -0.901468, 0.424401,
		-0.993170, 0.110862, 0.036373,
		15.069636, 22.764093, 10.304005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.420699, 22.034893, 10.178256>,  <15.764855, 22.686491, 10.278543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.420699, 22.034893, 10.178256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.148934, 22.315235, 10.091352>,  <14.985875, 22.483440, 10.039209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.148934, 22.315235, 10.091352>,  <15.420699, 22.034893, 10.178256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.148934, 22.315235, 10.091352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298039, -0.534158, -0.791105,
		-0.670502, -0.472733, 0.571795,
		-0.679411, 0.700855, -0.217261,
		14.945110, 22.525492, 10.026174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.871819, 21.696381, 9.969319>,  <15.420699, 22.034893, 10.178256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.871819, 21.696381, 9.969319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.775994, 22.061481, 9.836963>,  <14.718499, 22.280542, 9.757548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.775994, 22.061481, 9.836963>,  <14.871819, 21.696381, 9.969319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.775994, 22.061481, 9.836963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326844, -0.396743, -0.857769,
		-0.914211, -0.097340, 0.393374,
		-0.239563, 0.912754, -0.330892,
		14.704125, 22.335308, 9.737695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221154, 21.632465, 9.767285>,  <14.871819, 21.696381, 9.969319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.221154, 21.632465, 9.767285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374951, 21.942814, 9.567210>,  <14.467230, 22.129023, 9.447165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374951, 21.942814, 9.567210>,  <14.221154, 21.632465, 9.767285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.374951, 21.942814, 9.567210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185518, -0.465841, -0.865202,
		-0.904295, 0.425457, -0.035174,
		0.384492, 0.775873, -0.500187,
		14.490299, 22.175575, 9.417154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.747736, 21.720133, 9.183675>,  <14.221154, 21.632465, 9.767285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.747736, 21.720133, 9.183675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.080626, 21.918701, 9.084908>,  <14.280360, 22.037842, 9.025647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.080626, 21.918701, 9.084908>,  <13.747736, 21.720133, 9.183675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.080626, 21.918701, 9.084908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058671, -0.521700, -0.851109,
		-0.551325, 0.693828, -0.463298,
		0.832225, 0.496420, -0.246918,
		14.330294, 22.067627, 9.010832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208788, 21.602119, 9.688643>,  <13.747736, 21.720133, 9.183675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208788, 21.602119, 9.688643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.064574, 21.229084, 9.681726>,  <12.978046, 21.005262, 9.677577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.064574, 21.229084, 9.681726>,  <13.208788, 21.602119, 9.688643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.064574, 21.229084, 9.681726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062201, -0.042535, 0.997157,
		-0.930670, 0.358433, 0.073343,
		-0.360533, -0.932586, -0.017291,
		12.956414, 20.949308, 9.676539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697677, 21.622026, 10.160459>,  <13.208788, 21.602119, 9.688643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.697677, 21.622026, 10.160459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.814616, 21.242149, 10.115528>,  <12.884780, 21.014223, 10.088570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.814616, 21.242149, 10.115528>,  <12.697677, 21.622026, 10.160459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.814616, 21.242149, 10.115528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029420, -0.108470, 0.993664,
		-0.955859, -0.293801, -0.003771,
		0.292349, -0.949692, -0.112326,
		12.902321, 20.957241, 10.081830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.193297, 21.245813, 10.469437>,  <12.697677, 21.622026, 10.160459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.193297, 21.245813, 10.469437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.527719, 21.026363, 10.471478>,  <12.728371, 20.894693, 10.472704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.527719, 21.026363, 10.471478>,  <12.193297, 21.245813, 10.469437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.527719, 21.026363, 10.471478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153425, -0.224851, 0.962238,
		-0.526762, -0.805264, -0.272161,
		0.836051, -0.548627, 0.005105,
		12.778534, 20.861774, 10.473010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.066093, 20.526548, 10.803096>,  <12.193297, 21.245813, 10.469437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.066093, 20.526548, 10.803096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.458262, 20.590694, 10.848798>,  <12.693564, 20.629181, 10.876219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.458262, 20.590694, 10.848798>,  <12.066093, 20.526548, 10.803096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.458262, 20.590694, 10.848798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082574, -0.191918, 0.977931,
		0.178753, -0.968221, -0.174919,
		0.980423, 0.160364, 0.114255,
		12.752389, 20.638803, 10.883075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.273690, 20.014454, 11.248294>,  <12.066093, 20.526548, 10.803096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.273690, 20.014454, 11.248294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.572349, 20.280132, 11.263053>,  <12.751544, 20.439539, 11.271909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.572349, 20.280132, 11.263053>,  <12.273690, 20.014454, 11.248294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.572349, 20.280132, 11.263053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064545, 0.017127, 0.997768,
		0.662083, -0.747361, 0.055659,
		0.746646, 0.664197, 0.036898,
		12.796343, 20.479391, 11.274122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697526, 19.709597, 11.808525>,  <12.273690, 20.014454, 11.248294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.697526, 19.709597, 11.808525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.793263, 20.097256, 11.784981>,  <12.850706, 20.329851, 11.770854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.793263, 20.097256, 11.784981>,  <12.697526, 19.709597, 11.808525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.793263, 20.097256, 11.784981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010587, 0.058014, 0.998260,
		0.970877, -0.239550, 0.003625,
		0.239344, 0.969149, -0.058861,
		12.865067, 20.388000, 11.767323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.207936, 19.873577, 12.338484>,  <12.697526, 19.709597, 11.808525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.207936, 19.873577, 12.338484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.074565, 20.238113, 12.241918>,  <12.994542, 20.456835, 12.183977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.074565, 20.238113, 12.241918>,  <13.207936, 19.873577, 12.338484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.074565, 20.238113, 12.241918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181368, 0.313292, 0.932177,
		0.925166, 0.267029, -0.269749,
		-0.333428, 0.911342, -0.241417,
		12.974537, 20.511517, 12.169493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.757427, 20.373438, 12.626997>,  <13.207936, 19.873577, 12.338484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.757427, 20.373438, 12.626997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.429664, 20.598675, 12.584107>,  <13.233006, 20.733816, 12.558373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.429664, 20.598675, 12.584107>,  <13.757427, 20.373438, 12.626997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.429664, 20.598675, 12.584107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062624, 0.273881, 0.959723,
		0.569778, 0.779690, -0.259684,
		-0.819409, 0.563092, -0.107225,
		13.183841, 20.767603, 12.551940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.907194, 21.035456, 13.015284>,  <13.757427, 20.373438, 12.626997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.907194, 21.035456, 13.015284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.509194, 21.009460, 12.984949>,  <13.270394, 20.993862, 12.966748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.509194, 21.009460, 12.984949>,  <13.907194, 21.035456, 13.015284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.509194, 21.009460, 12.984949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095213, 0.387973, 0.916740,
		-0.030156, 0.919377, -0.392221,
		-0.995000, -0.064989, -0.075837,
		13.210694, 20.989964, 12.962198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.632280, 21.673119, 13.241668>,  <13.907194, 21.035456, 13.015284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.632280, 21.673119, 13.241668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.313834, 21.431797, 13.260534>,  <13.122766, 21.287004, 13.271854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.313834, 21.431797, 13.260534>,  <13.632280, 21.673119, 13.241668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.313834, 21.431797, 13.260534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183073, 0.314404, 0.931469,
		-0.576788, 0.732922, -0.360750,
		-0.796116, -0.603304, 0.047166,
		13.075000, 21.250807, 13.274684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.022930, 22.019417, 13.481767>,  <13.632280, 21.673119, 13.241668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.022930, 22.019417, 13.481767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.913291, 21.649197, 13.586250>,  <12.847507, 21.427065, 13.648940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.913291, 21.649197, 13.586250>,  <13.022930, 22.019417, 13.481767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.913291, 21.649197, 13.586250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067425, 0.289438, 0.954819,
		-0.959335, 0.244102, -0.141740,
		-0.274098, -0.925548, 0.261209,
		12.831061, 21.371532, 13.664613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.409125, 22.064028, 13.899848>,  <13.022930, 22.019417, 13.481767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.409125, 22.064028, 13.899848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.541057, 21.697388, 13.990231>,  <12.620215, 21.477404, 14.044460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.541057, 21.697388, 13.990231>,  <12.409125, 22.064028, 13.899848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.541057, 21.697388, 13.990231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189048, 0.170371, 0.967075,
		-0.924919, -0.361685, -0.117088,
		0.329828, -0.916601, 0.225955,
		12.640005, 21.422407, 14.058017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.946939, 21.785467, 14.342895>,  <12.409125, 22.064028, 13.899848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.946939, 21.785467, 14.342895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.279307, 21.572746, 14.408327>,  <12.478728, 21.445114, 14.447587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.279307, 21.572746, 14.408327>,  <11.946939, 21.785467, 14.342895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.279307, 21.572746, 14.408327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105112, 0.138672, 0.984744,
		-0.546375, -0.835437, 0.059327,
		0.830919, -0.531804, 0.163581,
		12.528584, 21.413206, 14.457401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.840284, 21.476120, 14.975876>,  <11.946939, 21.785467, 14.342895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.840284, 21.476120, 14.975876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.236474, 21.463280, 14.922314>,  <12.474188, 21.455576, 14.890177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.236474, 21.463280, 14.922314>,  <11.840284, 21.476120, 14.975876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.236474, 21.463280, 14.922314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137699, 0.228571, 0.963740,
		-0.000329, -0.972998, 0.230813,
		0.990474, -0.032100, -0.133905,
		12.533616, 21.453650, 14.882142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.090139, 20.995169, 15.520364>,  <11.840284, 21.476120, 14.975876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.090139, 20.995169, 15.520364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359939, 21.251587, 15.373877>,  <12.521818, 21.405437, 15.285984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359939, 21.251587, 15.373877>,  <12.090139, 20.995169, 15.520364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.359939, 21.251587, 15.373877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099638, 0.412464, 0.905509,
		0.731522, -0.647253, 0.214333,
		0.674498, 0.641044, -0.366218,
		12.562288, 21.443899, 15.264011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.424062, 21.144632, 16.120626>,  <12.090139, 20.995169, 15.520364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.424062, 21.144632, 16.120626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.616876, 21.376736, 15.858042>,  <12.732564, 21.515997, 15.700491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.616876, 21.376736, 15.858042>,  <12.424062, 21.144632, 16.120626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.616876, 21.376736, 15.858042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502869, 0.430330, 0.749626,
		0.717471, -0.691461, -0.084359,
		0.482035, 0.580257, -0.656464,
		12.761486, 21.550812, 15.661102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.130500, 21.142374, 16.289623>,  <12.424062, 21.144632, 16.120626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.130500, 21.142374, 16.289623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.065530, 21.484489, 16.092808>,  <13.026547, 21.689758, 15.974718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.065530, 21.484489, 16.092808>,  <13.130500, 21.142374, 16.289623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.065530, 21.484489, 16.092808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460741, 0.506700, 0.728679,
		0.872546, -0.108346, -0.476366,
		-0.162425, 0.855287, -0.492039,
		13.016802, 21.741076, 15.945196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.670863, 21.496519, 16.417112>,  <13.130500, 21.142374, 16.289623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.670863, 21.496519, 16.417112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.390548, 21.769070, 16.332619>,  <13.222359, 21.932600, 16.281921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.390548, 21.769070, 16.332619>,  <13.670863, 21.496519, 16.417112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.390548, 21.769070, 16.332619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291588, 0.543845, 0.786899,
		0.651054, 0.489856, -0.579801,
		-0.700789, 0.681377, -0.211236,
		13.180311, 21.973482, 16.269247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.947889, 22.191214, 16.436468>,  <13.670863, 21.496519, 16.417112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.947889, 22.191214, 16.436468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.559352, 22.285641, 16.447538>,  <13.326230, 22.342297, 16.454182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.559352, 22.285641, 16.447538>,  <13.947889, 22.191214, 16.436468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.559352, 22.285641, 16.447538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169303, 0.605455, 0.777664,
		0.166825, 0.760064, -0.628071,
		-0.971342, 0.236068, 0.027676,
		13.267949, 22.356461, 16.455841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.926045, 22.923006, 16.431133>,  <13.947889, 22.191214, 16.436468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.926045, 22.923006, 16.431133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585591, 22.784012, 16.588522>,  <13.381319, 22.700615, 16.682955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585591, 22.784012, 16.588522>,  <13.926045, 22.923006, 16.431133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.585591, 22.784012, 16.588522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134243, 0.580544, 0.803086,
		-0.507490, 0.736356, -0.447475,
		-0.851136, -0.347488, 0.393471,
		13.330251, 22.679766, 16.706564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.633023, 23.512840, 16.856115>,  <13.926045, 22.923006, 16.431133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.633023, 23.512840, 16.856115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.436002, 23.203171, 17.015135>,  <13.317789, 23.017368, 17.110546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.436002, 23.203171, 17.015135>,  <13.633023, 23.512840, 16.856115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.436002, 23.203171, 17.015135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016844, 0.465201, 0.885045,
		-0.870118, 0.429236, -0.242177,
		-0.492555, -0.774173, 0.397550,
		13.288236, 22.970919, 17.134399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.051529, 23.807484, 17.273449>,  <13.633023, 23.512840, 16.856115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.051529, 23.807484, 17.273449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.099017, 23.438675, 17.420843>,  <13.127510, 23.217390, 17.509279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.099017, 23.438675, 17.420843>,  <13.051529, 23.807484, 17.273449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.099017, 23.438675, 17.420843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065681, 0.377588, 0.923641,
		-0.990753, -0.085452, 0.105386,
		0.118720, -0.922022, 0.368484,
		13.134633, 23.162067, 17.531389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.690391, 23.849762, 17.896524>,  <13.051529, 23.807484, 17.273449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.690391, 23.849762, 17.896524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883904, 23.503342, 17.946976>,  <13.000012, 23.295490, 17.977247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883904, 23.503342, 17.946976>,  <12.690391, 23.849762, 17.896524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.883904, 23.503342, 17.946976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187114, 0.243138, 0.951773,
		-0.854951, -0.436852, 0.279676,
		0.483784, -0.866051, 0.126130,
		13.029039, 23.243526, 17.984816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.544342, 23.532566, 18.602505>,  <12.690391, 23.849762, 17.896524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.544342, 23.532566, 18.602505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907907, 23.394840, 18.508415>,  <13.126045, 23.312204, 18.451962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907907, 23.394840, 18.508415>,  <12.544342, 23.532566, 18.602505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.907907, 23.394840, 18.508415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353408, 0.336661, 0.872790,
		-0.221322, -0.876418, 0.427678,
		0.908911, -0.344313, -0.235222,
		13.180580, 23.291546, 18.437849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.790274, 23.207615, 19.263552>,  <12.544342, 23.532566, 18.602505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.790274, 23.207615, 19.263552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.112088, 23.238956, 19.028067>,  <13.305177, 23.257761, 18.886776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.112088, 23.238956, 19.028067>,  <12.790274, 23.207615, 19.263552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.112088, 23.238956, 19.028067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587331, 0.042091, 0.808252,
		0.088110, -0.996036, -0.012156,
		0.804537, 0.078354, -0.588712,
		13.353449, 23.262463, 18.851454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.215507, 22.755327, 19.538137>,  <12.790274, 23.207615, 19.263552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.215507, 22.755327, 19.538137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.459502, 22.992519, 19.327885>,  <13.605900, 23.134834, 19.201733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.459502, 22.992519, 19.327885>,  <13.215507, 22.755327, 19.538137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.459502, 22.992519, 19.327885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648632, 0.007395, 0.761067,
		0.455184, -0.805184, -0.380114,
		0.609988, 0.592979, -0.525634,
		13.642499, 23.170412, 19.170195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.856128, 22.406828, 19.438314>,  <13.215507, 22.755327, 19.538137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.856128, 22.406828, 19.438314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.884475, 22.805748, 19.445997>,  <13.901484, 23.045099, 19.450607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.884475, 22.805748, 19.445997>,  <13.856128, 22.406828, 19.438314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.884475, 22.805748, 19.445997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613072, -0.058738, 0.787840,
		0.786842, -0.044058, -0.615580,
		0.070868, 0.997301, 0.019207,
		13.905735, 23.104939, 19.451759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.466846, 22.500252, 19.811201>,  <13.856128, 22.406828, 19.438314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.466846, 22.500252, 19.811201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335950, 22.878223, 19.809252>,  <14.257412, 23.105005, 19.808083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335950, 22.878223, 19.809252>,  <14.466846, 22.500252, 19.811201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335950, 22.878223, 19.809252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396764, 0.142083, 0.906858,
		0.857608, 0.294827, -0.421409,
		-0.327242, 0.944928, -0.004875,
		14.237778, 23.161701, 19.807789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.060925, 22.981646, 20.021513>,  <14.466846, 22.500252, 19.811201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.060925, 22.981646, 20.021513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.724015, 23.181465, 20.102533>,  <14.521870, 23.301357, 20.151146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.724015, 23.181465, 20.102533>,  <15.060925, 22.981646, 20.021513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.724015, 23.181465, 20.102533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336769, 0.194242, 0.921334,
		0.420907, 0.844228, -0.331837,
		-0.842273, 0.499548, 0.202552,
		14.471334, 23.331329, 20.163300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.288082, 23.622959, 20.316044>,  <15.060925, 22.981646, 20.021513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.288082, 23.622959, 20.316044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.904077, 23.632099, 20.427652>,  <14.673674, 23.637583, 20.494617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.904077, 23.632099, 20.427652>,  <15.288082, 23.622959, 20.316044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.904077, 23.632099, 20.427652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275679, 0.250704, 0.927981,
		-0.048746, 0.967794, -0.246979,
		-0.960013, 0.022851, 0.279021,
		14.616073, 23.638954, 20.511358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.136421, 24.343735, 20.556124>,  <15.288082, 23.622959, 20.316044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.136421, 24.343735, 20.556124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.852546, 24.111103, 20.715176>,  <14.682220, 23.971525, 20.810606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.852546, 24.111103, 20.715176>,  <15.136421, 24.343735, 20.556124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.852546, 24.111103, 20.715176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269325, 0.297569, 0.915924,
		-0.651002, 0.757113, -0.054548,
		-0.709690, -0.581577, 0.397628,
		14.639639, 23.936630, 20.834463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.821627, 24.699579, 21.039726>,  <15.136421, 24.343735, 20.556124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.821627, 24.699579, 21.039726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.707393, 24.341137, 21.175629>,  <14.638852, 24.126072, 21.257170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.707393, 24.341137, 21.175629>,  <14.821627, 24.699579, 21.039726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.707393, 24.341137, 21.175629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438643, 0.192980, 0.877696,
		-0.852076, 0.399688, 0.337959,
		-0.285585, -0.896107, 0.339755,
		14.621717, 24.072306, 21.277555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.442169, 24.859419, 21.763445>,  <14.821627, 24.699579, 21.039726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.442169, 24.859419, 21.763445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.568572, 24.481953, 21.724184>,  <14.644414, 24.255472, 21.700628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.568572, 24.481953, 21.724184>,  <14.442169, 24.859419, 21.763445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568572, 24.481953, 21.724184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392897, 0.035996, 0.918878,
		-0.863581, -0.328935, 0.382139,
		0.316006, -0.943666, -0.098152,
		14.663374, 24.198853, 21.694738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.097039, 24.497097, 22.343382>,  <14.442169, 24.859419, 21.763445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.097039, 24.497097, 22.343382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.396754, 24.250435, 22.246794>,  <14.576583, 24.102438, 22.188841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.396754, 24.250435, 22.246794>,  <14.097039, 24.497097, 22.343382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.396754, 24.250435, 22.246794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323971, 0.023303, 0.945780,
		-0.577592, -0.786889, 0.217239,
		0.749287, -0.616654, -0.241469,
		14.621540, 24.065439, 22.174353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.094121, 23.965487, 22.840353>,  <14.097039, 24.497097, 22.343382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.094121, 23.965487, 22.840353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.453847, 23.957417, 22.665619>,  <14.669683, 23.952574, 22.560778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.453847, 23.957417, 22.665619>,  <14.094121, 23.965487, 22.840353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.453847, 23.957417, 22.665619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437184, 0.018390, 0.899184,
		-0.010114, -0.999627, 0.025362,
		0.899315, -0.020182, -0.436835,
		14.723641, 23.951365, 22.534569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.497658, 23.402775, 23.231993>,  <14.094121, 23.965487, 22.840353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.497658, 23.402775, 23.231993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.796632, 23.611652, 23.067724>,  <14.976016, 23.736979, 22.969162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.796632, 23.611652, 23.067724>,  <14.497658, 23.402775, 23.231993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.796632, 23.611652, 23.067724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493252, -0.022120, 0.869605,
		0.445020, -0.852538, -0.274108,
		0.747435, 0.522196, -0.410673,
		15.020863, 23.768311, 22.944523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.052075, 23.066587, 23.411922>,  <14.497658, 23.402775, 23.231993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.052075, 23.066587, 23.411922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.220405, 23.415813, 23.313404>,  <15.321403, 23.625349, 23.254293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.220405, 23.415813, 23.313404>,  <15.052075, 23.066587, 23.411922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.220405, 23.415813, 23.313404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538066, -0.021642, 0.842625,
		0.730337, -0.487120, -0.478875,
		0.420823, 0.873067, -0.246297,
		15.346652, 23.677734, 23.239515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802996, 22.926256, 23.475578>,  <15.052075, 23.066587, 23.411922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.802996, 22.926256, 23.475578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.723350, 23.318150, 23.484270>,  <15.675562, 23.553286, 23.489485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.723350, 23.318150, 23.484270>,  <15.802996, 22.926256, 23.475578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.723350, 23.318150, 23.484270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646096, 0.114573, 0.754608,
		0.736826, 0.164293, -0.655816,
		-0.199115, 0.979735, 0.021729,
		15.663615, 23.612070, 23.490789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.366863, 22.487574, 23.839262>,  <15.802996, 22.926256, 23.475578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.366863, 22.487574, 23.839262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.474773, 22.102776, 23.856190>,  <16.539520, 21.871897, 23.866346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.474773, 22.102776, 23.856190>,  <16.366863, 22.487574, 23.839262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474773, 22.102776, 23.856190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080464, -0.021273, -0.996531,
		0.959556, 0.272244, 0.071667,
		0.269775, -0.961993, 0.042319,
		16.555706, 21.814178, 23.868885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.010309, 22.417782, 23.543219>,  <16.366863, 22.487574, 23.839262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.010309, 22.417782, 23.543219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.831169, 22.061161, 23.516180>,  <16.723686, 21.847189, 23.499956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.831169, 22.061161, 23.516180>,  <17.010309, 22.417782, 23.543219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.831169, 22.061161, 23.516180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164268, -0.007728, -0.986385,
		0.878890, -0.452856, 0.149914,
		-0.447849, -0.891550, -0.067598,
		16.696814, 21.793695, 23.495901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.419542, 22.045971, 23.074562>,  <17.010309, 22.417782, 23.543219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.419542, 22.045971, 23.074562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.060650, 21.869354, 23.073084>,  <16.845314, 21.763384, 23.072197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.060650, 21.869354, 23.073084>,  <17.419542, 22.045971, 23.074562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.060650, 21.869354, 23.073084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043386, 0.096484, -0.994388,
		0.439421, -0.892038, -0.105725,
		-0.897233, -0.441542, -0.003696,
		16.791479, 21.736893, 23.071976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.482359, 21.651588, 22.431534>,  <17.419542, 22.045971, 23.074562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.482359, 21.651588, 22.431534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.097988, 21.671642, 22.540421>,  <16.867365, 21.683676, 22.605753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.097988, 21.671642, 22.540421>,  <17.482359, 21.651588, 22.431534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.097988, 21.671642, 22.540421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273909, -0.030607, -0.961268,
		-0.039879, -0.998272, 0.043149,
		-0.960928, 0.050153, 0.272215,
		16.809710, 21.686684, 22.622086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155785, 21.046532, 22.123440>,  <17.482359, 21.651588, 22.431534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.155785, 21.046532, 22.123440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.838619, 21.281834, 22.186998>,  <16.648321, 21.423014, 22.225134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.838619, 21.281834, 22.186998>,  <17.155785, 21.046532, 22.123440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.838619, 21.281834, 22.186998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308797, -0.163124, -0.937035,
		-0.525295, -0.792053, 0.310994,
		-0.792913, 0.588254, 0.158895,
		16.600746, 21.458309, 22.234667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.602839, 20.716484, 21.857298>,  <17.155785, 21.046532, 22.123440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.602839, 20.716484, 21.857298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449127, 21.084290, 21.890339>,  <16.356899, 21.304974, 21.910164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449127, 21.084290, 21.890339>,  <16.602839, 20.716484, 21.857298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449127, 21.084290, 21.890339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547541, -0.154958, -0.822306,
		-0.743322, -0.361223, 0.563019,
		-0.384280, 0.919514, 0.082601,
		16.333843, 21.360144, 21.915119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.839215, 20.610416, 21.889690>,  <16.602839, 20.716484, 21.857298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.839215, 20.610416, 21.889690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925015, 20.978191, 21.757860>,  <15.976496, 21.198856, 21.678762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925015, 20.978191, 21.757860>,  <15.839215, 20.610416, 21.889690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.925015, 20.978191, 21.757860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538976, -0.169981, -0.824992,
		-0.814552, 0.354595, 0.459095,
		0.214501, 0.919439, -0.329576,
		15.989366, 21.254023, 21.658987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.297248, 20.764269, 21.417019>,  <15.839215, 20.610416, 21.889690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.297248, 20.764269, 21.417019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.573907, 21.036034, 21.319019>,  <15.739902, 21.199093, 21.260220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.573907, 21.036034, 21.319019>,  <15.297248, 20.764269, 21.417019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.573907, 21.036034, 21.319019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335979, 0.002392, -0.941866,
		-0.639329, 0.733753, 0.229923,
		0.691648, 0.679412, -0.244997,
		15.781402, 21.239857, 21.245520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.868387, 21.255398, 21.120159>,  <15.297248, 20.764269, 21.417019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.868387, 21.255398, 21.120159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.249980, 21.298965, 21.008408>,  <15.478936, 21.325106, 20.941357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.249980, 21.298965, 21.008408>,  <14.868387, 21.255398, 21.120159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.249980, 21.298965, 21.008408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292151, 0.127705, -0.947808,
		-0.067558, 0.985813, 0.153650,
		0.953983, 0.108921, -0.279379,
		15.536175, 21.331642, 20.924595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.828425, 21.737679, 20.648380>,  <14.868387, 21.255398, 21.120159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.828425, 21.737679, 20.648380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178197, 21.550522, 20.597071>,  <15.388060, 21.438229, 20.566286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178197, 21.550522, 20.597071>,  <14.828425, 21.737679, 20.648380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.178197, 21.550522, 20.597071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159620, -0.027782, -0.986787,
		0.458144, 0.883350, -0.098978,
		0.874428, -0.467890, -0.128272,
		15.440525, 21.410154, 20.558590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.163331, 21.993296, 20.099983>,  <14.828425, 21.737679, 20.648380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.163331, 21.993296, 20.099983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347760, 21.639874, 20.132828>,  <15.458418, 21.427820, 20.152534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347760, 21.639874, 20.132828>,  <15.163331, 21.993296, 20.099983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347760, 21.639874, 20.132828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050487, -0.118506, -0.991669,
		0.885925, 0.453085, -0.099248,
		0.461072, -0.883556, 0.082112,
		15.486082, 21.374807, 20.157461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.575693, 21.919510, 19.456640>,  <15.163331, 21.993296, 20.099983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.575693, 21.919510, 19.456640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.538838, 21.544903, 19.591961>,  <15.516726, 21.320139, 19.673153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.538838, 21.544903, 19.591961>,  <15.575693, 21.919510, 19.456640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.538838, 21.544903, 19.591961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164540, -0.320758, -0.932760,
		0.982058, -0.141606, -0.124541,
		-0.092137, -0.936516, 0.338303,
		15.511197, 21.263948, 19.693451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.954239, 21.518286, 19.025660>,  <15.575693, 21.919510, 19.456640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.954239, 21.518286, 19.025660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.728641, 21.233292, 19.192644>,  <15.593282, 21.062296, 19.292835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.728641, 21.233292, 19.192644>,  <15.954239, 21.518286, 19.025660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.728641, 21.233292, 19.192644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010695, -0.511799, -0.859039,
		0.825709, -0.480029, 0.296272,
		-0.563995, -0.712485, 0.417463,
		15.559442, 21.019547, 19.317883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.280001, 20.827030, 18.832817>,  <15.954239, 21.518286, 19.025660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.280001, 20.827030, 18.832817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.894656, 20.767124, 18.921812>,  <15.663449, 20.731180, 18.975210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.894656, 20.767124, 18.921812>,  <16.280001, 20.827030, 18.832817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.894656, 20.767124, 18.921812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082780, -0.623024, -0.777811,
		0.255106, -0.767731, 0.587800,
		-0.963363, -0.149766, 0.222490,
		15.605647, 20.722195, 18.988560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.173367, 20.118155, 18.708487>,  <16.280001, 20.827030, 18.832817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.173367, 20.118155, 18.708487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.817069, 20.299477, 18.721712>,  <15.603291, 20.408270, 18.729647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.817069, 20.299477, 18.721712>,  <16.173367, 20.118155, 18.708487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.817069, 20.299477, 18.721712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231970, -0.390854, -0.890743,
		-0.390854, -0.801092, 0.453304,
		0.890743, -0.453304, -0.033063,
		15.549847, 20.435469, 18.731630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708355, 19.598507, 18.491795>,  <16.173367, 20.118155, 18.708487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.708355, 19.598507, 18.491795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.530776, 19.950027, 18.421803>,  <15.424229, 20.160940, 18.379807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.530776, 19.950027, 18.421803>,  <15.708355, 19.598507, 18.491795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.530776, 19.950027, 18.421803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249761, -0.308903, -0.917714,
		-0.860540, -0.363713, 0.356627,
		-0.443948, 0.878801, -0.174982,
		15.397592, 20.213667, 18.369308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.085849, 19.385521, 18.234730>,  <15.708355, 19.598507, 18.491795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.085849, 19.385521, 18.234730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.133899, 19.763504, 18.112993>,  <15.162729, 19.990294, 18.039951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.133899, 19.763504, 18.112993>,  <15.085849, 19.385521, 18.234730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.133899, 19.763504, 18.112993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412070, -0.231447, -0.881267,
		-0.903199, 0.231273, 0.361586,
		0.120125, 0.944958, -0.304343,
		15.169936, 20.046991, 18.021690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.419683, 19.671745, 18.127245>,  <15.085849, 19.385521, 18.234730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.419683, 19.671745, 18.127245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674191, 19.895977, 17.915241>,  <14.826897, 20.030516, 17.788040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674191, 19.895977, 17.915241>,  <14.419683, 19.671745, 18.127245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.674191, 19.895977, 17.915241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368803, -0.382400, -0.847204,
		-0.677599, 0.734522, -0.036567,
		0.636273, 0.560578, -0.530008,
		14.865073, 20.064150, 17.756239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.024530, 19.942081, 17.609095>,  <14.419683, 19.671745, 18.127245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.024530, 19.942081, 17.609095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.390597, 20.008614, 17.462233>,  <14.610238, 20.048532, 17.374115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.390597, 20.008614, 17.462233>,  <14.024530, 19.942081, 17.609095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.390597, 20.008614, 17.462233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321355, -0.248753, -0.913703,
		-0.243308, 0.954178, -0.174199,
		0.915168, 0.166331, -0.367154,
		14.665148, 20.058514, 17.352087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.941496, 20.300493, 16.941156>,  <14.024530, 19.942081, 17.609095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.941496, 20.300493, 16.941156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.311233, 20.154228, 16.897551>,  <14.533074, 20.066469, 16.871387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.311233, 20.154228, 16.897551>,  <13.941496, 20.300493, 16.941156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.311233, 20.154228, 16.897551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176421, -0.156235, -0.971837,
		0.338334, 0.917540, -0.208925,
		0.924341, -0.365664, -0.109013,
		14.588535, 20.044529, 16.864847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.231924, 20.576660, 16.322454>,  <13.941496, 20.300493, 16.941156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.231924, 20.576660, 16.322454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.461902, 20.261120, 16.409317>,  <14.599888, 20.071796, 16.461435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.461902, 20.261120, 16.409317>,  <14.231924, 20.576660, 16.322454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.461902, 20.261120, 16.409317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015467, -0.254884, -0.966848,
		0.818047, 0.559242, -0.134343,
		0.574943, -0.788849, 0.217157,
		14.634385, 20.024466, 16.474464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.676354, 20.551159, 15.769494>,  <14.231924, 20.576660, 16.322454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.676354, 20.551159, 15.769494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.705815, 20.183483, 15.924240>,  <14.723492, 19.962877, 16.017088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.705815, 20.183483, 15.924240>,  <14.676354, 20.551159, 15.769494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.705815, 20.183483, 15.924240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070268, -0.391739, -0.917389,
		0.994805, 0.040384, -0.093443,
		0.073653, -0.919190, 0.386866,
		14.727911, 19.907726, 16.040300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.217149, 20.200209, 15.479859>,  <14.676354, 20.551159, 15.769494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.217149, 20.200209, 15.479859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.976619, 19.916557, 15.627125>,  <14.832301, 19.746367, 15.715484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.976619, 19.916557, 15.627125>,  <15.217149, 20.200209, 15.479859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.976619, 19.916557, 15.627125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117014, -0.377651, -0.918525,
		0.790390, -0.595412, 0.144113,
		-0.601325, -0.709130, 0.368163,
		14.796222, 19.703819, 15.737574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.366366, 19.608967, 15.029766>,  <15.217149, 20.200209, 15.479859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.366366, 19.608967, 15.029766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.020396, 19.547913, 15.221018>,  <14.812815, 19.511280, 15.335769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.020396, 19.547913, 15.221018>,  <15.366366, 19.608967, 15.029766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.020396, 19.547913, 15.221018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387807, -0.401497, -0.829702,
		0.318609, -0.903052, 0.288072,
		-0.864924, -0.152635, 0.478130,
		14.760919, 19.502123, 15.364457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.161739, 18.907310, 14.803216>,  <15.366366, 19.608967, 15.029766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.161739, 18.907310, 14.803216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.835343, 19.097950, 14.934069>,  <14.639505, 19.212334, 15.012581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.835343, 19.097950, 14.934069>,  <15.161739, 18.907310, 14.803216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.835343, 19.097950, 14.934069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538270, -0.420105, -0.730600,
		-0.210772, -0.772248, 0.599340,
		-0.815990, 0.476597, 0.327132,
		14.590547, 19.240929, 15.032208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.653824, 18.370865, 14.933887>,  <15.161739, 18.907310, 14.803216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.653824, 18.370865, 14.933887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.445062, 18.707108, 14.875929>,  <14.319804, 18.908854, 14.841154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.445062, 18.707108, 14.875929>,  <14.653824, 18.370865, 14.933887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.445062, 18.707108, 14.875929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538797, -0.456557, -0.707993,
		-0.661297, -0.291435, 0.691196,
		-0.521904, 0.840608, -0.144895,
		14.288490, 18.959290, 14.832460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.975242, 18.153753, 14.938498>,  <14.653824, 18.370865, 14.933887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.975242, 18.153753, 14.938498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.954465, 18.515537, 14.769144>,  <13.941999, 18.732609, 14.667532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.954465, 18.515537, 14.769144>,  <13.975242, 18.153753, 14.938498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.954465, 18.515537, 14.769144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726235, -0.325216, -0.605654,
		-0.685481, 0.276017, 0.673743,
		-0.051941, 0.904461, -0.423382,
		13.938883, 18.786875, 14.642129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.306753, 18.238914, 14.824634>,  <13.975242, 18.153753, 14.938498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.306753, 18.238914, 14.824634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.480479, 18.491367, 14.567560>,  <13.584715, 18.642839, 14.413316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.480479, 18.491367, 14.567560>,  <13.306753, 18.238914, 14.824634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.480479, 18.491367, 14.567560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582144, -0.347793, -0.734947,
		-0.687370, 0.693334, 0.216358,
		0.434316, 0.631132, -0.642683,
		13.610774, 18.680708, 14.374755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.773567, 18.351555, 14.413712>,  <13.306753, 18.238914, 14.824634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.773567, 18.351555, 14.413712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.097844, 18.478981, 14.217224>,  <13.292410, 18.555437, 14.099332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.097844, 18.478981, 14.217224>,  <12.773567, 18.351555, 14.413712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.097844, 18.478981, 14.217224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358361, -0.393481, -0.846611,
		-0.462985, 0.862374, -0.204831,
		0.810692, 0.318564, -0.491218,
		13.341052, 18.574551, 14.069859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.502817, 18.533333, 13.778043>,  <12.773567, 18.351555, 14.413712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.502817, 18.533333, 13.778043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.898133, 18.489105, 13.735985>,  <13.135323, 18.462568, 13.710750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.898133, 18.489105, 13.735985>,  <12.502817, 18.533333, 13.778043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.898133, 18.489105, 13.735985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138468, -0.360468, -0.922436,
		0.064094, 0.926194, -0.371558,
		0.988291, -0.110571, -0.105145,
		13.194620, 18.455935, 13.704441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.640859, 18.777046, 13.094131>,  <12.502817, 18.533333, 13.778043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.640859, 18.777046, 13.094131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.920766, 18.517864, 13.214451>,  <13.088710, 18.362354, 13.286643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.920766, 18.517864, 13.214451>,  <12.640859, 18.777046, 13.094131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.920766, 18.517864, 13.214451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061781, -0.474383, -0.878148,
		0.711695, 0.595915, -0.371988,
		0.699767, -0.647955, 0.300800,
		13.130696, 18.323479, 13.304690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.123288, 18.810104, 12.562422>,  <12.640859, 18.777046, 13.094131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.123288, 18.810104, 12.562422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.189157, 18.461063, 12.746356>,  <13.228678, 18.251638, 12.856716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.189157, 18.461063, 12.746356>,  <13.123288, 18.810104, 12.562422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.189157, 18.461063, 12.746356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148638, -0.482829, -0.863008,
		0.975085, 0.073763, -0.209209,
		0.164670, -0.872603, 0.459835,
		13.238558, 18.199282, 12.884307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.201637, 18.408661, 12.049014>,  <13.123288, 18.810104, 12.562422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.201637, 18.408661, 12.049014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.189092, 18.118454, 12.324010>,  <13.181564, 17.944330, 12.489007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.189092, 18.118454, 12.324010>,  <13.201637, 18.408661, 12.049014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.189092, 18.118454, 12.324010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200592, -0.669264, -0.715436,
		0.979173, -0.160344, -0.124542,
		-0.031365, -0.725517, 0.687489,
		13.179683, 17.900799, 12.530256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.748245, 17.911020, 11.843212>,  <13.201637, 18.408661, 12.049014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.748245, 17.911020, 11.843212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477820, 17.726547, 12.073082>,  <13.315566, 17.615864, 12.211004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477820, 17.726547, 12.073082>,  <13.748245, 17.911020, 11.843212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.477820, 17.726547, 12.073082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082350, -0.727736, -0.680895,
		0.732229, -0.507652, 0.454016,
		-0.676061, -0.461183, 0.574675,
		13.275002, 17.588192, 12.245484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.931870, 17.265911, 11.808784>,  <13.748245, 17.911020, 11.843212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.931870, 17.265911, 11.808784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544415, 17.281406, 11.906960>,  <13.311943, 17.290703, 11.965866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544415, 17.281406, 11.906960>,  <13.931870, 17.265911, 11.808784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.544415, 17.281406, 11.906960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213684, -0.633976, -0.743246,
		0.126812, -0.772382, 0.622370,
		-0.968637, 0.038738, 0.245442,
		13.253824, 17.293028, 11.980593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.794456, 16.550079, 11.978386>,  <13.931870, 17.265911, 11.808784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.794456, 16.550079, 11.978386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418752, 16.683125, 11.944544>,  <13.193329, 16.762953, 11.924238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418752, 16.683125, 11.944544>,  <13.794456, 16.550079, 11.978386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.418752, 16.683125, 11.944544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265083, -0.859650, -0.436729,
		-0.217994, -0.387775, 0.895606,
		-0.939260, 0.332614, -0.084606,
		13.136973, 16.782909, 11.919162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.403422, 15.968360, 12.090644>,  <13.794456, 16.550079, 11.978386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.403422, 15.968360, 12.090644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.152888, 16.219585, 11.905931>,  <13.002568, 16.370321, 11.795104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.152888, 16.219585, 11.905931>,  <13.403422, 15.968360, 12.090644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.152888, 16.219585, 11.905931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530790, -0.777429, -0.337440,
		-0.570935, 0.033758, 0.820301,
		-0.626334, 0.628064, -0.461780,
		12.964988, 16.408005, 11.767398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.696835, 15.697047, 12.261610>,  <13.403422, 15.968360, 12.090644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.696835, 15.697047, 12.261610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.696996, 15.914982, 11.926193>,  <12.697092, 16.045742, 11.724943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.696996, 15.914982, 11.926193>,  <12.696835, 15.697047, 12.261610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.696996, 15.914982, 11.926193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505106, -0.723600, -0.470395,
		-0.863057, 0.423742, 0.274909,
		0.000402, 0.544836, -0.838543,
		12.697116, 16.078432, 11.674630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.010741, 15.608288, 11.981133>,  <12.696835, 15.697047, 12.261610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.010741, 15.608288, 11.981133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.209605, 15.758373, 11.668200>,  <12.328923, 15.848425, 11.480439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.209605, 15.758373, 11.668200>,  <12.010741, 15.608288, 11.981133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.209605, 15.758373, 11.668200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606429, -0.494597, -0.622589,
		-0.620544, 0.783957, -0.018353,
		0.497160, 0.375215, -0.782333,
		12.358753, 15.870937, 11.433499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.473278, 15.730369, 11.489413>,  <12.010741, 15.608288, 11.981133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.473278, 15.730369, 11.489413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817203, 15.697269, 11.287868>,  <12.023557, 15.677410, 11.166941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817203, 15.697269, 11.287868>,  <11.473278, 15.730369, 11.489413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.817203, 15.697269, 11.287868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436505, -0.631109, -0.641222,
		-0.264933, 0.771268, -0.578754,
		0.859811, -0.082748, -0.503864,
		12.075146, 15.672445, 11.136708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.253864, 15.528572, 10.753994>,  <11.473278, 15.730369, 11.489413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.253864, 15.528572, 10.753994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.638412, 15.418499, 10.751285>,  <11.869140, 15.352455, 10.749660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.638412, 15.418499, 10.751285>,  <11.253864, 15.528572, 10.753994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.638412, 15.418499, 10.751285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201366, -0.686285, -0.698903,
		0.187678, 0.673266, -0.715185,
		0.961368, -0.275183, -0.006773,
		11.926822, 15.335944, 10.749253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.444190, 15.534872, 10.054327>,  <11.253864, 15.528572, 10.753994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.444190, 15.534872, 10.054327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.679175, 15.295502, 10.272235>,  <11.820167, 15.151879, 10.402980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.679175, 15.295502, 10.272235>,  <11.444190, 15.534872, 10.054327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.679175, 15.295502, 10.272235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138239, -0.737491, -0.661057,
		0.797357, 0.313038, -0.515975,
		0.587463, -0.598426, 0.544770,
		11.855414, 15.115973, 10.435666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.931220, 15.253117, 9.604336>,  <11.444190, 15.534872, 10.054327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.931220, 15.253117, 9.604336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.901780, 15.012177, 9.922269>,  <11.884116, 14.867613, 10.113029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.901780, 15.012177, 9.922269>,  <11.931220, 15.253117, 9.604336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.901780, 15.012177, 9.922269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256464, -0.758758, -0.598759,
		0.963747, -0.247915, -0.098636,
		-0.073600, -0.602349, 0.794832,
		11.879700, 14.831471, 10.160719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.538491, 14.850088, 9.569867>,  <11.931220, 15.253117, 9.604336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.538491, 14.850088, 9.569867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.196580, 14.671333, 9.675428>,  <11.991433, 14.564080, 9.738765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.196580, 14.671333, 9.675428>,  <12.538491, 14.850088, 9.569867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.196580, 14.671333, 9.675428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032332, -0.461653, -0.886471,
		0.517984, -0.766270, 0.380163,
		-0.854779, -0.446887, 0.263904,
		11.940146, 14.537268, 9.754600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.524896, 14.115826, 9.486949>,  <12.538491, 14.850088, 9.569867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.524896, 14.115826, 9.486949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.136563, 14.211548, 9.481016>,  <11.903563, 14.268981, 9.477456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.136563, 14.211548, 9.481016>,  <12.524896, 14.115826, 9.486949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.136563, 14.211548, 9.481016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192315, -0.814150, -0.547882,
		-0.143186, -0.529049, 0.836424,
		-0.970831, 0.239306, -0.014831,
		11.845314, 14.283340, 9.476566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.161823, 13.560256, 9.701586>,  <12.524896, 14.115826, 9.486949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.161823, 13.560256, 9.701586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.949769, 13.763374, 9.429968>,  <11.822536, 13.885245, 9.266997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.949769, 13.763374, 9.429968>,  <12.161823, 13.560256, 9.701586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.949769, 13.763374, 9.429968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142357, -0.842777, -0.519097,
		-0.835877, -0.178526, 0.519074,
		-0.530136, 0.507795, -0.679043,
		11.790729, 13.915713, 9.226254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.444747, 13.285859, 9.657963>,  <12.161823, 13.560256, 9.701586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.444747, 13.285859, 9.657963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.584352, 13.392467, 9.298595>,  <11.668115, 13.456432, 9.082974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.584352, 13.392467, 9.298595>,  <11.444747, 13.285859, 9.657963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.584352, 13.392467, 9.298595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005259, -0.958132, -0.286278,
		-0.937104, 0.104640, -0.332998,
		0.349012, 0.266520, -0.898419,
		11.689055, 13.472424, 9.029070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.003976, 13.058472, 9.213357>,  <11.444747, 13.285859, 9.657963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.003976, 13.058472, 9.213357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.372043, 13.083332, 9.058732>,  <11.592883, 13.098248, 8.965957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.372043, 13.083332, 9.058732>,  <11.003976, 13.058472, 9.213357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.372043, 13.083332, 9.058732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070764, -0.944660, -0.320328,
		-0.385079, 0.322110, -0.864846,
		0.920167, 0.062151, -0.386562,
		11.648092, 13.101977, 8.942763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.251138, 12.542465, 8.763572>,  <11.003976, 13.058472, 9.213357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.251138, 12.542465, 8.763572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.604392, 12.470905, 8.590106>,  <11.816345, 12.427970, 8.486027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.604392, 12.470905, 8.590106>,  <11.251138, 12.542465, 8.763572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.604392, 12.470905, 8.590106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366304, 0.314543, -0.875719,
		0.293071, 0.932233, 0.212253,
		0.883137, -0.178899, -0.433664,
		11.869333, 12.417235, 8.460007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.359556, 11.796412, 8.496208>,  <11.251138, 12.542465, 8.763572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.359556, 11.796412, 8.496208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.967570, 11.734001, 8.446687>,  <10.732379, 11.696555, 8.416974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.967570, 11.734001, 8.446687>,  <11.359556, 11.796412, 8.496208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.967570, 11.734001, 8.446687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025041, 0.520132, -0.853719,
		0.197596, -0.839713, -0.505803,
		-0.979964, -0.156026, -0.123803,
		10.673581, 11.687193, 8.409546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.176115, 11.476622, 7.840831>,  <11.359556, 11.796412, 8.496208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.176115, 11.476622, 7.840831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.879870, 11.713734, 7.967390>,  <10.702124, 11.856001, 8.043325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.879870, 11.713734, 7.967390>,  <11.176115, 11.476622, 7.840831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.879870, 11.713734, 7.967390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051523, 0.419391, -0.906342,
		-0.669955, -0.687549, -0.280064,
		-0.740611, 0.592779, 0.316398,
		10.657687, 11.891567, 8.062309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.496547, 11.409317, 7.324880>,  <11.176115, 11.476622, 7.840831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.496547, 11.409317, 7.324880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.612197, 11.752140, 7.495461>,  <10.681587, 11.957833, 7.597809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.612197, 11.752140, 7.495461>,  <10.496547, 11.409317, 7.324880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.612197, 11.752140, 7.495461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046684, 0.432324, -0.900509,
		-0.956153, 0.280267, 0.084985,
		0.289124, 0.857057, 0.426452,
		10.698935, 12.009257, 7.623396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.073610, 11.833353, 7.075031>,  <10.496547, 11.409317, 7.324880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.073610, 11.833353, 7.075031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.451119, 11.952583, 7.132226>,  <10.677625, 12.024121, 7.166543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.451119, 11.952583, 7.132226>,  <10.073610, 11.833353, 7.075031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.451119, 11.952583, 7.132226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057337, 0.278380, -0.958758,
		-0.325587, 0.913048, 0.245637,
		0.943772, 0.298075, 0.142988,
		10.734251, 12.042006, 7.175122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.122247, 12.542283, 6.976922>,  <10.073610, 11.833353, 7.075031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.122247, 12.542283, 6.976922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.463084, 12.364487, 6.866386>,  <10.667587, 12.257809, 6.800065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.463084, 12.364487, 6.866386>,  <10.122247, 12.542283, 6.976922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.463084, 12.364487, 6.866386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188460, 0.231996, -0.954285,
		0.488280, 0.865220, 0.113914,
		0.852095, -0.444490, -0.276338,
		10.718713, 12.231139, 6.783485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.752382, 12.907040, 7.149857>,  <10.122247, 12.542283, 6.976922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.752382, 12.907040, 7.149857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.764867, 13.044178, 7.525406>,  <10.772357, 13.126461, 7.750735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.764867, 13.044178, 7.525406>,  <10.752382, 12.907040, 7.149857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.764867, 13.044178, 7.525406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925884, -0.363763, 0.102055,
		0.376516, 0.866103, -0.328788,
		0.031211, 0.342845, 0.938873,
		10.774230, 13.147032, 7.807068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.442395, 13.122802, 7.212988>,  <10.752382, 12.907040, 7.149857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.442395, 13.122802, 7.212988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.319154, 13.089603, 7.592078>,  <11.245209, 13.069684, 7.819532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.319154, 13.089603, 7.592078>,  <11.442395, 13.122802, 7.212988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.319154, 13.089603, 7.592078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894063, -0.365733, 0.258630,
		0.325150, 0.927012, 0.186887,
		-0.308104, -0.082996, 0.947725,
		11.226723, 13.064705, 7.876396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.417263, 13.493331, 6.705535>,  <11.442395, 13.122802, 7.212988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.417263, 13.493331, 6.705535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.709636, 13.611614, 6.951558>,  <11.885059, 13.682585, 7.099172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.709636, 13.611614, 6.951558>,  <11.417263, 13.493331, 6.705535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.709636, 13.611614, 6.951558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200684, 0.954534, -0.220431,
		-0.652276, 0.037688, 0.757044,
		0.730932, 0.295709, 0.615057,
		11.928915, 13.700327, 7.136075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.454276, 14.041351, 7.229040>,  <11.417263, 13.493331, 6.705535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.454276, 14.041351, 7.229040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.666419, 13.918827, 7.545241>,  <11.793705, 13.845312, 7.734962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.666419, 13.918827, 7.545241>,  <11.454276, 14.041351, 7.229040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.666419, 13.918827, 7.545241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739777, -0.288209, -0.608002,
		0.414068, 0.907254, 0.073748,
		0.530357, -0.306311, 0.790503,
		11.825526, 13.826934, 7.782393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.170158, 14.390378, 7.219027>,  <11.454276, 14.041351, 7.229040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.170158, 14.390378, 7.219027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.148444, 14.022652, 7.374931>,  <12.135416, 13.802016, 7.468474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.148444, 14.022652, 7.374931>,  <12.170158, 14.390378, 7.219027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.148444, 14.022652, 7.374931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772771, -0.285876, -0.566656,
		0.632358, 0.270435, 0.725939,
		-0.054286, -0.919315, 0.389760,
		12.132158, 13.746858, 7.491859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.740798, 14.259110, 7.575237>,  <12.170158, 14.390378, 7.219027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.740798, 14.259110, 7.575237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.579173, 13.938854, 7.398281>,  <12.482198, 13.746700, 7.292108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.579173, 13.938854, 7.398281>,  <12.740798, 14.259110, 7.575237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.579173, 13.938854, 7.398281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860115, -0.167937, -0.481663,
		0.311345, -0.575128, 0.756500,
		-0.404062, -0.800640, -0.442390,
		12.457954, 13.698662, 7.265564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.270881, 13.736425, 7.414043>,  <12.740798, 14.259110, 7.575237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.270881, 13.736425, 7.414043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.051728, 13.417351, 7.514856>,  <12.920237, 13.225905, 7.575344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.051728, 13.417351, 7.514856>,  <13.270881, 13.736425, 7.414043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.051728, 13.417351, 7.514856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168032, 0.190198, 0.967259,
		-0.819506, 0.572293, 0.029831,
		-0.547882, -0.797687, 0.252032,
		12.887363, 13.178044, 7.590466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.879845, 13.738767, 6.826849>,  <13.270881, 13.736425, 7.414043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.879845, 13.738767, 6.826849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.138473, 13.969482, 6.627145>,  <13.293650, 14.107912, 6.507323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.138473, 13.969482, 6.627145>,  <12.879845, 13.738767, 6.826849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.138473, 13.969482, 6.627145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211599, -0.493180, -0.843800,
		-0.732920, 0.651219, -0.196827,
		0.646571, 0.576790, -0.499259,
		13.332444, 14.142520, 6.477367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.592312, 13.749864, 6.082786>,  <12.879845, 13.738767, 6.826849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.592312, 13.749864, 6.082786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.986676, 13.816746, 6.080966>,  <13.223295, 13.856875, 6.079874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.986676, 13.816746, 6.080966>,  <12.592312, 13.749864, 6.082786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.986676, 13.816746, 6.080966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096215, -0.589152, -0.802273,
		-0.136826, 0.790533, -0.596940,
		0.985911, 0.167206, -0.004551,
		13.282450, 13.866907, 6.079601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.839912, 13.408557, 5.421621>,  <12.592312, 13.749864, 6.082786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.839912, 13.408557, 5.421621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.173039, 13.568821, 5.574402>,  <13.372915, 13.664979, 5.666070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.173039, 13.568821, 5.574402>,  <12.839912, 13.408557, 5.421621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.173039, 13.568821, 5.574402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536107, -0.411963, -0.736801,
		-0.137856, 0.818388, -0.557886,
		0.832817, 0.400659, 0.381952,
		13.422885, 13.689019, 5.688987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.282214, 13.382077, 4.997706>,  <12.839912, 13.408557, 5.421621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.282214, 13.382077, 4.997706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.606484, 13.490501, 5.205294>,  <13.801046, 13.555556, 5.329846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.606484, 13.490501, 5.205294>,  <13.282214, 13.382077, 4.997706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.606484, 13.490501, 5.205294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554555, -0.071154, -0.829100,
		-0.187810, 0.959929, -0.208001,
		0.810676, 0.271061, 0.518970,
		13.849688, 13.571820, 5.360984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.890674, 12.903164, 5.056024>,  <13.282214, 13.382077, 4.997706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.890674, 12.903164, 5.056024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.172641, 12.822582, 5.328054>,  <14.341822, 12.774233, 5.491273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.172641, 12.822582, 5.328054>,  <13.890674, 12.903164, 5.056024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.172641, 12.822582, 5.328054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695818, 0.010442, -0.718142,
		0.137571, 0.979442, 0.147537,
		0.704919, -0.201455, 0.680077,
		14.384116, 12.762146, 5.532078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.463610, 13.055613, 4.769906>,  <13.890674, 12.903164, 5.056024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.463610, 13.055613, 4.769906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630021, 12.861115, 5.077278>,  <14.729868, 12.744416, 5.261702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630021, 12.861115, 5.077278>,  <14.463610, 13.055613, 4.769906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.630021, 12.861115, 5.077278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899435, 0.095575, -0.426476,
		0.133928, 0.868581, 0.477107,
		0.416028, -0.486244, 0.768432,
		14.754829, 12.715241, 5.307807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.122435, 13.121414, 4.881562>,  <14.463610, 13.055613, 4.769906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.122435, 13.121414, 4.881562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891248, 13.444904, 4.925230>,  <14.752536, 13.638998, 4.951431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891248, 13.444904, 4.925230>,  <15.122435, 13.121414, 4.881562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.891248, 13.444904, 4.925230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779884, 0.586770, -0.217905,
		-0.240283, -0.040803, -0.969845,
		-0.577967, 0.808725, 0.109170,
		14.717857, 13.687522, 4.957981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.114063, 12.777081, 4.090793>,  <15.122435, 13.121414, 4.881562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.114063, 12.777081, 4.090793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.314965, 12.792233, 3.745237>,  <15.435506, 12.801324, 3.537904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.314965, 12.792233, 3.745237>,  <15.114063, 12.777081, 4.090793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.314965, 12.792233, 3.745237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619293, 0.681490, 0.389932,
		0.603503, -0.730846, 0.318823,
		0.502255, 0.037880, -0.863890,
		15.465642, 12.803596, 3.486070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.702973, 12.821128, 4.221376>,  <15.114063, 12.777081, 4.090793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.702973, 12.821128, 4.221376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729825, 12.979488, 3.855042>,  <15.745935, 13.074505, 3.635241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729825, 12.979488, 3.855042>,  <15.702973, 12.821128, 4.221376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.729825, 12.979488, 3.855042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623468, 0.699986, 0.348292,
		0.778962, -0.594375, -0.199843,
		0.067128, 0.395902, -0.915836,
		15.749964, 13.098259, 3.580291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439516, 12.677321, 3.851550>,  <15.702973, 12.821128, 4.221376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.439516, 12.677321, 3.851550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.251026, 13.015049, 3.749514>,  <16.137932, 13.217686, 3.688292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.251026, 13.015049, 3.749514>,  <16.439516, 12.677321, 3.851550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.251026, 13.015049, 3.749514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765945, 0.535136, 0.356312,
		0.437350, -0.027482, -0.898872,
		-0.471226, 0.844319, -0.255091,
		16.109659, 13.268345, 3.672986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.714912, 13.026682, 3.228288>,  <16.439516, 12.677321, 3.851550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.714912, 13.026682, 3.228288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.543701, 12.848846, 2.913548>,  <16.440973, 12.742146, 2.724705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.543701, 12.848846, 2.913548>,  <16.714912, 13.026682, 3.228288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543701, 12.848846, 2.913548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865034, 0.050603, -0.499154,
		0.261735, -0.894304, 0.362925,
		-0.428030, -0.444589, -0.786848,
		16.415293, 12.715469, 2.677494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.027176, 12.401039, 3.082051>,  <16.714912, 13.026682, 3.228288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.027176, 12.401039, 3.082051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.885120, 12.578270, 2.752795>,  <16.799887, 12.684608, 2.555242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.885120, 12.578270, 2.752795>,  <17.027176, 12.401039, 3.082051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.885120, 12.578270, 2.752795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933821, 0.127571, -0.334223,
		-0.043077, -0.887361, -0.459059,
		-0.355139, 0.443076, -0.823140,
		16.778578, 12.711193, 2.505853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.360464, 12.087079, 2.482870>,  <17.027176, 12.401039, 3.082051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.360464, 12.087079, 2.482870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.249569, 12.463970, 2.407667>,  <17.183033, 12.690104, 2.362545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.249569, 12.463970, 2.407667>,  <17.360464, 12.087079, 2.482870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.249569, 12.463970, 2.407667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923957, 0.207780, -0.321141,
		-0.263523, -0.262744, -0.928182,
		-0.277236, 0.942228, -0.188009,
		17.166399, 12.746638, 2.351264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420956, 12.286738, 1.757368>,  <17.360464, 12.087079, 2.482870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.420956, 12.286738, 1.757368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.487801, 12.604870, 1.990444>,  <17.527906, 12.795749, 2.130289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.487801, 12.604870, 1.990444>,  <17.420956, 12.286738, 1.757368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.487801, 12.604870, 1.990444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878790, 0.147787, -0.453748,
		-0.446993, 0.587888, -0.674229,
		0.167110, 0.795328, 0.582690,
		17.537933, 12.843469, 2.165251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<19.225634, 18.758018, 17.683420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.452595, 19.040119, 17.513397>,  <19.588772, 19.209379, 17.411383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.452595, 19.040119, 17.513397>,  <19.225634, 18.758018, 17.683420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.452595, 19.040119, 17.513397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345540, -0.264627, -0.900319,
		-0.747434, 0.657717, 0.093543,
		0.567401, 0.705252, -0.425059,
		19.622816, 19.251696, 17.385880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.823627, 19.163193, 17.215124>,  <19.225634, 18.758018, 17.683420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.823627, 19.163193, 17.215124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.200516, 19.227917, 17.097797>,  <19.426649, 19.266750, 17.027401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.200516, 19.227917, 17.097797>,  <18.823627, 19.163193, 17.215124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200516, 19.227917, 17.097797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276648, -0.117895, -0.953712,
		-0.188899, 0.979755, -0.066319,
		0.942222, 0.161808, -0.293318,
		19.483183, 19.276459, 17.009802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.792574, 19.628223, 16.630829>,  <18.823627, 19.163193, 17.215124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.792574, 19.628223, 16.630829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.160938, 19.472534, 16.622543>,  <19.381956, 19.379120, 16.617573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.160938, 19.472534, 16.622543>,  <18.792574, 19.628223, 16.630829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.160938, 19.472534, 16.622543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076833, -0.129172, -0.988641,
		0.382126, 0.912042, -0.148861,
		0.920911, -0.389223, -0.020715,
		19.437212, 19.355768, 16.616329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.146553, 20.034658, 16.145710>,  <18.792574, 19.628223, 16.630829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.146553, 20.034658, 16.145710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.308804, 19.669979, 16.171862>,  <19.406155, 19.451172, 16.187553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.308804, 19.669979, 16.171862>,  <19.146553, 20.034658, 16.145710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.308804, 19.669979, 16.171862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095161, -0.113263, -0.988997,
		0.909072, 0.394941, -0.132700,
		0.405626, -0.911698, 0.065381,
		19.430490, 19.396469, 16.191477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.441202, 20.001797, 15.528248>,  <19.146553, 20.034658, 16.145710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.441202, 20.001797, 15.528248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.445572, 19.627205, 15.668470>,  <19.448193, 19.402451, 15.752604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.445572, 19.627205, 15.668470>,  <19.441202, 20.001797, 15.528248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.445572, 19.627205, 15.668470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114003, -0.349458, -0.929991,
		0.993420, -0.029807, -0.110578,
		0.010922, -0.936478, 0.350557,
		19.448849, 19.346262, 15.773638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.716946, 19.781939, 15.068594>,  <19.441202, 20.001797, 15.528248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.716946, 19.781939, 15.068594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.553749, 19.468620, 15.256207>,  <19.455832, 19.280630, 15.368774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.553749, 19.468620, 15.256207>,  <19.716946, 19.781939, 15.068594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.553749, 19.468620, 15.256207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312295, -0.363011, -0.877892,
		0.857913, -0.504649, -0.096514,
		-0.407991, -0.783296, 0.469031,
		19.431351, 19.233631, 15.396916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.992157, 19.158464, 14.694166>,  <19.716946, 19.781939, 15.068594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.992157, 19.158464, 14.694166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.640152, 19.107166, 14.877090>,  <19.428949, 19.076387, 14.986845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.640152, 19.107166, 14.877090>,  <19.992157, 19.158464, 14.694166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.640152, 19.107166, 14.877090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408411, -0.287182, -0.866445,
		0.242448, -0.949252, 0.200347,
		-0.880011, -0.128244, 0.457312,
		19.376148, 19.068693, 15.014284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.844091, 18.450075, 14.618126>,  <19.992157, 19.158464, 14.694166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.844091, 18.450075, 14.618126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.489361, 18.612377, 14.706585>,  <19.276524, 18.709759, 14.759661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.489361, 18.612377, 14.706585>,  <19.844091, 18.450075, 14.618126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.489361, 18.612377, 14.706585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380478, -0.369533, -0.847751,
		-0.262258, -0.835948, 0.482092,
		-0.886825, 0.405755, 0.221147,
		19.223314, 18.734104, 14.772929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.300014, 17.914087, 14.498223>,  <19.844091, 18.450075, 14.618126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.300014, 17.914087, 14.498223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.089634, 18.254288, 14.496428>,  <18.963406, 18.458408, 14.495350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.089634, 18.254288, 14.496428>,  <19.300014, 17.914087, 14.498223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.089634, 18.254288, 14.496428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447583, -0.281267, -0.848857,
		-0.723218, -0.444448, 0.528603,
		-0.525952, 0.850503, -0.004491,
		18.931849, 18.509439, 14.495080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.562199, 17.680056, 14.440617>,  <19.300014, 17.914087, 14.498223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.562199, 17.680056, 14.440617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.598152, 18.060310, 14.321814>,  <18.619724, 18.288464, 14.250532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.598152, 18.060310, 14.321814>,  <18.562199, 17.680056, 14.440617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.598152, 18.060310, 14.321814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596172, -0.187529, -0.780648,
		-0.797809, 0.247235, 0.549887,
		0.089884, 0.950635, -0.297007,
		18.625118, 18.345501, 14.232712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.940533, 17.869526, 14.380948>,  <18.562199, 17.680056, 14.440617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.940533, 17.869526, 14.380948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.148113, 18.155544, 14.193588>,  <18.272661, 18.327154, 14.081172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.148113, 18.155544, 14.193588>,  <17.940533, 17.869526, 14.380948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.148113, 18.155544, 14.193588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608373, -0.075970, -0.790007,
		-0.600475, 0.694939, 0.395589,
		0.518953, 0.715045, -0.468400,
		18.303799, 18.370058, 14.053068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.565521, 18.428949, 14.240668>,  <17.940533, 17.869526, 14.380948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.565521, 18.428949, 14.240668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.857956, 18.392349, 13.970221>,  <18.033417, 18.370388, 13.807952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.857956, 18.392349, 13.970221>,  <17.565521, 18.428949, 14.240668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.857956, 18.392349, 13.970221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682220, -0.084514, -0.726246,
		0.009312, 0.992212, -0.124212,
		0.731088, -0.091503, -0.676119,
		18.077282, 18.364899, 13.767385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.407398, 18.987061, 13.724959>,  <17.565521, 18.428949, 14.240668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.407398, 18.987061, 13.724959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.614681, 18.694592, 13.547487>,  <17.739052, 18.519110, 13.441004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.614681, 18.694592, 13.547487>,  <17.407398, 18.987061, 13.724959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.614681, 18.694592, 13.547487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687104, -0.047018, -0.725036,
		0.509264, 0.680573, -0.526755,
		0.518207, -0.731171, -0.443679,
		17.770144, 18.475241, 13.414384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.185905, 19.087847, 13.081868>,  <17.407398, 18.987061, 13.724959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.185905, 19.087847, 13.081868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.366402, 18.732265, 13.050512>,  <17.474699, 18.518917, 13.031699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.366402, 18.732265, 13.050512>,  <17.185905, 19.087847, 13.081868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.366402, 18.732265, 13.050512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568634, -0.218718, -0.792980,
		0.687776, 0.402401, -0.604183,
		0.451242, -0.888952, -0.078389,
		17.501774, 18.465580, 13.026996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.463343, 19.013496, 12.255321>,  <17.185905, 19.087847, 13.081868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.463343, 19.013496, 12.255321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.488289, 18.640896, 12.398664>,  <17.503258, 18.417336, 12.484669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.488289, 18.640896, 12.398664>,  <17.463343, 19.013496, 12.255321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.488289, 18.640896, 12.398664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408312, -0.351447, -0.842476,
		0.910709, -0.093778, -0.402261,
		0.062368, -0.931499, 0.358357,
		17.507000, 18.361446, 12.506170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.809158, 18.619844, 11.710481>,  <17.463343, 19.013496, 12.255321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.809158, 18.619844, 11.710481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.585384, 18.373993, 11.932927>,  <17.451120, 18.226482, 12.066395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.585384, 18.373993, 11.932927>,  <17.809158, 18.619844, 11.710481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.585384, 18.373993, 11.932927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262066, -0.505354, -0.822155,
		0.786356, -0.605680, 0.121638,
		-0.559433, -0.614630, 0.556116,
		17.417555, 18.189604, 12.099762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.902790, 18.048805, 11.378873>,  <17.809158, 18.619844, 11.710481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.902790, 18.048805, 11.378873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.580265, 17.963623, 11.599602>,  <17.386749, 17.912514, 11.732039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.580265, 17.963623, 11.599602>,  <17.902790, 18.048805, 11.378873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.580265, 17.963623, 11.599602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373215, -0.540604, -0.753961,
		0.458879, -0.813878, 0.356417,
		-0.806313, -0.212957, 0.551823,
		17.338371, 17.899736, 11.765149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.725361, 17.290119, 11.372787>,  <17.902790, 18.048805, 11.378873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.725361, 17.290119, 11.372787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.371555, 17.435341, 11.489974>,  <17.159273, 17.522474, 11.560287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.371555, 17.435341, 11.489974>,  <17.725361, 17.290119, 11.372787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.371555, 17.435341, 11.489974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466471, -0.697155, -0.544408,
		0.006594, -0.618196, 0.785996,
		-0.884512, 0.363055, 0.292968,
		17.106201, 17.544258, 11.577865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.345093, 16.674620, 11.396886>,  <17.725361, 17.290119, 11.372787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.345093, 16.674620, 11.396886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.074486, 16.968304, 11.419716>,  <16.912121, 17.144514, 11.433414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.074486, 16.968304, 11.419716>,  <17.345093, 16.674620, 11.396886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.074486, 16.968304, 11.419716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614429, -0.520023, -0.593341,
		-0.405957, -0.436475, 0.802925,
		-0.676517, 0.734212, 0.057076,
		16.871531, 17.188568, 11.436838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.765799, 16.324862, 11.407265>,  <17.345093, 16.674620, 11.396886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.765799, 16.324862, 11.407265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.631565, 16.684025, 11.293320>,  <16.551025, 16.899523, 11.224953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.631565, 16.684025, 11.293320>,  <16.765799, 16.324862, 11.407265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.631565, 16.684025, 11.293320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698026, -0.440087, -0.564874,
		-0.632569, 0.009280, 0.774448,
		-0.335582, 0.897907, -0.284863,
		16.530890, 16.953398, 11.207861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.062624, 16.375149, 11.605306>,  <16.765799, 16.324862, 11.407265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.062624, 16.375149, 11.605306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.107956, 16.629536, 11.299967>,  <16.135155, 16.782167, 11.116763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.107956, 16.629536, 11.299967>,  <16.062624, 16.375149, 11.605306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.107956, 16.629536, 11.299967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701734, -0.492665, -0.514638,
		-0.703368, 0.593992, 0.390445,
		0.113332, 0.635968, -0.763348,
		16.141956, 16.820326, 11.070962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326927, 16.454748, 11.434772>,  <16.062624, 16.375149, 11.605306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.326927, 16.454748, 11.434772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.538875, 16.561111, 11.112647>,  <15.666043, 16.624929, 10.919372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.538875, 16.561111, 11.112647>,  <15.326927, 16.454748, 11.434772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.538875, 16.561111, 11.112647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617401, -0.530059, -0.581252,
		-0.581424, 0.805189, -0.116689,
		0.529869, 0.265910, -0.805314,
		15.697836, 16.640884, 10.871053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.705631, 16.198540, 11.513368>,  <15.326927, 16.454748, 11.434772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.705631, 16.198540, 11.513368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.650928, 15.814655, 11.415181>,  <14.618105, 15.584325, 11.356270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.650928, 15.814655, 11.415181>,  <14.705631, 16.198540, 11.513368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.650928, 15.814655, 11.415181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468769, -0.280991, 0.837437,
		-0.872670, -0.000540, 0.488310,
		-0.136759, -0.959710, -0.245466,
		14.609900, 15.526742, 11.341541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.557590, 15.874427, 12.197094>,  <14.705631, 16.198540, 11.513368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.557590, 15.874427, 12.197094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.632428, 15.552570, 11.971688>,  <14.677331, 15.359456, 11.836445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.632428, 15.552570, 11.971688>,  <14.557590, 15.874427, 12.197094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632428, 15.552570, 11.971688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361988, -0.476804, 0.801013,
		-0.913214, -0.353850, 0.202063,
		0.187094, -0.804641, -0.563514,
		14.688557, 15.311178, 11.802634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.103547, 15.281530, 12.453039>,  <14.557590, 15.874427, 12.197094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.103547, 15.281530, 12.453039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.443831, 15.164230, 12.278547>,  <14.648002, 15.093850, 12.173852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.443831, 15.164230, 12.278547>,  <14.103547, 15.281530, 12.453039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.443831, 15.164230, 12.278547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292448, -0.425542, 0.856381,
		-0.436792, -0.856098, -0.276240,
		0.850698, -0.293275, -0.436237,
		14.699045, 15.076256, 12.147678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.248624, 14.701077, 12.636458>,  <14.103547, 15.281530, 12.453039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.248624, 14.701077, 12.636458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.618443, 14.794643, 12.516131>,  <14.840335, 14.850783, 12.443935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.618443, 14.794643, 12.516131>,  <14.248624, 14.701077, 12.636458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.618443, 14.794643, 12.516131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369134, -0.353792, 0.859402,
		0.094603, -0.905601, -0.413445,
		0.924549, 0.233918, -0.300818,
		14.895808, 14.864819, 12.425886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.679703, 14.266755, 13.048272>,  <14.248624, 14.701077, 12.636458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.679703, 14.266755, 13.048272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.931247, 14.533852, 12.888945>,  <15.082173, 14.694109, 12.793348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.931247, 14.533852, 12.888945>,  <14.679703, 14.266755, 13.048272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.931247, 14.533852, 12.888945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632529, -0.141445, 0.761512,
		0.452152, -0.730832, -0.511314,
		0.628860, 0.667740, -0.398318,
		15.119905, 14.734174, 12.769449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.276579, 13.959689, 13.160754>,  <14.679703, 14.266755, 13.048272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.276579, 13.959689, 13.160754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.334573, 14.354851, 13.138760>,  <15.369370, 14.591948, 13.125563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.334573, 14.354851, 13.138760>,  <15.276579, 13.959689, 13.160754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.334573, 14.354851, 13.138760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582322, -0.040269, 0.811961,
		0.799925, -0.149742, -0.581117,
		0.144986, 0.987905, -0.054986,
		15.378069, 14.651222, 13.122264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.941511, 14.039171, 13.408419>,  <15.276579, 13.959689, 13.160754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.941511, 14.039171, 13.408419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.820008, 14.419239, 13.436443>,  <15.747107, 14.647280, 13.453259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.820008, 14.419239, 13.436443>,  <15.941511, 14.039171, 13.408419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.820008, 14.419239, 13.436443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530200, 0.107484, 0.841032,
		0.791593, 0.292618, -0.536429,
		-0.303758, 0.950170, 0.070063,
		15.728881, 14.704290, 13.457462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.529758, 14.465258, 13.561631>,  <15.941511, 14.039171, 13.408419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.529758, 14.465258, 13.561631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.217873, 14.693260, 13.665277>,  <16.030741, 14.830062, 13.727465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.217873, 14.693260, 13.665277>,  <16.529758, 14.465258, 13.561631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.217873, 14.693260, 13.665277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541311, 0.405663, 0.736492,
		0.314692, 0.714514, -0.624851,
		-0.779713, 0.570006, 0.259115,
		15.983959, 14.864263, 13.743012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872276, 15.170669, 13.762705>,  <16.529758, 14.465258, 13.561631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.872276, 15.170669, 13.762705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.503433, 15.180786, 13.917147>,  <16.282127, 15.186856, 14.009812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.503433, 15.180786, 13.917147>,  <16.872276, 15.170669, 13.762705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.503433, 15.180786, 13.917147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309640, 0.646629, 0.697133,
		-0.232034, 0.762385, -0.604093,
		-0.922108, 0.025293, 0.386105,
		16.226801, 15.188374, 14.032978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.902800, 15.755445, 14.128084>,  <16.872276, 15.170669, 13.762705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.902800, 15.755445, 14.128084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.595406, 15.573841, 14.308441>,  <16.410969, 15.464878, 14.416656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.595406, 15.573841, 14.308441>,  <16.902800, 15.755445, 14.128084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.595406, 15.573841, 14.308441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133297, 0.575614, 0.806784,
		-0.625828, 0.680105, -0.381833,
		-0.768486, -0.454011, 0.450891,
		16.364861, 15.437637, 14.443708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.513998, 16.253677, 14.404793>,  <16.902800, 15.755445, 14.128084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.513998, 16.253677, 14.404793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.421982, 15.922115, 14.608753>,  <16.366772, 15.723178, 14.731130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.421982, 15.922115, 14.608753>,  <16.513998, 16.253677, 14.404793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.421982, 15.922115, 14.608753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123589, 0.494829, 0.860157,
		-0.965302, 0.260888, -0.011386,
		-0.230039, -0.828904, 0.509902,
		16.352970, 15.673444, 14.761724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.267246, 16.498075, 14.945765>,  <16.513998, 16.253677, 14.404793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.267246, 16.498075, 14.945765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.346607, 16.130680, 15.082594>,  <16.394224, 15.910242, 15.164691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.346607, 16.130680, 15.082594>,  <16.267246, 16.498075, 14.945765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.346607, 16.130680, 15.082594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280687, 0.387638, 0.878039,
		-0.939069, -0.078192, 0.334717,
		0.198404, -0.918490, 0.342071,
		16.406128, 15.855133, 15.185215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.984661, 16.428749, 15.612504>,  <16.267246, 16.498075, 14.945765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.984661, 16.428749, 15.612504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.284950, 16.165119, 15.594473>,  <16.465124, 16.006941, 15.583654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.284950, 16.165119, 15.594473>,  <15.984661, 16.428749, 15.612504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.284950, 16.165119, 15.594473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361312, 0.352512, 0.863243,
		-0.553054, -0.664343, 0.502771,
		0.750723, -0.659077, -0.045077,
		16.510168, 15.967396, 15.580950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.051233, 16.225454, 16.301979>,  <15.984661, 16.428749, 15.612504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.051233, 16.225454, 16.301979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.401356, 16.103912, 16.151508>,  <16.611429, 16.030987, 16.061226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.401356, 16.103912, 16.151508>,  <16.051233, 16.225454, 16.301979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.401356, 16.103912, 16.151508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445195, 0.202671, 0.872196,
		-0.188781, -0.930912, 0.312674,
		0.875307, -0.303855, -0.376177,
		16.663948, 16.012756, 16.038654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293777, 15.853352, 16.758421>,  <16.051233, 16.225454, 16.301979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293777, 15.853352, 16.758421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.619179, 15.962788, 16.553146>,  <16.814419, 16.028450, 16.429981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.619179, 15.962788, 16.553146>,  <16.293777, 15.853352, 16.758421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.619179, 15.962788, 16.553146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475665, 0.194679, 0.857813,
		0.334597, -0.941938, 0.028234,
		0.813503, 0.273592, -0.513186,
		16.863230, 16.044865, 16.399191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932693, 15.552849, 17.034685>,  <16.293777, 15.853352, 16.758421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.932693, 15.552849, 17.034685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.089569, 15.876602, 16.859831>,  <17.183695, 16.070854, 16.754919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.089569, 15.876602, 16.859831>,  <16.932693, 15.552849, 17.034685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.089569, 15.876602, 16.859831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583008, 0.148873, 0.798711,
		0.711541, -0.568097, -0.413492,
		0.392187, 0.809384, -0.437135,
		17.207226, 16.119417, 16.728691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.570608, 15.543494, 17.292610>,  <16.932693, 15.552849, 17.034685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.570608, 15.543494, 17.292610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.523460, 15.897747, 17.112938>,  <17.495173, 16.110298, 17.005135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.523460, 15.897747, 17.112938>,  <17.570608, 15.543494, 17.292610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.523460, 15.897747, 17.112938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511093, 0.441928, 0.737214,
		0.851405, -0.142679, -0.504730,
		-0.117869, 0.885631, -0.449182,
		17.488100, 16.163437, 16.978184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.253613, 15.844706, 17.224030>,  <17.570608, 15.543494, 17.292610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.253613, 15.844706, 17.224030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.986526, 16.142460, 17.221312>,  <17.826275, 16.321112, 17.219681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.986526, 16.142460, 17.221312>,  <18.253613, 15.844706, 17.224030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.986526, 16.142460, 17.221312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556552, 0.505250, 0.659525,
		0.494374, 0.436593, -0.751652,
		-0.667717, 0.744385, -0.006796,
		17.786211, 16.365776, 17.219273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.646324, 16.514441, 17.305782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.266762, 16.627319, 17.362274>,  <18.039024, 16.695047, 17.396170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.266762, 16.627319, 17.362274>,  <18.646324, 16.514441, 17.305782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.266762, 16.627319, 17.362274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298892, 0.660180, 0.689076,
		0.101217, 0.696080, -0.710794,
		-0.948904, 0.282197, 0.141231,
		17.982090, 16.711979, 17.404644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.687162, 17.212502, 17.248699>,  <18.646324, 16.514441, 17.305782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.687162, 17.212502, 17.248699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.356918, 17.131302, 17.459282>,  <18.158772, 17.082582, 17.585632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.356918, 17.131302, 17.459282>,  <18.687162, 17.212502, 17.248699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.356918, 17.131302, 17.459282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263590, 0.686207, 0.677967,
		-0.498886, 0.698506, -0.513032,
		-0.825611, -0.202998, 0.526459,
		18.109236, 17.070402, 17.617220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.444462, 17.799105, 17.414087>,  <18.687162, 17.212502, 17.248699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.444462, 17.799105, 17.414087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.262024, 17.582573, 17.696630>,  <18.152561, 17.452654, 17.866156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.262024, 17.582573, 17.696630>,  <18.444462, 17.799105, 17.414087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.262024, 17.582573, 17.696630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282171, 0.664802, 0.691678,
		-0.844012, 0.514785, -0.150467,
		-0.456095, -0.541327, 0.706358,
		18.125195, 17.420176, 17.908539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022478, 18.256592, 17.809143>,  <18.444462, 17.799105, 17.414087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.022478, 18.256592, 17.809143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.096371, 17.946922, 18.051310>,  <18.140705, 17.761120, 18.196609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.096371, 17.946922, 18.051310>,  <18.022478, 18.256592, 17.809143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.096371, 17.946922, 18.051310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244265, 0.632855, 0.734731,
		-0.951950, 0.012155, 0.306011,
		0.184730, -0.774175, 0.605416,
		18.151791, 17.714670, 18.232935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.992786, 18.612947, 18.407009>,  <18.022478, 18.256592, 17.809143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.992786, 18.612947, 18.407009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.129227, 18.257534, 18.529751>,  <18.211090, 18.044287, 18.603395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.129227, 18.257534, 18.529751>,  <17.992786, 18.612947, 18.407009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.129227, 18.257534, 18.529751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097113, 0.357992, 0.928661,
		-0.934998, -0.286965, 0.208399,
		0.341098, -0.888534, 0.306854,
		18.231556, 17.990974, 18.621807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.557817, 18.391930, 18.932365>,  <17.992786, 18.612947, 18.407009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.557817, 18.391930, 18.932365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.926601, 18.239918, 18.962206>,  <18.147871, 18.148710, 18.980110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.926601, 18.239918, 18.962206>,  <17.557817, 18.391930, 18.932365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.926601, 18.239918, 18.962206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067237, 0.346768, 0.935538,
		-0.381403, -0.857513, 0.345259,
		0.921960, -0.380031, 0.074602,
		18.203190, 18.125908, 18.984587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.617094, 18.066189, 19.575586>,  <17.557817, 18.391930, 18.932365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.617094, 18.066189, 19.575586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.992901, 18.153732, 19.470203>,  <18.218386, 18.206259, 19.406973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.992901, 18.153732, 19.470203>,  <17.617094, 18.066189, 19.575586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.992901, 18.153732, 19.470203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144390, 0.444430, 0.884101,
		0.310580, -0.868668, 0.385948,
		0.939517, 0.218857, -0.263458,
		18.274755, 18.219389, 19.391167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.047617, 17.704956, 20.063133>,  <17.617094, 18.066189, 19.575586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.047617, 17.704956, 20.063133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.296268, 17.992889, 19.939571>,  <18.445459, 18.165649, 19.865435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.296268, 17.992889, 19.939571>,  <18.047617, 17.704956, 20.063133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.296268, 17.992889, 19.939571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295516, 0.149703, 0.943535,
		0.725431, -0.677813, -0.119662,
		0.621627, 0.719832, -0.308904,
		18.482758, 18.208839, 19.846901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623203, 17.637657, 20.466522>,  <18.047617, 17.704956, 20.063133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.623203, 17.637657, 20.466522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.637348, 18.009590, 20.320011>,  <18.645836, 18.232750, 20.232105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.637348, 18.009590, 20.320011>,  <18.623203, 17.637657, 20.466522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.637348, 18.009590, 20.320011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297280, 0.340127, 0.892154,
		0.954135, -0.140436, -0.264393,
		0.035363, 0.929834, -0.366276,
		18.647957, 18.288540, 20.210129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183550, 17.837502, 20.819183>,  <18.623203, 17.637657, 20.466522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183550, 17.837502, 20.819183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.017048, 18.183815, 20.708082>,  <18.917147, 18.391603, 20.641422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.017048, 18.183815, 20.708082>,  <19.183550, 17.837502, 20.819183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017048, 18.183815, 20.708082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196213, 0.383812, 0.902324,
		0.887823, 0.321100, -0.329643,
		-0.416257, 0.865785, -0.277753,
		18.892170, 18.443550, 20.624756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.396812, 18.297386, 21.365189>,  <19.183550, 17.837502, 20.819183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.396812, 18.297386, 21.365189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.149536, 18.515018, 21.138273>,  <19.001171, 18.645597, 21.002123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.149536, 18.515018, 21.138273>,  <19.396812, 18.297386, 21.365189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.149536, 18.515018, 21.138273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065423, 0.683597, 0.726921,
		0.783300, 0.486490, -0.386999,
		-0.618191, 0.544079, -0.567289,
		18.964079, 18.678242, 20.968086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.674740, 18.977936, 21.146542>,  <19.396812, 18.297386, 21.365189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.674740, 18.977936, 21.146542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.280048, 18.995533, 21.209066>,  <19.043234, 19.006092, 21.246582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.280048, 18.995533, 21.209066>,  <19.674740, 18.977936, 21.146542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.280048, 18.995533, 21.209066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142689, 0.694403, 0.705297,
		-0.077517, 0.718240, -0.691464,
		-0.986727, 0.043992, 0.156313,
		18.984030, 19.008730, 21.255960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.520676, 19.671793, 21.468309>,  <19.674740, 18.977936, 21.146542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.520676, 19.671793, 21.468309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.164055, 19.494549, 21.505816>,  <18.950083, 19.388203, 21.528320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.164055, 19.494549, 21.505816>,  <19.520676, 19.671793, 21.468309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.164055, 19.494549, 21.505816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265263, 0.678646, 0.684890,
		-0.367116, 0.585741, -0.722588,
		-0.891550, -0.443110, 0.093767,
		18.896589, 19.361616, 21.533945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.035093, 20.145679, 21.432112>,  <19.520676, 19.671793, 21.468309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.035093, 20.145679, 21.432112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.878223, 19.856575, 21.659731>,  <18.784101, 19.683113, 21.796303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.878223, 19.856575, 21.659731>,  <19.035093, 20.145679, 21.432112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.878223, 19.856575, 21.659731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046541, 0.633402, 0.772422,
		-0.918712, 0.276442, -0.282044,
		-0.392177, -0.722760, 0.569048,
		18.760571, 19.639748, 21.830444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514229, 20.513514, 21.822224>,  <19.035093, 20.145679, 21.432112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514229, 20.513514, 21.822224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.601414, 20.188198, 22.038021>,  <18.653725, 19.993010, 22.167500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.601414, 20.188198, 22.038021>,  <18.514229, 20.513514, 21.822224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.601414, 20.188198, 22.038021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005898, 0.551679, 0.834036,
		-0.975939, -0.184970, 0.115448,
		0.217962, -0.813287, 0.539496,
		18.666801, 19.944212, 22.199869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.180769, 20.572554, 22.452265>,  <18.514229, 20.513514, 21.822224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.180769, 20.572554, 22.452265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.418468, 20.261021, 22.532555>,  <18.561089, 20.074100, 22.580729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.418468, 20.261021, 22.532555>,  <18.180769, 20.572554, 22.452265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.418468, 20.261021, 22.532555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018848, 0.262985, 0.964616,
		-0.804062, -0.569437, 0.170957,
		0.594247, -0.778833, 0.200723,
		18.596743, 20.027370, 22.592772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.832109, 20.199291, 22.982801>,  <18.180769, 20.572554, 22.452265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.832109, 20.199291, 22.982801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.224682, 20.122715, 22.977982>,  <18.460224, 20.076769, 22.975090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.224682, 20.122715, 22.977982>,  <17.832109, 20.199291, 22.982801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.224682, 20.122715, 22.977982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041252, 0.149291, 0.987933,
		-0.187332, -0.970084, 0.154416,
		0.981430, -0.191442, -0.012051,
		18.519112, 20.065283, 22.974367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.943674, 19.725784, 23.539511>,  <17.832109, 20.199291, 22.982801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.943674, 19.725784, 23.539511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.293922, 19.904053, 23.465033>,  <18.504070, 20.011013, 23.420345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.293922, 19.904053, 23.465033>,  <17.943674, 19.725784, 23.539511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.293922, 19.904053, 23.465033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096956, 0.215468, 0.971685,
		0.473172, -0.868879, 0.145458,
		0.875619, 0.445671, -0.186197,
		18.556608, 20.037754, 23.409174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.343197, 19.552633, 24.102152>,  <17.943674, 19.725784, 23.539511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.343197, 19.552633, 24.102152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.541912, 19.867596, 23.956167>,  <18.661142, 20.056572, 23.868576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.541912, 19.867596, 23.956167>,  <18.343197, 19.552633, 24.102152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.541912, 19.867596, 23.956167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235642, 0.282345, 0.929921,
		0.835269, -0.547975, -0.045280,
		0.496789, 0.787404, -0.364960,
		18.690948, 20.103817, 23.846680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.918558, 19.630938, 24.559793>,  <18.343197, 19.552633, 24.102152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.918558, 19.630938, 24.559793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.934525, 19.961124, 24.334579>,  <18.944105, 20.159237, 24.199451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.934525, 19.961124, 24.334579>,  <18.918558, 19.630938, 24.559793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.934525, 19.961124, 24.334579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133867, 0.553986, 0.821692,
		0.990195, -0.108170, -0.088391,
		0.039915, 0.825469, -0.563035,
		18.946499, 20.208765, 24.165668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.675688, 19.960449, 24.668550>,  <18.918558, 19.630938, 24.559793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.675688, 19.960449, 24.668550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.399403, 20.227844, 24.558250>,  <19.233631, 20.388281, 24.492071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.399403, 20.227844, 24.558250>,  <19.675688, 19.960449, 24.668550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.399403, 20.227844, 24.558250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213352, 0.552745, 0.805577,
		0.690938, 0.497592, -0.524412,
		-0.690715, 0.668487, -0.275751,
		19.192188, 20.428391, 24.475525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015680, 20.622992, 24.724489>,  <19.675688, 19.960449, 24.668550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015680, 20.622992, 24.724489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.625076, 20.708496, 24.735321>,  <19.390715, 20.759798, 24.741821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.625076, 20.708496, 24.735321>,  <20.015680, 20.622992, 24.724489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.625076, 20.708496, 24.735321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151652, 0.592557, 0.791124,
		0.153065, 0.776648, -0.611056,
		-0.976511, 0.213761, 0.027081,
		19.332123, 20.772625, 24.743444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.918222, 21.361732, 24.737991>,  <20.015680, 20.622992, 24.724489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.918222, 21.361732, 24.737991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.654171, 21.126877, 24.925394>,  <19.495741, 20.985964, 25.037836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.654171, 21.126877, 24.925394>,  <19.918222, 21.361732, 24.737991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.654171, 21.126877, 24.925394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160611, 0.498963, 0.851610,
		-0.733781, 0.637419, -0.235079,
		-0.660128, -0.587139, 0.468506,
		19.456133, 20.950735, 25.065947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.518860, 21.802555, 25.174299>,  <19.918222, 21.361732, 24.737991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.518860, 21.802555, 25.174299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.554321, 21.428810, 25.312346>,  <19.575598, 21.204563, 25.395174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.554321, 21.428810, 25.312346>,  <19.518860, 21.802555, 25.174299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.554321, 21.428810, 25.312346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428403, 0.348566, 0.833650,
		-0.899228, 0.073943, 0.431186,
		0.088654, -0.934363, 0.345118,
		19.580917, 21.148500, 25.415880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128078, 22.074678, 24.744335>,  <19.518860, 21.802555, 25.174299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128078, 22.074678, 24.744335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.472736, 22.275620, 24.715462>,  <20.679531, 22.396185, 24.698137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.472736, 22.275620, 24.715462>,  <20.128078, 22.074678, 24.744335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.472736, 22.275620, 24.715462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127884, 0.077266, -0.988775,
		-0.491137, 0.861203, 0.130819,
		0.861644, 0.502354, -0.072186,
		20.731230, 22.426325, 24.693806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.054909, 22.465759, 24.183676>,  <20.128078, 22.074678, 24.744335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.054909, 22.465759, 24.183676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.454102, 22.490547, 24.189278>,  <20.693617, 22.505421, 24.192638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.454102, 22.490547, 24.189278>,  <20.054909, 22.465759, 24.183676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454102, 22.490547, 24.189278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001173, 0.202421, -0.979298,
		-0.063521, 0.977336, 0.201939,
		0.997980, 0.061969, 0.014004,
		20.753496, 22.509138, 24.193480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.221291, 23.079931, 23.812357>,  <20.054909, 22.465759, 24.183676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.221291, 23.079931, 23.812357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.549023, 22.851944, 23.787588>,  <20.745661, 22.715151, 23.772726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.549023, 22.851944, 23.787588>,  <20.221291, 23.079931, 23.812357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.549023, 22.851944, 23.787588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028647, 0.067169, -0.997330,
		0.572607, 0.818916, 0.038706,
		0.819329, -0.569969, -0.061921,
		20.794821, 22.680954, 23.769012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.570837, 23.345222, 23.253908>,  <20.221291, 23.079931, 23.812357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.570837, 23.345222, 23.253908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.726486, 22.978798, 23.292723>,  <20.819876, 22.758944, 23.316011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.726486, 22.978798, 23.292723>,  <20.570837, 23.345222, 23.253908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.726486, 22.978798, 23.292723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188615, -0.023874, -0.981761,
		0.901670, 0.400327, 0.163493,
		0.389122, -0.916061, 0.097034,
		20.843224, 22.703979, 23.321833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.095135, 23.173975, 22.765224>,  <20.570837, 23.345222, 23.253908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.095135, 23.173975, 22.765224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.983692, 22.800655, 22.855846>,  <20.916826, 22.576664, 22.910219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.983692, 22.800655, 22.855846>,  <21.095135, 23.173975, 22.765224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.983692, 22.800655, 22.855846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293191, -0.307286, -0.905326,
		0.914559, -0.185807, 0.359247,
		-0.278607, -0.933301, 0.226554,
		20.900110, 22.520664, 22.923813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.331364, 22.734854, 22.188694>,  <21.095135, 23.173975, 22.765224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.331364, 22.734854, 22.188694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.093304, 22.483894, 22.389559>,  <20.950468, 22.333319, 22.510078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.093304, 22.483894, 22.389559>,  <21.331364, 22.734854, 22.188694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.093304, 22.483894, 22.389559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104944, -0.558851, -0.822601,
		0.796733, -0.542269, 0.266758,
		-0.595150, -0.627399, 0.502163,
		20.914759, 22.295675, 22.540207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.659937, 22.065117, 22.037533>,  <21.331364, 22.734854, 22.188694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.659937, 22.065117, 22.037533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.273872, 22.029369, 22.135899>,  <21.042233, 22.007921, 22.194918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.273872, 22.029369, 22.135899>,  <21.659937, 22.065117, 22.037533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.273872, 22.029369, 22.135899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131970, -0.645285, -0.752457,
		0.225933, -0.758696, 0.611011,
		-0.965162, -0.089370, 0.245916,
		20.984324, 22.002558, 22.209673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.577105, 21.318661, 21.876257>,  <21.659937, 22.065117, 22.037533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.577105, 21.318661, 21.876257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.215809, 21.487747, 21.905849>,  <20.999031, 21.589199, 21.923605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.215809, 21.487747, 21.905849>,  <21.577105, 21.318661, 21.876257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.215809, 21.487747, 21.905849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280997, -0.452278, -0.846455,
		-0.324351, -0.785337, 0.527297,
		-0.903237, 0.422718, 0.073980,
		20.944838, 21.614563, 21.928043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.970026, 20.813173, 22.108221>,  <21.577105, 21.318661, 21.876257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.970026, 20.813173, 22.108221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.798489, 21.110886, 21.903425>,  <20.695566, 21.289513, 21.780548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.798489, 21.110886, 21.903425>,  <20.970026, 20.813173, 22.108221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.798489, 21.110886, 21.903425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286165, -0.649487, -0.704469,
		-0.856856, -0.155594, 0.491517,
		-0.428845, 0.744283, -0.511992,
		20.669836, 21.334171, 21.749828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.296772, 20.560926, 21.941463>,  <20.970026, 20.813173, 22.108221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.296772, 20.560926, 21.941463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.391899, 20.853004, 21.685257>,  <20.448975, 21.028252, 21.531532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.391899, 20.853004, 21.685257>,  <20.296772, 20.560926, 21.941463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.391899, 20.853004, 21.685257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279512, -0.580095, -0.765091,
		-0.930224, 0.360983, 0.066141,
		0.237817, 0.730193, -0.640517,
		20.463243, 21.072062, 21.493101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.779505, 20.524931, 21.381332>,  <20.296772, 20.560926, 21.941463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.779505, 20.524931, 21.381332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.088779, 20.728485, 21.229958>,  <20.274343, 20.850618, 21.139132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.088779, 20.728485, 21.229958>,  <19.779505, 20.524931, 21.381332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.088779, 20.728485, 21.229958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173841, -0.403809, -0.898175,
		-0.609886, 0.760245, -0.223754,
		0.773187, 0.508887, -0.378439,
		20.320736, 20.881151, 21.116426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.400875, 20.815386, 20.737669>,  <19.779505, 20.524931, 21.381332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.400875, 20.815386, 20.737669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.794533, 20.830616, 20.668379>,  <20.030727, 20.839754, 20.626804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.794533, 20.830616, 20.668379>,  <19.400875, 20.815386, 20.737669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.794533, 20.830616, 20.668379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153878, -0.302356, -0.940692,
		-0.088192, 0.952434, -0.291704,
		0.984146, 0.038075, -0.173224,
		20.089777, 20.842039, 20.616411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.368685, 20.979372, 20.044519>,  <19.400875, 20.815386, 20.737669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.368685, 20.979372, 20.044519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.740635, 20.840210, 20.092342>,  <19.963804, 20.756712, 20.121037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.740635, 20.840210, 20.092342>,  <19.368685, 20.979372, 20.044519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.740635, 20.840210, 20.092342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035376, -0.238916, -0.970396,
		0.366169, 0.906577, -0.209855,
		0.929876, -0.347905, 0.119555,
		20.019598, 20.735838, 20.128208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.618952, 21.217388, 19.477264>,  <19.368685, 20.979372, 20.044519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.618952, 21.217388, 19.477264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.859924, 20.929478, 19.615248>,  <20.004509, 20.756731, 19.698038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.859924, 20.929478, 19.615248>,  <19.618952, 21.217388, 19.477264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.859924, 20.929478, 19.615248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040416, -0.404123, -0.913811,
		0.797145, 0.564452, -0.214367,
		0.602433, -0.719777, 0.344957,
		20.040655, 20.713545, 19.718735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.271362, 21.239975, 19.194361>,  <19.618952, 21.217388, 19.477264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.271362, 21.239975, 19.194361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.246376, 20.857517, 19.308823>,  <20.231384, 20.628042, 19.377501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.246376, 20.857517, 19.308823>,  <20.271362, 21.239975, 19.194361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.246376, 20.857517, 19.308823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076756, -0.290470, -0.953801,
		0.995091, -0.037615, 0.091534,
		-0.062465, -0.956145, 0.286157,
		20.227636, 20.570673, 19.394670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.620863, 20.944506, 18.662287>,  <20.271362, 21.239975, 19.194361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.620863, 20.944506, 18.662287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.463352, 20.637108, 18.864021>,  <20.368847, 20.452669, 18.985062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.463352, 20.637108, 18.864021>,  <20.620863, 20.944506, 18.662287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.463352, 20.637108, 18.864021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019177, -0.541678, -0.840367,
		0.919007, -0.340587, 0.198562,
		-0.393775, -0.768495, 0.504337,
		20.345219, 20.406559, 19.015322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.058050, 20.292427, 18.553524>,  <20.620863, 20.944506, 18.662287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.058050, 20.292427, 18.553524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.675571, 20.206696, 18.633270>,  <20.446083, 20.155256, 18.681118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.675571, 20.206696, 18.633270>,  <21.058050, 20.292427, 18.553524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.675571, 20.206696, 18.633270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103740, -0.388757, -0.915481,
		0.273718, -0.896065, 0.349494,
		-0.956199, -0.214327, 0.199367,
		20.388712, 20.142397, 18.693081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.035128, 19.611355, 18.500406>,  <21.058050, 20.292427, 18.553524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.035128, 19.611355, 18.500406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.657001, 19.732578, 18.452188>,  <20.430126, 19.805313, 18.423258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.657001, 19.732578, 18.452188>,  <21.035128, 19.611355, 18.500406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.657001, 19.732578, 18.452188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028878, -0.445919, -0.894607,
		-0.324871, -0.842206, 0.430287,
		-0.945317, 0.303058, -0.120545,
		20.373405, 19.823496, 18.416025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.611444, 18.982519, 18.245440>,  <21.035128, 19.611355, 18.500406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.611444, 18.982519, 18.245440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.382545, 19.297134, 18.152582>,  <20.245207, 19.485903, 18.096867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.382545, 19.297134, 18.152582>,  <20.611444, 18.982519, 18.245440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.382545, 19.297134, 18.152582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300849, -0.464682, -0.832803,
		-0.762905, -0.406728, 0.502542,
		-0.572246, 0.786538, -0.232145,
		20.210871, 19.533096, 18.082939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.874889, 18.752726, 18.199615>,  <20.611444, 18.982519, 18.245440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.874889, 18.752726, 18.199615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.880634, 19.085526, 17.977779>,  <19.884081, 19.285206, 17.844679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.880634, 19.085526, 17.977779>,  <19.874889, 18.752726, 18.199615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.880634, 19.085526, 17.977779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487654, -0.478382, -0.730304,
		-0.872919, 0.280937, 0.398857,
		0.014363, 0.832001, -0.554588,
		19.884943, 19.335125, 17.811403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.679043, 14.634746, 15.558777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.574406, 15.003151, 15.443327>,  <16.511623, 15.224194, 15.374057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.574406, 15.003151, 15.443327>,  <16.679043, 14.634746, 15.558777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.574406, 15.003151, 15.443327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641344, -0.389342, -0.661128,
		-0.721282, 0.012163, 0.692535,
		-0.261592, 0.921013, -0.288626,
		16.495928, 15.279455, 15.356739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.904922, 14.671632, 15.428544>,  <16.679043, 14.634746, 15.558777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.904922, 14.671632, 15.428544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.042606, 14.993320, 15.234741>,  <16.125217, 15.186334, 15.118460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.042606, 14.993320, 15.234741>,  <15.904922, 14.671632, 15.428544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.042606, 14.993320, 15.234741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384308, -0.350147, -0.854227,
		-0.856636, 0.480235, 0.188544,
		0.344211, 0.804221, -0.484507,
		16.145870, 15.234587, 15.089389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.420699, 14.760444, 15.085288>,  <15.904922, 14.671632, 15.428544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.420699, 14.760444, 15.085288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.691586, 14.981056, 14.890480>,  <15.854118, 15.113424, 14.773595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.691586, 14.981056, 14.890480>,  <15.420699, 14.760444, 15.085288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.691586, 14.981056, 14.890480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523063, -0.104646, -0.845845,
		-0.517475, 0.827563, 0.217618,
		0.677218, 0.551532, -0.487020,
		15.894752, 15.146516, 14.744374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.032780, 15.052130, 14.610381>,  <15.420699, 14.760444, 15.085288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.032780, 15.052130, 14.610381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.394017, 15.082150, 14.441248>,  <15.610760, 15.100162, 14.339768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.394017, 15.082150, 14.441248>,  <15.032780, 15.052130, 14.610381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.394017, 15.082150, 14.441248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395731, -0.236962, -0.887269,
		-0.166785, 0.968616, -0.184299,
		0.903095, 0.075051, -0.422833,
		15.664946, 15.104665, 14.314398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.900687, 15.481995, 14.019745>,  <15.032780, 15.052130, 14.610381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.900687, 15.481995, 14.019745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.257310, 15.323910, 13.931261>,  <15.471284, 15.229059, 13.878171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.257310, 15.323910, 13.931261>,  <14.900687, 15.481995, 14.019745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.257310, 15.323910, 13.931261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242048, -0.002961, -0.970260,
		0.382802, 0.918586, -0.098300,
		0.891558, -0.395211, -0.221208,
		15.524777, 15.205346, 13.864899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.207891, 15.872901, 13.494945>,  <14.900687, 15.481995, 14.019745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.207891, 15.872901, 13.494945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.391055, 15.517494, 13.483232>,  <15.500954, 15.304250, 13.476206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.391055, 15.517494, 13.483232>,  <15.207891, 15.872901, 13.494945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.391055, 15.517494, 13.483232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105539, -0.021629, -0.994180,
		0.882712, 0.458334, -0.103677,
		0.457909, -0.888517, -0.029279,
		15.528428, 15.250939, 13.474448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.864892, 15.890841, 13.051465>,  <15.207891, 15.872901, 13.494945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.864892, 15.890841, 13.051465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.700915, 15.526100, 13.060154>,  <15.602530, 15.307256, 13.065367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.700915, 15.526100, 13.060154>,  <15.864892, 15.890841, 13.051465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.700915, 15.526100, 13.060154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328634, 0.125445, -0.936089,
		0.850851, -0.390881, -0.351091,
		-0.409942, -0.911853, 0.021722,
		15.577932, 15.252544, 13.066670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.890850, 15.690304, 12.342607>,  <15.864892, 15.890841, 13.051465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.890850, 15.690304, 12.342607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.665669, 15.399395, 12.499660>,  <15.530561, 15.224850, 12.593893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.665669, 15.399395, 12.499660>,  <15.890850, 15.690304, 12.342607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.665669, 15.399395, 12.499660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405482, -0.170930, -0.897980,
		0.720188, -0.664725, -0.198671,
		-0.562950, -0.727272, 0.392635,
		15.496784, 15.181213, 12.617451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.080244, 15.151756, 11.920873>,  <15.890850, 15.690304, 12.342607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.080244, 15.151756, 11.920873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.724813, 15.071487, 12.085874>,  <15.511554, 15.023326, 12.184875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.724813, 15.071487, 12.085874>,  <16.080244, 15.151756, 11.920873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.724813, 15.071487, 12.085874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385701, -0.159945, -0.908654,
		0.248320, -0.966513, 0.064723,
		-0.888578, -0.200673, 0.412503,
		15.458239, 15.011286, 12.209624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.780499, 14.646008, 11.525321>,  <16.080244, 15.151756, 11.920873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.780499, 14.646008, 11.525321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.451367, 14.743244, 11.730789>,  <15.253888, 14.801585, 11.854071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.451367, 14.743244, 11.730789>,  <15.780499, 14.646008, 11.525321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.451367, 14.743244, 11.730789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482355, 0.179169, -0.857457,
		-0.300472, -0.953313, -0.030171,
		-0.822830, 0.243089, 0.513671,
		15.204518, 14.816171, 11.884891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191494, 14.316278, 11.150480>,  <15.780499, 14.646008, 11.525321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.191494, 14.316278, 11.150480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.021459, 14.609020, 11.363530>,  <14.919437, 14.784665, 11.491361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.021459, 14.609020, 11.363530>,  <15.191494, 14.316278, 11.150480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.021459, 14.609020, 11.363530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527888, 0.277555, -0.802681,
		-0.735278, -0.622377, 0.268352,
		-0.425088, 0.731854, 0.532626,
		14.893932, 14.828576, 11.523318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.496642, 14.278776, 11.113804>,  <15.191494, 14.316278, 11.150480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.496642, 14.278776, 11.113804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.577996, 14.666393, 11.169787>,  <14.626809, 14.898964, 11.203378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.577996, 14.666393, 11.169787>,  <14.496642, 14.278776, 11.113804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.577996, 14.666393, 11.169787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438510, 0.217964, -0.871895,
		-0.875410, 0.115958, 0.469267,
		0.203386, 0.969043, 0.139959,
		14.639012, 14.957107, 11.211775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.801861, 14.610514, 11.100232>,  <14.496642, 14.278776, 11.113804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.801861, 14.610514, 11.100232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.102906, 14.852863, 10.997089>,  <14.283534, 14.998273, 10.935204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.102906, 14.852863, 10.997089>,  <13.801861, 14.610514, 11.100232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.102906, 14.852863, 10.997089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579615, 0.423767, -0.696037,
		-0.312439, 0.673305, 0.670107,
		0.752614, 0.605873, -0.257857,
		14.328691, 15.034625, 10.919732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.396587, 15.295405, 10.986917>,  <13.801861, 14.610514, 11.100232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.396587, 15.295405, 10.986917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.742488, 15.222103, 10.799888>,  <13.950028, 15.178122, 10.687671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.742488, 15.222103, 10.799888>,  <13.396587, 15.295405, 10.986917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.742488, 15.222103, 10.799888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332037, 0.489878, -0.806083,
		0.376773, 0.852312, 0.362775,
		0.864751, -0.183256, -0.467572,
		14.001913, 15.167127, 10.659616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.113620, 15.589887, 10.408251>,  <13.396587, 15.295405, 10.986917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.113620, 15.589887, 10.408251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.779447, 15.604126, 10.627626>,  <12.578943, 15.612670, 10.759252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.779447, 15.604126, 10.627626>,  <13.113620, 15.589887, 10.408251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.779447, 15.604126, 10.627626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287388, 0.878894, 0.380726,
		-0.468467, 0.475686, -0.744487,
		-0.835432, 0.035599, 0.548440,
		12.528817, 15.614806, 10.792158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.030458, 16.324955, 10.417795>,  <13.113620, 15.589887, 10.408251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.030458, 16.324955, 10.417795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.814908, 16.176567, 10.720317>,  <12.685578, 16.087534, 10.901830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.814908, 16.176567, 10.720317>,  <13.030458, 16.324955, 10.417795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.814908, 16.176567, 10.720317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258506, 0.781668, 0.567600,
		-0.801741, 0.501375, -0.325323,
		-0.538875, -0.370970, 0.756304,
		12.653246, 16.065275, 10.947208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.551462, 16.821779, 10.606230>,  <13.030458, 16.324955, 10.417795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.551462, 16.821779, 10.606230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.607202, 16.599419, 10.934024>,  <12.640645, 16.466002, 11.130700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.607202, 16.599419, 10.934024>,  <12.551462, 16.821779, 10.606230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.607202, 16.599419, 10.934024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102680, 0.831210, 0.546395,
		-0.984905, 0.008005, 0.172909,
		0.139350, -0.555902, 0.819485,
		12.649007, 16.432648, 11.179870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.221671, 17.238142, 11.068600>,  <12.551462, 16.821779, 10.606230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.221671, 17.238142, 11.068600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.444053, 16.982689, 11.281415>,  <12.577481, 16.829416, 11.409104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.444053, 16.982689, 11.281415>,  <12.221671, 17.238142, 11.068600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.444053, 16.982689, 11.281415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095159, 0.684765, 0.722524,
		-0.825749, -0.351062, 0.441469,
		0.555953, -0.638633, 0.532038,
		12.610839, 16.791100, 11.441027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.026120, 17.409937, 11.659148>,  <12.221671, 17.238142, 11.068600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.026120, 17.409937, 11.659148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.370170, 17.216492, 11.724023>,  <12.576599, 17.100424, 11.762948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.370170, 17.216492, 11.724023>,  <12.026120, 17.409937, 11.659148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.370170, 17.216492, 11.724023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205212, 0.619173, 0.757967,
		-0.466984, -0.618663, 0.631809,
		0.860124, -0.483613, 0.162187,
		12.628207, 17.071407, 11.772678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.036686, 17.046719, 12.297420>,  <12.026120, 17.409937, 11.659148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.036686, 17.046719, 12.297420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.417222, 17.133087, 12.209486>,  <12.645544, 17.184908, 12.156726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.417222, 17.133087, 12.209486>,  <12.036686, 17.046719, 12.297420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.417222, 17.133087, 12.209486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090346, 0.486618, 0.868931,
		0.294596, -0.846511, 0.443432,
		0.951342, 0.215921, -0.219835,
		12.702624, 17.197865, 12.143536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.390916, 16.884628, 12.941136>,  <12.036686, 17.046719, 12.297420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.390916, 16.884628, 12.941136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.674090, 17.093739, 12.751176>,  <12.843995, 17.219206, 12.637199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.674090, 17.093739, 12.751176>,  <12.390916, 16.884628, 12.941136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.674090, 17.093739, 12.751176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261615, 0.430472, 0.863859,
		0.656038, -0.735797, 0.167980,
		0.707936, 0.522778, -0.474901,
		12.886471, 17.250572, 12.608706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.938446, 17.064442, 13.501251>,  <12.390916, 16.884628, 12.941136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.938446, 17.064442, 13.501251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.036960, 17.298031, 13.191847>,  <13.096067, 17.438185, 13.006204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.036960, 17.298031, 13.191847>,  <12.938446, 17.064442, 13.501251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.036960, 17.298031, 13.191847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375190, 0.678424, 0.631644,
		0.893632, -0.445777, -0.052017,
		0.246283, 0.583973, -0.773512,
		13.110845, 17.473223, 12.959793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.615590, 17.103098, 13.499373>,  <12.938446, 17.064442, 13.501251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.615590, 17.103098, 13.499373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.485497, 17.440243, 13.327883>,  <13.407442, 17.642530, 13.224988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.485497, 17.440243, 13.327883>,  <13.615590, 17.103098, 13.499373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.485497, 17.440243, 13.327883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513208, 0.538122, 0.668612,
		0.794255, -0.002571, -0.607579,
		-0.325232, 0.842863, -0.428726,
		13.387928, 17.693102, 13.199265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.104996, 17.520811, 13.666599>,  <13.615590, 17.103098, 13.499373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.104996, 17.520811, 13.666599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.811112, 17.768581, 13.555952>,  <13.634783, 17.917244, 13.489564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.811112, 17.768581, 13.555952>,  <14.104996, 17.520811, 13.666599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.811112, 17.768581, 13.555952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289471, 0.655031, 0.697955,
		0.613524, 0.432720, -0.660562,
		-0.734707, 0.619425, -0.276617,
		13.590700, 17.954409, 13.472967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.473713, 18.101006, 13.519067>,  <14.104996, 17.520811, 13.666599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.473713, 18.101006, 13.519067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.095260, 18.221226, 13.567232>,  <13.868188, 18.293358, 13.596131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.095260, 18.221226, 13.567232>,  <14.473713, 18.101006, 13.519067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.095260, 18.221226, 13.567232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320815, 0.820074, 0.473874,
		0.043677, 0.486978, -0.872321,
		-0.946134, 0.300551, 0.120412,
		13.811419, 18.311392, 13.603355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.371088, 18.876612, 13.346929>,  <14.473713, 18.101006, 13.519067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.371088, 18.876612, 13.346929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.065064, 18.775139, 13.583683>,  <13.881450, 18.714256, 13.725736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.065064, 18.775139, 13.583683>,  <14.371088, 18.876612, 13.346929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.065064, 18.775139, 13.583683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267721, 0.710639, 0.650629,
		-0.585669, 0.656231, -0.475765,
		-0.765060, -0.253681, 0.591886,
		13.835546, 18.699034, 13.761249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.148902, 19.482626, 13.546931>,  <14.371088, 18.876612, 13.346929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.148902, 19.482626, 13.546931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.995008, 19.224472, 13.810888>,  <13.902671, 19.069580, 13.969262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.995008, 19.224472, 13.810888>,  <14.148902, 19.482626, 13.546931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.995008, 19.224472, 13.810888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238140, 0.621315, 0.746497,
		-0.891778, 0.444351, -0.085350,
		-0.384736, -0.645384, 0.659892,
		13.879587, 19.030857, 14.008856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.800280, 19.947807, 14.019501>,  <14.148902, 19.482626, 13.546931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.800280, 19.947807, 14.019501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.870339, 19.603260, 14.210232>,  <13.912375, 19.396532, 14.324671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.870339, 19.603260, 14.210232>,  <13.800280, 19.947807, 14.019501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.870339, 19.603260, 14.210232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172653, 0.503682, 0.846461,
		-0.969285, -0.065932, 0.236938,
		0.175150, -0.861369, 0.476828,
		13.922885, 19.344849, 14.353280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.123569, 20.275801, 14.379934>,  <13.800280, 19.947807, 14.019501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.123569, 20.275801, 14.379934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.969275, 20.632267, 14.284409>,  <12.876699, 20.846148, 14.227093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.969275, 20.632267, 14.284409>,  <13.123569, 20.275801, 14.379934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.969275, 20.632267, 14.284409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420560, -0.400230, -0.814215,
		-0.821181, -0.213635, 0.529171,
		-0.385735, 0.891166, -0.238815,
		12.853555, 20.899616, 14.212764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.506304, 20.160864, 14.039620>,  <13.123569, 20.275801, 14.379934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.506304, 20.160864, 14.039620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.634849, 20.521000, 13.922239>,  <12.711976, 20.737082, 13.851810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.634849, 20.521000, 13.922239>,  <12.506304, 20.160864, 14.039620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.634849, 20.521000, 13.922239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331819, -0.183179, -0.925387,
		-0.886917, 0.394759, 0.239883,
		0.321363, 0.900339, -0.293454,
		12.731257, 20.791101, 13.834203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.077455, 20.388235, 13.425850>,  <12.506304, 20.160864, 14.039620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.077455, 20.388235, 13.425850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.386844, 20.639133, 13.389408>,  <12.572477, 20.789673, 13.367543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.386844, 20.639133, 13.389408>,  <12.077455, 20.388235, 13.425850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.386844, 20.639133, 13.389408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083922, -0.041124, -0.995623,
		-0.628248, 0.777734, 0.020831,
		0.773473, 0.627247, -0.091106,
		12.618886, 20.827307, 13.362077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.920629, 20.840910, 12.879036>,  <12.077455, 20.388235, 13.425850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.920629, 20.840910, 12.879036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.318629, 20.875916, 12.898266>,  <12.557430, 20.896919, 12.909803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.318629, 20.875916, 12.898266>,  <11.920629, 20.840910, 12.879036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.318629, 20.875916, 12.898266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052872, -0.053352, -0.997175,
		-0.084702, 0.994733, -0.057712,
		0.995003, 0.087514, 0.048074,
		12.617130, 20.902170, 12.912688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.054168, 21.417675, 12.422647>,  <11.920629, 20.840910, 12.879036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.054168, 21.417675, 12.422647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.389348, 21.202274, 12.458099>,  <12.590456, 21.073034, 12.479370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.389348, 21.202274, 12.458099>,  <12.054168, 21.417675, 12.422647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.389348, 21.202274, 12.458099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187251, 0.131150, -0.973518,
		0.512618, 0.832355, 0.210732,
		0.837950, -0.538502, 0.088629,
		12.640733, 21.040724, 12.484688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.486749, 21.657845, 11.866577>,  <12.054168, 21.417675, 12.422647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.486749, 21.657845, 11.866577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.669160, 21.316967, 11.969190>,  <12.778606, 21.112440, 12.030757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.669160, 21.316967, 11.969190>,  <12.486749, 21.657845, 11.866577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.669160, 21.316967, 11.969190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203484, -0.180770, -0.962246,
		0.866391, 0.491010, 0.090971,
		0.456028, -0.852192, 0.256530,
		12.805968, 21.061310, 12.046148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.171433, 21.608667, 11.513824>,  <12.486749, 21.657845, 11.866577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.171433, 21.608667, 11.513824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.085208, 21.231346, 11.614790>,  <13.033472, 21.004953, 11.675370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.085208, 21.231346, 11.614790>,  <13.171433, 21.608667, 11.513824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.085208, 21.231346, 11.614790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310377, -0.311277, -0.898205,
		0.925850, -0.115277, 0.359879,
		-0.215564, -0.943302, 0.252416,
		13.020538, 20.948355, 11.690515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.811270, 21.293697, 11.270121>,  <13.171433, 21.608667, 11.513824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.811270, 21.293697, 11.270121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.511209, 21.029797, 11.288000>,  <13.331172, 20.871456, 11.298728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.511209, 21.029797, 11.288000>,  <13.811270, 21.293697, 11.270121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.511209, 21.029797, 11.288000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217970, -0.310521, -0.925238,
		0.624308, -0.684327, 0.376744,
		-0.750152, -0.659753, 0.044698,
		13.286163, 20.831871, 11.301410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.053786, 20.663939, 10.928580>,  <13.811270, 21.293697, 11.270121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.053786, 20.663939, 10.928580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.654391, 20.667599, 10.906902>,  <13.414754, 20.669794, 10.893895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.654391, 20.667599, 10.906902>,  <14.053786, 20.663939, 10.928580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.654391, 20.667599, 10.906902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050194, -0.249895, -0.966971,
		-0.022389, -0.968230, 0.249058,
		-0.998488, 0.009148, -0.054195,
		13.354845, 20.670343, 10.890644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.868459, 20.130409, 10.512637>,  <14.053786, 20.663939, 10.928580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.868459, 20.130409, 10.512637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.537097, 20.354313, 10.504456>,  <13.338280, 20.488655, 10.499546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.537097, 20.354313, 10.504456>,  <13.868459, 20.130409, 10.512637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.537097, 20.354313, 10.504456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184961, -0.307834, -0.933288,
		-0.528713, -0.769356, 0.358545,
		-0.828403, 0.559758, -0.020455,
		13.288576, 20.522240, 10.498320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.456716, 19.770807, 10.047690>,  <13.868459, 20.130409, 10.512637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.456716, 19.770807, 10.047690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.275764, 20.127289, 10.061002>,  <13.167192, 20.341177, 10.068989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.275764, 20.127289, 10.061002>,  <13.456716, 19.770807, 10.047690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.275764, 20.127289, 10.061002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300016, -0.116938, -0.946740,
		-0.839847, -0.438269, 0.320276,
		-0.452379, 0.891205, 0.033278,
		13.140050, 20.394650, 10.070985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.770875, 19.702745, 9.788294>,  <13.456716, 19.770807, 10.047690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.770875, 19.702745, 9.788294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.838117, 20.094318, 9.741930>,  <12.878462, 20.329262, 9.714112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.838117, 20.094318, 9.741930>,  <12.770875, 19.702745, 9.788294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.838117, 20.094318, 9.741930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378160, -0.044546, -0.924668,
		-0.910349, 0.199272, 0.362705,
		0.168104, 0.978931, -0.115909,
		12.888548, 20.387999, 9.707157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<12.635037, 21.903324, 17.518492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.846272, 22.223110, 17.403963>,  <12.973014, 22.414982, 17.335245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.846272, 22.223110, 17.403963>,  <12.635037, 21.903324, 17.518492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.846272, 22.223110, 17.403963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226260, -0.192519, -0.954852,
		-0.818493, 0.569029, 0.079220,
		0.528087, 0.799464, -0.286324,
		13.004699, 22.462950, 17.318066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.185132, 22.210272, 17.102354>,  <12.635037, 21.903324, 17.518492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.185132, 22.210272, 17.102354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.540603, 22.360832, 16.997606>,  <12.753885, 22.451168, 16.934757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.540603, 22.360832, 16.997606>,  <12.185132, 22.210272, 17.102354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.540603, 22.360832, 16.997606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196979, -0.202344, -0.959300,
		-0.414071, 0.904090, -0.105675,
		0.888676, 0.376403, -0.261871,
		12.807205, 22.473753, 16.919044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.071966, 22.765043, 16.662004>,  <12.185132, 22.210272, 17.102354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.071966, 22.765043, 16.662004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.435830, 22.612930, 16.595186>,  <12.654148, 22.521662, 16.555096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.435830, 22.612930, 16.595186>,  <12.071966, 22.765043, 16.662004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.435830, 22.612930, 16.595186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284967, -0.278816, -0.917091,
		0.302179, 0.881843, -0.361995,
		0.909660, -0.380282, -0.167044,
		12.708728, 22.498846, 16.545073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.228701, 22.927320, 16.020126>,  <12.071966, 22.765043, 16.662004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.228701, 22.927320, 16.020126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.514066, 22.657745, 16.096909>,  <12.685285, 22.496000, 16.142977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.514066, 22.657745, 16.096909>,  <12.228701, 22.927320, 16.020126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.514066, 22.657745, 16.096909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037532, -0.310284, -0.949902,
		0.699737, 0.670469, -0.246656,
		0.713414, -0.673939, 0.191953,
		12.728090, 22.455563, 16.154495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.588680, 22.864435, 15.450015>,  <12.228701, 22.927320, 16.020126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.588680, 22.864435, 15.450015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.690604, 22.509262, 15.603193>,  <12.751759, 22.296158, 15.695100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.690604, 22.509262, 15.603193>,  <12.588680, 22.864435, 15.450015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.690604, 22.509262, 15.603193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170384, -0.348594, -0.921657,
		0.951862, 0.300094, 0.062464,
		0.254810, -0.887933, 0.382944,
		12.767047, 22.242882, 15.718077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.035825, 22.701880, 15.022756>,  <12.588680, 22.864435, 15.450015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.035825, 22.701880, 15.022756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.974643, 22.352539, 15.207735>,  <12.937934, 22.142935, 15.318723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.974643, 22.352539, 15.207735>,  <13.035825, 22.701880, 15.022756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.974643, 22.352539, 15.207735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215446, -0.486168, -0.846890,
		0.964462, -0.029903, 0.262523,
		-0.152955, -0.873353, 0.462449,
		12.928756, 22.090532, 15.346470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.528500, 22.232985, 14.868238>,  <13.035825, 22.701880, 15.022756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.528500, 22.232985, 14.868238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.224757, 22.002045, 14.988270>,  <13.042512, 21.863482, 15.060288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.224757, 22.002045, 14.988270>,  <13.528500, 22.232985, 14.868238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.224757, 22.002045, 14.988270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016331, -0.477946, -0.878237,
		0.650472, -0.661993, 0.372359,
		-0.759354, -0.577350, 0.300079,
		12.996951, 21.828840, 15.078294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.831149, 21.519667, 14.767781>,  <13.528500, 22.232985, 14.868238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.831149, 21.519667, 14.767781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.431603, 21.538475, 14.770823>,  <13.191875, 21.549761, 14.772648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.431603, 21.538475, 14.770823>,  <13.831149, 21.519667, 14.767781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.431603, 21.538475, 14.770823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028147, -0.453891, -0.890612,
		-0.038426, -0.889816, 0.454700,
		-0.998865, 0.047021, 0.007604,
		13.131944, 21.552582, 14.773104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.701528, 20.871021, 14.676677>,  <13.831149, 21.519667, 14.767781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.701528, 20.871021, 14.676677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.350293, 21.048252, 14.604403>,  <13.139553, 21.154591, 14.561038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.350293, 21.048252, 14.604403>,  <13.701528, 20.871021, 14.676677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.350293, 21.048252, 14.604403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011138, -0.396431, -0.917997,
		-0.478375, -0.804066, 0.353035,
		-0.878085, 0.443080, -0.180687,
		13.086867, 21.181175, 14.550197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.747989, 20.118515, 14.771961>,  <13.701528, 20.871021, 14.676677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.747989, 20.118515, 14.771961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.896810, 19.747818, 14.792852>,  <13.986102, 19.525400, 14.805387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.896810, 19.747818, 14.792852>,  <13.747989, 20.118515, 14.771961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.896810, 19.747818, 14.792852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413298, 0.215780, 0.884660,
		-0.831121, -0.307553, 0.463302,
		0.372052, -0.926742, 0.052228,
		14.008425, 19.469795, 14.808520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.565833, 19.904585, 15.437467>,  <13.747989, 20.118515, 14.771961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.565833, 19.904585, 15.437467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.878625, 19.695187, 15.302139>,  <14.066300, 19.569548, 15.220942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.878625, 19.695187, 15.302139>,  <13.565833, 19.904585, 15.437467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.878625, 19.695187, 15.302139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481067, 0.161756, 0.861632,
		-0.396337, -0.836532, 0.378327,
		0.781979, -0.523497, -0.338318,
		14.113218, 19.538137, 15.200644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.592839, 19.215399, 15.829504>,  <13.565833, 19.904585, 15.437467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.592839, 19.215399, 15.829504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.952044, 19.314259, 15.683907>,  <14.167567, 19.373573, 15.596548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.952044, 19.314259, 15.683907>,  <13.592839, 19.215399, 15.829504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.952044, 19.314259, 15.683907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356582, 0.075787, 0.931185,
		0.257727, -0.966009, -0.020071,
		0.898013, 0.247148, -0.363994,
		14.221448, 19.388403, 15.574708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.999683, 18.790335, 16.276844>,  <13.592839, 19.215399, 15.829504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.999683, 18.790335, 16.276844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.242583, 19.047722, 16.090427>,  <14.388323, 19.202154, 15.978577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.242583, 19.047722, 16.090427>,  <13.999683, 18.790335, 16.276844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.242583, 19.047722, 16.090427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446607, 0.208682, 0.870054,
		0.657108, -0.736477, -0.160656,
		0.607248, 0.643470, -0.466043,
		14.424758, 19.240763, 15.950615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.723877, 18.709480, 16.501598>,  <13.999683, 18.790335, 16.276844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.723877, 18.709480, 16.501598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744136, 19.082405, 16.358360>,  <14.756291, 19.306160, 16.272417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744136, 19.082405, 16.358360>,  <14.723877, 18.709480, 16.501598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.744136, 19.082405, 16.358360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586513, 0.262447, 0.766240,
		0.808355, -0.248837, -0.533519,
		0.050648, 0.932310, -0.358097,
		14.759331, 19.362099, 16.250931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.390644, 18.992249, 16.720728>,  <14.723877, 18.709480, 16.501598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.390644, 18.992249, 16.720728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.147967, 19.303024, 16.653448>,  <15.002361, 19.489489, 16.613079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.147967, 19.303024, 16.653448>,  <15.390644, 18.992249, 16.720728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.147967, 19.303024, 16.653448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303541, 0.421974, 0.854283,
		0.734702, 0.467231, -0.491841,
		-0.606692, 0.776938, -0.168201,
		14.965960, 19.536106, 16.602987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.801247, 19.563337, 16.861769>,  <15.390644, 18.992249, 16.720728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.801247, 19.563337, 16.861769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.421952, 19.687355, 16.889256>,  <15.194376, 19.761766, 16.905746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.421952, 19.687355, 16.889256>,  <15.801247, 19.563337, 16.861769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.421952, 19.687355, 16.889256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244485, 0.574629, 0.781043,
		0.202672, 0.757413, -0.620685,
		-0.948236, 0.310044, 0.068715,
		15.137482, 19.780369, 16.909870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.890394, 20.176588, 17.004900>,  <15.801247, 19.563337, 16.861769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.890394, 20.176588, 17.004900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.508044, 20.131252, 17.113310>,  <15.278634, 20.104050, 17.178356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.508044, 20.131252, 17.113310>,  <15.890394, 20.176588, 17.004900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.508044, 20.131252, 17.113310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165859, 0.553256, 0.816332,
		-0.242470, 0.825265, -0.510046,
		-0.955876, -0.113341, 0.271026,
		15.221281, 20.097250, 17.194618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.712213, 20.861162, 17.175776>,  <15.890394, 20.176588, 17.004900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.712213, 20.861162, 17.175776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464789, 20.606964, 17.360613>,  <15.316336, 20.454445, 17.471516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464789, 20.606964, 17.360613>,  <15.712213, 20.861162, 17.175776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.464789, 20.606964, 17.360613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066827, 0.543421, 0.836796,
		-0.782892, 0.548488, -0.293670,
		-0.618559, -0.635496, 0.462093,
		15.279222, 20.416315, 17.499241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.299809, 21.268747, 17.577833>,  <15.712213, 20.861162, 17.175776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.299809, 21.268747, 17.577833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241597, 20.904606, 17.732794>,  <15.206670, 20.686121, 17.825769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241597, 20.904606, 17.732794>,  <15.299809, 21.268747, 17.577833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.241597, 20.904606, 17.732794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147634, 0.367204, 0.918349,
		-0.978277, 0.190842, 0.080959,
		-0.145531, -0.910352, 0.387402,
		15.197938, 20.631500, 17.849014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.795300, 21.307632, 18.058395>,  <15.299809, 21.268747, 17.577833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.795300, 21.307632, 18.058395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007979, 20.986229, 18.165482>,  <15.135587, 20.793386, 18.229733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007979, 20.986229, 18.165482>,  <14.795300, 21.307632, 18.058395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.007979, 20.986229, 18.165482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028546, 0.298916, 0.953852,
		-0.846453, -0.514803, 0.135996,
		0.531698, -0.803509, 0.267714,
		15.167489, 20.745176, 18.245796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.405372, 21.028297, 18.684227>,  <14.795300, 21.307632, 18.058395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.405372, 21.028297, 18.684227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.764607, 20.853634, 18.705261>,  <14.980148, 20.748835, 18.717882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.764607, 20.853634, 18.705261>,  <14.405372, 21.028297, 18.684227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.764607, 20.853634, 18.705261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083879, -0.052682, 0.995082,
		-0.431743, -0.898082, -0.083940,
		0.898088, -0.436661, 0.052585,
		15.034034, 20.722635, 18.721037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.343102, 20.596941, 19.298832>,  <14.405372, 21.028297, 18.684227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.343102, 20.596941, 19.298832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.726687, 20.661613, 19.205667>,  <14.956839, 20.700417, 19.149769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.726687, 20.661613, 19.205667>,  <14.343102, 20.596941, 19.298832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.726687, 20.661613, 19.205667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206708, 0.163576, 0.964632,
		0.194066, -0.973191, 0.123441,
		0.958963, 0.161686, -0.232911,
		15.014377, 20.710119, 19.135794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.683270, 20.237713, 19.819254>,  <14.343102, 20.596941, 19.298832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.683270, 20.237713, 19.819254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.964702, 20.473293, 19.660200>,  <15.133561, 20.614641, 19.564768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.964702, 20.473293, 19.660200>,  <14.683270, 20.237713, 19.819254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.964702, 20.473293, 19.660200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390914, 0.146513, 0.908692,
		0.593432, -0.794779, -0.127144,
		0.703580, 0.588949, -0.397635,
		15.175776, 20.649979, 19.540909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.008736, 22.954762, 17.667839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.612701, 22.903919, 17.691763>,  <21.375082, 22.873413, 17.706118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.612701, 22.903919, 17.691763>,  <22.008736, 22.954762, 17.667839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.612701, 22.903919, 17.691763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021002, -0.554913, -0.831643,
		0.138897, -0.822141, 0.552080,
		-0.990084, -0.127108, 0.059809,
		21.315676, 22.865788, 17.709705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.871054, 22.227467, 17.448538>,  <22.008736, 22.954762, 17.667839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.871054, 22.227467, 17.448538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.542690, 22.446793, 17.384716>,  <21.345673, 22.578388, 17.346422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.542690, 22.446793, 17.384716>,  <21.871054, 22.227467, 17.448538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.542690, 22.446793, 17.384716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129400, -0.450742, -0.883226,
		-0.556206, -0.704400, 0.440970,
		-0.820908, 0.548317, -0.159556,
		21.296417, 22.611288, 17.336849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.433067, 21.785944, 17.066748>,  <21.871054, 22.227467, 17.448538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.433067, 21.785944, 17.066748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.233135, 22.118797, 16.970644>,  <21.113176, 22.318508, 16.912981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.233135, 22.118797, 16.970644>,  <21.433067, 21.785944, 17.066748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.233135, 22.118797, 16.970644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080189, -0.320667, -0.943791,
		-0.862402, -0.452470, 0.227008,
		-0.499831, 0.832132, -0.240261,
		21.083185, 22.368437, 16.898565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.008835, 21.447178, 16.600874>,  <21.433067, 21.785944, 17.066748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.008835, 21.447178, 16.600874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.947540, 21.836292, 16.531353>,  <20.910763, 22.069761, 16.489641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.947540, 21.836292, 16.531353>,  <21.008835, 21.447178, 16.600874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.947540, 21.836292, 16.531353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440673, -0.224691, -0.869092,
		-0.884492, -0.056588, 0.463111,
		-0.153237, 0.972786, -0.173800,
		20.901569, 22.128128, 16.479214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.303181, 21.539637, 16.611322>,  <21.008835, 21.447178, 16.600874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.303181, 21.539637, 16.611322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.487274, 21.811928, 16.383360>,  <20.597731, 21.975302, 16.246582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.487274, 21.811928, 16.383360>,  <20.303181, 21.539637, 16.611322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.487274, 21.811928, 16.383360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557999, -0.277495, -0.782070,
		-0.690523, 0.677944, 0.252132,
		0.460235, 0.680726, -0.569908,
		20.625345, 22.016146, 16.212387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.743847, 21.812151, 16.263783>,  <20.303181, 21.539637, 16.611322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.743847, 21.812151, 16.263783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.057793, 21.902081, 16.032804>,  <20.246161, 21.956038, 15.894217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.057793, 21.902081, 16.032804>,  <19.743847, 21.812151, 16.263783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.057793, 21.902081, 16.032804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511927, -0.289835, -0.808657,
		-0.349170, 0.930295, -0.112387,
		0.784864, 0.224825, -0.577445,
		20.293251, 21.969528, 15.859571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.453384, 22.233881, 15.767993>,  <19.743847, 21.812151, 16.263783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.453384, 22.233881, 15.767993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.795769, 22.100975, 15.609533>,  <20.001200, 22.021233, 15.514458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.795769, 22.100975, 15.609533>,  <19.453384, 22.233881, 15.767993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.795769, 22.100975, 15.609533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454747, -0.119185, -0.882610,
		0.246044, 0.935626, -0.253114,
		0.855960, -0.332264, -0.396148,
		20.052557, 22.001295, 15.490688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.538893, 22.612066, 15.066663>,  <19.453384, 22.233881, 15.767993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.538893, 22.612066, 15.066663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.766682, 22.284126, 15.042835>,  <19.903355, 22.087362, 15.028539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.766682, 22.284126, 15.042835>,  <19.538893, 22.612066, 15.066663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.766682, 22.284126, 15.042835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375311, -0.194852, -0.906186,
		0.731330, 0.538404, -0.418662,
		0.569471, -0.819850, -0.059568,
		19.937523, 22.038172, 15.024965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.896172, 22.545778, 14.449665>,  <19.538893, 22.612066, 15.066663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.896172, 22.545778, 14.449665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.949448, 22.162094, 14.549406>,  <19.981413, 21.931883, 14.609251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.949448, 22.162094, 14.549406>,  <19.896172, 22.545778, 14.449665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.949448, 22.162094, 14.549406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320512, -0.279761, -0.904990,
		0.937834, 0.040613, -0.344699,
		0.133188, -0.959210, 0.249353,
		19.989405, 21.874331, 14.624212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.997225, 22.241749, 13.867951>,  <19.896172, 22.545778, 14.449665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.997225, 22.241749, 13.867951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.911720, 21.899982, 14.057383>,  <19.860416, 21.694921, 14.171041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.911720, 21.899982, 14.057383>,  <19.997225, 22.241749, 13.867951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.911720, 21.899982, 14.057383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427885, -0.353914, -0.831661,
		0.878191, -0.380415, -0.289939,
		-0.213763, -0.854418, 0.473578,
		19.847591, 21.643658, 14.199456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.144651, 21.715513, 13.395100>,  <19.997225, 22.241749, 13.867951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.144651, 21.715513, 13.395100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.907024, 21.525902, 13.655064>,  <19.764448, 21.412136, 13.811042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.907024, 21.525902, 13.655064>,  <20.144651, 21.715513, 13.395100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.907024, 21.525902, 13.655064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466125, -0.455610, -0.758385,
		0.655599, -0.753471, 0.049708,
		-0.594068, -0.474027, 0.649909,
		19.728804, 21.383694, 13.850037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.211720, 21.012703, 13.258238>,  <20.144651, 21.715513, 13.395100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.211720, 21.012703, 13.258238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.864693, 21.081413, 13.444923>,  <19.656477, 21.122639, 13.556934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.864693, 21.081413, 13.444923>,  <20.211720, 21.012703, 13.258238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.864693, 21.081413, 13.444923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468471, -0.597256, -0.651014,
		0.166919, -0.783440, 0.598631,
		-0.867567, 0.171775, 0.466713,
		19.604424, 21.132946, 13.584937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.857487, 20.305296, 13.273975>,  <20.211720, 21.012703, 13.258238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.857487, 20.305296, 13.273975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.574886, 20.579842, 13.342974>,  <19.405325, 20.744570, 13.384373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.574886, 20.579842, 13.342974>,  <19.857487, 20.305296, 13.273975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.574886, 20.579842, 13.342974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600341, -0.452173, -0.659644,
		-0.374758, -0.569598, 0.731515,
		-0.706503, 0.686365, 0.172497,
		19.362936, 20.785751, 13.394723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.215118, 19.983213, 13.576156>,  <19.857487, 20.305296, 13.273975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.215118, 19.983213, 13.576156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.112411, 20.323185, 13.392115>,  <19.050787, 20.527168, 13.281691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.112411, 20.323185, 13.392115>,  <19.215118, 19.983213, 13.576156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.112411, 20.323185, 13.392115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642207, -0.505805, -0.575961,
		-0.722247, 0.147594, 0.675703,
		-0.256766, 0.849928, -0.460102,
		19.035381, 20.578163, 13.254084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.660486, 19.617540, 13.864356>,  <19.215118, 19.983213, 13.576156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.660486, 19.617540, 13.864356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.660282, 19.230236, 13.964331>,  <18.660160, 18.997852, 14.024315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.660282, 19.230236, 13.964331>,  <18.660486, 19.617540, 13.864356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.660282, 19.230236, 13.964331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146858, 0.247153, 0.957783,
		-0.989157, 0.037195, 0.142070,
		-0.000512, -0.968262, 0.249935,
		18.660130, 18.939756, 14.039311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.278820, 19.632511, 14.457457>,  <18.660486, 19.617540, 13.864356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.278820, 19.632511, 14.457457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.483475, 19.289070, 14.470274>,  <18.606268, 19.083006, 14.477964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.483475, 19.289070, 14.470274>,  <18.278820, 19.632511, 14.457457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.483475, 19.289070, 14.470274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342540, 0.238036, 0.908848,
		-0.787968, -0.454024, 0.415894,
		0.511637, -0.858604, 0.032044,
		18.636965, 19.031488, 14.479887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070679, 19.249323, 14.981490>,  <18.278820, 19.632511, 14.457457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.070679, 19.249323, 14.981490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.424358, 19.070446, 14.927515>,  <18.636566, 18.963120, 14.895130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.424358, 19.070446, 14.927515>,  <18.070679, 19.249323, 14.981490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.424358, 19.070446, 14.927515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187801, 0.075835, 0.979275,
		-0.427691, -0.891217, 0.151037,
		0.884201, -0.447193, -0.134938,
		18.689619, 18.936289, 14.887033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260849, 18.922596, 15.582693>,  <18.070679, 19.249323, 14.981490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.260849, 18.922596, 15.582693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.615192, 18.936493, 15.397631>,  <18.827799, 18.944832, 15.286593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.615192, 18.936493, 15.397631>,  <18.260849, 18.922596, 15.582693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.615192, 18.936493, 15.397631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463839, -0.043777, 0.884837,
		0.010488, -0.998437, -0.054895,
		0.885858, 0.034742, -0.462655,
		18.880949, 18.946915, 15.258834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.638256, 18.300644, 15.888294>,  <18.260849, 18.922596, 15.582693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.638256, 18.300644, 15.888294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.896851, 18.571121, 15.746979>,  <19.052008, 18.733408, 15.662189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.896851, 18.571121, 15.746979>,  <18.638256, 18.300644, 15.888294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.896851, 18.571121, 15.746979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483012, -0.004319, 0.875603,
		0.590552, -0.736711, -0.329402,
		0.646489, 0.676194, -0.353289,
		19.090797, 18.773979, 15.640992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.324728, 18.035095, 15.921494>,  <18.638256, 18.300644, 15.888294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.324728, 18.035095, 15.921494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.363182, 18.433220, 15.917328>,  <19.386255, 18.672094, 15.914828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.363182, 18.433220, 15.917328>,  <19.324728, 18.035095, 15.921494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.363182, 18.433220, 15.917328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395388, -0.028583, 0.918069,
		0.913469, -0.092378, -0.396283,
		0.096136, 0.995314, -0.010416,
		19.392023, 18.731813, 15.914203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.089256, 18.238230, 16.163195>,  <19.324728, 18.035095, 15.921494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.089256, 18.238230, 16.163195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.925907, 18.602497, 16.188221>,  <19.827898, 18.821058, 16.203236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.925907, 18.602497, 16.188221>,  <20.089256, 18.238230, 16.163195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.925907, 18.602497, 16.188221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516032, 0.173781, 0.838756,
		0.752956, 0.374810, -0.540901,
		-0.408372, 0.910669, 0.062565,
		19.803396, 18.875698, 16.206991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603079, 18.789452, 16.416700>,  <20.089256, 18.238230, 16.163195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603079, 18.789452, 16.416700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.240566, 18.945679, 16.481339>,  <20.023060, 19.039415, 16.520121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.240566, 18.945679, 16.481339>,  <20.603079, 18.789452, 16.416700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240566, 18.945679, 16.481339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306046, 0.342667, 0.888209,
		0.291534, 0.854421, -0.430084,
		-0.906280, 0.390568, 0.161593,
		19.968681, 19.062849, 16.529816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.719271, 19.447317, 16.560286>,  <20.603079, 18.789452, 16.416700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.719271, 19.447317, 16.560286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.352211, 19.383141, 16.705713>,  <20.131975, 19.344635, 16.792971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.352211, 19.383141, 16.705713>,  <20.719271, 19.447317, 16.560286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.352211, 19.383141, 16.705713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257415, 0.457023, 0.851392,
		-0.302757, 0.874865, -0.378086,
		-0.917647, -0.160440, 0.363570,
		20.076918, 19.335009, 16.814785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.463985, 20.067631, 16.866407>,  <20.719271, 19.447317, 16.560286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.463985, 20.067631, 16.866407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.215023, 19.809189, 17.043114>,  <20.065645, 19.654123, 17.149137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.215023, 19.809189, 17.043114>,  <20.463985, 20.067631, 16.866407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.215023, 19.809189, 17.043114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045964, 0.533269, 0.844696,
		-0.781344, 0.546049, -0.302212,
		-0.622406, -0.646107, 0.441765,
		20.028301, 19.615356, 17.175644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.891098, 20.427282, 17.159502>,  <20.463985, 20.067631, 16.866407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.891098, 20.427282, 17.159502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.878124, 20.086315, 17.368242>,  <19.870340, 19.881735, 17.493486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.878124, 20.086315, 17.368242>,  <19.891098, 20.427282, 17.159502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.878124, 20.086315, 17.368242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083401, 0.517996, 0.851308,
		-0.995988, 0.071135, 0.054291,
		-0.032435, -0.852420, 0.521850,
		19.868393, 19.830589, 17.524797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.461809, 20.519882, 17.746662>,  <19.891098, 20.427282, 17.159502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.461809, 20.519882, 17.746662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.662590, 20.195213, 17.866152>,  <19.783058, 20.000412, 17.937845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.662590, 20.195213, 17.866152>,  <19.461809, 20.519882, 17.746662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662590, 20.195213, 17.866152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084962, 0.389990, 0.916891,
		-0.860713, -0.434855, 0.264717,
		0.501951, -0.811671, 0.298723,
		19.813175, 19.951712, 17.955769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.139196, 20.126707, 18.323635>,  <19.461809, 20.519882, 17.746662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.139196, 20.126707, 18.323635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.519993, 20.009052, 18.357571>,  <19.748470, 19.938459, 18.377932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.519993, 20.009052, 18.357571>,  <19.139196, 20.126707, 18.323635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.519993, 20.009052, 18.357571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034536, 0.378560, 0.924932,
		-0.304172, -0.877597, 0.370544,
		0.951991, -0.294135, 0.084838,
		19.805590, 19.920813, 18.383022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.188869, 19.762983, 19.039145>,  <19.139196, 20.126707, 18.323635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.188869, 19.762983, 19.039145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.550415, 19.883553, 18.917706>,  <19.767344, 19.955894, 18.844841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.550415, 19.883553, 18.917706>,  <19.188869, 19.762983, 19.039145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.550415, 19.883553, 18.917706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176642, 0.383391, 0.906537,
		0.389658, -0.873012, 0.293287,
		0.903861, 0.301433, -0.303602,
		19.821575, 19.973980, 18.826626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.269470, 18.954494, 19.249933>,  <19.188869, 19.762983, 19.039145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.269470, 18.954494, 19.249933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.975739, 18.747570, 19.425730>,  <18.799500, 18.623415, 19.531208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.975739, 18.747570, 19.425730>,  <19.269470, 18.954494, 19.249933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.975739, 18.747570, 19.425730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038448, -0.614718, -0.787809,
		0.677706, -0.595407, 0.431514,
		-0.734327, -0.517313, 0.439490,
		18.755440, 18.592377, 19.557577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.517155, 18.253233, 19.075794>,  <19.269470, 18.954494, 19.249933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.517155, 18.253233, 19.075794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.130539, 18.227470, 19.175117>,  <18.898569, 18.212013, 19.234711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.130539, 18.227470, 19.175117>,  <19.517155, 18.253233, 19.075794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.130539, 18.227470, 19.175117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164893, -0.585516, -0.793714,
		0.196507, -0.808099, 0.555303,
		-0.966538, -0.064404, 0.248308,
		18.840578, 18.208149, 19.249609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.267178, 17.512960, 19.344620>,  <19.517155, 18.253233, 19.075794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.267178, 17.512960, 19.344620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.951622, 17.710846, 19.198790>,  <18.762289, 17.829576, 19.111292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.951622, 17.710846, 19.198790>,  <19.267178, 17.512960, 19.344620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.951622, 17.710846, 19.198790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147549, -0.728377, -0.669101,
		-0.596561, -0.474053, 0.647602,
		-0.788888, 0.494713, -0.364575,
		18.714956, 17.859261, 19.089417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.922033, 16.939625, 18.926453>,  <19.267178, 17.512960, 19.344620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.922033, 16.939625, 18.926453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.710041, 17.266083, 18.834341>,  <18.582846, 17.461958, 18.779074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.710041, 17.266083, 18.834341>,  <18.922033, 16.939625, 18.926453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.710041, 17.266083, 18.834341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512811, -0.524722, -0.679478,
		-0.675386, -0.242020, 0.696621,
		-0.529979, 0.816145, -0.230280,
		18.551046, 17.510927, 18.765257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.238932, 16.685555, 18.917297>,  <18.922033, 16.939625, 18.926453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.238932, 16.685555, 18.917297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.238991, 17.013130, 18.687744>,  <18.239027, 17.209675, 18.550013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.238991, 17.013130, 18.687744>,  <18.238932, 16.685555, 18.917297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.238991, 17.013130, 18.687744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643031, -0.439424, -0.627230,
		-0.765840, 0.369119, 0.526536,
		0.000150, 0.818937, -0.573884,
		18.239037, 17.258812, 18.515579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.495834, 16.684578, 18.859261>,  <18.238932, 16.685555, 18.917297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.495834, 16.684578, 18.859261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.704533, 16.882774, 18.581478>,  <17.829752, 17.001692, 18.414808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.704533, 16.882774, 18.581478>,  <17.495834, 16.684578, 18.859261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.704533, 16.882774, 18.581478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632884, -0.321043, -0.704548,
		-0.572048, 0.807106, 0.146085,
		0.521745, 0.495491, -0.694457,
		17.861055, 17.031422, 18.373140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025585, 16.812000, 18.305099>,  <17.495834, 16.684578, 18.859261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.025585, 16.812000, 18.305099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.350716, 16.886463, 18.084316>,  <17.545794, 16.931141, 17.951847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.350716, 16.886463, 18.084316>,  <17.025585, 16.812000, 18.305099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.350716, 16.886463, 18.084316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487265, -0.301940, -0.819393,
		-0.319196, 0.934974, -0.154716,
		0.812826, 0.186159, -0.551958,
		17.594564, 16.942310, 17.918728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.747513, 16.937847, 17.711969>,  <17.025585, 16.812000, 18.305099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.747513, 16.937847, 17.711969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.131355, 16.895084, 17.607872>,  <17.361660, 16.869427, 17.545414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.131355, 16.895084, 17.607872>,  <16.747513, 16.937847, 17.711969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131355, 16.895084, 17.607872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281325, -0.375473, -0.883106,
		-0.003305, 0.920647, -0.390381,
		0.959607, -0.106905, -0.260242,
		17.419237, 16.863012, 17.529799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.887716, 17.306263, 17.032099>,  <16.747513, 16.937847, 17.711969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.887716, 17.306263, 17.032099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.171600, 17.027737, 17.074907>,  <17.341930, 16.860620, 17.100592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.171600, 17.027737, 17.074907>,  <16.887716, 17.306263, 17.032099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.171600, 17.027737, 17.074907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190467, -0.335903, -0.922438,
		0.678257, 0.634281, -0.371019,
		0.709711, -0.696316, 0.107019,
		17.384514, 16.818842, 17.107014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323423, 17.327457, 16.390762>,  <16.887716, 17.306263, 17.032099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.323423, 17.327457, 16.390762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.396011, 16.979424, 16.574076>,  <17.439564, 16.770603, 16.684063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.396011, 16.979424, 16.574076>,  <17.323423, 17.327457, 16.390762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.396011, 16.979424, 16.574076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108914, -0.480935, -0.869965,
		0.977346, 0.107961, -0.182040,
		0.181471, -0.870084, 0.458282,
		17.450453, 16.718399, 16.711561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.936117, 16.966990, 16.043562>,  <17.323423, 17.327457, 16.390762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.936117, 16.966990, 16.043562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.691582, 16.724873, 16.247478>,  <17.544861, 16.579603, 16.369829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.691582, 16.724873, 16.247478>,  <17.936117, 16.966990, 16.043562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.691582, 16.724873, 16.247478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225742, -0.484043, -0.845424,
		0.758491, -0.631920, 0.159273,
		-0.611336, -0.605292, 0.509794,
		17.508181, 16.543285, 16.400417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.985226, 16.331200, 15.747796>,  <17.936117, 16.966990, 16.043562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.985226, 16.331200, 15.747796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.645523, 16.263790, 15.947941>,  <17.441702, 16.223345, 16.068027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.645523, 16.263790, 15.947941>,  <17.985226, 16.331200, 15.747796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.645523, 16.263790, 15.947941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378956, -0.465322, -0.799917,
		0.367636, -0.868950, 0.331314,
		-0.849256, -0.168524, 0.500363,
		17.390745, 16.213232, 16.098049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727560, 15.783636, 15.332098>,  <17.985226, 16.331200, 15.747796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.727560, 15.783636, 15.332098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.417881, 15.835827, 15.579838>,  <17.232073, 15.867141, 15.728481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.417881, 15.835827, 15.579838>,  <17.727560, 15.783636, 15.332098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.417881, 15.835827, 15.579838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610881, -0.410137, -0.677209,
		0.165659, -0.902642, 0.397232,
		-0.774198, 0.130476, 0.619350,
		17.185621, 15.874969, 15.765643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.430349, 15.121801, 15.344369>,  <17.727560, 15.783636, 15.332098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.430349, 15.121801, 15.344369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.136578, 15.368183, 15.458363>,  <16.960316, 15.516012, 15.526758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.136578, 15.368183, 15.458363>,  <17.430349, 15.121801, 15.344369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.136578, 15.368183, 15.458363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658812, -0.546151, -0.517384,
		-0.163040, -0.567732, 0.806907,
		-0.734428, 0.615954, 0.284984,
		16.916248, 15.552969, 15.543858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.357701, 20.054525, 20.087332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.418843, 20.433899, 19.976257>,  <15.455528, 20.661524, 19.909613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.418843, 20.433899, 19.976257>,  <15.357701, 20.054525, 20.087332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.418843, 20.433899, 19.976257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438254, 0.186793, 0.879228,
		0.885759, -0.256091, -0.387102,
		0.152854, 0.948433, -0.277686,
		15.464700, 20.718430, 19.892952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.964300, 20.176394, 20.262833>,  <15.357701, 20.054525, 20.087332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.964300, 20.176394, 20.262833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.826888, 20.550365, 20.227297>,  <15.744441, 20.774748, 20.205976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.826888, 20.550365, 20.227297>,  <15.964300, 20.176394, 20.262833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.826888, 20.550365, 20.227297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353379, 0.216326, 0.910124,
		0.870121, 0.281262, -0.404699,
		-0.343530, 0.934931, -0.088838,
		15.723829, 20.830845, 20.200645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.523996, 20.708038, 20.331259>,  <15.964300, 20.176394, 20.262833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.523996, 20.708038, 20.331259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.192883, 20.914265, 20.419769>,  <15.994214, 21.038000, 20.472876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.192883, 20.914265, 20.419769>,  <16.523996, 20.708038, 20.331259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.192883, 20.914265, 20.419769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479653, 0.445730, 0.755816,
		0.291044, 0.731789, -0.616262,
		-0.827784, 0.515568, 0.221278,
		15.944548, 21.068935, 20.486153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827127, 21.342752, 20.652172>,  <16.523996, 20.708038, 20.331259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.827127, 21.342752, 20.652172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.431545, 21.375217, 20.701775>,  <16.194195, 21.394695, 20.731537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.431545, 21.375217, 20.701775>,  <16.827127, 21.342752, 20.652172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.431545, 21.375217, 20.701775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147663, 0.467980, 0.871316,
		0.012683, 0.880005, -0.474796,
		-0.988957, 0.081161, 0.124008,
		16.134859, 21.399565, 20.738977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718996, 21.986925, 20.883816>,  <16.827127, 21.342752, 20.652172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718996, 21.986925, 20.883816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.409908, 21.760914, 20.999500>,  <16.224455, 21.625307, 21.068911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.409908, 21.760914, 20.999500>,  <16.718996, 21.986925, 20.883816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.409908, 21.760914, 20.999500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152083, 0.277556, 0.948596,
		-0.616256, 0.776985, -0.128542,
		-0.772722, -0.565029, 0.289212,
		16.178091, 21.591406, 21.086264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.366270, 22.408419, 21.212740>,  <16.718996, 21.986925, 20.883816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.366270, 22.408419, 21.212740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.248062, 22.051670, 21.349699>,  <16.177137, 21.837622, 21.431875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.248062, 22.051670, 21.349699>,  <16.366270, 22.408419, 21.212740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248062, 22.051670, 21.349699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086331, 0.332008, 0.939318,
		-0.951428, 0.307146, -0.021119,
		-0.295519, -0.891870, 0.342398,
		16.159407, 21.784109, 21.452419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.793601, 22.499239, 21.857109>,  <16.366270, 22.408419, 21.212740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.793601, 22.499239, 21.857109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.966210, 22.140560, 21.896557>,  <16.069777, 21.925354, 21.920225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.966210, 22.140560, 21.896557>,  <15.793601, 22.499239, 21.857109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.966210, 22.140560, 21.896557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095071, 0.153916, 0.983499,
		-0.897078, -0.415027, 0.151668,
		0.431523, -0.896695, 0.098618,
		16.095667, 21.871552, 21.926142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507770, 22.146093, 22.487671>,  <15.793601, 22.499239, 21.857109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.507770, 22.146093, 22.487671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.845975, 21.948700, 22.406107>,  <16.048899, 21.830263, 22.357168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.845975, 21.948700, 22.406107>,  <15.507770, 22.146093, 22.487671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.845975, 21.948700, 22.406107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243647, 0.016757, 0.969719,
		-0.475126, -0.869592, 0.134404,
		0.845513, -0.493486, -0.203912,
		16.099628, 21.800653, 22.344933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.572768, 21.654020, 22.953947>,  <15.507770, 22.146093, 22.487671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.572768, 21.654020, 22.953947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.948876, 21.623783, 22.821175>,  <16.174541, 21.605640, 22.741512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.948876, 21.623783, 22.821175>,  <15.572768, 21.654020, 22.953947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.948876, 21.623783, 22.821175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290558, -0.329866, 0.898201,
		-0.177390, -0.940996, -0.288199,
		0.940270, -0.075593, -0.331929,
		16.230957, 21.601105, 22.721596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802576, 20.942276, 23.012831>,  <15.572768, 21.654020, 22.953947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.802576, 20.942276, 23.012831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.104099, 21.203838, 23.038689>,  <16.285013, 21.360777, 23.054203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.104099, 21.203838, 23.038689>,  <15.802576, 20.942276, 23.012831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104099, 21.203838, 23.038689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175007, -0.294618, 0.939453,
		0.633362, -0.696853, -0.336524,
		0.753807, 0.653908, 0.064646,
		16.330242, 21.400011, 23.058083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.197256, 20.580954, 23.460709>,  <15.802576, 20.942276, 23.012831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.197256, 20.580954, 23.460709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.330715, 20.958008, 23.465017>,  <16.410791, 21.184240, 23.467602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.330715, 20.958008, 23.465017>,  <16.197256, 20.580954, 23.460709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.330715, 20.958008, 23.465017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186571, -0.077228, 0.979402,
		0.924051, -0.324767, -0.201636,
		0.333649, 0.942636, 0.010770,
		16.430811, 21.240799, 23.468248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.881107, 20.560400, 23.842741>,  <16.197256, 20.580954, 23.460709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.881107, 20.560400, 23.842741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.752163, 20.939041, 23.844927>,  <16.674797, 21.166225, 23.846239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.752163, 20.939041, 23.844927>,  <16.881107, 20.560400, 23.842741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.752163, 20.939041, 23.844927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192477, 0.059892, 0.979472,
		0.926843, 0.316793, -0.201506,
		-0.322359, 0.946602, 0.005465,
		16.655455, 21.223022, 23.846567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.401182, 21.117300, 24.043896>,  <16.881107, 20.560400, 23.842741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.401182, 21.117300, 24.043896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.029278, 21.233322, 24.134592>,  <16.806135, 21.302935, 24.189011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.029278, 21.233322, 24.134592>,  <17.401182, 21.117300, 24.043896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.029278, 21.233322, 24.134592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258079, 0.074264, 0.963265,
		0.262561, 0.954124, -0.143905,
		-0.929762, 0.290055, 0.226741,
		16.750349, 21.320339, 24.202614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522257, 21.697962, 24.493774>,  <17.401182, 21.117300, 24.043896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.522257, 21.697962, 24.493774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.170284, 21.516041, 24.548737>,  <16.959101, 21.406889, 24.581713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.170284, 21.516041, 24.548737>,  <17.522257, 21.697962, 24.493774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.170284, 21.516041, 24.548737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222598, -0.139152, 0.964929,
		-0.419732, 0.879654, 0.223682,
		-0.879929, -0.454802, 0.137403,
		16.906305, 21.379601, 24.589958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078424, 21.169765, 24.714478>,  <17.522257, 21.697962, 24.493774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.078424, 21.169765, 24.714478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.456772, 21.040524, 24.702269>,  <18.683781, 20.962978, 24.694944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.456772, 21.040524, 24.702269>,  <18.078424, 21.169765, 24.714478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.456772, 21.040524, 24.702269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130451, -0.292397, -0.947358,
		0.297172, 0.900060, -0.318719,
		0.945871, -0.323105, -0.030521,
		18.740534, 20.943592, 24.693111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.380287, 21.442953, 24.124121>,  <18.078424, 21.169765, 24.714478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.380287, 21.442953, 24.124121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.602978, 21.129002, 24.232948>,  <18.736591, 20.940630, 24.298244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.602978, 21.129002, 24.232948>,  <18.380287, 21.442953, 24.124121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.602978, 21.129002, 24.232948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014798, -0.336838, -0.941446,
		0.830565, 0.520101, -0.199141,
		0.556726, -0.784879, 0.272070,
		18.769995, 20.893538, 24.314569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.804720, 21.391966, 23.579653>,  <18.380287, 21.442953, 24.124121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.804720, 21.391966, 23.579653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.866116, 21.033516, 23.746220>,  <18.902952, 20.818447, 23.846161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.866116, 21.033516, 23.746220>,  <18.804720, 21.391966, 23.579653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.866116, 21.033516, 23.746220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276986, -0.365501, -0.888644,
		0.948536, 0.251738, 0.192114,
		0.153488, -0.896123, 0.416419,
		18.912163, 20.764679, 23.871145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.325380, 21.065176, 23.273998>,  <18.804720, 21.391966, 23.579653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.325380, 21.065176, 23.273998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.174236, 20.754631, 23.475784>,  <19.083549, 20.568304, 23.596857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.174236, 20.754631, 23.475784>,  <19.325380, 21.065176, 23.273998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.174236, 20.754631, 23.475784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224802, -0.605487, -0.763446,
		0.898158, -0.175069, 0.403316,
		-0.377858, -0.776361, 0.504466,
		19.060879, 20.521723, 23.627125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.811781, 20.448946, 23.370604>,  <19.325380, 21.065176, 23.273998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.811781, 20.448946, 23.370604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.425968, 20.343693, 23.362267>,  <19.194481, 20.280540, 23.357265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.425968, 20.343693, 23.362267>,  <19.811781, 20.448946, 23.370604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.425968, 20.343693, 23.362267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132903, -0.415909, -0.899643,
		0.228059, -0.870506, 0.436129,
		-0.964534, -0.263134, -0.020841,
		19.136608, 20.264753, 23.356014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.793467, 19.842421, 22.902679>,  <19.811781, 20.448946, 23.370604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.793467, 19.842421, 22.902679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.399929, 19.908516, 22.930252>,  <19.163807, 19.948174, 22.946795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.399929, 19.908516, 22.930252>,  <19.793467, 19.842421, 22.902679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.399929, 19.908516, 22.930252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147913, -0.533215, -0.832949,
		-0.100880, -0.829686, 0.549040,
		-0.983842, 0.165238, 0.068931,
		19.104776, 19.958088, 22.950932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511047, 19.193754, 22.854252>,  <19.793467, 19.842421, 22.902679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.511047, 19.193754, 22.854252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.220760, 19.452541, 22.760645>,  <19.046587, 19.607815, 22.704481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.220760, 19.452541, 22.760645>,  <19.511047, 19.193754, 22.854252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.220760, 19.452541, 22.760645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192736, -0.517705, -0.833567,
		-0.660443, -0.559832, 0.500403,
		-0.725719, 0.646969, -0.234015,
		19.003044, 19.646631, 22.690441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.935163, 18.845076, 22.766788>,  <19.511047, 19.193754, 22.854252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.935163, 18.845076, 22.766788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.826702, 19.190601, 22.596941>,  <18.761625, 19.397917, 22.495033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.826702, 19.190601, 22.596941>,  <18.935163, 18.845076, 22.766788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.826702, 19.190601, 22.596941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502628, -0.503291, -0.702896,
		-0.820879, 0.022833, 0.570646,
		-0.271152, 0.863815, -0.424617,
		18.745356, 19.449745, 22.469557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223717, 18.777292, 22.555138>,  <18.935163, 18.845076, 22.766788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223717, 18.777292, 22.555138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.357738, 19.067825, 22.315077>,  <18.438152, 19.242146, 22.171041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.357738, 19.067825, 22.315077>,  <18.223717, 18.777292, 22.555138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.357738, 19.067825, 22.315077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304256, -0.519435, -0.798508,
		-0.891722, 0.450142, 0.046953,
		0.335054, 0.726333, -0.600150,
		18.458254, 19.285725, 22.135033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.845554, 18.713177, 21.941420>,  <18.223717, 18.777292, 22.555138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.845554, 18.713177, 21.941420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.158852, 18.927975, 21.816095>,  <18.346830, 19.056854, 21.740902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.158852, 18.927975, 21.816095>,  <17.845554, 18.713177, 21.941420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158852, 18.927975, 21.816095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042409, -0.456623, -0.888649,
		-0.620265, 0.709317, -0.334874,
		0.783245, 0.536996, -0.313309,
		18.393826, 19.089073, 21.722103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.670080, 18.971266, 21.233921>,  <17.845554, 18.713177, 21.941420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.670080, 18.971266, 21.233921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.068539, 18.996754, 21.258038>,  <18.307613, 19.012047, 21.272507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.068539, 18.996754, 21.258038>,  <17.670080, 18.971266, 21.233921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.068539, 18.996754, 21.258038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072390, -0.208912, -0.975251,
		-0.049545, 0.975856, -0.212719,
		0.996145, 0.063718, 0.060291,
		18.367382, 19.015869, 21.276125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.871992, 19.328306, 20.577431>,  <17.670080, 18.971266, 21.233921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.871992, 19.328306, 20.577431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.190575, 19.121468, 20.702824>,  <18.381723, 18.997364, 20.778059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.190575, 19.121468, 20.702824>,  <17.871992, 19.328306, 20.577431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.190575, 19.121468, 20.702824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171854, -0.303473, -0.937214,
		0.579762, 0.800323, -0.152838,
		0.796456, -0.517095, 0.313481,
		18.429512, 18.966339, 20.796867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.472757, 19.599922, 20.215054>,  <17.871992, 19.328306, 20.577431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.472757, 19.599922, 20.215054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.560383, 19.229340, 20.337488>,  <18.612957, 19.006990, 20.410948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.560383, 19.229340, 20.337488>,  <18.472757, 19.599922, 20.215054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.560383, 19.229340, 20.337488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335970, -0.222897, -0.915118,
		0.916043, 0.303303, 0.262434,
		0.219062, -0.926458, 0.306084,
		18.626101, 18.951403, 20.429314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882521, 19.467485, 19.656618>,  <18.472757, 19.599922, 20.215054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.882521, 19.467485, 19.656618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.804638, 19.112682, 19.824097>,  <18.757908, 18.899801, 19.924583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.804638, 19.112682, 19.824097>,  <18.882521, 19.467485, 19.656618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.804638, 19.112682, 19.824097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028937, -0.431875, -0.901469,
		0.980434, -0.163408, 0.109757,
		-0.194709, -0.887007, 0.418696,
		18.746225, 18.846581, 19.949705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.638729, 19.488293, 19.550571>,  <18.882521, 19.467485, 19.656618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.638729, 19.488293, 19.550571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.880264, 19.754250, 19.374710>,  <20.025185, 19.913824, 19.269194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.880264, 19.754250, 19.374710>,  <19.638729, 19.488293, 19.550571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.880264, 19.754250, 19.374710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342657, 0.281480, 0.896301,
		0.719698, -0.691872, -0.057862,
		0.603838, 0.664893, -0.439655,
		20.061417, 19.953718, 19.242813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223850, 19.361155, 19.838829>,  <19.638729, 19.488293, 19.550571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223850, 19.361155, 19.838829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.210331, 19.741295, 19.715096>,  <20.202219, 19.969379, 19.640856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.210331, 19.741295, 19.715096>,  <20.223850, 19.361155, 19.838829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.210331, 19.741295, 19.715096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078131, 0.311077, 0.947168,
		0.996370, 0.007842, -0.084766,
		-0.033796, 0.950352, -0.309335,
		20.200191, 20.026402, 19.622295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.819775, 19.705946, 20.321199>,  <20.223850, 19.361155, 19.838829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.819775, 19.705946, 20.321199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.649059, 20.016670, 20.135979>,  <20.546629, 20.203104, 20.024847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.649059, 20.016670, 20.135979>,  <20.819775, 19.705946, 20.321199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.649059, 20.016670, 20.135979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419350, 0.623643, 0.659708,
		0.801247, 0.087376, -0.591920,
		-0.426789, 0.776810, -0.463051,
		20.521023, 20.249714, 19.997063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.210127, 20.209743, 20.388912>,  <20.819775, 19.705946, 20.321199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.210127, 20.209743, 20.388912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.859589, 20.385109, 20.309099>,  <20.649265, 20.490328, 20.261211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.859589, 20.385109, 20.309099>,  <21.210127, 20.209743, 20.388912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859589, 20.385109, 20.309099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230606, 0.745546, 0.625285,
		0.422895, 0.501952, -0.754456,
		-0.876345, 0.438412, -0.199534,
		20.596685, 20.516632, 20.249239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.390259, 20.886896, 20.350763>,  <21.210127, 20.209743, 20.388912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.390259, 20.886896, 20.350763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.007126, 20.864319, 20.463453>,  <20.777246, 20.850773, 20.531067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.007126, 20.864319, 20.463453>,  <21.390259, 20.886896, 20.350763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.007126, 20.864319, 20.463453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153021, 0.729676, 0.666451,
		-0.243185, 0.681459, -0.690271,
		-0.957834, -0.056445, 0.281723,
		20.719776, 20.847385, 20.547970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.219908, 21.536827, 20.511349>,  <21.390259, 20.886896, 20.350763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.219908, 21.536827, 20.511349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.926655, 21.337208, 20.696157>,  <20.750704, 21.217436, 20.807043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.926655, 21.337208, 20.696157>,  <21.219908, 21.536827, 20.511349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.926655, 21.337208, 20.696157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115460, 0.760832, 0.638595,
		-0.670213, 0.414830, -0.615411,
		-0.733133, -0.499050, 0.462023,
		20.706715, 21.187492, 20.834764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.734316, 22.087400, 20.627804>,  <21.219908, 21.536827, 20.511349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.734316, 22.087400, 20.627804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.659210, 21.787815, 20.881985>,  <20.614147, 21.608065, 21.034492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.659210, 21.787815, 20.881985>,  <20.734316, 22.087400, 20.627804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.659210, 21.787815, 20.881985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023277, 0.643383, 0.765191,
		-0.981938, 0.158468, -0.103371,
		-0.187765, -0.748963, 0.635451,
		20.602880, 21.563126, 21.072620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.377424, 22.631550, 20.282099>,  <20.734316, 22.087400, 20.627804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.377424, 22.631550, 20.282099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.364624, 23.030685, 20.259130>,  <20.356943, 23.270166, 20.245350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.364624, 23.030685, 20.259130>,  <20.377424, 22.631550, 20.282099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.364624, 23.030685, 20.259130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347481, -0.042760, -0.936711,
		-0.937141, -0.049930, -0.345361,
		-0.032003, 0.997837, -0.057422,
		20.355022, 23.330036, 20.241903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.907131, 22.975637, 19.734385>,  <20.377424, 22.631550, 20.282099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.907131, 22.975637, 19.734385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.199108, 23.241444, 19.798391>,  <20.374294, 23.400928, 19.836796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.199108, 23.241444, 19.798391>,  <19.907131, 22.975637, 19.734385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.199108, 23.241444, 19.798391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203777, 0.011892, -0.978945,
		-0.652428, 0.747179, -0.126733,
		0.729940, 0.664516, 0.160017,
		20.418091, 23.440798, 19.846395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.858774, 23.407434, 19.216093>,  <19.907131, 22.975637, 19.734385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.858774, 23.407434, 19.216093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.235558, 23.460423, 19.339489>,  <20.461628, 23.492216, 19.413527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.235558, 23.460423, 19.339489>,  <19.858774, 23.407434, 19.216093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.235558, 23.460423, 19.339489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326637, -0.149191, -0.933301,
		-0.077611, 0.979895, -0.183801,
		0.941958, 0.132470, 0.308491,
		20.518145, 23.500164, 19.432037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.102613, 23.892647, 18.699387>,  <19.858774, 23.407434, 19.216093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.102613, 23.892647, 18.699387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.421970, 23.729042, 18.876148>,  <20.613585, 23.630880, 18.982204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.421970, 23.729042, 18.876148>,  <20.102613, 23.892647, 18.699387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.421970, 23.729042, 18.876148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451967, -0.077854, -0.888631,
		0.397863, 0.909203, 0.122701,
		0.798393, -0.409010, 0.441904,
		20.661488, 23.606339, 19.008720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.627960, 24.249521, 18.396101>,  <20.102613, 23.892647, 18.699387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.627960, 24.249521, 18.396101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.778973, 23.907391, 18.538023>,  <20.869581, 23.702112, 18.623177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.778973, 23.907391, 18.538023>,  <20.627960, 24.249521, 18.396101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.778973, 23.907391, 18.538023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379088, -0.206820, -0.901952,
		0.844844, 0.475019, 0.246162,
		0.377533, -0.855326, 0.354805,
		20.892233, 23.650793, 18.644464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.273949, 24.090128, 18.002422>,  <20.627960, 24.249521, 18.396101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.273949, 24.090128, 18.002422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.219711, 23.736698, 18.181713>,  <21.187168, 23.524639, 18.289288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.219711, 23.736698, 18.181713>,  <21.273949, 24.090128, 18.002422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.219711, 23.736698, 18.181713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268358, -0.468247, -0.841860,
		0.953729, 0.006135, 0.300606,
		-0.135594, -0.883576, 0.448227,
		21.179033, 23.471626, 18.316181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.793236, 23.667713, 17.761724>,  <21.273949, 24.090128, 18.002422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.793236, 23.667713, 17.761724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.494503, 23.431568, 17.884178>,  <21.315264, 23.289881, 17.957651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.494503, 23.431568, 17.884178>,  <21.793236, 23.667713, 17.761724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.494503, 23.431568, 17.884178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082070, -0.538646, -0.838526,
		0.659931, -0.601112, 0.450728,
		-0.746831, -0.590360, 0.306135,
		21.270454, 23.254459, 17.976019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<15.356159, 24.837881, 23.550674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.499238, 24.466267, 23.512840>,  <15.585086, 24.243298, 23.490139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.499238, 24.466267, 23.512840>,  <15.356159, 24.837881, 23.550674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.499238, 24.466267, 23.512840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325088, -0.028928, -0.945241,
		0.875426, 0.368860, -0.312365,
		0.357698, -0.929035, -0.094587,
		15.606547, 24.187555, 23.484465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.808853, 24.820242, 23.018435>,  <15.356159, 24.837881, 23.550674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.808853, 24.820242, 23.018435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.657662, 24.452721, 23.063925>,  <15.566948, 24.232208, 23.091219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.657662, 24.452721, 23.063925>,  <15.808853, 24.820242, 23.018435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.657662, 24.452721, 23.063925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312736, 0.011093, -0.949775,
		0.871395, -0.394560, -0.291536,
		-0.377977, -0.918803, 0.113727,
		15.544270, 24.177080, 23.098043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.861223, 24.584904, 22.369976>,  <15.808853, 24.820242, 23.018435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.861223, 24.584904, 22.369976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.608926, 24.328678, 22.545174>,  <15.457547, 24.174942, 22.650291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.608926, 24.328678, 22.545174>,  <15.861223, 24.584904, 22.369976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608926, 24.328678, 22.545174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330957, -0.288460, -0.898476,
		0.701876, -0.711665, -0.030055,
		-0.630744, -0.640565, 0.437993,
		15.419703, 24.136509, 22.676571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.931428, 23.893770, 22.002983>,  <15.861223, 24.584904, 22.369976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.931428, 23.893770, 22.002983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.566899, 23.903236, 22.167389>,  <15.348182, 23.908916, 22.266031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.566899, 23.903236, 22.167389>,  <15.931428, 23.893770, 22.002983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.566899, 23.903236, 22.167389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392045, -0.354628, -0.848846,
		0.125670, -0.934708, 0.332458,
		-0.911322, 0.023664, 0.411014,
		15.293503, 23.910336, 22.290693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.564845, 23.227074, 21.914036>,  <15.931428, 23.893770, 22.002983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.564845, 23.227074, 21.914036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.268638, 23.488857, 21.975115>,  <15.090913, 23.645927, 22.011763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.268638, 23.488857, 21.975115>,  <15.564845, 23.227074, 21.914036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.268638, 23.488857, 21.975115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477175, -0.352053, -0.805210,
		-0.473219, -0.669136, 0.572993,
		-0.740519, 0.654458, 0.152697,
		15.046482, 23.685194, 22.020924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.953410, 22.902977, 21.797001>,  <15.564845, 23.227074, 21.914036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.953410, 22.902977, 21.797001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.864770, 23.290043, 21.748810>,  <14.811585, 23.522284, 21.719896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.864770, 23.290043, 21.748810>,  <14.953410, 22.902977, 21.797001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864770, 23.290043, 21.748810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582765, -0.230477, -0.779273,
		-0.781843, -0.102479, 0.614996,
		-0.221602, 0.967666, -0.120476,
		14.798289, 23.580343, 21.712667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.186367, 22.948309, 21.731449>,  <14.953410, 22.902977, 21.797001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.186367, 22.948309, 21.731449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.322364, 23.297543, 21.591658>,  <14.403962, 23.507082, 21.507784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.322364, 23.297543, 21.591658>,  <14.186367, 22.948309, 21.731449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.322364, 23.297543, 21.591658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461583, -0.168848, -0.870880,
		-0.819358, 0.457404, 0.345593,
		0.339991, 0.873082, -0.349477,
		14.424361, 23.559467, 21.486814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.734314, 23.112835, 21.276783>,  <14.186367, 22.948309, 21.731449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.734314, 23.112835, 21.276783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.002503, 23.377460, 21.142441>,  <14.163417, 23.536236, 21.061836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.002503, 23.377460, 21.142441>,  <13.734314, 23.112835, 21.276783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.002503, 23.377460, 21.142441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373189, -0.090528, -0.923328,
		-0.641245, 0.744404, 0.186192,
		0.670473, 0.661565, -0.335854,
		14.203646, 23.575930, 21.041685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.312122, 23.592550, 20.884161>,  <13.734314, 23.112835, 21.276783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.312122, 23.592550, 20.884161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.695756, 23.597519, 20.771021>,  <13.925936, 23.600500, 20.703136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.695756, 23.597519, 20.771021>,  <13.312122, 23.592550, 20.884161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.695756, 23.597519, 20.771021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282853, -0.001569, -0.959162,
		-0.012356, 0.999922, 0.002008,
		0.959084, 0.012420, -0.282850,
		13.983481, 23.601244, 20.686167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.386823, 23.984097, 20.364698>,  <13.312122, 23.592550, 20.884161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.386823, 23.984097, 20.364698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.729789, 23.786289, 20.307720>,  <13.935568, 23.667604, 20.273533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.729789, 23.786289, 20.307720>,  <13.386823, 23.984097, 20.364698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.729789, 23.786289, 20.307720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235111, -0.130188, -0.963210,
		0.457780, 0.859362, -0.227892,
		0.857415, -0.494518, -0.142448,
		13.987013, 23.637934, 20.264986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.710332, 24.373917, 19.838051>,  <13.386823, 23.984097, 20.364698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.710332, 24.373917, 19.838051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.843272, 23.996658, 19.839685>,  <13.923037, 23.770304, 19.840666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.843272, 23.996658, 19.839685>,  <13.710332, 24.373917, 19.838051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.843272, 23.996658, 19.839685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189623, -0.071062, -0.979282,
		0.923897, 0.324692, -0.202460,
		0.332352, -0.943147, 0.004085,
		13.942978, 23.713715, 19.840912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.207654, 24.353672, 19.306192>,  <13.710332, 24.373917, 19.838051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.207654, 24.353672, 19.306192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.072110, 23.981331, 19.360868>,  <13.990784, 23.757925, 19.393675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.072110, 23.981331, 19.360868>,  <14.207654, 24.353672, 19.306192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.072110, 23.981331, 19.360868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199016, -0.071081, -0.977415,
		0.919547, -0.358410, -0.161168,
		-0.338859, -0.930854, 0.136692,
		13.970452, 23.702074, 19.401876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.870486, 24.178846, 19.042978>,  <14.207654, 24.353672, 19.306192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.870486, 24.178846, 19.042978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.158534, 24.421696, 18.908619>,  <15.331363, 24.567406, 18.828003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.158534, 24.421696, 18.908619>,  <14.870486, 24.178846, 19.042978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.158534, 24.421696, 18.908619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382796, 0.056134, 0.922126,
		0.578700, -0.792622, -0.191981,
		0.720120, 0.607124, -0.335897,
		15.374570, 24.603832, 18.807850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.547090, 23.912817, 19.229317>,  <14.870486, 24.178846, 19.042978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.547090, 23.912817, 19.229317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.606242, 24.306206, 19.187525>,  <15.641733, 24.542238, 19.162449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.606242, 24.306206, 19.187525>,  <15.547090, 23.912817, 19.229317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606242, 24.306206, 19.187525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533409, 0.009647, 0.845803,
		0.832831, -0.180808, -0.523165,
		0.147880, 0.983471, -0.104479,
		15.650606, 24.601248, 19.156181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.331446, 23.989397, 19.475222>,  <15.547090, 23.912817, 19.229317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.331446, 23.989397, 19.475222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.174450, 24.356083, 19.445324>,  <16.080254, 24.576094, 19.427385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.174450, 24.356083, 19.445324>,  <16.331446, 23.989397, 19.475222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.174450, 24.356083, 19.445324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565105, 0.304466, 0.766783,
		0.725678, 0.258716, -0.637540,
		-0.392488, 0.916715, -0.074743,
		16.056704, 24.631098, 19.422901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.875261, 24.382027, 19.507570>,  <16.331446, 23.989397, 19.475222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.875261, 24.382027, 19.507570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.585411, 24.626591, 19.634752>,  <16.411501, 24.773329, 19.711061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.585411, 24.626591, 19.634752>,  <16.875261, 24.382027, 19.507570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.585411, 24.626591, 19.634752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538492, 0.214431, 0.814890,
		0.430051, 0.761708, -0.484621,
		-0.724626, 0.611409, 0.317957,
		16.368023, 24.810013, 19.730139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.188873, 24.986320, 19.775719>,  <16.875261, 24.382027, 19.507570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.188873, 24.986320, 19.775719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.832169, 25.040173, 19.948523>,  <16.618145, 25.072483, 20.052206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.832169, 25.040173, 19.948523>,  <17.188873, 24.986320, 19.775719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.832169, 25.040173, 19.948523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451578, 0.325800, 0.830621,
		-0.028923, 0.935804, -0.351332,
		-0.891762, 0.134630, 0.432012,
		16.564640, 25.080561, 20.078127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121918, 25.680183, 20.114244>,  <17.188873, 24.986320, 19.775719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121918, 25.680183, 20.114244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.858189, 25.446720, 20.303829>,  <16.699951, 25.306643, 20.417580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.858189, 25.446720, 20.303829>,  <17.121918, 25.680183, 20.114244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.858189, 25.446720, 20.303829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400652, 0.260685, 0.878363,
		-0.636217, 0.769017, 0.061969,
		-0.659322, -0.583658, 0.473961,
		16.660393, 25.271624, 20.446018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929575, 26.123098, 20.611958>,  <17.121918, 25.680183, 20.114244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.929575, 26.123098, 20.611958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.809635, 25.773010, 20.763790>,  <16.737671, 25.562958, 20.854889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.809635, 25.773010, 20.763790>,  <16.929575, 26.123098, 20.611958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.809635, 25.773010, 20.763790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360292, 0.264529, 0.894547,
		-0.883335, 0.404988, 0.236017,
		-0.299847, -0.875220, 0.379582,
		16.719681, 25.510445, 20.877665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497862, 26.284176, 21.158085>,  <16.929575, 26.123098, 20.611958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497862, 26.284176, 21.158085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.607414, 25.909111, 21.243670>,  <16.673145, 25.684072, 21.295021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.607414, 25.909111, 21.243670>,  <16.497862, 26.284176, 21.158085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.607414, 25.909111, 21.243670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434550, 0.319113, 0.842220,
		-0.857995, -0.137691, 0.494860,
		0.273882, -0.937661, 0.213964,
		16.689579, 25.627813, 21.307859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.329109, 26.168753, 21.878119>,  <16.497862, 26.284176, 21.158085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.329109, 26.168753, 21.878119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.586475, 25.872894, 21.799187>,  <16.740896, 25.695379, 21.751827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.586475, 25.872894, 21.799187>,  <16.329109, 26.168753, 21.878119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586475, 25.872894, 21.799187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447463, 0.154233, 0.880902,
		-0.621121, -0.655086, 0.430200,
		0.643417, -0.739645, -0.197330,
		16.779501, 25.651001, 21.739988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.300800, 25.756180, 22.488297>,  <16.329109, 26.168753, 21.878119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.300800, 25.756180, 22.488297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.641613, 25.633785, 22.318396>,  <16.846100, 25.560349, 22.216455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.641613, 25.633785, 22.318396>,  <16.300800, 25.756180, 22.488297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.641613, 25.633785, 22.318396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420160, -0.084276, 0.903528,
		-0.312263, -0.948299, 0.056757,
		0.852032, -0.305985, -0.424753,
		16.897223, 25.541990, 22.190969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525093, 25.321482, 22.890085>,  <16.300800, 25.756180, 22.488297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.525093, 25.321482, 22.890085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.851509, 25.432732, 22.687414>,  <17.047359, 25.499481, 22.565811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.851509, 25.432732, 22.687414>,  <16.525093, 25.321482, 22.890085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.851509, 25.432732, 22.687414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476320, 0.172972, 0.862091,
		0.327410, -0.944842, 0.008675,
		0.816041, 0.278125, -0.506680,
		17.096321, 25.516169, 22.535410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058725, 24.945436, 23.225731>,  <16.525093, 25.321482, 22.890085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.058725, 24.945436, 23.225731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.259365, 25.236412, 23.038445>,  <17.379749, 25.410997, 22.926073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.259365, 25.236412, 23.038445>,  <17.058725, 24.945436, 23.225731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.259365, 25.236412, 23.038445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604170, 0.092803, 0.791433,
		0.619173, -0.679865, -0.392948,
		0.501601, 0.727441, -0.468215,
		17.409845, 25.454645, 22.897980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.768135, 24.798674, 23.196554>,  <17.058725, 24.945436, 23.225731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.768135, 24.798674, 23.196554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.727745, 25.194794, 23.158371>,  <17.703510, 25.432465, 23.135462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.727745, 25.194794, 23.158371>,  <17.768135, 24.798674, 23.196554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.727745, 25.194794, 23.158371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678818, 0.138721, 0.721084,
		0.727331, 0.008014, -0.686240,
		-0.100975, 0.990299, -0.095456,
		17.697453, 25.491884, 23.129734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.423979, 25.074268, 23.070629>,  <17.768135, 24.798674, 23.196554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.423979, 25.074268, 23.070629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.137680, 25.275284, 23.264603>,  <17.965900, 25.395893, 23.380987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.137680, 25.275284, 23.264603>,  <18.423979, 25.074268, 23.070629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.137680, 25.275284, 23.264603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575567, 0.031224, 0.817159,
		0.395512, 0.863991, -0.311593,
		-0.715747, 0.502538, 0.484935,
		17.922956, 25.426044, 23.410084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568859, 24.867451, 22.274771>,  <18.423979, 25.074268, 23.070629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.568859, 24.867451, 22.274771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.790474, 24.583481, 22.448689>,  <18.923443, 24.413099, 22.553040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.790474, 24.583481, 22.448689>,  <18.568859, 24.867451, 22.274771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.790474, 24.583481, 22.448689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488885, -0.145277, -0.860166,
		0.673821, 0.689129, 0.266584,
		0.554037, -0.709927, 0.434795,
		18.956684, 24.370502, 22.579126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.182816, 25.029858, 22.129393>,  <18.568859, 24.867451, 22.274771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.182816, 25.029858, 22.129393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.223167, 24.641193, 22.214901>,  <19.247379, 24.407995, 22.266207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.223167, 24.641193, 22.214901>,  <19.182816, 25.029858, 22.129393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.223167, 24.641193, 22.214901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594985, -0.113289, -0.795712,
		0.797380, 0.207463, 0.566695,
		0.100881, -0.971661, 0.213772,
		19.253431, 24.349695, 22.279032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.843840, 24.952024, 22.056320>,  <19.182816, 25.029858, 22.129393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.843840, 24.952024, 22.056320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.697216, 24.581028, 22.026941>,  <19.609241, 24.358431, 22.009314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.697216, 24.581028, 22.026941>,  <19.843840, 24.952024, 22.056320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.697216, 24.581028, 22.026941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634955, -0.191681, -0.748392,
		0.680048, -0.320967, 0.659177,
		-0.366560, -0.927491, -0.073447,
		19.587248, 24.302780, 22.004908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.403677, 24.643551, 21.935781>,  <19.843840, 24.952024, 22.056320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.403677, 24.643551, 21.935781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.113865, 24.398499, 21.809456>,  <19.939978, 24.251467, 21.733662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.113865, 24.398499, 21.809456>,  <20.403677, 24.643551, 21.935781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.113865, 24.398499, 21.809456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612885, -0.363032, -0.701841,
		0.315318, -0.702063, 0.638500,
		-0.724532, -0.612630, -0.315813,
		19.896505, 24.214710, 21.714712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.857893, 24.062412, 21.715551>,  <20.403677, 24.643551, 21.935781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.857893, 24.062412, 21.715551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.499760, 24.017223, 21.543219>,  <20.284880, 23.990110, 21.439819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.499760, 24.017223, 21.543219>,  <20.857893, 24.062412, 21.715551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.499760, 24.017223, 21.543219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437482, -0.404600, -0.803061,
		-0.083593, -0.907489, 0.411675,
		-0.895333, -0.112970, -0.430832,
		20.231159, 23.983332, 21.413969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.832279, 23.375153, 21.474707>,  <20.857893, 24.062412, 21.715551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.832279, 23.375153, 21.474707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.557411, 23.577503, 21.266136>,  <20.392490, 23.698914, 21.140993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.557411, 23.577503, 21.266136>,  <20.832279, 23.375153, 21.474707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.557411, 23.577503, 21.266136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385322, -0.354674, -0.851900,
		-0.615895, -0.786316, 0.048794,
		-0.687168, 0.505880, -0.521427,
		20.351261, 23.729267, 21.109709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.505289, 22.862457, 20.978140>,  <20.832279, 23.375153, 21.474707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.505289, 22.862457, 20.978140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.419689, 23.221664, 20.824379>,  <20.368328, 23.437189, 20.732122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.419689, 23.221664, 20.824379>,  <20.505289, 22.862457, 20.978140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.419689, 23.221664, 20.824379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279223, -0.320862, -0.905031,
		-0.936076, -0.301012, -0.182083,
		-0.214001, 0.898020, -0.384401,
		20.355488, 23.491070, 20.709059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.092730, 22.372616, 21.217554>,  <20.505289, 22.862457, 20.978140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.092730, 22.372616, 21.217554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.260567, 22.042179, 21.368027>,  <20.361269, 21.843916, 21.458311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.260567, 22.042179, 21.368027>,  <20.092730, 22.372616, 21.217554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.260567, 22.042179, 21.368027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048433, 0.434212, 0.899507,
		-0.906420, -0.359206, 0.222202,
		0.419592, -0.826093, 0.376182,
		20.386444, 21.794352, 21.480881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800373, 22.246864, 21.774910>,  <20.092730, 22.372616, 21.217554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800373, 22.246864, 21.774910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.136124, 22.039276, 21.839552>,  <20.337574, 21.914722, 21.878336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.136124, 22.039276, 21.839552>,  <19.800373, 22.246864, 21.774910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.136124, 22.039276, 21.839552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124235, 0.472616, 0.872468,
		-0.529161, -0.712252, 0.461177,
		0.839377, -0.518971, 0.161603,
		20.387938, 21.883585, 21.888033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.707285, 21.832172, 22.474087>,  <19.800373, 22.246864, 21.774910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.707285, 21.832172, 22.474087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.088821, 21.898823, 22.374151>,  <20.317743, 21.938812, 22.314190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.088821, 21.898823, 22.374151>,  <19.707285, 21.832172, 22.474087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.088821, 21.898823, 22.374151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201979, 0.259701, 0.944330,
		0.222227, -0.951206, 0.214060,
		0.953845, 0.166621, -0.249836,
		20.374975, 21.948811, 22.299200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.993732, 21.569147, 23.038816>,  <19.707285, 21.832172, 22.474087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.993732, 21.569147, 23.038816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.285389, 21.787102, 22.873192>,  <20.460382, 21.917875, 22.773817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.285389, 21.787102, 22.873192>,  <19.993732, 21.569147, 23.038816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.285389, 21.787102, 22.873192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278523, 0.316390, 0.906820,
		0.625121, -0.776527, 0.078930,
		0.729142, 0.544888, -0.414063,
		20.504131, 21.950567, 22.748974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.620516, 21.332567, 23.314085>,  <19.993732, 21.569147, 23.038816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.620516, 21.332567, 23.314085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.703438, 21.705017, 23.194067>,  <20.753191, 21.928488, 23.122055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.703438, 21.705017, 23.194067>,  <20.620516, 21.332567, 23.314085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.703438, 21.705017, 23.194067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442543, 0.184274, 0.877609,
		0.872456, -0.314716, -0.373863,
		0.207305, 0.931126, -0.300047,
		20.765629, 21.984356, 23.104053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.236052, 21.477808, 23.495218>,  <20.620516, 21.332567, 23.314085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.236052, 21.477808, 23.495218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.123211, 21.858944, 23.450476>,  <21.055508, 22.087626, 23.423630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.123211, 21.858944, 23.450476>,  <21.236052, 21.477808, 23.495218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.123211, 21.858944, 23.450476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293378, 0.196686, 0.935545,
		0.913427, 0.231101, -0.335028,
		-0.282101, 0.952842, -0.111858,
		21.038580, 22.144796, 23.416918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.848803, 21.925560, 23.770746>,  <21.236052, 21.477808, 23.495218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.848803, 21.925560, 23.770746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.510910, 22.139580, 23.775665>,  <21.308174, 22.267992, 23.778618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.510910, 22.139580, 23.775665>,  <21.848803, 21.925560, 23.770746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.510910, 22.139580, 23.775665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071058, 0.089348, 0.993463,
		0.530452, 0.840083, -0.113494,
		-0.844731, 0.535049, 0.012300,
		21.257490, 22.300095, 23.779356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.009548, 22.411552, 24.199423>,  <21.848803, 21.925560, 23.770746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.009548, 22.411552, 24.199423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.610435, 22.433308, 24.184065>,  <21.370968, 22.446362, 24.174850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.610435, 22.433308, 24.184065>,  <22.009548, 22.411552, 24.199423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.610435, 22.433308, 24.184065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012709, 0.410496, 0.911774,
		0.065351, 0.910239, -0.408894,
		-0.997781, 0.054388, -0.038395,
		21.311102, 22.449625, 24.172546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.868282, 23.037287, 24.505169>,  <22.009548, 22.411552, 24.199423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.868282, 23.037287, 24.505169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.534519, 22.823853, 24.560383>,  <21.334261, 22.695793, 24.593512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.534519, 22.823853, 24.560383>,  <21.868282, 23.037287, 24.505169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.534519, 22.823853, 24.560383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066643, 0.150934, 0.986295,
		-0.547105, 0.832170, -0.090381,
		-0.834407, -0.533583, 0.138035,
		21.284197, 22.663778, 24.601793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.255772, 17.071337, 9.783032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.093498, 16.956932, 10.130277>,  <15.996134, 16.888288, 10.338623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.093498, 16.956932, 10.130277>,  <16.255772, 17.071337, 9.783032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.093498, 16.956932, 10.130277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578311, 0.655174, 0.486111,
		-0.707798, 0.699246, -0.100390,
		-0.405684, -0.286012, 0.868112,
		15.971793, 16.871128, 10.390710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293285, 17.713514, 10.172538>,  <16.255772, 17.071337, 9.783032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293285, 17.713514, 10.172538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.235123, 17.424767, 10.443171>,  <16.200226, 17.251518, 10.605551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.235123, 17.424767, 10.443171>,  <16.293285, 17.713514, 10.172538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.235123, 17.424767, 10.443171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556979, 0.505466, 0.658999,
		-0.817699, 0.472665, 0.328567,
		-0.145406, -0.721867, 0.676583,
		16.191502, 17.208206, 10.646146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.405643, 18.102280, 10.725876>,  <16.293285, 17.713514, 10.172538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.405643, 18.102280, 10.725876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.411854, 17.737236, 10.889290>,  <16.415579, 17.518209, 10.987338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.411854, 17.737236, 10.889290>,  <16.405643, 18.102280, 10.725876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.411854, 17.737236, 10.889290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517373, 0.356966, 0.777753,
		-0.855619, 0.199291, 0.477702,
		0.015524, -0.912611, 0.408535,
		16.416512, 17.463453, 11.011850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.051062, 18.188856, 11.323295>,  <16.405643, 18.102280, 10.725876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.051062, 18.188856, 11.323295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.325520, 17.899967, 11.358163>,  <16.490194, 17.726633, 11.379084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.325520, 17.899967, 11.358163>,  <16.051062, 18.188856, 11.323295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.325520, 17.899967, 11.358163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351414, 0.433988, 0.829556,
		-0.636955, -0.538563, 0.551578,
		0.686146, -0.722222, 0.087172,
		16.531363, 17.683300, 11.384315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.005819, 18.102585, 12.071871>,  <16.051062, 18.188856, 11.323295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.005819, 18.102585, 12.071871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.333939, 17.934322, 11.916868>,  <16.530809, 17.833364, 11.823867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.333939, 17.934322, 11.916868>,  <16.005819, 18.102585, 12.071871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333939, 17.934322, 11.916868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505176, 0.215229, 0.835747,
		-0.268161, -0.881319, 0.389058,
		0.820297, -0.420658, -0.387505,
		16.580029, 17.808125, 11.800616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293777, 17.612684, 12.533673>,  <16.005819, 18.102585, 12.071871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293777, 17.612684, 12.533673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.611347, 17.714577, 12.312840>,  <16.801889, 17.775713, 12.180341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.611347, 17.714577, 12.312840>,  <16.293777, 17.612684, 12.533673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.611347, 17.714577, 12.312840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521714, 0.180898, 0.833721,
		0.312247, -0.949941, 0.010721,
		0.793924, 0.254733, -0.552082,
		16.849525, 17.790997, 12.147216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.809494, 17.367409, 12.829906>,  <16.293777, 17.612684, 12.533673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.809494, 17.367409, 12.829906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.019596, 17.603748, 12.584955>,  <17.145657, 17.745552, 12.437985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.019596, 17.603748, 12.584955>,  <16.809494, 17.367409, 12.829906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019596, 17.603748, 12.584955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608670, 0.242038, 0.755605,
		0.594667, -0.769620, -0.232500,
		0.525255, 0.590849, -0.612376,
		17.177172, 17.781004, 12.401242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.568897, 17.194950, 13.044490>,  <16.809494, 17.367409, 12.829906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.568897, 17.194950, 13.044490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.572395, 17.549480, 12.859299>,  <17.574495, 17.762199, 12.748184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.572395, 17.549480, 12.859299>,  <17.568897, 17.194950, 13.044490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.572395, 17.549480, 12.859299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630962, 0.354296, 0.690189,
		0.775764, -0.298158, -0.556140,
		0.008747, 0.886327, -0.462977,
		17.575020, 17.815378, 12.720406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.268690, 17.347712, 12.745445>,  <17.568897, 17.194950, 13.044490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.268690, 17.347712, 12.745445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.049541, 17.669895, 12.835842>,  <17.918053, 17.863205, 12.890080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.049541, 17.669895, 12.835842>,  <18.268690, 17.347712, 12.745445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.049541, 17.669895, 12.835842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635915, 0.225458, 0.738092,
		0.543552, 0.548091, -0.635726,
		-0.547871, 0.805459, 0.225992,
		17.885180, 17.911533, 12.903640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742817, 17.862877, 12.740317>,  <18.268690, 17.347712, 12.745445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742817, 17.862877, 12.740317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.436058, 18.023708, 12.940397>,  <18.252003, 18.120209, 13.060446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.436058, 18.023708, 12.940397>,  <18.742817, 17.862877, 12.740317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.436058, 18.023708, 12.940397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637763, 0.390503, 0.663902,
		0.071612, 0.828153, -0.555908,
		-0.766896, 0.402081, 0.500201,
		18.205990, 18.144333, 13.090458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.015646, 18.488609, 12.937826>,  <18.742817, 17.862877, 12.740317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.015646, 18.488609, 12.937826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.721153, 18.458927, 13.206884>,  <18.544456, 18.441118, 13.368320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.721153, 18.458927, 13.206884>,  <19.015646, 18.488609, 12.937826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.721153, 18.458927, 13.206884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546934, 0.520105, 0.656013,
		-0.398525, 0.850873, -0.342335,
		-0.736234, -0.074203, 0.672647,
		18.500282, 18.436666, 13.408678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926807, 19.245358, 13.266863>,  <19.015646, 18.488609, 12.937826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926807, 19.245358, 13.266863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.779621, 18.963711, 13.509785>,  <18.691309, 18.794724, 13.655538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.779621, 18.963711, 13.509785>,  <18.926807, 19.245358, 13.266863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.779621, 18.963711, 13.509785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370156, 0.488224, 0.790330,
		-0.852986, 0.515613, 0.080983,
		-0.367966, -0.704117, 0.607306,
		18.669231, 18.752476, 13.691977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.635674, 19.885004, 13.176269>,  <18.926807, 19.245358, 13.266863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.635674, 19.885004, 13.176269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.718903, 20.238274, 13.008120>,  <18.768839, 20.450235, 12.907230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.718903, 20.238274, 13.008120>,  <18.635674, 19.885004, 13.176269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.718903, 20.238274, 13.008120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517600, -0.265251, -0.813469,
		-0.829938, 0.386845, 0.401938,
		0.208072, 0.883172, -0.420373,
		18.781324, 20.503225, 12.882008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.146122, 19.957569, 12.584086>,  <18.635674, 19.885004, 13.176269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.146122, 19.957569, 12.584086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.374020, 20.270050, 12.482013>,  <18.510757, 20.457539, 12.420769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.374020, 20.270050, 12.482013>,  <18.146122, 19.957569, 12.584086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.374020, 20.270050, 12.482013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536842, 0.118674, -0.835295,
		-0.622249, 0.612897, 0.486994,
		0.569744, 0.781200, -0.255184,
		18.544943, 20.504410, 12.405457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.795015, 20.581781, 12.501151>,  <18.146122, 19.957569, 12.584086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.795015, 20.581781, 12.501151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.123260, 20.617146, 12.275309>,  <18.320208, 20.638365, 12.139803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.123260, 20.617146, 12.275309>,  <17.795015, 20.581781, 12.501151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.123260, 20.617146, 12.275309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571487, 0.126952, -0.810732,
		0.000001, 0.987961, 0.154704,
		0.820611, 0.088410, -0.564607,
		18.369444, 20.643669, 12.105927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.681000, 21.258900, 12.113708>,  <17.795015, 20.581781, 12.501151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.681000, 21.258900, 12.113708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.952450, 21.026623, 11.933812>,  <18.115320, 20.887257, 11.825874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.952450, 21.026623, 11.933812>,  <17.681000, 21.258900, 12.113708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.952450, 21.026623, 11.933812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509747, 0.068484, -0.857594,
		0.528799, 0.811237, -0.249531,
		0.678623, -0.580693, -0.449740,
		18.156036, 20.852415, 11.798890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.574034, 21.559998, 11.393785>,  <17.681000, 21.258900, 12.113708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.574034, 21.559998, 11.393785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.812618, 21.245319, 11.330108>,  <17.955769, 21.056513, 11.291902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.812618, 21.245319, 11.330108>,  <17.574034, 21.559998, 11.393785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.812618, 21.245319, 11.330108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416010, -0.133391, -0.899523,
		0.686417, 0.602757, -0.406837,
		0.596463, -0.786696, -0.159191,
		17.991556, 21.009310, 11.282351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.792204, 21.649805, 10.650570>,  <17.574034, 21.559998, 11.393785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.792204, 21.649805, 10.650570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.871609, 21.270409, 10.749331>,  <17.919252, 21.042770, 10.808587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.871609, 21.270409, 10.749331>,  <17.792204, 21.649805, 10.650570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.871609, 21.270409, 10.749331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351257, -0.304032, -0.885541,
		0.914992, 0.089067, -0.393518,
		0.198514, -0.948489, 0.246901,
		17.931164, 20.985863, 10.823400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.252493, 21.407419, 10.158991>,  <17.792204, 21.649805, 10.650570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.252493, 21.407419, 10.158991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.049992, 21.090084, 10.294239>,  <17.928492, 20.899683, 10.375388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.049992, 21.090084, 10.294239>,  <18.252493, 21.407419, 10.158991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.049992, 21.090084, 10.294239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332124, -0.182477, -0.925417,
		0.795867, -0.580791, -0.171107,
		-0.506251, -0.793337, 0.338122,
		17.898117, 20.852083, 10.395676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266764, 20.929409, 9.584996>,  <18.252493, 21.407419, 10.158991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.266764, 20.929409, 9.584996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.957973, 20.818436, 9.813761>,  <17.772699, 20.751852, 9.951019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.957973, 20.818436, 9.813761>,  <18.266764, 20.929409, 9.584996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.957973, 20.818436, 9.813761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494165, -0.303981, -0.814492,
		0.399818, -0.911387, 0.097568,
		-0.771976, -0.277434, 0.571912,
		17.726381, 20.735205, 9.985334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.200384, 20.179483, 9.458093>,  <18.266764, 20.929409, 9.584996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.200384, 20.179483, 9.458093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.849983, 20.331921, 9.576338>,  <17.639742, 20.423384, 9.647285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.849983, 20.331921, 9.576338>,  <18.200384, 20.179483, 9.458093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.849983, 20.331921, 9.576338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421726, -0.307839, -0.852867,
		-0.234020, -0.871782, 0.430385,
		-0.876003, 0.381092, 0.295613,
		17.587183, 20.446249, 9.665022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.645506, 19.766123, 9.315326>,  <18.200384, 20.179483, 9.458093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.645506, 19.766123, 9.315326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.439678, 20.107201, 9.351389>,  <17.316181, 20.311848, 9.373027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.439678, 20.107201, 9.351389>,  <17.645506, 19.766123, 9.315326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439678, 20.107201, 9.351389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421269, -0.159826, -0.892742,
		-0.746828, -0.497358, 0.441456,
		-0.514569, 0.852696, 0.090159,
		17.285307, 20.363008, 9.378437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028242, 19.605745, 8.962687>,  <17.645506, 19.766123, 9.315326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028242, 19.605745, 8.962687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.024078, 20.004353, 8.995766>,  <17.021580, 20.243517, 9.015614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.024078, 20.004353, 8.995766>,  <17.028242, 19.605745, 8.962687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.024078, 20.004353, 8.995766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415907, 0.070896, -0.906640,
		-0.909348, -0.043831, 0.413722,
		-0.010408, 0.996520, 0.082698,
		17.020956, 20.303308, 9.020576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.471949, 19.812712, 8.607453>,  <17.028242, 19.605745, 8.962687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.471949, 19.812712, 8.607453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.650734, 20.170410, 8.616776>,  <16.758005, 20.385029, 8.622371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.650734, 20.170410, 8.616776>,  <16.471949, 19.812712, 8.607453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.650734, 20.170410, 8.616776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471540, 0.257667, -0.843361,
		-0.760179, 0.365962, 0.536842,
		0.446965, 0.894248, 0.023308,
		16.784822, 20.438684, 8.623769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029448, 20.324348, 8.464396>,  <16.471949, 19.812712, 8.607453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.029448, 20.324348, 8.464396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.375336, 20.490345, 8.351229>,  <16.582869, 20.589943, 8.283329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.375336, 20.490345, 8.351229>,  <16.029448, 20.324348, 8.464396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.375336, 20.490345, 8.351229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406595, 0.247713, -0.879386,
		-0.294854, 0.875455, 0.382936,
		0.864721, 0.414990, -0.282916,
		16.634752, 20.614841, 8.266354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.845557, 20.961361, 8.226299>,  <16.029448, 20.324348, 8.464396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.845557, 20.961361, 8.226299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.203476, 20.884289, 8.065196>,  <16.418226, 20.838045, 7.968534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.203476, 20.884289, 8.065196>,  <15.845557, 20.961361, 8.226299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.203476, 20.884289, 8.065196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326868, 0.331777, -0.884919,
		0.304134, 0.923470, 0.233891,
		0.894796, -0.192682, -0.402757,
		16.471914, 20.826485, 7.944369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.527584, 21.225683, 8.834509>,  <15.845557, 20.961361, 8.226299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.527584, 21.225683, 8.834509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.861640, 21.231480, 9.054447>,  <16.062075, 21.234957, 9.186410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.861640, 21.231480, 9.054447>,  <15.527584, 21.225683, 8.834509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.861640, 21.231480, 9.054447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322476, -0.822724, -0.468118,
		0.445589, 0.568256, -0.691763,
		0.835141, 0.014489, 0.549846,
		16.112183, 21.235826, 9.219400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.615174, 22.036724, 8.983002>,  <15.527584, 21.225683, 8.834509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.615174, 22.036724, 8.983002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.272248, 22.052479, 8.777689>,  <15.066492, 22.061932, 8.654501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.272248, 22.052479, 8.777689>,  <15.615174, 22.036724, 8.983002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.272248, 22.052479, 8.777689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339479, 0.706289, 0.621216,
		0.386992, 0.706827, -0.592143,
		-0.857316, 0.039386, -0.513282,
		15.015054, 22.064295, 8.623705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.435269, 22.684681, 8.635972>,  <15.615174, 22.036724, 8.983002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.435269, 22.684681, 8.635972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.100057, 22.502735, 8.756504>,  <14.898929, 22.393568, 8.828823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.100057, 22.502735, 8.756504>,  <15.435269, 22.684681, 8.635972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.100057, 22.502735, 8.756504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196999, 0.767262, 0.610329,
		-0.508816, 0.452113, -0.732598,
		-0.838032, -0.454866, 0.301330,
		14.848647, 22.366276, 8.846903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.890347, 23.207331, 8.706780>,  <15.435269, 22.684681, 8.635972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.890347, 23.207331, 8.706780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.770484, 22.896103, 8.927619>,  <14.698565, 22.709366, 9.060122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.770484, 22.896103, 8.927619>,  <14.890347, 23.207331, 8.706780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.770484, 22.896103, 8.927619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210733, 0.618378, 0.757100,
		-0.930481, 0.110526, -0.349268,
		-0.299659, -0.778070, 0.552097,
		14.680586, 22.662682, 9.093248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.469767, 23.555641, 9.194306>,  <14.890347, 23.207331, 8.706780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.469767, 23.555641, 9.194306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.499434, 23.185757, 9.343657>,  <14.517235, 22.963827, 9.433268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.499434, 23.185757, 9.343657>,  <14.469767, 23.555641, 9.194306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.499434, 23.185757, 9.343657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067137, 0.368929, 0.927030,
		-0.994983, -0.093825, -0.034719,
		0.074169, -0.924710, 0.373377,
		14.521686, 22.908344, 9.455670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.990444, 23.504251, 9.834021>,  <14.469767, 23.555641, 9.194306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.990444, 23.504251, 9.834021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.263745, 23.220695, 9.904035>,  <14.427726, 23.050562, 9.946043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.263745, 23.220695, 9.904035>,  <13.990444, 23.504251, 9.834021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.263745, 23.220695, 9.904035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062780, 0.181795, 0.981330,
		-0.727477, -0.681486, 0.079708,
		0.683254, -0.708891, 0.175035,
		14.468721, 23.008028, 9.956545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.780785, 22.853949, 10.234394>,  <13.990444, 23.504251, 9.834021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.780785, 22.853949, 10.234394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.177638, 22.819244, 10.270487>,  <14.415751, 22.798422, 10.292142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.177638, 22.819244, 10.270487>,  <13.780785, 22.853949, 10.234394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.177638, 22.819244, 10.270487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091873, -0.015112, 0.995656,
		-0.085023, -0.996114, -0.022964,
		0.992135, -0.086763, 0.090231,
		14.475279, 22.793217, 10.297556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.895353, 22.445154, 10.885821>,  <13.780785, 22.853949, 10.234394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.895353, 22.445154, 10.885821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.240895, 22.626606, 10.798206>,  <14.448220, 22.735477, 10.745638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.240895, 22.626606, 10.798206>,  <13.895353, 22.445154, 10.885821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.240895, 22.626606, 10.798206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181147, 0.125990, 0.975352,
		0.470045, -0.882240, 0.026663,
		0.863854, 0.453630, -0.219036,
		14.500051, 22.762695, 10.732495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.378713, 22.059227, 11.248996>,  <13.895353, 22.445154, 10.885821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.378713, 22.059227, 11.248996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.573007, 22.400135, 11.171334>,  <14.689583, 22.604679, 11.124738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.573007, 22.400135, 11.171334>,  <14.378713, 22.059227, 11.248996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.573007, 22.400135, 11.171334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001196, 0.222764, 0.974872,
		0.874105, -0.473297, 0.109223,
		0.485735, 0.852271, -0.194153,
		14.718727, 22.655817, 11.113089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.057656, 22.052589, 11.577783>,  <14.378713, 22.059227, 11.248996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.057656, 22.052589, 11.577783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.937999, 22.432018, 11.536367>,  <14.866204, 22.659676, 11.511518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.937999, 22.432018, 11.536367>,  <15.057656, 22.052589, 11.577783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.937999, 22.432018, 11.536367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048936, 0.123614, 0.991123,
		0.952952, 0.291422, -0.083398,
		-0.299144, 0.948574, -0.103537,
		14.848255, 22.716591, 11.505306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.515770, 22.475224, 11.878602>,  <15.057656, 22.052589, 11.577783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.515770, 22.475224, 11.878602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.228909, 22.753990, 11.878952>,  <15.056793, 22.921251, 11.879162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.228909, 22.753990, 11.878952>,  <15.515770, 22.475224, 11.878602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.228909, 22.753990, 11.878952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200179, 0.204788, 0.958118,
		0.667550, 0.687290, -0.286372,
		-0.717151, 0.696917, 0.000874,
		15.013764, 22.963066, 11.879214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831857, 22.956770, 12.249285>,  <15.515770, 22.475224, 11.878602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831857, 22.956770, 12.249285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.450301, 23.076832, 12.249105>,  <15.221368, 23.148869, 12.248998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.450301, 23.076832, 12.249105>,  <15.831857, 22.956770, 12.249285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.450301, 23.076832, 12.249105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133779, 0.426483, 0.894547,
		0.268696, 0.853240, -0.446973,
		-0.953890, 0.300157, -0.000449,
		15.164134, 23.166880, 12.248971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900069, 23.605042, 12.413168>,  <15.831857, 22.956770, 12.249285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.900069, 23.605042, 12.413168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.532672, 23.477516, 12.506742>,  <15.312233, 23.401001, 12.562886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.532672, 23.477516, 12.506742>,  <15.900069, 23.605042, 12.413168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.532672, 23.477516, 12.506742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049585, 0.494065, 0.868010,
		-0.392313, 0.808862, -0.437987,
		-0.918494, -0.318814, 0.233935,
		15.257124, 23.381872, 12.576922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468633, 24.222055, 12.672413>,  <15.900069, 23.605042, 12.413168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.468633, 24.222055, 12.672413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.304204, 23.887066, 12.816444>,  <15.205547, 23.686071, 12.902864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.304204, 23.887066, 12.816444>,  <15.468633, 24.222055, 12.672413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.304204, 23.887066, 12.816444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007423, 0.391906, 0.919975,
		-0.911573, 0.380848, -0.154885,
		-0.411071, -0.837475, 0.360078,
		15.180882, 23.635824, 12.924468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.154561, 24.449205, 13.208189>,  <15.468633, 24.222055, 12.672413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.154561, 24.449205, 13.208189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.123981, 24.057503, 13.283249>,  <15.105633, 23.822481, 13.328284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.123981, 24.057503, 13.283249>,  <15.154561, 24.449205, 13.208189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.123981, 24.057503, 13.283249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058207, 0.192262, 0.979616,
		-0.995373, 0.063970, -0.071698,
		-0.076451, -0.979257, 0.187649,
		15.101046, 23.763725, 13.339543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.442400, 24.267670, 13.567421>,  <15.154561, 24.449205, 13.208189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.442400, 24.267670, 13.567421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.709762, 23.985046, 13.660383>,  <14.870178, 23.815472, 13.716161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.709762, 23.985046, 13.660383>,  <14.442400, 24.267670, 13.567421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.709762, 23.985046, 13.660383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061648, 0.258756, 0.963973,
		-0.741240, -0.658650, 0.129396,
		0.668403, -0.706558, 0.232405,
		14.910283, 23.773079, 13.730104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.073584, 23.822866, 14.143926>,  <14.442400, 24.267670, 13.567421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.073584, 23.822866, 14.143926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.468141, 23.758556, 14.157679>,  <14.704875, 23.719971, 14.165931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.468141, 23.758556, 14.157679>,  <14.073584, 23.822866, 14.143926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.468141, 23.758556, 14.157679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017696, 0.104092, 0.994410,
		-0.163456, -0.981487, 0.099831,
		0.986392, -0.160775, 0.034383,
		14.764058, 23.710323, 14.167994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.133270, 23.315474, 14.615667>,  <14.073584, 23.822866, 14.143926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.133270, 23.315474, 14.615667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.485871, 23.502995, 14.593119>,  <14.697432, 23.615507, 14.579589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.485871, 23.502995, 14.593119>,  <14.133270, 23.315474, 14.615667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.485871, 23.502995, 14.593119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046099, 0.033371, 0.998379,
		0.469925, -0.882672, 0.007805,
		0.881502, 0.468804, -0.056373,
		14.750322, 23.643635, 14.576207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.559104, 22.964304, 15.151292>,  <14.133270, 23.315474, 14.615667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.559104, 22.964304, 15.151292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.735719, 23.314262, 15.071692>,  <14.841687, 23.524237, 15.023932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.735719, 23.314262, 15.071692>,  <14.559104, 22.964304, 15.151292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.735719, 23.314262, 15.071692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028459, 0.208025, 0.977709,
		0.896791, -0.437358, 0.066952,
		0.441537, 0.874896, -0.199002,
		14.868180, 23.576731, 15.011991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.749634, 23.005356, 15.802395>,  <14.559104, 22.964304, 15.151292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.749634, 23.005356, 15.802395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.863870, 23.354664, 15.644489>,  <14.932411, 23.564249, 15.549746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.863870, 23.354664, 15.644489>,  <14.749634, 23.005356, 15.802395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.863870, 23.354664, 15.644489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091550, 0.385177, 0.918291,
		0.953969, -0.298396, 0.030055,
		0.285591, 0.873269, -0.394765,
		14.949547, 23.616644, 15.526060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.425215, 23.197769, 16.086012>,  <14.749634, 23.005356, 15.802395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.425215, 23.197769, 16.086012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.231057, 23.529213, 15.974443>,  <15.114562, 23.728079, 15.907502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.231057, 23.529213, 15.974443>,  <15.425215, 23.197769, 16.086012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.231057, 23.529213, 15.974443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192824, 0.412627, 0.890257,
		0.852766, 0.378344, -0.360063,
		-0.485395, 0.828610, -0.278920,
		15.085439, 23.777796, 15.890767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901704, 23.821323, 16.219927>,  <15.425215, 23.197769, 16.086012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.901704, 23.821323, 16.219927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.527068, 23.961185, 16.210629>,  <15.302286, 24.045103, 16.205050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.527068, 23.961185, 16.210629>,  <15.901704, 23.821323, 16.219927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.527068, 23.961185, 16.210629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180591, 0.538459, 0.823072,
		0.300309, 0.766683, -0.567460,
		-0.936590, 0.349654, -0.023248,
		15.246091, 24.066082, 16.203653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.923619, 24.460161, 16.384724>,  <15.901704, 23.821323, 16.219927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.923619, 24.460161, 16.384724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.535991, 24.392792, 16.456873>,  <15.303413, 24.352369, 16.500162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.535991, 24.392792, 16.456873>,  <15.923619, 24.460161, 16.384724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.535991, 24.392792, 16.456873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068113, 0.519973, 0.851463,
		-0.237196, 0.837414, -0.492419,
		-0.969071, -0.168423, 0.180374,
		15.245270, 24.342264, 16.510984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631417, 25.151751, 16.603304>,  <15.923619, 24.460161, 16.384724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.631417, 25.151751, 16.603304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.387948, 24.859489, 16.727024>,  <15.241867, 24.684134, 16.801256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.387948, 24.859489, 16.727024>,  <15.631417, 25.151751, 16.603304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.387948, 24.859489, 16.727024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063914, 0.343415, 0.937007,
		-0.790843, 0.590099, -0.162328,
		-0.608672, -0.730651, 0.309302,
		15.205346, 24.640295, 16.819815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.225874, 25.482904, 17.111177>,  <15.631417, 25.151751, 16.603304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.225874, 25.482904, 17.111177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.138415, 25.096176, 17.164013>,  <15.085940, 24.864140, 17.195715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.138415, 25.096176, 17.164013>,  <15.225874, 25.482904, 17.111177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.138415, 25.096176, 17.164013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030640, 0.142101, 0.989378,
		-0.975323, 0.212276, -0.060693,
		-0.218646, -0.966823, 0.132090,
		15.072822, 24.806129, 17.203640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744659, 25.463131, 17.573837>,  <15.225874, 25.482904, 17.111177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.744659, 25.463131, 17.573837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.911481, 25.100128, 17.593840>,  <15.011574, 24.882326, 17.605841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.911481, 25.100128, 17.593840>,  <14.744659, 25.463131, 17.573837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.911481, 25.100128, 17.593840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144386, 0.120473, 0.982160,
		-0.897340, -0.402394, 0.181274,
		0.417054, -0.907505, 0.050005,
		15.036597, 24.827877, 17.608841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.451816, 25.212505, 18.159380>,  <14.744659, 25.463131, 17.573837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.451816, 25.212505, 18.159380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.783702, 24.998547, 18.095558>,  <14.982834, 24.870171, 18.057266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.783702, 24.998547, 18.095558>,  <14.451816, 25.212505, 18.159380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.783702, 24.998547, 18.095558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244971, 0.092102, 0.965146,
		-0.501559, -0.839882, 0.207453,
		0.829715, -0.534898, -0.159552,
		15.032617, 24.838078, 18.047693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.515204, 24.704378, 18.728252>,  <14.451816, 25.212505, 18.159380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.515204, 24.704378, 18.728252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.885684, 24.742954, 18.582455>,  <15.107971, 24.766100, 18.494976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.885684, 24.742954, 18.582455>,  <14.515204, 24.704378, 18.728252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.885684, 24.742954, 18.582455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354796, 0.104193, 0.929120,
		0.127589, -0.989870, 0.062284,
		0.926197, 0.096447, -0.364495,
		15.163544, 24.771887, 18.473106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.293635, 24.102699, 18.571993>,  <14.515204, 24.704378, 18.728252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.293635, 24.102699, 18.571993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.132703, 23.777279, 18.739929>,  <14.036143, 23.582027, 18.840691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.132703, 23.777279, 18.739929>,  <14.293635, 24.102699, 18.571993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.132703, 23.777279, 18.739929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435794, -0.233114, -0.869334,
		0.805117, -0.532724, -0.260751,
		-0.402331, -0.813549, 0.419842,
		14.012004, 23.533215, 18.865881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.407967, 23.554060, 18.111698>,  <14.293635, 24.102699, 18.571993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.407967, 23.554060, 18.111698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.105287, 23.436447, 18.345263>,  <13.923678, 23.365879, 18.485401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.105287, 23.436447, 18.345263>,  <14.407967, 23.554060, 18.111698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.105287, 23.436447, 18.345263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465874, -0.384089, -0.797143,
		0.458659, -0.875226, 0.153658,
		-0.756699, -0.294031, 0.583911,
		13.878277, 23.348238, 18.520435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.308251, 22.804022, 18.093355>,  <14.407967, 23.554060, 18.111698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.308251, 22.804022, 18.093355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.953156, 22.953751, 18.200542>,  <13.740100, 23.043589, 18.264854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.953156, 22.953751, 18.200542>,  <14.308251, 22.804022, 18.093355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.953156, 22.953751, 18.200542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441359, -0.526586, -0.726574,
		-0.130865, -0.763276, 0.632680,
		-0.887737, 0.374322, 0.267967,
		13.686835, 23.066048, 18.280933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.797707, 22.244152, 18.165255>,  <14.308251, 22.804022, 18.093355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.797707, 22.244152, 18.165255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.573575, 22.570595, 18.108685>,  <13.439096, 22.766460, 18.074743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.573575, 22.570595, 18.108685>,  <13.797707, 22.244152, 18.165255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.573575, 22.570595, 18.108685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447623, -0.442036, -0.777328,
		-0.696897, -0.372255, 0.612993,
		-0.560329, 0.816107, -0.141424,
		13.405477, 22.815428, 18.066257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.280606, 21.922626, 17.902803>,  <13.797707, 22.244152, 18.165255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.280606, 21.922626, 17.902803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.248258, 22.306240, 17.794199>,  <13.228848, 22.536407, 17.729036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.248258, 22.306240, 17.794199>,  <13.280606, 21.922626, 17.902803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.248258, 22.306240, 17.794199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416388, -0.280001, -0.864997,
		-0.905583, 0.043100, 0.421974,
		-0.080872, 0.959032, -0.271510,
		13.223996, 22.593950, 17.712746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
