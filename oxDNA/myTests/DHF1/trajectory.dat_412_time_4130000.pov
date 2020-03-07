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
	<1.913634, 2.361483, 3.128218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.899029, 2.754551, 3.055527>,  <1.890266, 2.990392, 3.011912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.899029, 2.754551, 3.055527>,  <1.913634, 2.361483, 3.128218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.899029, 2.754551, 3.055527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480248, -0.142221, -0.865526,
		-0.876372, -0.118878, -0.466733,
		-0.036513, 0.982670, -0.181729,
		1.888075, 3.049352, 3.001008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.780394, 2.425097, 2.461870>,  <1.913634, 2.361483, 3.128218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.780394, 2.425097, 2.461870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.992115, 2.751644, 2.554287>,  <2.119148, 2.947573, 2.609737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.992115, 2.751644, 2.554287>,  <1.780394, 2.425097, 2.461870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.992115, 2.751644, 2.554287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559787, -0.131398, -0.818152,
		-0.637556, 0.562384, -0.526542,
		0.529302, 0.816369, 0.231042,
		2.150906, 2.996555, 2.623600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.919389, 2.747430, 1.852476>,  <1.780394, 2.425097, 2.461870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.919389, 2.747430, 1.852476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.160583, 2.954319, 2.095421>,  <2.305300, 3.078452, 2.241188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.160583, 2.954319, 2.095421>,  <1.919389, 2.747430, 1.852476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.160583, 2.954319, 2.095421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549645, 0.282438, -0.786206,
		-0.578185, 0.807905, -0.113983,
		0.602986, 0.517222, 0.607362,
		2.341479, 3.109486, 2.277629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.111072, 3.425759, 1.704425>,  <1.919389, 2.747430, 1.852476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.111072, 3.425759, 1.704425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.405918, 3.244869, 1.905285>,  <2.582826, 3.136335, 2.025800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.405918, 3.244869, 1.905285>,  <2.111072, 3.425759, 1.704425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.405918, 3.244869, 1.905285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644141, 0.245532, -0.724428,
		0.204311, 0.857442, 0.472282,
		0.737116, -0.452225, 0.502148,
		2.627053, 3.109202, 2.055929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.663781, 3.896550, 1.789625>,  <2.111072, 3.425759, 1.704425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.663781, 3.896550, 1.789625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.796104, 3.519314, 1.803173>,  <2.875498, 3.292972, 1.811302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.796104, 3.519314, 1.803173>,  <2.663781, 3.896550, 1.789625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.796104, 3.519314, 1.803173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658608, 0.205017, -0.724018,
		0.675871, 0.261818, 0.688949,
		0.330808, -0.943090, 0.033871,
		2.895347, 3.236387, 1.813334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.387609, 3.867545, 1.903832>,  <2.663781, 3.896550, 1.789625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.387609, 3.867545, 1.903832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.279984, 3.532215, 1.714172>,  <3.215408, 3.331017, 1.600377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.279984, 3.532215, 1.714172>,  <3.387609, 3.867545, 1.903832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.279984, 3.532215, 1.714172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789806, 0.089689, -0.606764,
		0.551191, -0.537743, 0.637982,
		-0.269063, -0.838325, -0.474148,
		3.199265, 3.280718, 1.571928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.032298, 3.495790, 1.791478>,  <3.387609, 3.867545, 1.903832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.032298, 3.495790, 1.791478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.769611, 3.341476, 1.532280>,  <3.612000, 3.248888, 1.376761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.769611, 3.341476, 1.532280>,  <4.032298, 3.495790, 1.791478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.769611, 3.341476, 1.532280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705872, -0.011982, -0.708238,
		0.265462, -0.922512, 0.280182,
		-0.656715, -0.385783, -0.647994,
		3.572597, 3.225741, 1.337882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.457605, 3.245563, 1.332405>,  <4.032298, 3.495790, 1.791478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.457605, 3.245563, 1.332405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.116901, 3.203735, 1.127048>,  <3.912479, 3.178639, 1.003835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.116901, 3.203735, 1.127048>,  <4.457605, 3.245563, 1.332405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.116901, 3.203735, 1.127048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518657, -0.029587, -0.854470,
		0.074162, -0.994077, 0.079436,
		-0.851760, -0.104569, -0.513391,
		3.861373, 3.172365, 0.973031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.453971, 3.735508, -0.073933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.268019, 3.411659, -0.217262>,  <4.156447, 3.217350, -0.303260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.268019, 3.411659, -0.217262>,  <4.453971, 3.735508, -0.073933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.268019, 3.411659, -0.217262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673764, 0.060942, 0.736430,
		-0.574394, 0.583778, -0.573826,
		-0.464881, -0.809623, -0.358323,
		4.128554, 3.168772, -0.324759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.786957, 3.852282, -0.055325>,  <4.453971, 3.735508, -0.073933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.786957, 3.852282, -0.055325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.817854, 3.454048, -0.033989>,  <3.836392, 3.215108, -0.021187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.817854, 3.454048, -0.033989>,  <3.786957, 3.852282, -0.055325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.817854, 3.454048, -0.033989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651665, -0.009924, 0.758442,
		-0.754564, -0.093343, -0.649554,
		0.077242, -0.995584, 0.053340,
		3.841027, 3.155373, -0.017987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.058491, 3.757588, 0.088071>,  <3.786957, 3.852282, -0.055325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.058491, 3.757588, 0.088071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.319183, 3.484818, 0.220871>,  <3.475599, 3.321155, 0.300551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.319183, 3.484818, 0.220871>,  <3.058491, 3.757588, 0.088071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.319183, 3.484818, 0.220871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549608, -0.122971, 0.826323,
		-0.522665, -0.721009, -0.454936,
		0.651730, -0.681927, 0.332000,
		3.514703, 3.280240, 0.320471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.736936, 3.172631, 0.250139>,  <3.058491, 3.757588, 0.088071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.736936, 3.172631, 0.250139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.072514, 3.160576, 0.467491>,  <3.273860, 3.153342, 0.597903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.072514, 3.160576, 0.467491>,  <2.736936, 3.172631, 0.250139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.072514, 3.160576, 0.467491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523543, -0.317278, 0.790719,
		0.148573, -0.947854, -0.281957,
		0.838945, -0.030137, 0.543382,
		3.324197, 3.151534, 0.630505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.726785, 2.572118, 0.618923>,  <2.736936, 3.172631, 0.250139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.726785, 2.572118, 0.618923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.978029, 2.793800, 0.837402>,  <3.128776, 2.926810, 0.968490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.978029, 2.793800, 0.837402>,  <2.726785, 2.572118, 0.618923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.978029, 2.793800, 0.837402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470873, -0.288114, 0.833828,
		0.619481, -0.780926, 0.079994,
		0.628110, 0.554207, 0.546198,
		3.166462, 2.960063, 1.001262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.881931, 2.118392, 1.225345>,  <2.726785, 2.572118, 0.618923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.881931, 2.118392, 1.225345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.016142, 2.479607, 1.332638>,  <3.096669, 2.696335, 1.397013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.016142, 2.479607, 1.332638>,  <2.881931, 2.118392, 1.225345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.016142, 2.479607, 1.332638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412240, -0.115274, 0.903754,
		0.847041, -0.413810, 0.333590,
		0.335528, 0.903036, 0.268231,
		3.116800, 2.750517, 1.413107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.262844, 1.988367, 1.865740>,  <2.881931, 2.118392, 1.225345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.262844, 1.988367, 1.865740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.153278, 2.372490, 1.844639>,  <3.087539, 2.602963, 1.831978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.153278, 2.372490, 1.844639>,  <3.262844, 1.988367, 1.865740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.153278, 2.372490, 1.844639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325449, -0.040936, 0.944673,
		0.905016, 0.275928, 0.323744,
		-0.273914, 0.960306, -0.052753,
		3.071104, 2.660582, 1.828813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.513089, 2.254217, 2.446131>,  <3.262844, 1.988367, 1.865740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.513089, 2.254217, 2.446131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.205374, 2.477203, 2.321278>,  <3.020745, 2.610995, 2.246366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.205374, 2.477203, 2.321278>,  <3.513089, 2.254217, 2.446131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.205374, 2.477203, 2.321278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460986, -0.146050, 0.875306,
		0.442366, 0.817252, 0.369339,
		-0.769288, 0.557466, -0.312134,
		2.974587, 2.644443, 2.227637>
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
