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
	<22.917345, 17.167526, -1.739431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689007, 17.214802, -1.414428>,  <22.552004, 17.243168, -1.219427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689007, 17.214802, -1.414428>,  <22.917345, 17.167526, -1.739431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.689007, 17.214802, -1.414428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328215, 0.874231, -0.357763,
		-0.752601, -0.470904, -0.460261,
		-0.570847, 0.118189, 0.812506,
		22.517754, 17.250257, -1.170677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.242046, 17.159286, -1.902283>,  <22.917345, 17.167526, -1.739431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.242046, 17.159286, -1.902283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.292519, 17.372066, -1.567355>,  <22.322802, 17.499735, -1.366397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.292519, 17.372066, -1.567355>,  <22.242046, 17.159286, -1.902283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.292519, 17.372066, -1.567355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456905, 0.780371, -0.426917,
		-0.880521, -0.328709, 0.341517,
		0.126179, 0.531950, 0.837322,
		22.330372, 17.531651, -1.316158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.557590, 17.330650, -1.535457>,  <22.242046, 17.159286, -1.902283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.557590, 17.330650, -1.535457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.846985, 17.596695, -1.461491>,  <22.020620, 17.756323, -1.417110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.846985, 17.596695, -1.461491>,  <21.557590, 17.330650, -1.535457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.846985, 17.596695, -1.461491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590199, 0.734881, -0.334090,
		-0.358100, 0.132571, 0.924224,
		0.723485, 0.665113, 0.184917,
		22.064030, 17.796228, -1.406015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.293324, 17.858671, -1.082165>,  <21.557590, 17.330650, -1.535457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.293324, 17.858671, -1.082165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.612095, 17.983685, -1.288941>,  <21.803358, 18.058693, -1.413007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.612095, 17.983685, -1.288941>,  <21.293324, 17.858671, -1.082165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.612095, 17.983685, -1.288941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433341, 0.891983, -0.128777,
		0.420855, 0.326637, 0.846280,
		0.796930, 0.312531, -0.516940,
		21.851173, 18.077444, -1.444023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.531219, 18.454710, -0.736960>,  <21.293324, 17.858671, -1.082165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.531219, 18.454710, -0.736960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.635170, 18.440830, -1.122967>,  <21.697540, 18.432503, -1.354572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.635170, 18.440830, -1.122967>,  <21.531219, 18.454710, -0.736960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.635170, 18.440830, -1.122967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334988, 0.934054, -0.123798,
		0.905676, 0.355441, 0.231113,
		0.259875, -0.034701, -0.965019,
		21.713133, 18.430420, -1.412473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.181547, 18.191183, -0.718422>,  <21.531219, 18.454710, -0.736960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.181547, 18.191183, -0.718422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.200249, 17.802090, -0.627555>,  <22.211470, 17.568634, -0.573035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.200249, 17.802090, -0.627555>,  <22.181547, 18.191183, -0.718422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.200249, 17.802090, -0.627555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747480, 0.184930, 0.638024,
		-0.662637, 0.139971, 0.735745,
		0.046756, -0.972733, 0.227167,
		22.214275, 17.510269, -0.559405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.243361, 18.160690, -0.004697>,  <22.181547, 18.191183, -0.718422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.243361, 18.160690, -0.004697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.416077, 17.825272, -0.137599>,  <22.519707, 17.624020, -0.217339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.416077, 17.825272, -0.137599>,  <22.243361, 18.160690, -0.004697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.416077, 17.825272, -0.137599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642309, 0.027250, 0.765961,
		-0.633241, -0.544146, 0.550373,
		0.431792, -0.838548, -0.332254,
		22.545614, 17.573708, -0.237275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.180902, 17.630903, 0.582878>,  <22.243361, 18.160690, -0.004697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.180902, 17.630903, 0.582878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.518333, 17.595184, 0.371065>,  <22.720791, 17.573753, 0.243977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.518333, 17.595184, 0.371065>,  <22.180902, 17.630903, 0.582878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.518333, 17.595184, 0.371065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529129, -0.030096, 0.848007,
		-0.091663, -0.995550, 0.021862,
		0.843575, -0.089299, -0.529533,
		22.771406, 17.568396, 0.212205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.669420, 17.044489, 0.881736>,  <22.180902, 17.630903, 0.582878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.669420, 17.044489, 0.881736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.845673, 17.354240, 0.700105>,  <22.951424, 17.540091, 0.591127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.845673, 17.354240, 0.700105>,  <22.669420, 17.044489, 0.881736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.845673, 17.354240, 0.700105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561516, 0.156893, 0.812456,
		0.700389, -0.612964, -0.365693,
		0.440631, 0.774377, -0.454075,
		22.977861, 17.586554, 0.563883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.407185, 17.100689, 0.834500>,  <22.669420, 17.044489, 0.881736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.407185, 17.100689, 0.834500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.234051, 17.459087, 0.874188>,  <23.130171, 17.674126, 0.898001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.234051, 17.459087, 0.874188>,  <23.407185, 17.100689, 0.834500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.234051, 17.459087, 0.874188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351067, 0.066163, 0.934010,
		0.830305, 0.439104, -0.343192,
		-0.432834, 0.895997, 0.099220,
		23.104200, 17.727886, 0.903954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.814413, 17.786934, 0.864108>,  <23.407185, 17.100689, 0.834500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.814413, 17.786934, 0.864108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.477821, 17.779648, 1.080101>,  <23.275866, 17.775276, 1.209697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.477821, 17.779648, 1.080101>,  <23.814413, 17.786934, 0.864108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.477821, 17.779648, 1.080101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537346, 0.075981, 0.839933,
		-0.056326, 0.996943, -0.054150,
		-0.841479, -0.018213, 0.539982,
		23.225378, 17.774183, 1.242095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.840513, 18.311064, 1.319431>,  <23.814413, 17.786934, 0.864108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.840513, 18.311064, 1.319431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.593658, 18.039139, 1.477922>,  <23.445545, 17.875984, 1.573017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.593658, 18.039139, 1.477922>,  <23.840513, 18.311064, 1.319431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.593658, 18.039139, 1.477922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627789, -0.121821, 0.768792,
		-0.474365, 0.723199, 0.501958,
		-0.617138, -0.679811, 0.396228,
		23.408518, 17.835196, 1.596791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.708412, 18.478991, 1.980413>,  <23.840513, 18.311064, 1.319431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.708412, 18.478991, 1.980413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.684689, 18.080128, 1.961820>,  <23.670454, 17.840811, 1.950664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.684689, 18.080128, 1.961820>,  <23.708412, 18.478991, 1.980413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.684689, 18.080128, 1.961820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560717, -0.071803, 0.824889,
		-0.825881, 0.022862, 0.563381,
		-0.059311, -0.997157, -0.046482,
		23.666895, 17.780981, 1.947875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.755922, 18.262724, 2.640006>,  <23.708412, 18.478991, 1.980413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.755922, 18.262724, 2.640006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.884693, 17.956593, 2.417067>,  <23.961956, 17.772915, 2.283303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.884693, 17.956593, 2.417067>,  <23.755922, 18.262724, 2.640006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.884693, 17.956593, 2.417067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679926, -0.222766, 0.698624,
		-0.658834, -0.603862, 0.448652,
		0.321928, -0.765328, -0.557347,
		23.981272, 17.726994, 2.249863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.559095, 17.601049, 2.902921>,  <23.755922, 18.262724, 2.640006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.559095, 17.601049, 2.902921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.897648, 17.616131, 2.690426>,  <24.100780, 17.625179, 2.562929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.897648, 17.616131, 2.690426>,  <23.559095, 17.601049, 2.902921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.897648, 17.616131, 2.690426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532232, -0.095620, 0.841181,
		-0.019077, -0.994704, -0.101001,
		0.846383, 0.037709, -0.531237,
		24.151564, 17.627443, 2.531055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.033424, 17.024282, 3.000719>,  <23.559095, 17.601049, 2.902921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.033424, 17.024282, 3.000719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246056, 17.355980, 2.931688>,  <24.373634, 17.554998, 2.890270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246056, 17.355980, 2.931688>,  <24.033424, 17.024282, 3.000719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246056, 17.355980, 2.931688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185874, 0.084577, 0.978927,
		0.826364, -0.552453, -0.109175,
		0.531577, 0.829242, -0.172578,
		24.405529, 17.604753, 2.879915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.568567, 16.945118, 3.404454>,  <24.033424, 17.024282, 3.000719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.568567, 16.945118, 3.404454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497284, 17.332954, 3.337361>,  <24.454514, 17.565657, 3.297104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497284, 17.332954, 3.337361>,  <24.568567, 16.945118, 3.404454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.497284, 17.332954, 3.337361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101861, 0.187725, 0.976926,
		0.978706, 0.157012, -0.132218,
		-0.178209, 0.969591, -0.167735,
		24.443821, 17.623831, 3.287040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.142387, 17.480278, 3.721791>,  <24.568567, 16.945118, 3.404454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.142387, 17.480278, 3.721791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765362, 17.613869, 3.723983>,  <24.539146, 17.694023, 3.725297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765362, 17.613869, 3.723983>,  <25.142387, 17.480278, 3.721791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.765362, 17.613869, 3.723983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090277, 0.238922, 0.966833,
		0.321593, 0.911797, -0.255350,
		-0.942565, 0.333979, 0.005479,
		24.482592, 17.714062, 3.725626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056749, 18.234442, 3.967882>,  <25.142387, 17.480278, 3.721791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056749, 18.234442, 3.967882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710983, 18.053886, 4.056458>,  <24.503523, 17.945553, 4.109604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710983, 18.053886, 4.056458>,  <25.056749, 18.234442, 3.967882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.710983, 18.053886, 4.056458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108962, 0.598153, 0.793940,
		-0.490829, 0.662165, -0.566237,
		-0.864415, -0.451387, 0.221440,
		24.451658, 17.918470, 4.122890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.495152, 18.752783, 4.028286>,  <25.056749, 18.234442, 3.967882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.495152, 18.752783, 4.028286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389610, 18.430386, 4.240232>,  <24.326286, 18.236948, 4.367399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389610, 18.430386, 4.240232>,  <24.495152, 18.752783, 4.028286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389610, 18.430386, 4.240232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341918, 0.591815, 0.729964,
		-0.901928, 0.011432, -0.431735,
		-0.263852, -0.805993, 0.529866,
		24.310455, 18.188587, 4.399191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.301931, 18.973965, 4.664013>,  <24.495152, 18.752783, 4.028286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.301931, 18.973965, 4.664013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171459, 18.601952, 4.731713>,  <24.093176, 18.378744, 4.772334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171459, 18.601952, 4.731713>,  <24.301931, 18.973965, 4.664013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.171459, 18.601952, 4.731713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492102, 0.319927, 0.809618,
		-0.807119, 0.180793, -0.562025,
		-0.326181, -0.930032, 0.169251,
		24.073605, 18.322943, 4.782488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.554411, 19.006617, 4.809312>,  <24.301931, 18.973965, 4.664013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.554411, 19.006617, 4.809312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.697475, 18.669151, 4.969467>,  <23.783314, 18.466673, 5.065560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.697475, 18.669151, 4.969467>,  <23.554411, 19.006617, 4.809312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.697475, 18.669151, 4.969467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678947, 0.059457, 0.731776,
		-0.641179, -0.533569, -0.551537,
		0.357660, -0.843664, 0.400388,
		23.804773, 18.416052, 5.089583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.043730, 18.425850, 4.828635>,  <23.554411, 19.006617, 4.809312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.043730, 18.425850, 4.828635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.297550, 18.405209, 5.137097>,  <23.449842, 18.392824, 5.322175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.297550, 18.405209, 5.137097>,  <23.043730, 18.425850, 4.828635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.297550, 18.405209, 5.137097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762507, 0.121130, 0.635540,
		-0.126204, -0.991295, 0.037518,
		0.634552, -0.051600, 0.771156,
		23.487915, 18.389729, 5.368444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.876123, 17.820284, 5.276914>,  <23.043730, 18.425850, 4.828635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.876123, 17.820284, 5.276914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.016094, 18.150631, 5.453772>,  <23.100077, 18.348839, 5.559886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.016094, 18.150631, 5.453772>,  <22.876123, 17.820284, 5.276914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.016094, 18.150631, 5.453772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780823, -0.003629, 0.624742,
		0.517560, -0.563849, 0.643588,
		0.349925, 0.825870, 0.442144,
		23.121071, 18.398392, 5.586415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.813213, 17.734596, 6.062678>,  <22.876123, 17.820284, 5.276914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.813213, 17.734596, 6.062678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.858406, 18.128422, 6.009210>,  <22.885521, 18.364717, 5.977129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.858406, 18.128422, 6.009210>,  <22.813213, 17.734596, 6.062678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.858406, 18.128422, 6.009210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728950, 0.173554, 0.662201,
		0.675179, 0.022625, 0.737307,
		0.112981, 0.984564, -0.133673,
		22.892300, 18.423792, 5.969108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.971491, 18.094067, 6.751797>,  <22.813213, 17.734596, 6.062678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.971491, 18.094067, 6.751797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.794250, 18.256718, 6.432218>,  <22.687906, 18.354307, 6.240470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.794250, 18.256718, 6.432218>,  <22.971491, 18.094067, 6.751797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.794250, 18.256718, 6.432218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887500, -0.073194, 0.454958,
		0.126519, 0.910658, 0.393313,
		-0.443100, 0.406626, -0.798948,
		22.661320, 18.378706, 6.192533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.477148, 18.426565, 7.058385>,  <22.971491, 18.094067, 6.751797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.477148, 18.426565, 7.058385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.342831, 18.378864, 6.684643>,  <22.262239, 18.350245, 6.460397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.342831, 18.378864, 6.684643>,  <22.477148, 18.426565, 7.058385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.342831, 18.378864, 6.684643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940172, 0.103106, 0.324725,
		0.057614, 0.987496, -0.146740,
		-0.335795, -0.119252, -0.934356,
		22.242092, 18.343088, 6.404336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.807674, 18.178429, 7.173072>,  <22.477148, 18.426565, 7.058385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.807674, 18.178429, 7.173072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.513359, 18.387959, 7.001386>,  <21.336769, 18.513676, 6.898374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.513359, 18.387959, 7.001386>,  <21.807674, 18.178429, 7.173072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.513359, 18.387959, 7.001386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454563, 0.087788, 0.886378,
		0.501985, 0.847292, 0.173517,
		-0.735788, 0.523823, -0.429216,
		21.292624, 18.545105, 6.872621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.641321, 18.704060, 7.641957>,  <21.807674, 18.178429, 7.173072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.641321, 18.704060, 7.641957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.307835, 18.680332, 7.422357>,  <21.107742, 18.666096, 7.290596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.307835, 18.680332, 7.422357>,  <21.641321, 18.704060, 7.641957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.307835, 18.680332, 7.422357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547216, 0.221986, 0.807018,
		0.073999, 0.973244, -0.217534,
		-0.833714, -0.059319, -0.549001,
		21.057720, 18.662537, 7.257657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.757824, 19.006380, 8.330947>,  <21.641321, 18.704060, 7.641957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.757824, 19.006380, 8.330947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.586067, 18.645947, 8.355166>,  <21.483013, 18.429686, 8.369699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.586067, 18.645947, 8.355166>,  <21.757824, 19.006380, 8.330947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.586067, 18.645947, 8.355166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306211, 0.208335, 0.928887,
		-0.849621, 0.380317, -0.365380,
		-0.429393, -0.901086, 0.060549,
		21.457249, 18.375620, 8.373331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.993677, 19.079494, 8.645636>,  <21.757824, 19.006380, 8.330947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.993677, 19.079494, 8.645636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.169930, 18.725250, 8.704345>,  <21.275681, 18.512705, 8.739570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.169930, 18.725250, 8.704345>,  <20.993677, 19.079494, 8.645636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.169930, 18.725250, 8.704345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071047, 0.128583, 0.989151,
		-0.894872, -0.446278, -0.006262,
		0.440631, -0.885608, 0.146772,
		21.302118, 18.459568, 8.748376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.742136, 18.744228, 9.181613>,  <20.993677, 19.079494, 8.645636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.742136, 18.744228, 9.181613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108810, 18.586590, 9.155165>,  <21.328815, 18.492006, 9.139296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108810, 18.586590, 9.155165>,  <20.742136, 18.744228, 9.181613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.108810, 18.586590, 9.155165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124517, 0.124474, 0.984379,
		-0.379708, -0.910602, 0.163175,
		0.916688, -0.394095, -0.066121,
		21.383818, 18.468361, 9.135328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.766401, 18.508142, 9.885578>,  <20.742136, 18.744228, 9.181613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.766401, 18.508142, 9.885578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137592, 18.482319, 9.738780>,  <21.360308, 18.466825, 9.650702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137592, 18.482319, 9.738780>,  <20.766401, 18.508142, 9.885578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.137592, 18.482319, 9.738780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372485, 0.188198, 0.908755,
		0.010398, -0.980007, 0.198691,
		0.927980, -0.064560, -0.366995,
		21.415987, 18.462952, 9.628681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.183868, 17.937569, 10.193328>,  <20.766401, 18.508142, 9.885578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.183868, 17.937569, 10.193328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.391438, 18.266811, 10.101052>,  <21.515980, 18.464357, 10.045687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.391438, 18.266811, 10.101052>,  <21.183868, 17.937569, 10.193328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.391438, 18.266811, 10.101052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454912, -0.037432, 0.889749,
		0.723722, -0.566655, -0.393864,
		0.518924, 0.823105, -0.230688,
		21.547115, 18.513742, 10.031846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.975565, 17.869011, 10.324017>,  <21.183868, 17.937569, 10.193328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.975565, 17.869011, 10.324017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.932705, 18.263302, 10.375949>,  <21.906988, 18.499876, 10.407108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.932705, 18.263302, 10.375949>,  <21.975565, 17.869011, 10.324017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.932705, 18.263302, 10.375949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523338, -0.055111, 0.850341,
		0.845361, 0.159062, -0.509964,
		-0.107152, 0.985729, 0.129831,
		21.900558, 18.559021, 10.414898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.643169, 18.041624, 10.392563>,  <21.975565, 17.869011, 10.324017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.643169, 18.041624, 10.392563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.397907, 18.296207, 10.579737>,  <22.250750, 18.448957, 10.692040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.397907, 18.296207, 10.579737>,  <22.643169, 18.041624, 10.392563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.397907, 18.296207, 10.579737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557889, -0.070500, 0.826916,
		0.559287, 0.768082, -0.311846,
		-0.613155, 0.636458, 0.467934,
		22.213961, 18.487144, 10.720117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.039623, 18.156351, 10.940698>,  <22.643169, 18.041624, 10.392563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.039623, 18.156351, 10.940698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.686962, 18.308704, 11.052135>,  <22.475365, 18.400116, 11.118999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.686962, 18.308704, 11.052135>,  <23.039623, 18.156351, 10.940698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.686962, 18.308704, 11.052135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338238, 0.098375, 0.935905,
		0.329066, 0.919374, -0.215563,
		-0.881652, 0.380885, 0.278595,
		22.422466, 18.422970, 11.135714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.231606, 18.771416, 11.328615>,  <23.039623, 18.156351, 10.940698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.231606, 18.771416, 11.328615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.859119, 18.685707, 11.446547>,  <22.635628, 18.634283, 11.517305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.859119, 18.685707, 11.446547>,  <23.231606, 18.771416, 11.328615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.859119, 18.685707, 11.446547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320948, -0.098773, 0.941932,
		-0.172707, 0.971767, 0.160749,
		-0.931217, -0.214270, 0.294828,
		22.579754, 18.621426, 11.534995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.081068, 19.103453, 12.074820>,  <23.231606, 18.771416, 11.328615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.081068, 19.103453, 12.074820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.799744, 18.821293, 12.039566>,  <22.630949, 18.651997, 12.018414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.799744, 18.821293, 12.039566>,  <23.081068, 19.103453, 12.074820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.799744, 18.821293, 12.039566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135041, -0.254291, 0.957653,
		-0.697938, 0.661627, 0.274103,
		-0.703311, -0.705398, -0.088133,
		22.588751, 18.609673, 12.013126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.570477, 19.270350, 12.524524>,  <23.081068, 19.103453, 12.074820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.570477, 19.270350, 12.524524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536541, 18.876305, 12.464717>,  <22.516180, 18.639877, 12.428833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536541, 18.876305, 12.464717>,  <22.570477, 19.270350, 12.524524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536541, 18.876305, 12.464717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080222, -0.156324, 0.984443,
		-0.993160, 0.071524, 0.092290,
		-0.084838, -0.985113, -0.149517,
		22.511089, 18.580770, 12.419862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.145830, 19.118975, 13.047707>,  <22.570477, 19.270350, 12.524524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.145830, 19.118975, 13.047707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.299465, 18.762356, 12.951693>,  <22.391647, 18.548384, 12.894084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.299465, 18.762356, 12.951693>,  <22.145830, 19.118975, 13.047707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.299465, 18.762356, 12.951693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131830, -0.310268, 0.941464,
		-0.913836, -0.329962, -0.236703,
		0.384089, -0.891548, -0.240036,
		22.414692, 18.494892, 12.879682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.637852, 18.638767, 13.297509>,  <22.145830, 19.118975, 13.047707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.637852, 18.638767, 13.297509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969948, 18.436279, 13.204178>,  <22.169207, 18.314787, 13.148179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969948, 18.436279, 13.204178>,  <21.637852, 18.638767, 13.297509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.969948, 18.436279, 13.204178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138124, -0.592383, 0.793728,
		-0.540017, -0.626760, -0.561742,
		0.830243, -0.506216, -0.233326,
		22.219021, 18.284414, 13.134180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.409199, 17.985975, 13.211109>,  <21.637852, 18.638767, 13.297509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.409199, 17.985975, 13.211109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.793083, 18.015564, 13.319537>,  <22.023415, 18.033318, 13.384594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.793083, 18.015564, 13.319537>,  <21.409199, 17.985975, 13.211109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.793083, 18.015564, 13.319537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219318, -0.405845, 0.887237,
		0.175643, -0.910944, -0.373271,
		0.959713, 0.073972, 0.271070,
		22.080997, 18.037756, 13.400858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.500204, 17.407072, 13.664763>,  <21.409199, 17.985975, 13.211109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.500204, 17.407072, 13.664763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.847912, 17.587452, 13.745772>,  <22.056538, 17.695679, 13.794378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.847912, 17.587452, 13.745772>,  <21.500204, 17.407072, 13.664763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.847912, 17.587452, 13.745772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060948, -0.308794, 0.949174,
		0.490566, -0.837432, -0.240941,
		0.869270, 0.450948, 0.202523,
		22.108692, 17.722736, 13.806529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.017479, 16.854115, 14.005770>,  <21.500204, 17.407072, 13.664763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.017479, 16.854115, 14.005770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.076866, 17.241013, 14.088134>,  <22.112497, 17.473150, 14.137552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.076866, 17.241013, 14.088134>,  <22.017479, 16.854115, 14.005770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.076866, 17.241013, 14.088134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011781, -0.206473, 0.978382,
		0.988847, -0.147683, -0.019260,
		0.148466, 0.967243, 0.205910,
		22.121407, 17.531185, 14.149907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.477114, 16.789230, 14.443059>,  <22.017479, 16.854115, 14.005770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.477114, 16.789230, 14.443059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.382393, 17.175270, 14.487792>,  <22.325562, 17.406895, 14.514632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.382393, 17.175270, 14.487792>,  <22.477114, 16.789230, 14.443059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.382393, 17.175270, 14.487792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040749, -0.105140, 0.993622,
		0.970703, 0.239847, -0.014429,
		-0.236800, 0.965101, 0.111833,
		22.311354, 17.464800, 14.521342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.046141, 17.006927, 14.924109>,  <22.477114, 16.789230, 14.443059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.046141, 17.006927, 14.924109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.723999, 17.242878, 14.947595>,  <22.530714, 17.384449, 14.961686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.723999, 17.242878, 14.947595>,  <23.046141, 17.006927, 14.924109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.723999, 17.242878, 14.947595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006241, -0.090602, 0.995868,
		0.592760, 0.802393, 0.069285,
		-0.805355, 0.589878, 0.058713,
		22.482393, 17.419842, 14.965208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.176311, 17.623602, 15.427167>,  <23.046141, 17.006927, 14.924109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.176311, 17.623602, 15.427167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.782139, 17.556488, 15.416059>,  <22.545635, 17.516220, 15.409393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.782139, 17.556488, 15.416059>,  <23.176311, 17.623602, 15.427167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.782139, 17.556488, 15.416059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008696, -0.113372, 0.993515,
		-0.169845, 0.979283, 0.110261,
		-0.985432, -0.167785, -0.027772,
		22.486509, 17.506153, 15.407727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.854702, 18.164446, 15.841460>,  <23.176311, 17.623602, 15.427167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.854702, 18.164446, 15.841460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.579796, 17.873890, 15.839742>,  <22.414852, 17.699556, 15.838711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.579796, 17.873890, 15.839742>,  <22.854702, 18.164446, 15.841460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.579796, 17.873890, 15.839742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066152, 0.056698, 0.996197,
		-0.723386, 0.684938, -0.087019,
		-0.687267, -0.726392, -0.004295,
		22.373615, 17.655972, 15.838453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.365465, 18.464590, 16.285925>,  <22.854702, 18.164446, 15.841460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.365465, 18.464590, 16.285925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.251423, 18.086121, 16.224644>,  <22.182999, 17.859039, 16.187874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.251423, 18.086121, 16.224644>,  <22.365465, 18.464590, 16.285925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.251423, 18.086121, 16.224644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352493, -0.045137, 0.934725,
		-0.891327, 0.320498, -0.320651,
		-0.285105, -0.946173, -0.153205,
		22.165892, 17.802269, 16.178682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.727884, 18.469898, 16.462095>,  <22.365465, 18.464590, 16.285925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.727884, 18.469898, 16.462095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.784927, 18.078712, 16.523083>,  <21.819153, 17.844002, 16.559675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.784927, 18.078712, 16.523083>,  <21.727884, 18.469898, 16.462095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.784927, 18.078712, 16.523083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317528, 0.100699, 0.942887,
		-0.937464, -0.182879, -0.296170,
		0.142610, -0.977965, 0.152471,
		21.827711, 17.785322, 16.568825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.064831, 18.274092, 16.714552>,  <21.727884, 18.469898, 16.462095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.064831, 18.274092, 16.714552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.341133, 18.003529, 16.816790>,  <21.506914, 17.841190, 16.878132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.341133, 18.003529, 16.816790>,  <21.064831, 18.274092, 16.714552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.341133, 18.003529, 16.816790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242552, 0.116250, 0.963148,
		-0.681194, -0.727295, -0.083763,
		0.690755, -0.676408, 0.255595,
		21.548359, 17.800606, 16.893469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.865988, 17.960295, 17.320419>,  <21.064831, 18.274092, 16.714552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.865988, 17.960295, 17.320419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.241173, 17.822987, 17.339994>,  <21.466284, 17.740602, 17.351740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.241173, 17.822987, 17.339994>,  <20.865988, 17.960295, 17.320419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.241173, 17.822987, 17.339994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007970, 0.119751, 0.992772,
		-0.346650, -0.931571, 0.109585,
		0.937961, -0.343271, 0.048936,
		21.522560, 17.720005, 17.354675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.978481, 17.324406, 17.768927>,  <20.865988, 17.960295, 17.320419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.978481, 17.324406, 17.768927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.329395, 17.514782, 17.744110>,  <21.539944, 17.629007, 17.729219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.329395, 17.514782, 17.744110>,  <20.978481, 17.324406, 17.768927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.329395, 17.514782, 17.744110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073163, 0.260358, 0.962736,
		0.474359, -0.840056, 0.263230,
		0.877286, 0.475941, -0.062042,
		21.592581, 17.657564, 17.725498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.406063, 17.059786, 18.314186>,  <20.978481, 17.324406, 17.768927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.406063, 17.059786, 18.314186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.614937, 17.390694, 18.231291>,  <21.740261, 17.589239, 18.181555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.614937, 17.390694, 18.231291>,  <21.406063, 17.059786, 18.314186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.614937, 17.390694, 18.231291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217764, 0.105604, 0.970271,
		0.824562, -0.551790, -0.125004,
		0.522185, 0.827270, -0.207237,
		21.771593, 17.638874, 18.169119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.940535, 17.028482, 18.701588>,  <21.406063, 17.059786, 18.314186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.940535, 17.028482, 18.701588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.945396, 17.423073, 18.636209>,  <21.948313, 17.659828, 18.596983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.945396, 17.423073, 18.636209>,  <21.940535, 17.028482, 18.701588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.945396, 17.423073, 18.636209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179235, 0.158659, 0.970928,
		0.983731, -0.041097, -0.174883,
		0.012155, 0.986478, -0.163443,
		21.949043, 17.719017, 18.587177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.509844, 17.352621, 18.989435>,  <21.940535, 17.028482, 18.701588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.509844, 17.352621, 18.989435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.223724, 17.628956, 18.947308>,  <22.052053, 17.794756, 18.922031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.223724, 17.628956, 18.947308>,  <22.509844, 17.352621, 18.989435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.223724, 17.628956, 18.947308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060751, 0.211610, 0.975464,
		0.696173, 0.691350, -0.193333,
		-0.715299, 0.690837, -0.105317,
		22.009134, 17.836206, 18.915712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.813059, 17.924391, 19.324816>,  <22.509844, 17.352621, 18.989435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.813059, 17.924391, 19.324816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.418259, 17.986290, 19.307470>,  <22.181377, 18.023430, 19.297064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.418259, 17.986290, 19.307470>,  <22.813059, 17.924391, 19.324816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.418259, 17.986290, 19.307470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004041, 0.293633, 0.955910,
		0.160656, 0.943309, -0.290442,
		-0.987002, 0.154747, -0.043362,
		22.122158, 18.032715, 19.294462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.745539, 18.616697, 19.526443>,  <22.813059, 17.924391, 19.324816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.745539, 18.616697, 19.526443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402031, 18.418049, 19.576847>,  <22.195927, 18.298859, 19.607090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402031, 18.418049, 19.576847>,  <22.745539, 18.616697, 19.526443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.402031, 18.418049, 19.576847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055255, 0.334277, 0.940854,
		-0.509371, 0.801015, -0.314508,
		-0.858771, -0.496622, 0.126011,
		22.144400, 18.269062, 19.614651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.336132, 19.110271, 19.837189>,  <22.745539, 18.616697, 19.526443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.336132, 19.110271, 19.837189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.162792, 18.759087, 19.918568>,  <22.058788, 18.548376, 19.967396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.162792, 18.759087, 19.918568>,  <22.336132, 19.110271, 19.837189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.162792, 18.759087, 19.918568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087782, 0.265792, 0.960025,
		-0.896941, 0.398167, -0.192250,
		-0.433349, -0.877962, 0.203448,
		22.032787, 18.495697, 19.979603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.807886, 19.240973, 20.325994>,  <22.336132, 19.110271, 19.837189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.807886, 19.240973, 20.325994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.867290, 18.851997, 20.397898>,  <21.902933, 18.618612, 20.441040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.867290, 18.851997, 20.397898>,  <21.807886, 19.240973, 20.325994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.867290, 18.851997, 20.397898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069032, 0.171134, 0.982827,
		-0.986499, -0.158367, -0.041714,
		0.148509, -0.972437, 0.179756,
		21.911842, 18.560266, 20.451824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.503576, 19.129248, 20.982407>,  <21.807886, 19.240973, 20.325994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.503576, 19.129248, 20.982407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.675812, 18.770599, 20.941090>,  <21.779152, 18.555410, 20.916300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.675812, 18.770599, 20.941090>,  <21.503576, 19.129248, 20.982407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.675812, 18.770599, 20.941090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143531, -0.181014, 0.972950,
		-0.891063, -0.404114, -0.206635,
		0.430587, -0.896619, -0.103292,
		21.804987, 18.501614, 20.910103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.051811, 18.621017, 21.428059>,  <21.503576, 19.129248, 20.982407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.051811, 18.621017, 21.428059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.431034, 18.503727, 21.378742>,  <21.658567, 18.433352, 21.349152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.431034, 18.503727, 21.378742>,  <21.051811, 18.621017, 21.428059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.431034, 18.503727, 21.378742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067104, -0.194508, 0.978603,
		-0.310938, -0.936046, -0.164728,
		0.948059, -0.293231, -0.123292,
		21.715452, 18.415758, 21.341755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.074320, 17.870989, 21.574093>,  <21.051811, 18.621017, 21.428059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.074320, 17.870989, 21.574093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.435490, 18.019154, 21.661293>,  <21.652191, 18.108053, 21.713614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.435490, 18.019154, 21.661293>,  <21.074320, 17.870989, 21.574093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.435490, 18.019154, 21.661293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066187, -0.381334, 0.922065,
		0.424675, -0.846983, -0.319799,
		0.902923, 0.370412, 0.218002,
		21.706367, 18.130278, 21.726694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.367479, 17.391279, 22.010708>,  <21.074320, 17.870989, 21.574093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.367479, 17.391279, 22.010708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.604763, 17.709286, 22.061392>,  <21.747133, 17.900089, 22.091803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.604763, 17.709286, 22.061392>,  <21.367479, 17.391279, 22.010708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.604763, 17.709286, 22.061392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112313, -0.237579, 0.964853,
		0.797176, -0.558128, -0.230224,
		0.593208, 0.795015, 0.126708,
		21.782726, 17.947790, 22.099403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.795343, 17.146223, 22.449133>,  <21.367479, 17.391279, 22.010708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.795343, 17.146223, 22.449133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.816250, 17.545448, 22.462624>,  <21.828793, 17.784983, 22.470718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.816250, 17.545448, 22.462624>,  <21.795343, 17.146223, 22.449133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.816250, 17.545448, 22.462624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000401, -0.033792, 0.999429,
		0.998633, -0.052221, -0.002166,
		0.052265, 0.998064, 0.033725,
		21.831930, 17.844868, 22.472740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.298813, 17.259848, 22.953346>,  <21.795343, 17.146223, 22.449133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.298813, 17.259848, 22.953346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.102356, 17.606506, 22.918249>,  <21.984482, 17.814503, 22.897190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.102356, 17.606506, 22.918249>,  <22.298813, 17.259848, 22.953346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.102356, 17.606506, 22.918249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077534, 0.056836, 0.995368,
		0.867621, 0.495671, 0.039280,
		-0.491143, 0.866648, -0.087744,
		21.955013, 17.866501, 22.891926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.421640, 17.621264, 23.658442>,  <22.298813, 17.259848, 22.953346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.421640, 17.621264, 23.658442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.098816, 17.784412, 23.487661>,  <21.905121, 17.882301, 23.385193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.098816, 17.784412, 23.487661>,  <22.421640, 17.621264, 23.658442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.098816, 17.784412, 23.487661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400489, 0.153209, 0.903402,
		0.433887, 0.900092, 0.039700,
		-0.807063, 0.407874, -0.426953,
		21.856697, 17.906775, 23.359575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.343801, 18.342251, 23.730339>,  <22.421640, 17.621264, 23.658442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.343801, 18.342251, 23.730339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.970490, 18.212048, 23.669630>,  <21.746502, 18.133926, 23.633205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.970490, 18.212048, 23.669630>,  <22.343801, 18.342251, 23.730339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.970490, 18.212048, 23.669630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281948, 0.402258, 0.871030,
		-0.222474, 0.855706, -0.467195,
		-0.933279, -0.325507, -0.151773,
		21.690506, 18.114395, 23.624098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.977425, 19.017635, 23.772055>,  <22.343801, 18.342251, 23.730339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.977425, 19.017635, 23.772055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.743999, 18.695751, 23.815685>,  <21.603945, 18.502621, 23.841864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.743999, 18.695751, 23.815685>,  <21.977425, 19.017635, 23.772055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.743999, 18.695751, 23.815685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317838, 0.349938, 0.881205,
		-0.747284, 0.479569, -0.459978,
		-0.583562, -0.804709, 0.109078,
		21.568932, 18.454338, 23.848408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.337658, 19.263088, 24.000317>,  <21.977425, 19.017635, 23.772055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.337658, 19.263088, 24.000317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.366776, 18.875618, 24.095284>,  <21.384247, 18.643135, 24.152264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.366776, 18.875618, 24.095284>,  <21.337658, 19.263088, 24.000317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.366776, 18.875618, 24.095284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245574, 0.213313, 0.945617,
		-0.966641, -0.127139, -0.222354,
		0.072794, -0.968676, 0.237419,
		21.388613, 18.585014, 24.166510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.672539, 19.168985, 24.450165>,  <21.337658, 19.263088, 24.000317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.672539, 19.168985, 24.450165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.911659, 18.859646, 24.534603>,  <21.055132, 18.674042, 24.585266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.911659, 18.859646, 24.534603>,  <20.672539, 19.168985, 24.450165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.911659, 18.859646, 24.534603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116394, 0.344273, 0.931627,
		-0.793148, -0.532359, 0.295821,
		0.597803, -0.773350, 0.211096,
		21.091000, 18.627642, 24.597933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.352564, 18.870060, 25.006548>,  <20.672539, 19.168985, 24.450165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.352564, 18.870060, 25.006548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.742931, 18.782825, 25.004681>,  <20.977152, 18.730486, 25.003559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.742931, 18.782825, 25.004681>,  <20.352564, 18.870060, 25.006548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.742931, 18.782825, 25.004681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074844, 0.314665, 0.946247,
		-0.204892, -0.923810, 0.323410,
		0.975919, -0.218084, -0.004669,
		21.035707, 18.717400, 25.003281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.555681, 18.676975, 25.743124>,  <20.352564, 18.870060, 25.006548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.555681, 18.676975, 25.743124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.914974, 18.731186, 25.575884>,  <21.130550, 18.763712, 25.475540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.914974, 18.731186, 25.575884>,  <20.555681, 18.676975, 25.743124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.914974, 18.731186, 25.575884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387971, 0.202513, 0.899148,
		0.206527, -0.969856, 0.129325,
		0.898234, 0.135524, -0.418101,
		21.184444, 18.771845, 25.450453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.057968, 18.395365, 26.260164>,  <20.555681, 18.676975, 25.743124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.057968, 18.395365, 26.260164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.290237, 18.633949, 26.038515>,  <21.429600, 18.777100, 25.905525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.290237, 18.633949, 26.038515>,  <21.057968, 18.395365, 26.260164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.290237, 18.633949, 26.038515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472178, 0.307727, 0.826046,
		0.663223, -0.741307, -0.102947,
		0.580674, 0.596462, -0.554121,
		21.464439, 18.812887, 25.872278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.746866, 18.128536, 26.367277>,  <21.057968, 18.395365, 26.260164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.746866, 18.128536, 26.367277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.729706, 18.518223, 26.278675>,  <21.719410, 18.752035, 26.225513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.729706, 18.518223, 26.278675>,  <21.746866, 18.128536, 26.367277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.729706, 18.518223, 26.278675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530208, 0.210112, 0.821421,
		0.846782, -0.082202, -0.525551,
		-0.042902, 0.974215, -0.221503,
		21.716835, 18.810488, 26.212225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.259144, 18.373953, 26.638348>,  <21.746866, 18.128536, 26.367277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.259144, 18.373953, 26.638348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.095375, 18.732742, 26.571644>,  <21.997114, 18.948015, 26.531622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.095375, 18.732742, 26.571644>,  <22.259144, 18.373953, 26.638348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.095375, 18.732742, 26.571644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587887, 0.399153, 0.703609,
		0.697682, 0.190038, -0.690742,
		-0.409424, 0.896974, -0.166761,
		21.972548, 19.001835, 26.521616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.730276, 18.879328, 26.481638>,  <22.259144, 18.373953, 26.638348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.730276, 18.879328, 26.481638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.453854, 19.117825, 26.645071>,  <22.288000, 19.260923, 26.743130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.453854, 19.117825, 26.645071>,  <22.730276, 18.879328, 26.481638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.453854, 19.117825, 26.645071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685048, 0.359978, 0.633345,
		0.230547, 0.717574, -0.657219,
		-0.691056, 0.596242, 0.408581,
		22.246536, 19.296698, 26.767645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.851637, 19.606758, 26.421473>,  <22.730276, 18.879328, 26.481638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.851637, 19.606758, 26.421473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.657089, 19.530815, 26.762623>,  <22.540361, 19.485250, 26.967314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.657089, 19.530815, 26.762623>,  <22.851637, 19.606758, 26.421473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.657089, 19.530815, 26.762623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697623, 0.503336, 0.509877,
		-0.526087, 0.842975, -0.112358,
		-0.486368, -0.189856, 0.852878,
		22.511179, 19.473858, 27.018486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.656027, 20.361256, 26.622288>,  <22.851637, 19.606758, 26.421473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.656027, 20.361256, 26.622288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.727795, 20.071491, 26.888531>,  <22.770855, 19.897633, 27.048277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.727795, 20.071491, 26.888531>,  <22.656027, 20.361256, 26.622288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.727795, 20.071491, 26.888531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554005, 0.633506, 0.540138,
		-0.812949, 0.271838, 0.514993,
		0.179421, -0.724413, 0.665608,
		22.781622, 19.854168, 27.088213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.675362, 20.702568, 27.386488>,  <22.656027, 20.361256, 26.622288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.675362, 20.702568, 27.386488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.906578, 20.379578, 27.339411>,  <23.045307, 20.185783, 27.311165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.906578, 20.379578, 27.339411>,  <22.675362, 20.702568, 27.386488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.906578, 20.379578, 27.339411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788792, 0.515980, 0.334023,
		-0.208990, -0.285913, 0.935188,
		0.578040, -0.807477, -0.117691,
		23.079990, 20.137335, 27.304104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.027388, 20.505894, 27.998569>,  <22.675362, 20.702568, 27.386488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.027388, 20.505894, 27.998569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.242714, 20.427425, 27.670732>,  <23.371910, 20.380344, 27.474030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.242714, 20.427425, 27.670732>,  <23.027388, 20.505894, 27.998569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.242714, 20.427425, 27.670732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769985, 0.509791, 0.383715,
		0.342547, -0.837634, 0.425477,
		0.538317, -0.196170, -0.819592,
		23.404209, 20.368574, 27.424854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.636564, 20.012871, 28.267052>,  <23.027388, 20.505894, 27.998569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.636564, 20.012871, 28.267052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.636780, 20.366562, 28.453876>,  <22.636909, 20.578775, 28.565971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.636780, 20.366562, 28.453876>,  <22.636564, 20.012871, 28.267052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.636780, 20.366562, 28.453876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146979, 0.462058, -0.874586,
		-0.989139, -0.068177, 0.130212,
		0.000539, 0.884225, 0.467060,
		22.636942, 20.631830, 28.593994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.976280, 20.350243, 28.108292>,  <22.636564, 20.012871, 28.267052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.976280, 20.350243, 28.108292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.280785, 20.604069, 28.161674>,  <22.463488, 20.756365, 28.193705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.280785, 20.604069, 28.161674>,  <21.976280, 20.350243, 28.108292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.280785, 20.604069, 28.161674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202374, 0.428025, -0.880817,
		-0.616058, 0.643524, 0.454258,
		0.761261, 0.634564, 0.133456,
		22.509163, 20.794437, 28.201712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.773462, 21.055910, 28.272789>,  <21.976280, 20.350243, 28.108292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.773462, 21.055910, 28.272789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099785, 21.001904, 28.047852>,  <22.295578, 20.969500, 27.912889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099785, 21.001904, 28.047852>,  <21.773462, 21.055910, 28.272789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099785, 21.001904, 28.047852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458996, 0.440387, -0.771610,
		0.351831, 0.887598, 0.297297,
		0.815805, -0.135018, -0.562345,
		22.344526, 20.961397, 27.879148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.535366, 21.525154, 27.831041>,  <21.773462, 21.055910, 28.272789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.535366, 21.525154, 27.831041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.873295, 21.349396, 27.708920>,  <22.076052, 21.243940, 27.635647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.873295, 21.349396, 27.708920>,  <21.535366, 21.525154, 27.831041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.873295, 21.349396, 27.708920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166294, 0.326721, -0.930376,
		0.508553, 0.836771, 0.202952,
		0.844820, -0.439396, -0.305305,
		22.126741, 21.217577, 27.617329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.935772, 22.023071, 27.396824>,  <21.535366, 21.525154, 27.831041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.935772, 22.023071, 27.396824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.975124, 21.637779, 27.296820>,  <21.998735, 21.406603, 27.236818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.975124, 21.637779, 27.296820>,  <21.935772, 22.023071, 27.396824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.975124, 21.637779, 27.296820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334512, 0.204600, -0.919913,
		0.937242, 0.174132, -0.302084,
		0.098380, -0.963233, -0.250009,
		22.004639, 21.348810, 27.221817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.297157, 22.002649, 26.797298>,  <21.935772, 22.023071, 27.396824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.297157, 22.002649, 26.797298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.066338, 21.676178, 26.809082>,  <21.927845, 21.480295, 26.816153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.066338, 21.676178, 26.809082>,  <22.297157, 22.002649, 26.797298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.066338, 21.676178, 26.809082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331244, 0.200922, -0.921905,
		0.746520, -0.541742, -0.386296,
		-0.577049, -0.816178, 0.029457,
		21.893223, 21.431324, 26.817919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.349848, 21.827074, 26.216856>,  <22.297157, 22.002649, 26.797298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.349848, 21.827074, 26.216856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.031364, 21.602139, 26.306149>,  <21.840275, 21.467178, 26.359724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.031364, 21.602139, 26.306149>,  <22.349848, 21.827074, 26.216856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.031364, 21.602139, 26.306149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378242, 0.174669, -0.909079,
		0.472218, -0.808250, -0.351772,
		-0.796206, -0.562338, 0.223232,
		21.792503, 21.433437, 26.373117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.307211, 21.254173, 25.725168>,  <22.349848, 21.827074, 26.216856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.307211, 21.254173, 25.725168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.933987, 21.326580, 25.849510>,  <21.710052, 21.370024, 25.924116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.933987, 21.326580, 25.849510>,  <22.307211, 21.254173, 25.725168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.933987, 21.326580, 25.849510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320091, -0.023510, -0.947095,
		-0.164131, -0.983199, 0.079878,
		-0.933061, 0.181016, 0.310854,
		21.654068, 21.380884, 25.942766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.911989, 21.108652, 25.080248>,  <22.307211, 21.254173, 25.725168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.911989, 21.108652, 25.080248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.610950, 21.241673, 25.307583>,  <21.430326, 21.321484, 25.443983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.610950, 21.241673, 25.307583>,  <21.911989, 21.108652, 25.080248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.610950, 21.241673, 25.307583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594423, 0.028228, -0.803657,
		-0.283299, -0.942663, 0.176431,
		-0.752597, 0.332550, 0.568338,
		21.385172, 21.341438, 25.478085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.267790, 20.693913, 25.019882>,  <21.911989, 21.108652, 25.080248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.267790, 20.693913, 25.019882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.139511, 21.055214, 25.133924>,  <21.062544, 21.271996, 25.202349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.139511, 21.055214, 25.133924>,  <21.267790, 20.693913, 25.019882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.139511, 21.055214, 25.133924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634474, 0.018634, -0.772719,
		-0.703275, -0.428699, 0.567116,
		-0.320696, 0.903255, 0.285103,
		21.043303, 21.326191, 25.219456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.421043, 20.691826, 24.993435>,  <21.267790, 20.693913, 25.019882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.421043, 20.691826, 24.993435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.550419, 21.069614, 24.970240>,  <20.628044, 21.296288, 24.956322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.550419, 21.069614, 24.970240>,  <20.421043, 20.691826, 24.993435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.550419, 21.069614, 24.970240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564019, 0.143218, -0.813248,
		-0.759784, 0.295741, 0.579021,
		0.323437, 0.944471, -0.057989,
		20.647449, 21.352955, 24.952843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892458, 20.912403, 24.679705>,  <20.421043, 20.691826, 24.993435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.892458, 20.912403, 24.679705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.146481, 21.220161, 24.652199>,  <20.298895, 21.404818, 24.635696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.146481, 21.220161, 24.652199>,  <19.892458, 20.912403, 24.679705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.146481, 21.220161, 24.652199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477732, 0.321240, -0.817666,
		-0.607021, 0.552115, 0.571572,
		0.635058, 0.769398, -0.068763,
		20.336998, 21.450981, 24.631569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.450590, 21.495974, 24.430824>,  <19.892458, 20.912403, 24.679705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.450590, 21.495974, 24.430824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.833321, 21.575783, 24.346279>,  <20.062960, 21.623669, 24.295551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.833321, 21.575783, 24.346279>,  <19.450590, 21.495974, 24.430824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.833321, 21.575783, 24.346279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242935, 0.149709, -0.958420,
		-0.159583, 0.968389, 0.191717,
		0.956826, 0.199523, -0.211365,
		20.120369, 21.635639, 24.282869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.395184, 22.087162, 24.081884>,  <19.450590, 21.495974, 24.430824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.395184, 22.087162, 24.081884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.744305, 21.923679, 23.975168>,  <19.953777, 21.825590, 23.911139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.744305, 21.923679, 23.975168>,  <19.395184, 22.087162, 24.081884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.744305, 21.923679, 23.975168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245515, 0.104777, -0.963714,
		0.421830, 0.906631, -0.008894,
		0.872801, -0.408707, -0.266789,
		20.006145, 21.801067, 23.895132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.530546, 22.526493, 23.469519>,  <19.395184, 22.087162, 24.081884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.530546, 22.526493, 23.469519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.780510, 22.214928, 23.448416>,  <19.930489, 22.027988, 23.435755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.780510, 22.214928, 23.448416>,  <19.530546, 22.526493, 23.469519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.780510, 22.214928, 23.448416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003273, 0.070190, -0.997528,
		0.780692, 0.623190, 0.046412,
		0.624907, -0.778914, -0.052757,
		19.967981, 21.981253, 23.432589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.876860, 22.643930, 22.906239>,  <19.530546, 22.526493, 23.469519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.876860, 22.643930, 22.906239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.953136, 22.258488, 22.981173>,  <19.998901, 22.027222, 23.026133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.953136, 22.258488, 22.981173>,  <19.876860, 22.643930, 22.906239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.953136, 22.258488, 22.981173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033800, -0.184280, -0.982292,
		0.981068, 0.193646, -0.002571,
		0.190691, -0.963609, 0.187337,
		20.010344, 21.969404, 23.037374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.529921, 22.404787, 22.603973>,  <19.876860, 22.643930, 22.906239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.529921, 22.404787, 22.603973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.319847, 22.066792, 22.644323>,  <20.193802, 21.863995, 22.668533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.319847, 22.066792, 22.644323>,  <20.529921, 22.404787, 22.603973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.319847, 22.066792, 22.644323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098663, -0.178198, -0.979036,
		0.845250, -0.504222, 0.176956,
		-0.525185, -0.844989, 0.100873,
		20.162292, 21.813295, 22.674585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.817081, 21.829597, 22.237640>,  <20.529921, 22.404787, 22.603973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.817081, 21.829597, 22.237640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.444801, 21.687073, 22.270723>,  <20.221434, 21.601559, 22.290573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.444801, 21.687073, 22.270723>,  <20.817081, 21.829597, 22.237640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.444801, 21.687073, 22.270723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010272, -0.251477, -0.967809,
		0.365641, -0.899889, 0.237709,
		-0.930699, -0.356313, 0.082707,
		20.165592, 21.580179, 22.295536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.845230, 21.187859, 21.994659>,  <20.817081, 21.829597, 22.237640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.845230, 21.187859, 21.994659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.445850, 21.210140, 21.994598>,  <20.206223, 21.223509, 21.994562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.445850, 21.210140, 21.994598>,  <20.845230, 21.187859, 21.994659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.445850, 21.210140, 21.994598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030648, -0.551584, -0.833556,
		-0.046516, -0.832258, 0.552434,
		-0.998447, 0.055705, -0.000150,
		20.146317, 21.226852, 21.994553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.690153, 20.472462, 21.690886>,  <20.845230, 21.187859, 21.994659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.690153, 20.472462, 21.690886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.349953, 20.682652, 21.681725>,  <20.145832, 20.808765, 21.676228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.349953, 20.682652, 21.681725>,  <20.690153, 20.472462, 21.690886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.349953, 20.682652, 21.681725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256851, -0.452923, -0.853750,
		-0.459004, -0.720228, 0.520180,
		-0.850496, 0.525483, -0.022902,
		20.094803, 20.840294, 21.674854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.115742, 20.078680, 21.528275>,  <20.690153, 20.472462, 21.690886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.115742, 20.078680, 21.528275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009171, 20.440258, 21.394470>,  <19.945229, 20.657206, 21.314188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009171, 20.440258, 21.394470>,  <20.115742, 20.078680, 21.528275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.009171, 20.440258, 21.394470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217166, -0.394430, -0.892897,
		-0.939072, -0.165247, 0.301393,
		-0.266427, 0.903946, -0.334512,
		19.929243, 20.711441, 21.294117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.543661, 19.971535, 21.183081>,  <20.115742, 20.078680, 21.528275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.543661, 19.971535, 21.183081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.677967, 20.316708, 21.032028>,  <19.758551, 20.523811, 20.941397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.677967, 20.316708, 21.032028>,  <19.543661, 19.971535, 21.183081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.677967, 20.316708, 21.032028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134903, -0.352721, -0.925953,
		-0.932235, 0.361848, -0.002020,
		0.335767, 0.862933, -0.377634,
		19.778698, 20.575588, 20.918737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052420, 20.325302, 20.757778>,  <19.543661, 19.971535, 21.183081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.052420, 20.325302, 20.757778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.419754, 20.424091, 20.634060>,  <19.640156, 20.483364, 20.559830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.419754, 20.424091, 20.634060>,  <19.052420, 20.325302, 20.757778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.419754, 20.424091, 20.634060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231166, -0.299639, -0.925624,
		-0.321278, 0.921533, -0.218078,
		0.918337, 0.246971, -0.309294,
		19.695255, 20.498182, 20.541271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889296, 20.525585, 20.124880>,  <19.052420, 20.325302, 20.757778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889296, 20.525585, 20.124880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.287075, 20.518436, 20.083399>,  <19.525742, 20.514147, 20.058510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.287075, 20.518436, 20.083399>,  <18.889296, 20.525585, 20.124880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.287075, 20.518436, 20.083399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104832, -0.082376, -0.991072,
		0.009170, 0.996441, -0.083792,
		0.994448, -0.017872, -0.103703,
		19.585409, 20.513075, 20.052288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.990356, 20.803646, 19.437103>,  <18.889296, 20.525585, 20.124880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.990356, 20.803646, 19.437103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350365, 20.641808, 19.501928>,  <19.566370, 20.544704, 19.540823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350365, 20.641808, 19.501928>,  <18.990356, 20.803646, 19.437103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.350365, 20.641808, 19.501928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161393, -0.036022, -0.986233,
		0.404863, 0.913786, 0.032878,
		0.900021, -0.404595, 0.162063,
		19.620371, 20.520430, 19.550547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.454739, 21.177843, 19.014906>,  <18.990356, 20.803646, 19.437103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.454739, 21.177843, 19.014906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.625362, 20.821106, 19.075127>,  <19.727737, 20.607063, 19.111259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.625362, 20.821106, 19.075127>,  <19.454739, 21.177843, 19.014906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.625362, 20.821106, 19.075127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179749, -0.079542, -0.980491,
		0.886417, 0.445302, 0.126378,
		0.426562, -0.891841, 0.150550,
		19.753330, 20.553555, 19.120291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.072147, 21.256330, 18.669550>,  <19.454739, 21.177843, 19.014906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.072147, 21.256330, 18.669550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.994987, 20.865738, 18.708075>,  <19.948692, 20.631382, 18.731190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.994987, 20.865738, 18.708075>,  <20.072147, 21.256330, 18.669550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.994987, 20.865738, 18.708075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171360, -0.130172, -0.976571,
		0.966139, -0.171877, 0.192440,
		-0.192900, -0.976480, 0.096312,
		19.937117, 20.572794, 18.736969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.649977, 20.858355, 18.383322>,  <20.072147, 21.256330, 18.669550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.649977, 20.858355, 18.383322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.340374, 20.605801, 18.364279>,  <20.154612, 20.454268, 18.352852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.340374, 20.605801, 18.364279>,  <20.649977, 20.858355, 18.383322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.340374, 20.605801, 18.364279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140028, -0.097359, -0.985349,
		0.617500, -0.769333, 0.163768,
		-0.774006, -0.631385, -0.047609,
		20.108171, 20.416386, 18.349997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.905691, 20.463213, 17.897770>,  <20.649977, 20.858355, 18.383322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.905691, 20.463213, 17.897770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.510754, 20.403427, 17.918983>,  <20.273790, 20.367556, 17.931711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.510754, 20.403427, 17.918983>,  <20.905691, 20.463213, 17.897770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.510754, 20.403427, 17.918983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046567, -0.046429, -0.997836,
		0.151604, -0.987676, 0.038882,
		-0.987344, -0.149465, 0.053032,
		20.214550, 20.358587, 17.934893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.816916, 20.048761, 17.407188>,  <20.905691, 20.463213, 17.897770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.816916, 20.048761, 17.407188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.428074, 20.128819, 17.456112>,  <20.194769, 20.176853, 17.485466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.428074, 20.128819, 17.456112>,  <20.816916, 20.048761, 17.407188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.428074, 20.128819, 17.456112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148263, -0.120259, -0.981609,
		-0.181758, -0.972357, 0.146578,
		-0.972102, 0.200148, 0.122307,
		20.136442, 20.188862, 17.492804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.403498, 19.507595, 17.071072>,  <20.816916, 20.048761, 17.407188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.403498, 19.507595, 17.071072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.163960, 19.826633, 17.099997>,  <20.020237, 20.018057, 17.117352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.163960, 19.826633, 17.099997>,  <20.403498, 19.507595, 17.071072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.163960, 19.826633, 17.099997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291174, -0.132721, -0.947419,
		-0.746058, -0.588412, 0.311718,
		-0.598844, 0.797594, 0.072313,
		19.984306, 20.065912, 17.121691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.693066, 19.335405, 16.710659>,  <20.403498, 19.507595, 17.071072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.693066, 19.335405, 16.710659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.721107, 19.734074, 16.727312>,  <19.737932, 19.973274, 16.737305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.721107, 19.734074, 16.727312>,  <19.693066, 19.335405, 16.710659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.721107, 19.734074, 16.727312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292705, 0.060452, -0.954290,
		-0.953630, 0.054712, 0.295968,
		0.070103, 0.996671, 0.041634,
		19.742138, 20.033075, 16.739803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.217108, 19.625854, 16.272018>,  <19.693066, 19.335405, 16.710659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.217108, 19.625854, 16.272018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.464905, 19.939251, 16.291489>,  <19.613583, 20.127289, 16.303171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.464905, 19.939251, 16.291489>,  <19.217108, 19.625854, 16.272018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.464905, 19.939251, 16.291489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207612, 0.223322, -0.952378,
		-0.757049, 0.579888, 0.301009,
		0.619494, 0.783491, 0.048674,
		19.650753, 20.174297, 16.306091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.824051, 20.086451, 15.829040>,  <19.217108, 19.625854, 16.272018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.824051, 20.086451, 15.829040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.198032, 20.222851, 15.868180>,  <19.422422, 20.304691, 15.891665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.198032, 20.222851, 15.868180>,  <18.824051, 20.086451, 15.829040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.198032, 20.222851, 15.868180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032315, 0.192815, -0.980703,
		-0.353290, 0.920076, 0.169254,
		0.934956, 0.341003, 0.097852,
		19.478519, 20.325151, 15.897536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.901184, 20.684690, 15.303246>,  <18.824051, 20.086451, 15.829040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.901184, 20.684690, 15.303246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.275723, 20.575336, 15.391351>,  <19.500446, 20.509724, 15.444213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.275723, 20.575336, 15.391351>,  <18.901184, 20.684690, 15.303246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.275723, 20.575336, 15.391351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243102, 0.052255, -0.968592,
		0.253288, 0.960485, 0.115389,
		0.936347, -0.273384, 0.220261,
		19.556627, 20.493320, 15.457429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.279076, 21.136385, 14.952229>,  <18.901184, 20.684690, 15.303246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.279076, 21.136385, 14.952229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.535633, 20.832478, 14.994874>,  <19.689568, 20.650133, 15.020461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.535633, 20.832478, 14.994874>,  <19.279076, 21.136385, 14.952229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.535633, 20.832478, 14.994874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444468, 0.254706, -0.858820,
		0.625350, 0.598227, 0.501060,
		0.641393, -0.759769, 0.106612,
		19.728050, 20.604548, 15.026857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859667, 21.470087, 14.656714>,  <19.279076, 21.136385, 14.952229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.859667, 21.470087, 14.656714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.934528, 21.077522, 14.673724>,  <19.979445, 20.841984, 14.683930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.934528, 21.077522, 14.673724>,  <19.859667, 21.470087, 14.656714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.934528, 21.077522, 14.673724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456334, 0.048523, -0.888485,
		0.869904, 0.185689, 0.456932,
		0.187154, -0.981410, 0.042526,
		19.990675, 20.783100, 14.686481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.525545, 21.414700, 14.397534>,  <19.859667, 21.470087, 14.656714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.525545, 21.414700, 14.397534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.368847, 21.052036, 14.334920>,  <20.274828, 20.834438, 14.297351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.368847, 21.052036, 14.334920>,  <20.525545, 21.414700, 14.397534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.368847, 21.052036, 14.334920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195099, 0.084408, -0.977145,
		0.899150, -0.413334, 0.143822,
		-0.391748, -0.906659, -0.156536,
		20.251322, 20.780039, 14.287959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.928175, 21.118364, 13.934217>,  <20.525545, 21.414700, 14.397534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.928175, 21.118364, 13.934217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.602440, 20.888592, 13.901027>,  <20.407000, 20.750729, 13.881112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.602440, 20.888592, 13.901027>,  <20.928175, 21.118364, 13.934217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.602440, 20.888592, 13.901027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119847, -0.026543, -0.992438,
		0.567886, -0.818122, 0.090459,
		-0.814336, -0.574432, -0.082976,
		20.358139, 20.716263, 13.876134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.172543, 20.471947, 13.612640>,  <20.928175, 21.118364, 13.934217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.172543, 20.471947, 13.612640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783382, 20.525059, 13.536918>,  <20.549887, 20.556927, 13.491485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783382, 20.525059, 13.536918>,  <21.172543, 20.471947, 13.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783382, 20.525059, 13.536918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172614, -0.127690, -0.976678,
		-0.153856, -0.982886, 0.101310,
		-0.972899, 0.132780, -0.189306,
		20.491512, 20.564894, 13.480125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.098915, 19.902040, 13.187688>,  <21.172543, 20.471947, 13.612640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.098915, 19.902040, 13.187688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.799305, 20.162582, 13.139191>,  <20.619539, 20.318907, 13.110092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.799305, 20.162582, 13.139191>,  <21.098915, 19.902040, 13.187688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.799305, 20.162582, 13.139191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158795, -0.001172, -0.987311,
		-0.643232, -0.758772, -0.102554,
		-0.749024, 0.651355, -0.121243,
		20.574598, 20.357988, 13.102818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.734026, 19.691040, 12.564768>,  <21.098915, 19.902040, 13.187688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.734026, 19.691040, 12.564768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.616997, 20.071644, 12.602786>,  <20.546780, 20.300005, 12.625597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.616997, 20.071644, 12.602786>,  <20.734026, 19.691040, 12.564768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.616997, 20.071644, 12.602786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073259, 0.121405, -0.989896,
		-0.953433, -0.282653, -0.105227,
		-0.292572, 0.951508, 0.095045,
		20.529224, 20.357096, 12.631300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233835, 19.803099, 11.975479>,  <20.734026, 19.691040, 12.564768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233835, 19.803099, 11.975479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.274166, 20.179352, 12.105121>,  <20.298365, 20.405104, 12.182905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.274166, 20.179352, 12.105121>,  <20.233835, 19.803099, 11.975479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.274166, 20.179352, 12.105121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122221, 0.335007, -0.934255,
		-0.987368, 0.054587, 0.148743,
		0.100828, 0.940633, 0.324104,
		20.304415, 20.461542, 12.202352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.669920, 20.210722, 11.789942>,  <20.233835, 19.803099, 11.975479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.669920, 20.210722, 11.789942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.989124, 20.450382, 11.815857>,  <20.180647, 20.594177, 11.831406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.989124, 20.450382, 11.815857>,  <19.669920, 20.210722, 11.789942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989124, 20.450382, 11.815857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133135, 0.280124, -0.950687,
		-0.587751, 0.750035, 0.303310,
		0.798012, 0.599149, 0.064787,
		20.228527, 20.630127, 11.835293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.519985, 20.704515, 11.420488>,  <19.669920, 20.210722, 11.789942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.519985, 20.704515, 11.420488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.910530, 20.783089, 11.456563>,  <20.144857, 20.830233, 11.478208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.910530, 20.783089, 11.456563>,  <19.519985, 20.704515, 11.420488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.910530, 20.783089, 11.456563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047731, 0.211003, -0.976319,
		-0.210812, 0.957545, 0.196639,
		0.976361, 0.196434, 0.090186,
		20.203438, 20.842018, 11.483619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.811350, 21.065987, 11.475522>,  <19.519985, 20.704515, 11.420488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.811350, 21.065987, 11.475522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.446308, 21.222153, 11.426968>,  <18.227283, 21.315851, 11.397835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.446308, 21.222153, 11.426968>,  <18.811350, 21.065987, 11.475522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.446308, 21.222153, 11.426968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008731, 0.278221, 0.960477,
		0.408755, 0.877594, -0.250496,
		-0.912602, 0.390413, -0.121386,
		18.172527, 21.339277, 11.390552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.814388, 21.657909, 11.847545>,  <18.811350, 21.065987, 11.475522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.814388, 21.657909, 11.847545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.424301, 21.570553, 11.833363>,  <18.190248, 21.518139, 11.824853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.424301, 21.570553, 11.833363>,  <18.814388, 21.657909, 11.847545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.424301, 21.570553, 11.833363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077515, 0.187160, 0.979266,
		-0.207225, 0.957746, -0.199450,
		-0.975217, -0.218389, -0.035456,
		18.131737, 21.505035, 11.822726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.435036, 22.157658, 12.198921>,  <18.814388, 21.657909, 11.847545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.435036, 22.157658, 12.198921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180916, 21.848774, 12.202705>,  <18.028444, 21.663445, 12.204976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180916, 21.848774, 12.202705>,  <18.435036, 22.157658, 12.198921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.180916, 21.848774, 12.202705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068909, 0.068886, 0.995242,
		-0.769187, 0.631623, -0.096975,
		-0.635298, -0.772209, 0.009462,
		17.990326, 21.617111, 12.205544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793449, 22.369429, 12.657796>,  <18.435036, 22.157658, 12.198921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.793449, 22.369429, 12.657796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770126, 21.970222, 12.648282>,  <17.756132, 21.730700, 12.642573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770126, 21.970222, 12.648282>,  <17.793449, 22.369429, 12.657796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770126, 21.970222, 12.648282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174488, -0.013271, 0.984570,
		-0.982931, 0.061558, -0.173368,
		-0.058307, -0.998015, -0.023785,
		17.752634, 21.670818, 12.641147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.159546, 22.210390, 13.041657>,  <17.793449, 22.369429, 12.657796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.159546, 22.210390, 13.041657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.374222, 21.874207, 13.011740>,  <17.503027, 21.672497, 12.993789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.374222, 21.874207, 13.011740>,  <17.159546, 22.210390, 13.041657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.374222, 21.874207, 13.011740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106004, -0.155098, 0.982195,
		-0.837094, -0.519206, -0.172331,
		0.536690, -0.840458, -0.074794,
		17.535229, 21.622068, 12.989302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.748907, 21.626505, 13.339259>,  <17.159546, 22.210390, 13.041657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.748907, 21.626505, 13.339259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.138992, 21.542774, 13.367955>,  <17.373043, 21.492537, 13.385173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.138992, 21.542774, 13.367955>,  <16.748907, 21.626505, 13.339259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.138992, 21.542774, 13.367955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072410, 0.004472, 0.997365,
		-0.209095, -0.977836, -0.010797,
		0.975211, -0.209326, 0.071740,
		17.431555, 21.479977, 13.389478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.763285, 21.105803, 13.721399>,  <16.748907, 21.626505, 13.339259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.763285, 21.105803, 13.721399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.134338, 21.254490, 13.735950>,  <17.356970, 21.343702, 13.744679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.134338, 21.254490, 13.735950>,  <16.763285, 21.105803, 13.721399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.134338, 21.254490, 13.735950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003104, -0.105064, 0.994461,
		0.373482, -0.922381, -0.098615,
		0.927632, 0.371719, 0.036376,
		17.412628, 21.366005, 13.746862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.113247, 20.640121, 14.209888>,  <16.763285, 21.105803, 13.721399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.113247, 20.640121, 14.209888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.335976, 20.971188, 14.181834>,  <17.469612, 21.169828, 14.165002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.335976, 20.971188, 14.181834>,  <17.113247, 20.640121, 14.209888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.335976, 20.971188, 14.181834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010272, 0.077566, 0.996934,
		0.830570, -0.555833, 0.034689,
		0.556820, 0.827667, -0.070133,
		17.503021, 21.219488, 14.160794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.606241, 20.538090, 14.711186>,  <17.113247, 20.640121, 14.209888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.606241, 20.538090, 14.711186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633862, 20.928711, 14.629630>,  <17.650434, 21.163084, 14.580696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633862, 20.928711, 14.629630>,  <17.606241, 20.538090, 14.711186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.633862, 20.928711, 14.629630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009955, 0.203695, 0.978984,
		0.997564, -0.069629, 0.004344,
		0.069050, 0.976555, -0.203892,
		17.654577, 21.221678, 14.568462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.225353, 20.846611, 15.065821>,  <17.606241, 20.538090, 14.711186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.225353, 20.846611, 15.065821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.942013, 21.121796, 15.002643>,  <17.772009, 21.286905, 14.964736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.942013, 21.121796, 15.002643>,  <18.225353, 20.846611, 15.065821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.942013, 21.121796, 15.002643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138539, 0.083909, 0.986796,
		0.692129, 0.720882, 0.035872,
		-0.708353, 0.687960, -0.157946,
		17.729507, 21.328184, 14.955258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.416786, 21.394396, 15.546628>,  <18.225353, 20.846611, 15.065821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.416786, 21.394396, 15.546628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.054173, 21.523842, 15.438205>,  <17.836605, 21.601509, 15.373151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.054173, 21.523842, 15.438205>,  <18.416786, 21.394396, 15.546628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.054173, 21.523842, 15.438205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214326, 0.200353, 0.955993,
		0.363682, 0.924733, -0.112268,
		-0.906532, 0.323615, -0.271059,
		17.782213, 21.620926, 15.356887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.354952, 22.018373, 15.771051>,  <18.416786, 21.394396, 15.546628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.354952, 22.018373, 15.771051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.980202, 21.890499, 15.714395>,  <17.755352, 21.813774, 15.680401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.980202, 21.890499, 15.714395>,  <18.354952, 22.018373, 15.771051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.980202, 21.890499, 15.714395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248371, 0.323309, 0.913117,
		-0.246118, 0.890658, -0.382302,
		-0.936877, -0.319688, -0.141641,
		17.699139, 21.794592, 15.671903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030037, 22.607903, 15.700743>,  <18.354952, 22.018373, 15.771051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.030037, 22.607903, 15.700743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.789536, 22.308266, 15.811994>,  <17.645235, 22.128483, 15.878744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.789536, 22.308266, 15.811994>,  <18.030037, 22.607903, 15.700743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.789536, 22.308266, 15.811994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179971, 0.466077, 0.866246,
		-0.778527, 0.470778, -0.415046,
		-0.601253, -0.749093, 0.278127,
		17.609159, 22.083538, 15.895432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.447414, 23.025169, 15.981584>,  <18.030037, 22.607903, 15.700743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.447414, 23.025169, 15.981584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.449203, 22.646019, 16.109028>,  <17.450277, 22.418530, 16.185495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.449203, 22.646019, 16.109028>,  <17.447414, 23.025169, 15.981584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.449203, 22.646019, 16.109028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294215, 0.303265, 0.906348,
		-0.955729, -0.097793, -0.277523,
		0.004472, -0.947875, 0.318611,
		17.450544, 22.361656, 16.204611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.070232, 23.072794, 16.532246>,  <17.447414, 23.025169, 15.981584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.070232, 23.072794, 16.532246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.247417, 22.716640, 16.574203>,  <17.353727, 22.502949, 16.599379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.247417, 22.716640, 16.574203>,  <17.070232, 23.072794, 16.532246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247417, 22.716640, 16.574203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105361, 0.064488, 0.992341,
		-0.890329, -0.450619, -0.065246,
		0.442960, -0.890384, 0.104893,
		17.380306, 22.449526, 16.605671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.667864, 22.631973, 16.991362>,  <17.070232, 23.072794, 16.532246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.667864, 22.631973, 16.991362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.027660, 22.457462, 17.000950>,  <17.243538, 22.352757, 17.006702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.027660, 22.457462, 17.000950>,  <16.667864, 22.631973, 16.991362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.027660, 22.457462, 17.000950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076833, -0.103930, 0.991612,
		-0.430126, -0.893790, -0.127005,
		0.899493, -0.436277, 0.023969,
		17.297508, 22.326580, 17.008141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.595543, 22.107718, 17.427410>,  <16.667864, 22.631973, 16.991362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.595543, 22.107718, 17.427410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988083, 22.184395, 17.421732>,  <17.223608, 22.230402, 17.418325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988083, 22.184395, 17.421732>,  <16.595543, 22.107718, 17.427410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988083, 22.184395, 17.421732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027793, -0.068420, 0.997269,
		0.190199, -0.979067, -0.072472,
		0.981352, 0.191693, -0.014197,
		17.282488, 22.241903, 17.417473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860321, 21.772200, 17.993883>,  <16.595543, 22.107718, 17.427410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860321, 21.772200, 17.993883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.173309, 22.014957, 17.938145>,  <17.361103, 22.160612, 17.904701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.173309, 22.014957, 17.938145>,  <16.860321, 21.772200, 17.993883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.173309, 22.014957, 17.938145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148839, 0.035007, 0.988241,
		0.604638, -0.794009, -0.062938,
		0.782470, 0.606896, -0.139346,
		17.408051, 22.197027, 17.896341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439793, 21.517990, 18.398659>,  <16.860321, 21.772200, 17.993883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439793, 21.517990, 18.398659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.510963, 21.907345, 18.340893>,  <17.553667, 22.140959, 18.306232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.510963, 21.907345, 18.340893>,  <17.439793, 21.517990, 18.398659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.510963, 21.907345, 18.340893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141697, 0.119884, 0.982624,
		0.973788, -0.195300, -0.116595,
		0.177929, 0.973389, -0.144414,
		17.564342, 22.199362, 18.297569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.839760, 21.605915, 18.914198>,  <17.439793, 21.517990, 18.398659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.839760, 21.605915, 18.914198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.792229, 21.990513, 18.815075>,  <17.763710, 22.221272, 18.755602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.792229, 21.990513, 18.815075>,  <17.839760, 21.605915, 18.914198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.792229, 21.990513, 18.815075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123419, 0.261943, 0.957159,
		0.985215, 0.083151, -0.149792,
		-0.118826, 0.961495, -0.247808,
		17.756580, 22.278961, 18.740732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366474, 21.940466, 19.165918>,  <17.839760, 21.605915, 18.914198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.366474, 21.940466, 19.165918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.098194, 22.233204, 19.117645>,  <17.937225, 22.408846, 19.088680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.098194, 22.233204, 19.117645>,  <18.366474, 21.940466, 19.165918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.098194, 22.233204, 19.117645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235675, 0.364544, 0.900869,
		0.703290, 0.575772, -0.416978,
		-0.670701, 0.731843, -0.120685,
		17.896984, 22.452757, 19.081440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.708746, 22.453564, 19.279531>,  <18.366474, 21.940466, 19.165918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.708746, 22.453564, 19.279531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.330090, 22.557297, 19.356071>,  <18.102896, 22.619537, 19.401995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.330090, 22.557297, 19.356071>,  <18.708746, 22.453564, 19.279531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330090, 22.557297, 19.356071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214287, 0.062998, 0.974737,
		0.240727, 0.963731, -0.115208,
		-0.946642, 0.259333, 0.191350,
		18.046097, 22.635098, 19.413477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.791710, 22.983059, 19.890852>,  <18.708746, 22.453564, 19.279531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.791710, 22.983059, 19.890852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.407562, 22.875530, 19.861382>,  <18.177074, 22.811014, 19.843700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.407562, 22.875530, 19.861382>,  <18.791710, 22.983059, 19.890852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.407562, 22.875530, 19.861382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074286, -0.007912, 0.997206,
		-0.268652, 0.963158, -0.012371,
		-0.960369, -0.268820, -0.073674,
		18.119452, 22.794884, 19.839279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.460558, 23.435972, 20.368401>,  <18.791710, 22.983059, 19.890852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.460558, 23.435972, 20.368401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.218414, 23.124123, 20.304241>,  <18.073128, 22.937014, 20.265745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.218414, 23.124123, 20.304241>,  <18.460558, 23.435972, 20.368401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218414, 23.124123, 20.304241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324898, 0.058064, 0.943965,
		-0.726624, 0.623551, -0.288448,
		-0.605358, -0.779624, -0.160400,
		18.036806, 22.890236, 20.256121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.838724, 23.653973, 20.736847>,  <18.460558, 23.435972, 20.368401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.838724, 23.653973, 20.736847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.851124, 23.255165, 20.708578>,  <17.858564, 23.015881, 20.691616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.851124, 23.255165, 20.708578>,  <17.838724, 23.653973, 20.736847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.851124, 23.255165, 20.708578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252993, -0.076232, 0.964461,
		-0.966972, -0.012018, -0.254601,
		0.030999, -0.997018, -0.070673,
		17.860424, 22.956060, 20.687376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.194700, 23.428043, 21.152887>,  <17.838724, 23.653973, 20.736847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.194700, 23.428043, 21.152887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.430103, 23.105843, 21.125093>,  <17.571344, 22.912523, 21.108418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.430103, 23.105843, 21.125093>,  <17.194700, 23.428043, 21.152887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.430103, 23.105843, 21.125093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229389, -0.248765, 0.941008,
		-0.775268, -0.537852, -0.331173,
		0.588507, -0.805501, -0.069483,
		17.606655, 22.864193, 21.104248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.905809, 22.931223, 21.522120>,  <17.194700, 23.428043, 21.152887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.905809, 22.931223, 21.522120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259613, 22.747433, 21.489815>,  <17.471895, 22.637157, 21.470432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259613, 22.747433, 21.489815>,  <16.905809, 22.931223, 21.522120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.259613, 22.747433, 21.489815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097071, -0.350590, 0.931485,
		-0.456311, -0.816068, -0.354702,
		0.884510, -0.459478, -0.080761,
		17.524965, 22.609591, 21.465586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.757786, 22.244041, 21.536221>,  <16.905809, 22.931223, 21.522120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.757786, 22.244041, 21.536221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.136147, 22.302391, 21.652145>,  <17.363163, 22.337400, 21.721701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.136147, 22.302391, 21.652145>,  <16.757786, 22.244041, 21.536221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.136147, 22.302391, 21.652145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165068, -0.552631, 0.816916,
		0.279324, -0.820561, -0.498656,
		0.945902, 0.145872, 0.289812,
		17.419918, 22.346153, 21.739088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019272, 21.592512, 21.640594>,  <16.757786, 22.244041, 21.536221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.019272, 21.592512, 21.640594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.260250, 21.800838, 21.882523>,  <17.404837, 21.925835, 22.027679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.260250, 21.800838, 21.882523>,  <17.019272, 21.592512, 21.640594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.260250, 21.800838, 21.882523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014474, -0.764773, 0.644137,
		0.798029, -0.379303, -0.468272,
		0.602445, 0.520818, 0.604822,
		17.440983, 21.957085, 22.063969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.342241, 21.109667, 22.031481>,  <17.019272, 21.592512, 21.640594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.342241, 21.109667, 22.031481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.398205, 21.442928, 22.245501>,  <17.431784, 21.642885, 22.373913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.398205, 21.442928, 22.245501>,  <17.342241, 21.109667, 22.031481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.398205, 21.442928, 22.245501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012172, -0.541770, 0.840439,
		0.990090, -0.111072, -0.085940,
		0.139909, 0.833156, 0.535049,
		17.440178, 21.692875, 22.406015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.951994, 20.973799, 22.593584>,  <17.342241, 21.109667, 22.031481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.951994, 20.973799, 22.593584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.732430, 21.279900, 22.728100>,  <17.600691, 21.463560, 22.808809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.732430, 21.279900, 22.728100>,  <17.951994, 20.973799, 22.593584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.732430, 21.279900, 22.728100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026436, -0.386220, 0.922028,
		0.835463, 0.515001, 0.191770,
		-0.548910, 0.765251, 0.336287,
		17.567757, 21.509476, 22.828985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.301613, 21.136284, 23.194040>,  <17.951994, 20.973799, 22.593584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.301613, 21.136284, 23.194040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.955227, 21.329288, 23.246634>,  <17.747395, 21.445091, 23.278189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.955227, 21.329288, 23.246634>,  <18.301613, 21.136284, 23.194040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.955227, 21.329288, 23.246634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008769, -0.277520, 0.960680,
		0.500026, 0.830763, 0.244554,
		-0.865966, 0.482510, 0.131482,
		17.695436, 21.474041, 23.286077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.481188, 21.582426, 23.796074>,  <18.301613, 21.136284, 23.194040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.481188, 21.582426, 23.796074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.083469, 21.549263, 23.769245>,  <17.844837, 21.529366, 23.753147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.083469, 21.549263, 23.769245>,  <18.481188, 21.582426, 23.796074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.083469, 21.549263, 23.769245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036413, -0.327198, 0.944254,
		-0.100230, 0.941312, 0.322314,
		-0.994298, -0.082907, -0.067071,
		17.785179, 21.524391, 23.749125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.157560, 21.785908, 24.498732>,  <18.481188, 21.582426, 23.796074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.157560, 21.785908, 24.498732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.859619, 21.570084, 24.341726>,  <17.680855, 21.440588, 24.247524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.859619, 21.570084, 24.341726>,  <18.157560, 21.785908, 24.498732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.859619, 21.570084, 24.341726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230938, -0.343435, 0.910341,
		-0.625987, 0.768717, 0.131203,
		-0.744854, -0.539562, -0.392512,
		17.636164, 21.408215, 24.223972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600365, 21.858732, 24.965742>,  <18.157560, 21.785908, 24.498732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.600365, 21.858732, 24.965742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.495621, 21.527000, 24.768301>,  <17.432774, 21.327961, 24.649837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.495621, 21.527000, 24.768301>,  <17.600365, 21.858732, 24.965742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.495621, 21.527000, 24.768301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348259, -0.395790, 0.849745,
		-0.900081, 0.394415, -0.185180,
		-0.261859, -0.829329, -0.493601,
		17.417063, 21.278202, 24.620220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.963604, 21.730734, 25.132780>,  <17.600365, 21.858732, 24.965742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.963604, 21.730734, 25.132780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.069820, 21.373100, 24.988501>,  <17.133551, 21.158520, 24.901934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.069820, 21.373100, 24.988501>,  <16.963604, 21.730734, 25.132780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.069820, 21.373100, 24.988501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293744, -0.431369, 0.853015,
		-0.918261, -0.120556, -0.377177,
		0.265539, -0.894084, -0.360697,
		17.149483, 21.104876, 24.880291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332249, 21.233303, 25.114447>,  <16.963604, 21.730734, 25.132780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332249, 21.233303, 25.114447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.673710, 21.025356, 25.127213>,  <16.878586, 20.900589, 25.134872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.673710, 21.025356, 25.127213>,  <16.332249, 21.233303, 25.114447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.673710, 21.025356, 25.127213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335187, -0.501426, 0.797635,
		-0.398660, -0.691600, -0.602295,
		0.853651, -0.519867, 0.031917,
		16.929806, 20.869396, 25.136787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980369, 20.644369, 25.346769>,  <16.332249, 21.233303, 25.114447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980369, 20.644369, 25.346769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372929, 20.631065, 25.422396>,  <16.608465, 20.623083, 25.467772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372929, 20.631065, 25.422396>,  <15.980369, 20.644369, 25.346769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372929, 20.631065, 25.422396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182923, -0.460790, 0.868454,
		0.058238, -0.886886, -0.458304,
		0.981401, -0.033257, 0.189067,
		16.667349, 20.621088, 25.479116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.436016, 20.005774, 25.530670>,  <15.980369, 20.644369, 25.346769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.436016, 20.005774, 25.530670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.259312, 19.647087, 25.541622>,  <16.153290, 19.431875, 25.548193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.259312, 19.647087, 25.541622>,  <16.436016, 20.005774, 25.530670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.259312, 19.647087, 25.541622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176008, 0.056703, -0.982754,
		0.879699, -0.438960, -0.182879,
		-0.441759, -0.896716, 0.027379,
		16.126783, 19.378073, 25.549835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664017, 19.678307, 24.950279>,  <16.436016, 20.005774, 25.530670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.664017, 19.678307, 24.950279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340080, 19.455219, 25.023066>,  <16.145720, 19.321367, 25.066738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340080, 19.455219, 25.023066>,  <16.664017, 19.678307, 24.950279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.340080, 19.455219, 25.023066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164750, -0.081484, -0.982964,
		0.563044, -0.826021, -0.025895,
		-0.809838, -0.557718, 0.181966,
		16.097128, 19.287905, 25.077656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688061, 19.009058, 24.573477>,  <16.664017, 19.678307, 24.950279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688061, 19.009058, 24.573477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307129, 19.100445, 24.654343>,  <16.078569, 19.155277, 24.702862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307129, 19.100445, 24.654343>,  <16.688061, 19.009058, 24.573477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307129, 19.100445, 24.654343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219344, -0.052209, -0.974250,
		-0.212027, -0.972151, 0.099832,
		-0.952330, 0.228465, 0.202166,
		16.021429, 19.168983, 24.714993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.316692, 18.529959, 24.233185>,  <16.688061, 19.009058, 24.573477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.316692, 18.529959, 24.233185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.034386, 18.804165, 24.304699>,  <15.865002, 18.968689, 24.347609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.034386, 18.804165, 24.304699>,  <16.316692, 18.529959, 24.233185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.034386, 18.804165, 24.304699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265574, -0.022043, -0.963838,
		-0.656784, -0.727726, 0.197612,
		-0.705766, 0.685514, 0.178788,
		15.822656, 19.009819, 24.358335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.716743, 18.260101, 23.833323>,  <16.316692, 18.529959, 24.233185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.716743, 18.260101, 23.833323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630641, 18.639481, 23.926371>,  <15.578980, 18.867107, 23.982201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630641, 18.639481, 23.926371>,  <15.716743, 18.260101, 23.833323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.630641, 18.639481, 23.926371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552543, 0.078123, -0.829815,
		-0.805209, -0.307153, 0.507242,
		-0.215253, 0.948448, 0.232621,
		15.566065, 18.924015, 23.996157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.853671, 18.462574, 23.767752>,  <15.716743, 18.260101, 23.833323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.853671, 18.462574, 23.767752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.060609, 18.804329, 23.748236>,  <15.184772, 19.009382, 23.736526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.060609, 18.804329, 23.748236>,  <14.853671, 18.462574, 23.767752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.060609, 18.804329, 23.748236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498907, 0.254793, -0.828355,
		-0.695304, 0.452886, 0.558074,
		0.517344, 0.854386, -0.048789,
		15.215812, 19.060644, 23.733599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362240, 19.027039, 23.602186>,  <14.853671, 18.462574, 23.767752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.362240, 19.027039, 23.602186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.711101, 19.191689, 23.496420>,  <14.920417, 19.290478, 23.432961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.711101, 19.191689, 23.496420>,  <14.362240, 19.027039, 23.602186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.711101, 19.191689, 23.496420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439444, 0.421562, -0.793205,
		-0.215035, 0.807992, 0.548552,
		0.872152, 0.411625, -0.264417,
		14.972746, 19.315176, 23.417095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.312567, 19.705000, 23.331652>,  <14.362240, 19.027039, 23.602186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.312567, 19.705000, 23.331652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.646459, 19.571049, 23.156799>,  <14.846793, 19.490679, 23.051888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.646459, 19.571049, 23.156799>,  <14.312567, 19.705000, 23.331652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.646459, 19.571049, 23.156799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275575, 0.433237, -0.858117,
		0.476745, 0.836758, 0.269352,
		0.834729, -0.334876, -0.437133,
		14.896877, 19.470587, 23.025660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.505841, 20.400955, 22.911123>,  <14.312567, 19.705000, 23.331652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.505841, 20.400955, 22.911123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.699822, 20.077900, 22.776936>,  <14.816212, 19.884068, 22.696423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.699822, 20.077900, 22.776936>,  <14.505841, 20.400955, 22.911123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.699822, 20.077900, 22.776936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207066, 0.266649, -0.941287,
		0.849673, 0.525945, -0.037922,
		0.484953, -0.807639, -0.335470,
		14.845308, 19.835608, 22.676294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.799233, 20.709078, 22.366365>,  <14.505841, 20.400955, 22.911123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.799233, 20.709078, 22.366365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823258, 20.312622, 22.318977>,  <14.837673, 20.074749, 22.290545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823258, 20.312622, 22.318977>,  <14.799233, 20.709078, 22.366365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.823258, 20.312622, 22.318977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158741, 0.107690, -0.981430,
		0.985492, 0.077753, -0.150866,
		0.060062, -0.991139, -0.118470,
		14.841277, 20.015280, 22.283436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367141, 20.588638, 21.983509>,  <14.799233, 20.709078, 22.366365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.367141, 20.588638, 21.983509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.119758, 20.279209, 21.928238>,  <14.971328, 20.093552, 21.895075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.119758, 20.279209, 21.928238>,  <15.367141, 20.588638, 21.983509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.119758, 20.279209, 21.928238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075502, 0.116531, -0.990313,
		0.782182, -0.622900, -0.013664,
		-0.618458, -0.773573, -0.138179,
		14.934220, 20.047136, 21.886784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.630424, 20.275492, 21.469969>,  <15.367141, 20.588638, 21.983509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.630424, 20.275492, 21.469969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.276483, 20.090569, 21.446987>,  <15.064117, 19.979614, 21.433199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.276483, 20.090569, 21.446987>,  <15.630424, 20.275492, 21.469969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.276483, 20.090569, 21.446987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015524, 0.093999, -0.995451,
		0.465608, -0.881722, -0.075998,
		-0.884855, -0.462310, -0.057454,
		15.011026, 19.951876, 21.429750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.683000, 19.707623, 20.942488>,  <15.630424, 20.275492, 21.469969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.683000, 19.707623, 20.942488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.299987, 19.817833, 20.976469>,  <15.070179, 19.883959, 20.996857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.299987, 19.817833, 20.976469>,  <15.683000, 19.707623, 20.942488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.299987, 19.817833, 20.976469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122492, -0.122014, -0.984941,
		-0.261016, -0.953517, 0.150583,
		-0.957531, 0.275531, 0.084951,
		15.012727, 19.900492, 21.001955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.295184, 19.298641, 20.411716>,  <15.683000, 19.707623, 20.942488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.295184, 19.298641, 20.411716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.084567, 19.625362, 20.506021>,  <14.958197, 19.821396, 20.562605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.084567, 19.625362, 20.506021>,  <15.295184, 19.298641, 20.411716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.084567, 19.625362, 20.506021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019980, 0.289134, -0.957080,
		-0.849914, -0.499233, -0.168561,
		-0.526543, 0.816803, 0.235765,
		14.926604, 19.870403, 20.576752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.730754, 19.319828, 19.940762>,  <15.295184, 19.298641, 20.411716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.730754, 19.319828, 19.940762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.745744, 19.692905, 20.084249>,  <14.754738, 19.916752, 20.170341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.745744, 19.692905, 20.084249>,  <14.730754, 19.319828, 19.940762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.745744, 19.692905, 20.084249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032343, 0.359917, -0.932424,
		-0.998774, 0.023341, 0.043654,
		0.037476, 0.932692, 0.358720,
		14.756987, 19.972713, 20.191866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.280093, 19.644108, 19.571611>,  <14.730754, 19.319828, 19.940762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.280093, 19.644108, 19.571611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.516189, 19.933884, 19.714052>,  <14.657846, 20.107748, 19.799517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.516189, 19.933884, 19.714052>,  <14.280093, 19.644108, 19.571611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.516189, 19.933884, 19.714052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017209, 0.452332, -0.891684,
		-0.807045, 0.520179, 0.279451,
		0.590240, 0.724437, 0.356100,
		14.693260, 20.151215, 19.820883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.011773, 20.203566, 19.319265>,  <14.280093, 19.644108, 19.571611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.011773, 20.203566, 19.319265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.363399, 20.349216, 19.442331>,  <14.574374, 20.436607, 19.516171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.363399, 20.349216, 19.442331>,  <14.011773, 20.203566, 19.319265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.363399, 20.349216, 19.442331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131019, 0.435996, -0.890360,
		-0.458346, 0.822993, 0.335560,
		0.879063, 0.364129, 0.307665,
		14.627117, 20.458454, 19.534630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.063641, 20.773985, 18.989859>,  <14.011773, 20.203566, 19.319265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.063641, 20.773985, 18.989859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.449506, 20.710907, 19.074291>,  <14.681026, 20.673059, 19.124950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.449506, 20.710907, 19.074291>,  <14.063641, 20.773985, 18.989859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.449506, 20.710907, 19.074291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239964, 0.194959, -0.951004,
		0.108815, 0.968051, 0.225911,
		0.964664, -0.157694, 0.211082,
		14.738905, 20.663599, 19.137615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.478491, 21.376572, 18.747515>,  <14.063641, 20.773985, 18.989859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.478491, 21.376572, 18.747515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.732827, 21.069710, 18.781408>,  <14.885429, 20.885593, 18.801744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.732827, 21.069710, 18.781408>,  <14.478491, 21.376572, 18.747515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.732827, 21.069710, 18.781408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217318, 0.072605, -0.973397,
		0.740593, 0.637341, 0.212882,
		0.635842, -0.767154, 0.084735,
		14.923579, 20.839563, 18.806829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.072543, 21.663664, 18.395866>,  <14.478491, 21.376572, 18.747515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.072543, 21.663664, 18.395866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.088149, 21.264233, 18.381319>,  <15.097512, 21.024574, 18.372591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.088149, 21.264233, 18.381319>,  <15.072543, 21.663664, 18.395866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.088149, 21.264233, 18.381319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466116, 0.050380, -0.883288,
		0.883863, 0.017510, 0.467418,
		0.039015, -0.998577, -0.036367,
		15.099854, 20.964659, 18.370409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.645668, 21.649191, 18.005953>,  <15.072543, 21.663664, 18.395866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.645668, 21.649191, 18.005953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.490678, 21.280682, 18.019356>,  <15.397684, 21.059576, 18.027397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.490678, 21.280682, 18.019356>,  <15.645668, 21.649191, 18.005953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.490678, 21.280682, 18.019356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385774, -0.195048, -0.901739,
		0.837282, -0.336475, 0.430979,
		-0.387474, -0.921271, 0.033507,
		15.374435, 21.004301, 18.029408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218632, 21.159826, 17.800596>,  <15.645668, 21.649191, 18.005953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218632, 21.159826, 17.800596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.879336, 20.963211, 17.721722>,  <15.675759, 20.845242, 17.674397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.879336, 20.963211, 17.721722>,  <16.218632, 21.159826, 17.800596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.879336, 20.963211, 17.721722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375357, -0.295292, -0.878584,
		0.373630, -0.819263, 0.434981,
		-0.848238, -0.491538, -0.197186,
		15.624865, 20.815750, 17.662565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.403299, 20.521828, 17.486107>,  <16.218632, 21.159826, 17.800596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.403299, 20.521828, 17.486107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.028008, 20.600807, 17.372448>,  <15.802833, 20.648195, 17.304253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.028008, 20.600807, 17.372448>,  <16.403299, 20.521828, 17.486107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.028008, 20.600807, 17.372448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180611, -0.420994, -0.888900,
		-0.295134, -0.885313, 0.359328,
		-0.938230, 0.197446, -0.284147,
		15.746538, 20.660042, 17.287205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223984, 19.960903, 17.045544>,  <16.403299, 20.521828, 17.486107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223984, 19.960903, 17.045544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.930572, 20.215416, 16.949980>,  <15.754524, 20.368124, 16.892641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.930572, 20.215416, 16.949980>,  <16.223984, 19.960903, 17.045544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.930572, 20.215416, 16.949980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034073, -0.385498, -0.922079,
		-0.678803, -0.668232, 0.304454,
		-0.733529, 0.636284, -0.238909,
		15.710513, 20.406301, 16.878307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769103, 19.541882, 16.678640>,  <16.223984, 19.960903, 17.045544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.769103, 19.541882, 16.678640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.670432, 19.920124, 16.593809>,  <15.611229, 20.147070, 16.542910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.670432, 19.920124, 16.593809>,  <15.769103, 19.541882, 16.678640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.670432, 19.920124, 16.593809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220200, -0.267810, -0.937971,
		-0.943749, -0.184678, 0.274285,
		-0.246678, 0.945607, -0.212079,
		15.596429, 20.203806, 16.530186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.098425, 19.549644, 16.373604>,  <15.769103, 19.541882, 16.678640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.098425, 19.549644, 16.373604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.283359, 19.875164, 16.232761>,  <15.394319, 20.070477, 16.148256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.283359, 19.875164, 16.232761>,  <15.098425, 19.549644, 16.373604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.283359, 19.875164, 16.232761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199203, -0.291618, -0.935563,
		-0.864040, 0.502683, 0.027286,
		0.462335, 0.813799, -0.352105,
		15.422059, 20.119303, 16.127131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.689227, 19.815533, 15.874631>,  <15.098425, 19.549644, 16.373604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.689227, 19.815533, 15.874631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.988564, 20.052517, 15.755317>,  <15.168167, 20.194708, 15.683728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.988564, 20.052517, 15.755317>,  <14.689227, 19.815533, 15.874631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.988564, 20.052517, 15.755317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252216, -0.161762, -0.954054,
		-0.613489, 0.789193, 0.028374,
		0.748344, 0.592459, -0.298286,
		15.213068, 20.230255, 15.665831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.440050, 20.267849, 15.433508>,  <14.689227, 19.815533, 15.874631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.440050, 20.267849, 15.433508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.825063, 20.219490, 15.336417>,  <15.056070, 20.190475, 15.278163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.825063, 20.219490, 15.336417>,  <14.440050, 20.267849, 15.433508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.825063, 20.219490, 15.336417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255734, -0.107032, -0.960804,
		0.090180, 0.986878, -0.133939,
		0.962532, -0.120898, -0.242726,
		15.113822, 20.183220, 15.263599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.519408, 20.648788, 14.818306>,  <14.440050, 20.267849, 15.433508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.519408, 20.648788, 14.818306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.863589, 20.445267, 14.829192>,  <15.070098, 20.323154, 14.835724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.863589, 20.445267, 14.829192>,  <14.519408, 20.648788, 14.818306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.863589, 20.445267, 14.829192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080336, -0.188215, -0.978837,
		0.503159, 0.840055, -0.202825,
		0.860452, -0.508804, 0.027216,
		15.121725, 20.292625, 14.837357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.848950, 20.844139, 14.246325>,  <14.519408, 20.648788, 14.818306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.848950, 20.844139, 14.246325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.057323, 20.512527, 14.327657>,  <15.182345, 20.313560, 14.376455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.057323, 20.512527, 14.327657>,  <14.848950, 20.844139, 14.246325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.057323, 20.512527, 14.327657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197346, -0.114779, -0.973592,
		0.830474, 0.547299, 0.103814,
		0.520930, -0.829030, 0.203328,
		15.213601, 20.263819, 14.388655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.412910, 20.865417, 13.795052>,  <14.848950, 20.844139, 14.246325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.412910, 20.865417, 13.795052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338956, 20.483776, 13.889291>,  <15.294583, 20.254791, 13.945834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338956, 20.483776, 13.889291>,  <15.412910, 20.865417, 13.795052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338956, 20.483776, 13.889291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091066, -0.255333, -0.962555,
		0.978531, -0.156509, 0.134094,
		-0.184887, -0.954102, 0.235599,
		15.283490, 20.197546, 13.959970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.762427, 20.486731, 13.283807>,  <15.412910, 20.865417, 13.795052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.762427, 20.486731, 13.283807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503568, 20.232414, 13.452077>,  <15.348252, 20.079824, 13.553039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503568, 20.232414, 13.452077>,  <15.762427, 20.486731, 13.283807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503568, 20.232414, 13.452077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246804, -0.347366, -0.904668,
		0.721309, -0.689279, 0.067882,
		-0.647149, -0.635792, 0.420675,
		15.309423, 20.041677, 13.578279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892005, 19.891691, 12.914260>,  <15.762427, 20.486731, 13.283807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892005, 19.891691, 12.914260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.540828, 19.808990, 13.086989>,  <15.330121, 19.759371, 13.190627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.540828, 19.808990, 13.086989>,  <15.892005, 19.891691, 12.914260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.540828, 19.808990, 13.086989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263328, -0.544743, -0.796187,
		0.399844, -0.812718, 0.423810,
		-0.877943, -0.206750, 0.431823,
		15.277445, 19.746965, 13.216537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.803885, 19.154274, 12.991721>,  <15.892005, 19.891691, 12.914260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.803885, 19.154274, 12.991721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.434417, 19.307125, 12.980300>,  <15.212736, 19.398836, 12.973448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.434417, 19.307125, 12.980300>,  <15.803885, 19.154274, 12.991721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434417, 19.307125, 12.980300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206277, -0.558632, -0.803356,
		-0.322934, -0.736144, 0.594815,
		-0.923668, 0.382127, -0.028552,
		15.157316, 19.421764, 12.971734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.329103, 18.481583, 12.892254>,  <15.803885, 19.154274, 12.991721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.329103, 18.481583, 12.892254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.122342, 18.808975, 12.791933>,  <14.998285, 19.005411, 12.731741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.122342, 18.808975, 12.791933>,  <15.329103, 18.481583, 12.892254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.122342, 18.808975, 12.791933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411707, -0.494560, -0.765447,
		-0.750540, -0.292404, 0.592613,
		-0.516902, 0.818481, -0.250802,
		14.967272, 19.054520, 12.716692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.609763, 18.260744, 13.015290>,  <15.329103, 18.481583, 12.892254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.609763, 18.260744, 13.015290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.637794, 18.567066, 12.759593>,  <14.654612, 18.750860, 12.606174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.637794, 18.567066, 12.759593>,  <14.609763, 18.260744, 13.015290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.637794, 18.567066, 12.759593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349457, -0.581365, -0.734775,
		-0.934328, 0.274878, 0.226876,
		0.070076, 0.765805, -0.639244,
		14.658816, 18.796808, 12.567820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.101611, 18.129446, 12.467050>,  <14.609763, 18.260744, 13.015290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.101611, 18.129446, 12.467050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.317498, 18.408222, 12.278168>,  <14.447030, 18.575489, 12.164839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.317498, 18.408222, 12.278168>,  <14.101611, 18.129446, 12.467050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.317498, 18.408222, 12.278168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191631, -0.444480, -0.875051,
		-0.819746, 0.562769, -0.106338,
		0.539717, 0.696942, -0.472205,
		14.479413, 18.617306, 12.136506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.653319, 18.433943, 11.897211>,  <14.101611, 18.129446, 12.467050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.653319, 18.433943, 11.897211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.045037, 18.470711, 11.825064>,  <14.280068, 18.492771, 11.781775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.045037, 18.470711, 11.825064>,  <13.653319, 18.433943, 11.897211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.045037, 18.470711, 11.825064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118148, -0.463981, -0.877931,
		-0.164388, 0.881063, -0.443513,
		0.979294, 0.091922, -0.180369,
		14.338825, 18.498287, 11.770953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.629755, 18.699739, 11.217682>,  <13.653319, 18.433943, 11.897211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.629755, 18.699739, 11.217682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.010653, 18.581760, 11.249262>,  <14.239193, 18.510973, 11.268210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.010653, 18.581760, 11.249262>,  <13.629755, 18.699739, 11.217682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.010653, 18.581760, 11.249262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013803, -0.216725, -0.976135,
		0.305020, 0.930610, -0.202304,
		0.952246, -0.294949, 0.078950,
		14.296328, 18.493277, 11.272947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.023801, 19.063803, 10.833681>,  <13.629755, 18.699739, 11.217682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.023801, 19.063803, 10.833681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.213075, 18.714478, 10.880014>,  <14.326639, 18.504883, 10.907814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.213075, 18.714478, 10.880014>,  <14.023801, 19.063803, 10.833681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.213075, 18.714478, 10.880014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096976, -0.079048, -0.992143,
		0.875609, 0.480700, 0.047286,
		0.473185, -0.873315, 0.115832,
		14.355030, 18.452482, 10.914764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.683667, 19.202745, 10.586500>,  <14.023801, 19.063803, 10.833681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.683667, 19.202745, 10.586500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595807, 18.812847, 10.570395>,  <14.543091, 18.578907, 10.560733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595807, 18.812847, 10.570395>,  <14.683667, 19.202745, 10.586500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.595807, 18.812847, 10.570395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314416, -0.031662, -0.948758,
		0.923524, -0.221053, 0.313430,
		-0.219650, -0.974748, -0.040262,
		14.529912, 18.520422, 10.558317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.311324, 18.758669, 10.429792>,  <14.683667, 19.202745, 10.586500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.311324, 18.758669, 10.429792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.983800, 18.576756, 10.289667>,  <14.787286, 18.467607, 10.205592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.983800, 18.576756, 10.289667>,  <15.311324, 18.758669, 10.429792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.983800, 18.576756, 10.289667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355879, 0.076690, -0.931380,
		0.450444, -0.887293, 0.099054,
		-0.818810, -0.454786, -0.350314,
		14.738157, 18.440319, 10.184573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.502345, 18.220589, 10.029751>,  <15.311324, 18.758669, 10.429792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.502345, 18.220589, 10.029751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.136729, 18.334488, 9.914198>,  <14.917360, 18.402826, 9.844866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.136729, 18.334488, 9.914198>,  <15.502345, 18.220589, 10.029751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.136729, 18.334488, 9.914198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342169, 0.158790, -0.926124,
		-0.217839, -0.945360, -0.242572,
		-0.914039, 0.284746, -0.288882,
		14.862517, 18.419912, 9.827534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233953, 17.856285, 9.445798>,  <15.502345, 18.220589, 10.029751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.233953, 17.856285, 9.445798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.107732, 18.235550, 9.460856>,  <15.032000, 18.463108, 9.469892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.107732, 18.235550, 9.460856>,  <15.233953, 17.856285, 9.445798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.107732, 18.235550, 9.460856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482601, 0.194519, -0.853967,
		-0.817021, -0.251302, -0.518964,
		-0.315552, 0.948161, 0.037648,
		15.013066, 18.519999, 9.472151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.843052, 18.028938, 8.759140>,  <15.233953, 17.856285, 9.445798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.843052, 18.028938, 8.759140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.011920, 18.343815, 8.938964>,  <15.113241, 18.532740, 9.046858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.011920, 18.343815, 8.938964>,  <14.843052, 18.028938, 8.759140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.011920, 18.343815, 8.938964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512871, 0.201514, -0.834480,
		-0.747486, 0.582859, -0.318654,
		0.422171, 0.787190, 0.449560,
		15.138571, 18.579971, 9.073832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.300917, 18.253447, 8.216976>,  <14.843052, 18.028938, 8.759140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.300917, 18.253447, 8.216976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.366117, 18.511795, 8.515313>,  <15.405236, 18.666803, 8.694316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.366117, 18.511795, 8.515313>,  <15.300917, 18.253447, 8.216976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.366117, 18.511795, 8.515313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717796, 0.441015, -0.538772,
		-0.676905, 0.623183, -0.391718,
		0.163000, 0.645871, 0.745843,
		15.415016, 18.705557, 8.739066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.473214, 18.944000, 7.977075>,  <15.300917, 18.253447, 8.216976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.473214, 18.944000, 7.977075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.644786, 18.895897, 8.335194>,  <15.747728, 18.867035, 8.550065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.644786, 18.895897, 8.335194>,  <15.473214, 18.944000, 7.977075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.644786, 18.895897, 8.335194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868666, 0.326860, -0.372265,
		-0.247869, 0.937390, 0.244665,
		0.428929, -0.120260, 0.895298,
		15.773464, 18.859819, 8.603783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.839750, 19.498003, 8.109962>,  <15.473214, 18.944000, 7.977075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.839750, 19.498003, 8.109962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.067650, 19.267990, 8.344814>,  <16.204390, 19.129982, 8.485725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.067650, 19.267990, 8.344814>,  <15.839750, 19.498003, 8.109962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.067650, 19.267990, 8.344814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821482, 0.418934, -0.386861,
		-0.023510, 0.702730, 0.711068,
		0.569750, -0.575034, 0.587129,
		16.238575, 19.095480, 8.520953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286678, 19.955776, 8.637294>,  <15.839750, 19.498003, 8.109962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.286678, 19.955776, 8.637294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.408550, 19.609051, 8.479406>,  <16.481674, 19.401016, 8.384674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.408550, 19.609051, 8.479406>,  <16.286678, 19.955776, 8.637294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.408550, 19.609051, 8.479406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733739, 0.477849, -0.482999,
		0.607286, -0.142460, 0.781607,
		0.304682, -0.866813, -0.394720,
		16.499954, 19.349007, 8.360991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.997911, 19.698750, 8.769865>,  <16.286678, 19.955776, 8.637294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.997911, 19.698750, 8.769865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.860901, 19.587009, 8.411058>,  <16.778694, 19.519966, 8.195774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.860901, 19.587009, 8.411058>,  <16.997911, 19.698750, 8.769865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860901, 19.587009, 8.411058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698031, 0.563379, -0.441992,
		0.628830, -0.777540, 0.002021,
		-0.342528, -0.279348, -0.897017,
		16.758142, 19.503204, 8.141953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.559603, 19.456682, 8.324518>,  <16.997911, 19.698750, 8.769865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.559603, 19.456682, 8.324518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259487, 19.622105, 8.118201>,  <17.079418, 19.721357, 7.994411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259487, 19.622105, 8.118201>,  <17.559603, 19.456682, 8.324518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.259487, 19.622105, 8.118201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658615, 0.535303, -0.528844,
		0.057399, -0.736493, -0.674005,
		-0.750287, 0.413555, -0.515792,
		17.034401, 19.746172, 7.963464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.630873, 19.264467, 7.556959>,  <17.559603, 19.456682, 8.324518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.630873, 19.264467, 7.556959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.460575, 19.614559, 7.648796>,  <17.358397, 19.824615, 7.703898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.460575, 19.614559, 7.648796>,  <17.630873, 19.264467, 7.556959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.460575, 19.614559, 7.648796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746443, 0.483135, -0.457606,
		-0.511436, -0.023444, -0.859002,
		-0.425742, 0.875232, 0.229593,
		17.332853, 19.877129, 7.717674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.311743, 19.781797, 6.963598>,  <17.630873, 19.264467, 7.556959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.311743, 19.781797, 6.963598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.488182, 19.927227, 7.291804>,  <17.594046, 20.014484, 7.488729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.488182, 19.927227, 7.291804>,  <17.311743, 19.781797, 6.963598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.488182, 19.927227, 7.291804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670732, 0.473897, -0.570561,
		-0.596281, 0.802020, -0.034824,
		0.441098, 0.363572, 0.820516,
		17.620512, 20.036299, 7.537959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.514332, 20.538651, 6.811288>,  <17.311743, 19.781797, 6.963598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.514332, 20.538651, 6.811288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.706013, 20.762234, 6.540606>,  <17.821020, 20.896383, 6.378196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.706013, 20.762234, 6.540606>,  <17.514332, 20.538651, 6.811288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.706013, 20.762234, 6.540606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370394, -0.570197, -0.733269,
		-0.795723, 0.602032, -0.066204,
		0.479201, 0.558957, -0.676707,
		17.849773, 20.929920, 6.337593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.053806, 20.684528, 6.248132>,  <17.514332, 20.538651, 6.811288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.053806, 20.684528, 6.248132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.414131, 20.714481, 6.077052>,  <17.630327, 20.732452, 5.974404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.414131, 20.714481, 6.077052>,  <17.053806, 20.684528, 6.248132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.414131, 20.714481, 6.077052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351095, -0.453934, -0.818948,
		-0.255472, 0.887883, -0.382619,
		0.900814, 0.074883, -0.427699,
		17.684376, 20.736946, 5.948742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099337, 20.875677, 5.545399>,  <17.053806, 20.684528, 6.248132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.099337, 20.875677, 5.545399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421253, 20.643951, 5.597100>,  <17.614403, 20.504917, 5.628121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421253, 20.643951, 5.597100>,  <17.099337, 20.875677, 5.545399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.421253, 20.643951, 5.597100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321376, -0.608370, -0.725674,
		0.499027, 0.542477, -0.675789,
		0.804792, -0.579313, 0.129254,
		17.662691, 20.470158, 5.635877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.530483, 20.780922, 4.865964>,  <17.099337, 20.875677, 5.545399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.530483, 20.780922, 4.865964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.527100, 20.487961, 5.138292>,  <17.525068, 20.312183, 5.301689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.527100, 20.487961, 5.138292>,  <17.530483, 20.780922, 4.865964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.527100, 20.487961, 5.138292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523477, -0.576854, -0.627065,
		0.851998, -0.361699, -0.378515,
		-0.008461, -0.732403, 0.680819,
		17.524561, 20.268240, 5.342538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.610596, 20.170746, 4.477170>,  <17.530483, 20.780922, 4.865964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.610596, 20.170746, 4.477170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.465511, 20.025494, 4.820466>,  <17.378462, 19.938341, 5.026444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.465511, 20.025494, 4.820466>,  <17.610596, 20.170746, 4.477170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.465511, 20.025494, 4.820466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574515, -0.637988, -0.512742,
		0.733740, -0.679048, 0.022780,
		-0.362710, -0.363132, 0.858241,
		17.356699, 19.916553, 5.077938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.652979, 19.352720, 4.623123>,  <17.610596, 20.170746, 4.477170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.652979, 19.352720, 4.623123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.338264, 19.505539, 4.817035>,  <17.149437, 19.597231, 4.933382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.338264, 19.505539, 4.817035>,  <17.652979, 19.352720, 4.623123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.338264, 19.505539, 4.817035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600508, -0.655380, -0.458113,
		0.142694, -0.651550, 0.745065,
		-0.786784, 0.382047, 0.484779,
		17.102230, 19.620153, 4.962469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.327682, 18.760918, 4.638265>,  <17.652979, 19.352720, 4.623123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.327682, 18.760918, 4.638265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.067577, 19.054531, 4.716600>,  <16.911514, 19.230700, 4.763602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.067577, 19.054531, 4.716600>,  <17.327682, 18.760918, 4.638265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.067577, 19.054531, 4.716600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667398, -0.428788, -0.608868,
		-0.362953, -0.526631, 0.768716,
		-0.650265, 0.734031, 0.195843,
		16.872498, 19.274740, 4.775352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.606623, 18.401850, 4.636436>,  <17.327682, 18.760918, 4.638265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.606623, 18.401850, 4.636436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.573956, 18.785946, 4.529655>,  <16.554356, 19.016403, 4.465585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.573956, 18.785946, 4.529655>,  <16.606623, 18.401850, 4.636436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.573956, 18.785946, 4.529655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711859, -0.243665, -0.658698,
		-0.697558, 0.136241, 0.703457,
		-0.081666, 0.960242, -0.266955,
		16.549456, 19.074018, 4.449568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.869281, 18.748707, 4.831334>,  <16.606623, 18.401850, 4.636436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.869281, 18.748707, 4.831334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024132, 18.892311, 4.491630>,  <16.117043, 18.978474, 4.287807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024132, 18.892311, 4.491630>,  <15.869281, 18.748707, 4.831334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.024132, 18.892311, 4.491630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704898, -0.478499, -0.523601,
		-0.594349, 0.801342, 0.067826,
		0.387128, 0.359012, -0.849260,
		16.140270, 19.000015, 4.236852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.359779, 18.997326, 4.269652>,  <15.869281, 18.748707, 4.831334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.359779, 18.997326, 4.269652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.699548, 18.858929, 4.110266>,  <15.903409, 18.775890, 4.014634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.699548, 18.858929, 4.110266>,  <15.359779, 18.997326, 4.269652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.699548, 18.858929, 4.110266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516505, -0.699905, -0.493311,
		-0.108206, 0.624838, -0.773220,
		0.849420, -0.345993, -0.398466,
		15.954373, 18.755131, 3.990726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.221011, 19.007456, 3.570904>,  <15.359779, 18.997326, 4.269652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.221011, 19.007456, 3.570904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.488271, 18.716846, 3.635081>,  <15.648626, 18.542480, 3.673586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.488271, 18.716846, 3.635081>,  <15.221011, 19.007456, 3.570904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.488271, 18.716846, 3.635081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515257, -0.607384, -0.604644,
		0.536736, 0.321325, -0.780169,
		0.668150, -0.726522, 0.160440,
		15.688716, 18.498890, 3.683213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495497, 18.676214, 2.839372>,  <15.221011, 19.007456, 3.570904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495497, 18.676214, 2.839372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.366729, 18.553612, 3.197684>,  <15.289468, 18.480049, 3.412671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.366729, 18.553612, 3.197684>,  <15.495497, 18.676214, 2.839372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.366729, 18.553612, 3.197684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858005, -0.305532, -0.412889,
		0.400243, -0.901501, -0.164628,
		-0.321921, -0.306508, 0.895779,
		15.270152, 18.461660, 3.466418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449963, 19.207626, 2.319294>,  <15.495497, 18.676214, 2.839372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.449963, 19.207626, 2.319294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.181556, 18.928993, 2.217700>,  <15.020512, 18.761814, 2.156744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.181556, 18.928993, 2.217700>,  <15.449963, 19.207626, 2.319294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.181556, 18.928993, 2.217700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131015, 0.448562, -0.884097,
		0.729775, -0.559968, -0.392255,
		-0.671017, -0.696583, -0.253985,
		14.980250, 18.720018, 2.141505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628428, 18.880997, 1.788754>,  <15.449963, 19.207626, 2.319294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628428, 18.880997, 1.788754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.230462, 18.844715, 1.771249>,  <14.991682, 18.822947, 1.760745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.230462, 18.844715, 1.771249>,  <15.628428, 18.880997, 1.788754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.230462, 18.844715, 1.771249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013752, 0.308127, -0.951246,
		0.099765, -0.947012, -0.305313,
		-0.994916, -0.090702, -0.043764,
		14.931988, 18.817505, 1.758119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.378018, 18.574574, 1.139250>,  <15.628428, 18.880997, 1.788754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.378018, 18.574574, 1.139250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.082398, 18.788780, 1.302727>,  <14.905026, 18.917303, 1.400813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.082398, 18.788780, 1.302727>,  <15.378018, 18.574574, 1.139250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.082398, 18.788780, 1.302727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064669, 0.547481, -0.834316,
		-0.670540, -0.643030, -0.369984,
		-0.739049, 0.535516, 0.408692,
		14.860683, 18.949434, 1.425334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.853651, 18.483517, 0.712750>,  <15.378018, 18.574574, 1.139250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.853651, 18.483517, 0.712750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.867110, 18.834743, 0.903692>,  <14.875186, 19.045479, 1.018258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.867110, 18.834743, 0.903692>,  <14.853651, 18.483517, 0.712750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.867110, 18.834743, 0.903692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009468, 0.477886, -0.878371,
		-0.999389, 0.025035, 0.024393,
		0.033647, 0.878065, 0.477357,
		14.877204, 19.098164, 1.046900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.271794, 19.036219, 0.697212>,  <14.853651, 18.483517, 0.712750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.271794, 19.036219, 0.697212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.635919, 19.201641, 0.704226>,  <14.854393, 19.300894, 0.708435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.635919, 19.201641, 0.704226>,  <14.271794, 19.036219, 0.697212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.635919, 19.201641, 0.704226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122225, 0.309031, -0.943165,
		-0.395469, 0.856430, 0.331861,
		0.910311, 0.413554, 0.017535,
		14.909012, 19.325706, 0.709487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.217040, 19.776237, 0.515269>,  <14.271794, 19.036219, 0.697212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.217040, 19.776237, 0.515269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.551728, 19.584820, 0.408765>,  <14.752541, 19.469969, 0.344862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.551728, 19.584820, 0.408765>,  <14.217040, 19.776237, 0.515269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.551728, 19.584820, 0.408765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182676, 0.214460, -0.959498,
		0.516265, 0.851471, 0.092024,
		0.836720, -0.478544, -0.266261,
		14.802744, 19.441256, 0.328887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.738530, 20.231239, 0.082648>,  <14.217040, 19.776237, 0.515269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.738530, 20.231239, 0.082648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.755363, 19.837784, 0.012582>,  <14.765462, 19.601711, -0.029458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.755363, 19.837784, 0.012582>,  <14.738530, 20.231239, 0.082648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.755363, 19.837784, 0.012582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272307, 0.157391, -0.949251,
		0.961290, 0.087643, -0.261228,
		0.042080, -0.983639, -0.175164,
		14.767986, 19.542692, -0.039967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.216660, 20.109632, -0.459846>,  <14.738530, 20.231239, 0.082648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.216660, 20.109632, -0.459846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940564, 19.821800, -0.429453>,  <14.774907, 19.649101, -0.411217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940564, 19.821800, -0.429453>,  <15.216660, 20.109632, -0.459846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.940564, 19.821800, -0.429453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400754, 0.292739, -0.868159,
		0.602467, -0.629688, -0.490435,
		-0.690239, -0.719581, 0.075984,
		14.733493, 19.605927, -0.406658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.208729, 19.873173, -1.117996>,  <15.216660, 20.109632, -0.459846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.208729, 19.873173, -1.117996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.868794, 19.770473, -0.933883>,  <14.664834, 19.708853, -0.823415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.868794, 19.770473, -0.933883>,  <15.208729, 19.873173, -1.117996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.868794, 19.770473, -0.933883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510877, 0.186618, -0.839153,
		0.129563, -0.948287, -0.289766,
		-0.849834, -0.256758, 0.460279,
		14.613844, 19.693449, -0.795799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.776779, 19.370525, -1.460751>,  <15.208729, 19.873173, -1.117996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.776779, 19.370525, -1.460751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.535586, 19.627510, -1.271584>,  <14.390870, 19.781702, -1.158083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.535586, 19.627510, -1.271584>,  <14.776779, 19.370525, -1.460751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.535586, 19.627510, -1.271584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437190, 0.229739, -0.869531,
		-0.667290, -0.731068, 0.142351,
		-0.602983, 0.642464, 0.472918,
		14.354692, 19.820250, -1.129708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<19.424843, 15.929831, 19.710642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.813057, 15.834457, 19.724567>,  <20.045986, 15.777233, 19.732922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.813057, 15.834457, 19.724567>,  <19.424843, 15.929831, 19.710642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.813057, 15.834457, 19.724567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096695, 0.253051, -0.962609,
		0.220709, 0.937612, 0.268650,
		0.970535, -0.238433, 0.034812,
		20.104218, 15.762927, 19.735010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.701826, 16.470928, 19.430674>,  <19.424843, 15.929831, 19.710642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.701826, 16.470928, 19.430674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.977772, 16.181988, 19.411518>,  <20.143339, 16.008623, 19.400024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.977772, 16.181988, 19.411518>,  <19.701826, 16.470928, 19.430674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.977772, 16.181988, 19.411518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086960, 0.148360, -0.985103,
		0.718696, 0.675424, 0.165164,
		0.689866, -0.722352, -0.047891,
		20.184731, 15.965282, 19.397150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.227575, 16.731026, 19.044041>,  <19.701826, 16.470928, 19.430674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.227575, 16.731026, 19.044041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.304211, 16.340572, 19.003134>,  <20.350193, 16.106300, 18.978590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.304211, 16.340572, 19.003134>,  <20.227575, 16.731026, 19.044041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.304211, 16.340572, 19.003134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080671, 0.088182, -0.992832,
		0.978154, 0.198466, -0.061851,
		0.191589, -0.976133, -0.102266,
		20.361687, 16.047733, 18.972454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.893476, 16.598181, 18.659010>,  <20.227575, 16.731026, 19.044041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.893476, 16.598181, 18.659010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.662441, 16.273163, 18.627609>,  <20.523821, 16.078152, 18.608768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.662441, 16.273163, 18.627609>,  <20.893476, 16.598181, 18.659010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.662441, 16.273163, 18.627609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039270, 0.068395, -0.996885,
		0.815383, -0.578872, -0.007595,
		-0.577588, -0.812546, -0.078501,
		20.489164, 16.029400, 18.604059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.227690, 16.230583, 18.143314>,  <20.893476, 16.598181, 18.659010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.227690, 16.230583, 18.143314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.865486, 16.061714, 18.160408>,  <20.648165, 15.960393, 18.170664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.865486, 16.061714, 18.160408>,  <21.227690, 16.230583, 18.143314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865486, 16.061714, 18.160408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026288, -0.044699, -0.998655,
		0.423514, -0.905413, 0.029377,
		-0.905508, -0.422171, 0.042732,
		20.593834, 15.935062, 18.173227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.269415, 15.842903, 17.628386>,  <21.227690, 16.230583, 18.143314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.269415, 15.842903, 17.628386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.876842, 15.886814, 17.691305>,  <20.641298, 15.913160, 17.729057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.876842, 15.886814, 17.691305>,  <21.269415, 15.842903, 17.628386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.876842, 15.886814, 17.691305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129265, 0.227353, -0.965195,
		-0.141719, -0.967605, -0.208941,
		-0.981431, 0.109778, 0.157298,
		20.582413, 15.919747, 17.738495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.985250, 15.508910, 16.997736>,  <21.269415, 15.842903, 17.628386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.985250, 15.508910, 16.997736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.679340, 15.716820, 17.150028>,  <20.495794, 15.841566, 17.241404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.679340, 15.716820, 17.150028>,  <20.985250, 15.508910, 16.997736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.679340, 15.716820, 17.150028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346076, 0.167046, -0.923216,
		-0.543463, -0.837813, 0.052129,
		-0.764774, 0.519774, 0.380730,
		20.449907, 15.872752, 17.264248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.452787, 15.181360, 16.651844>,  <20.985250, 15.508910, 16.997736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.452787, 15.181360, 16.651844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.338943, 15.545643, 16.771585>,  <20.270638, 15.764213, 16.843430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.338943, 15.545643, 16.771585>,  <20.452787, 15.181360, 16.651844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.338943, 15.545643, 16.771585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334350, 0.198359, -0.921338,
		-0.898448, -0.362308, 0.248040,
		-0.284607, 0.910706, 0.299353,
		20.253561, 15.818855, 16.861391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.705641, 15.275126, 16.389273>,  <20.452787, 15.181360, 16.651844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.705641, 15.275126, 16.389273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.867958, 15.632965, 16.464128>,  <19.965349, 15.847669, 16.509043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.867958, 15.632965, 16.464128>,  <19.705641, 15.275126, 16.389273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.867958, 15.632965, 16.464128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288720, 0.319745, -0.902443,
		-0.867163, 0.312176, 0.388040,
		0.405795, 0.894600, 0.187140,
		19.989697, 15.901345, 16.520271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.154610, 15.776097, 16.208851>,  <19.705641, 15.275126, 16.389273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.154610, 15.776097, 16.208851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.513672, 15.951065, 16.187397>,  <19.729109, 16.056046, 16.174524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.513672, 15.951065, 16.187397>,  <19.154610, 15.776097, 16.208851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.513672, 15.951065, 16.187397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277612, 0.466743, -0.839692,
		-0.342264, 0.768645, 0.540408,
		0.897656, 0.437420, -0.053636,
		19.782969, 16.082291, 16.171307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.988237, 16.338110, 15.883382>,  <19.154610, 15.776097, 16.208851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.988237, 16.338110, 15.883382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.383148, 16.292553, 15.839004>,  <19.620094, 16.265219, 15.812377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.383148, 16.292553, 15.839004>,  <18.988237, 16.338110, 15.883382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.383148, 16.292553, 15.839004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061448, 0.370256, -0.926895,
		0.146644, 0.921921, 0.358547,
		0.987279, -0.113892, -0.110946,
		19.679333, 16.258385, 15.805719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.181952, 16.886391, 15.389725>,  <18.988237, 16.338110, 15.883382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.181952, 16.886391, 15.389725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.496670, 16.642216, 15.353244>,  <19.685501, 16.495710, 15.331355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.496670, 16.642216, 15.353244>,  <19.181952, 16.886391, 15.389725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.496670, 16.642216, 15.353244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070946, 0.057338, -0.995831,
		0.613122, 0.789986, 0.001805,
		0.786796, -0.610438, -0.091201,
		19.732708, 16.459084, 15.325884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.543854, 17.183828, 14.773811>,  <19.181952, 16.886391, 15.389725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.543854, 17.183828, 14.773811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.705887, 16.819057, 14.800038>,  <19.803106, 16.600195, 14.815775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.705887, 16.819057, 14.800038>,  <19.543854, 17.183828, 14.773811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.705887, 16.819057, 14.800038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153037, -0.138334, -0.978490,
		0.901381, 0.386336, -0.195595,
		0.405083, -0.911926, 0.065568,
		19.827412, 16.545479, 14.819709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.158962, 17.156696, 14.363195>,  <19.543854, 17.183828, 14.773811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.158962, 17.156696, 14.363195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.026978, 16.779984, 14.389041>,  <19.947786, 16.553957, 14.404549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.026978, 16.779984, 14.389041>,  <20.158962, 17.156696, 14.363195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.026978, 16.779984, 14.389041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257567, 0.023968, -0.965963,
		0.908176, -0.335374, -0.250480,
		-0.329963, -0.941780, 0.064614,
		19.927988, 16.497450, 14.408425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.360750, 16.772259, 13.686285>,  <20.158962, 17.156696, 14.363195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.360750, 16.772259, 13.686285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.064896, 16.548878, 13.836522>,  <19.887383, 16.414848, 13.926664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.064896, 16.548878, 13.836522>,  <20.360750, 16.772259, 13.686285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.064896, 16.548878, 13.836522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407970, -0.071811, -0.910167,
		0.535257, -0.826422, -0.174718,
		-0.739635, -0.558454, 0.375593,
		19.843004, 16.381342, 13.949200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.285656, 16.192884, 13.284077>,  <20.360750, 16.772259, 13.686285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.285656, 16.192884, 13.284077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.931747, 16.139923, 13.462807>,  <19.719402, 16.108147, 13.570045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.931747, 16.139923, 13.462807>,  <20.285656, 16.192884, 13.284077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.931747, 16.139923, 13.462807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422566, -0.176387, -0.889003,
		0.196519, -0.975376, 0.100113,
		-0.884770, -0.132402, 0.446824,
		19.666317, 16.100203, 13.596854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.871319, 15.548947, 13.126889>,  <20.285656, 16.192884, 13.284077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.871319, 15.548947, 13.126889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.568592, 15.776466, 13.255697>,  <19.386955, 15.912977, 13.332982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.568592, 15.776466, 13.255697>,  <19.871319, 15.548947, 13.126889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.568592, 15.776466, 13.255697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535280, -0.256618, -0.804750,
		-0.375104, -0.781419, 0.498679,
		-0.756817, 0.568798, 0.322019,
		19.341547, 15.947105, 13.352304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.190004, 15.111414, 13.063115>,  <19.871319, 15.548947, 13.126889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.190004, 15.111414, 13.063115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.076866, 15.495060, 13.067087>,  <19.008984, 15.725247, 13.069470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.076866, 15.495060, 13.067087>,  <19.190004, 15.111414, 13.063115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.076866, 15.495060, 13.067087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497683, -0.137902, -0.856326,
		-0.819945, -0.247150, 0.516340,
		-0.282845, 0.959114, 0.009930,
		18.992012, 15.782794, 13.070066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.446774, 15.206175, 12.978041>,  <19.190004, 15.111414, 13.063115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.446774, 15.206175, 12.978041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.573524, 15.571476, 12.875622>,  <18.649574, 15.790656, 12.814170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.573524, 15.571476, 12.875622>,  <18.446774, 15.206175, 12.978041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573524, 15.571476, 12.875622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649013, 0.011918, -0.760684,
		-0.691645, 0.407221, 0.596489,
		0.316875, 0.913252, -0.256048,
		18.668587, 15.845451, 12.798807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.907612, 15.578780, 12.839400>,  <18.446774, 15.206175, 12.978041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.907612, 15.578780, 12.839400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.193771, 15.786903, 12.652861>,  <18.365467, 15.911777, 12.540936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.193771, 15.786903, 12.652861>,  <17.907612, 15.578780, 12.839400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.193771, 15.786903, 12.652861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581853, 0.074105, -0.809911,
		-0.386845, 0.850757, 0.355758,
		0.715401, 0.520308, -0.466349,
		18.408392, 15.942996, 12.512956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.534857, 15.955301, 12.412256>,  <17.907612, 15.578780, 12.839400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.534857, 15.955301, 12.412256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.897087, 15.992855, 12.246791>,  <18.114426, 16.015387, 12.147511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.897087, 15.992855, 12.246791>,  <17.534857, 15.955301, 12.412256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.897087, 15.992855, 12.246791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423943, 0.167540, -0.890058,
		-0.014257, 0.981385, 0.191521,
		0.905577, 0.093884, -0.413663,
		18.168760, 16.021021, 12.122692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376301, 16.509125, 11.981096>,  <17.534857, 15.955301, 12.412256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376301, 16.509125, 11.981096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.699162, 16.323002, 11.835772>,  <17.892878, 16.211329, 11.748577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.699162, 16.323002, 11.835772>,  <17.376301, 16.509125, 11.981096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.699162, 16.323002, 11.835772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393784, 0.034135, -0.918569,
		0.439821, 0.884490, -0.155679,
		0.807151, -0.465310, -0.363311,
		17.941307, 16.183409, 11.726778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.925488, 16.255917, 11.382323>,  <17.376301, 16.509125, 11.981096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.925488, 16.255917, 11.382323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.526047, 16.273392, 11.394209>,  <16.286383, 16.283876, 11.401340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.526047, 16.273392, 11.394209>,  <16.925488, 16.255917, 11.382323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526047, 16.273392, 11.394209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047628, 0.500884, 0.864203,
		0.022874, 0.864411, -0.502266,
		-0.998603, 0.043690, 0.029713,
		16.226465, 16.286499, 11.403123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.661644, 16.961899, 11.605804>,  <16.925488, 16.255917, 11.382323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.661644, 16.961899, 11.605804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.367672, 16.705231, 11.693565>,  <16.191288, 16.551229, 11.746222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.367672, 16.705231, 11.693565>,  <16.661644, 16.961899, 11.605804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.367672, 16.705231, 11.693565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145356, 0.465069, 0.873259,
		-0.662382, 0.609893, -0.435064,
		-0.734930, -0.641671, 0.219402,
		16.147194, 16.512730, 11.759386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.244547, 17.339449, 11.998835>,  <16.661644, 16.961899, 11.605804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.244547, 17.339449, 11.998835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.120529, 16.964622, 12.063063>,  <16.046118, 16.739727, 12.101600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.120529, 16.964622, 12.063063>,  <16.244547, 17.339449, 11.998835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.120529, 16.964622, 12.063063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202389, 0.230077, 0.951895,
		-0.928930, 0.262632, -0.260986,
		-0.310045, -0.937064, 0.160571,
		16.027515, 16.683504, 12.111234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.620274, 17.425577, 12.435806>,  <16.244547, 17.339449, 11.998835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.620274, 17.425577, 12.435806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.740254, 17.052200, 12.514507>,  <15.812243, 16.828175, 12.561728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.740254, 17.052200, 12.514507>,  <15.620274, 17.425577, 12.435806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.740254, 17.052200, 12.514507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149412, 0.157734, 0.976113,
		-0.942181, -0.322184, -0.092155,
		0.299952, -0.933444, 0.196752,
		15.830240, 16.772167, 12.573533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.134992, 17.167997, 12.983658>,  <15.620274, 17.425577, 12.435806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.134992, 17.167997, 12.983658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.459710, 16.935036, 13.000603>,  <15.654541, 16.795259, 13.010770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.459710, 16.935036, 13.000603>,  <15.134992, 17.167997, 12.983658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.459710, 16.935036, 13.000603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064070, -0.016727, 0.997805,
		-0.580416, -0.812728, -0.050894,
		0.811796, -0.582403, 0.042363,
		15.703249, 16.760315, 13.013311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.089294, 16.756367, 13.617570>,  <15.134992, 17.167997, 12.983658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.089294, 16.756367, 13.617570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.477729, 16.761929, 13.522241>,  <15.710790, 16.765265, 13.465043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.477729, 16.761929, 13.522241>,  <15.089294, 16.756367, 13.617570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477729, 16.761929, 13.522241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230253, 0.209104, 0.950400,
		0.063046, -0.977795, 0.199857,
		0.971086, 0.013901, -0.238323,
		15.769054, 16.766100, 13.450744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.471987, 16.247732, 14.107479>,  <15.089294, 16.756367, 13.617570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.471987, 16.247732, 14.107479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.753371, 16.489998, 13.958716>,  <15.922202, 16.635357, 13.869459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.753371, 16.489998, 13.958716>,  <15.471987, 16.247732, 14.107479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.753371, 16.489998, 13.958716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414755, 0.075109, 0.906828,
		0.577166, -0.792168, -0.198366,
		0.703462, 0.605663, -0.371906,
		15.964410, 16.671698, 13.847145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.997156, 15.944587, 14.413815>,  <15.471987, 16.247732, 14.107479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.997156, 15.944587, 14.413815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.109966, 16.311733, 14.302115>,  <16.177652, 16.532021, 14.235095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.109966, 16.311733, 14.302115>,  <15.997156, 15.944587, 14.413815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.109966, 16.311733, 14.302115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357579, 0.169532, 0.918366,
		0.890280, -0.358857, -0.280397,
		0.282026, 0.917867, -0.279251,
		16.194574, 16.587093, 14.218340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656645, 15.970983, 14.578183>,  <15.997156, 15.944587, 14.413815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656645, 15.970983, 14.578183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.568146, 16.358311, 14.531869>,  <16.515047, 16.590708, 14.504080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.568146, 16.358311, 14.531869>,  <16.656645, 15.970983, 14.578183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568146, 16.358311, 14.531869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502749, 0.214987, 0.837272,
		0.835639, 0.127033, -0.534387,
		-0.221247, 0.968320, -0.115786,
		16.501772, 16.648808, 14.497133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.297649, 16.282547, 14.803893>,  <16.656645, 15.970983, 14.578183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.297649, 16.282547, 14.803893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.021690, 16.571770, 14.817912>,  <16.856115, 16.745304, 14.826324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.021690, 16.571770, 14.817912>,  <17.297649, 16.282547, 14.803893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.021690, 16.571770, 14.817912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402411, 0.342811, 0.848850,
		0.601752, 0.599724, -0.527471,
		-0.689898, 0.723057, 0.035049,
		16.814720, 16.788687, 14.828426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.591999, 16.952347, 14.862173>,  <17.297649, 16.282547, 14.803893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.591999, 16.952347, 14.862173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.218464, 17.016537, 14.990047>,  <16.994343, 17.055052, 15.066771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.218464, 17.016537, 14.990047>,  <17.591999, 16.952347, 14.862173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.218464, 17.016537, 14.990047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357499, 0.388621, 0.849216,
		0.012044, 0.907315, -0.420279,
		-0.933836, 0.160477, 0.319684,
		16.938313, 17.064680, 15.085952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643087, 17.552559, 15.215861>,  <17.591999, 16.952347, 14.862173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.643087, 17.552559, 15.215861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.305748, 17.389774, 15.356229>,  <17.103344, 17.292103, 15.440450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.305748, 17.389774, 15.356229>,  <17.643087, 17.552559, 15.215861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.305748, 17.389774, 15.356229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219055, 0.335954, 0.916051,
		-0.490691, 0.849422, -0.194179,
		-0.843349, -0.406962, 0.350919,
		17.052744, 17.267685, 15.461505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312550, 18.065197, 15.705417>,  <17.643087, 17.552559, 15.215861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.312550, 18.065197, 15.705417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.189953, 17.690357, 15.772239>,  <17.116394, 17.465454, 15.812332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.189953, 17.690357, 15.772239>,  <17.312550, 18.065197, 15.705417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.189953, 17.690357, 15.772239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259097, 0.086745, 0.961948,
		-0.915932, 0.338112, 0.216213,
		-0.306491, -0.937099, 0.167056,
		17.098005, 17.409227, 15.822355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932934, 18.096834, 16.360733>,  <17.312550, 18.065197, 15.705417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.932934, 18.096834, 16.360733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.026943, 17.709988, 16.321850>,  <17.083349, 17.477880, 16.298519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.026943, 17.709988, 16.321850>,  <16.932934, 18.096834, 16.360733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.026943, 17.709988, 16.321850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198847, -0.050054, 0.978752,
		-0.951433, -0.249358, 0.180545,
		0.235022, -0.967117, -0.097207,
		17.097450, 17.419853, 16.292688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.540043, 17.731031, 16.862797>,  <16.932934, 18.096834, 16.360733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.540043, 17.731031, 16.862797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.842396, 17.485161, 16.772627>,  <17.023808, 17.337639, 16.718525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.842396, 17.485161, 16.772627>,  <16.540043, 17.731031, 16.862797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.842396, 17.485161, 16.772627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129025, -0.197702, 0.971734,
		-0.641871, -0.763599, -0.070130,
		0.755880, -0.614679, -0.225423,
		17.069160, 17.300756, 16.705000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572214, 17.199705, 17.409105>,  <16.540043, 17.731031, 16.862797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.572214, 17.199705, 17.409105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.929016, 17.168289, 17.231047>,  <17.143097, 17.149439, 17.124212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.929016, 17.168289, 17.231047>,  <16.572214, 17.199705, 17.409105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929016, 17.168289, 17.231047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383306, -0.390534, 0.836994,
		-0.239581, -0.917232, -0.318255,
		0.892007, -0.078539, -0.445145,
		17.196619, 17.144728, 17.097504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.838093, 16.623468, 17.709236>,  <16.572214, 17.199705, 17.409105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.838093, 16.623468, 17.709236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.151051, 16.814442, 17.549278>,  <17.338825, 16.929026, 17.453302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.151051, 16.814442, 17.549278>,  <16.838093, 16.623468, 17.709236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151051, 16.814442, 17.549278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541552, -0.204477, 0.815420,
		0.307538, -0.854546, -0.418536,
		0.782395, 0.477431, -0.399897,
		17.385769, 16.957670, 17.429310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.459389, 16.155928, 17.796700>,  <16.838093, 16.623468, 17.709236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.459389, 16.155928, 17.796700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.594780, 16.530689, 17.761724>,  <17.676016, 16.755547, 17.740740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.594780, 16.530689, 17.761724>,  <17.459389, 16.155928, 17.796700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.594780, 16.530689, 17.761724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674701, -0.176876, 0.716585,
		0.655905, -0.301544, -0.691998,
		0.338479, 0.936903, -0.087438,
		17.696323, 16.811760, 17.735493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.169319, 16.087536, 17.880592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.085392, 16.476955, 17.916777>,  <18.035036, 16.710608, 17.938486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.085392, 16.476955, 17.916777>,  <18.169319, 16.087536, 17.880592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.085392, 16.476955, 17.916777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624076, 0.062128, 0.778890,
		0.752665, 0.219879, -0.620603,
		-0.209819, 0.973547, 0.090459,
		18.022446, 16.769020, 17.943914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.831991, 16.416552, 18.304705>,  <18.169319, 16.087536, 17.880592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.831991, 16.416552, 18.304705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.573299, 16.721325, 18.318565>,  <18.418085, 16.904188, 18.326881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.573299, 16.721325, 18.318565>,  <18.831991, 16.416552, 18.304705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573299, 16.721325, 18.318565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272620, 0.188494, 0.943477,
		0.712334, 0.619621, -0.329622,
		-0.646730, 0.761932, 0.034651,
		18.379280, 16.949903, 18.328960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.219685, 16.916975, 18.617464>,  <18.831991, 16.416552, 18.304705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.219685, 16.916975, 18.617464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.828201, 16.966946, 18.682608>,  <18.593311, 16.996927, 18.721693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.828201, 16.966946, 18.682608>,  <19.219685, 16.916975, 18.617464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.828201, 16.966946, 18.682608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157382, -0.052590, 0.986136,
		0.131758, 0.990772, 0.031810,
		-0.978709, 0.124925, 0.162859,
		18.534588, 17.004423, 18.731466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.127420, 17.319555, 19.206961>,  <19.219685, 16.916975, 18.617464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.127420, 17.319555, 19.206961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.782738, 17.119370, 19.173504>,  <18.575928, 16.999258, 19.153429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.782738, 17.119370, 19.173504>,  <19.127420, 17.319555, 19.206961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.782738, 17.119370, 19.173504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036288, -0.103640, 0.993953,
		-0.506108, 0.859531, 0.071146,
		-0.861707, -0.500465, -0.083644,
		18.524225, 16.969231, 19.148411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.933592, 17.552641, 19.890934>,  <19.127420, 17.319555, 19.206961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.933592, 17.552641, 19.890934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.675831, 17.275482, 19.761539>,  <18.521175, 17.109186, 19.683903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.675831, 17.275482, 19.761539>,  <18.933592, 17.552641, 19.890934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.675831, 17.275482, 19.761539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234803, -0.223302, 0.946046,
		-0.727747, 0.685588, -0.018798,
		-0.644400, -0.692896, -0.323486,
		18.482512, 17.067614, 19.664494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.198954, 17.704357, 20.104988>,  <18.933592, 17.552641, 19.890934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.198954, 17.704357, 20.104988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.252270, 17.309582, 20.068794>,  <18.284260, 17.072716, 20.047077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.252270, 17.309582, 20.068794>,  <18.198954, 17.704357, 20.104988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252270, 17.309582, 20.068794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256489, -0.122541, 0.958748,
		-0.957312, -0.104583, -0.269472,
		0.133290, -0.986938, -0.090485,
		18.292257, 17.013500, 20.041649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621849, 17.534651, 20.425638>,  <18.198954, 17.704357, 20.104988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.621849, 17.534651, 20.425638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.850872, 17.208000, 20.396524>,  <17.988285, 17.012009, 20.379057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.850872, 17.208000, 20.396524>,  <17.621849, 17.534651, 20.425638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.850872, 17.208000, 20.396524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283957, -0.280798, 0.916799,
		-0.769122, -0.504252, -0.392660,
		0.572556, -0.816629, -0.072782,
		18.022638, 16.963011, 20.374689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212025, 16.921494, 20.502344>,  <17.621849, 17.534651, 20.425638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.212025, 16.921494, 20.502344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.583302, 16.808121, 20.598783>,  <17.806067, 16.740097, 20.656647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.583302, 16.808121, 20.598783>,  <17.212025, 16.921494, 20.502344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.583302, 16.808121, 20.598783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333097, -0.344096, 0.877864,
		-0.165855, -0.895134, -0.413797,
		0.928191, -0.283432, 0.241096,
		17.861759, 16.723091, 20.671112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.152054, 16.216516, 20.771456>,  <17.212025, 16.921494, 20.502344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.152054, 16.216516, 20.771456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.492825, 16.377281, 20.905731>,  <17.697287, 16.473740, 20.986298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.492825, 16.377281, 20.905731>,  <17.152054, 16.216516, 20.771456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.492825, 16.377281, 20.905731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232250, -0.284555, 0.930101,
		0.469341, -0.870342, -0.149077,
		0.851927, 0.401911, 0.335690,
		17.748404, 16.497854, 21.006437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.327656, 15.713002, 21.292000>,  <17.152054, 16.216516, 20.771456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.327656, 15.713002, 21.292000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.564651, 16.027439, 21.362446>,  <17.706848, 16.216101, 21.404715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.564651, 16.027439, 21.362446>,  <17.327656, 15.713002, 21.292000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.564651, 16.027439, 21.362446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239299, -0.037011, 0.970240,
		0.769217, -0.617000, 0.166183,
		0.592488, 0.786093, 0.176117,
		17.742397, 16.263268, 21.415281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783783, 15.524761, 21.800640>,  <17.327656, 15.713002, 21.292000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.783783, 15.524761, 21.800640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.774460, 15.924515, 21.811131>,  <17.768866, 16.164368, 21.817425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.774460, 15.924515, 21.811131>,  <17.783783, 15.524761, 21.800640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.774460, 15.924515, 21.811131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175432, -0.029914, 0.984037,
		0.984216, 0.018333, 0.176021,
		-0.023306, 0.999384, 0.026225,
		17.767467, 16.224331, 21.818998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.217117, 15.673596, 22.359432>,  <17.783783, 15.524761, 21.800640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.217117, 15.673596, 22.359432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.996822, 15.999756, 22.288082>,  <17.864647, 16.195452, 22.245272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.996822, 15.999756, 22.288082>,  <18.217117, 15.673596, 22.359432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.996822, 15.999756, 22.288082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082737, 0.159320, 0.983754,
		0.830569, 0.556546, -0.020280,
		-0.550735, 0.815398, -0.178373,
		17.831602, 16.244375, 22.234570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.462473, 16.264870, 22.692530>,  <18.217117, 15.673596, 22.359432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.462473, 16.264870, 22.692530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.071842, 16.341740, 22.653816>,  <17.837463, 16.387861, 22.630589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.071842, 16.341740, 22.653816>,  <18.462473, 16.264870, 22.692530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.071842, 16.341740, 22.653816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031829, 0.315829, 0.948282,
		0.212801, 0.929151, -0.302314,
		-0.976577, 0.192173, -0.096783,
		17.778870, 16.399391, 22.624781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.347254, 17.000872, 23.005390>,  <18.462473, 16.264870, 22.692530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.347254, 17.000872, 23.005390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.985775, 16.830086, 23.018213>,  <17.768887, 16.727613, 23.025908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.985775, 16.830086, 23.018213>,  <18.347254, 17.000872, 23.005390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.985775, 16.830086, 23.018213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148828, 0.383443, 0.911494,
		-0.401471, 0.818945, -0.410062,
		-0.903699, -0.426967, 0.032060,
		17.714664, 16.701996, 23.027832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.992775, 17.376478, 23.565617>,  <18.347254, 17.000872, 23.005390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.992775, 17.376478, 23.565617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.727905, 17.083519, 23.502228>,  <17.568983, 16.907743, 23.464195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.727905, 17.083519, 23.502228>,  <17.992775, 17.376478, 23.565617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.727905, 17.083519, 23.502228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340597, 0.105796, 0.934238,
		-0.667470, 0.672605, -0.319509,
		-0.662176, -0.732400, -0.158471,
		17.529253, 16.863798, 23.454687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.270283, 17.585358, 23.642994>,  <17.992775, 17.376478, 23.565617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.270283, 17.585358, 23.642994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.278530, 17.192310, 23.716793>,  <17.283480, 16.956482, 23.761072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.278530, 17.192310, 23.716793>,  <17.270283, 17.585358, 23.642994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.278530, 17.192310, 23.716793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365664, 0.164341, 0.916123,
		-0.930519, -0.086356, -0.355918,
		0.020620, -0.982616, 0.184499,
		17.284716, 16.897526, 23.772142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670259, 17.463659, 24.010323>,  <17.270283, 17.585358, 23.642994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670259, 17.463659, 24.010323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.880730, 17.138428, 24.109957>,  <17.007011, 16.943289, 24.169737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.880730, 17.138428, 24.109957>,  <16.670259, 17.463659, 24.010323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.880730, 17.138428, 24.109957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449656, -0.017413, 0.893032,
		-0.721769, -0.581892, -0.374768,
		0.526174, -0.813079, 0.249083,
		17.038582, 16.894505, 24.184681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.258163, 17.090380, 24.494892>,  <16.670259, 17.463659, 24.010323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.258163, 17.090380, 24.494892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.618126, 16.935925, 24.575951>,  <16.834103, 16.843250, 24.624586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.618126, 16.935925, 24.575951>,  <16.258163, 17.090380, 24.494892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.618126, 16.935925, 24.575951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271763, -0.133157, 0.953108,
		-0.341051, -0.912778, -0.224768,
		0.899905, -0.386141, 0.202646,
		16.888098, 16.820082, 24.636744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.145329, 16.784786, 25.169237>,  <16.258163, 17.090380, 24.494892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.145329, 16.784786, 25.169237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.541512, 16.765720, 25.117510>,  <16.779221, 16.754280, 25.086473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.541512, 16.765720, 25.117510>,  <16.145329, 16.784786, 25.169237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.541512, 16.765720, 25.117510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127652, -0.036470, 0.991148,
		-0.051976, -0.998196, -0.030035,
		0.990456, -0.047681, -0.129317,
		16.838648, 16.751421, 25.078714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343109, 16.282263, 25.634460>,  <16.145329, 16.784786, 25.169237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343109, 16.282263, 25.634460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.675884, 16.487549, 25.550091>,  <16.875549, 16.610722, 25.499470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.675884, 16.487549, 25.550091>,  <16.343109, 16.282263, 25.634460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.675884, 16.487549, 25.550091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262241, -0.028675, 0.964576,
		0.488989, -0.857779, -0.158442,
		0.831937, 0.513218, -0.210923,
		16.925465, 16.641514, 25.486814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.984352, 15.857304, 25.993183>,  <16.343109, 16.282263, 25.634460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.984352, 15.857304, 25.993183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.056740, 16.244698, 25.924726>,  <17.100172, 16.477133, 25.883654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.056740, 16.244698, 25.924726>,  <16.984352, 15.857304, 25.993183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.056740, 16.244698, 25.924726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401600, 0.086073, 0.911762,
		0.897757, -0.233732, -0.373366,
		0.180971, 0.968484, -0.171139,
		17.111031, 16.535242, 25.873384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.728840, 15.846857, 26.153671>,  <16.984352, 15.857304, 25.993183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.728840, 15.846857, 26.153671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.579628, 16.217972, 26.156775>,  <17.490101, 16.440641, 26.158636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.579628, 16.217972, 26.156775>,  <17.728840, 15.846857, 26.153671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.579628, 16.217972, 26.156775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246044, 0.090857, 0.964991,
		0.894602, 0.361877, -0.262168,
		-0.373028, 0.927788, 0.007757,
		17.467720, 16.496307, 26.159101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250351, 16.277880, 26.543629>,  <17.728840, 15.846857, 26.153671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.250351, 16.277880, 26.543629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.896656, 16.463753, 26.562380>,  <17.684439, 16.575275, 26.573629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.896656, 16.463753, 26.562380>,  <18.250351, 16.277880, 26.543629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.896656, 16.463753, 26.562380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175729, 0.238031, 0.955228,
		0.432718, 0.852885, -0.292134,
		-0.884237, 0.464681, 0.046876,
		17.631386, 16.603157, 26.576443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.479324, 16.787638, 27.016239>,  <18.250351, 16.277880, 26.543629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.479324, 16.787638, 27.016239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.088482, 16.704380, 27.033869>,  <17.853977, 16.654425, 27.044447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.088482, 16.704380, 27.033869>,  <18.479324, 16.787638, 27.016239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.088482, 16.704380, 27.033869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038933, 0.028723, 0.998829,
		-0.209168, 0.977676, -0.019961,
		-0.977104, -0.208145, 0.044072,
		17.795351, 16.641937, 27.047091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.628325, 16.062954, 27.126865>,  <18.479324, 16.787638, 27.016239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.628325, 16.062954, 27.126865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.977150, 15.938915, 27.278307>,  <19.186445, 15.864492, 27.369173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.977150, 15.938915, 27.278307>,  <18.628325, 16.062954, 27.126865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.977150, 15.938915, 27.278307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476694, 0.363177, -0.800540,
		0.110743, 0.878603, 0.464535,
		0.872066, -0.310095, 0.378606,
		19.238770, 15.845886, 27.391890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.068701, 16.463018, 26.757587>,  <18.628325, 16.062954, 27.126865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.068701, 16.463018, 26.757587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.306984, 16.180595, 26.910748>,  <19.449953, 16.011141, 27.002644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.306984, 16.180595, 26.910748>,  <19.068701, 16.463018, 26.757587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.306984, 16.180595, 26.910748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554844, 0.017044, -0.831779,
		0.580759, 0.707948, 0.401906,
		0.595707, -0.706059, 0.382902,
		19.485697, 15.968778, 27.025618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.744001, 16.709366, 26.765585>,  <19.068701, 16.463018, 26.757587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.744001, 16.709366, 26.765585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.732994, 16.310238, 26.741585>,  <19.726389, 16.070761, 26.727184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.732994, 16.310238, 26.741585>,  <19.744001, 16.709366, 26.765585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.732994, 16.310238, 26.741585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661042, 0.026862, -0.749868,
		0.749844, -0.060300, 0.658861,
		-0.027519, -0.997819, -0.060003,
		19.724739, 16.010893, 26.723583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.449146, 16.454889, 26.821243>,  <19.744001, 16.709366, 26.765585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.449146, 16.454889, 26.821243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.232601, 16.173058, 26.637724>,  <20.102674, 16.003958, 26.527613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.232601, 16.173058, 26.637724>,  <20.449146, 16.454889, 26.821243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.232601, 16.173058, 26.637724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736939, -0.134919, -0.662357,
		0.404783, -0.696681, 0.592272,
		-0.541360, -0.704580, -0.458799,
		20.070192, 15.961683, 26.500084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.847935, 16.477278, 26.245028>,  <20.449146, 16.454889, 26.821243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.847935, 16.477278, 26.245028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.549282, 16.228119, 26.151609>,  <20.370090, 16.078623, 26.095558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.549282, 16.228119, 26.151609>,  <20.847935, 16.477278, 26.245028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.549282, 16.228119, 26.151609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359538, -0.082465, -0.929479,
		0.559711, -0.777946, 0.285526,
		-0.746630, -0.622897, -0.233545,
		20.325293, 16.041250, 26.081547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.103899, 15.898532, 25.880878>,  <20.847935, 16.477278, 26.245028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.103899, 15.898532, 25.880878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.726562, 15.952888, 25.759787>,  <20.500160, 15.985502, 25.687132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.726562, 15.952888, 25.759787>,  <21.103899, 15.898532, 25.880878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.726562, 15.952888, 25.759787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277686, -0.176155, -0.944383,
		-0.181677, -0.974935, 0.128434,
		-0.943336, 0.135909, -0.302729,
		20.443562, 15.993656, 25.668968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.971428, 15.262835, 25.341904>,  <21.103899, 15.898532, 25.880878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.971428, 15.262835, 25.341904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.700066, 15.546776, 25.266142>,  <20.537249, 15.717140, 25.220686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.700066, 15.546776, 25.266142>,  <20.971428, 15.262835, 25.341904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.700066, 15.546776, 25.266142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157855, -0.110943, -0.981210,
		-0.717528, -0.695557, -0.036789,
		-0.678406, 0.709853, -0.189402,
		20.496544, 15.759732, 25.209322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.649292, 15.024171, 24.728840>,  <20.971428, 15.262835, 25.341904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.649292, 15.024171, 24.728840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.534336, 15.406528, 24.753080>,  <20.465363, 15.635943, 24.767624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.534336, 15.406528, 24.753080>,  <20.649292, 15.024171, 24.728840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.534336, 15.406528, 24.753080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069876, 0.084023, -0.994011,
		-0.955262, -0.281433, -0.090941,
		-0.287389, 0.955895, 0.060599,
		20.448120, 15.693297, 24.771259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.971973, 15.120838, 24.447163>,  <20.649292, 15.024171, 24.728840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.971973, 15.120838, 24.447163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.157452, 15.472519, 24.403360>,  <20.268738, 15.683527, 24.377079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.157452, 15.472519, 24.403360>,  <19.971973, 15.120838, 24.447163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.157452, 15.472519, 24.403360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220524, -0.005180, -0.975368,
		-0.858112, 0.476422, 0.191483,
		0.463695, 0.879201, -0.109508,
		20.296560, 15.736279, 24.370508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596062, 15.489420, 23.887972>,  <19.971973, 15.120838, 24.447163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.596062, 15.489420, 23.887972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.919987, 15.722610, 23.914341>,  <20.114342, 15.862525, 23.930162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.919987, 15.722610, 23.914341>,  <19.596062, 15.489420, 23.887972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.919987, 15.722610, 23.914341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183020, 0.357776, -0.915697,
		-0.557414, 0.729476, 0.396427,
		0.809811, 0.582976, 0.065921,
		20.162930, 15.897503, 23.934116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.362217, 16.128126, 23.550642>,  <19.596062, 15.489420, 23.887972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.362217, 16.128126, 23.550642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.761616, 16.137112, 23.570629>,  <20.001255, 16.142502, 23.582621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.761616, 16.137112, 23.570629>,  <19.362217, 16.128126, 23.550642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.761616, 16.137112, 23.570629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038957, 0.350170, -0.935876,
		-0.038519, 0.936417, 0.348769,
		0.998498, 0.022462, 0.049968,
		20.061165, 16.143850, 23.585619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.474318, 16.772415, 23.092222>,  <19.362217, 16.128126, 23.550642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.474318, 16.772415, 23.092222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.808529, 16.555508, 23.127640>,  <20.009056, 16.425364, 23.148891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.808529, 16.555508, 23.127640>,  <19.474318, 16.772415, 23.092222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.808529, 16.555508, 23.127640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172190, 0.105386, -0.979410,
		0.521770, 0.833571, 0.181426,
		0.835528, -0.542267, 0.088545,
		20.059187, 16.392828, 23.154203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.055712, 17.084951, 22.694647>,  <19.474318, 16.772415, 23.092222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.055712, 17.084951, 22.694647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.118912, 16.691818, 22.732752>,  <20.156832, 16.455938, 22.755615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.118912, 16.691818, 22.732752>,  <20.055712, 17.084951, 22.694647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.118912, 16.691818, 22.732752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207143, -0.061335, -0.976386,
		0.965468, 0.174001, 0.193896,
		0.157999, -0.982833, 0.095260,
		20.166311, 16.396969, 22.761330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.638218, 17.013090, 22.247429>,  <20.055712, 17.084951, 22.694647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.638218, 17.013090, 22.247429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.504292, 16.641586, 22.311056>,  <20.423935, 16.418684, 22.349232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.504292, 16.641586, 22.311056>,  <20.638218, 17.013090, 22.247429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.504292, 16.641586, 22.311056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360622, -0.282259, -0.888978,
		0.870545, -0.240281, 0.429436,
		-0.334816, -0.928760, 0.159068,
		20.403847, 16.362959, 22.358776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.200691, 16.563753, 22.009531>,  <20.638218, 17.013090, 22.247429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.200691, 16.563753, 22.009531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.859394, 16.355148, 22.008659>,  <20.654615, 16.229984, 22.008137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.859394, 16.355148, 22.008659>,  <21.200691, 16.563753, 22.009531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859394, 16.355148, 22.008659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198430, -0.320778, -0.926136,
		0.482293, -0.790649, 0.377185,
		-0.853241, -0.521513, -0.002179,
		20.603422, 16.198694, 22.008005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.363871, 15.978180, 21.625919>,  <21.200691, 16.563753, 22.009531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.363871, 15.978180, 21.625919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.965351, 16.011959, 21.632387>,  <20.726240, 16.032227, 21.636269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.965351, 16.011959, 21.632387>,  <21.363871, 15.978180, 21.625919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.965351, 16.011959, 21.632387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037126, -0.252880, -0.966785,
		-0.077552, -0.963805, 0.255079,
		-0.996297, 0.084446, 0.016171,
		20.666462, 16.037292, 21.637238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.105303, 15.301497, 21.198320>,  <21.363871, 15.978180, 21.625919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.105303, 15.301497, 21.198320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.843872, 15.604004, 21.210300>,  <20.687014, 15.785508, 21.217487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.843872, 15.604004, 21.210300>,  <21.105303, 15.301497, 21.198320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.843872, 15.604004, 21.210300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254758, -0.182561, -0.949616,
		-0.712697, -0.628275, 0.311983,
		-0.653576, 0.756268, 0.029948,
		20.647799, 15.830884, 21.219284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.520239, 14.984937, 21.075537>,  <21.105303, 15.301497, 21.198320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.520239, 14.984937, 21.075537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.466595, 15.375141, 21.005802>,  <20.434408, 15.609263, 20.963963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.466595, 15.375141, 21.005802>,  <20.520239, 14.984937, 21.075537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.466595, 15.375141, 21.005802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272546, -0.205449, -0.939952,
		-0.952750, -0.078544, 0.293424,
		-0.134111, 0.975511, -0.174335,
		20.426361, 15.667794, 20.953503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.922417, 14.958522, 20.721027>,  <20.520239, 14.984937, 21.075537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.922417, 14.958522, 20.721027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.124443, 15.291302, 20.629141>,  <20.245659, 15.490970, 20.574009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.124443, 15.291302, 20.629141>,  <19.922417, 14.958522, 20.721027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.124443, 15.291302, 20.629141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351266, -0.044976, -0.935195,
		-0.788367, 0.553025, 0.269519,
		0.505064, 0.831950, -0.229717,
		20.275963, 15.540887, 20.560226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.524578, 15.348834, 20.322470>,  <19.922417, 14.958522, 20.721027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.524578, 15.348834, 20.322470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.884911, 15.514297, 20.269716>,  <20.101110, 15.613576, 20.238064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.884911, 15.514297, 20.269716>,  <19.524578, 15.348834, 20.322470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884911, 15.514297, 20.269716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169415, 0.055211, -0.983997,
		-0.399757, 0.908757, 0.119815,
		0.900829, 0.413659, -0.131886,
		20.155159, 15.638395, 20.230150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.013887, 16.705545, 15.985192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.333984, 16.873722, 15.814153>,  <16.526043, 16.974628, 15.711529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.333984, 16.873722, 15.814153>,  <16.013887, 16.705545, 15.985192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333984, 16.873722, 15.814153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489991, 0.047357, -0.870441,
		-0.345719, 0.906083, 0.243909,
		0.800242, 0.420441, -0.427600,
		16.574057, 16.999855, 15.685873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.722662, 17.201376, 15.542626>,  <16.013887, 16.705545, 15.985192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.722662, 17.201376, 15.542626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.099777, 17.133560, 15.427800>,  <16.326046, 17.092871, 15.358905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.099777, 17.133560, 15.427800>,  <15.722662, 17.201376, 15.542626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.099777, 17.133560, 15.427800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296991, -0.035858, -0.954207,
		0.151481, 0.984871, -0.084157,
		0.942788, -0.169538, -0.287066,
		16.382614, 17.082699, 15.341681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.827796, 17.739859, 14.960354>,  <15.722662, 17.201376, 15.542626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.827796, 17.739859, 14.960354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.091587, 17.442547, 14.915414>,  <16.249863, 17.264160, 14.888450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.091587, 17.442547, 14.915414>,  <15.827796, 17.739859, 14.960354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091587, 17.442547, 14.915414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142337, 0.023284, -0.989544,
		0.738125, 0.668574, -0.090441,
		0.659478, -0.743281, -0.112349,
		16.289431, 17.219563, 14.881709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.238836, 17.879900, 14.304033>,  <15.827796, 17.739859, 14.960354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.238836, 17.879900, 14.304033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.304810, 17.489094, 14.358056>,  <16.344395, 17.254610, 14.390470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.304810, 17.489094, 14.358056>,  <16.238836, 17.879900, 14.304033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.304810, 17.489094, 14.358056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040210, -0.143478, -0.988836,
		0.985484, 0.157663, -0.062950,
		0.164935, -0.977014, 0.135056,
		16.354290, 17.195990, 14.398573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.552074, 17.694330, 13.717889>,  <16.238836, 17.879900, 14.304033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.552074, 17.694330, 13.717889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.442398, 17.346714, 13.882611>,  <16.376593, 17.138144, 13.981444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.442398, 17.346714, 13.882611>,  <16.552074, 17.694330, 13.717889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.442398, 17.346714, 13.882611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239881, -0.352875, -0.904398,
		0.931276, -0.346763, -0.111711,
		-0.274192, -0.869042, 0.411806,
		16.360140, 17.086002, 14.006153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.052876, 17.231226, 13.441047>,  <16.552074, 17.694330, 13.717889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.052876, 17.231226, 13.441047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.730728, 17.029583, 13.565791>,  <16.537439, 16.908596, 13.640637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.730728, 17.029583, 13.565791>,  <17.052876, 17.231226, 13.441047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.730728, 17.029583, 13.565791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243817, -0.197829, -0.949430,
		0.540311, -0.840677, 0.036415,
		-0.805367, -0.504109, 0.311861,
		16.489119, 16.878351, 13.659349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.056435, 16.646816, 13.095498>,  <17.052876, 17.231226, 13.441047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.056435, 16.646816, 13.095498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.672516, 16.683800, 13.201513>,  <16.442165, 16.705990, 13.265122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.672516, 16.683800, 13.201513>,  <17.056435, 16.646816, 13.095498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.672516, 16.683800, 13.201513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280090, -0.253125, -0.926001,
		-0.018528, -0.963005, 0.268845,
		-0.959795, 0.092458, 0.265039,
		16.384577, 16.711536, 13.281025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.748772, 16.008738, 12.945535>,  <17.056435, 16.646816, 13.095498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.748772, 16.008738, 12.945535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.411152, 16.221977, 12.968803>,  <16.208580, 16.349922, 12.982764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.411152, 16.221977, 12.968803>,  <16.748772, 16.008738, 12.945535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.411152, 16.221977, 12.968803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307029, -0.391457, -0.867464,
		-0.439678, -0.750041, 0.494087,
		-0.844047, 0.533104, 0.058169,
		16.157936, 16.381907, 12.986255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.162153, 15.569400, 12.832173>,  <16.748772, 16.008738, 12.945535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.162153, 15.569400, 12.832173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.048431, 15.945210, 12.755787>,  <15.980199, 16.170694, 12.709955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.048431, 15.945210, 12.755787>,  <16.162153, 15.569400, 12.832173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.048431, 15.945210, 12.755787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380302, -0.293359, -0.877104,
		-0.880081, -0.176739, 0.440706,
		-0.284303, 0.939523, -0.190965,
		15.963140, 16.227066, 12.698498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.578389, 15.486469, 12.454797>,  <16.162153, 15.569400, 12.832173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.578389, 15.486469, 12.454797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.722133, 15.849525, 12.368031>,  <15.808378, 16.067360, 12.315971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.722133, 15.849525, 12.368031>,  <15.578389, 15.486469, 12.454797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.722133, 15.849525, 12.368031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167914, -0.165759, -0.971766,
		-0.917969, 0.385635, 0.092839,
		0.359358, 0.907640, -0.216915,
		15.829940, 16.121817, 12.302956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.167443, 15.734824, 11.951637>,  <15.578389, 15.486469, 12.454797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.167443, 15.734824, 11.951637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.478562, 15.981590, 11.903562>,  <15.665234, 16.129650, 11.874717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.478562, 15.981590, 11.903562>,  <15.167443, 15.734824, 11.951637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478562, 15.981590, 11.903562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131949, -0.026688, -0.990897,
		-0.614507, 0.786577, 0.060644,
		0.777799, 0.616915, -0.120188,
		15.711902, 16.166664, 11.867505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864038, 16.206482, 11.584131>,  <15.167443, 15.734824, 11.951637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.864038, 16.206482, 11.584131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.262322, 16.196518, 11.548482>,  <15.501292, 16.190540, 11.527093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.262322, 16.196518, 11.548482>,  <14.864038, 16.206482, 11.584131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.262322, 16.196518, 11.548482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086982, 0.076770, -0.993247,
		0.031584, 0.996737, 0.074274,
		0.995709, -0.024910, -0.089123,
		15.561035, 16.189045, 11.521745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.973168, 16.654383, 11.035257>,  <14.864038, 16.206482, 11.584131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.973168, 16.654383, 11.035257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.313973, 16.450661, 11.083722>,  <15.518456, 16.328426, 11.112802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.313973, 16.450661, 11.083722>,  <14.973168, 16.654383, 11.035257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.313973, 16.450661, 11.083722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179260, 0.066372, -0.981560,
		0.491873, 0.858022, 0.147848,
		0.852013, -0.509306, 0.121163,
		15.569577, 16.297869, 11.120070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.530731, 17.079065, 10.762904>,  <14.973168, 16.654383, 11.035257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.530731, 17.079065, 10.762904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.637542, 16.694244, 10.740448>,  <15.701628, 16.463352, 10.726974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.637542, 16.694244, 10.740448>,  <15.530731, 17.079065, 10.762904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.637542, 16.694244, 10.740448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188371, 0.109240, -0.976004,
		0.945100, 0.250042, 0.210393,
		0.267026, -0.962053, -0.056141,
		15.717649, 16.405628, 10.723605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.315412, 17.615139, 11.103082>,  <15.530731, 17.079065, 10.762904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.315412, 17.615139, 11.103082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.003745, 17.850979, 11.017974>,  <14.816745, 17.992483, 10.966909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.003745, 17.850979, 11.017974>,  <15.315412, 17.615139, 11.103082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.003745, 17.850979, 11.017974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213625, 0.568902, 0.794175,
		0.589292, 0.573342, -0.569223,
		-0.779166, 0.589601, -0.212769,
		14.769996, 18.027859, 10.954143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518366, 18.171047, 11.545157>,  <15.315412, 17.615139, 11.103082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.518366, 18.171047, 11.545157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.151921, 18.286243, 11.433587>,  <14.932055, 18.355362, 11.366645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.151921, 18.286243, 11.433587>,  <15.518366, 18.171047, 11.545157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.151921, 18.286243, 11.433587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023798, 0.655421, 0.754888,
		0.400216, 0.698200, -0.593585,
		-0.916112, 0.287992, -0.278926,
		14.877088, 18.372641, 11.349909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495017, 18.891386, 11.359972>,  <15.518366, 18.171047, 11.545157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495017, 18.891386, 11.359972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.135121, 18.778946, 11.493509>,  <14.919184, 18.711483, 11.573631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.135121, 18.778946, 11.493509>,  <15.495017, 18.891386, 11.359972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.135121, 18.778946, 11.493509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048888, 0.695217, 0.717136,
		-0.433679, 0.661557, -0.611772,
		-0.899740, -0.281098, 0.333843,
		14.865199, 18.694616, 11.593662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304003, 19.493290, 11.628994>,  <15.495017, 18.891386, 11.359972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.304003, 19.493290, 11.628994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.047494, 19.224552, 11.777262>,  <14.893589, 19.063309, 11.866222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.047494, 19.224552, 11.777262>,  <15.304003, 19.493290, 11.628994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.047494, 19.224552, 11.777262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040151, 0.511793, 0.858170,
		-0.766263, 0.535437, -0.355174,
		-0.641272, -0.671844, 0.370670,
		14.855112, 19.022999, 11.888463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.638148, 19.836973, 11.756936>,  <15.304003, 19.493290, 11.628994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.638148, 19.836973, 11.756936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.663041, 19.513702, 11.991193>,  <14.677977, 19.319740, 12.131746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.663041, 19.513702, 11.991193>,  <14.638148, 19.836973, 11.756936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.663041, 19.513702, 11.991193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026881, 0.587923, 0.808470,
		-0.997700, -0.034570, 0.058313,
		0.062233, -0.808178, 0.585641,
		14.681711, 19.271250, 12.166885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350305, 20.125769, 12.315200>,  <14.638148, 19.836973, 11.756936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350305, 20.125769, 12.315200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.541862, 19.791885, 12.423955>,  <14.656796, 19.591555, 12.489208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.541862, 19.791885, 12.423955>,  <14.350305, 20.125769, 12.315200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.541862, 19.791885, 12.423955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115885, 0.367109, 0.922931,
		-0.870191, -0.410477, 0.272536,
		0.478893, -0.834709, 0.271887,
		14.685530, 19.541473, 12.505521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.001958, 19.948153, 12.932105>,  <14.350305, 20.125769, 12.315200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.001958, 19.948153, 12.932105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.363414, 19.776840, 12.930715>,  <14.580287, 19.674053, 12.929880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.363414, 19.776840, 12.930715>,  <14.001958, 19.948153, 12.932105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.363414, 19.776840, 12.930715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132770, 0.272402, 0.952979,
		-0.407196, -0.861610, 0.303016,
		0.903639, -0.428281, -0.003475,
		14.634505, 19.648355, 12.929672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.063187, 19.700155, 13.651076>,  <14.001958, 19.948153, 12.932105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.063187, 19.700155, 13.651076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.446046, 19.685261, 13.536199>,  <14.675761, 19.676323, 13.467272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.446046, 19.685261, 13.536199>,  <14.063187, 19.700155, 13.651076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.446046, 19.685261, 13.536199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285505, 0.287475, 0.914246,
		0.048516, -0.957064, 0.285788,
		0.957148, -0.037238, -0.287193,
		14.733191, 19.674089, 13.450041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.461075, 19.303818, 14.145360>,  <14.063187, 19.700155, 13.651076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.461075, 19.303818, 14.145360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.737298, 19.517891, 13.950749>,  <14.903032, 19.646336, 13.833983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.737298, 19.517891, 13.950749>,  <14.461075, 19.303818, 14.145360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.737298, 19.517891, 13.950749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404113, 0.272387, 0.873211,
		0.599852, -0.799615, -0.028176,
		0.690558, 0.535183, -0.486527,
		14.944466, 19.678446, 13.804791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.058715, 18.992851, 14.360043>,  <14.461075, 19.303818, 14.145360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.058715, 18.992851, 14.360043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.102124, 19.369518, 14.232615>,  <15.128170, 19.595518, 14.156159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.102124, 19.369518, 14.232615>,  <15.058715, 18.992851, 14.360043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.102124, 19.369518, 14.232615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245257, 0.285191, 0.926561,
		0.963365, -0.178683, -0.200001,
		0.108522, 0.941668, -0.318567,
		15.134681, 19.652020, 14.137046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.642187, 19.073631, 14.623052>,  <15.058715, 18.992851, 14.360043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.642187, 19.073631, 14.623052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.489303, 19.438179, 14.561971>,  <15.397572, 19.656908, 14.525322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.489303, 19.438179, 14.561971>,  <15.642187, 19.073631, 14.623052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.489303, 19.438179, 14.561971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391409, 0.309360, 0.866658,
		0.837086, 0.271478, -0.474959,
		-0.382211, 0.911371, -0.152702,
		15.374640, 19.711590, 14.516160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.183582, 19.491203, 14.893270>,  <15.642187, 19.073631, 14.623052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.183582, 19.491203, 14.893270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.871194, 19.739552, 14.866134>,  <15.683761, 19.888559, 14.849853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.871194, 19.739552, 14.866134>,  <16.183582, 19.491203, 14.893270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.871194, 19.739552, 14.866134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258502, 0.420204, 0.869831,
		0.568558, 0.661778, -0.488664,
		-0.780973, 0.620870, -0.067839,
		15.636902, 19.925812, 14.845782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.411871, 20.113407, 15.086819>,  <16.183582, 19.491203, 14.893270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.411871, 20.113407, 15.086819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.015450, 20.140717, 15.132693>,  <15.777596, 20.157103, 15.160218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.015450, 20.140717, 15.132693>,  <16.411871, 20.113407, 15.086819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.015450, 20.140717, 15.132693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133425, 0.484828, 0.864372,
		0.003410, 0.871941, -0.489599,
		-0.991053, 0.068272, 0.114686,
		15.718134, 20.161198, 15.167099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.376694, 20.677792, 15.372092>,  <16.411871, 20.113407, 15.086819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.376694, 20.677792, 15.372092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.010899, 20.546822, 15.467177>,  <15.791422, 20.468239, 15.524228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.010899, 20.546822, 15.467177>,  <16.376694, 20.677792, 15.372092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.010899, 20.546822, 15.467177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118043, 0.346047, 0.930762,
		-0.387015, 0.879229, -0.277805,
		-0.914486, -0.327426, 0.237712,
		15.736552, 20.448593, 15.538491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.404722, 21.455318, 15.530253>,  <16.376694, 20.677792, 15.372092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.404722, 21.455318, 15.530253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.782101, 21.586861, 15.547061>,  <17.008528, 21.665785, 15.557145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.782101, 21.586861, 15.547061>,  <16.404722, 21.455318, 15.530253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.782101, 21.586861, 15.547061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099305, -0.159397, -0.982207,
		-0.316305, 0.930832, -0.183039,
		0.943446, 0.328854, 0.042018,
		17.065134, 21.685516, 15.559667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.576828, 21.896221, 14.948215>,  <16.404722, 21.455318, 15.530253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.576828, 21.896221, 14.948215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.952969, 21.834507, 15.069497>,  <17.178654, 21.797478, 15.142266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.952969, 21.834507, 15.069497>,  <16.576828, 21.896221, 14.948215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.952969, 21.834507, 15.069497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295555, -0.070886, -0.952693,
		0.168480, 0.985480, -0.021058,
		0.940352, -0.154286, 0.303206,
		17.235075, 21.788221, 15.160459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976561, 22.365965, 14.600751>,  <16.576828, 21.896221, 14.948215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.976561, 22.365965, 14.600751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.209003, 22.062706, 14.719089>,  <17.348469, 21.880751, 14.790092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.209003, 22.062706, 14.719089>,  <16.976561, 22.365965, 14.600751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.209003, 22.062706, 14.719089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329649, -0.113086, -0.937306,
		0.744073, 0.642202, 0.184207,
		0.581109, -0.758148, 0.295845,
		17.383337, 21.835262, 14.807842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.695555, 22.529453, 14.341365>,  <16.976561, 22.365965, 14.600751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.695555, 22.529453, 14.341365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.686954, 22.136269, 14.414380>,  <17.681795, 21.900358, 14.458189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.686954, 22.136269, 14.414380>,  <17.695555, 22.529453, 14.341365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.686954, 22.136269, 14.414380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201463, -0.183094, -0.962231,
		0.979260, 0.016088, 0.201967,
		-0.021498, -0.982964, 0.182537,
		17.680506, 21.841379, 14.469141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.318750, 22.321287, 14.079728>,  <17.695555, 22.529453, 14.341365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.318750, 22.321287, 14.079728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.078304, 22.001720, 14.087630>,  <17.934036, 21.809980, 14.092372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.078304, 22.001720, 14.087630>,  <18.318750, 22.321287, 14.079728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.078304, 22.001720, 14.087630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401786, -0.323494, -0.856691,
		0.690817, -0.507033, 0.515451,
		-0.601116, -0.798918, 0.019756,
		17.897970, 21.762045, 14.093557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.644583, 21.777439, 13.737962>,  <18.318750, 22.321287, 14.079728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.644583, 21.777439, 13.737962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.269642, 21.638905, 13.753045>,  <18.044678, 21.555784, 13.762094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.269642, 21.638905, 13.753045>,  <18.644583, 21.777439, 13.737962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.269642, 21.638905, 13.753045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089814, -0.344811, -0.934366,
		0.336606, -0.872443, 0.354315,
		-0.937352, -0.346336, 0.037707,
		17.988436, 21.535004, 13.764358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.660351, 21.037415, 13.355862>,  <18.644583, 21.777439, 13.737962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.660351, 21.037415, 13.355862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.288990, 21.185631, 13.366941>,  <18.066174, 21.274561, 13.373590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.288990, 21.185631, 13.366941>,  <18.660351, 21.037415, 13.355862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.288990, 21.185631, 13.366941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132225, -0.259786, -0.956571,
		-0.347252, -0.891746, 0.290181,
		-0.928403, 0.370540, 0.027700,
		18.010469, 21.296793, 13.375252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.264004, 20.548882, 13.149096>,  <18.660351, 21.037415, 13.355862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.264004, 20.548882, 13.149096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.065933, 20.887939, 13.072883>,  <17.947090, 21.091373, 13.027155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.065933, 20.887939, 13.072883>,  <18.264004, 20.548882, 13.149096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.065933, 20.887939, 13.072883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168751, -0.308969, -0.935982,
		-0.852246, -0.431324, 0.296034,
		-0.495176, 0.847643, -0.190531,
		17.917379, 21.142233, 13.015723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.676750, 20.386211, 12.650084>,  <18.264004, 20.548882, 13.149096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.676750, 20.386211, 12.650084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.719673, 20.783897, 12.651985>,  <17.745426, 21.022509, 12.653127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.719673, 20.783897, 12.651985>,  <17.676750, 20.386211, 12.650084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.719673, 20.783897, 12.651985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128441, 0.018605, -0.991543,
		-0.985895, 0.105787, 0.129694,
		0.107305, 0.994214, 0.004755,
		17.751865, 21.082161, 12.653412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.151873, 20.674202, 12.145628>,  <17.676750, 20.386211, 12.650084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.151873, 20.674202, 12.145628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.413906, 20.974712, 12.177758>,  <17.571127, 21.155018, 12.197037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.413906, 20.974712, 12.177758>,  <17.151873, 20.674202, 12.145628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.413906, 20.974712, 12.177758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005300, 0.101743, -0.994797,
		-0.755538, 0.652101, 0.062668,
		0.655084, 0.751274, 0.080327,
		17.610432, 21.200094, 12.201857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.886536, 21.290689, 11.676601>,  <17.151873, 20.674202, 12.145628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.886536, 21.290689, 11.676601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.279095, 21.355293, 11.718125>,  <17.514629, 21.394056, 11.743040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.279095, 21.355293, 11.718125>,  <16.886536, 21.290689, 11.676601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.279095, 21.355293, 11.718125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064592, 0.231434, -0.970704,
		-0.180803, 0.959350, 0.216696,
		0.981396, 0.161509, 0.103810,
		17.573513, 21.403746, 11.749269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.007217, 21.903877, 11.345378>,  <16.886536, 21.290689, 11.676601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.007217, 21.903877, 11.345378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.358891, 21.715019, 11.371042>,  <17.569895, 21.601706, 11.386441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.358891, 21.715019, 11.371042>,  <17.007217, 21.903877, 11.345378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.358891, 21.715019, 11.371042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209522, 0.262140, -0.942010,
		0.427944, 0.841643, 0.329394,
		0.879184, -0.472143, 0.064162,
		17.622646, 21.573376, 11.390290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.009621, 23.423868, 18.989498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.267277, 23.119396, 19.019669>,  <17.421871, 22.936714, 19.037771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.267277, 23.119396, 19.019669>,  <17.009621, 23.423868, 18.989498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.267277, 23.119396, 19.019669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033935, -0.126948, -0.991329,
		0.764153, 0.635996, -0.107602,
		0.644141, -0.761179, 0.075425,
		17.460520, 22.891043, 19.042295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.380777, 23.483719, 18.383442>,  <17.009621, 23.423868, 18.989498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.380777, 23.483719, 18.383442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.481483, 23.120045, 18.516106>,  <17.541906, 22.901840, 18.595703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.481483, 23.120045, 18.516106>,  <17.380777, 23.483719, 18.383442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481483, 23.120045, 18.516106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229797, -0.276736, -0.933065,
		0.940111, 0.311126, 0.139255,
		0.251763, -0.909185, 0.331658,
		17.557013, 22.847290, 18.615602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.048967, 23.339153, 18.148123>,  <17.380777, 23.483719, 18.383442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.048967, 23.339153, 18.148123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847160, 22.998131, 18.202686>,  <17.726076, 22.793516, 18.235424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847160, 22.998131, 18.202686>,  <18.048967, 23.339153, 18.148123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.847160, 22.998131, 18.202686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100868, -0.215112, -0.971366,
		0.857489, -0.476312, 0.194523,
		-0.504518, -0.852557, 0.136411,
		17.695805, 22.742363, 18.243610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388109, 23.027433, 17.708044>,  <18.048967, 23.339153, 18.148123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.388109, 23.027433, 17.708044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.079590, 22.779583, 17.766228>,  <17.894478, 22.630873, 17.801138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.079590, 22.779583, 17.766228>,  <18.388109, 23.027433, 17.708044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.079590, 22.779583, 17.766228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093278, -0.336119, -0.937189,
		0.629600, -0.709285, 0.317046,
		-0.771300, -0.619628, 0.145460,
		17.848200, 22.593695, 17.809866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.622103, 22.334126, 17.488577>,  <18.388109, 23.027433, 17.708044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.622103, 22.334126, 17.488577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.224098, 22.357643, 17.456327>,  <17.985296, 22.371754, 17.436977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.224098, 22.357643, 17.456327>,  <18.622103, 22.334126, 17.488577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.224098, 22.357643, 17.456327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061286, -0.277571, -0.958748,
		-0.078746, -0.958905, 0.272582,
		-0.995009, 0.058792, -0.080625,
		17.925596, 22.375280, 17.432140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.477396, 21.786203, 17.048864>,  <18.622103, 22.334126, 17.488577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.477396, 21.786203, 17.048864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131390, 21.986885, 17.046307>,  <17.923786, 22.107294, 17.044771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131390, 21.986885, 17.046307>,  <18.477396, 21.786203, 17.048864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.131390, 21.986885, 17.046307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176430, -0.316073, -0.932186,
		-0.469706, -0.805225, 0.361923,
		-0.865014, 0.501708, -0.006396,
		17.871885, 22.137398, 17.044388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.999458, 21.290607, 16.935663>,  <18.477396, 21.786203, 17.048864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.999458, 21.290607, 16.935663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.809757, 21.626423, 16.829638>,  <17.695936, 21.827913, 16.766022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.809757, 21.626423, 16.829638>,  <17.999458, 21.290607, 16.935663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.809757, 21.626423, 16.829638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260439, -0.421384, -0.868682,
		-0.840987, -0.342940, 0.418490,
		-0.474250, 0.839541, -0.265063,
		17.667482, 21.878284, 16.750118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.365278, 21.101881, 16.556652>,  <17.999458, 21.290607, 16.935663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.365278, 21.101881, 16.556652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.409458, 21.487568, 16.460251>,  <17.435966, 21.718981, 16.402411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.409458, 21.487568, 16.460251>,  <17.365278, 21.101881, 16.556652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.409458, 21.487568, 16.460251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346623, -0.189894, -0.918582,
		-0.931479, 0.184994, 0.313246,
		0.110449, 0.964218, -0.241005,
		17.442593, 21.776833, 16.387949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.679905, 21.267496, 16.238810>,  <17.365278, 21.101881, 16.556652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.679905, 21.267496, 16.238810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.966793, 21.524143, 16.130058>,  <17.138926, 21.678131, 16.064808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.966793, 21.524143, 16.130058>,  <16.679905, 21.267496, 16.238810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.966793, 21.524143, 16.130058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167003, -0.220524, -0.960978,
		-0.676538, 0.734639, -0.051012,
		0.717221, 0.641619, -0.271880,
		17.181959, 21.716629, 16.048494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002100, 21.195404, 16.088657>,  <16.679905, 21.267496, 16.238810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002100, 21.195404, 16.088657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769685, 20.871101, 16.060171>,  <15.630236, 20.676519, 16.043079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769685, 20.871101, 16.060171>,  <16.002100, 21.195404, 16.088657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.769685, 20.871101, 16.060171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146902, 0.018410, 0.988980,
		-0.800510, 0.585095, -0.129799,
		-0.581036, -0.810756, -0.071214,
		15.595374, 20.627874, 16.038807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.290553, 21.416080, 16.184296>,  <16.002100, 21.195404, 16.088657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.290553, 21.416080, 16.184296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.388522, 21.041260, 16.283854>,  <15.447304, 20.816368, 16.343588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.388522, 21.041260, 16.283854>,  <15.290553, 21.416080, 16.184296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.388522, 21.041260, 16.283854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041183, 0.246425, 0.968286,
		-0.968668, -0.247404, 0.021764,
		0.244921, -0.937052, 0.248893,
		15.461999, 20.760145, 16.358521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.808874, 21.277609, 16.641508>,  <15.290553, 21.416080, 16.184296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.808874, 21.277609, 16.641508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.078507, 20.997406, 16.735231>,  <15.240288, 20.829285, 16.791466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.078507, 20.997406, 16.735231>,  <14.808874, 21.277609, 16.641508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.078507, 20.997406, 16.735231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233073, 0.099292, 0.967377,
		-0.700919, -0.706705, -0.096338,
		0.674084, -0.700507, 0.234310,
		15.280733, 20.787254, 16.805525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.451664, 20.745596, 17.001165>,  <14.808874, 21.277609, 16.641508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.451664, 20.745596, 17.001165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.837890, 20.694153, 17.091625>,  <15.069626, 20.663288, 17.145901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.837890, 20.694153, 17.091625>,  <14.451664, 20.745596, 17.001165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.837890, 20.694153, 17.091625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233565, -0.045636, 0.971270,
		-0.114595, -0.990644, -0.074104,
		0.965565, -0.128611, 0.226150,
		15.127560, 20.655571, 17.159470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.612620, 20.114161, 17.320717>,  <14.451664, 20.745596, 17.001165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.612620, 20.114161, 17.320717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.908265, 20.357319, 17.436769>,  <15.085652, 20.503214, 17.506401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.908265, 20.357319, 17.436769>,  <14.612620, 20.114161, 17.320717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.908265, 20.357319, 17.436769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198372, -0.215185, 0.956213,
		0.643710, -0.764302, -0.038457,
		0.739112, 0.607895, 0.290133,
		15.129998, 20.539688, 17.523809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831392, 19.828621, 17.974644>,  <14.612620, 20.114161, 17.320717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.831392, 19.828621, 17.974644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.986472, 20.197182, 17.985266>,  <15.079520, 20.418318, 17.991638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.986472, 20.197182, 17.985266>,  <14.831392, 19.828621, 17.974644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.986472, 20.197182, 17.985266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068486, 0.000064, 0.997652,
		0.919238, -0.388609, 0.063128,
		0.387701, 0.921403, 0.026555,
		15.102782, 20.473602, 17.993233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374091, 19.705750, 18.532413>,  <14.831392, 19.828621, 17.974644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.374091, 19.705750, 18.532413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296821, 20.094971, 18.482050>,  <15.250459, 20.328503, 18.451832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296821, 20.094971, 18.482050>,  <15.374091, 19.705750, 18.532413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.296821, 20.094971, 18.482050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094007, 0.146091, 0.984794,
		0.976650, 0.178402, -0.119695,
		-0.193175, 0.973052, -0.125908,
		15.238868, 20.386887, 18.444277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892271, 19.972824, 18.834211>,  <15.374091, 19.705750, 18.532413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892271, 19.972824, 18.834211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.596166, 20.241695, 18.839701>,  <15.418503, 20.403017, 18.842995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.596166, 20.241695, 18.839701>,  <15.892271, 19.972824, 18.834211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.596166, 20.241695, 18.839701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043056, 0.027025, 0.998707,
		0.670937, 0.739897, -0.048947,
		-0.740264, 0.672177, 0.013724,
		15.374086, 20.443348, 18.843819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.012817, 20.389261, 19.360666>,  <15.892271, 19.972824, 18.834211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.012817, 20.389261, 19.360666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626901, 20.479519, 19.306606>,  <15.395351, 20.533672, 19.274170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626901, 20.479519, 19.306606>,  <16.012817, 20.389261, 19.360666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.626901, 20.479519, 19.306606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119663, 0.081027, 0.989503,
		0.234225, 0.970835, -0.051173,
		-0.964790, 0.225643, -0.135151,
		15.337463, 20.547213, 19.266062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.871972, 20.837208, 19.802076>,  <16.012817, 20.389261, 19.360666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.871972, 20.837208, 19.802076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.505246, 20.703590, 19.714561>,  <15.285211, 20.623421, 19.662052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.505246, 20.703590, 19.714561>,  <15.871972, 20.837208, 19.802076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.505246, 20.703590, 19.714561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189967, -0.117064, 0.974786,
		-0.351233, 0.935260, 0.043869,
		-0.916814, -0.334044, -0.218785,
		15.230202, 20.603376, 19.648926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.386689, 21.127163, 20.302027>,  <15.871972, 20.837208, 19.802076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.386689, 21.127163, 20.302027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.168014, 20.827267, 20.152884>,  <15.036808, 20.647329, 20.063398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.168014, 20.827267, 20.152884>,  <15.386689, 21.127163, 20.302027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.168014, 20.827267, 20.152884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341770, -0.206714, 0.916767,
		-0.764411, 0.628619, -0.143230,
		-0.546690, -0.749738, -0.372858,
		15.004006, 20.602345, 20.041027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.784310, 21.189844, 20.627802>,  <15.386689, 21.127163, 20.302027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.784310, 21.189844, 20.627802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.799449, 20.811066, 20.500137>,  <14.808532, 20.583799, 20.423538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.799449, 20.811066, 20.500137>,  <14.784310, 21.189844, 20.627802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.799449, 20.811066, 20.500137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384949, -0.308555, 0.869832,
		-0.922161, 0.089940, -0.376204,
		0.037847, -0.946945, -0.319160,
		14.810803, 20.526981, 20.404388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.075775, 20.859625, 20.654470>,  <14.784310, 21.189844, 20.627802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.075775, 20.859625, 20.654470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.347547, 20.567001, 20.677103>,  <14.510610, 20.391428, 20.690683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.347547, 20.567001, 20.677103>,  <14.075775, 20.859625, 20.654470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.347547, 20.567001, 20.677103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405152, -0.309750, 0.860178,
		-0.611743, -0.607354, -0.506845,
		0.679428, -0.731557, 0.056583,
		14.551375, 20.347534, 20.694078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.749677, 20.180790, 20.951527>,  <14.075775, 20.859625, 20.654470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.749677, 20.180790, 20.951527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.145793, 20.165955, 21.005114>,  <14.383463, 20.157053, 21.037266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.145793, 20.165955, 21.005114>,  <13.749677, 20.180790, 20.951527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.145793, 20.165955, 21.005114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138800, -0.316298, 0.938451,
		0.007566, -0.947935, -0.318375,
		0.990292, -0.037090, 0.133966,
		14.442881, 20.154827, 21.045303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.936689, 17.963392, 21.254105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.559566, 18.090466, 21.294497>,  <22.333294, 18.166710, 21.318731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.559566, 18.090466, 21.294497>,  <22.936689, 17.963392, 21.254105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.559566, 18.090466, 21.294497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119116, -0.038140, -0.992148,
		-0.311336, -0.947430, 0.073800,
		-0.942805, 0.317682, 0.100980,
		22.276726, 18.185770, 21.324791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.703537, 17.573215, 20.840147>,  <22.936689, 17.963392, 21.254105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.703537, 17.573215, 20.840147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.410000, 17.844181, 20.860474>,  <22.233877, 18.006762, 20.872669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.410000, 17.844181, 20.860474>,  <22.703537, 17.573215, 20.840147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.410000, 17.844181, 20.860474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142810, -0.080707, -0.986454,
		-0.664139, -0.731159, 0.155968,
		-0.733842, 0.677416, 0.050816,
		22.189848, 18.047405, 20.875719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.040470, 17.287739, 20.528023>,  <22.703537, 17.573215, 20.840147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.040470, 17.287739, 20.528023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.997570, 17.685410, 20.523779>,  <21.971830, 17.924011, 20.521233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.997570, 17.685410, 20.523779>,  <22.040470, 17.287739, 20.528023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.997570, 17.685410, 20.523779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431763, -0.056186, -0.900236,
		-0.895588, -0.091970, 0.435274,
		-0.107250, 0.994176, -0.010610,
		21.965395, 17.983662, 20.520596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.438555, 17.353649, 20.111923>,  <22.040470, 17.287739, 20.528023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.438555, 17.353649, 20.111923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.615681, 17.711720, 20.091637>,  <21.721956, 17.926561, 20.079466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.615681, 17.711720, 20.091637>,  <21.438555, 17.353649, 20.111923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.615681, 17.711720, 20.091637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086240, -0.013776, -0.996179,
		-0.892456, 0.445496, 0.071100,
		0.442815, 0.895178, -0.050714,
		21.748526, 17.980272, 20.076422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.027802, 17.690506, 19.680798>,  <21.438555, 17.353649, 20.111923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.027802, 17.690506, 19.680798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.372272, 17.892235, 19.655392>,  <21.578955, 18.013273, 19.640148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.372272, 17.892235, 19.655392>,  <21.027802, 17.690506, 19.680798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.372272, 17.892235, 19.655392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140811, 0.116632, -0.983143,
		-0.488414, 0.855602, 0.171455,
		0.861176, 0.504323, -0.063513,
		21.630625, 18.043531, 19.636337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.824934, 18.290785, 19.248245>,  <21.027802, 17.690506, 19.680798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.824934, 18.290785, 19.248245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.216923, 18.211338, 19.254034>,  <21.452116, 18.163670, 19.257507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.216923, 18.211338, 19.254034>,  <20.824934, 18.290785, 19.248245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.216923, 18.211338, 19.254034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029994, 0.075356, -0.996706,
		0.196870, 0.977176, 0.079804,
		0.979971, -0.198615, 0.014474,
		21.510914, 18.151754, 19.258377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.147453, 18.741285, 18.696783>,  <20.824934, 18.290785, 19.248245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.147453, 18.741285, 18.696783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.413876, 18.456669, 18.786297>,  <21.573729, 18.285900, 18.840006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.413876, 18.456669, 18.786297>,  <21.147453, 18.741285, 18.696783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.413876, 18.456669, 18.786297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187141, -0.131015, -0.973557,
		0.722044, 0.690323, 0.045895,
		0.666056, -0.711540, 0.223786,
		21.613693, 18.243206, 18.853434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.752432, 18.947819, 18.242243>,  <21.147453, 18.741285, 18.696783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.752432, 18.947819, 18.242243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.844124, 18.576576, 18.359594>,  <21.899139, 18.353830, 18.430004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.844124, 18.576576, 18.359594>,  <21.752432, 18.947819, 18.242243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.844124, 18.576576, 18.359594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137492, -0.267507, -0.953696,
		0.963612, 0.258954, 0.066286,
		0.229231, -0.928107, 0.293377,
		21.912893, 18.298143, 18.447607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.319189, 18.808161, 17.917862>,  <21.752432, 18.947819, 18.242243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.319189, 18.808161, 17.917862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.173771, 18.446167, 18.006260>,  <22.086519, 18.228971, 18.059299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.173771, 18.446167, 18.006260>,  <22.319189, 18.808161, 17.917862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.173771, 18.446167, 18.006260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208419, -0.310227, -0.927535,
		0.907963, -0.291142, 0.301398,
		-0.363546, -0.904984, 0.220994,
		22.064707, 18.174671, 18.072557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.761141, 18.323980, 17.612906>,  <22.319189, 18.808161, 17.917862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.761141, 18.323980, 17.612906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.405178, 18.148869, 17.664152>,  <22.191601, 18.043800, 17.694901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.405178, 18.148869, 17.664152>,  <22.761141, 18.323980, 17.612906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.405178, 18.148869, 17.664152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127238, -0.507965, -0.851928,
		0.438038, -0.741835, 0.507744,
		-0.889906, -0.437781, 0.128118,
		22.138206, 18.017534, 17.702587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.852547, 17.605368, 17.384462>,  <22.761141, 18.323980, 17.612906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.852547, 17.605368, 17.384462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.456242, 17.650501, 17.354380>,  <22.218458, 17.677582, 17.336330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.456242, 17.650501, 17.354380>,  <22.852547, 17.605368, 17.384462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.456242, 17.650501, 17.354380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015918, -0.454003, -0.890858,
		-0.134663, -0.883827, 0.448014,
		-0.990764, 0.112835, -0.075206,
		22.159012, 17.684351, 17.331818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.614428, 16.940237, 17.183002>,  <22.852547, 17.605368, 17.384462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.614428, 16.940237, 17.183002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.318085, 17.199032, 17.110846>,  <22.140280, 17.354309, 17.067551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.318085, 17.199032, 17.110846>,  <22.614428, 16.940237, 17.183002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.318085, 17.199032, 17.110846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151692, -0.422807, -0.893434,
		-0.654311, -0.634541, 0.411382,
		-0.740855, 0.646987, -0.180392,
		22.095827, 17.393127, 17.056728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.068886, 16.574181, 16.818832>,  <22.614428, 16.940237, 17.183002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.068886, 16.574181, 16.818832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.024021, 16.962540, 16.734186>,  <21.997103, 17.195555, 16.683397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.024021, 16.962540, 16.734186>,  <22.068886, 16.574181, 16.818832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.024021, 16.962540, 16.734186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122792, -0.197787, -0.972524,
		-0.986074, -0.135063, -0.097035,
		-0.112160, 0.970896, -0.211617,
		21.990374, 17.253809, 16.670700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.766235, 16.525452, 16.200483>,  <22.068886, 16.574181, 16.818832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.766235, 16.525452, 16.200483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.874310, 16.910042, 16.180218>,  <21.939154, 17.140795, 16.168058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.874310, 16.910042, 16.180218>,  <21.766235, 16.525452, 16.200483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.874310, 16.910042, 16.180218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022410, -0.058886, -0.998013,
		-0.962547, 0.268514, -0.037457,
		0.270186, 0.961474, -0.050663,
		21.955366, 17.198484, 16.165018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.894346, 16.743542, 16.238894>,  <21.766235, 16.525452, 16.200483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.894346, 16.743542, 16.238894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.556038, 16.530968, 16.219923>,  <20.353052, 16.403423, 16.208540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.556038, 16.530968, 16.219923>,  <20.894346, 16.743542, 16.238894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.556038, 16.530968, 16.219923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040686, -0.024389, 0.998874,
		-0.531992, 0.846749, -0.000995,
		-0.845771, -0.531434, -0.047426,
		20.302307, 16.371538, 16.205696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.433197, 17.084076, 16.785234>,  <20.894346, 16.743542, 16.238894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.433197, 17.084076, 16.785234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.291409, 16.721157, 16.694756>,  <20.206335, 16.503407, 16.640469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.291409, 16.721157, 16.694756>,  <20.433197, 17.084076, 16.785234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.291409, 16.721157, 16.694756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101220, -0.203251, 0.973881,
		-0.929573, 0.368107, -0.019790,
		-0.354470, -0.907296, -0.226196,
		20.185068, 16.448969, 16.626896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.812750, 16.978762, 17.156523>,  <20.433197, 17.084076, 16.785234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.812750, 16.978762, 17.156523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.932568, 16.604256, 17.083113>,  <20.004459, 16.379553, 17.039066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.932568, 16.604256, 17.083113>,  <19.812750, 16.978762, 17.156523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.932568, 16.604256, 17.083113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042924, -0.205389, 0.977738,
		-0.953116, -0.285000, -0.101712,
		0.299546, -0.936264, -0.183527,
		20.022432, 16.323376, 17.028055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.457565, 16.579504, 17.672199>,  <19.812750, 16.978762, 17.156523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.457565, 16.579504, 17.672199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.746441, 16.337212, 17.538614>,  <19.919765, 16.191835, 17.458464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.746441, 16.337212, 17.538614>,  <19.457565, 16.579504, 17.672199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.746441, 16.337212, 17.538614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095294, -0.391084, 0.915408,
		-0.685101, -0.692922, -0.224714,
		0.722188, -0.605733, -0.333963,
		19.963097, 16.155491, 17.438425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.278723, 15.857448, 17.882074>,  <19.457565, 16.579504, 17.672199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.278723, 15.857448, 17.882074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.676693, 15.876869, 17.846823>,  <19.915476, 15.888522, 17.825672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.676693, 15.876869, 17.846823>,  <19.278723, 15.857448, 17.882074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.676693, 15.876869, 17.846823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100246, -0.553490, 0.826801,
		-0.008633, -0.831439, -0.555549,
		0.994925, 0.048553, -0.088127,
		19.975170, 15.891436, 17.820385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.454906, 15.318792, 18.205379>,  <19.278723, 15.857448, 17.882074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.454906, 15.318792, 18.205379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.803543, 15.514675, 18.196280>,  <20.012724, 15.632205, 18.190821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.803543, 15.514675, 18.196280>,  <19.454906, 15.318792, 18.205379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.803543, 15.514675, 18.196280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239732, -0.385285, 0.891114,
		0.427621, -0.782139, -0.453209,
		0.871590, 0.489708, -0.022748,
		20.065020, 15.661588, 18.189455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.845606, 14.903825, 18.533075>,  <19.454906, 15.318792, 18.205379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.845606, 14.903825, 18.533075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.040524, 15.253025, 18.541225>,  <20.157475, 15.462545, 18.546116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.040524, 15.253025, 18.541225>,  <19.845606, 14.903825, 18.533075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.040524, 15.253025, 18.541225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368908, -0.226954, 0.901332,
		0.791487, -0.431697, -0.432650,
		0.487294, 0.873001, 0.020375,
		20.186712, 15.514925, 18.547338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.584160, 14.782520, 18.853676>,  <19.845606, 14.903825, 18.533075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.584160, 14.782520, 18.853676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.526531, 15.177433, 18.880569>,  <20.491955, 15.414380, 18.896706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.526531, 15.177433, 18.880569>,  <20.584160, 14.782520, 18.853676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.526531, 15.177433, 18.880569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196885, -0.037987, 0.979690,
		0.969784, 0.154381, -0.188908,
		-0.144069, 0.987281, 0.067234,
		20.483311, 15.473618, 18.900740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.103245, 15.075701, 19.391365>,  <20.584160, 14.782520, 18.853676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.103245, 15.075701, 19.391365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.803375, 15.340298, 19.383192>,  <20.623453, 15.499056, 19.378288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.803375, 15.340298, 19.383192>,  <21.103245, 15.075701, 19.391365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.803375, 15.340298, 19.383192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018287, 0.051569, 0.998502,
		0.661556, 0.748176, -0.050757,
		-0.749673, 0.661493, -0.020434,
		20.578474, 15.538746, 19.377062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.364117, 15.589400, 19.778572>,  <21.103245, 15.075701, 19.391365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.364117, 15.589400, 19.778572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.968285, 15.641857, 19.754784>,  <20.730785, 15.673331, 19.740511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.968285, 15.641857, 19.754784>,  <21.364117, 15.589400, 19.778572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.968285, 15.641857, 19.754784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034364, 0.186005, 0.981948,
		0.139837, 0.973758, -0.179560,
		-0.989578, 0.131142, -0.059472,
		20.671412, 15.681200, 19.736942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.268988, 16.300453, 20.095556>,  <21.364117, 15.589400, 19.778572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.268988, 16.300453, 20.095556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.930233, 16.088486, 20.113319>,  <20.726980, 15.961306, 20.123978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.930233, 16.088486, 20.113319>,  <21.268988, 16.300453, 20.095556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.930233, 16.088486, 20.113319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015929, 0.108746, 0.993942,
		-0.531536, 0.841048, -0.100537,
		-0.846886, -0.529918, 0.044406,
		20.676167, 15.929510, 20.126640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.802258, 16.695154, 20.426819>,  <21.268988, 16.300453, 20.095556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.802258, 16.695154, 20.426819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.645061, 16.329163, 20.463415>,  <20.550743, 16.109568, 20.485373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.645061, 16.329163, 20.463415>,  <20.802258, 16.695154, 20.426819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.645061, 16.329163, 20.463415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146739, 0.160622, 0.976047,
		-0.907759, 0.370152, -0.197387,
		-0.392990, -0.914980, 0.091491,
		20.527164, 16.054668, 20.490862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150864, 16.892603, 20.694967>,  <20.802258, 16.695154, 20.426819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150864, 16.892603, 20.694967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.238171, 16.509480, 20.769760>,  <20.290554, 16.279606, 20.814636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.238171, 16.509480, 20.769760>,  <20.150864, 16.892603, 20.694967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.238171, 16.509480, 20.769760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248243, 0.130808, 0.959825,
		-0.943788, -0.255914, -0.209218,
		0.218265, -0.957808, 0.186984,
		20.303650, 16.222137, 20.825855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.696030, 16.768661, 21.171322>,  <20.150864, 16.892603, 20.694967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.696030, 16.768661, 21.171322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.956593, 16.465309, 21.180527>,  <20.112930, 16.283298, 21.186050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.956593, 16.465309, 21.180527>,  <19.696030, 16.768661, 21.171322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.956593, 16.465309, 21.180527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122451, -0.075150, 0.989625,
		-0.748784, -0.647465, -0.141818,
		0.651406, -0.758381, 0.023012,
		20.152014, 16.237795, 21.187429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.117483, 16.399454, 20.784769>,  <19.696030, 16.768661, 21.171322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.117483, 16.399454, 20.784769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.727654, 16.487144, 20.766239>,  <18.493755, 16.539759, 20.755121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.727654, 16.487144, 20.766239>,  <19.117483, 16.399454, 20.784769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.727654, 16.487144, 20.766239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065303, 0.080125, -0.994643,
		-0.214340, -0.972379, -0.092404,
		-0.974574, 0.219226, -0.046325,
		18.435282, 16.552912, 20.752342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.849045, 15.965144, 20.225008>,  <19.117483, 16.399454, 20.784769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.849045, 15.965144, 20.225008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.579617, 16.254951, 20.283491>,  <18.417959, 16.428837, 20.318581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.579617, 16.254951, 20.283491>,  <18.849045, 15.965144, 20.225008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.579617, 16.254951, 20.283491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037182, 0.230774, -0.972297,
		-0.738187, -0.649474, -0.182382,
		-0.673570, 0.724518, 0.146206,
		18.377546, 16.472307, 20.327353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.288887, 15.748071, 19.787542>,  <18.849045, 15.965144, 20.225008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.288887, 15.748071, 19.787542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.281811, 16.141739, 19.858080>,  <18.277565, 16.377939, 19.900402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.281811, 16.141739, 19.858080>,  <18.288887, 15.748071, 19.787542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.281811, 16.141739, 19.858080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064184, 0.174892, -0.982493,
		-0.997781, -0.028698, 0.060074,
		-0.017689, 0.984169, 0.176346,
		18.276505, 16.436989, 19.910984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.747234, 16.055984, 19.392120>,  <18.288887, 15.748071, 19.787542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.747234, 16.055984, 19.392120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.959229, 16.383617, 19.479958>,  <18.086426, 16.580196, 19.532660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.959229, 16.383617, 19.479958>,  <17.747234, 16.055984, 19.392120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.959229, 16.383617, 19.479958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129021, 0.333821, -0.933765,
		-0.838133, 0.466551, 0.282600,
		0.529987, 0.819081, 0.219591,
		18.118225, 16.629341, 19.545835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364870, 16.488380, 19.106012>,  <17.747234, 16.055984, 19.392120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364870, 16.488380, 19.106012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.713661, 16.682606, 19.130945>,  <17.922935, 16.799141, 19.145905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.713661, 16.682606, 19.130945>,  <17.364870, 16.488380, 19.106012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.713661, 16.682606, 19.130945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177727, 0.432629, -0.883881,
		-0.456148, 0.759645, 0.463539,
		0.871976, 0.485564, 0.062334,
		17.975254, 16.828276, 19.149645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.223022, 17.110893, 18.942165>,  <17.364870, 16.488380, 19.106012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.223022, 17.110893, 18.942165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.617889, 17.080349, 18.886061>,  <17.854809, 17.062021, 18.852398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.617889, 17.080349, 18.886061>,  <17.223022, 17.110893, 18.942165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.617889, 17.080349, 18.886061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118832, 0.235548, -0.964570,
		0.106696, 0.968858, 0.223451,
		0.987165, -0.076362, -0.140263,
		17.914040, 17.057440, 18.843983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.441999, 17.742998, 18.710432>,  <17.223022, 17.110893, 18.942165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.441999, 17.742998, 18.710432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.722786, 17.497097, 18.566587>,  <17.891258, 17.349556, 18.480280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.722786, 17.497097, 18.566587>,  <17.441999, 17.742998, 18.710432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.722786, 17.497097, 18.566587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211792, 0.301899, -0.929516,
		0.679991, 0.728652, 0.081723,
		0.701966, -0.614755, -0.359612,
		17.933376, 17.312670, 18.458704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.865360, 18.060034, 18.161106>,  <17.441999, 17.742998, 18.710432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.865360, 18.060034, 18.161106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.872520, 17.663570, 18.108511>,  <17.876816, 17.425694, 18.076954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.872520, 17.663570, 18.108511>,  <17.865360, 18.060034, 18.161106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.872520, 17.663570, 18.108511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245877, 0.123105, -0.961452,
		0.969136, 0.049539, -0.241499,
		0.017900, -0.991157, -0.131486,
		17.877890, 17.366224, 18.069065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126085, 18.040487, 17.557373>,  <17.865360, 18.060034, 18.161106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.126085, 18.040487, 17.557373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.990475, 17.666542, 17.599497>,  <17.909107, 17.442175, 17.624771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.990475, 17.666542, 17.599497>,  <18.126085, 18.040487, 17.557373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.990475, 17.666542, 17.599497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284563, -0.004792, -0.958645,
		0.896707, -0.354975, -0.264403,
		-0.339028, -0.934863, 0.105310,
		17.888765, 17.386084, 17.631090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390661, 17.643669, 17.016136>,  <18.126085, 18.040487, 17.557373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390661, 17.643669, 17.016136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.077732, 17.426788, 17.138765>,  <17.889975, 17.296659, 17.212343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.077732, 17.426788, 17.138765>,  <18.390661, 17.643669, 17.016136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.077732, 17.426788, 17.138765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346441, -0.030259, -0.937584,
		0.517636, -0.839703, -0.164169,
		-0.782325, -0.542201, 0.306571,
		17.843035, 17.264128, 17.230736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.391624, 17.104893, 16.627632>,  <18.390661, 17.643669, 17.016136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.391624, 17.104893, 16.627632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.013790, 17.118172, 16.758266>,  <17.787090, 17.126139, 16.836647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.013790, 17.118172, 16.758266>,  <18.391624, 17.104893, 16.627632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.013790, 17.118172, 16.758266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328214, -0.077222, -0.941442,
		-0.006030, -0.996461, 0.083837,
		-0.944584, 0.033193, 0.326587,
		17.730415, 17.128130, 16.856243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.049114, 16.511717, 16.342609>,  <18.391624, 17.104893, 16.627632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.049114, 16.511717, 16.342609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.751690, 16.751068, 16.461985>,  <17.573236, 16.894678, 16.533609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.751690, 16.751068, 16.461985>,  <18.049114, 16.511717, 16.342609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.751690, 16.751068, 16.461985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431554, -0.088520, -0.897733,
		-0.510765, -0.796310, 0.324052,
		-0.743559, 0.598377, 0.298438,
		17.528622, 16.930582, 16.551516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.471518, 16.178516, 16.217482>,  <18.049114, 16.511717, 16.342609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.471518, 16.178516, 16.217482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.346561, 16.557693, 16.242207>,  <17.271587, 16.785200, 16.257042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.346561, 16.557693, 16.242207>,  <17.471518, 16.178516, 16.217482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.346561, 16.557693, 16.242207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472929, -0.098760, -0.875548,
		-0.823863, -0.302745, 0.479161,
		-0.312389, 0.947941, 0.061812,
		17.252844, 16.842075, 16.260750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.695044, 16.199137, 16.127304>,  <17.471518, 16.178516, 16.217482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.695044, 16.199137, 16.127304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.809113, 16.568901, 16.026001>,  <16.877554, 16.790760, 15.965219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.809113, 16.568901, 16.026001>,  <16.695044, 16.199137, 16.127304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.809113, 16.568901, 16.026001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515297, -0.074930, -0.853730,
		-0.808174, 0.373965, 0.454978,
		0.285173, 0.924411, -0.253259,
		16.894665, 16.846224, 15.950024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<13.810233, 19.526880, 21.354773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.187007, 19.658337, 21.382357>,  <14.413071, 19.737211, 21.398907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.187007, 19.658337, 21.382357>,  <13.810233, 19.526880, 21.354773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.187007, 19.658337, 21.382357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035471, -0.301584, 0.952780,
		0.333920, -0.895010, -0.295729,
		0.941934, 0.328642, 0.068958,
		14.469587, 19.756929, 21.403044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.280160, 18.971142, 21.630501>,  <13.810233, 19.526880, 21.354773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.280160, 18.971142, 21.630501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.453071, 19.321503, 21.716227>,  <14.556817, 19.531719, 21.767662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.453071, 19.321503, 21.716227>,  <14.280160, 18.971142, 21.630501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.453071, 19.321503, 21.716227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161694, -0.309109, 0.937180,
		0.887126, -0.370466, -0.275249,
		0.432276, 0.875903, 0.214316,
		14.582753, 19.584274, 21.780521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.717397, 18.685499, 22.158340>,  <14.280160, 18.971142, 21.630501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.717397, 18.685499, 22.158340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.787442, 19.079102, 22.171429>,  <14.829470, 19.315262, 22.179281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.787442, 19.079102, 22.171429>,  <14.717397, 18.685499, 22.158340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.787442, 19.079102, 22.171429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507361, -0.118672, 0.853523,
		0.843754, -0.132861, -0.520026,
		0.175113, 0.984004, 0.032721,
		14.839976, 19.374304, 22.181246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.526363, 18.755671, 22.209217>,  <14.717397, 18.685499, 22.158340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.526363, 18.755671, 22.209217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.350135, 19.094032, 22.329445>,  <15.244398, 19.297049, 22.401583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.350135, 19.094032, 22.329445>,  <15.526363, 18.755671, 22.209217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.350135, 19.094032, 22.329445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511469, -0.038634, 0.858433,
		0.737764, 0.531934, -0.415632,
		-0.440572, 0.845904, 0.300570,
		15.217963, 19.347803, 22.419617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064413, 19.200422, 22.549547>,  <15.526363, 18.755671, 22.209217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.064413, 19.200422, 22.549547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.700978, 19.286144, 22.692959>,  <15.482918, 19.337578, 22.779005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.700978, 19.286144, 22.692959>,  <16.064413, 19.200422, 22.549547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.700978, 19.286144, 22.692959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327316, -0.167945, 0.929870,
		0.259488, 0.962221, 0.082447,
		-0.908587, 0.214304, 0.358530,
		15.428402, 19.350435, 22.800518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.175318, 19.637127, 23.087826>,  <16.064413, 19.200422, 22.549547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.175318, 19.637127, 23.087826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.794734, 19.549515, 23.174313>,  <15.566383, 19.496948, 23.226204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.794734, 19.549515, 23.174313>,  <16.175318, 19.637127, 23.087826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.794734, 19.549515, 23.174313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229155, -0.035180, 0.972754,
		-0.205457, 0.975084, 0.083664,
		-0.951460, -0.219031, 0.216217,
		15.509296, 19.483805, 23.239178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.930185, 20.128189, 23.741840>,  <16.175318, 19.637127, 23.087826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.930185, 20.128189, 23.741840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.699313, 19.802109, 23.722603>,  <15.560790, 19.606461, 23.711061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.699313, 19.802109, 23.722603>,  <15.930185, 20.128189, 23.741840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.699313, 19.802109, 23.722603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185741, -0.188401, 0.964368,
		-0.795212, 0.547682, 0.260157,
		-0.577181, -0.815199, -0.048092,
		15.526159, 19.557549, 23.708176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.497331, 20.208351, 24.307327>,  <15.930185, 20.128189, 23.741840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.497331, 20.208351, 24.307327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.501752, 19.822208, 24.203051>,  <15.504404, 19.590523, 24.140484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.501752, 19.822208, 24.203051>,  <15.497331, 20.208351, 24.307327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.501752, 19.822208, 24.203051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077052, -0.259112, 0.962769,
		-0.996966, -0.030728, 0.071519,
		0.011052, -0.965359, -0.260693,
		15.505068, 19.532600, 24.124844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.995318, 19.922960, 24.683401>,  <15.497331, 20.208351, 24.307327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.995318, 19.922960, 24.683401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.254846, 19.638935, 24.573971>,  <15.410562, 19.468519, 24.508312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.254846, 19.638935, 24.573971>,  <14.995318, 19.922960, 24.683401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.254846, 19.638935, 24.573971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174934, -0.210709, 0.961769,
		-0.740563, -0.671870, -0.012498,
		0.648817, -0.710064, -0.273576,
		15.449491, 19.425917, 24.491898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.786784, 19.303524, 25.025330>,  <14.995318, 19.922960, 24.683401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.786784, 19.303524, 25.025330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.175982, 19.275887, 24.937235>,  <15.409502, 19.259304, 24.884378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.175982, 19.275887, 24.937235>,  <14.786784, 19.303524, 25.025330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.175982, 19.275887, 24.937235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201224, -0.213535, 0.955987,
		-0.113078, -0.974489, -0.193867,
		0.972997, -0.069090, -0.220237,
		15.467881, 19.255159, 24.871164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.951195, 18.726334, 25.207851>,  <14.786784, 19.303524, 25.025330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.951195, 18.726334, 25.207851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.306327, 18.910240, 25.200140>,  <15.519406, 19.020584, 25.195513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.306327, 18.910240, 25.200140>,  <14.951195, 18.726334, 25.207851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.306327, 18.910240, 25.200140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223913, -0.395027, 0.890964,
		0.402021, -0.795341, -0.453665,
		0.887830, 0.459768, -0.019278,
		15.572676, 19.048170, 25.194357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391065, 18.319592, 25.476492>,  <14.951195, 18.726334, 25.207851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.391065, 18.319592, 25.476492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.579068, 18.669506, 25.523556>,  <15.691871, 18.879454, 25.551794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.579068, 18.669506, 25.523556>,  <15.391065, 18.319592, 25.476492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.579068, 18.669506, 25.523556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368373, -0.315543, 0.874491,
		0.802118, -0.367676, -0.470555,
		0.470009, 0.874784, 0.117661,
		15.720071, 18.931942, 25.558853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.135698, 18.319698, 25.715866>,  <15.391065, 18.319592, 25.476492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.135698, 18.319698, 25.715866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.968801, 18.654270, 25.858015>,  <15.868662, 18.855013, 25.943304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.968801, 18.654270, 25.858015>,  <16.135698, 18.319698, 25.715866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.968801, 18.654270, 25.858015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326617, -0.226894, 0.917519,
		0.848073, 0.498902, -0.178521,
		-0.417246, 0.836431, 0.355372,
		15.843627, 18.905199, 25.964626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.756437, 18.458508, 26.020445>,  <16.135698, 18.319698, 25.715866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.756437, 18.458508, 26.020445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.483582, 18.745377, 26.077501>,  <16.319868, 18.917498, 26.111734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.483582, 18.745377, 26.077501>,  <16.756437, 18.458508, 26.020445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.483582, 18.745377, 26.077501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649317, -0.504393, -0.569188,
		-0.336261, -0.480885, 0.809740,
		-0.682141, 0.717174, 0.142639,
		16.278940, 18.960529, 26.120293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.949423, 17.663830, 26.192146>,  <16.756437, 18.458508, 26.020445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.949423, 17.663830, 26.192146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.137691, 17.310913, 26.189894>,  <17.250652, 17.099163, 26.188541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.137691, 17.310913, 26.189894>,  <16.949423, 17.663830, 26.192146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.137691, 17.310913, 26.189894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056624, -0.023837, -0.998111,
		0.880489, 0.470103, -0.061178,
		0.470674, -0.882289, -0.005631,
		17.278894, 17.046227, 26.188204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.466742, 17.766628, 25.734970>,  <16.949423, 17.663830, 26.192146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.466742, 17.766628, 25.734970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.382542, 17.378605, 25.783426>,  <17.332022, 17.145790, 25.812500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.382542, 17.378605, 25.783426>,  <17.466742, 17.766628, 25.734970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.382542, 17.378605, 25.783426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046785, -0.133773, -0.989907,
		0.976474, -0.202707, 0.073544,
		-0.210499, -0.970059, 0.121142,
		17.319391, 17.087587, 25.819769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.970917, 17.425785, 25.331324>,  <17.466742, 17.766628, 25.734970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.970917, 17.425785, 25.331324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.657085, 17.182671, 25.380367>,  <17.468786, 17.036802, 25.409794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.657085, 17.182671, 25.380367>,  <17.970917, 17.425785, 25.331324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.657085, 17.182671, 25.380367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053711, -0.263624, -0.963129,
		0.617700, -0.749065, 0.239478,
		-0.784578, -0.607787, 0.122607,
		17.421713, 17.000334, 25.417149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.103327, 16.761518, 25.024672>,  <17.970917, 17.425785, 25.331324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.103327, 16.761518, 25.024672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.704205, 16.748085, 25.047503>,  <17.464731, 16.740025, 25.061201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.704205, 16.748085, 25.047503>,  <18.103327, 16.761518, 25.024672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.704205, 16.748085, 25.047503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042839, -0.329896, -0.943045,
		0.050501, -0.943420, 0.327733,
		-0.997805, -0.033585, 0.057075,
		17.404863, 16.738010, 25.064625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.979967, 16.146681, 24.830114>,  <18.103327, 16.761518, 25.024672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.979967, 16.146681, 24.830114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.630375, 16.332245, 24.772228>,  <17.420620, 16.443583, 24.737497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.630375, 16.332245, 24.772228>,  <17.979967, 16.146681, 24.830114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.630375, 16.332245, 24.772228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041275, -0.367579, -0.929076,
		-0.484203, -0.806022, 0.340405,
		-0.873982, 0.463912, -0.144714,
		17.368179, 16.471418, 24.728815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.568426, 15.727615, 24.462429>,  <17.979967, 16.146681, 24.830114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.568426, 15.727615, 24.462429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.392780, 16.075222, 24.371227>,  <17.287394, 16.283787, 24.316505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.392780, 16.075222, 24.371227>,  <17.568426, 15.727615, 24.462429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.392780, 16.075222, 24.371227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021655, -0.243470, -0.969666,
		-0.898170, -0.430732, 0.088093,
		-0.439115, 0.869018, -0.228005,
		17.261045, 16.335928, 24.302826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.258577, 15.629364, 23.883514>,  <17.568426, 15.727615, 24.462429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.258577, 15.629364, 23.883514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.258636, 16.028362, 23.855219>,  <17.258673, 16.267761, 23.838242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.258636, 16.028362, 23.855219>,  <17.258577, 15.629364, 23.883514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.258636, 16.028362, 23.855219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105373, -0.070360, -0.991940,
		-0.994433, -0.007307, -0.105120,
		0.000148, 0.997495, -0.070738,
		17.258680, 16.327610, 23.833998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.793661, 15.744566, 23.393929>,  <17.258577, 15.629364, 23.883514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.793661, 15.744566, 23.393929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.989758, 16.093071, 23.403448>,  <17.107414, 16.302174, 23.409159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.989758, 16.093071, 23.403448>,  <16.793661, 15.744566, 23.393929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.989758, 16.093071, 23.403448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039307, 0.005175, -0.999214,
		-0.870700, 0.490790, -0.031709,
		0.490240, 0.871262, 0.023797,
		17.136829, 16.354450, 23.410587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.476517, 16.192730, 22.939329>,  <16.793661, 15.744566, 23.393929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.476517, 16.192730, 22.939329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.852020, 16.328568, 22.962698>,  <17.077322, 16.410070, 22.976719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.852020, 16.328568, 22.962698>,  <16.476517, 16.192730, 22.939329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.852020, 16.328568, 22.962698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023827, 0.105168, -0.994169,
		-0.343756, 0.934675, 0.090635,
		0.938757, 0.339592, 0.058422,
		17.133648, 16.430445, 22.980225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532919, 16.628714, 22.403328>,  <16.476517, 16.192730, 22.939329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532919, 16.628714, 22.403328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.919563, 16.577393, 22.492056>,  <17.151550, 16.546600, 22.545294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.919563, 16.577393, 22.492056>,  <16.532919, 16.628714, 22.403328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.919563, 16.577393, 22.492056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231120, 0.062619, -0.970908,
		0.110679, 0.989756, 0.090181,
		0.966609, -0.128302, 0.221821,
		17.209547, 16.538902, 22.558603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976734, 17.138760, 21.960098>,  <16.532919, 16.628714, 22.403328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.976734, 17.138760, 21.960098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.273430, 16.890564, 22.061935>,  <17.451447, 16.741648, 22.123037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.273430, 16.890564, 22.061935>,  <16.976734, 17.138760, 21.960098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.273430, 16.890564, 22.061935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417059, 0.129435, -0.899616,
		0.525248, 0.773460, 0.354787,
		0.741739, -0.620488, 0.254593,
		17.495951, 16.704418, 22.138313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.665886, 17.492458, 21.824459>,  <16.976734, 17.138760, 21.960098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.665886, 17.492458, 21.824459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.736198, 17.098766, 21.832428>,  <17.778385, 16.862551, 21.837210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.736198, 17.098766, 21.832428>,  <17.665886, 17.492458, 21.824459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.736198, 17.098766, 21.832428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537126, 0.078930, -0.839801,
		0.824983, 0.158321, 0.542528,
		0.175780, -0.984228, 0.019922,
		17.788933, 16.803497, 21.838406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.432358, 17.288715, 21.726259>,  <17.665886, 17.492458, 21.824459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.432358, 17.288715, 21.726259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.218262, 16.967106, 21.622675>,  <18.089804, 16.774139, 21.560524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.218262, 16.967106, 21.622675>,  <18.432358, 17.288715, 21.726259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218262, 16.967106, 21.622675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485305, -0.041780, -0.873346,
		0.691372, -0.593127, 0.412559,
		-0.535242, -0.804024, -0.258963,
		18.057690, 16.725899, 21.544987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.881710, 16.797651, 21.509037>,  <18.432358, 17.288715, 21.726259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.881710, 16.797651, 21.509037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.536003, 16.692760, 21.337324>,  <18.328579, 16.629826, 21.234297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.536003, 16.692760, 21.337324>,  <18.881710, 16.797651, 21.509037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.536003, 16.692760, 21.337324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390179, 0.189168, -0.901097,
		0.317498, -0.946283, -0.061176,
		-0.864266, -0.262227, -0.429280,
		18.276724, 16.614092, 21.208540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.389072, 16.257395, 21.584076>,  <18.881710, 16.797651, 21.509037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.389072, 16.257395, 21.584076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.778862, 16.169044, 21.600138>,  <20.012735, 16.116035, 21.609776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.778862, 16.169044, 21.600138>,  <19.389072, 16.257395, 21.584076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.778862, 16.169044, 21.600138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060669, -0.086885, 0.994369,
		-0.216141, -0.971425, -0.098067,
		0.974475, -0.220874, 0.040156,
		20.071205, 16.102783, 21.612185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.459286, 15.549641, 21.882994>,  <19.389072, 16.257395, 21.584076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.459286, 15.549641, 21.882994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.798653, 15.758511, 21.917681>,  <20.002274, 15.883833, 21.938492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.798653, 15.758511, 21.917681>,  <19.459286, 15.549641, 21.882994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798653, 15.758511, 21.917681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025212, -0.123774, 0.991990,
		0.528726, -0.843809, -0.091847,
		0.848418, 0.522175, 0.086717,
		20.053179, 15.915163, 21.943695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.932085, 15.133465, 22.433668>,  <19.459286, 15.549641, 21.882994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.932085, 15.133465, 22.433668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.077312, 15.505653, 22.414049>,  <20.164450, 15.728967, 22.402277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.077312, 15.505653, 22.414049>,  <19.932085, 15.133465, 22.433668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.077312, 15.505653, 22.414049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156699, -0.009084, 0.987605,
		0.918491, -0.366254, -0.149102,
		0.363069, 0.930471, -0.049048,
		20.186234, 15.784795, 22.399334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.577618, 15.186132, 22.868490>,  <19.932085, 15.133465, 22.433668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.577618, 15.186132, 22.868490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.465721, 15.568771, 22.835825>,  <20.398584, 15.798354, 22.816225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.465721, 15.568771, 22.835825>,  <20.577618, 15.186132, 22.868490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.465721, 15.568771, 22.835825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165491, 0.131831, 0.977360,
		0.945705, 0.259893, -0.195187,
		-0.279740, 0.956596, -0.081663,
		20.381800, 15.855750, 22.811325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.101622, 15.604510, 23.142878>,  <20.577618, 15.186132, 22.868490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.101622, 15.604510, 23.142878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.782295, 15.845379, 23.146502>,  <20.590700, 15.989901, 23.148676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.782295, 15.845379, 23.146502>,  <21.101622, 15.604510, 23.142878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.782295, 15.845379, 23.146502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079875, 0.090957, 0.992646,
		0.596920, 0.793168, -0.120711,
		-0.798315, 0.602172, 0.009060,
		20.542801, 16.026031, 23.149220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.333315, 16.197250, 23.534039>,  <21.101622, 15.604510, 23.142878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.333315, 16.197250, 23.534039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.933681, 16.198109, 23.551123>,  <20.693901, 16.198624, 23.561373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.933681, 16.198109, 23.551123>,  <21.333315, 16.197250, 23.534039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.933681, 16.198109, 23.551123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042695, 0.105896, 0.993460,
		-0.002389, 0.994375, -0.105891,
		-0.999085, 0.002148, 0.042708,
		20.633955, 16.198753, 23.563934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.100262, 16.749456, 23.871534>,  <21.333315, 16.197250, 23.534039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.100262, 16.749456, 23.871534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.816551, 16.470356, 23.911676>,  <20.646324, 16.302896, 23.935762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.816551, 16.470356, 23.911676>,  <21.100262, 16.749456, 23.871534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.816551, 16.470356, 23.911676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067829, 0.074150, 0.994938,
		-0.701660, 0.712492, -0.005265,
		-0.709276, -0.697751, 0.100356,
		20.603769, 16.261030, 23.941784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.798824, 17.420475, 23.849804>,  <21.100262, 16.749456, 23.871534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.798824, 17.420475, 23.849804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.041260, 17.738602, 23.854361>,  <21.186722, 17.929478, 23.857096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.041260, 17.738602, 23.854361>,  <20.798824, 17.420475, 23.849804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.041260, 17.738602, 23.854361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060391, -0.031730, -0.997671,
		-0.793101, 0.605365, -0.067261,
		0.606089, 0.795316, 0.011393,
		21.223085, 17.977196, 23.857779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.521870, 17.829906, 23.267305>,  <20.798824, 17.420475, 23.849804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.521870, 17.829906, 23.267305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.891125, 17.941254, 23.373383>,  <21.112679, 18.008062, 23.437029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.891125, 17.941254, 23.373383>,  <20.521870, 17.829906, 23.267305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.891125, 17.941254, 23.373383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261152, 0.052211, -0.963885,
		-0.282162, 0.959054, -0.024498,
		0.923138, 0.278369, 0.265191,
		21.168066, 18.024765, 23.452940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.805347, 18.307207, 22.742907>,  <20.521870, 17.829906, 23.267305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.805347, 18.307207, 22.742907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.138584, 18.227615, 22.949350>,  <21.338526, 18.179861, 23.073215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.138584, 18.227615, 22.949350>,  <20.805347, 18.307207, 22.742907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.138584, 18.227615, 22.949350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543123, 0.117529, -0.831387,
		0.104771, 0.972931, 0.205983,
		0.833090, -0.198980, 0.516108,
		21.388512, 18.167921, 23.104183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.188330, 18.929811, 22.653509>,  <20.805347, 18.307207, 22.742907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.188330, 18.929811, 22.653509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.440819, 18.633774, 22.746305>,  <21.592312, 18.456152, 22.801983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.440819, 18.633774, 22.746305>,  <21.188330, 18.929811, 22.653509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.440819, 18.633774, 22.746305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322470, -0.021608, -0.946333,
		0.705387, 0.672157, 0.225018,
		0.631222, -0.740093, 0.231992,
		21.630186, 18.411745, 22.815903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.937740, 19.137791, 22.562544>,  <21.188330, 18.929811, 22.653509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.937740, 19.137791, 22.562544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.904545, 18.740253, 22.533173>,  <21.884628, 18.501732, 22.515551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.904545, 18.740253, 22.533173>,  <21.937740, 19.137791, 22.562544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.904545, 18.740253, 22.533173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134301, 0.061855, -0.989008,
		0.987460, -0.091937, 0.128340,
		-0.082988, -0.993842, -0.073426,
		21.879648, 18.442101, 22.511145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.569679, 19.004784, 22.196856>,  <21.937740, 19.137791, 22.562544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.569679, 19.004784, 22.196856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.301655, 18.709698, 22.163868>,  <22.140841, 18.532646, 22.144075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.301655, 18.709698, 22.163868>,  <22.569679, 19.004784, 22.196856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301655, 18.709698, 22.163868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173151, -0.047295, -0.983759,
		0.721831, -0.673456, 0.159426,
		-0.670059, -0.737713, -0.082470,
		22.100637, 18.488384, 22.139128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.952028, 18.430508, 21.886171>,  <22.569679, 19.004784, 22.196856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.952028, 18.430508, 21.886171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.562920, 18.357273, 21.829334>,  <22.329454, 18.313332, 21.795231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.562920, 18.357273, 21.829334>,  <22.952028, 18.430508, 21.886171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.562920, 18.357273, 21.829334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151945, -0.040880, -0.987543,
		0.174999, -0.982246, 0.067586,
		-0.972773, -0.183088, -0.142094,
		22.271088, 18.302347, 21.786707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<17.852505, 20.376291, 25.808296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.493801, 20.406612, 25.633904>,  <17.278580, 20.424805, 25.529268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.493801, 20.406612, 25.633904>,  <17.852505, 20.376291, 25.808296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.493801, 20.406612, 25.633904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436260, 0.316592, -0.842287,
		0.074178, -0.945528, -0.316977,
		-0.896758, 0.075806, -0.435980,
		17.224773, 20.429354, 25.503109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.867584, 20.070362, 25.171146>,  <17.852505, 20.376291, 25.808296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.867584, 20.070362, 25.171146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.541885, 20.300716, 25.141863>,  <17.346466, 20.438929, 25.124292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.541885, 20.300716, 25.141863>,  <17.867584, 20.070362, 25.171146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.541885, 20.300716, 25.141863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354046, 0.392690, -0.848791,
		-0.460057, -0.717045, -0.523636,
		-0.814247, 0.575883, -0.073207,
		17.297611, 20.473482, 25.119902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.730808, 20.022213, 24.484398>,  <17.867584, 20.070362, 25.171146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.730808, 20.022213, 24.484398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.522938, 20.343864, 24.599855>,  <17.398216, 20.536856, 24.669130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.522938, 20.343864, 24.599855>,  <17.730808, 20.022213, 24.484398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.522938, 20.343864, 24.599855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201422, 0.443634, -0.873280,
		-0.830282, -0.395682, -0.392515,
		-0.519674, 0.804130, 0.288642,
		17.367035, 20.585104, 24.686447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.276123, 20.218618, 23.922823>,  <17.730808, 20.022213, 24.484398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.276123, 20.218618, 23.922823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.337093, 20.534977, 24.159887>,  <17.373674, 20.724792, 24.302126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.337093, 20.534977, 24.159887>,  <17.276123, 20.218618, 23.922823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.337093, 20.534977, 24.159887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030862, 0.595568, -0.802712,
		-0.987833, 0.140644, 0.066371,
		0.152425, 0.790897, 0.592662,
		17.382820, 20.772245, 24.337687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727739, 20.676910, 23.736130>,  <17.276123, 20.218618, 23.922823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727739, 20.676910, 23.736130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.016254, 20.907436, 23.889811>,  <17.189363, 21.045752, 23.982019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.016254, 20.907436, 23.889811>,  <16.727739, 20.676910, 23.736130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.016254, 20.907436, 23.889811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059716, 0.500884, -0.863452,
		-0.690058, 0.645739, 0.326866,
		0.721286, 0.576313, 0.384200,
		17.232641, 21.080330, 24.005070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443663, 21.335997, 23.588425>,  <16.727739, 20.676910, 23.736130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.443663, 21.335997, 23.588425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.837582, 21.390888, 23.631027>,  <17.073933, 21.423824, 23.656590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.837582, 21.390888, 23.631027>,  <16.443663, 21.335997, 23.588425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.837582, 21.390888, 23.631027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007062, 0.580986, -0.813883,
		-0.173568, 0.802261, 0.571184,
		0.984797, 0.137231, 0.106506,
		17.133020, 21.432058, 23.662979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532339, 22.011499, 23.420446>,  <16.443663, 21.335997, 23.588425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532339, 22.011499, 23.420446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.903339, 21.866161, 23.385302>,  <17.125940, 21.778959, 23.364216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.903339, 21.866161, 23.385302>,  <16.532339, 22.011499, 23.420446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.903339, 21.866161, 23.385302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147452, 0.571582, -0.807187,
		0.343507, 0.735713, 0.583720,
		0.927502, -0.363346, -0.087860,
		17.181589, 21.757158, 23.358944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.992651, 22.583696, 23.195719>,  <16.532339, 22.011499, 23.420446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.992651, 22.583696, 23.195719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.180725, 22.247677, 23.087465>,  <17.293570, 22.046064, 23.022512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.180725, 22.247677, 23.087465>,  <16.992651, 22.583696, 23.195719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.180725, 22.247677, 23.087465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218280, 0.407803, -0.886595,
		0.855148, 0.357792, 0.375109,
		0.470187, -0.840049, -0.270633,
		17.321781, 21.995663, 23.006275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.662689, 22.759514, 23.106901>,  <16.992651, 22.583696, 23.195719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.662689, 22.759514, 23.106901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.576473, 22.431934, 22.894161>,  <17.524744, 22.235386, 22.766518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.576473, 22.431934, 22.894161>,  <17.662689, 22.759514, 23.106901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576473, 22.431934, 22.894161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313946, 0.457618, -0.831879,
		0.924652, -0.346274, 0.158472,
		-0.215538, -0.818951, -0.531849,
		17.511812, 22.186249, 22.734606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.318790, 22.586514, 22.764618>,  <17.662689, 22.759514, 23.106901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.318790, 22.586514, 22.764618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.021664, 22.418133, 22.556379>,  <17.843388, 22.317104, 22.431437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.021664, 22.418133, 22.556379>,  <18.318790, 22.586514, 22.764618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.021664, 22.418133, 22.556379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426967, 0.301079, -0.852673,
		0.515673, -0.855659, -0.043916,
		-0.742819, -0.420950, -0.520596,
		17.798819, 22.291847, 22.400200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.657593, 22.599150, 22.057047>,  <18.318790, 22.586514, 22.764618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.657593, 22.599150, 22.057047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.281502, 22.489891, 21.975693>,  <18.055847, 22.424335, 21.926880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.281502, 22.489891, 21.975693>,  <18.657593, 22.599150, 22.057047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.281502, 22.489891, 21.975693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170079, 0.140781, -0.975322,
		0.295039, -0.951615, -0.085909,
		-0.940226, -0.273146, -0.203385,
		17.999434, 22.407948, 21.914677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.730978, 22.153307, 21.561069>,  <18.657593, 22.599150, 22.057047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.730978, 22.153307, 21.561069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.355976, 22.281860, 21.507704>,  <18.130976, 22.358992, 21.475683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.355976, 22.281860, 21.507704>,  <18.730978, 22.153307, 21.561069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.355976, 22.281860, 21.507704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163688, 0.068966, -0.984098,
		-0.307072, -0.944434, -0.117262,
		-0.937504, 0.321384, -0.133415,
		18.074724, 22.378275, 21.467680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899319, 21.594946, 21.916597>,  <18.730978, 22.153307, 21.561069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.899319, 21.594946, 21.916597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.275158, 21.460102, 21.940308>,  <19.500662, 21.379196, 21.954533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.275158, 21.460102, 21.940308>,  <18.899319, 21.594946, 21.916597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.275158, 21.460102, 21.940308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002307, 0.179408, 0.983772,
		-0.342271, -0.924214, 0.169349,
		0.939598, -0.337107, 0.059274,
		19.557037, 21.358971, 21.958090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.987474, 21.127470, 22.477774>,  <18.899319, 21.594946, 21.916597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.987474, 21.127470, 22.477774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.359127, 21.259514, 22.411146>,  <19.582119, 21.338739, 22.371170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.359127, 21.259514, 22.411146>,  <18.987474, 21.127470, 22.477774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.359127, 21.259514, 22.411146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149644, 0.076226, 0.985797,
		0.338119, -0.940860, 0.021424,
		0.929130, 0.330111, -0.166567,
		19.637867, 21.358547, 22.361176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.428421, 20.758947, 22.841835>,  <18.987474, 21.127470, 22.477774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.428421, 20.758947, 22.841835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.640118, 21.094082, 22.788261>,  <19.767136, 21.295162, 22.756117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.640118, 21.094082, 22.788261>,  <19.428421, 20.758947, 22.841835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.640118, 21.094082, 22.788261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415052, -0.117966, 0.902117,
		0.740025, -0.533027, -0.410178,
		0.529240, 0.837834, -0.133936,
		19.798889, 21.345432, 22.748081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.042017, 20.624130, 23.156792>,  <19.428421, 20.758947, 22.841835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.042017, 20.624130, 23.156792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.038273, 21.023319, 23.131598>,  <20.036026, 21.262833, 23.116482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.038273, 21.023319, 23.131598>,  <20.042017, 20.624130, 23.156792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.038273, 21.023319, 23.131598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400728, 0.061451, 0.914134,
		0.916149, -0.016683, -0.400490,
		-0.009360, 0.997971, -0.062983,
		20.035465, 21.322710, 23.112703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.669893, 20.870762, 23.286678>,  <20.042017, 20.624130, 23.156792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.669893, 20.870762, 23.286678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.455051, 21.199829, 23.361225>,  <20.326145, 21.397270, 23.405952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.455051, 21.199829, 23.361225>,  <20.669893, 20.870762, 23.286678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.455051, 21.199829, 23.361225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325487, -0.001697, 0.945545,
		0.778187, 0.568518, -0.266857,
		-0.537107, 0.822669, 0.186366,
		20.293919, 21.446630, 23.417135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.176390, 21.261930, 23.553364>,  <20.669893, 20.870762, 23.286678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.176390, 21.261930, 23.553364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.832035, 21.436203, 23.658476>,  <20.625422, 21.540766, 23.721544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.832035, 21.436203, 23.658476>,  <21.176390, 21.261930, 23.553364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.832035, 21.436203, 23.658476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428462, 0.342248, 0.836234,
		0.274393, 0.832496, -0.481309,
		-0.860889, 0.435679, 0.262782,
		20.573769, 21.566906, 23.737310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.302797, 21.916037, 23.905935>,  <21.176390, 21.261930, 23.553364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.302797, 21.916037, 23.905935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.935764, 21.811203, 24.025507>,  <20.715546, 21.748302, 24.097250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.935764, 21.811203, 24.025507>,  <21.302797, 21.916037, 23.905935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.935764, 21.811203, 24.025507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246393, 0.215180, 0.944981,
		-0.311988, 0.940749, -0.132869,
		-0.917581, -0.262084, 0.298928,
		20.660490, 21.732578, 24.115185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.116768, 22.416777, 24.367325>,  <21.302797, 21.916037, 23.905935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.116768, 22.416777, 24.367325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.897144, 22.097874, 24.467653>,  <20.765369, 21.906532, 24.527851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.897144, 22.097874, 24.467653>,  <21.116768, 22.416777, 24.367325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.897144, 22.097874, 24.467653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224599, 0.148318, 0.963097,
		-0.805039, 0.585133, 0.097628,
		-0.549060, -0.797258, 0.250822,
		20.732426, 21.858696, 24.542900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.873478, 22.603977, 25.079203>,  <21.116768, 22.416777, 24.367325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.873478, 22.603977, 25.079203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.795971, 22.213081, 25.044657>,  <20.749466, 21.978544, 25.023930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.795971, 22.213081, 25.044657>,  <20.873478, 22.603977, 25.079203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.795971, 22.213081, 25.044657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225338, -0.130012, 0.965567,
		-0.954818, 0.167636, 0.245401,
		-0.193769, -0.977238, -0.086363,
		20.737841, 21.919910, 25.018747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.606106, 22.412083, 25.739738>,  <20.873478, 22.603977, 25.079203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.606106, 22.412083, 25.739738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.719395, 22.067146, 25.571857>,  <20.787369, 21.860184, 25.471128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.719395, 22.067146, 25.571857>,  <20.606106, 22.412083, 25.739738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.719395, 22.067146, 25.571857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390873, -0.295836, 0.871607,
		-0.875788, -0.410909, 0.253279,
		0.283222, -0.862343, -0.419703,
		20.804361, 21.808443, 25.445946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.435167, 21.873280, 26.247599>,  <20.606106, 22.412083, 25.739738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.435167, 21.873280, 26.247599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.720848, 21.721466, 26.012356>,  <20.892256, 21.630379, 25.871210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.720848, 21.721466, 26.012356>,  <20.435167, 21.873280, 26.247599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.720848, 21.721466, 26.012356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509542, -0.294134, 0.808611,
		-0.479877, -0.877177, -0.016682,
		0.714202, -0.379534, -0.588107,
		20.935108, 21.607607, 25.835924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.412886, 21.132267, 26.347391>,  <20.435167, 21.873280, 26.247599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.412886, 21.132267, 26.347391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.781944, 21.249622, 26.247274>,  <21.003380, 21.320036, 26.187204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.781944, 21.249622, 26.247274>,  <20.412886, 21.132267, 26.347391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.781944, 21.249622, 26.247274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328034, -0.255805, 0.909372,
		0.202774, -0.921133, -0.332259,
		0.922647, 0.293389, -0.250292,
		21.058739, 21.337639, 26.172186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.809959, 20.560247, 26.368233>,  <20.412886, 21.132267, 26.347391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.809959, 20.560247, 26.368233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.082184, 20.850506, 26.408787>,  <21.245518, 21.024660, 26.433119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.082184, 20.850506, 26.408787>,  <20.809959, 20.560247, 26.368233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.082184, 20.850506, 26.408787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235816, -0.347941, 0.907374,
		0.693707, -0.593614, -0.407913,
		0.680560, 0.725644, 0.101385,
		21.286352, 21.068199, 26.439201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.078743, 20.369461, 26.916412>,  <20.809959, 20.560247, 26.368233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.078743, 20.369461, 26.916412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.283726, 20.711353, 26.883368>,  <21.406715, 20.916489, 26.863541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.283726, 20.711353, 26.883368>,  <21.078743, 20.369461, 26.916412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.283726, 20.711353, 26.883368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359715, -0.126317, 0.924472,
		0.779738, -0.503469, -0.372192,
		0.512458, 0.854730, -0.082611,
		21.437464, 20.967772, 26.858583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.373846, 20.131117, 26.342590>,  <21.078743, 20.369461, 26.916412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.373846, 20.131117, 26.342590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.584351, 19.791969, 26.368408>,  <21.710653, 19.588480, 26.383898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.584351, 19.791969, 26.368408>,  <21.373846, 20.131117, 26.342590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.584351, 19.791969, 26.368408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291960, -0.251460, -0.922783,
		0.798630, 0.466780, -0.379877,
		0.526260, -0.847871, 0.064542,
		21.742229, 19.537607, 26.387772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.755075, 20.070511, 25.706745>,  <21.373846, 20.131117, 26.342590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.755075, 20.070511, 25.706745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.775578, 19.698921, 25.853374>,  <21.787878, 19.475967, 25.941353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.775578, 19.698921, 25.853374>,  <21.755075, 20.070511, 25.706745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.775578, 19.698921, 25.853374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329865, -0.362203, -0.871779,
		0.942636, -0.076237, -0.325002,
		0.051255, -0.928976, 0.366574,
		21.790955, 19.420229, 25.963346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.255098, 19.648350, 25.281645>,  <21.755075, 20.070511, 25.706745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.255098, 19.648350, 25.281645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.994267, 19.400421, 25.456284>,  <21.837769, 19.251663, 25.561066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.994267, 19.400421, 25.456284>,  <22.255098, 19.648350, 25.281645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.994267, 19.400421, 25.456284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168366, -0.443101, -0.880519,
		0.739221, -0.647675, 0.184580,
		-0.652078, -0.619821, 0.436596,
		21.798643, 19.214476, 25.587263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.417038, 18.980877, 25.084713>,  <22.255098, 19.648350, 25.281645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.417038, 18.980877, 25.084713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.031590, 18.924980, 25.175846>,  <21.800320, 18.891441, 25.230526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.031590, 18.924980, 25.175846>,  <22.417038, 18.980877, 25.084713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.031590, 18.924980, 25.175846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144945, -0.442958, -0.884748,
		0.224557, -0.885584, 0.406589,
		-0.963621, -0.139743, 0.227831,
		21.742504, 18.883057, 25.244196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.295738, 18.242008, 25.008799>,  <22.417038, 18.980877, 25.084713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.295738, 18.242008, 25.008799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.932274, 18.408726, 24.998835>,  <21.714195, 18.508757, 24.992855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.932274, 18.408726, 24.998835>,  <22.295738, 18.242008, 25.008799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.932274, 18.408726, 24.998835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214715, -0.517605, -0.828240,
		-0.358100, -0.747240, 0.559819,
		-0.908659, 0.416795, -0.024910,
		21.659676, 18.533764, 24.991362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.906208, 17.655943, 24.927910>,  <22.295738, 18.242008, 25.008799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.906208, 17.655943, 24.927910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.667652, 17.961651, 24.829758>,  <21.524519, 18.145075, 24.770866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.667652, 17.961651, 24.829758>,  <21.906208, 17.655943, 24.927910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.667652, 17.961651, 24.829758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113987, -0.383233, -0.916591,
		-0.794561, -0.518675, 0.315673,
		-0.596390, 0.764270, -0.245380,
		21.488735, 18.190931, 24.756144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.348597, 17.341972, 24.503654>,  <21.906208, 17.655943, 24.927910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.348597, 17.341972, 24.503654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.355095, 17.728188, 24.399752>,  <21.358994, 17.959917, 24.337410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.355095, 17.728188, 24.399752>,  <21.348597, 17.341972, 24.503654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.355095, 17.728188, 24.399752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181417, -0.252634, -0.950402,
		-0.983272, 0.062563, 0.171061,
		0.016244, 0.965537, -0.259758,
		21.359968, 18.017849, 24.321825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.738436, 16.954889, 24.442997>,  <21.348597, 17.341972, 24.503654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.738436, 16.954889, 24.442997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.609547, 16.577869, 24.407728>,  <20.532213, 16.351658, 24.386568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.609547, 16.577869, 24.407728>,  <20.738436, 16.954889, 24.442997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.609547, 16.577869, 24.407728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177469, -0.031342, 0.983627,
		-0.929880, 0.332597, -0.157174,
		-0.322225, -0.942548, -0.088170,
		20.512878, 16.295105, 24.381277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.158428, 16.926563, 24.876066>,  <20.738436, 16.954889, 24.442997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.158428, 16.926563, 24.876066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.219570, 16.535820, 24.816227>,  <20.256254, 16.301374, 24.780323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.219570, 16.535820, 24.816227>,  <20.158428, 16.926563, 24.876066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.219570, 16.535820, 24.816227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416110, -0.200923, 0.886838,
		-0.896375, -0.073307, -0.437193,
		0.152853, -0.976860, -0.149599,
		20.265427, 16.242762, 24.771347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.530891, 16.607582, 24.989052>,  <20.158428, 16.926563, 24.876066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.530891, 16.607582, 24.989052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.830185, 16.353840, 25.066761>,  <20.009760, 16.201595, 25.113386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.830185, 16.353840, 25.066761>,  <19.530891, 16.607582, 24.989052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.830185, 16.353840, 25.066761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488729, -0.329003, 0.808023,
		-0.448657, -0.699535, -0.556199,
		0.748232, -0.634356, 0.194274,
		20.054655, 16.163534, 25.125044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.218452, 16.059813, 25.260008>,  <19.530891, 16.607582, 24.989052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.218452, 16.059813, 25.260008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.592777, 15.997585, 25.386532>,  <19.817373, 15.960249, 25.462446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.592777, 15.997585, 25.386532>,  <19.218452, 16.059813, 25.260008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.592777, 15.997585, 25.386532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348803, -0.279149, 0.894658,
		-0.050884, -0.947562, -0.315494,
		0.935814, -0.155569, 0.316308,
		19.873522, 15.950914, 25.481424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.342354, 15.386836, 25.570936>,  <19.218452, 16.059813, 25.260008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.342354, 15.386836, 25.570936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.650436, 15.573620, 25.744709>,  <19.835285, 15.685690, 25.848972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.650436, 15.573620, 25.744709>,  <19.342354, 15.386836, 25.570936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.650436, 15.573620, 25.744709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320577, -0.305416, 0.896633,
		0.551374, -0.829861, -0.085537,
		0.770205, 0.466959, 0.434433,
		19.881498, 15.713708, 25.875038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.599165, 14.873215, 26.041481>,  <19.342354, 15.386836, 25.570936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.599165, 14.873215, 26.041481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.750862, 15.218075, 26.175867>,  <19.841881, 15.424991, 26.256498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.750862, 15.218075, 26.175867>,  <19.599165, 14.873215, 26.041481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.750862, 15.218075, 26.175867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348729, -0.203139, 0.914944,
		0.857066, -0.464148, 0.223618,
		0.379244, 0.862149, 0.335965,
		19.864635, 15.476720, 26.276657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.820824, 14.716598, 26.772369>,  <19.599165, 14.873215, 26.041481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.820824, 14.716598, 26.772369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.809338, 15.115974, 26.791513>,  <19.802446, 15.355600, 26.802999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.809338, 15.115974, 26.791513>,  <19.820824, 14.716598, 26.772369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.809338, 15.115974, 26.791513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396851, -0.055332, 0.916214,
		0.917434, 0.007318, 0.397822,
		-0.028717, 0.998441, 0.047859,
		19.800722, 15.415506, 26.805872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.219145, 14.893026, 27.392246>,  <19.820824, 14.716598, 26.772369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.219145, 14.893026, 27.392246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.994736, 15.208260, 27.290915>,  <19.860090, 15.397400, 27.230116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.994736, 15.208260, 27.290915>,  <20.219145, 14.893026, 27.392246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.994736, 15.208260, 27.290915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287984, 0.101099, 0.952284,
		0.776091, 0.607209, 0.170236,
		-0.561025, 0.788084, -0.253329,
		19.826427, 15.444685, 27.214916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.417515, 15.536709, 27.865345>,  <20.219145, 14.893026, 27.392246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.417515, 15.536709, 27.865345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.041840, 15.607414, 27.747576>,  <19.816435, 15.649837, 27.676914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.041840, 15.607414, 27.747576>,  <20.417515, 15.536709, 27.865345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.041840, 15.607414, 27.747576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228551, 0.318167, 0.920073,
		0.256310, 0.931410, -0.258418,
		-0.939186, 0.176763, -0.294424,
		19.760084, 15.660443, 27.659248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.998390, 15.457040, 11.356696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.696838, 15.694492, 11.469315>,  <18.515907, 15.836964, 11.536885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.696838, 15.694492, 11.469315>,  <18.998390, 15.457040, 11.356696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.696838, 15.694492, 11.469315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439286, 0.136770, 0.887875,
		0.488563, 0.793030, -0.363882,
		-0.753880, 0.593631, 0.281546,
		18.470675, 15.872581, 11.553779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.352474, 16.060137, 11.626781>,  <18.998390, 15.457040, 11.356696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.352474, 16.060137, 11.626781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.981377, 16.050194, 11.775739>,  <18.758718, 16.044228, 11.865113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.981377, 16.050194, 11.775739>,  <19.352474, 16.060137, 11.626781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.981377, 16.050194, 11.775739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367561, 0.112279, 0.923197,
		-0.064760, 0.993366, -0.095030,
		-0.927742, -0.024857, 0.372394,
		18.703054, 16.042736, 11.887457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.308575, 16.703262, 11.919906>,  <19.352474, 16.060137, 11.626781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.308575, 16.703262, 11.919906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.038586, 16.450760, 12.072707>,  <18.876593, 16.299259, 12.164388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.038586, 16.450760, 12.072707>,  <19.308575, 16.703262, 11.919906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.038586, 16.450760, 12.072707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357424, 0.173193, 0.917743,
		-0.645492, 0.755989, 0.108726,
		-0.674973, -0.631257, 0.382003,
		18.836094, 16.261383, 12.187308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.114147, 17.044868, 12.459895>,  <19.308575, 16.703262, 11.919906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.114147, 17.044868, 12.459895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.963940, 16.689774, 12.566410>,  <18.873816, 16.476717, 12.630319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.963940, 16.689774, 12.566410>,  <19.114147, 17.044868, 12.459895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.963940, 16.689774, 12.566410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318438, 0.146241, 0.936595,
		-0.870392, 0.436506, 0.227773,
		-0.375520, -0.887736, 0.266287,
		18.851284, 16.423452, 12.646297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.819092, 17.069550, 13.080261>,  <19.114147, 17.044868, 12.459895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.819092, 17.069550, 13.080261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.866051, 16.672325, 13.077464>,  <18.894226, 16.433990, 13.075786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.866051, 16.672325, 13.077464>,  <18.819092, 17.069550, 13.080261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.866051, 16.672325, 13.077464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313546, 0.030384, 0.949087,
		-0.942288, -0.113614, 0.314937,
		0.117398, -0.993060, -0.006993,
		18.901270, 16.374407, 13.075366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.385027, 16.699152, 13.625785>,  <18.819092, 17.069550, 13.080261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.385027, 16.699152, 13.625785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.707344, 16.479805, 13.536347>,  <18.900734, 16.348196, 13.482685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.707344, 16.479805, 13.536347>,  <18.385027, 16.699152, 13.625785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.707344, 16.479805, 13.536347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270397, 0.004780, 0.962737,
		-0.526865, -0.836224, 0.152128,
		0.805791, -0.548368, -0.223594,
		18.949081, 16.315294, 13.469269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.513006, 16.140881, 14.133721>,  <18.385027, 16.699152, 13.625785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.513006, 16.140881, 14.133721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.875107, 16.167263, 13.965833>,  <19.092367, 16.183092, 13.865100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.875107, 16.167263, 13.965833>,  <18.513006, 16.140881, 14.133721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.875107, 16.167263, 13.965833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424407, -0.186557, 0.886045,
		-0.019859, -0.980227, -0.196875,
		0.905254, 0.065959, -0.419720,
		19.146683, 16.187050, 13.839916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.901205, 15.539417, 14.400834>,  <18.513006, 16.140881, 14.133721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.901205, 15.539417, 14.400834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.159534, 15.818104, 14.275933>,  <19.314531, 15.985315, 14.200993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.159534, 15.818104, 14.275933>,  <18.901205, 15.539417, 14.400834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.159534, 15.818104, 14.275933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493722, -0.069147, 0.866866,
		0.582368, -0.714007, -0.388641,
		0.645822, 0.696716, -0.312251,
		19.353281, 16.027119, 14.182258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.502361, 15.254629, 14.544565>,  <18.901205, 15.539417, 14.400834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.502361, 15.254629, 14.544565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.606392, 15.639454, 14.511584>,  <19.668810, 15.870349, 14.491796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.606392, 15.639454, 14.511584>,  <19.502361, 15.254629, 14.544565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.606392, 15.639454, 14.511584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496150, -0.059891, 0.866168,
		0.828369, -0.266177, -0.492903,
		0.260075, 0.962062, -0.082452,
		19.684414, 15.928072, 14.486849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.140945, 15.279423, 15.027130>,  <19.502361, 15.254629, 14.544565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.140945, 15.279423, 15.027130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.066242, 15.664627, 14.949431>,  <20.021420, 15.895750, 14.902812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.066242, 15.664627, 14.949431>,  <20.140945, 15.279423, 15.027130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.066242, 15.664627, 14.949431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346320, 0.249569, 0.904311,
		0.919339, 0.101617, -0.380119,
		-0.186759, 0.963010, -0.194247,
		20.010214, 15.953530, 14.891157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.696375, 15.644029, 15.333769>,  <20.140945, 15.279423, 15.027130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.696375, 15.644029, 15.333769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.384312, 15.893677, 15.316676>,  <20.197073, 16.043465, 15.306420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.384312, 15.893677, 15.316676>,  <20.696375, 15.644029, 15.333769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.384312, 15.893677, 15.316676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333521, 0.472752, 0.815640,
		0.529259, 0.622077, -0.576979,
		-0.780160, 0.624119, -0.042732,
		20.150265, 16.080914, 15.303857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.993378, 16.125406, 15.719391>,  <20.696375, 15.644029, 15.333769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.993378, 16.125406, 15.719391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.601307, 16.202282, 15.738639>,  <20.366064, 16.248407, 15.750188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.601307, 16.202282, 15.738639>,  <20.993378, 16.125406, 15.719391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.601307, 16.202282, 15.738639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062423, 0.069069, 0.995657,
		0.188031, 0.978924, -0.079697,
		-0.980177, 0.192190, 0.048120,
		20.307253, 16.259939, 15.753075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.402203, 16.825848, 15.642700>,  <20.993378, 16.125406, 15.719391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.402203, 16.825848, 15.642700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.686127, 17.103649, 15.689755>,  <21.856482, 17.270330, 15.717989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.686127, 17.103649, 15.689755>,  <21.402203, 16.825848, 15.642700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686127, 17.103649, 15.689755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060981, 0.105793, -0.992517,
		-0.701750, 0.711670, 0.032741,
		0.709808, 0.694502, 0.117639,
		21.899069, 17.312000, 15.725047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.224874, 17.394814, 15.262380>,  <21.402203, 16.825848, 15.642700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.224874, 17.394814, 15.262380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.617298, 17.449120, 15.317649>,  <21.852753, 17.481703, 15.350811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.617298, 17.449120, 15.317649>,  <21.224874, 17.394814, 15.262380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.617298, 17.449120, 15.317649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104323, 0.230720, -0.967411,
		-0.163222, 0.963502, 0.212186,
		0.981058, 0.135766, 0.138174,
		21.911615, 17.489849, 15.359101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.428852, 18.136015, 15.086627>,  <21.224874, 17.394814, 15.262380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.428852, 18.136015, 15.086627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.743973, 17.895229, 15.034465>,  <21.933046, 17.750757, 15.003167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.743973, 17.895229, 15.034465>,  <21.428852, 18.136015, 15.086627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.743973, 17.895229, 15.034465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212902, 0.464813, -0.859431,
		0.577960, 0.649299, 0.494340,
		0.787804, -0.601963, -0.130406,
		21.980314, 17.714640, 14.995343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.839821, 18.636528, 14.782549>,  <21.428852, 18.136015, 15.086627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.839821, 18.636528, 14.782549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.002350, 18.277451, 14.714370>,  <22.099867, 18.062004, 14.673462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.002350, 18.277451, 14.714370>,  <21.839821, 18.636528, 14.782549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.002350, 18.277451, 14.714370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338457, 0.321137, -0.884488,
		0.848735, 0.301696, 0.434314,
		0.406321, -0.897692, -0.170449,
		22.124247, 18.008142, 14.663235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.545952, 18.732265, 14.506683>,  <21.839821, 18.636528, 14.782549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.545952, 18.732265, 14.506683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.397717, 18.375294, 14.403735>,  <22.308775, 18.161112, 14.341967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.397717, 18.375294, 14.403735>,  <22.545952, 18.732265, 14.506683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.397717, 18.375294, 14.403735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016327, 0.270798, -0.962498,
		0.928654, -0.360891, -0.085784,
		-0.370587, -0.892427, -0.257370,
		22.286541, 18.107565, 14.326524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.128174, 18.468475, 14.125602>,  <22.545952, 18.732265, 14.506683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.128174, 18.468475, 14.125602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.820244, 18.235779, 14.020570>,  <22.635487, 18.096161, 13.957550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.820244, 18.235779, 14.020570>,  <23.128174, 18.468475, 14.125602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.820244, 18.235779, 14.020570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318517, 0.006354, -0.947896,
		0.553096, -0.813351, 0.180403,
		-0.769825, -0.581739, -0.262581,
		22.589296, 18.061256, 13.941795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.378199, 17.932068, 13.724957>,  <23.128174, 18.468475, 14.125602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.378199, 17.932068, 13.724957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.992802, 17.980289, 13.629333>,  <22.761564, 18.009222, 13.571958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.992802, 17.980289, 13.629333>,  <23.378199, 17.932068, 13.724957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.992802, 17.980289, 13.629333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249812, 0.083559, -0.964682,
		-0.096320, -0.989184, -0.110624,
		-0.963492, 0.120553, -0.239062,
		22.703754, 18.016455, 13.557614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.336332, 17.641867, 13.084464>,  <23.378199, 17.932068, 13.724957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.336332, 17.641867, 13.084464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.995579, 17.851330, 13.088067>,  <22.791126, 17.977007, 13.090229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.995579, 17.851330, 13.088067>,  <23.336332, 17.641867, 13.084464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.995579, 17.851330, 13.088067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042080, 0.085576, -0.995443,
		-0.522040, -0.847621, -0.094936,
		-0.851882, 0.523656, 0.009006,
		22.740013, 18.008427, 13.090769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.897636, 17.332170, 12.500426>,  <23.336332, 17.641867, 13.084464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.897636, 17.332170, 12.500426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.766521, 17.692776, 12.613444>,  <22.687853, 17.909140, 12.681255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.766521, 17.692776, 12.613444>,  <22.897636, 17.332170, 12.500426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.766521, 17.692776, 12.613444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150837, 0.245292, -0.957643,
		-0.932633, -0.356520, 0.055578,
		-0.327786, 0.901512, 0.282544,
		22.668186, 17.963230, 12.698208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.303825, 17.324114, 12.284809>,  <22.897636, 17.332170, 12.500426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.303825, 17.324114, 12.284809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.367500, 17.717850, 12.315110>,  <22.405704, 17.954090, 12.333291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.367500, 17.717850, 12.315110>,  <22.303825, 17.324114, 12.284809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.367500, 17.717850, 12.315110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380929, 0.132031, -0.915129,
		-0.910798, 0.116821, 0.395980,
		0.159188, 0.984338, 0.075753,
		22.415257, 18.013151, 12.337836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.880905, 17.589775, 11.792269>,  <22.303825, 17.324114, 12.284809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.880905, 17.589775, 11.792269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.096188, 17.914616, 11.882450>,  <22.225357, 18.109520, 11.936559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.096188, 17.914616, 11.882450>,  <21.880905, 17.589775, 11.792269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.096188, 17.914616, 11.882450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202639, 0.384341, -0.900677,
		-0.818091, 0.439063, 0.371417,
		0.538205, 0.812099, 0.225454,
		22.257648, 18.158245, 11.950087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.400871, 18.173922, 11.736479>,  <21.880905, 17.589775, 11.792269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.400871, 18.173922, 11.736479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.771400, 18.306210, 11.664312>,  <21.993717, 18.385582, 11.621013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.771400, 18.306210, 11.664312>,  <21.400871, 18.173922, 11.736479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.771400, 18.306210, 11.664312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303860, 0.372799, -0.876750,
		-0.222700, 0.866974, 0.445825,
		0.926323, 0.330721, -0.180417,
		22.049297, 18.405426, 11.610188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.295973, 18.826723, 11.609009>,  <21.400871, 18.173922, 11.736479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.295973, 18.826723, 11.609009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.640350, 18.725719, 11.432367>,  <21.846977, 18.665117, 11.326383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.640350, 18.725719, 11.432367>,  <21.295973, 18.826723, 11.609009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.640350, 18.725719, 11.432367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366555, 0.293979, -0.882731,
		0.352721, 0.921853, 0.160541,
		0.860944, -0.252511, -0.441603,
		21.898634, 18.649965, 11.299887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.439131, 19.399067, 11.190679>,  <21.295973, 18.826723, 11.609009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.439131, 19.399067, 11.190679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.661812, 19.091084, 11.065941>,  <21.795422, 18.906294, 10.991098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.661812, 19.091084, 11.065941>,  <21.439131, 19.399067, 11.190679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.661812, 19.091084, 11.065941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336104, 0.134528, -0.932168,
		0.759681, 0.623754, -0.183893,
		0.556705, -0.769957, -0.311844,
		21.828823, 18.860096, 10.972387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.848141, 19.911251, 10.961990>,  <21.439131, 19.399067, 11.190679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.848141, 19.911251, 10.961990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.933395, 20.285637, 10.849888>,  <20.984549, 20.510269, 10.782626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.933395, 20.285637, 10.849888>,  <20.848141, 19.911251, 10.961990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.933395, 20.285637, 10.849888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048403, 0.296611, 0.953771,
		0.975822, -0.189720, 0.108523,
		0.213139, 0.935964, -0.280256,
		20.997337, 20.566425, 10.765811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.395653, 20.257336, 11.452100>,  <20.848141, 19.911251, 10.961990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.395653, 20.257336, 11.452100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.145958, 20.538651, 11.316031>,  <20.996141, 20.707439, 11.234389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.145958, 20.538651, 11.316031>,  <21.395653, 20.257336, 11.452100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.145958, 20.538651, 11.316031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239660, 0.242045, 0.940201,
		0.743568, 0.668433, 0.017457,
		-0.624236, 0.703286, -0.340174,
		20.958687, 20.749636, 11.213979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.454058, 20.933479, 11.752460>,  <21.395653, 20.257336, 11.452100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.454058, 20.933479, 11.752460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.072182, 20.933914, 11.633422>,  <20.843056, 20.934175, 11.561999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.072182, 20.933914, 11.633422>,  <21.454058, 20.933479, 11.752460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.072182, 20.933914, 11.633422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290605, 0.212081, 0.933044,
		0.064127, 0.977251, -0.202157,
		-0.954692, 0.001086, -0.297594,
		20.785774, 20.934240, 11.544144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.148531, 21.478743, 11.976753>,  <21.454058, 20.933479, 11.752460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.148531, 21.478743, 11.976753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.859161, 21.206432, 11.930791>,  <20.685539, 21.043047, 11.903214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.859161, 21.206432, 11.930791>,  <21.148531, 21.478743, 11.976753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859161, 21.206432, 11.930791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176503, 0.021464, 0.984066,
		-0.667461, 0.732178, -0.135686,
		-0.723424, -0.680775, -0.114905,
		20.642134, 21.002199, 11.896319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.637766, 21.679655, 12.419398>,  <21.148531, 21.478743, 11.976753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.637766, 21.679655, 12.419398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.528973, 21.301682, 12.346595>,  <20.463697, 21.074898, 12.302913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.528973, 21.301682, 12.346595>,  <20.637766, 21.679655, 12.419398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.528973, 21.301682, 12.346595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161470, -0.141643, 0.976660,
		-0.948659, 0.295022, -0.114055,
		-0.271981, -0.944934, -0.182008,
		20.447378, 21.018202, 12.291992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.996040, 21.609760, 12.696450>,  <20.637766, 21.679655, 12.419398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.996040, 21.609760, 12.696450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.140034, 21.237896, 12.665098>,  <20.226431, 21.014778, 12.646287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.140034, 21.237896, 12.665098>,  <19.996040, 21.609760, 12.696450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.140034, 21.237896, 12.665098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100799, -0.122277, 0.987364,
		-0.927497, -0.347536, -0.137727,
		0.359985, -0.929660, -0.078380,
		20.248030, 20.958998, 12.641584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.477024, 21.126646, 12.992450>,  <19.996040, 21.609760, 12.696450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.477024, 21.126646, 12.992450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.811382, 20.907642, 13.008020>,  <20.011997, 20.776239, 13.017363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.811382, 20.907642, 13.008020>,  <19.477024, 21.126646, 12.992450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.811382, 20.907642, 13.008020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204544, -0.244900, 0.947727,
		-0.509357, -0.800160, -0.316700,
		0.835893, -0.547510, 0.038927,
		20.062151, 20.743389, 13.019698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.242437, 20.518444, 13.347505>,  <19.477024, 21.126646, 12.992450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.242437, 20.518444, 13.347505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.641407, 20.498116, 13.367749>,  <19.880789, 20.485918, 13.379896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.641407, 20.498116, 13.367749>,  <19.242437, 20.518444, 13.347505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.641407, 20.498116, 13.367749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058385, -0.165406, 0.984496,
		-0.041661, -0.984915, -0.167947,
		0.997424, -0.050820, 0.050613,
		19.940634, 20.482868, 13.382933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.342184, 19.928804, 13.696590>,  <19.242437, 20.518444, 13.347505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.342184, 19.928804, 13.696590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.651173, 20.176865, 13.751292>,  <19.836565, 20.325701, 13.784113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.651173, 20.176865, 13.751292>,  <19.342184, 19.928804, 13.696590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.651173, 20.176865, 13.751292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025423, -0.184971, 0.982415,
		0.634540, -0.762364, -0.127119,
		0.772471, 0.620151, 0.136754,
		19.882914, 20.362909, 13.792318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.891809, 19.584686, 13.971997>,  <19.342184, 19.928804, 13.696590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.891809, 19.584686, 13.971997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.970608, 19.958931, 14.089179>,  <20.017887, 20.183477, 14.159488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.970608, 19.958931, 14.089179>,  <19.891809, 19.584686, 13.971997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.970608, 19.958931, 14.089179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186651, -0.329135, 0.925652,
		0.962473, -0.127671, -0.239472,
		0.196997, 0.935612, 0.292954,
		20.029707, 20.239614, 14.177065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.248037, 19.477547, 14.586340>,  <19.891809, 19.584686, 13.971997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.248037, 19.477547, 14.586340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.175610, 19.868507, 14.629979>,  <20.132153, 20.103083, 14.656162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.175610, 19.868507, 14.629979>,  <20.248037, 19.477547, 14.586340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.175610, 19.868507, 14.629979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054468, -0.100794, 0.993415,
		0.981961, 0.185818, -0.034986,
		-0.181068, 0.977401, 0.109097,
		20.121288, 20.161728, 14.662708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.599333, 19.645153, 15.165821>,  <20.248037, 19.477547, 14.586340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.599333, 19.645153, 15.165821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.335354, 19.943035, 15.126060>,  <20.176966, 20.121765, 15.102202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.335354, 19.943035, 15.126060>,  <20.599333, 19.645153, 15.165821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.335354, 19.943035, 15.126060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045896, 0.092100, 0.994692,
		0.749908, 0.661007, -0.026602,
		-0.659948, 0.744706, -0.099404,
		20.137369, 20.166447, 15.096238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.717073, 20.017012, 15.719356>,  <20.599333, 19.645153, 15.165821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.717073, 20.017012, 15.719356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.373684, 20.201160, 15.628955>,  <20.167650, 20.311649, 15.574715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.373684, 20.201160, 15.628955>,  <20.717073, 20.017012, 15.719356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.373684, 20.201160, 15.628955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191438, 0.121164, 0.973997,
		0.475786, 0.879418, -0.015883,
		-0.858475, 0.460374, -0.226002,
		20.116142, 20.339273, 15.561154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.753372, 20.663820, 15.972780>,  <20.717073, 20.017012, 15.719356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.753372, 20.663820, 15.972780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.371342, 20.547314, 15.950892>,  <20.142124, 20.477409, 15.937760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.371342, 20.547314, 15.950892>,  <20.753372, 20.663820, 15.972780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.371342, 20.547314, 15.950892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117777, 0.203601, 0.971944,
		-0.271955, 0.934724, -0.228759,
		-0.955075, -0.291267, -0.054719,
		20.084820, 20.459934, 15.934477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.340046, 21.240131, 16.360010>,  <20.753372, 20.663820, 15.972780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.340046, 21.240131, 16.360010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.131107, 20.899235, 16.348394>,  <20.005745, 20.694696, 16.341425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.131107, 20.899235, 16.348394>,  <20.340046, 21.240131, 16.360010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.131107, 20.899235, 16.348394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096807, 0.025432, 0.994978,
		-0.847221, 0.522534, -0.095787,
		-0.522346, -0.852239, -0.029038,
		19.974403, 20.643562, 16.339684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.790884, 21.325790, 16.816547>,  <20.340046, 21.240131, 16.360010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.790884, 21.325790, 16.816547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.776554, 20.927879, 16.778318>,  <19.767956, 20.689133, 16.755381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.776554, 20.927879, 16.778318>,  <19.790884, 21.325790, 16.816547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.776554, 20.927879, 16.778318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017145, -0.096233, 0.995211,
		-0.999211, 0.034013, 0.020503,
		-0.035823, -0.994777, -0.095574,
		19.765808, 20.629446, 16.749645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.288820, 21.130856, 17.400270>,  <19.790884, 21.325790, 16.816547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.288820, 21.130856, 17.400270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.480450, 20.796875, 17.291941>,  <19.595427, 20.596487, 17.226944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.480450, 20.796875, 17.291941>,  <19.288820, 21.130856, 17.400270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.480450, 20.796875, 17.291941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056195, -0.278727, 0.958725,
		-0.875974, -0.474519, -0.086611,
		0.479074, -0.834951, -0.270824,
		19.624172, 20.546391, 17.210693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884624, 20.555677, 17.698084>,  <19.288820, 21.130856, 17.400270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884624, 20.555677, 17.698084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.254597, 20.421257, 17.627007>,  <19.476580, 20.340605, 17.584360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.254597, 20.421257, 17.627007>,  <18.884624, 20.555677, 17.698084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.254597, 20.421257, 17.627007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130394, -0.158613, 0.978693,
		-0.357077, -0.928391, -0.102886,
		0.924929, -0.336053, -0.177694,
		19.532076, 20.320442, 17.573698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926348, 19.937366, 18.016024>,  <18.884624, 20.555677, 17.698084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926348, 19.937366, 18.016024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.312370, 20.033043, 17.973211>,  <19.543983, 20.090448, 17.947523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.312370, 20.033043, 17.973211>,  <18.926348, 19.937366, 18.016024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.312370, 20.033043, 17.973211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144859, -0.146584, 0.978534,
		0.218370, -0.959843, -0.176111,
		0.965055, 0.239193, -0.107032,
		19.601887, 20.104801, 17.941101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.205378, 19.487089, 18.437534>,  <18.926348, 19.937366, 18.016024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.205378, 19.487089, 18.437534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.490894, 19.765079, 18.402876>,  <19.662205, 19.931873, 18.382080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.490894, 19.765079, 18.402876>,  <19.205378, 19.487089, 18.437534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.490894, 19.765079, 18.402876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084293, 0.037570, 0.995733,
		0.695267, -0.718049, -0.031765,
		0.713792, 0.694977, -0.086647,
		19.705032, 19.973572, 18.376883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.750669, 19.290337, 18.867594>,  <19.205378, 19.487089, 18.437534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.750669, 19.290337, 18.867594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.798214, 19.686352, 18.837412>,  <19.826740, 19.923962, 18.819304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.798214, 19.686352, 18.837412>,  <19.750669, 19.290337, 18.867594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798214, 19.686352, 18.837412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046527, 0.070357, 0.996436,
		0.991820, -0.121947, -0.037701,
		0.118859, 0.990040, -0.075455,
		19.833872, 19.983364, 18.814775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.264002, 19.424416, 19.454855>,  <19.750669, 19.290337, 18.867594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.264002, 19.424416, 19.454855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.132435, 19.782085, 19.333355>,  <20.053493, 19.996687, 19.260454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.132435, 19.782085, 19.333355>,  <20.264002, 19.424416, 19.454855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.132435, 19.782085, 19.333355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017962, 0.315665, 0.948700,
		0.944187, 0.317502, -0.087768,
		-0.328919, 0.894174, -0.303750,
		20.033758, 20.050337, 19.242229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.689253, 19.940228, 19.791031>,  <20.264002, 19.424416, 19.454855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.689253, 19.940228, 19.791031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.359509, 20.148937, 19.703232>,  <20.161661, 20.274162, 19.650553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.359509, 20.148937, 19.703232>,  <20.689253, 19.940228, 19.791031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.359509, 20.148937, 19.703232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095090, 0.254605, 0.962359,
		0.558020, 0.814204, -0.160271,
		-0.824362, 0.521775, -0.219497,
		20.112200, 20.305470, 19.637383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.872543, 20.580191, 20.083656>,  <20.689253, 19.940228, 19.791031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.872543, 20.580191, 20.083656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.473942, 20.554062, 20.062824>,  <20.234781, 20.538385, 20.050325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.473942, 20.554062, 20.062824>,  <20.872543, 20.580191, 20.083656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.473942, 20.554062, 20.062824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080423, 0.581358, 0.809663,
		-0.022610, 0.811021, -0.584579,
		-0.996504, -0.065320, -0.052080,
		20.174990, 20.534466, 20.047201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.579010, 21.262796, 20.001934>,  <20.872543, 20.580191, 20.083656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.579010, 21.262796, 20.001934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.311050, 21.033276, 20.190395>,  <20.150274, 20.895563, 20.303473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.311050, 21.033276, 20.190395>,  <20.579010, 21.262796, 20.001934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.311050, 21.033276, 20.190395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047348, 0.600280, 0.798387,
		-0.740940, 0.557148, -0.374959,
		-0.669900, -0.573804, 0.471151,
		20.110081, 20.861135, 20.331741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.354069, 21.669441, 20.548275>,  <20.579010, 21.262796, 20.001934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.354069, 21.669441, 20.548275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.162838, 21.339779, 20.669739>,  <20.048100, 21.141981, 20.742617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.162838, 21.339779, 20.669739>,  <20.354069, 21.669441, 20.548275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.162838, 21.339779, 20.669739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046695, 0.321390, 0.945795,
		-0.877075, 0.466343, -0.115166,
		-0.478078, -0.824155, 0.303660,
		20.019415, 21.092533, 20.760838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767756, 21.907185, 20.910688>,  <20.354069, 21.669441, 20.548275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.767756, 21.907185, 20.910688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.820915, 21.536869, 21.052254>,  <19.852812, 21.314680, 21.137192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.820915, 21.536869, 21.052254>,  <19.767756, 21.907185, 20.910688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.820915, 21.536869, 21.052254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231728, 0.318158, 0.919281,
		-0.963659, -0.204184, -0.172248,
		0.132901, -0.925788, 0.353912,
		19.860785, 21.259132, 21.158426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.166002, 21.647219, 21.246532>,  <19.767756, 21.907185, 20.910688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.166002, 21.647219, 21.246532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.461071, 21.416279, 21.386536>,  <19.638113, 21.277716, 21.470537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.461071, 21.416279, 21.386536>,  <19.166002, 21.647219, 21.246532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.461071, 21.416279, 21.386536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122742, 0.395093, 0.910404,
		-0.663907, -0.714542, 0.220585,
		0.737673, -0.577348, 0.350009,
		19.682373, 21.243074, 21.491539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.441137, 21.868086, 20.918339>,  <19.166002, 21.647219, 21.246532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.441137, 21.868086, 20.918339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.183647, 22.165779, 20.989590>,  <18.029152, 22.344395, 21.032341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.183647, 22.165779, 20.989590>,  <18.441137, 21.868086, 20.918339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.183647, 22.165779, 20.989590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095325, 0.152974, -0.983622,
		-0.759295, -0.650164, -0.027529,
		-0.643727, 0.744235, 0.178129,
		17.990528, 22.389050, 21.043028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.810026, 21.697365, 20.548178>,  <18.441137, 21.868086, 20.918339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.810026, 21.697365, 20.548178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.812412, 22.095528, 20.586401>,  <17.813845, 22.334425, 20.609335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.812412, 22.095528, 20.586401>,  <17.810026, 21.697365, 20.548178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.812412, 22.095528, 20.586401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370715, 0.090952, -0.924282,
		-0.928728, -0.029910, 0.369555,
		0.005967, 0.995406, 0.095557,
		17.814201, 22.394150, 20.615068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.190132, 21.926447, 20.212482>,  <17.810026, 21.697365, 20.548178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.190132, 21.926447, 20.212482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.458668, 22.222229, 20.232529>,  <17.619789, 22.399698, 20.244556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.458668, 22.222229, 20.232529>,  <17.190132, 21.926447, 20.212482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.458668, 22.222229, 20.232529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063235, 0.124523, -0.990200,
		-0.738447, 0.661592, 0.130356,
		0.671340, 0.739453, 0.050118,
		17.660070, 22.444065, 20.247564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.859182, 22.432598, 19.840322>,  <17.190132, 21.926447, 20.212482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.859182, 22.432598, 19.840322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.242847, 22.545624, 19.835178>,  <17.473047, 22.613440, 19.832092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.242847, 22.545624, 19.835178>,  <16.859182, 22.432598, 19.840322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.242847, 22.545624, 19.835178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064643, 0.174715, -0.982495,
		-0.275369, 0.943204, 0.185846,
		0.959163, 0.282562, -0.012860,
		17.530596, 22.630392, 19.831320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.850206, 23.208303, 19.742460>,  <16.859182, 22.432598, 19.840322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.850206, 23.208303, 19.742460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.205013, 23.046268, 19.653822>,  <17.417898, 22.949047, 19.600639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.205013, 23.046268, 19.653822>,  <16.850206, 23.208303, 19.742460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.205013, 23.046268, 19.653822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065323, 0.364999, -0.928714,
		0.457091, 0.838261, 0.297299,
		0.887018, -0.405086, -0.221596,
		17.471119, 22.924742, 19.587343>
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
