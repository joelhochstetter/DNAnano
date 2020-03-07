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
	<2.767515, 3.973779, 2.425031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.708958, 4.045197, 2.035839>,  <2.673823, 4.088047, 1.802324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.708958, 4.045197, 2.035839>,  <2.767515, 3.973779, 2.425031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.708958, 4.045197, 2.035839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873088, 0.485729, -0.042232,
		0.465065, -0.855681, -0.226991,
		-0.146393, 0.178543, -0.972981,
		2.665040, 4.098759, 1.743945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.328772, 3.588176, 2.016209>,  <2.767515, 3.973779, 2.425031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.328772, 3.588176, 2.016209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.177767, 3.928013, 1.868870>,  <3.087164, 4.131915, 1.780466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.177767, 3.928013, 1.868870>,  <3.328772, 3.588176, 2.016209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.177767, 3.928013, 1.868870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847558, 0.477247, 0.232123,
		0.373003, -0.224566, -0.900244,
		-0.377512, 0.849591, -0.368347,
		3.064513, 4.182890, 1.758366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.825327, 3.812091, 1.603508>,  <3.328772, 3.588176, 2.016209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.825327, 3.812091, 1.603508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.591045, 4.124378, 1.690620>,  <3.450476, 4.311750, 1.742888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.591045, 4.124378, 1.690620>,  <3.825327, 3.812091, 1.603508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.591045, 4.124378, 1.690620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807771, 0.540121, 0.236168,
		0.066753, 0.314242, -0.946993,
		-0.585705, 0.780718, 0.217781,
		3.415334, 4.358593, 1.755955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.176501, 4.407508, 1.394932>,  <3.825327, 3.812091, 1.603508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.176501, 4.407508, 1.394932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.920023, 4.522533, 1.679516>,  <3.766136, 4.591549, 1.850266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.920023, 4.522533, 1.679516>,  <4.176501, 4.407508, 1.394932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.920023, 4.522533, 1.679516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725335, 0.529782, 0.439569,
		-0.250514, 0.797896, -0.548274,
		-0.641196, 0.287564, 0.711460,
		3.727664, 4.608802, 1.892954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.165521, 5.112565, 1.376707>,  <4.176501, 4.407508, 1.394932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.165521, 5.112565, 1.376707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.041956, 4.993389, 1.737995>,  <3.967817, 4.921884, 1.954768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.041956, 4.993389, 1.737995>,  <4.165521, 5.112565, 1.376707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.041956, 4.993389, 1.737995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721675, 0.545127, 0.426639,
		-0.619482, 0.783626, 0.046619,
		-0.308912, -0.297939, 0.903220,
		3.949282, 4.904007, 2.008961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.170747, 5.749551, 1.816476>,  <4.165521, 5.112565, 1.376707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.170747, 5.749551, 1.816476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.184456, 5.443214, 2.073322>,  <4.192681, 5.259412, 2.227430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.184456, 5.443214, 2.073322>,  <4.170747, 5.749551, 1.816476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.184456, 5.443214, 2.073322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671451, 0.493534, 0.552792,
		-0.740256, 0.412203, 0.531140,
		0.034273, -0.765842, 0.642115,
		4.194738, 5.213462, 2.265957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.187356, 6.068316, 2.477348>,  <4.170747, 5.749551, 1.816476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.187356, 6.068316, 2.477348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.291319, 5.688290, 2.546425>,  <4.353696, 5.460274, 2.587871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.291319, 5.688290, 2.546425>,  <4.187356, 6.068316, 2.477348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.291319, 5.688290, 2.546425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696522, 0.308316, 0.647918,
		-0.668809, -0.048114, 0.741876,
		0.259906, -0.950067, 0.172692,
		4.369291, 5.403270, 2.598232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.166511, 6.017560, 3.152497>,  <4.187356, 6.068316, 2.477348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.166511, 6.017560, 3.152497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.403547, 5.710541, 3.054760>,  <4.545769, 5.526329, 2.996118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.403547, 5.710541, 3.054760>,  <4.166511, 6.017560, 3.152497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.403547, 5.710541, 3.054760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576842, 0.192651, 0.793813,
		-0.562218, -0.611354, 0.556918,
		0.592592, -0.767549, -0.244342,
		4.581325, 5.480276, 2.981457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.789663, 6.169580, 2.877180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.884308, 5.786873, 2.944839>,  <5.941095, 5.557249, 2.985435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.884308, 5.786873, 2.944839>,  <5.789663, 6.169580, 2.877180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.884308, 5.786873, 2.944839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926267, -0.169568, 0.336566,
		-0.293333, -0.236313, -0.926343,
		0.236613, -0.956767, 0.169149,
		5.955292, 5.499843, 2.995584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.342613, 5.758370, 2.526617>,  <5.789663, 6.169580, 2.877180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.342613, 5.758370, 2.526617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.466805, 5.511925, 2.816170>,  <5.541319, 5.364058, 2.989902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.466805, 5.511925, 2.816170>,  <5.342613, 5.758370, 2.526617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.466805, 5.511925, 2.816170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915224, -0.399509, 0.052514,
		0.256843, -0.678819, -0.687921,
		0.310479, -0.616114, 0.723883,
		5.559948, 5.327091, 3.033335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.624163, 5.066188, 2.356626>,  <5.342613, 5.758370, 2.526617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.624163, 5.066188, 2.356626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.409267, 5.143692, 2.684975>,  <5.280330, 5.190194, 2.881984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.409267, 5.143692, 2.684975>,  <5.624163, 5.066188, 2.356626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.409267, 5.143692, 2.684975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807559, -0.398987, -0.434348,
		0.243359, -0.896251, 0.370824,
		-0.537239, 0.193759, 0.820873,
		5.248096, 5.201820, 2.931237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.290686, 4.526445, 2.591232>,  <5.624163, 5.066188, 2.356626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.290686, 4.526445, 2.591232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.051983, 4.820717, 2.719391>,  <4.908761, 4.997280, 2.796286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.051983, 4.820717, 2.719391>,  <5.290686, 4.526445, 2.591232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.051983, 4.820717, 2.719391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799800, -0.513086, -0.311550,
		-0.064810, -0.442174, 0.894585,
		-0.596758, 0.735680, 0.320397,
		4.872955, 5.041421, 2.815510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.667269, 4.175110, 2.908306>,  <5.290686, 4.526445, 2.591232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.667269, 4.175110, 2.908306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.574707, 4.555000, 2.823952>,  <4.519170, 4.782935, 2.773339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.574707, 4.555000, 2.823952>,  <4.667269, 4.175110, 2.908306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.574707, 4.555000, 2.823952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912900, -0.286903, -0.290344,
		-0.336251, 0.125331, 0.933396,
		-0.231404, 0.949726, -0.210887,
		4.505286, 4.839918, 2.760686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.027511, 4.305044, 3.271671>,  <4.667269, 4.175110, 2.908306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.027511, 4.305044, 3.271671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.077679, 4.547485, 2.957497>,  <4.107779, 4.692950, 2.768992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.077679, 4.547485, 2.957497>,  <4.027511, 4.305044, 3.271671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.077679, 4.547485, 2.957497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916885, -0.231573, -0.325108,
		-0.378935, 0.760929, 0.526684,
		0.125419, 0.606103, -0.785436,
		4.115304, 4.729316, 2.721866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.401799, 4.635985, 3.167403>,  <4.027511, 4.305044, 3.271671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.401799, 4.635985, 3.167403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.581512, 4.733711, 2.823669>,  <3.689340, 4.792346, 2.617429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.581512, 4.733711, 2.823669>,  <3.401799, 4.635985, 3.167403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.581512, 4.733711, 2.823669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849501, -0.180947, -0.495587,
		-0.276573, 0.952664, 0.126249,
		0.449283, 0.244314, -0.859334,
		3.716297, 4.807005, 2.565869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.935126, 5.056800, 2.846724>,  <3.401799, 4.635985, 3.167403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.935126, 5.056800, 2.846724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.172974, 4.896637, 2.567841>,  <3.315682, 4.800539, 2.400510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.172974, 4.896637, 2.567841>,  <2.935126, 5.056800, 2.846724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.172974, 4.896637, 2.567841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789352, -0.455547, -0.411583,
		-0.152810, 0.795079, -0.586940,
		0.594620, -0.400409, -0.697209,
		3.351360, 4.776515, 2.358678>
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
