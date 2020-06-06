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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<45.027668, 44.280659, 45.142696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904079, 44.578247, 45.379692>,  <44.829926, 44.756802, 45.521889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904079, 44.578247, 45.379692>,  <45.027668, 44.280659, 45.142696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904079, 44.578247, 45.379692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258020, -0.534041, 0.805125,
		0.915404, 0.401632, -0.026957,
		-0.308968, 0.743970, 0.592493,
		44.811390, 44.801437, 45.557442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528938, 44.335915, 45.718380>,  <45.027668, 44.280659, 45.142696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528938, 44.335915, 45.718380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204491, 44.522919, 45.858959>,  <45.009823, 44.635120, 45.943306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204491, 44.522919, 45.858959>,  <45.528938, 44.335915, 45.718380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204491, 44.522919, 45.858959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211300, -0.326073, 0.921427,
		0.545373, 0.821652, 0.165700,
		-0.811123, 0.467509, 0.351446,
		44.961155, 44.663170, 45.964394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719662, 44.561172, 46.397182>,  <45.528938, 44.335915, 45.718380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719662, 44.561172, 46.397182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320602, 44.549614, 46.372345>,  <45.081165, 44.542679, 46.357445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320602, 44.549614, 46.372345>,  <45.719662, 44.561172, 46.397182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320602, 44.549614, 46.372345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038072, -0.519588, 0.853568,
		-0.056931, 0.853928, 0.517268,
		-0.997652, -0.028901, -0.062091,
		45.021305, 44.540943, 46.353718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473648, 44.507603, 47.144768>,  <45.719662, 44.561172, 46.397182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473648, 44.507603, 47.144768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162102, 44.391106, 46.922581>,  <44.975174, 44.321205, 46.789268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162102, 44.391106, 46.922581>,  <45.473648, 44.507603, 47.144768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162102, 44.391106, 46.922581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189803, -0.734662, 0.651343,
		-0.597781, 0.612738, 0.516924,
		-0.778866, -0.291247, -0.555466,
		44.928440, 44.303730, 46.755939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076626, 44.559509, 47.599834>,  <45.473648, 44.507603, 47.144768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076626, 44.559509, 47.599834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915268, 44.318359, 47.324497>,  <44.818455, 44.173668, 47.159294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915268, 44.318359, 47.324497>,  <45.076626, 44.559509, 47.599834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915268, 44.318359, 47.324497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335570, -0.602379, 0.724246,
		-0.851273, 0.523143, 0.040689,
		-0.403394, -0.602877, -0.688340,
		44.794250, 44.137497, 47.117996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369705, 44.380615, 47.774517>,  <45.076626, 44.559509, 47.599834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369705, 44.380615, 47.774517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509430, 44.090576, 47.537125>,  <44.593266, 43.916553, 47.394688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509430, 44.090576, 47.537125>,  <44.369705, 44.380615, 47.774517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509430, 44.090576, 47.537125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169511, -0.671829, 0.721049,
		-0.921547, -0.151267, -0.357587,
		0.349308, -0.725096, -0.593480,
		44.614223, 43.873047, 47.359081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829800, 43.852921, 47.596447>,  <44.369705, 44.380615, 47.774517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829800, 43.852921, 47.596447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174381, 43.652374, 47.564125>,  <44.381130, 43.532047, 47.544731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174381, 43.652374, 47.564125>,  <43.829800, 43.852921, 47.596447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174381, 43.652374, 47.564125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316138, -0.653968, 0.687301,
		-0.397431, -0.566533, -0.721864,
		0.861455, -0.501364, -0.080805,
		44.432819, 43.501965, 47.539883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617237, 43.175953, 47.589188>,  <43.829800, 43.852921, 47.596447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617237, 43.175953, 47.589188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002365, 43.144135, 47.692455>,  <44.233440, 43.125042, 47.754414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002365, 43.144135, 47.692455>,  <43.617237, 43.175953, 47.589188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002365, 43.144135, 47.692455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259902, -0.533411, 0.804937,
		0.073676, -0.842107, -0.534254,
		0.962820, -0.079549, 0.258165,
		44.291210, 43.120270, 47.769905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624718, 42.534187, 47.903000>,  <43.617237, 43.175953, 47.589188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.624718, 42.534187, 47.903000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979637, 42.684410, 48.010075>,  <44.192589, 42.774544, 48.074318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979637, 42.684410, 48.010075>,  <43.624718, 42.534187, 47.903000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979637, 42.684410, 48.010075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035191, -0.523590, 0.851243,
		0.459846, -0.764729, -0.451365,
		0.887301, 0.375557, 0.267682,
		44.245827, 42.797077, 48.090378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005714, 41.918995, 48.156906>,  <43.624718, 42.534187, 47.903000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005714, 41.918995, 48.156906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141655, 42.267082, 48.299576>,  <44.223221, 42.475937, 48.385178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141655, 42.267082, 48.299576>,  <44.005714, 41.918995, 48.156906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141655, 42.267082, 48.299576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199920, -0.303732, 0.931547,
		0.918985, -0.387892, 0.070752,
		0.339850, 0.870222, 0.356672,
		44.243610, 42.528149, 48.406578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405476, 41.696674, 48.616100>,  <44.005714, 41.918995, 48.156906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405476, 41.696674, 48.616100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327816, 42.074059, 48.723568>,  <44.281219, 42.300491, 48.788048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327816, 42.074059, 48.723568>,  <44.405476, 41.696674, 48.616100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327816, 42.074059, 48.723568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234906, -0.310625, 0.921049,
		0.952430, 0.115713, 0.281935,
		-0.194154, 0.943463, 0.268667,
		44.269569, 42.357098, 48.804169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.760220, 41.789204, 49.245632>,  <44.405476, 41.696674, 48.616100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.760220, 41.789204, 49.245632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466660, 42.060875, 49.249767>,  <44.290524, 42.223877, 49.252247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466660, 42.060875, 49.249767>,  <44.760220, 41.789204, 49.245632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466660, 42.060875, 49.249767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123099, -0.147955, 0.981303,
		0.668011, 0.718905, 0.192190,
		-0.733900, 0.679179, 0.010339,
		44.246490, 42.264629, 49.252869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761791, 42.148991, 49.937466>,  <44.760220, 41.789204, 49.245632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761791, 42.148991, 49.937466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401268, 42.243942, 49.792530>,  <44.184952, 42.300911, 49.705566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401268, 42.243942, 49.792530>,  <44.761791, 42.148991, 49.937466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401268, 42.243942, 49.792530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392496, -0.093636, 0.914975,
		0.183264, 0.966895, 0.177564,
		-0.901311, 0.237375, -0.362342,
		44.130875, 42.315155, 49.683826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483128, 42.743870, 50.380322>,  <44.761791, 42.148991, 49.937466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.483128, 42.743870, 50.380322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156334, 42.575325, 50.222847>,  <43.960258, 42.474197, 50.128361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156334, 42.575325, 50.222847>,  <44.483128, 42.743870, 50.380322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156334, 42.575325, 50.222847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422891, -0.026360, 0.905797,
		-0.392046, 0.906509, -0.156654,
		-0.816984, -0.421362, -0.393690,
		43.911240, 42.448917, 50.104740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880299, 43.203503, 50.581665>,  <44.483128, 42.743870, 50.380322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880299, 43.203503, 50.581665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753284, 42.834915, 50.492153>,  <43.677078, 42.613762, 50.438446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753284, 42.834915, 50.492153>,  <43.880299, 43.203503, 50.581665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753284, 42.834915, 50.492153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511091, -0.032468, 0.858913,
		-0.798724, 0.387103, -0.460643,
		-0.317531, -0.921465, -0.223778,
		43.658024, 42.558475, 50.425018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136463, 43.230293, 50.799816>,  <43.880299, 43.203503, 50.581665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136463, 43.230293, 50.799816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227325, 42.842285, 50.765282>,  <43.281841, 42.609478, 50.744560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227325, 42.842285, 50.765282>,  <43.136463, 43.230293, 50.799816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227325, 42.842285, 50.765282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529366, -0.197404, 0.825108,
		-0.817419, -0.141719, -0.558339,
		0.227152, -0.970025, -0.086341,
		43.295471, 42.551277, 50.739380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557369, 42.954929, 50.988842>,  <43.136463, 43.230293, 50.799816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557369, 42.954929, 50.988842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811462, 42.648445, 51.027630>,  <42.963921, 42.464554, 51.050903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811462, 42.648445, 51.027630>,  <42.557369, 42.954929, 50.988842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811462, 42.648445, 51.027630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423311, -0.240405, 0.873507,
		-0.645976, -0.595929, -0.477057,
		0.635235, -0.766208, 0.096968,
		43.002033, 42.418583, 51.056721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117607, 42.430038, 51.183155>,  <42.557369, 42.954929, 50.988842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117607, 42.430038, 51.183155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489914, 42.334656, 51.294022>,  <42.713299, 42.277428, 51.360542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489914, 42.334656, 51.294022>,  <42.117607, 42.430038, 51.183155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489914, 42.334656, 51.294022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324663, -0.190409, 0.926465,
		-0.168127, -0.952309, -0.254637,
		0.930767, -0.238435, 0.277167,
		42.769142, 42.263119, 51.377171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050476, 41.835381, 51.583523>,  <42.117607, 42.430038, 51.183155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050476, 41.835381, 51.583523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392242, 42.020592, 51.677822>,  <42.597301, 42.131721, 51.734402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392242, 42.020592, 51.677822>,  <42.050476, 41.835381, 51.583523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392242, 42.020592, 51.677822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125303, -0.256714, 0.958330,
		0.504259, -0.848350, -0.161321,
		0.854413, 0.463033, 0.235751,
		42.648567, 42.159500, 51.748547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576519, 41.314457, 51.821182>,  <42.050476, 41.835381, 51.583523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576519, 41.314457, 51.821182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653137, 41.674728, 51.977173>,  <42.699108, 41.890892, 52.070766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653137, 41.674728, 51.977173>,  <42.576519, 41.314457, 51.821182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653137, 41.674728, 51.977173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013428, -0.394893, 0.918629,
		0.981392, -0.181196, -0.063546,
		0.191546, 0.900681, 0.389978,
		42.710602, 41.944931, 52.094166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077942, 41.156212, 52.278519>,  <42.576519, 41.314457, 51.821182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077942, 41.156212, 52.278519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951698, 41.518768, 52.390842>,  <42.875954, 41.736301, 52.458237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951698, 41.518768, 52.390842>,  <43.077942, 41.156212, 52.278519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951698, 41.518768, 52.390842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049425, -0.311234, 0.949047,
		0.947601, 0.285648, 0.143027,
		-0.315608, 0.906388, 0.280808,
		42.857018, 41.790684, 52.475086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226429, 41.147144, 53.010590>,  <43.077942, 41.156212, 52.278519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226429, 41.147144, 53.010590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020367, 41.487938, 52.973213>,  <42.896729, 41.692413, 52.950787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020367, 41.487938, 52.973213>,  <43.226429, 41.147144, 53.010590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020367, 41.487938, 52.973213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120563, 0.035910, 0.992056,
		0.848576, 0.522327, 0.084219,
		-0.515154, 0.851989, -0.093446,
		42.865822, 41.743534, 52.945179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513668, 41.733917, 53.424904>,  <43.226429, 41.147144, 53.010590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513668, 41.733917, 53.424904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131889, 41.843224, 53.376984>,  <42.902821, 41.908806, 53.348232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131889, 41.843224, 53.376984>,  <43.513668, 41.733917, 53.424904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131889, 41.843224, 53.376984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098000, 0.092123, 0.990913,
		0.281815, 0.957518, -0.061147,
		-0.954451, 0.273262, -0.119799,
		42.845554, 41.925201, 53.341045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366596, 42.241787, 53.873295>,  <43.513668, 41.733917, 53.424904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366596, 42.241787, 53.873295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989220, 42.138741, 53.789822>,  <42.762794, 42.076912, 53.739738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989220, 42.138741, 53.789822>,  <43.366596, 42.241787, 53.873295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989220, 42.138741, 53.789822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251080, 0.144128, 0.957176,
		-0.216509, 0.955437, -0.200659,
		-0.943442, -0.257619, -0.208686,
		42.706188, 42.061455, 53.727215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963444, 42.757351, 54.202042>,  <43.366596, 42.241787, 53.873295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963444, 42.757351, 54.202042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737591, 42.431946, 54.146336>,  <42.602081, 42.236702, 54.112911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737591, 42.431946, 54.146336>,  <42.963444, 42.757351, 54.202042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737591, 42.431946, 54.146336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306157, 0.049749, 0.950680,
		-0.766460, 0.579419, -0.277151,
		-0.564630, -0.813510, -0.139262,
		42.568203, 42.187893, 54.104557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300407, 43.048832, 54.467819>,  <42.963444, 42.757351, 54.202042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300407, 43.048832, 54.467819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335690, 42.650406, 54.471375>,  <42.356857, 42.411350, 54.473507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335690, 42.650406, 54.471375>,  <42.300407, 43.048832, 54.467819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335690, 42.650406, 54.471375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215411, -0.010360, 0.976469,
		-0.972532, -0.088042, -0.215476,
		0.088202, -0.996063, 0.008890,
		42.362152, 42.351585, 54.474041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614071, 42.746101, 54.769329>,  <42.300407, 43.048832, 54.467819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614071, 42.746101, 54.769329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928398, 42.502289, 54.811214>,  <42.116993, 42.356003, 54.836346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928398, 42.502289, 54.811214>,  <41.614071, 42.746101, 54.769329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928398, 42.502289, 54.811214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183463, -0.068053, 0.980668,
		-0.590623, -0.789835, -0.165304,
		0.785816, -0.609532, 0.104712,
		42.164143, 42.319427, 54.842628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297596, 42.193890, 55.080246>,  <41.614071, 42.746101, 54.769329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297596, 42.193890, 55.080246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678345, 42.109955, 55.169601>,  <41.906796, 42.059593, 55.223213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678345, 42.109955, 55.169601>,  <41.297596, 42.193890, 55.080246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678345, 42.109955, 55.169601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270260, -0.230929, 0.934682,
		-0.144539, -0.950075, -0.276525,
		0.951876, -0.209832, 0.223389,
		41.963909, 42.047005, 55.236618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312996, 41.488476, 55.360588>,  <41.297596, 42.193890, 55.080246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312996, 41.488476, 55.360588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656967, 41.648827, 55.486965>,  <41.863350, 41.745037, 55.562794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656967, 41.648827, 55.486965>,  <41.312996, 41.488476, 55.360588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656967, 41.648827, 55.486965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081779, -0.502794, 0.860529,
		0.503820, -0.765832, -0.399584,
		0.859929, 0.400874, 0.315946,
		41.914948, 41.769089, 55.581749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486771, 41.077148, 55.850590>,  <41.312996, 41.488476, 55.360588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486771, 41.077148, 55.850590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763058, 41.353996, 55.934380>,  <41.928829, 41.520103, 55.984653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763058, 41.353996, 55.934380>,  <41.486771, 41.077148, 55.850590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763058, 41.353996, 55.934380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074483, -0.356239, 0.931422,
		0.719275, -0.627750, -0.297613,
		0.690721, 0.692115, 0.209477,
		41.970276, 41.561630, 55.997223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193169, 40.767532, 56.137608>,  <41.486771, 41.077148, 55.850590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193169, 40.767532, 56.137608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135014, 41.137726, 56.277515>,  <42.100121, 41.359840, 56.361462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135014, 41.137726, 56.277515>,  <42.193169, 40.767532, 56.137608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135014, 41.137726, 56.277515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125152, -0.367891, 0.921408,
		0.981427, 0.090186, 0.169313,
		-0.145387, 0.925485, 0.349771,
		42.091396, 41.415371, 56.382446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470123, 40.704681, 56.767426>,  <42.193169, 40.767532, 56.137608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470123, 40.704681, 56.767426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243412, 41.034149, 56.760059>,  <42.107388, 41.231831, 56.755638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243412, 41.034149, 56.760059>,  <42.470123, 40.704681, 56.767426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243412, 41.034149, 56.760059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250859, -0.151239, 0.956136,
		0.784752, 0.546534, 0.292342,
		-0.566775, 0.823667, -0.018418,
		42.073380, 41.281250, 56.754536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661701, 41.099178, 57.389961>,  <42.470123, 40.704681, 56.767426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661701, 41.099178, 57.389961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285835, 41.207741, 57.306667>,  <42.060314, 41.272877, 57.256691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285835, 41.207741, 57.306667>,  <42.661701, 41.099178, 57.389961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285835, 41.207741, 57.306667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200284, 0.056999, 0.978078,
		0.277326, 0.960775, 0.000799,
		-0.939668, 0.271406, -0.208235,
		42.003933, 41.289162, 57.244198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429432, 41.360371, 57.996292>,  <42.661701, 41.099178, 57.389961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429432, 41.360371, 57.996292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084030, 41.321472, 57.798340>,  <41.876789, 41.298134, 57.679569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084030, 41.321472, 57.798340>,  <42.429432, 41.360371, 57.996292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084030, 41.321472, 57.798340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503818, 0.121556, 0.855214,
		-0.023007, 0.987810, -0.153956,
		-0.863503, -0.097242, -0.494880,
		41.824978, 41.292301, 57.649876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134571, 41.997246, 58.158546>,  <42.429432, 41.360371, 57.996292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134571, 41.997246, 58.158546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859604, 41.723831, 58.060371>,  <41.694626, 41.559784, 58.001469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859604, 41.723831, 58.060371>,  <42.134571, 41.997246, 58.158546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859604, 41.723831, 58.060371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492120, 0.189860, 0.849571,
		-0.534116, 0.704790, -0.466895,
		-0.687414, -0.683538, -0.245435,
		41.653381, 41.518768, 57.986740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458706, 42.306290, 58.178459>,  <42.134571, 41.997246, 58.158546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458706, 42.306290, 58.178459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424652, 41.918938, 58.272263>,  <41.404221, 41.686527, 58.328545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424652, 41.918938, 58.272263>,  <41.458706, 42.306290, 58.178459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424652, 41.918938, 58.272263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478607, 0.246174, 0.842813,
		-0.873892, -0.040487, -0.484430,
		-0.085131, -0.968379, 0.234507,
		41.399113, 41.628426, 58.342613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729622, 42.148849, 58.520973>,  <41.458706, 42.306290, 58.178459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729622, 42.148849, 58.520973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963531, 41.864937, 58.678078>,  <41.103874, 41.694592, 58.772339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963531, 41.864937, 58.678078>,  <40.729622, 42.148849, 58.520973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963531, 41.864937, 58.678078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329832, 0.234305, 0.914501,
		-0.741118, -0.664317, -0.097093,
		0.584769, -0.709777, 0.392761,
		41.138962, 41.652004, 58.795906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295433, 41.948524, 59.056419>,  <40.729622, 42.148849, 58.520973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295433, 41.948524, 59.056419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651863, 41.790321, 59.145462>,  <40.865723, 41.695400, 59.198887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651863, 41.790321, 59.145462>,  <40.295433, 41.948524, 59.056419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651863, 41.790321, 59.145462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130803, 0.245861, 0.960439,
		-0.434595, -0.884942, 0.167347,
		0.891077, -0.395512, 0.222603,
		40.919186, 41.671669, 59.212242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203445, 41.450432, 59.572598>,  <40.295433, 41.948524, 59.056419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203445, 41.450432, 59.572598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585869, 41.566170, 59.591507>,  <40.815323, 41.635612, 59.602852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585869, 41.566170, 59.591507>,  <40.203445, 41.450432, 59.572598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585869, 41.566170, 59.591507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129122, 0.270796, 0.953937,
		0.263180, -0.918133, 0.296256,
		0.956067, 0.289311, 0.047283,
		40.872684, 41.652973, 59.605690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423462, 41.239357, 60.202019>,  <40.203445, 41.450432, 59.572598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423462, 41.239357, 60.202019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705284, 41.507980, 60.110271>,  <40.874378, 41.669155, 60.055222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705284, 41.507980, 60.110271>,  <40.423462, 41.239357, 60.202019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705284, 41.507980, 60.110271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206177, 0.115568, 0.971666,
		0.679039, -0.731883, -0.057036,
		0.704555, 0.671559, -0.229372,
		40.916649, 41.709450, 60.041458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992790, 41.059235, 60.640285>,  <40.423462, 41.239357, 60.202019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992790, 41.059235, 60.640285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993546, 41.443855, 60.530441>,  <40.993999, 41.674629, 60.464535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993546, 41.443855, 60.530441>,  <40.992790, 41.059235, 60.640285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993546, 41.443855, 60.530441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144071, 0.271481, 0.951600,
		0.989566, -0.041356, -0.138020,
		0.001885, 0.961555, -0.274607,
		40.994110, 41.732323, 60.448059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521427, 41.370556, 60.978249>,  <40.992790, 41.059235, 60.640285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521427, 41.370556, 60.978249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330513, 41.707489, 60.878109>,  <41.215965, 41.909649, 60.818024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330513, 41.707489, 60.878109>,  <41.521427, 41.370556, 60.978249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330513, 41.707489, 60.878109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158468, 0.362727, 0.918323,
		0.864341, 0.398631, -0.306607,
		-0.477287, 0.842332, -0.250349,
		41.187328, 41.960190, 60.803005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790890, 42.010830, 61.360981>,  <41.521427, 41.370556, 60.978249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790890, 42.010830, 61.360981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434521, 42.147179, 61.240936>,  <41.220699, 42.228989, 61.168907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434521, 42.147179, 61.240936>,  <41.790890, 42.010830, 61.360981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434521, 42.147179, 61.240936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105850, 0.486767, 0.867095,
		0.441651, 0.804280, -0.397590,
		-0.890921, 0.340869, -0.300114,
		41.167244, 42.249439, 61.150902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693588, 42.782654, 61.235104>,  <41.790890, 42.010830, 61.360981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693588, 42.782654, 61.235104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359074, 42.617104, 61.378960>,  <41.158367, 42.517773, 61.465271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359074, 42.617104, 61.378960>,  <41.693588, 42.782654, 61.235104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359074, 42.617104, 61.378960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015506, 0.637799, 0.770047,
		-0.548080, 0.649553, -0.526962,
		-0.836282, -0.413876, 0.359637,
		41.108189, 42.492939, 61.486851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062229, 43.250366, 61.252880>,  <41.693588, 42.782654, 61.235104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062229, 43.250366, 61.252880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084511, 42.984032, 61.550488>,  <41.097881, 42.824230, 61.729050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084511, 42.984032, 61.550488>,  <41.062229, 43.250366, 61.252880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084511, 42.984032, 61.550488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011631, 0.744688, 0.667311,
		-0.998379, -0.045825, 0.033736,
		0.055703, -0.665837, 0.744015,
		41.101223, 42.784279, 61.773693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673656, 43.869617, 61.040649>,  <41.062229, 43.250366, 61.252880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673656, 43.869617, 61.040649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339142, 44.086449, 61.073578>,  <40.138435, 44.216549, 61.093334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339142, 44.086449, 61.073578>,  <40.673656, 43.869617, 61.040649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339142, 44.086449, 61.073578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112915, -0.317197, 0.941614,
		0.536546, 0.778160, 0.326476,
		-0.836283, 0.542083, 0.082325,
		40.088257, 44.249073, 61.098274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695347, 44.297386, 61.703938>,  <40.673656, 43.869617, 61.040649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695347, 44.297386, 61.703938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313568, 44.222710, 61.610832>,  <40.084503, 44.177902, 61.554970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313568, 44.222710, 61.610832>,  <40.695347, 44.297386, 61.703938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313568, 44.222710, 61.610832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184304, -0.244638, 0.951937,
		-0.234663, 0.951472, 0.199085,
		-0.954445, -0.186692, -0.232767,
		40.027233, 44.166702, 61.541000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246536, 43.957378, 62.161438>,  <40.695347, 44.297386, 61.703938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246536, 43.957378, 62.161438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895718, 43.928009, 62.351341>,  <39.685226, 43.910389, 62.465282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895718, 43.928009, 62.351341>,  <40.246536, 43.957378, 62.161438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895718, 43.928009, 62.351341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461005, 0.406622, -0.788754,
		-0.135133, -0.910641, -0.390476,
		-0.877049, -0.073424, 0.474758,
		39.632603, 43.905983, 62.493767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779076, 43.536377, 61.806412>,  <40.246536, 43.957378, 62.161438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779076, 43.536377, 61.806412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590210, 43.817497, 62.019249>,  <39.476891, 43.986172, 62.146954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590210, 43.817497, 62.019249>,  <39.779076, 43.536377, 61.806412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590210, 43.817497, 62.019249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264973, 0.462549, -0.846072,
		-0.840743, -0.540477, -0.032176,
		-0.472165, 0.702803, 0.532097,
		39.448559, 44.028339, 62.178879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152618, 43.665714, 61.428402>,  <39.779076, 43.536377, 61.806412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152618, 43.665714, 61.428402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317406, 43.964882, 61.636593>,  <39.416279, 44.144382, 61.761505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317406, 43.964882, 61.636593>,  <39.152618, 43.665714, 61.428402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317406, 43.964882, 61.636593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171290, 0.497448, -0.850415,
		-0.894952, 0.439499, 0.076823,
		0.411971, 0.747921, 0.520474,
		39.440998, 44.189259, 61.792736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922577, 44.284618, 61.144188>,  <39.152618, 43.665714, 61.428402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922577, 44.284618, 61.144188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254959, 44.385445, 61.342571>,  <39.454388, 44.445942, 61.461601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254959, 44.385445, 61.342571>,  <38.922577, 44.284618, 61.144188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254959, 44.385445, 61.342571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321360, 0.510222, -0.797747,
		-0.454133, 0.822274, 0.342969,
		0.830958, 0.252067, 0.495955,
		39.504246, 44.461063, 61.491356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048351, 44.991245, 61.204967>,  <38.922577, 44.284618, 61.144188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048351, 44.991245, 61.204967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379745, 44.769836, 61.170963>,  <39.578583, 44.636990, 61.150558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379745, 44.769836, 61.170963>,  <39.048351, 44.991245, 61.204967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379745, 44.769836, 61.170963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222065, 0.464080, -0.857506,
		0.514101, 0.691552, 0.507401,
		0.828485, -0.553521, -0.085014,
		39.628292, 44.603779, 61.145458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575527, 45.442566, 61.153725>,  <39.048351, 44.991245, 61.204967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575527, 45.442566, 61.153725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701302, 45.104675, 60.980492>,  <39.776764, 44.901939, 60.876553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701302, 45.104675, 60.980492>,  <39.575527, 45.442566, 61.153725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701302, 45.104675, 60.980492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285733, 0.519289, -0.805416,
		0.905256, 0.129502, 0.404649,
		0.314433, -0.844729, -0.433087,
		39.795631, 44.851257, 60.850567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133488, 45.672169, 60.917728>,  <39.575527, 45.442566, 61.153725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133488, 45.672169, 60.917728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084904, 45.332283, 60.712502>,  <40.055752, 45.128353, 60.589367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084904, 45.332283, 60.712502>,  <40.133488, 45.672169, 60.917728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084904, 45.332283, 60.712502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266085, 0.470100, -0.841549,
		0.956267, -0.238734, 0.168998,
		-0.121460, -0.849713, -0.513064,
		40.048466, 45.077370, 60.558582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810123, 45.498169, 60.456421>,  <40.133488, 45.672169, 60.917728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810123, 45.498169, 60.456421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487823, 45.315277, 60.305843>,  <40.294445, 45.205540, 60.215496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487823, 45.315277, 60.305843>,  <40.810123, 45.498169, 60.456421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487823, 45.315277, 60.305843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154715, 0.451042, -0.878991,
		0.571694, -0.766486, -0.292686,
		-0.805748, -0.457231, -0.376444,
		40.246098, 45.178108, 60.192909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021397, 45.336697, 59.810139>,  <40.810123, 45.498169, 60.456421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021397, 45.336697, 59.810139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629005, 45.261833, 59.789501>,  <40.393570, 45.216915, 59.777119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629005, 45.261833, 59.789501>,  <41.021397, 45.336697, 59.810139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629005, 45.261833, 59.789501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010694, 0.213278, -0.976933,
		0.193831, -0.958900, -0.207219,
		-0.980977, -0.187143, -0.051594,
		40.334713, 45.205685, 59.774021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902115, 44.840069, 59.208687>,  <41.021397, 45.336697, 59.810139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902115, 44.840069, 59.208687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553207, 45.027214, 59.265617>,  <40.343864, 45.139500, 59.299778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553207, 45.027214, 59.265617>,  <40.902115, 44.840069, 59.208687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553207, 45.027214, 59.265617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021328, 0.254375, -0.966871,
		-0.488567, -0.846404, -0.211904,
		-0.872266, 0.467861, 0.142331,
		40.291527, 45.167572, 59.308315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489429, 44.622112, 58.734886>,  <40.902115, 44.840069, 59.208687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489429, 44.622112, 58.734886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315823, 44.964188, 58.848225>,  <40.211658, 45.169434, 58.916229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315823, 44.964188, 58.848225>,  <40.489429, 44.622112, 58.734886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315823, 44.964188, 58.848225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019446, 0.305550, -0.951977,
		-0.900695, -0.418683, -0.115984,
		-0.434016, 0.855186, 0.283349,
		40.185619, 45.220745, 58.933228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825523, 44.772564, 58.310085>,  <40.489429, 44.622112, 58.734886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825523, 44.772564, 58.310085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976196, 45.120712, 58.436932>,  <40.066601, 45.329601, 58.513039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976196, 45.120712, 58.436932>,  <39.825523, 44.772564, 58.310085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976196, 45.120712, 58.436932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179463, 0.404412, -0.896796,
		-0.908794, 0.280892, 0.308533,
		0.376678, 0.870374, 0.317118,
		40.089199, 45.381824, 58.532066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218121, 45.224525, 58.153152>,  <39.825523, 44.772564, 58.310085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218121, 45.224525, 58.153152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539829, 45.459511, 58.189003>,  <39.732853, 45.600502, 58.210514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539829, 45.459511, 58.189003>,  <39.218121, 45.224525, 58.153152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539829, 45.459511, 58.189003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123273, 0.312460, -0.941898,
		-0.581337, 0.746493, 0.323721,
		0.804270, 0.587467, 0.089622,
		39.781109, 45.635750, 58.215889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103474, 45.740944, 57.647217>,  <39.218121, 45.224525, 58.153152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103474, 45.740944, 57.647217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496807, 45.781075, 57.707863>,  <39.732807, 45.805153, 57.744251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496807, 45.781075, 57.707863>,  <39.103474, 45.740944, 57.647217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496807, 45.781075, 57.707863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102763, 0.381239, -0.918747,
		-0.149978, 0.919016, 0.364575,
		0.983334, 0.100327, 0.151619,
		39.791809, 45.811172, 57.753349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356445, 46.430103, 57.452938>,  <39.103474, 45.740944, 57.647217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356445, 46.430103, 57.452938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706268, 46.236534, 57.440517>,  <39.916164, 46.120392, 57.433064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706268, 46.236534, 57.440517>,  <39.356445, 46.430103, 57.452938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706268, 46.236534, 57.440517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100557, 0.243637, -0.964639,
		0.474375, 0.840513, 0.261737,
		0.874561, -0.483920, -0.031056,
		39.968636, 46.091358, 57.431202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855213, 46.945751, 57.088852>,  <39.356445, 46.430103, 57.452938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855213, 46.945751, 57.088852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013374, 46.578598, 57.075314>,  <40.108269, 46.358307, 57.067188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013374, 46.578598, 57.075314>,  <39.855213, 46.945751, 57.088852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013374, 46.578598, 57.075314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162641, 0.106236, -0.980950,
		0.903995, 0.382362, 0.191291,
		0.395400, -0.917885, -0.033849,
		40.131996, 46.303234, 57.065159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505413, 47.081947, 56.725788>,  <39.855213, 46.945751, 57.088852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505413, 47.081947, 56.725788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411152, 46.694237, 56.697575>,  <40.354595, 46.461613, 56.680645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411152, 46.694237, 56.697575>,  <40.505413, 47.081947, 56.725788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411152, 46.694237, 56.697575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241838, 0.011808, -0.970245,
		0.941266, -0.245699, 0.231625,
		-0.235653, -0.969274, -0.070534,
		40.340454, 46.403454, 56.676414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017673, 46.684898, 56.375530>,  <40.505413, 47.081947, 56.725788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017673, 46.684898, 56.375530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708534, 46.435699, 56.327221>,  <40.523052, 46.286182, 56.298237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708534, 46.435699, 56.327221>,  <41.017673, 46.684898, 56.375530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708534, 46.435699, 56.327221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317879, -0.215341, -0.923353,
		0.549237, -0.752002, 0.364462,
		-0.772847, -0.622994, -0.120773,
		40.476681, 46.248802, 56.290989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325935, 46.159729, 56.085556>,  <41.017673, 46.684898, 56.375530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325935, 46.159729, 56.085556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937752, 46.104515, 56.006397>,  <40.704842, 46.071388, 55.958900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937752, 46.104515, 56.006397>,  <41.325935, 46.159729, 56.085556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937752, 46.104515, 56.006397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222387, -0.193516, -0.955560,
		0.093603, -0.971338, 0.218496,
		-0.970455, -0.138034, -0.197899,
		40.646614, 46.063107, 55.947029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275562, 45.467682, 55.768341>,  <41.325935, 46.159729, 56.085556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275562, 45.467682, 55.768341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957668, 45.678154, 55.647331>,  <40.766930, 45.804440, 55.574726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957668, 45.678154, 55.647331>,  <41.275562, 45.467682, 55.768341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957668, 45.678154, 55.647331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206763, -0.233908, -0.950019,
		-0.570648, -0.817568, 0.077101,
		-0.794739, 0.526185, -0.302522,
		40.719246, 45.836010, 55.556576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888325, 45.029709, 55.357815>,  <41.275562, 45.467682, 55.768341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888325, 45.029709, 55.357815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798882, 45.402634, 55.244110>,  <40.745216, 45.626389, 55.175888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798882, 45.402634, 55.244110>,  <40.888325, 45.029709, 55.357815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798882, 45.402634, 55.244110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245512, -0.228364, -0.942111,
		-0.943252, -0.280449, -0.177830,
		-0.223604, 0.932308, -0.284258,
		40.731800, 45.682327, 55.158833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589642, 44.915936, 54.727077>,  <40.888325, 45.029709, 55.357815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589642, 44.915936, 54.727077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680305, 45.305344, 54.738907>,  <40.734703, 45.538990, 54.746006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680305, 45.305344, 54.738907>,  <40.589642, 44.915936, 54.727077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680305, 45.305344, 54.738907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282739, -0.036713, -0.958494,
		-0.932031, 0.225618, -0.283575,
		0.226664, 0.973524, 0.029573,
		40.748306, 45.597401, 54.747780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526577, 45.079742, 53.982029>,  <40.589642, 44.915936, 54.727077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526577, 45.079742, 53.982029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703674, 45.400558, 54.142384>,  <40.809933, 45.593048, 54.238598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703674, 45.400558, 54.142384>,  <40.526577, 45.079742, 53.982029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703674, 45.400558, 54.142384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426291, 0.205053, -0.881039,
		-0.788834, 0.560964, -0.251118,
		0.442739, 0.802042, 0.400886,
		40.836494, 45.641171, 54.262650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484566, 45.657665, 53.507854>,  <40.526577, 45.079742, 53.982029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484566, 45.657665, 53.507854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805218, 45.760277, 53.723850>,  <40.997608, 45.821846, 53.853447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805218, 45.760277, 53.723850>,  <40.484566, 45.657665, 53.507854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805218, 45.760277, 53.723850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487871, 0.241312, -0.838898,
		-0.345511, 0.935927, 0.068286,
		0.801626, 0.256534, 0.539988,
		41.045704, 45.837238, 53.885845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761734, 46.185516, 53.220993>,  <40.484566, 45.657665, 53.507854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761734, 46.185516, 53.220993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086754, 46.042702, 53.405289>,  <41.281765, 45.957012, 53.515865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086754, 46.042702, 53.405289>,  <40.761734, 46.185516, 53.220993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086754, 46.042702, 53.405289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540573, 0.165915, -0.824775,
		0.218032, 0.919237, 0.327819,
		0.812554, -0.357037, 0.460740,
		41.330521, 45.935589, 53.543510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319126, 46.576134, 52.954449>,  <40.761734, 46.185516, 53.220993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319126, 46.576134, 52.954449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498215, 46.253983, 53.109840>,  <41.605667, 46.060692, 53.203075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498215, 46.253983, 53.109840>,  <41.319126, 46.576134, 52.954449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498215, 46.253983, 53.109840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703462, 0.049056, -0.709039,
		0.551987, 0.590729, 0.588515,
		0.447719, -0.805378, 0.388477,
		41.632530, 46.012371, 53.226383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972221, 46.763725, 52.957306>,  <41.319126, 46.576134, 52.954449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972221, 46.763725, 52.957306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955269, 46.364090, 52.959549>,  <41.945099, 46.124310, 52.960896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955269, 46.364090, 52.959549>,  <41.972221, 46.763725, 52.957306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955269, 46.364090, 52.959549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551800, -0.028081, -0.833504,
		0.832899, -0.032231, 0.552486,
		-0.042379, -0.999086, 0.005603,
		41.942554, 46.064365, 52.961231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535454, 46.561848, 52.729057>,  <41.972221, 46.763725, 52.957306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535454, 46.561848, 52.729057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363510, 46.206047, 52.667084>,  <42.260345, 45.992565, 52.629898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363510, 46.206047, 52.667084>,  <42.535454, 46.561848, 52.729057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363510, 46.206047, 52.667084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361387, -0.012242, -0.932335,
		0.827420, -0.456762, 0.326718,
		-0.429855, -0.889505, -0.154938,
		42.234554, 45.939194, 52.620602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109642, 46.049950, 52.640881>,  <42.535454, 46.561848, 52.729057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109642, 46.049950, 52.640881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767754, 45.921570, 52.477692>,  <42.562622, 45.844540, 52.379776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767754, 45.921570, 52.477692>,  <43.109642, 46.049950, 52.640881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767754, 45.921570, 52.477692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398439, 0.098121, -0.911931,
		0.332718, -0.941999, 0.044014,
		-0.854719, -0.320953, -0.407976,
		42.511337, 45.825283, 52.355297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381126, 45.492813, 52.207668>,  <43.109642, 46.049950, 52.640881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381126, 45.492813, 52.207668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016003, 45.576477, 52.067371>,  <42.796928, 45.626675, 51.983192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016003, 45.576477, 52.067371>,  <43.381126, 45.492813, 52.207668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016003, 45.576477, 52.067371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348436, -0.049046, -0.936049,
		-0.212987, -0.976650, -0.028109,
		-0.912814, 0.209160, -0.350746,
		42.742157, 45.639225, 51.962147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123615, 44.985111, 51.631599>,  <43.381126, 45.492813, 52.207668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123615, 44.985111, 51.631599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921192, 45.319359, 51.546139>,  <42.799740, 45.519909, 51.494862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921192, 45.319359, 51.546139>,  <43.123615, 44.985111, 51.631599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921192, 45.319359, 51.546139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238687, -0.102355, -0.965687,
		-0.828816, -0.539687, -0.147654,
		-0.506056, 0.835620, -0.213649,
		42.769375, 45.570045, 51.482044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881817, 44.915249, 50.908073>,  <43.123615, 44.985111, 51.631599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881817, 44.915249, 50.908073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768757, 45.292633, 50.977352>,  <42.700920, 45.519062, 51.018917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768757, 45.292633, 50.977352>,  <42.881817, 44.915249, 50.908073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768757, 45.292633, 50.977352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109175, 0.211023, -0.971365,
		-0.952991, -0.255644, -0.162647,
		-0.282646, 0.943460, 0.173193,
		42.683964, 45.575672, 51.029308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361958, 45.130062, 50.281357>,  <42.881817, 44.915249, 50.908073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361958, 45.130062, 50.281357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505615, 45.462692, 50.450821>,  <42.591812, 45.662270, 50.552502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505615, 45.462692, 50.450821>,  <42.361958, 45.130062, 50.281357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505615, 45.462692, 50.450821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145850, 0.398363, -0.905558,
		-0.921814, 0.387020, 0.021786,
		0.359148, 0.831578, 0.423663,
		42.613361, 45.712166, 50.577919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949863, 45.768326, 50.083561>,  <42.361958, 45.130062, 50.281357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949863, 45.768326, 50.083561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298237, 45.944115, 50.171513>,  <42.507259, 46.049587, 50.224285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298237, 45.944115, 50.171513>,  <41.949863, 45.768326, 50.083561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298237, 45.944115, 50.171513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005960, 0.437969, -0.898970,
		-0.491373, 0.784249, 0.378821,
		0.870929, 0.439472, 0.219880,
		42.559517, 46.075954, 50.237476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924809, 46.401318, 49.761253>,  <41.949863, 45.768326, 50.083561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924809, 46.401318, 49.761253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316971, 46.361046, 49.828976>,  <42.552269, 46.336884, 49.869610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316971, 46.361046, 49.828976>,  <41.924809, 46.401318, 49.761253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316971, 46.361046, 49.828976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194124, 0.347915, -0.917208,
		0.033438, 0.932105, 0.360642,
		0.980407, -0.100679, 0.169310,
		42.611092, 46.330841, 49.879768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324501, 47.119358, 49.517456>,  <41.924809, 46.401318, 49.761253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324501, 47.119358, 49.517456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571831, 46.805367, 49.532913>,  <42.720226, 46.616974, 49.542187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571831, 46.805367, 49.532913>,  <42.324501, 47.119358, 49.517456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571831, 46.805367, 49.532913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249029, 0.149045, -0.956959,
		0.745430, 0.601330, 0.287639,
		0.618320, -0.784976, 0.038646,
		42.757328, 46.569874, 49.544506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946705, 47.442459, 49.324585>,  <42.324501, 47.119358, 49.517456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946705, 47.442459, 49.324585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958771, 47.047417, 49.262985>,  <42.966011, 46.810390, 49.226025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958771, 47.047417, 49.262985>,  <42.946705, 47.442459, 49.324585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958771, 47.047417, 49.262985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467651, 0.150109, -0.871074,
		0.883398, -0.045742, 0.466385,
		0.030164, -0.987611, -0.153997,
		42.967819, 46.751133, 49.216785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551468, 47.366241, 49.047871>,  <42.946705, 47.442459, 49.324585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551468, 47.366241, 49.047871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377731, 47.018723, 48.952759>,  <43.273491, 46.810211, 48.895691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377731, 47.018723, 48.952759>,  <43.551468, 47.366241, 49.047871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377731, 47.018723, 48.952759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171195, 0.179546, -0.968739,
		0.884330, -0.461469, 0.070750,
		-0.434341, -0.868798, -0.237779,
		43.247429, 46.758083, 48.881424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975948, 46.943172, 48.668133>,  <43.551468, 47.366241, 49.047871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975948, 46.943172, 48.668133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616493, 46.792747, 48.577774>,  <43.400822, 46.702492, 48.523560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616493, 46.792747, 48.577774>,  <43.975948, 46.943172, 48.668133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616493, 46.792747, 48.577774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202443, 0.101346, -0.974036,
		0.389196, -0.921034, -0.014941,
		-0.898634, -0.376066, -0.225900,
		43.346905, 46.679928, 48.510002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174923, 46.620499, 48.077522>,  <43.975948, 46.943172, 48.668133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174923, 46.620499, 48.077522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775925, 46.607620, 48.052322>,  <43.536526, 46.599892, 48.037201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775925, 46.607620, 48.052322>,  <44.174923, 46.620499, 48.077522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775925, 46.607620, 48.052322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058775, 0.118569, -0.991205,
		0.039383, -0.992424, -0.116380,
		-0.997494, -0.032196, -0.063000,
		43.476677, 46.597961, 48.033421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060001, 46.185577, 47.521694>,  <44.174923, 46.620499, 48.077522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060001, 46.185577, 47.521694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717842, 46.390137, 47.554577>,  <43.512547, 46.512871, 47.574306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717842, 46.390137, 47.554577>,  <44.060001, 46.185577, 47.521694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717842, 46.390137, 47.554577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050531, 0.240352, -0.969369,
		-0.515493, -0.825047, -0.231440,
		-0.855403, 0.511398, 0.082209,
		43.461220, 46.543556, 47.579239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780411, 46.004314, 46.946831>,  <44.060001, 46.185577, 47.521694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780411, 46.004314, 46.946831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570358, 46.332222, 47.038231>,  <43.444324, 46.528965, 47.093071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570358, 46.332222, 47.038231>,  <43.780411, 46.004314, 46.946831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570358, 46.332222, 47.038231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119743, 0.337012, -0.933855,
		-0.842553, -0.463038, -0.275139,
		-0.525135, 0.819768, 0.228505,
		43.412819, 46.578152, 47.106781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216030, 46.056168, 46.515800>,  <43.780411, 46.004314, 46.946831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216030, 46.056168, 46.515800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292931, 46.434387, 46.620850>,  <43.339069, 46.661320, 46.683880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292931, 46.434387, 46.620850>,  <43.216030, 46.056168, 46.515800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292931, 46.434387, 46.620850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224143, 0.218231, -0.949808,
		-0.955406, 0.241465, -0.169985,
		0.192249, 0.945553, 0.262622,
		43.350605, 46.718052, 46.699635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848297, 46.551514, 45.971439>,  <43.216030, 46.056168, 46.515800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848297, 46.551514, 45.971439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149010, 46.735352, 46.160580>,  <43.329437, 46.845654, 46.274063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149010, 46.735352, 46.160580>,  <42.848297, 46.551514, 45.971439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149010, 46.735352, 46.160580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375720, 0.290736, -0.879947,
		-0.541897, 0.839191, 0.045891,
		0.751786, 0.459599, 0.472849,
		43.374546, 46.873230, 46.302433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019722, 47.063820, 45.563957>,  <42.848297, 46.551514, 45.971439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019722, 47.063820, 45.563957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342945, 47.041321, 45.798523>,  <43.536877, 47.027821, 45.939262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342945, 47.041321, 45.798523>,  <43.019722, 47.063820, 45.563957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342945, 47.041321, 45.798523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586493, 0.170477, -0.791810,
		-0.055433, 0.983755, 0.170743,
		0.808055, -0.056248, 0.586415,
		43.585361, 47.024448, 45.974449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466751, 46.536484, 45.343067>,  <43.019722, 47.063820, 45.563957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466751, 46.536484, 45.343067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250023, 46.214394, 45.246696>,  <42.119987, 46.021137, 45.188873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250023, 46.214394, 45.246696>,  <42.466751, 46.536484, 45.343067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250023, 46.214394, 45.246696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469588, 0.052278, 0.881337,
		-0.697082, 0.590657, -0.406450,
		-0.541816, -0.805228, -0.240924,
		42.087479, 45.972824, 45.174419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797344, 46.635273, 45.633766>,  <42.466751, 46.536484, 45.343067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797344, 46.635273, 45.633766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778561, 46.245789, 45.544613>,  <41.767288, 46.012096, 45.491123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778561, 46.245789, 45.544613>,  <41.797344, 46.635273, 45.633766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778561, 46.245789, 45.544613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552671, -0.160534, 0.817792,
		-0.832076, 0.161585, -0.530604,
		-0.046963, -0.973714, -0.222880,
		41.764473, 45.953674, 45.477749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054962, 46.423065, 45.639900>,  <41.797344, 46.635273, 45.633766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054962, 46.423065, 45.639900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285866, 46.100121, 45.688782>,  <41.424408, 45.906353, 45.718109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285866, 46.100121, 45.688782>,  <41.054962, 46.423065, 45.639900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285866, 46.100121, 45.688782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520144, -0.248209, 0.817216,
		-0.629461, -0.535307, -0.563228,
		0.577260, -0.807365, 0.122199,
		41.459045, 45.857910, 45.725441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625996, 45.784443, 45.666431>,  <41.054962, 46.423065, 45.639900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625996, 45.784443, 45.666431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956833, 45.718094, 45.881245>,  <41.155334, 45.678284, 46.010132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956833, 45.718094, 45.881245>,  <40.625996, 45.784443, 45.666431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956833, 45.718094, 45.881245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558523, -0.349657, 0.752191,
		0.063009, -0.922077, -0.381843,
		0.827092, -0.165873, 0.537033,
		41.204960, 45.668331, 46.042355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397877, 45.147354, 46.097729>,  <40.625996, 45.784443, 45.666431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397877, 45.147354, 46.097729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730366, 45.290535, 46.267876>,  <40.929859, 45.376442, 46.369965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730366, 45.290535, 46.267876>,  <40.397877, 45.147354, 46.097729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730366, 45.290535, 46.267876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373229, -0.207769, 0.904175,
		0.412029, -0.910331, -0.039105,
		0.831223, 0.357952, 0.425369,
		40.979733, 45.397919, 46.395485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592083, 44.670914, 46.718327>,  <40.397877, 45.147354, 46.097729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592083, 44.670914, 46.718327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810837, 44.998360, 46.788506>,  <40.942089, 45.194828, 46.830612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810837, 44.998360, 46.788506>,  <40.592083, 44.670914, 46.718327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810837, 44.998360, 46.788506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253199, -0.038030, 0.966666,
		0.798003, -0.573078, 0.186476,
		0.546883, 0.818618, 0.175451,
		40.974903, 45.243946, 46.841141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096710, 44.555408, 47.258961>,  <40.592083, 44.670914, 46.718327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096710, 44.555408, 47.258961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025055, 44.948906, 47.264103>,  <40.982063, 45.185005, 47.267189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025055, 44.948906, 47.264103>,  <41.096710, 44.555408, 47.258961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025055, 44.948906, 47.264103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164616, -0.042853, 0.985426,
		0.969955, 0.174407, 0.169616,
		-0.179134, 0.983741, 0.012856,
		40.971313, 45.244030, 47.267960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376591, 44.708324, 47.880424>,  <41.096710, 44.555408, 47.258961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376591, 44.708324, 47.880424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169498, 45.036018, 47.781796>,  <41.045242, 45.232635, 47.722618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169498, 45.036018, 47.781796>,  <41.376591, 44.708324, 47.880424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169498, 45.036018, 47.781796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322597, 0.079995, 0.943150,
		0.792390, 0.567845, 0.222868,
		-0.517735, 0.819239, -0.246573,
		41.014179, 45.281792, 47.707825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417740, 45.121719, 48.477100>,  <41.376591, 44.708324, 47.880424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417740, 45.121719, 48.477100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120422, 45.295303, 48.273460>,  <40.942032, 45.399456, 48.151276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120422, 45.295303, 48.273460>,  <41.417740, 45.121719, 48.477100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120422, 45.295303, 48.273460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426051, 0.279628, 0.860400,
		0.515741, 0.856437, -0.022956,
		-0.743298, 0.433963, -0.509101,
		40.897434, 45.425491, 48.120731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455952, 45.824680, 48.659836>,  <41.417740, 45.121719, 48.477100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455952, 45.824680, 48.659836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095314, 45.685677, 48.556789>,  <40.878933, 45.602276, 48.494961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095314, 45.685677, 48.556789>,  <41.455952, 45.824680, 48.659836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095314, 45.685677, 48.556789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328805, 0.163550, 0.930128,
		-0.281095, 0.923303, -0.261719,
		-0.901595, -0.347509, -0.257613,
		40.824837, 45.581425, 48.479504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991627, 45.945454, 49.215427>,  <41.455952, 45.824680, 48.659836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991627, 45.945454, 49.215427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727547, 45.720520, 49.016262>,  <40.569099, 45.585560, 48.896763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727547, 45.720520, 49.016262>,  <40.991627, 45.945454, 49.215427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727547, 45.720520, 49.016262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580407, -0.038794, 0.813402,
		-0.476720, 0.825999, -0.300771,
		-0.660201, -0.562335, -0.497910,
		40.529488, 45.551819, 48.866890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392536, 46.310379, 49.297043>,  <40.991627, 45.945454, 49.215427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392536, 46.310379, 49.297043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295181, 45.927330, 49.235439>,  <40.236767, 45.697502, 49.198475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295181, 45.927330, 49.235439>,  <40.392536, 46.310379, 49.297043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295181, 45.927330, 49.235439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526428, -0.002941, 0.850215,
		-0.814639, 0.288007, -0.503404,
		-0.243387, -0.957624, -0.154011,
		40.222164, 45.640041, 49.189236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700508, 46.200928, 49.493031>,  <40.392536, 46.310379, 49.297043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700508, 46.200928, 49.493031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834541, 45.824425, 49.509766>,  <39.914959, 45.598522, 49.519806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834541, 45.824425, 49.509766>,  <39.700508, 46.200928, 49.493031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834541, 45.824425, 49.509766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505379, -0.142081, 0.851120,
		-0.795182, -0.306335, -0.523302,
		0.335079, -0.941260, 0.041834,
		39.935066, 45.542046, 49.522316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150616, 45.787060, 49.547096>,  <39.700508, 46.200928, 49.493031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150616, 45.787060, 49.547096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447281, 45.563828, 49.695946>,  <39.625282, 45.429886, 49.785255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447281, 45.563828, 49.695946>,  <39.150616, 45.787060, 49.547096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447281, 45.563828, 49.695946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521861, -0.131548, 0.842827,
		-0.421415, -0.819292, -0.388806,
		0.741667, -0.558082, 0.372120,
		39.669781, 45.396404, 49.807583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880482, 45.188717, 49.880325>,  <39.150616, 45.787060, 49.547096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880482, 45.188717, 49.880325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237572, 45.217598, 50.058239>,  <39.451824, 45.234928, 50.164989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237572, 45.217598, 50.058239>,  <38.880482, 45.188717, 49.880325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237572, 45.217598, 50.058239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436545, -0.106094, 0.893405,
		0.111701, -0.991731, -0.063190,
		0.892721, 0.072209, 0.444786,
		39.505386, 45.239262, 50.191673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771049, 44.942333, 50.513847>,  <38.880482, 45.188717, 49.880325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771049, 44.942333, 50.513847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148323, 45.045555, 50.597569>,  <39.374687, 45.107491, 50.647800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148323, 45.045555, 50.597569>,  <38.771049, 44.942333, 50.513847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148323, 45.045555, 50.597569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200156, -0.061522, 0.977831,
		0.265214, -0.964168, -0.006375,
		0.943185, 0.258058, 0.209301,
		39.431278, 45.122971, 50.660358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064182, 44.446068, 50.877094>,  <38.771049, 44.942333, 50.513847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064182, 44.446068, 50.877094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261372, 44.777077, 50.984554>,  <39.379684, 44.975681, 51.049030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261372, 44.777077, 50.984554>,  <39.064182, 44.446068, 50.877094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261372, 44.777077, 50.984554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299956, -0.128199, 0.945300,
		0.816702, -0.546594, 0.185023,
		0.492976, 0.827526, 0.268654,
		39.409264, 45.025333, 51.065151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439625, 44.294281, 51.487202>,  <39.064182, 44.446068, 50.877094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439625, 44.294281, 51.487202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431877, 44.694054, 51.498299>,  <39.427231, 44.933918, 51.504955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431877, 44.694054, 51.498299>,  <39.439625, 44.294281, 51.487202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431877, 44.694054, 51.498299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247377, -0.031674, 0.968401,
		0.968726, 0.011891, 0.247848,
		-0.019366, 0.999428, 0.027742,
		39.426067, 44.993881, 51.506622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849648, 44.421661, 52.038074>,  <39.439625, 44.294281, 51.487202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849648, 44.421661, 52.038074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649017, 44.764191, 51.988857>,  <39.528641, 44.969707, 51.959328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649017, 44.764191, 51.988857>,  <39.849648, 44.421661, 52.038074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649017, 44.764191, 51.988857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219870, 0.011381, 0.975463,
		0.836708, 0.516321, 0.182571,
		-0.501574, 0.856319, -0.123046,
		39.498547, 45.021088, 51.951942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042503, 44.897800, 52.521099>,  <39.849648, 44.421661, 52.038074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042503, 44.897800, 52.521099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702026, 45.066833, 52.396591>,  <39.497738, 45.168255, 52.321888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702026, 45.066833, 52.396591>,  <40.042503, 44.897800, 52.521099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702026, 45.066833, 52.396591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355287, -0.027416, 0.934355,
		0.386311, 0.905908, 0.173475,
		-0.851196, 0.422585, -0.311266,
		39.446667, 45.193607, 52.303211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855236, 45.414288, 53.047230>,  <40.042503, 44.897800, 52.521099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855236, 45.414288, 53.047230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515526, 45.315247, 52.860714>,  <39.311699, 45.255821, 52.748802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515526, 45.315247, 52.860714>,  <39.855236, 45.414288, 53.047230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515526, 45.315247, 52.860714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498118, 0.083084, 0.863119,
		-0.174966, 0.965294, -0.193895,
		-0.849273, -0.247600, -0.466293,
		39.260742, 45.240967, 52.720825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426384, 45.962746, 53.191391>,  <39.855236, 45.414288, 53.047230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426384, 45.962746, 53.191391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164909, 45.677826, 53.089157>,  <39.008026, 45.506874, 53.027817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164909, 45.677826, 53.089157>,  <39.426384, 45.962746, 53.191391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164909, 45.677826, 53.089157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551117, 0.216617, 0.805820,
		-0.518623, 0.667610, -0.534161,
		-0.653682, -0.712302, -0.255589,
		38.968803, 45.464134, 53.012482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722271, 46.302731, 53.224949>,  <39.426384, 45.962746, 53.191391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722271, 46.302731, 53.224949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662025, 45.908806, 53.259506>,  <38.625877, 45.672451, 53.280243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662025, 45.908806, 53.259506>,  <38.722271, 46.302731, 53.224949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662025, 45.908806, 53.259506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599168, 0.160445, 0.784382,
		-0.786330, 0.066370, -0.614231,
		-0.150609, -0.984811, 0.086396,
		38.616844, 45.613361, 53.285423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942734, 46.260487, 53.392826>,  <38.722271, 46.302731, 53.224949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942734, 46.260487, 53.392826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133942, 45.934303, 53.523384>,  <38.248665, 45.738594, 53.601719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133942, 45.934303, 53.523384>,  <37.942734, 46.260487, 53.392826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133942, 45.934303, 53.523384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435180, 0.102905, 0.894443,
		-0.762964, -0.569602, -0.305679,
		0.478020, -0.815453, 0.326392,
		38.277348, 45.689667, 53.621304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519333, 45.905796, 53.757778>,  <37.942734, 46.260487, 53.392826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519333, 45.905796, 53.757778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846645, 45.717293, 53.889431>,  <38.043034, 45.604191, 53.968422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846645, 45.717293, 53.889431>,  <37.519333, 45.905796, 53.757778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846645, 45.717293, 53.889431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422434, -0.104695, 0.900327,
		-0.389831, -0.875757, -0.284747,
		0.818279, -0.471263, 0.329136,
		38.092129, 45.575912, 53.988171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307652, 45.391312, 54.185730>,  <37.519333, 45.905796, 53.757778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307652, 45.391312, 54.185730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690147, 45.445061, 54.289700>,  <37.919643, 45.477310, 54.352081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690147, 45.445061, 54.289700>,  <37.307652, 45.391312, 54.185730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690147, 45.445061, 54.289700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255118, -0.052109, 0.965505,
		0.143279, -0.989560, -0.015548,
		0.956235, 0.134370, 0.259921,
		37.977016, 45.485371, 54.367676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422279, 44.932125, 54.686199>,  <37.307652, 45.391312, 54.185730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422279, 44.932125, 54.686199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722183, 45.188576, 54.751705>,  <37.902126, 45.342445, 54.791008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722183, 45.188576, 54.751705>,  <37.422279, 44.932125, 54.686199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722183, 45.188576, 54.751705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199575, -0.016868, 0.979737,
		0.630902, -0.767246, 0.115307,
		0.749755, 0.641131, 0.163765,
		37.947109, 45.380917, 54.800835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674889, 44.764523, 55.310043>,  <37.422279, 44.932125, 54.686199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674889, 44.764523, 55.310043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817207, 45.137451, 55.284149>,  <37.902599, 45.361206, 55.268612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817207, 45.137451, 55.284149>,  <37.674889, 44.764523, 55.310043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817207, 45.137451, 55.284149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083053, 0.100536, 0.991461,
		0.930866, -0.347380, 0.113202,
		0.355795, 0.932319, -0.064735,
		37.923946, 45.417149, 55.264729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271660, 44.861645, 55.851433>,  <37.674889, 44.764523, 55.310043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271660, 44.861645, 55.851433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127884, 45.226776, 55.773914>,  <38.041618, 45.445854, 55.727402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127884, 45.226776, 55.773914>,  <38.271660, 44.861645, 55.851433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127884, 45.226776, 55.773914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147354, 0.149550, 0.977712,
		0.921462, 0.379981, 0.080754,
		-0.359435, 0.912825, -0.193796,
		38.020054, 45.500622, 55.715775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714108, 45.466553, 56.208580>,  <38.271660, 44.861645, 55.851433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714108, 45.466553, 56.208580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342255, 45.601105, 56.148407>,  <38.119141, 45.681835, 56.112305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342255, 45.601105, 56.148407>,  <38.714108, 45.466553, 56.208580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342255, 45.601105, 56.148407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103713, 0.152877, 0.982788,
		0.353585, 0.929236, -0.107233,
		-0.929635, 0.336378, -0.150429,
		38.063366, 45.702019, 56.103279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606712, 45.916752, 56.760880>,  <38.714108, 45.466553, 56.208580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606712, 45.916752, 56.760880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237568, 45.848801, 56.622627>,  <38.016079, 45.808029, 56.539677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237568, 45.848801, 56.622627>,  <38.606712, 45.916752, 56.760880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237568, 45.848801, 56.622627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360443, 0.064868, 0.930523,
		-0.135651, 0.983329, -0.121094,
		-0.922865, -0.169874, -0.345634,
		37.960709, 45.797840, 56.518936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110817, 46.325886, 57.179100>,  <38.606712, 45.916752, 56.760880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110817, 46.325886, 57.179100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867416, 46.065948, 56.996918>,  <37.721378, 45.909988, 56.887608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867416, 46.065948, 56.996918>,  <38.110817, 46.325886, 57.179100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867416, 46.065948, 56.996918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569388, -0.042241, 0.820983,
		-0.552747, 0.758896, -0.344308,
		-0.608497, -0.649840, -0.455455,
		37.684868, 45.870995, 56.860283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407429, 46.537617, 57.351105>,  <38.110817, 46.325886, 57.179100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407429, 46.537617, 57.351105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357349, 46.163025, 57.220058>,  <37.327301, 45.938271, 57.141430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357349, 46.163025, 57.220058>,  <37.407429, 46.537617, 57.351105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357349, 46.163025, 57.220058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394219, -0.256069, 0.882621,
		-0.910449, 0.239655, -0.337119,
		-0.125199, -0.936480, -0.327614,
		37.319790, 45.882080, 57.121773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652485, 46.293049, 57.602768>,  <37.407429, 46.537617, 57.351105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652485, 46.293049, 57.602768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885277, 45.979736, 57.515343>,  <37.024952, 45.791748, 57.462887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885277, 45.979736, 57.515343>,  <36.652485, 46.293049, 57.602768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885277, 45.979736, 57.515343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250385, -0.428307, 0.868251,
		-0.773699, -0.450578, -0.445387,
		0.581977, -0.783283, -0.218563,
		37.059872, 45.744751, 57.449776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256039, 45.748409, 57.727901>,  <36.652485, 46.293049, 57.602768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256039, 45.748409, 57.727901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623371, 45.590302, 57.719688>,  <36.843773, 45.495438, 57.714760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623371, 45.590302, 57.719688>,  <36.256039, 45.748409, 57.727901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623371, 45.590302, 57.719688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180285, -0.463908, 0.867344,
		-0.352357, -0.792813, -0.497285,
		0.918336, -0.395268, -0.020529,
		36.898872, 45.471722, 57.713528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121258, 45.132225, 57.781101>,  <36.256039, 45.748409, 57.727901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121258, 45.132225, 57.781101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499008, 45.174667, 57.905617>,  <36.725658, 45.200130, 57.980324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499008, 45.174667, 57.905617>,  <36.121258, 45.132225, 57.781101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499008, 45.174667, 57.905617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224867, -0.482367, 0.846615,
		0.239982, -0.869520, -0.431676,
		0.944375, 0.106103, 0.311286,
		36.782322, 45.206497, 57.999004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307182, 44.435711, 57.997242>,  <36.121258, 45.132225, 57.781101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307182, 44.435711, 57.997242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560890, 44.677849, 58.189598>,  <36.713116, 44.823132, 58.305012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560890, 44.677849, 58.189598>,  <36.307182, 44.435711, 57.997242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560890, 44.677849, 58.189598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104535, -0.549157, 0.829156,
		0.766013, -0.576177, -0.285033,
		0.634269, 0.605348, 0.480892,
		36.751171, 44.859455, 58.333866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681850, 43.991676, 58.360790>,  <36.307182, 44.435711, 57.997242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681850, 43.991676, 58.360790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703537, 44.352814, 58.531403>,  <36.716549, 44.569496, 58.633770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703537, 44.352814, 58.531403>,  <36.681850, 43.991676, 58.360790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703537, 44.352814, 58.531403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215962, -0.406449, 0.887783,
		0.974895, -0.140246, 0.172945,
		0.054215, 0.902846, 0.426533,
		36.719803, 44.623669, 58.659363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986191, 43.292316, 58.620247>,  <36.681850, 43.991676, 58.360790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986191, 43.292316, 58.620247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811844, 42.932312, 58.620247>,  <36.707237, 42.716309, 58.620247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811844, 42.932312, 58.620247>,  <36.986191, 43.292316, 58.620247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811844, 42.932312, 58.620247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560822, -0.271603, -0.782120,
		0.703919, -0.340895, 0.623128,
		-0.435864, -0.900012, 0.000005,
		36.681084, 42.662308, 58.620247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539150, 43.004185, 58.461941>,  <36.986191, 43.292316, 58.620247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539150, 43.004185, 58.461941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247505, 42.735550, 58.409233>,  <37.072517, 42.574371, 58.377609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247505, 42.735550, 58.409233>,  <37.539150, 43.004185, 58.461941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247505, 42.735550, 58.409233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481427, -0.366441, -0.796209,
		0.486435, -0.643967, 0.590497,
		-0.729115, -0.671585, -0.131774,
		37.028770, 42.534073, 58.369701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819618, 42.416119, 58.332218>,  <37.539150, 43.004185, 58.461941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819618, 42.416119, 58.332218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457230, 42.383125, 58.166130>,  <37.239796, 42.363331, 58.066479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457230, 42.383125, 58.166130>,  <37.819618, 42.416119, 58.332218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457230, 42.383125, 58.166130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412370, -0.393702, -0.821553,
		-0.095711, -0.915530, 0.390697,
		-0.905975, -0.082480, -0.415219,
		37.185436, 42.358383, 58.041565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875862, 41.780861, 58.013424>,  <37.819618, 42.416119, 58.332218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875862, 41.780861, 58.013424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550098, 41.949883, 57.854332>,  <37.354641, 42.051296, 57.758877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550098, 41.949883, 57.854332>,  <37.875862, 41.780861, 58.013424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550098, 41.949883, 57.854332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304950, -0.271479, -0.912855,
		-0.493708, -0.864723, 0.092236,
		-0.814407, 0.422556, -0.397729,
		37.305775, 42.076649, 57.735012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554119, 41.317265, 57.616459>,  <37.875862, 41.780861, 58.013424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554119, 41.317265, 57.616459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425770, 41.667587, 57.472237>,  <37.348759, 41.877781, 57.385704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425770, 41.667587, 57.472237>,  <37.554119, 41.317265, 57.616459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425770, 41.667587, 57.472237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262804, -0.283411, -0.922286,
		-0.909931, -0.390692, -0.139227,
		-0.320872, 0.875807, -0.360560,
		37.329510, 41.930328, 57.364067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323189, 41.184967, 56.910099>,  <37.554119, 41.317265, 57.616459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323189, 41.184967, 56.910099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359291, 41.582863, 56.890739>,  <37.380951, 41.821602, 56.879124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359291, 41.582863, 56.890739>,  <37.323189, 41.184967, 56.910099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359291, 41.582863, 56.890739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137093, -0.060543, -0.988706,
		-0.986438, 0.082598, -0.141836,
		0.090252, 0.994743, -0.048398,
		37.386368, 41.881287, 56.876221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911362, 41.429092, 56.356274>,  <37.323189, 41.184967, 56.910099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911362, 41.429092, 56.356274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203987, 41.694763, 56.417824>,  <37.379562, 41.854168, 56.454754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203987, 41.694763, 56.417824>,  <36.911362, 41.429092, 56.356274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203987, 41.694763, 56.417824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181128, 0.028253, -0.983053,
		-0.657272, 0.747039, -0.099633,
		0.731564, 0.664180, 0.153880,
		37.423458, 41.894016, 56.463989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864510, 41.889954, 55.712425>,  <36.911362, 41.429092, 56.356274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864510, 41.889954, 55.712425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222668, 41.984116, 55.863609>,  <37.437561, 42.040611, 55.954319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222668, 41.984116, 55.863609>,  <36.864510, 41.889954, 55.712425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222668, 41.984116, 55.863609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356561, 0.129362, -0.925273,
		-0.266708, 0.963250, 0.031894,
		0.895395, 0.235405, 0.377959,
		37.491287, 42.054737, 55.976997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083340, 42.413074, 55.312157>,  <36.864510, 41.889954, 55.712425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083340, 42.413074, 55.312157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429863, 42.290009, 55.469559>,  <37.637779, 42.216167, 55.563999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429863, 42.290009, 55.469559>,  <37.083340, 42.413074, 55.312157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429863, 42.290009, 55.469559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423539, 0.034825, -0.905208,
		0.264797, 0.950857, 0.160477,
		0.866312, -0.307664, 0.393504,
		37.689758, 42.197708, 55.587608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644680, 43.009869, 55.256607>,  <37.083340, 42.413074, 55.312157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644680, 43.009869, 55.256607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826942, 42.655853, 55.294739>,  <37.936298, 42.443443, 55.317619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826942, 42.655853, 55.294739>,  <37.644680, 43.009869, 55.256607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826942, 42.655853, 55.294739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559764, 0.201611, -0.803752,
		0.692132, 0.419594, 0.587277,
		0.455651, -0.885039, 0.095332,
		37.963638, 42.390343, 55.323338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278709, 43.081264, 54.975418>,  <37.644680, 43.009869, 55.256607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278709, 43.081264, 54.975418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261566, 42.681694, 54.968285>,  <38.251282, 42.441952, 54.964005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261566, 42.681694, 54.968285>,  <38.278709, 43.081264, 54.975418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261566, 42.681694, 54.968285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612312, -0.012160, -0.790522,
		0.789453, -0.044801, 0.612173,
		-0.042860, -0.998922, -0.017833,
		38.248707, 42.382019, 54.962936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005981, 42.771404, 54.963127>,  <38.278709, 43.081264, 54.975418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005981, 42.771404, 54.963127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744667, 42.512482, 54.806049>,  <38.587879, 42.357128, 54.711803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744667, 42.512482, 54.806049>,  <39.005981, 42.771404, 54.963127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744667, 42.512482, 54.806049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528581, -0.018605, -0.848679,
		0.542050, -0.762003, 0.354308,
		-0.653287, -0.647307, -0.392695,
		38.548679, 42.318291, 54.688240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410118, 42.410667, 54.557297>,  <39.005981, 42.771404, 54.963127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410118, 42.410667, 54.557297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042793, 42.333305, 54.419144>,  <38.822399, 42.286888, 54.336250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042793, 42.333305, 54.419144>,  <39.410118, 42.410667, 54.557297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042793, 42.333305, 54.419144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380975, -0.194881, -0.903814,
		0.107489, -0.961570, 0.252643,
		-0.918316, -0.193401, -0.345386,
		38.767300, 42.275284, 54.315529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484650, 41.695808, 54.148983>,  <39.410118, 42.410667, 54.557297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484650, 41.695808, 54.148983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140701, 41.872635, 54.046852>,  <38.934334, 41.978733, 53.985573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140701, 41.872635, 54.046852>,  <39.484650, 41.695808, 54.148983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140701, 41.872635, 54.046852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246189, -0.079076, -0.965991,
		-0.447226, -0.893488, -0.040837,
		-0.859872, 0.442070, -0.255332,
		38.882740, 42.005257, 53.970253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343342, 41.360401, 53.595806>,  <39.484650, 41.695808, 54.148983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343342, 41.360401, 53.595806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145012, 41.706879, 53.570930>,  <39.026012, 41.914764, 53.556004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145012, 41.706879, 53.570930>,  <39.343342, 41.360401, 53.595806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145012, 41.706879, 53.570930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067702, -0.032841, -0.997165,
		-0.865780, -0.498628, -0.042360,
		-0.495823, 0.866194, -0.062191,
		38.996265, 41.966736, 53.552273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875900, 41.288639, 53.006889>,  <39.343342, 41.360401, 53.595806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875900, 41.288639, 53.006889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936836, 41.680817, 53.056709>,  <38.973400, 41.916122, 53.086601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936836, 41.680817, 53.056709>,  <38.875900, 41.288639, 53.006889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936836, 41.680817, 53.056709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103345, 0.109522, -0.988597,
		-0.982909, 0.163479, -0.084639,
		0.152345, 0.980449, 0.124545,
		38.982540, 41.974953, 53.094074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484161, 41.668438, 52.449318>,  <38.875900, 41.288639, 53.006889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484161, 41.668438, 52.449318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731258, 41.953362, 52.582596>,  <38.879517, 42.124313, 52.662563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731258, 41.953362, 52.582596>,  <38.484161, 41.668438, 52.449318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731258, 41.953362, 52.582596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102805, 0.346915, -0.932245,
		-0.779631, 0.610142, 0.141075,
		0.617743, 0.712304, 0.333191,
		38.916580, 42.167053, 52.682552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224014, 42.375534, 52.227310>,  <38.484161, 41.668438, 52.449318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224014, 42.375534, 52.227310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621117, 42.381783, 52.274948>,  <38.859379, 42.385532, 52.303532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621117, 42.381783, 52.274948>,  <38.224014, 42.375534, 52.227310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621117, 42.381783, 52.274948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099372, 0.450181, -0.887390,
		-0.067473, 0.892800, 0.445370,
		0.992760, 0.015617, 0.119095,
		38.918945, 42.386467, 52.310677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439667, 42.953644, 51.757755>,  <38.224014, 42.375534, 52.227310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439667, 42.953644, 51.757755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771461, 42.753395, 51.856804>,  <38.970539, 42.633244, 51.916233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771461, 42.753395, 51.856804>,  <38.439667, 42.953644, 51.757755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771461, 42.753395, 51.856804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376536, 0.173797, -0.909954,
		0.412511, 0.848037, 0.332667,
		0.829491, -0.500627, 0.247623,
		39.020309, 42.603207, 51.931091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008595, 43.438526, 51.621460>,  <38.439667, 42.953644, 51.757755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008595, 43.438526, 51.621460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172821, 43.074249, 51.603233>,  <39.271355, 42.855682, 51.592297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172821, 43.074249, 51.603233>,  <39.008595, 43.438526, 51.621460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172821, 43.074249, 51.603233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242545, 0.157249, -0.957311,
		0.878982, 0.381983, 0.285444,
		0.410563, -0.910693, -0.045571,
		39.295990, 42.801041, 51.589561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691906, 43.475159, 51.268253>,  <39.008595, 43.438526, 51.621460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691906, 43.475159, 51.268253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582333, 43.090797, 51.252151>,  <39.516590, 42.860180, 51.242489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582333, 43.090797, 51.252151>,  <39.691906, 43.475159, 51.268253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582333, 43.090797, 51.252151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131572, 0.004022, -0.991298,
		0.952707, -0.276844, 0.125327,
		-0.273931, -0.960907, -0.040256,
		39.500153, 42.802525, 51.240074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173862, 43.113270, 50.853252>,  <39.691906, 43.475159, 51.268253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173862, 43.113270, 50.853252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847145, 42.883286, 50.834232>,  <39.651115, 42.745296, 50.822819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847145, 42.883286, 50.834232>,  <40.173862, 43.113270, 50.853252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847145, 42.883286, 50.834232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172239, -0.164359, -0.971246,
		0.550615, -0.801501, 0.233279,
		-0.816797, -0.574962, -0.047551,
		39.602104, 42.710796, 50.819965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344692, 42.568760, 50.392006>,  <40.173862, 43.113270, 50.853252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344692, 42.568760, 50.392006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945717, 42.541008, 50.399063>,  <39.706333, 42.524357, 50.403297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945717, 42.541008, 50.399063>,  <40.344692, 42.568760, 50.392006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945717, 42.541008, 50.399063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013320, -0.062296, -0.997969,
		0.070340, -0.995643, 0.061212,
		-0.997434, -0.069382, 0.017644,
		39.646488, 42.520195, 50.404358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127522, 42.052937, 49.920956>,  <40.344692, 42.568760, 50.392006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127522, 42.052937, 49.920956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805199, 42.286339, 49.961353>,  <39.611805, 42.426380, 49.985592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805199, 42.286339, 49.961353>,  <40.127522, 42.052937, 49.920956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805199, 42.286339, 49.961353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073989, 0.070004, -0.994799,
		-0.587539, -0.809087, -0.013237,
		-0.805806, 0.583504, 0.100993,
		39.563457, 42.461391, 49.991650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660355, 41.956470, 49.317635>,  <40.127522, 42.052937, 49.920956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660355, 41.956470, 49.317635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552895, 42.317688, 49.451706>,  <39.488419, 42.534416, 49.532146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552895, 42.317688, 49.451706>,  <39.660355, 41.956470, 49.317635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552895, 42.317688, 49.451706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124626, 0.312455, -0.941722,
		-0.955141, -0.294768, 0.028601,
		-0.268653, 0.903041, 0.335174,
		39.472298, 42.588600, 49.552258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131001, 42.124035, 48.846493>,  <39.660355, 41.956470, 49.317635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131001, 42.124035, 48.846493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206367, 42.485085, 49.001293>,  <39.251587, 42.701714, 49.094173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206367, 42.485085, 49.001293>,  <39.131001, 42.124035, 48.846493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206367, 42.485085, 49.001293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154801, 0.416430, -0.895892,
		-0.969812, 0.108893, 0.218189,
		0.188416, 0.902623, 0.387002,
		39.262894, 42.755871, 49.117393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619129, 42.550713, 48.675396>,  <39.131001, 42.124035, 48.846493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619129, 42.550713, 48.675396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932915, 42.792793, 48.729572>,  <39.121185, 42.938042, 48.762077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932915, 42.792793, 48.729572>,  <38.619129, 42.550713, 48.675396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932915, 42.792793, 48.729572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215800, 0.471124, -0.855262,
		-0.581419, 0.641693, 0.500182,
		0.784463, 0.605205, 0.135443,
		39.168255, 42.974354, 48.770206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477833, 43.174984, 48.393654>,  <38.619129, 42.550713, 48.675396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477833, 43.174984, 48.393654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876839, 43.192131, 48.416008>,  <39.116241, 43.202419, 48.429420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876839, 43.192131, 48.416008>,  <38.477833, 43.174984, 48.393654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876839, 43.192131, 48.416008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035125, 0.385000, -0.922248,
		-0.061047, 0.921921, 0.382538,
		0.997517, 0.042863, 0.055886,
		39.176094, 43.204990, 48.432774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668854, 43.838810, 48.118954>,  <38.477833, 43.174984, 48.393654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668854, 43.838810, 48.118954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004288, 43.622299, 48.094349>,  <39.205547, 43.492393, 48.079586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004288, 43.622299, 48.094349>,  <38.668854, 43.838810, 48.118954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004288, 43.622299, 48.094349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085401, 0.242143, -0.966475,
		0.538030, 0.805221, 0.249284,
		0.838589, -0.541281, -0.061513,
		39.255863, 43.459915, 48.075893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249077, 44.277168, 47.816822>,  <38.668854, 43.838810, 48.118954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249077, 44.277168, 47.816822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348320, 43.895531, 47.749718>,  <39.407867, 43.666550, 47.709454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348320, 43.895531, 47.749718>,  <39.249077, 44.277168, 47.816822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348320, 43.895531, 47.749718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157761, 0.210662, -0.964745,
		0.955799, 0.212898, 0.202787,
		0.248112, -0.954094, -0.167764,
		39.422752, 43.609303, 47.699390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776878, 44.284393, 47.256748>,  <39.249077, 44.277168, 47.816822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776878, 44.284393, 47.256748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673759, 43.898476, 47.277576>,  <39.611889, 43.666924, 47.290073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673759, 43.898476, 47.277576>,  <39.776878, 44.284393, 47.256748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673759, 43.898476, 47.277576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212382, -0.109157, -0.971071,
		0.942568, -0.239280, 0.233045,
		-0.257796, -0.964795, 0.052070,
		39.596420, 43.609035, 47.293198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287231, 43.814224, 46.971832>,  <39.776878, 44.284393, 47.256748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287231, 43.814224, 46.971832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949535, 43.599922, 46.965733>,  <39.746918, 43.471340, 46.962074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949535, 43.599922, 46.965733>,  <40.287231, 43.814224, 46.971832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949535, 43.599922, 46.965733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142552, -0.197029, -0.969979,
		0.516663, -0.821067, 0.242712,
		-0.844238, -0.535751, -0.015247,
		39.696262, 43.439198, 46.961159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427216, 43.177265, 46.516151>,  <40.287231, 43.814224, 46.971832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427216, 43.177265, 46.516151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027512, 43.192627, 46.516521>,  <39.787689, 43.201843, 46.516743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027512, 43.192627, 46.516521>,  <40.427216, 43.177265, 46.516151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027512, 43.192627, 46.516521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014659, -0.358861, -0.933276,
		-0.035509, -0.932600, 0.359159,
		-0.999262, 0.038405, 0.000928,
		39.727734, 43.204147, 46.516800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330715, 42.568638, 46.332733>,  <40.427216, 43.177265, 46.516151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330715, 42.568638, 46.332733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005669, 42.792610, 46.268074>,  <39.810638, 42.926994, 46.229279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005669, 42.792610, 46.268074>,  <40.330715, 42.568638, 46.332733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005669, 42.792610, 46.268074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028560, -0.315290, -0.948566,
		-0.582094, -0.766207, 0.272202,
		-0.812620, 0.559928, -0.161645,
		39.761883, 42.960590, 46.219582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748169, 42.124134, 46.149757>,  <40.330715, 42.568638, 46.332733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748169, 42.124134, 46.149757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655655, 42.488411, 46.012852>,  <39.600147, 42.706978, 45.930710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655655, 42.488411, 46.012852>,  <39.748169, 42.124134, 46.149757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655655, 42.488411, 46.012852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037634, -0.359911, -0.932227,
		-0.972159, -0.202725, 0.117513,
		-0.231281, 0.910696, -0.342261,
		39.586269, 42.761620, 45.910172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094486, 42.000225, 45.666485>,  <39.748169, 42.124134, 46.149757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094486, 42.000225, 45.666485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235626, 42.364395, 45.580112>,  <39.320309, 42.582897, 45.528290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235626, 42.364395, 45.580112>,  <39.094486, 42.000225, 45.666485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235626, 42.364395, 45.580112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214110, -0.146087, -0.965824,
		-0.910854, 0.387021, 0.143385,
		0.352847, 0.910425, -0.215929,
		39.341480, 42.637524, 45.515335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734459, 42.313980, 45.155514>,  <39.094486, 42.000225, 45.666485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734459, 42.313980, 45.155514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059303, 42.543037, 45.110710>,  <39.254211, 42.680473, 45.083828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059303, 42.543037, 45.110710>,  <38.734459, 42.313980, 45.155514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059303, 42.543037, 45.110710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022497, -0.161094, -0.986683,
		-0.583063, 0.803820, -0.117945,
		0.812115, 0.572645, -0.112012,
		39.302937, 42.714832, 45.077106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557457, 42.800663, 44.497284>,  <38.734459, 42.313980, 45.155514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557457, 42.800663, 44.497284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950920, 42.774727, 44.564472>,  <39.186996, 42.759167, 44.604786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950920, 42.774727, 44.564472>,  <38.557457, 42.800663, 44.497284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950920, 42.774727, 44.564472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166053, -0.033883, -0.985534,
		0.069592, 0.997320, -0.022562,
		0.983658, -0.064839, 0.167966,
		39.246017, 42.755276, 44.614861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781700, 43.283848, 44.098194>,  <38.557457, 42.800663, 44.497284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781700, 43.283848, 44.098194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072266, 43.018738, 44.170925>,  <39.246605, 42.859673, 44.214561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072266, 43.018738, 44.170925>,  <38.781700, 43.283848, 44.098194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072266, 43.018738, 44.170925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173669, -0.078956, -0.981634,
		0.664955, 0.744647, 0.057749,
		0.726411, -0.662772, 0.181825,
		39.290188, 42.819908, 44.225471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482971, 43.527798, 43.806538>,  <38.781700, 43.283848, 44.098194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482971, 43.527798, 43.806538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469688, 43.131569, 43.859703>,  <39.461720, 42.893833, 43.891602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469688, 43.131569, 43.859703>,  <39.482971, 43.527798, 43.806538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469688, 43.131569, 43.859703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280492, -0.136884, -0.950046,
		0.959282, 0.005732, 0.282393,
		-0.033209, -0.990571, 0.132918,
		39.459724, 42.834396, 43.899578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.176620, 39.046356, 52.835918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.511017, 39.229904, 52.956291>,  <40.711655, 39.340031, 53.028515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.511017, 39.229904, 52.956291>,  <40.176620, 39.046356, 52.835918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511017, 39.229904, 52.956291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126156, 0.372995, -0.919217,
		-0.534045, 0.806421, 0.253932,
		0.835991, 0.458868, 0.300931,
		40.761814, 39.367565, 53.046570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073547, 39.631203, 52.544506>,  <40.176620, 39.046356, 52.835918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073547, 39.631203, 52.544506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.462402, 39.618103, 52.637352>,  <40.695717, 39.610241, 52.693058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.462402, 39.618103, 52.637352>,  <40.073547, 39.631203, 52.544506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462402, 39.618103, 52.637352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205296, 0.596901, -0.775605,
		-0.113146, 0.801646, 0.586994,
		0.972138, -0.032751, 0.232111,
		40.754044, 39.608276, 52.706985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354176, 40.253387, 52.332722>,  <40.073547, 39.631203, 52.544506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354176, 40.253387, 52.332722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.680931, 40.024956, 52.365112>,  <40.876984, 39.887897, 52.384548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.680931, 40.024956, 52.365112>,  <40.354176, 40.253387, 52.332722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680931, 40.024956, 52.365112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422462, 0.496807, -0.758095,
		0.392703, 0.653490, 0.647097,
		0.816890, -0.571081, 0.080977,
		40.925999, 39.853630, 52.389404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008438, 40.720863, 52.337246>,  <40.354176, 40.253387, 52.332722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008438, 40.720863, 52.337246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.139053, 40.361961, 52.218384>,  <41.217422, 40.146622, 52.147064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.139053, 40.361961, 52.218384>,  <41.008438, 40.720863, 52.337246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139053, 40.361961, 52.218384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360423, 0.408842, -0.838418,
		0.873766, 0.166673, 0.456894,
		0.326539, -0.897256, -0.297159,
		41.237015, 40.092785, 52.129234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683571, 40.780949, 52.082928>,  <41.008438, 40.720863, 52.337246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683571, 40.780949, 52.082928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.577019, 40.438560, 51.905678>,  <41.513088, 40.233128, 51.799328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.577019, 40.438560, 51.905678>,  <41.683571, 40.780949, 52.082928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577019, 40.438560, 51.905678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413910, 0.313605, -0.854593,
		0.870472, -0.411058, 0.270758,
		-0.266376, -0.855969, -0.443126,
		41.497105, 40.181770, 51.772739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278427, 40.613075, 51.691303>,  <41.683571, 40.780949, 52.082928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278427, 40.613075, 51.691303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.001019, 40.385872, 51.514042>,  <41.834572, 40.249550, 51.407684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.001019, 40.385872, 51.514042>,  <42.278427, 40.613075, 51.691303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001019, 40.385872, 51.514042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493808, 0.073097, -0.866493,
		0.524571, -0.819768, 0.229794,
		-0.693526, -0.568011, -0.443153,
		41.792961, 40.215469, 51.381096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660671, 40.260765, 51.191685>,  <42.278427, 40.613075, 51.691303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660671, 40.260765, 51.191685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.281097, 40.223488, 51.071129>,  <42.053352, 40.201122, 50.998795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.281097, 40.223488, 51.071129>,  <42.660671, 40.260765, 51.191685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281097, 40.223488, 51.071129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299050, 0.038461, -0.953462,
		0.100448, -0.994905, -0.008628,
		-0.948936, -0.093193, -0.301390,
		41.996418, 40.195530, 50.980713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657322, 39.797985, 50.602589>,  <42.660671, 40.260765, 51.191685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657322, 39.797985, 50.602589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.311241, 39.996361, 50.573009>,  <42.103592, 40.115387, 50.555264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.311241, 39.996361, 50.573009>,  <42.657322, 39.797985, 50.602589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311241, 39.996361, 50.573009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135042, 0.088442, -0.986885,
		-0.482894, -0.863842, -0.143493,
		-0.865203, 0.495939, -0.073947,
		42.051682, 40.145142, 50.550827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327908, 39.585938, 49.966141>,  <42.657322, 39.797985, 50.602589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327908, 39.585938, 49.966141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.129898, 39.924568, 50.044376>,  <42.011093, 40.127747, 50.091316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.129898, 39.924568, 50.044376>,  <42.327908, 39.585938, 49.966141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129898, 39.924568, 50.044376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034225, 0.243930, -0.969189,
		-0.868205, -0.473077, -0.149725,
		-0.495023, 0.846579, 0.195590,
		41.981392, 40.178543, 50.103054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693359, 39.599449, 49.547054>,  <42.327908, 39.585938, 49.966141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693359, 39.599449, 49.547054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.784798, 39.976891, 49.642849>,  <41.839661, 40.203354, 49.700325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.784798, 39.976891, 49.642849>,  <41.693359, 39.599449, 49.547054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784798, 39.976891, 49.642849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003930, 0.246897, -0.969034,
		-0.973514, 0.220576, 0.060148,
		0.228596, 0.943604, 0.239491,
		41.853374, 40.259972, 49.714695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193970, 39.905941, 49.230148>,  <41.693359, 39.599449, 49.547054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193970, 39.905941, 49.230148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.482502, 40.178055, 49.282143>,  <41.655621, 40.341324, 49.313339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.482502, 40.178055, 49.282143>,  <41.193970, 39.905941, 49.230148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482502, 40.178055, 49.282143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097253, 0.285310, -0.953488,
		-0.685731, 0.675137, 0.271962,
		0.721329, 0.680285, 0.129986,
		41.698902, 40.382141, 49.321140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977718, 40.424835, 48.881138>,  <41.193970, 39.905941, 49.230148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977718, 40.424835, 48.881138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.374527, 40.463120, 48.913948>,  <41.612614, 40.486088, 48.933632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.374527, 40.463120, 48.913948>,  <40.977718, 40.424835, 48.881138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374527, 40.463120, 48.913948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056157, 0.246990, -0.967389,
		-0.112845, 0.964280, 0.239645,
		0.992024, 0.095708, 0.082023,
		41.672134, 40.491833, 48.938557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099419, 40.919418, 48.437393>,  <40.977718, 40.424835, 48.881138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099419, 40.919418, 48.437393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.450844, 40.744316, 48.513817>,  <41.661697, 40.639256, 48.559673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.450844, 40.744316, 48.513817>,  <41.099419, 40.919418, 48.437393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450844, 40.744316, 48.513817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292846, 0.177681, -0.939505,
		0.377322, 0.881364, 0.284298,
		0.878561, -0.437752, 0.191061,
		41.714413, 40.612991, 48.571136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624550, 41.325951, 48.180695>,  <41.099419, 40.919418, 48.437393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624550, 41.325951, 48.180695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.826164, 40.981346, 48.205170>,  <41.947132, 40.774582, 48.219856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.826164, 40.981346, 48.205170>,  <41.624550, 41.325951, 48.180695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826164, 40.981346, 48.205170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427077, 0.187034, -0.884660,
		0.750702, 0.472032, 0.462204,
		0.504036, -0.861512, 0.061188,
		41.977375, 40.722893, 48.223526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265152, 41.474384, 47.879608>,  <41.624550, 41.325951, 48.180695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265152, 41.474384, 47.879608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.184330, 41.082916, 47.864780>,  <42.135838, 40.848034, 47.855885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.184330, 41.082916, 47.864780>,  <42.265152, 41.474384, 47.879608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184330, 41.082916, 47.864780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287501, -0.023093, -0.957502,
		0.936224, -0.204127, 0.286036,
		-0.202057, -0.978672, -0.037066,
		42.123714, 40.789314, 47.853661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831375, 41.251461, 47.630730>,  <42.265152, 41.474384, 47.879608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831375, 41.251461, 47.630730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.568901, 40.957130, 47.563820>,  <42.411415, 40.780533, 47.523674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.568901, 40.957130, 47.563820>,  <42.831375, 41.251461, 47.630730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568901, 40.957130, 47.563820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313331, -0.064032, -0.947483,
		0.686473, -0.674135, 0.272574,
		-0.656185, -0.735827, -0.167271,
		42.372047, 40.736382, 47.513638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142475, 40.730583, 47.178608>,  <42.831375, 41.251461, 47.630730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142475, 40.730583, 47.178608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.751350, 40.686188, 47.107536>,  <42.516678, 40.659550, 47.064896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.751350, 40.686188, 47.107536>,  <43.142475, 40.730583, 47.178608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751350, 40.686188, 47.107536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164363, 0.119415, -0.979145,
		0.129904, -0.986620, -0.098521,
		-0.977808, -0.111002, -0.177676,
		42.458008, 40.652889, 47.054234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180012, 40.606300, 46.451294>,  <43.142475, 40.730583, 47.178608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180012, 40.606300, 46.451294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.790688, 40.663292, 46.523258>,  <42.557095, 40.697487, 46.566437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.790688, 40.663292, 46.523258>,  <43.180012, 40.606300, 46.451294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790688, 40.663292, 46.523258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142148, 0.241189, -0.960011,
		-0.180173, -0.959963, -0.214499,
		-0.973309, 0.142477, 0.179913,
		42.498695, 40.706036, 46.577232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834164, 40.471882, 45.853943>,  <43.180012, 40.606300, 46.451294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834164, 40.471882, 45.853943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.566147, 40.691689, 46.053574>,  <42.405338, 40.823574, 46.173351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.566147, 40.691689, 46.053574>,  <42.834164, 40.471882, 45.853943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566147, 40.691689, 46.053574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332262, 0.379195, -0.863604,
		-0.663813, -0.744474, -0.071492,
		-0.670040, 0.549518, 0.499075,
		42.365135, 40.856544, 46.203297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280910, 40.303280, 45.530151>,  <42.834164, 40.471882, 45.853943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280910, 40.303280, 45.530151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.163605, 40.637032, 45.716835>,  <42.093224, 40.837280, 45.828846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.163605, 40.637032, 45.716835>,  <42.280910, 40.303280, 45.530151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163605, 40.637032, 45.716835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344454, 0.363167, -0.865714,
		-0.891824, -0.414639, 0.180901,
		-0.293261, 0.834376, 0.466705,
		42.075626, 40.887344, 45.856846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696266, 40.489006, 45.055252>,  <42.280910, 40.303280, 45.530151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696266, 40.489006, 45.055252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.810684, 40.815819, 45.255508>,  <41.879333, 41.011906, 45.375660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.810684, 40.815819, 45.255508>,  <41.696266, 40.489006, 45.055252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810684, 40.815819, 45.255508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104861, 0.546021, -0.831183,
		-0.952463, 0.185254, 0.241859,
		0.286040, 0.817032, 0.500639,
		41.896496, 41.060928, 45.405701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111530, 40.985748, 44.996948>,  <41.696266, 40.489006, 45.055252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111530, 40.985748, 44.996948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.432091, 41.220711, 45.042027>,  <41.624428, 41.361691, 45.069073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.432091, 41.220711, 45.042027>,  <41.111530, 40.985748, 44.996948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432091, 41.220711, 45.042027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110127, 0.330105, -0.937498,
		-0.587896, 0.738905, 0.329238,
		0.801405, 0.587409, 0.112694,
		41.672512, 41.396935, 45.075836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908752, 40.160881, 45.166927>,  <41.111530, 40.985748, 44.996948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908752, 40.160881, 45.166927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.523449, 40.143852, 45.060852>,  <40.292267, 40.133636, 44.997208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.523449, 40.143852, 45.060852>,  <40.908752, 40.160881, 45.166927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523449, 40.143852, 45.060852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244801, -0.267028, 0.932078,
		-0.110492, 0.962748, 0.246796,
		-0.963257, -0.042571, -0.265186,
		40.234470, 40.131081, 44.981297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613312, 40.419567, 45.680912>,  <40.908752, 40.160881, 45.166927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613312, 40.419567, 45.680912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.300674, 40.238129, 45.509624>,  <40.113094, 40.129265, 45.406853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.300674, 40.238129, 45.509624>,  <40.613312, 40.419567, 45.680912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300674, 40.238129, 45.509624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383922, -0.191258, 0.903340,
		-0.491650, 0.870444, -0.024659,
		-0.781591, -0.453595, -0.428215,
		40.066196, 40.102051, 45.381161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028175, 40.751438, 45.970127>,  <40.613312, 40.419567, 45.680912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028175, 40.751438, 45.970127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.911308, 40.399269, 45.820732>,  <39.841187, 40.187969, 45.731094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.911308, 40.399269, 45.820732>,  <40.028175, 40.751438, 45.970127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911308, 40.399269, 45.820732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410705, -0.237179, 0.880379,
		-0.863689, 0.410612, -0.292298,
		-0.292168, -0.880422, -0.373489,
		39.823658, 40.135143, 45.708687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406281, 40.692520, 46.253483>,  <40.028175, 40.751438, 45.970127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406281, 40.692520, 46.253483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.508526, 40.324371, 46.135105>,  <39.569874, 40.103481, 46.064079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.508526, 40.324371, 46.135105>,  <39.406281, 40.692520, 46.253483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508526, 40.324371, 46.135105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416686, -0.381103, 0.825308,
		-0.872374, -0.087641, -0.480918,
		0.255610, -0.920369, -0.295946,
		39.585209, 40.048260, 46.046322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817932, 40.292332, 46.426792>,  <39.406281, 40.692520, 46.253483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817932, 40.292332, 46.426792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.129505, 40.041519, 46.422821>,  <39.316448, 39.891033, 46.420437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.129505, 40.041519, 46.422821>,  <38.817932, 40.292332, 46.426792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129505, 40.041519, 46.422821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390740, -0.497672, 0.774367,
		-0.490505, -0.599289, -0.632658,
		0.778927, -0.627036, -0.009945,
		39.363186, 39.853413, 46.419842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517727, 39.713116, 46.664570>,  <38.817932, 40.292332, 46.426792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517727, 39.713116, 46.664570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.912804, 39.663345, 46.702461>,  <39.149849, 39.633484, 46.725197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.912804, 39.663345, 46.702461>,  <38.517727, 39.713116, 46.664570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912804, 39.663345, 46.702461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141917, -0.458695, 0.877188,
		-0.065695, -0.879839, -0.470710,
		0.987696, -0.124429, 0.094730,
		39.209114, 39.626015, 46.730881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490215, 39.190590, 47.037144>,  <38.517727, 39.713116, 46.664570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490215, 39.190590, 47.037144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.866806, 39.307648, 47.104046>,  <39.092762, 39.377884, 47.144188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.866806, 39.307648, 47.104046>,  <38.490215, 39.190590, 47.037144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866806, 39.307648, 47.104046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043626, -0.386229, 0.921371,
		0.334234, -0.874748, -0.350860,
		0.941480, 0.292647, 0.167253,
		39.149250, 39.395443, 47.154221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834244, 38.623184, 47.461525>,  <38.490215, 39.190590, 47.037144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834244, 38.623184, 47.461525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.066833, 38.946709, 47.496655>,  <39.206387, 39.140823, 47.517731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.066833, 38.946709, 47.496655>,  <38.834244, 38.623184, 47.461525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066833, 38.946709, 47.496655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190837, -0.240537, 0.951695,
		0.790866, -0.536626, -0.294217,
		0.581474, 0.808811, 0.087824,
		39.241276, 39.189350, 47.523003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359085, 38.301743, 47.870983>,  <38.834244, 38.623184, 47.461525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359085, 38.301743, 47.870983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.354263, 38.698875, 47.918556>,  <39.351372, 38.937153, 47.947102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.354263, 38.698875, 47.918556>,  <39.359085, 38.301743, 47.870983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354263, 38.698875, 47.918556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210146, -0.113774, 0.971027,
		0.977596, 0.036699, -0.207268,
		-0.012054, 0.992829, 0.118937,
		39.350647, 38.996723, 47.954239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926937, 38.458694, 48.310703>,  <39.359085, 38.301743, 47.870983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926937, 38.458694, 48.310703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.698284, 38.785324, 48.342793>,  <39.561092, 38.981304, 48.362045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.698284, 38.785324, 48.342793>,  <39.926937, 38.458694, 48.310703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698284, 38.785324, 48.342793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003488, -0.095356, 0.995437,
		0.820500, 0.569308, 0.051661,
		-0.571636, 0.816576, 0.080225,
		39.526794, 39.030296, 48.366859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200241, 38.818920, 48.859604>,  <39.926937, 38.458694, 48.310703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200241, 38.818920, 48.859604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.842422, 38.995163, 48.829536>,  <39.627731, 39.100910, 48.811497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.842422, 38.995163, 48.829536>,  <40.200241, 38.818920, 48.859604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842422, 38.995163, 48.829536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093417, -0.019833, 0.995429,
		0.437102, 0.897481, 0.058902,
		-0.894548, 0.440606, -0.075170,
		39.574059, 39.127346, 48.806984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209991, 39.325779, 49.347420>,  <40.200241, 38.818920, 48.859604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209991, 39.325779, 49.347420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.817715, 39.277237, 49.286079>,  <39.582348, 39.248112, 49.249275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.817715, 39.277237, 49.286079>,  <40.209991, 39.325779, 49.347420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817715, 39.277237, 49.286079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158563, 0.034443, 0.986748,
		-0.114469, 0.992011, -0.053021,
		-0.980691, -0.121359, -0.153353,
		39.523506, 39.240829, 49.240074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882755, 39.896114, 49.768204>,  <40.209991, 39.325779, 49.347420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882755, 39.896114, 49.768204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.606834, 39.613617, 49.704460>,  <39.441280, 39.444118, 49.666214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.606834, 39.613617, 49.704460>,  <39.882755, 39.896114, 49.768204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606834, 39.613617, 49.704460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274838, 0.051797, 0.960094,
		-0.669804, 0.706073, -0.229832,
		-0.689801, -0.706242, -0.159362,
		39.399895, 39.401745, 49.656651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332108, 40.236786, 49.930042>,  <39.882755, 39.896114, 49.768204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332108, 40.236786, 49.930042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208370, 39.857330, 49.956570>,  <39.134129, 39.629658, 49.972485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208370, 39.857330, 49.956570>,  <39.332108, 40.236786, 49.930042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208370, 39.857330, 49.956570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291288, 0.160907, 0.943006,
		-0.905240, 0.272392, -0.326101,
		-0.309339, -0.948637, 0.066314,
		39.115570, 39.572739, 49.976463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690643, 40.323692, 50.301563>,  <39.332108, 40.236786, 49.930042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690643, 40.323692, 50.301563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.791626, 39.937187, 50.321960>,  <38.852215, 39.705284, 50.334198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.791626, 39.937187, 50.321960>,  <38.690643, 40.323692, 50.301563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791626, 39.937187, 50.321960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178148, 0.005386, 0.983989,
		-0.951068, -0.257497, -0.170778,
		0.252454, -0.966264, 0.050995,
		38.867363, 39.647308, 50.337257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100632, 39.947598, 50.495983>,  <38.690643, 40.323692, 50.301563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100632, 39.947598, 50.495983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.414917, 39.713226, 50.575321>,  <38.603489, 39.572601, 50.622925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.414917, 39.713226, 50.575321>,  <38.100632, 39.947598, 50.495983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414917, 39.713226, 50.575321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237344, 0.010546, 0.971369,
		-0.571248, -0.810292, -0.130781,
		0.785713, -0.585932, 0.198342,
		38.650631, 39.537445, 50.634823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754452, 39.236687, 50.822727>,  <38.100632, 39.947598, 50.495983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754452, 39.236687, 50.822727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.127014, 39.295128, 50.956081>,  <38.350552, 39.330193, 51.036095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.127014, 39.295128, 50.956081>,  <37.754452, 39.236687, 50.822727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127014, 39.295128, 50.956081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295270, -0.232324, 0.926737,
		0.212854, -0.961602, -0.173247,
		0.931402, 0.146105, 0.333383,
		38.406433, 39.338959, 51.056095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902756, 38.644257, 51.309517>,  <37.754452, 39.236687, 50.822727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902756, 38.644257, 51.309517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150993, 38.947266, 51.390537>,  <38.299934, 39.129070, 51.439148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150993, 38.947266, 51.390537>,  <37.902756, 38.644257, 51.309517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150993, 38.947266, 51.390537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336405, 0.023879, 0.941414,
		0.708306, -0.652372, 0.269654,
		0.620592, 0.757523, 0.202548,
		38.337170, 39.174522, 51.451302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.325111, 38.259289, 51.817020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.374374, 38.652382, 51.872269>,  <38.403934, 38.888237, 51.905418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.374374, 38.652382, 51.872269>,  <38.325111, 38.259289, 51.817020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374374, 38.652382, 51.872269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090914, -0.149764, 0.984533,
		0.988213, -0.108699, -0.107789,
		0.123161, 0.982729, 0.138116,
		38.411324, 38.947201, 51.913704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889931, 38.404633, 52.388622>,  <38.325111, 38.259289, 51.817020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889931, 38.404633, 52.388622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655045, 38.725334, 52.344135>,  <38.514111, 38.917755, 52.317444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655045, 38.725334, 52.344135>,  <38.889931, 38.404633, 52.388622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655045, 38.725334, 52.344135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157991, 0.021225, 0.987212,
		0.793859, 0.597282, 0.114206,
		-0.587220, 0.801751, -0.111214,
		38.478878, 38.965858, 52.310772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130112, 38.916656, 52.870598>,  <38.889931, 38.404633, 52.388622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130112, 38.916656, 52.870598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.764412, 39.033936, 52.758759>,  <38.544991, 39.104301, 52.691654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.764412, 39.033936, 52.758759>,  <39.130112, 38.916656, 52.870598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764412, 39.033936, 52.758759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245708, 0.147467, 0.958061,
		0.322132, 0.944611, -0.062781,
		-0.914253, 0.293196, -0.279602,
		38.490135, 39.121895, 52.674877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055069, 39.494801, 53.186981>,  <39.130112, 38.916656, 52.870598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055069, 39.494801, 53.186981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.669868, 39.411766, 53.118244>,  <38.438747, 39.361946, 53.077000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.669868, 39.411766, 53.118244>,  <39.055069, 39.494801, 53.186981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669868, 39.411766, 53.118244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234198, 0.329180, 0.914763,
		-0.133326, 0.921166, -0.365618,
		-0.963003, -0.207589, -0.171847,
		38.380966, 39.349491, 53.066689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758228, 39.982040, 53.541275>,  <39.055069, 39.494801, 53.186981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758228, 39.982040, 53.541275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.461960, 39.721230, 53.476433>,  <38.284199, 39.564743, 53.437527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.461960, 39.721230, 53.476433>,  <38.758228, 39.982040, 53.541275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461960, 39.721230, 53.476433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231311, 0.020942, 0.972654,
		-0.630799, 0.757910, -0.166332,
		-0.740667, -0.652023, -0.162103,
		38.239761, 39.525623, 53.427803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122963, 40.212044, 53.808548>,  <38.758228, 39.982040, 53.541275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122963, 40.212044, 53.808548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083153, 39.814285, 53.794270>,  <38.059265, 39.575630, 53.785702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083153, 39.814285, 53.794270>,  <38.122963, 40.212044, 53.808548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083153, 39.814285, 53.794270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145095, -0.020985, 0.989195,
		-0.984399, 0.103632, -0.142193,
		-0.099529, -0.994395, -0.035695,
		38.053295, 39.515968, 53.783562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464550, 40.091595, 54.123032>,  <38.122963, 40.212044, 53.808548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464550, 40.091595, 54.123032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692741, 39.764336, 54.151833>,  <37.829655, 39.567978, 54.169113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692741, 39.764336, 54.151833>,  <37.464550, 40.091595, 54.123032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692741, 39.764336, 54.151833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219791, -0.067612, 0.973201,
		-0.791358, -0.571014, -0.218393,
		0.570477, -0.818151, 0.071999,
		37.863884, 39.518890, 54.173431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076786, 39.667282, 54.545074>,  <37.464550, 40.091595, 54.123032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076786, 39.667282, 54.545074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.435722, 39.492111, 54.523209>,  <37.651085, 39.387009, 54.510090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.435722, 39.492111, 54.523209>,  <37.076786, 39.667282, 54.545074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435722, 39.492111, 54.523209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046121, -0.030122, 0.998482,
		-0.438913, -0.898504, -0.006832,
		0.897345, -0.437931, -0.054661,
		37.704926, 39.360733, 54.506809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065540, 39.083065, 54.909996>,  <37.076786, 39.667282, 54.545074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065540, 39.083065, 54.909996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460052, 39.149101, 54.909241>,  <37.696758, 39.188721, 54.908787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460052, 39.149101, 54.909241>,  <37.065540, 39.083065, 54.909996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460052, 39.149101, 54.909241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032415, -0.182435, 0.982683,
		0.161886, -0.969259, -0.185283,
		0.986277, 0.165089, -0.001885,
		37.755936, 39.198627, 54.908676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391720, 38.470909, 55.180450>,  <37.065540, 39.083065, 54.909996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391720, 38.470909, 55.180450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.606483, 38.803528, 55.237392>,  <37.735340, 39.003098, 55.271557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.606483, 38.803528, 55.237392>,  <37.391720, 38.470909, 55.180450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606483, 38.803528, 55.237392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066144, -0.126726, 0.989730,
		0.841044, -0.540809, -0.013038,
		0.536907, 0.831545, 0.142353,
		37.767555, 39.052990, 55.280098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748150, 38.360840, 55.741215>,  <37.391720, 38.470909, 55.180450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748150, 38.360840, 55.741215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.834488, 38.751015, 55.723625>,  <37.886292, 38.985119, 55.713074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.834488, 38.751015, 55.723625>,  <37.748150, 38.360840, 55.741215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834488, 38.751015, 55.723625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036426, 0.053045, 0.997927,
		0.975749, -0.213792, 0.046981,
		0.215841, 0.975438, -0.043971,
		37.899239, 39.043648, 55.710434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306786, 38.527798, 56.177303>,  <37.748150, 38.360840, 55.741215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306786, 38.527798, 56.177303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.120445, 38.879211, 56.135044>,  <38.008640, 39.090061, 56.109688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.120445, 38.879211, 56.135044>,  <38.306786, 38.527798, 56.177303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120445, 38.879211, 56.135044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111275, 0.176611, 0.977971,
		0.877839, 0.443832, -0.180033,
		-0.465850, 0.878534, -0.105648,
		37.980690, 39.142773, 56.103348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689270, 38.960152, 56.618126>,  <38.306786, 38.527798, 56.177303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689270, 38.960152, 56.618126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.350060, 39.158882, 56.544357>,  <38.146534, 39.278122, 56.500095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.350060, 39.158882, 56.544357>,  <38.689270, 38.960152, 56.618126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350060, 39.158882, 56.544357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000098, 0.348135, 0.937444,
		0.529953, 0.794960, -0.295276,
		-0.848027, 0.496831, -0.184418,
		38.095650, 39.307930, 56.489033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894249, 39.766068, 56.755501>,  <38.689270, 38.960152, 56.618126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894249, 39.766068, 56.755501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506111, 39.674316, 56.785988>,  <38.273228, 39.619267, 56.804279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506111, 39.674316, 56.785988>,  <38.894249, 39.766068, 56.755501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506111, 39.674316, 56.785988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012917, 0.265687, 0.963973,
		-0.241363, 0.936375, -0.254846,
		-0.970349, -0.229375, 0.076222,
		38.215008, 39.605503, 56.808853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608608, 40.286633, 57.230007>,  <38.894249, 39.766068, 56.755501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608608, 40.286633, 57.230007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318901, 40.011078, 57.218239>,  <38.145077, 39.845745, 57.211178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318901, 40.011078, 57.218239>,  <38.608608, 40.286633, 57.230007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318901, 40.011078, 57.218239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190600, 0.159021, 0.968702,
		-0.662652, 0.707207, -0.246476,
		-0.724268, -0.688891, -0.029418,
		38.101620, 39.804409, 57.209415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996529, 40.605255, 57.538219>,  <38.608608, 40.286633, 57.230007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996529, 40.605255, 57.538219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.978642, 40.207298, 57.574417>,  <37.967911, 39.968525, 57.596138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.978642, 40.207298, 57.574417>,  <37.996529, 40.605255, 57.538219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978642, 40.207298, 57.574417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350028, 0.100449, 0.931338,
		-0.935672, 0.009969, -0.352731,
		-0.044716, -0.994892, 0.090498,
		37.965225, 39.908829, 57.601566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350307, 40.471596, 57.893364>,  <37.996529, 40.605255, 57.538219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350307, 40.471596, 57.893364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.570312, 40.139496, 57.929543>,  <37.702316, 39.940235, 57.951252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.570312, 40.139496, 57.929543>,  <37.350307, 40.471596, 57.893364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570312, 40.139496, 57.929543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168859, -0.004487, 0.985630,
		-0.817909, -0.557380, -0.142662,
		0.550010, -0.830245, 0.090449,
		37.735317, 39.890423, 57.956676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916954, 39.903709, 58.162186>,  <37.350307, 40.471596, 57.893364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916954, 39.903709, 58.162186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286747, 39.804596, 58.278076>,  <37.508621, 39.745129, 58.347610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286747, 39.804596, 58.278076>,  <36.916954, 39.903709, 58.162186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286747, 39.804596, 58.278076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327075, -0.125063, 0.936686,
		-0.195864, -0.960708, -0.196663,
		0.924478, -0.247787, 0.289728,
		37.564091, 39.730263, 58.364994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883358, 39.409481, 58.682278>,  <36.916954, 39.903709, 58.162186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883358, 39.409481, 58.682278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280975, 39.446609, 58.705109>,  <37.519547, 39.468887, 58.718807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280975, 39.446609, 58.705109>,  <36.883358, 39.409481, 58.682278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280975, 39.446609, 58.705109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067430, 0.112467, 0.991365,
		0.085592, -0.989311, 0.118056,
		0.994046, 0.092813, 0.057083,
		37.579189, 39.474457, 58.722233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159431, 38.799435, 59.134750>,  <36.883358, 39.409481, 58.682278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159431, 38.799435, 59.134750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398422, 39.120163, 59.138824>,  <37.541817, 39.312599, 59.141270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398422, 39.120163, 59.138824>,  <37.159431, 38.799435, 59.134750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398422, 39.120163, 59.138824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263261, 0.184145, 0.946987,
		0.757440, -0.568483, 0.321111,
		0.597477, 0.801822, 0.010181,
		37.577667, 39.360710, 59.141880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679615, 38.713619, 59.710640>,  <37.159431, 38.799435, 59.134750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679615, 38.713619, 59.710640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709892, 39.107925, 59.650585>,  <37.728058, 39.344509, 59.614552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709892, 39.107925, 59.650585>,  <37.679615, 38.713619, 59.710640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709892, 39.107925, 59.650585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251217, 0.164562, 0.953839,
		0.964966, -0.034487, 0.260098,
		0.075697, 0.985764, -0.150133,
		37.732601, 39.403656, 59.605545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329815, 38.881989, 59.971424>,  <37.679615, 38.713619, 59.710640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329815, 38.881989, 59.971424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.075706, 39.190887, 59.974644>,  <37.923241, 39.376228, 59.976578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.075706, 39.190887, 59.974644>,  <38.329815, 38.881989, 59.971424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075706, 39.190887, 59.974644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003943, -0.007184, 0.999966,
		0.772280, 0.635280, 0.001519,
		-0.635270, 0.772248, 0.008053,
		37.885124, 39.422562, 59.977058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612484, 39.444107, 60.277023>,  <38.329815, 38.881989, 59.971424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612484, 39.444107, 60.277023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215160, 39.458206, 60.320999>,  <37.976765, 39.466667, 60.347385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215160, 39.458206, 60.320999>,  <38.612484, 39.444107, 60.277023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215160, 39.458206, 60.320999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111055, 0.031547, 0.993313,
		0.031547, 0.998881, -0.035251,
		-0.993313, 0.035251, 0.109935,
		37.917168, 39.468781, 60.353981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498482, 39.513767, 60.975140>,  <38.612484, 39.444107, 60.277023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498482, 39.513767, 60.975140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118511, 39.471954, 60.857346>,  <37.890530, 39.446869, 60.786671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118511, 39.471954, 60.857346>,  <38.498482, 39.513767, 60.975140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118511, 39.471954, 60.857346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253050, -0.295583, 0.921193,
		-0.183336, 0.949581, 0.254330,
		-0.949923, -0.104530, -0.294482,
		37.833534, 39.440594, 60.769001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132454, 39.240864, 60.730484>,  <38.498482, 39.513767, 60.975140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132454, 39.240864, 60.730484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.494022, 39.257515, 60.900753>,  <39.710964, 39.267506, 61.002914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.494022, 39.257515, 60.900753>,  <39.132454, 39.240864, 60.730484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494022, 39.257515, 60.900753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407944, 0.215122, -0.887302,
		-0.128511, 0.975699, 0.177470,
		0.903917, 0.041631, 0.425676,
		39.765198, 39.270004, 61.028458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454956, 39.823166, 60.507477>,  <39.132454, 39.240864, 60.730484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454956, 39.823166, 60.507477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.767242, 39.604942, 60.629364>,  <39.954613, 39.474010, 60.702496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.767242, 39.604942, 60.629364>,  <39.454956, 39.823166, 60.507477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767242, 39.604942, 60.629364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442901, 0.139100, -0.885715,
		0.440821, 0.826450, 0.350224,
		0.780715, -0.545556, 0.304717,
		40.001457, 39.441277, 60.720779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101456, 40.144402, 60.336002>,  <39.454956, 39.823166, 60.507477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101456, 40.144402, 60.336002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.189369, 39.755081, 60.362469>,  <40.242115, 39.521488, 60.378349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.189369, 39.755081, 60.362469>,  <40.101456, 40.144402, 60.336002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189369, 39.755081, 60.362469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503744, 0.055141, -0.862091,
		0.835427, 0.222805, 0.502414,
		0.219781, -0.973302, 0.066170,
		40.255302, 39.463089, 60.382320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766655, 40.058178, 60.082565>,  <40.101456, 40.144402, 60.336002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766655, 40.058178, 60.082565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.612236, 39.689789, 60.061512>,  <40.519585, 39.468754, 60.048878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.612236, 39.689789, 60.061512>,  <40.766655, 40.058178, 60.082565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612236, 39.689789, 60.061512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278943, -0.062155, -0.958294,
		0.879293, -0.384633, 0.280894,
		-0.386051, -0.920975, -0.052638,
		40.496422, 39.413498, 60.045719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213921, 39.681847, 59.736340>,  <40.766655, 40.058178, 60.082565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213921, 39.681847, 59.736340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.889793, 39.451088, 59.695221>,  <40.695316, 39.312634, 59.670547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.889793, 39.451088, 59.695221>,  <41.213921, 39.681847, 59.736340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889793, 39.451088, 59.695221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268749, -0.209977, -0.940045,
		0.520727, -0.789364, 0.325190,
		-0.810319, -0.576901, -0.102800,
		40.646698, 39.278019, 59.664379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443504, 39.155979, 59.289047>,  <41.213921, 39.681847, 59.736340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443504, 39.155979, 59.289047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.043724, 39.164719, 59.279018>,  <40.803856, 39.169964, 59.273003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.043724, 39.164719, 59.279018>,  <41.443504, 39.155979, 59.289047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043724, 39.164719, 59.279018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019602, -0.222033, -0.974842,
		-0.026864, -0.974794, 0.221482,
		-0.999447, 0.021846, -0.025072,
		40.743889, 39.171272, 59.271496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300087, 38.581619, 58.879070>,  <41.443504, 39.155979, 59.289047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300087, 38.581619, 58.879070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.966019, 38.801598, 58.881660>,  <40.765575, 38.933586, 58.883217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.966019, 38.801598, 58.881660>,  <41.300087, 38.581619, 58.879070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966019, 38.801598, 58.881660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100087, -0.140392, -0.985024,
		-0.540804, -0.823314, 0.172294,
		-0.835173, 0.549950, 0.006478,
		40.715466, 38.966583, 58.883602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922226, 38.178967, 58.447544>,  <41.300087, 38.581619, 58.879070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922226, 38.178967, 58.447544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.766766, 38.547508, 58.450661>,  <40.673489, 38.768635, 58.452530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.766766, 38.547508, 58.450661>,  <40.922226, 38.178967, 58.447544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766766, 38.547508, 58.450661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247608, -0.096291, -0.964064,
		-0.887493, -0.376610, 0.265558,
		-0.388647, 0.921354, 0.007794,
		40.650173, 38.823914, 58.452999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217144, 38.263081, 58.170071>,  <40.922226, 38.178967, 58.447544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217144, 38.263081, 58.170071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.387566, 38.620552, 58.113754>,  <40.489819, 38.835033, 58.079964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.387566, 38.620552, 58.113754>,  <40.217144, 38.263081, 58.170071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387566, 38.620552, 58.113754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250059, -0.033238, -0.967660,
		-0.869455, 0.447478, 0.209311,
		0.426050, 0.893677, -0.140795,
		40.515381, 38.888657, 58.071514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908951, 38.506763, 57.581478>,  <40.217144, 38.263081, 58.170071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908951, 38.506763, 57.581478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.190094, 38.791069, 57.592903>,  <40.358780, 38.961651, 57.599758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.190094, 38.791069, 57.592903>,  <39.908951, 38.506763, 57.581478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190094, 38.791069, 57.592903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026849, 0.066632, -0.997416,
		-0.710827, 0.700271, 0.065916,
		0.702854, 0.710760, 0.028562,
		40.400951, 39.004295, 57.601471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656868, 39.180866, 57.205917>,  <39.908951, 38.506763, 57.581478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656868, 39.180866, 57.205917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.056679, 39.170067, 57.199982>,  <40.296566, 39.163589, 57.196419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.056679, 39.170067, 57.199982>,  <39.656868, 39.180866, 57.205917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056679, 39.170067, 57.199982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006586, 0.283369, -0.958988,
		0.030093, 0.958631, 0.283057,
		0.999525, -0.026995, -0.014841,
		40.356537, 39.161968, 57.195530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819477, 39.856777, 56.853115>,  <39.656868, 39.180866, 57.205917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819477, 39.856777, 56.853115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.136768, 39.616386, 56.813896>,  <40.327145, 39.472153, 56.790367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.136768, 39.616386, 56.813896>,  <39.819477, 39.856777, 56.853115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136768, 39.616386, 56.813896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067310, 0.246567, -0.966785,
		0.605188, 0.760286, 0.236037,
		0.793232, -0.600975, -0.098044,
		40.374737, 39.436092, 56.784481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168472, 40.174038, 56.294098>,  <39.819477, 39.856777, 56.853115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168472, 40.174038, 56.294098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.342255, 39.816345, 56.337170>,  <40.446522, 39.601730, 56.363014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.342255, 39.816345, 56.337170>,  <40.168472, 40.174038, 56.294098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342255, 39.816345, 56.337170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157461, -0.042306, -0.986619,
		0.886824, 0.445595, 0.122427,
		0.434453, -0.894234, 0.107682,
		40.472591, 39.548077, 56.369473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774200, 40.275784, 55.914917>,  <40.168472, 40.174038, 56.294098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774200, 40.275784, 55.914917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.670319, 39.889809, 55.930145>,  <40.607990, 39.658222, 55.939281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.670319, 39.889809, 55.930145>,  <40.774200, 40.275784, 55.914917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670319, 39.889809, 55.930145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153677, -0.080216, -0.984860,
		0.953383, -0.249918, 0.169121,
		-0.259701, -0.964938, 0.038070,
		40.592407, 39.600327, 55.941566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253304, 39.983410, 55.396900>,  <40.774200, 40.275784, 55.914917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253304, 39.983410, 55.396900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.994385, 39.687378, 55.469891>,  <40.839035, 39.509758, 55.513683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.994385, 39.687378, 55.469891>,  <41.253304, 39.983410, 55.396900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994385, 39.687378, 55.469891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147242, -0.356288, -0.922702,
		0.747884, -0.570391, 0.339594,
		-0.647294, -0.740076, 0.182476,
		40.800198, 39.465355, 55.524635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631142, 39.325325, 55.198357>,  <41.253304, 39.983410, 55.396900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631142, 39.325325, 55.198357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.239021, 39.253708, 55.165020>,  <41.003750, 39.210735, 55.145016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.239021, 39.253708, 55.165020>,  <41.631142, 39.325325, 55.198357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239021, 39.253708, 55.165020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109660, -0.142502, -0.983701,
		0.164250, -0.973466, 0.159329,
		-0.980304, -0.179045, -0.083345,
		40.944931, 39.199993, 55.140018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540535, 38.738857, 54.875832>,  <41.631142, 39.325325, 55.198357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540535, 38.738857, 54.875832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.195892, 38.919846, 54.783829>,  <40.989105, 39.028439, 54.728626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.195892, 38.919846, 54.783829>,  <41.540535, 38.738857, 54.875832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195892, 38.919846, 54.783829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188546, -0.135417, -0.972683,
		-0.471257, -0.881438, 0.031365,
		-0.861607, 0.452470, -0.230008,
		40.937408, 39.055588, 54.714825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337666, 38.331570, 54.312653>,  <41.540535, 38.738857, 54.875832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337666, 38.331570, 54.312653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120823, 38.667534, 54.302246>,  <40.990719, 38.869114, 54.296001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120823, 38.667534, 54.302246>,  <41.337666, 38.331570, 54.312653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120823, 38.667534, 54.302246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170341, 0.079516, -0.982172,
		-0.822867, -0.536870, -0.186177,
		-0.542102, 0.839910, -0.026020,
		40.958191, 38.919506, 54.294441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925888, 38.215313, 53.780987>,  <41.337666, 38.331570, 54.312653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925888, 38.215313, 53.780987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.915115, 38.612076, 53.830605>,  <40.908653, 38.850136, 53.860374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.915115, 38.612076, 53.830605>,  <40.925888, 38.215313, 53.780987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915115, 38.612076, 53.830605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339935, 0.125777, -0.932000,
		-0.940063, 0.017067, -0.340573,
		-0.026930, 0.991912, 0.124040,
		40.907036, 38.909649, 53.867817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634815, 38.493408, 53.124191>,  <40.925888, 38.215313, 53.780987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634815, 38.493408, 53.124191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.745590, 38.842842, 53.284267>,  <40.812057, 39.052502, 53.380314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.745590, 38.842842, 53.284267>,  <40.634815, 38.493408, 53.124191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745590, 38.842842, 53.284267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226418, 0.345425, -0.910723,
		-0.933830, 0.342826, -0.102134,
		0.276940, 0.873585, 0.400191,
		40.828671, 39.104919, 53.404324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.263622, 38.991508, 48.977238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.643467, 39.089561, 49.055363>,  <38.871372, 39.148392, 49.102238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.643467, 39.089561, 49.055363>,  <38.263622, 38.991508, 48.977238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643467, 39.089561, 49.055363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120478, 0.289799, -0.949474,
		-0.289347, 0.925164, 0.245664,
		0.949612, 0.245130, 0.195315,
		38.928352, 39.163101, 49.113956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406727, 39.686710, 48.735447>,  <38.263622, 38.991508, 48.977238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406727, 39.686710, 48.735447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.772026, 39.527962, 48.772240>,  <38.991207, 39.432713, 48.794315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.772026, 39.527962, 48.772240>,  <38.406727, 39.686710, 48.735447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772026, 39.527962, 48.772240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209490, 0.263843, -0.941542,
		0.349404, 0.879135, 0.324097,
		0.913253, -0.396874, 0.091982,
		39.046001, 39.408901, 48.799835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859268, 40.121624, 48.441235>,  <38.406727, 39.686710, 48.735447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859268, 40.121624, 48.441235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064140, 39.779144, 48.414135>,  <39.187065, 39.573658, 48.397873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064140, 39.779144, 48.414135>,  <38.859268, 40.121624, 48.441235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064140, 39.779144, 48.414135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069272, 0.119809, -0.990377,
		0.856079, 0.502560, 0.120674,
		0.512182, -0.856200, -0.067752,
		39.217796, 39.522285, 48.393810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562023, 40.242699, 48.228085>,  <38.859268, 40.121624, 48.441235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562023, 40.242699, 48.228085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.472454, 39.867889, 48.120865>,  <39.418713, 39.643005, 48.056534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.472454, 39.867889, 48.120865>,  <39.562023, 40.242699, 48.228085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472454, 39.867889, 48.120865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162010, 0.235415, -0.958296,
		0.961047, -0.258012, 0.099092,
		-0.223924, -0.937021, -0.268045,
		39.405277, 39.586784, 48.040451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084240, 40.134632, 47.747238>,  <39.562023, 40.242699, 48.228085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084240, 40.134632, 47.747238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.823570, 39.838737, 47.680168>,  <39.667168, 39.661201, 47.639927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.823570, 39.838737, 47.680168>,  <40.084240, 40.134632, 47.747238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823570, 39.838737, 47.680168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107493, 0.128758, -0.985833,
		0.750847, -0.660462, -0.004391,
		-0.651670, -0.739737, -0.167673,
		39.628071, 39.616817, 47.629868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372696, 39.742531, 47.308613>,  <40.084240, 40.134632, 47.747238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372696, 39.742531, 47.308613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.986771, 39.647591, 47.263359>,  <39.755215, 39.590626, 47.236206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.986771, 39.647591, 47.263359>,  <40.372696, 39.742531, 47.308613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986771, 39.647591, 47.263359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123920, -0.030962, -0.991809,
		0.231899, -0.970932, 0.059284,
		-0.964814, -0.237347, -0.113137,
		39.697327, 39.576385, 47.229420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442829, 39.190014, 46.876522>,  <40.372696, 39.742531, 47.308613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442829, 39.190014, 46.876522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079170, 39.350769, 46.832813>,  <39.860973, 39.447220, 46.806587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079170, 39.350769, 46.832813>,  <40.442829, 39.190014, 46.876522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079170, 39.350769, 46.832813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085770, -0.076065, -0.993407,
		-0.407548, -0.912525, 0.034685,
		-0.909147, 0.401886, -0.109267,
		39.806427, 39.471336, 46.800034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252060, 38.879765, 46.291817>,  <40.442829, 39.190014, 46.876522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252060, 38.879765, 46.291817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988197, 39.179695, 46.312298>,  <39.829880, 39.359653, 46.324589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988197, 39.179695, 46.312298>,  <40.252060, 38.879765, 46.291817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988197, 39.179695, 46.312298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105997, 0.160270, -0.981365,
		-0.744057, -0.641934, -0.185201,
		-0.659654, 0.749823, 0.051207,
		39.790302, 39.404640, 46.327660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904667, 38.828800, 45.628666>,  <40.252060, 38.879765, 46.291817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904667, 38.828800, 45.628666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.806068, 39.195541, 45.754284>,  <39.746910, 39.415585, 45.829655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.806068, 39.195541, 45.754284>,  <39.904667, 38.828800, 45.628666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806068, 39.195541, 45.754284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006604, 0.325628, -0.945475,
		-0.969120, -0.230985, -0.086322,
		-0.246500, 0.916849, 0.314047,
		39.732117, 39.470596, 45.848499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375385, 39.054268, 45.185757>,  <39.904667, 38.828800, 45.628666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375385, 39.054268, 45.185757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.495811, 39.399628, 45.347698>,  <39.568066, 39.606842, 45.444862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.495811, 39.399628, 45.347698>,  <39.375385, 39.054268, 45.185757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495811, 39.399628, 45.347698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104799, 0.392023, -0.913967,
		-0.947828, 0.317591, 0.027542,
		0.301065, 0.863397, 0.404853,
		39.586132, 39.658646, 45.469154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955524, 39.568203, 44.834595>,  <39.375385, 39.054268, 45.185757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955524, 39.568203, 44.834595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.288456, 39.727707, 44.988586>,  <39.488216, 39.823410, 45.080982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.288456, 39.727707, 44.988586>,  <38.955524, 39.568203, 44.834595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288456, 39.727707, 44.988586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229798, 0.383804, -0.894364,
		-0.504396, 0.832877, 0.227818,
		0.832332, 0.398762, 0.384983,
		39.538155, 39.847336, 45.104080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053406, 40.142689, 44.435745>,  <38.955524, 39.568203, 44.834595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053406, 40.142689, 44.435745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.408661, 40.115334, 44.617527>,  <39.621815, 40.098919, 44.726597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.408661, 40.115334, 44.617527>,  <39.053406, 40.142689, 44.435745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408661, 40.115334, 44.617527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412440, 0.554829, -0.722535,
		-0.202732, 0.829148, 0.520973,
		0.888140, -0.068389, 0.454456,
		39.675102, 40.094818, 44.753864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467262, 40.756306, 44.646317>,  <39.053406, 40.142689, 44.435745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467262, 40.756306, 44.646317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.695148, 40.462852, 44.498150>,  <39.831882, 40.286781, 44.409248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.695148, 40.462852, 44.498150>,  <39.467262, 40.756306, 44.646317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695148, 40.462852, 44.498150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258086, 0.587626, -0.766869,
		0.780266, 0.341298, 0.524119,
		0.569717, -0.733629, -0.370420,
		39.866062, 40.242764, 44.387024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057598, 41.037319, 44.398926>,  <39.467262, 40.756306, 44.646317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057598, 41.037319, 44.398926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032036, 40.701118, 44.183712>,  <40.016697, 40.499397, 44.054585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032036, 40.701118, 44.183712>,  <40.057598, 41.037319, 44.398926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032036, 40.701118, 44.183712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315014, 0.494580, -0.810036,
		0.946933, -0.221254, 0.233162,
		-0.063907, -0.840498, -0.538032,
		40.012863, 40.448971, 44.022301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803265, 41.686733, 44.262936>,  <40.057598, 41.037319, 44.398926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803265, 41.686733, 44.262936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.781609, 42.041855, 44.080124>,  <39.768616, 42.254929, 43.970436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.781609, 42.041855, 44.080124>,  <39.803265, 41.686733, 44.262936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781609, 42.041855, 44.080124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043220, 0.459353, 0.887201,
		0.997597, 0.028285, -0.063242,
		-0.054145, 0.887803, -0.457027,
		39.765366, 42.308197, 43.943016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419975, 42.047371, 44.417198>,  <39.803265, 41.686733, 44.262936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419975, 42.047371, 44.417198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.105309, 42.288124, 44.362228>,  <39.916508, 42.432575, 44.329247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.105309, 42.288124, 44.362228>,  <40.419975, 42.047371, 44.417198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105309, 42.288124, 44.362228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108806, 0.354277, 0.928789,
		0.607712, 0.715697, -0.344187,
		-0.786669, 0.601886, -0.137426,
		39.869308, 42.468689, 44.320999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559155, 42.739475, 44.640617>,  <40.419975, 42.047371, 44.417198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559155, 42.739475, 44.640617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.159233, 42.740799, 44.648491>,  <39.919281, 42.741592, 44.653217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.159233, 42.740799, 44.648491>,  <40.559155, 42.739475, 44.640617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159233, 42.740799, 44.648491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018817, 0.485512, 0.874027,
		-0.006666, 0.874224, -0.485478,
		-0.999801, 0.003310, 0.019687,
		39.859291, 42.741791, 44.654396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346127, 43.427971, 45.010010>,  <40.559155, 42.739475, 44.640617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346127, 43.427971, 45.010010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019951, 43.196960, 45.025642>,  <39.824245, 43.058353, 45.035023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019951, 43.196960, 45.025642>,  <40.346127, 43.427971, 45.010010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019951, 43.196960, 45.025642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105628, 0.214842, 0.970920,
		-0.569123, 0.787599, -0.236193,
		-0.815440, -0.577522, 0.039080,
		39.775318, 43.023705, 45.037365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685787, 43.808952, 45.169945>,  <40.346127, 43.427971, 45.010010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685787, 43.808952, 45.169945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.602776, 43.435501, 45.286751>,  <39.552967, 43.211430, 45.356834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.602776, 43.435501, 45.286751>,  <39.685787, 43.808952, 45.169945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602776, 43.435501, 45.286751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141499, 0.324027, 0.935406,
		-0.967941, 0.152806, -0.199353,
		-0.207531, -0.933626, 0.292017,
		39.540516, 43.155415, 45.374355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141354, 43.917450, 45.555180>,  <39.685787, 43.808952, 45.169945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141354, 43.917450, 45.555180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.277000, 43.555046, 45.656483>,  <39.358387, 43.337605, 45.717266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.277000, 43.555046, 45.656483>,  <39.141354, 43.917450, 45.555180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277000, 43.555046, 45.656483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036309, 0.256407, 0.965887,
		-0.940044, -0.336741, 0.054055,
		0.339114, -0.906014, 0.253260,
		39.378735, 43.283241, 45.732460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655479, 43.701656, 46.078209>,  <39.141354, 43.917450, 45.555180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655479, 43.701656, 46.078209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964447, 43.449036, 46.105091>,  <39.149826, 43.297462, 46.121220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964447, 43.449036, 46.105091>,  <38.655479, 43.701656, 46.078209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964447, 43.449036, 46.105091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029630, 0.069866, 0.997116,
		-0.634425, -0.772180, 0.035253,
		0.772417, -0.631551, 0.067205,
		39.196171, 43.259571, 46.125252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425854, 43.224831, 46.580887>,  <38.655479, 43.701656, 46.078209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425854, 43.224831, 46.580887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824974, 43.209274, 46.559429>,  <39.064445, 43.199940, 46.546555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824974, 43.209274, 46.559429>,  <38.425854, 43.224831, 46.580887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824974, 43.209274, 46.559429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046515, -0.165406, 0.985128,
		-0.047183, -0.985458, -0.163233,
		0.997802, -0.038889, -0.053643,
		39.124313, 43.197605, 46.543335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593952, 42.751179, 46.959702>,  <38.425854, 43.224831, 46.580887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593952, 42.751179, 46.959702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939972, 42.951820, 46.963417>,  <39.147583, 43.072205, 46.965649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939972, 42.951820, 46.963417>,  <38.593952, 42.751179, 46.959702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939972, 42.951820, 46.963417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014266, 0.006078, 0.999880,
		0.501487, -0.865077, 0.012414,
		0.865048, 0.501603, 0.009293,
		39.199486, 43.102303, 46.966206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104404, 42.437702, 47.331264>,  <38.593952, 42.751179, 46.959702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104404, 42.437702, 47.331264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.266048, 42.803139, 47.313187>,  <39.363037, 43.022400, 47.302341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.266048, 42.803139, 47.313187>,  <39.104404, 42.437702, 47.331264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266048, 42.803139, 47.313187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272273, -0.072973, 0.959449,
		0.873247, -0.400031, -0.278235,
		0.404113, 0.913592, -0.045194,
		39.387283, 43.077217, 47.299629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806934, 42.366230, 47.573605>,  <39.104404, 42.437702, 47.331264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806934, 42.366230, 47.573605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.689117, 42.747917, 47.594444>,  <39.618427, 42.976929, 47.606949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.689117, 42.747917, 47.594444>,  <39.806934, 42.366230, 47.573605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689117, 42.747917, 47.594444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056324, -0.037091, 0.997723,
		0.953977, 0.296806, -0.042820,
		-0.294542, 0.954217, 0.052102,
		39.600754, 43.034184, 47.610073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291313, 42.717468, 48.046040>,  <39.806934, 42.366230, 47.573605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291313, 42.717468, 48.046040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.953300, 42.931145, 48.036530>,  <39.750492, 43.059349, 48.030823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.953300, 42.931145, 48.036530>,  <40.291313, 42.717468, 48.046040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953300, 42.931145, 48.036530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049435, -0.033779, 0.998206,
		0.532430, 0.844688, 0.054952,
		-0.845029, 0.534192, -0.023772,
		39.699791, 43.091404, 48.029396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452515, 43.182644, 48.564693>,  <40.291313, 42.717468, 48.046040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452515, 43.182644, 48.564693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.054680, 43.196754, 48.525589>,  <39.815979, 43.205219, 48.502125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.054680, 43.196754, 48.525589>,  <40.452515, 43.182644, 48.564693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054680, 43.196754, 48.525589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100502, -0.086698, 0.991152,
		0.026484, 0.995610, 0.089773,
		-0.994584, 0.035272, -0.097765,
		39.756306, 43.207336, 48.496258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227436, 43.673409, 48.988243>,  <40.452515, 43.182644, 48.564693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227436, 43.673409, 48.988243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.902260, 43.444397, 48.945663>,  <39.707153, 43.306992, 48.920116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.902260, 43.444397, 48.945663>,  <40.227436, 43.673409, 48.988243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902260, 43.444397, 48.945663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062631, -0.095779, 0.993430,
		-0.578964, 0.814271, 0.042005,
		-0.812944, -0.572529, -0.106451,
		39.658375, 43.272636, 48.913727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879482, 44.389030, 48.939617>,  <40.227436, 43.673409, 48.988243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879482, 44.389030, 48.939617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.972389, 44.770111, 49.018009>,  <40.028133, 44.998760, 49.065044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.972389, 44.770111, 49.018009>,  <39.879482, 44.389030, 48.939617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972389, 44.770111, 49.018009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268519, 0.130855, -0.954345,
		-0.934852, 0.274292, -0.225424,
		0.232271, 0.952702, 0.195983,
		40.042072, 45.055923, 49.076805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632168, 44.803581, 48.365070>,  <39.879482, 44.389030, 48.939617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632168, 44.803581, 48.365070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929924, 45.025642, 48.513500>,  <40.108578, 45.158878, 48.602558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929924, 45.025642, 48.513500>,  <39.632168, 44.803581, 48.365070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929924, 45.025642, 48.513500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166787, 0.383518, -0.908348,
		-0.646583, 0.738053, 0.192894,
		0.744387, 0.555150, 0.371074,
		40.153240, 45.192188, 48.624821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548592, 45.423985, 48.110527>,  <39.632168, 44.803581, 48.365070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548592, 45.423985, 48.110527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931801, 45.450928, 48.222000>,  <40.161724, 45.467094, 48.288883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931801, 45.450928, 48.222000>,  <39.548592, 45.423985, 48.110527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931801, 45.450928, 48.222000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245874, 0.306923, -0.919426,
		-0.147461, 0.949348, 0.277477,
		0.958019, 0.067355, 0.278679,
		40.219208, 45.471134, 48.305603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798553, 45.833237, 47.558334>,  <39.548592, 45.423985, 48.110527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798553, 45.833237, 47.558334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135036, 45.704193, 47.731907>,  <40.336926, 45.626766, 47.836052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135036, 45.704193, 47.731907>,  <39.798553, 45.833237, 47.558334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135036, 45.704193, 47.731907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459250, 0.002658, -0.888303,
		0.285424, 0.946527, 0.150396,
		0.841203, -0.322612, 0.433934,
		40.387398, 45.607410, 47.862087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265388, 46.230141, 47.297283>,  <39.798553, 45.833237, 47.558334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265388, 46.230141, 47.297283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.495331, 45.928230, 47.423687>,  <40.633297, 45.747086, 47.499527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.495331, 45.928230, 47.423687>,  <40.265388, 46.230141, 47.297283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495331, 45.928230, 47.423687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542341, 0.062273, -0.837847,
		0.612707, 0.653022, 0.445143,
		0.574853, -0.754774, 0.316006,
		40.667786, 45.701797, 47.518490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983261, 46.527348, 47.259212>,  <40.265388, 46.230141, 47.297283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983261, 46.527348, 47.259212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007442, 46.128380, 47.274666>,  <41.021950, 45.889000, 47.283939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007442, 46.128380, 47.274666>,  <40.983261, 46.527348, 47.259212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007442, 46.128380, 47.274666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527921, -0.000901, -0.849293,
		0.847139, 0.071737, 0.526507,
		0.060452, -0.997423, 0.038635,
		41.025578, 45.829151, 47.286255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611805, 46.396526, 47.075638>,  <40.983261, 46.527348, 47.259212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611805, 46.396526, 47.075638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.435646, 46.041893, 47.019043>,  <41.329948, 45.829113, 46.985088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.435646, 46.041893, 47.019043>,  <41.611805, 46.396526, 47.075638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435646, 46.041893, 47.019043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424443, -0.066734, -0.902992,
		0.791136, -0.457729, 0.405694,
		-0.440400, -0.886584, -0.141484,
		41.303528, 45.775917, 46.976597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105927, 45.825455, 46.831722>,  <41.611805, 46.396526, 47.075638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105927, 45.825455, 46.831722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.766815, 45.663742, 46.694420>,  <41.563347, 45.566715, 46.612038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.766815, 45.663742, 46.694420>,  <42.105927, 45.825455, 46.831722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766815, 45.663742, 46.694420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407804, -0.083154, -0.909275,
		0.339062, -0.910846, 0.235365,
		-0.847781, -0.404283, -0.343252,
		41.512482, 45.542458, 46.591446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331547, 45.175243, 46.474491>,  <42.105927, 45.825455, 46.831722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331547, 45.175243, 46.474491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.976395, 45.308266, 46.347317>,  <41.763306, 45.388077, 46.271011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.976395, 45.308266, 46.347317>,  <42.331547, 45.175243, 46.474491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976395, 45.308266, 46.347317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360781, 0.074423, -0.929677,
		-0.285504, -0.940144, -0.186057,
		-0.887877, 0.332552, -0.317938,
		41.710033, 45.408031, 46.251934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190414, 44.780842, 45.918728>,  <42.331547, 45.175243, 46.474491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190414, 44.780842, 45.918728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.962147, 45.107094, 45.880592>,  <41.825188, 45.302845, 45.857712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.962147, 45.107094, 45.880592>,  <42.190414, 44.780842, 45.918728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962147, 45.107094, 45.880592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274128, 0.079768, -0.958379,
		-0.774075, -0.573052, -0.269107,
		-0.570667, 0.815628, -0.095343,
		41.790947, 45.351784, 45.851990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841496, 44.679680, 45.352951>,  <42.190414, 44.780842, 45.918728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841496, 44.679680, 45.352951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.814735, 45.077812, 45.380791>,  <41.798679, 45.316692, 45.397495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.814735, 45.077812, 45.380791>,  <41.841496, 44.679680, 45.352951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814735, 45.077812, 45.380791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082232, 0.075021, -0.993786,
		-0.994365, -0.060763, -0.086867,
		-0.066902, 0.995329, 0.069601,
		41.794666, 45.376411, 45.401672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367168, 45.019779, 44.775967>,  <41.841496, 44.679680, 45.352951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367168, 45.019779, 44.775967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.606331, 45.307266, 44.917927>,  <41.749828, 45.479759, 45.003101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.606331, 45.307266, 44.917927>,  <41.367168, 45.019779, 44.775967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606331, 45.307266, 44.917927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190746, 0.302458, -0.933882,
		-0.778542, 0.626066, 0.043748,
		0.597904, 0.718721, 0.354896,
		41.785702, 45.522884, 45.024395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.126274, 44.977722, 52.127579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471844, 45.062508, 52.310314>,  <38.679188, 45.113377, 52.419956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471844, 45.062508, 52.310314>,  <38.126274, 44.977722, 52.127579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471844, 45.062508, 52.310314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390939, 0.289610, -0.873666,
		-0.317488, 0.933380, 0.167339,
		0.863926, 0.211959, 0.456843,
		38.731022, 45.126095, 52.447369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263935, 45.598038, 51.877426>,  <38.126274, 44.977722, 52.127579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263935, 45.598038, 51.877426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621048, 45.469711, 52.003929>,  <38.835316, 45.392715, 52.079830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621048, 45.469711, 52.003929>,  <38.263935, 45.598038, 51.877426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621048, 45.469711, 52.003929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411128, 0.293242, -0.863124,
		0.184159, 0.900605, 0.393696,
		0.892782, -0.320811, 0.316261,
		38.888882, 45.373466, 52.098808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720036, 46.068108, 51.812580>,  <38.263935, 45.598038, 51.877426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720036, 46.068108, 51.812580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975395, 45.763840, 51.859615>,  <39.128613, 45.581280, 51.887836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975395, 45.763840, 51.859615>,  <38.720036, 46.068108, 51.812580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975395, 45.763840, 51.859615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553848, 0.347885, -0.756458,
		0.534506, 0.548051, 0.643385,
		0.638401, -0.760669, 0.117590,
		39.166916, 45.535641, 51.894894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440865, 46.326077, 51.650646>,  <38.720036, 46.068108, 51.812580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440865, 46.326077, 51.650646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410660, 45.931396, 51.593063>,  <39.392536, 45.694588, 51.558514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410660, 45.931396, 51.593063>,  <39.440865, 46.326077, 51.650646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410660, 45.931396, 51.593063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439869, 0.096605, -0.892851,
		0.894881, -0.130748, 0.426723,
		-0.075515, -0.986698, -0.143962,
		39.388004, 45.635387, 51.549873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144753, 46.044827, 51.411327>,  <39.440865, 46.326077, 51.650646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144753, 46.044827, 51.411327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902878, 45.750153, 51.290234>,  <39.757751, 45.573349, 51.217579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902878, 45.750153, 51.290234>,  <40.144753, 46.044827, 51.411327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902878, 45.750153, 51.290234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541500, -0.101529, -0.834547,
		0.584062, -0.668571, 0.460308,
		-0.604689, -0.736685, -0.302731,
		39.721470, 45.529148, 51.199413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625973, 45.572922, 51.043472>,  <40.144753, 46.044827, 51.411327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625973, 45.572922, 51.043472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263905, 45.459084, 50.917194>,  <40.046661, 45.390781, 50.841427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263905, 45.459084, 50.917194>,  <40.625973, 45.572922, 51.043472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263905, 45.459084, 50.917194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367811, -0.152244, -0.917353,
		0.213016, -0.946480, 0.242486,
		-0.905174, -0.284600, -0.315695,
		39.992352, 45.373703, 50.822487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746616, 45.101944, 50.631546>,  <40.625973, 45.572922, 51.043472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746616, 45.101944, 50.631546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362617, 45.137619, 50.525375>,  <40.132217, 45.159023, 50.461674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362617, 45.137619, 50.525375>,  <40.746616, 45.101944, 50.631546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362617, 45.137619, 50.525375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238940, -0.233275, -0.942598,
		-0.145983, -0.968312, 0.202633,
		-0.959998, 0.089186, -0.265423,
		40.074619, 45.164375, 50.445747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584389, 44.485283, 50.131149>,  <40.746616, 45.101944, 50.631546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584389, 44.485283, 50.131149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309006, 44.756401, 50.027908>,  <40.143776, 44.919071, 49.965961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309006, 44.756401, 50.027908>,  <40.584389, 44.485283, 50.131149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309006, 44.756401, 50.027908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255558, -0.106342, -0.960927,
		-0.678759, -0.727520, -0.100004,
		-0.688459, 0.677795, -0.258104,
		40.102467, 44.959740, 49.950478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272930, 44.291840, 49.536777>,  <40.584389, 44.485283, 50.131149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272930, 44.291840, 49.536777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182663, 44.681519, 49.538239>,  <40.128502, 44.915325, 49.539116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182663, 44.681519, 49.538239>,  <40.272930, 44.291840, 49.536777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182663, 44.681519, 49.538239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328904, 0.079712, -0.940993,
		-0.917004, -0.211151, -0.338405,
		-0.225666, 0.974198, 0.003648,
		40.114964, 44.973778, 49.539333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614861, 43.906403, 49.570389>,  <40.272930, 44.291840, 49.536777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614861, 43.906403, 49.570389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481972, 43.549881, 49.446972>,  <39.402237, 43.335968, 49.372921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481972, 43.549881, 49.446972>,  <39.614861, 43.906403, 49.570389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481972, 43.549881, 49.446972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127419, -0.281711, 0.951001,
		-0.934554, 0.355260, -0.019978,
		-0.332224, -0.891307, -0.308541,
		39.382305, 43.282490, 49.354408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940578, 43.724243, 49.919067>,  <39.614861, 43.906403, 49.570389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940578, 43.724243, 49.919067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115829, 43.384262, 49.802021>,  <39.220978, 43.180275, 49.731792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115829, 43.384262, 49.802021>,  <38.940578, 43.724243, 49.919067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115829, 43.384262, 49.802021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140739, -0.386366, 0.911545,
		-0.887828, -0.358188, -0.288898,
		0.438125, -0.849954, -0.292616,
		39.247269, 43.129276, 49.714237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472038, 43.136642, 50.189114>,  <38.940578, 43.724243, 49.919067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472038, 43.136642, 50.189114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794922, 42.912209, 50.115799>,  <38.988651, 42.777546, 50.071812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794922, 42.912209, 50.115799>,  <38.472038, 43.136642, 50.189114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794922, 42.912209, 50.115799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039417, -0.258579, 0.965186,
		-0.588948, -0.786331, -0.186611,
		0.807209, -0.561088, -0.183284,
		39.037086, 42.743881, 50.060814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318699, 42.444973, 50.418739>,  <38.472038, 43.136642, 50.189114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318699, 42.444973, 50.418739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716599, 42.484764, 50.409065>,  <38.955338, 42.508640, 50.403259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716599, 42.484764, 50.409065>,  <38.318699, 42.444973, 50.418739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716599, 42.484764, 50.409065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057283, -0.345025, 0.936844,
		0.084854, -0.933307, -0.348910,
		0.994745, 0.099482, -0.024186,
		39.015022, 42.514610, 50.401810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663208, 41.800983, 50.751511>,  <38.318699, 42.444973, 50.418739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663208, 41.800983, 50.751511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960693, 42.065155, 50.792957>,  <39.139183, 42.223656, 50.817825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960693, 42.065155, 50.792957>,  <38.663208, 41.800983, 50.751511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960693, 42.065155, 50.792957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013476, -0.169771, 0.985391,
		0.668368, -0.731448, -0.135160,
		0.743709, 0.660425, 0.103612,
		39.183807, 42.263283, 50.824039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271580, 41.543644, 51.270641>,  <38.663208, 41.800983, 50.751511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271580, 41.543644, 51.270641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341976, 41.937302, 51.279427>,  <39.384212, 42.173496, 51.284698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341976, 41.937302, 51.279427>,  <39.271580, 41.543644, 51.270641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341976, 41.937302, 51.279427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111357, -0.042073, 0.992889,
		0.978073, -0.172293, -0.116996,
		0.175991, 0.984147, 0.021965,
		39.394772, 42.232544, 51.286015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729061, 41.571899, 51.796509>,  <39.271580, 41.543644, 51.270641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729061, 41.571899, 51.796509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609989, 41.948898, 51.735722>,  <39.538548, 42.175098, 51.699249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609989, 41.948898, 51.735722>,  <39.729061, 41.571899, 51.796509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609989, 41.948898, 51.735722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132639, 0.116814, 0.984257,
		0.945407, 0.313148, 0.090238,
		-0.297677, 0.942493, -0.151972,
		39.520687, 42.231647, 51.690128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254131, 42.029381, 52.078499>,  <39.729061, 41.571899, 51.796509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254131, 42.029381, 52.078499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887703, 42.188957, 52.062218>,  <39.667847, 42.284702, 52.052448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887703, 42.188957, 52.062218>,  <40.254131, 42.029381, 52.078499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887703, 42.188957, 52.062218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016956, 0.062867, 0.997878,
		0.400654, 0.914819, -0.050827,
		-0.916073, 0.398942, -0.040699,
		39.612881, 42.308640, 52.050007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175106, 42.464268, 52.617546>,  <40.254131, 42.029381, 52.078499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175106, 42.464268, 52.617546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790916, 42.417557, 52.516476>,  <39.560402, 42.389530, 52.455833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790916, 42.417557, 52.516476>,  <40.175106, 42.464268, 52.617546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790916, 42.417557, 52.516476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271359, 0.190621, 0.943413,
		-0.062007, 0.974693, -0.214777,
		-0.960479, -0.116780, -0.252672,
		39.502773, 42.382523, 52.440674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884449, 42.929688, 53.094627>,  <40.175106, 42.464268, 52.617546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884449, 42.929688, 53.094627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588760, 42.701935, 52.950760>,  <39.411346, 42.565285, 52.864441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588760, 42.701935, 52.950760>,  <39.884449, 42.929688, 53.094627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588760, 42.701935, 52.950760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418524, -0.030018, 0.907709,
		-0.527628, 0.821527, -0.216109,
		-0.739220, -0.569379, -0.359667,
		39.366993, 42.531120, 52.842861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138378, 43.221359, 53.200043>,  <39.884449, 42.929688, 53.094627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138378, 43.221359, 53.200043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125191, 42.821754, 53.188118>,  <39.117279, 42.581993, 53.180962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125191, 42.821754, 53.188118>,  <39.138378, 43.221359, 53.200043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125191, 42.821754, 53.188118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497282, -0.009478, 0.867537,
		-0.866963, 0.043430, -0.496477,
		-0.032972, -0.999012, -0.029814,
		39.115299, 42.522053, 53.179173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519638, 43.186535, 53.512783>,  <39.138378, 43.221359, 53.200043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519638, 43.186535, 53.512783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679886, 42.820053, 53.516361>,  <38.776035, 42.600166, 53.518509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679886, 42.820053, 53.516361>,  <38.519638, 43.186535, 53.512783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679886, 42.820053, 53.516361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412368, -0.171579, 0.894714,
		-0.818203, -0.362128, -0.446550,
		0.400619, -0.916201, 0.008944,
		38.800072, 42.545193, 53.519043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925556, 42.744614, 53.507080>,  <38.519638, 43.186535, 53.512783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925556, 42.744614, 53.507080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219749, 42.510155, 53.643013>,  <38.396267, 42.369480, 53.724571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219749, 42.510155, 53.643013>,  <37.925556, 42.744614, 53.507080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219749, 42.510155, 53.643013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475378, -0.089038, 0.875265,
		-0.482780, -0.805294, -0.344130,
		0.735486, -0.586152, 0.339833,
		38.440395, 42.334309, 53.744965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578224, 42.094368, 53.816402>,  <37.925556, 42.744614, 53.507080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578224, 42.094368, 53.816402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939808, 42.144043, 53.980080>,  <38.156757, 42.173847, 54.078285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939808, 42.144043, 53.980080>,  <37.578224, 42.094368, 53.816402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939808, 42.144043, 53.980080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374588, -0.231599, 0.897801,
		0.206262, -0.964852, -0.162838,
		0.903958, 0.124186, 0.409192,
		38.210995, 42.181297, 54.102837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<43.204670, 41.748096, 55.426674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.816147, 41.823105, 55.368168>,  <42.583031, 41.868111, 55.333065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.816147, 41.823105, 55.368168>,  <43.204670, 41.748096, 55.426674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816147, 41.823105, 55.368168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130716, -0.092828, -0.987065,
		-0.198673, -0.977864, 0.065652,
		-0.971310, 0.187521, -0.146265,
		42.524754, 41.879360, 55.324287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974258, 41.285164, 54.942768>,  <43.204670, 41.748096, 55.426674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974258, 41.285164, 54.942768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.724586, 41.597160, 54.924816>,  <42.574783, 41.784359, 54.914043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.724586, 41.597160, 54.924816>,  <42.974258, 41.285164, 54.942768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724586, 41.597160, 54.924816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033478, -0.084094, -0.995895,
		-0.780566, -0.620111, 0.078602,
		-0.624176, 0.779994, -0.044881,
		42.537334, 41.831158, 54.911350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458847, 40.990311, 54.492054>,  <42.974258, 41.285164, 54.942768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458847, 40.990311, 54.492054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.412025, 41.387520, 54.486340>,  <42.383934, 41.625847, 54.482910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.412025, 41.387520, 54.486340>,  <42.458847, 40.990311, 54.492054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412025, 41.387520, 54.486340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291232, -0.048072, -0.955444,
		-0.949464, -0.107680, 0.294827,
		-0.117055, 0.993023, -0.014283,
		42.376907, 41.685425, 54.482056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863152, 41.081512, 54.104012>,  <42.458847, 40.990311, 54.492054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863152, 41.081512, 54.104012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.093834, 41.408203, 54.096310>,  <42.232243, 41.604218, 54.091690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.093834, 41.408203, 54.096310>,  <41.863152, 41.081512, 54.104012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093834, 41.408203, 54.096310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113067, 0.056452, -0.991982,
		-0.809092, 0.574256, 0.124901,
		0.576703, 0.816727, -0.019255,
		42.266846, 41.653221, 54.090534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559864, 41.564560, 53.426537>,  <41.863152, 41.081512, 54.104012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559864, 41.564560, 53.426537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.907303, 41.733780, 53.529747>,  <42.115765, 41.835312, 53.591675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.907303, 41.733780, 53.529747>,  <41.559864, 41.564560, 53.426537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907303, 41.733780, 53.529747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212149, 0.153106, -0.965169,
		-0.447816, 0.893079, 0.043238,
		0.868593, 0.423046, 0.258029,
		42.167881, 41.860695, 53.607155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642460, 42.334587, 53.118881>,  <41.559864, 41.564560, 53.426537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642460, 42.334587, 53.118881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.009010, 42.189888, 53.187462>,  <42.228939, 42.103069, 53.228611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.009010, 42.189888, 53.187462>,  <41.642460, 42.334587, 53.118881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009010, 42.189888, 53.187462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279630, 0.271937, -0.920792,
		0.286469, 0.891734, 0.350352,
		0.916374, -0.361747, 0.171454,
		42.283924, 42.081364, 53.238899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043621, 42.758205, 52.757225>,  <41.642460, 42.334587, 53.118881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043621, 42.758205, 52.757225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.310673, 42.467949, 52.823826>,  <42.470901, 42.293797, 52.863785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.310673, 42.467949, 52.823826>,  <42.043621, 42.758205, 52.757225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310673, 42.467949, 52.823826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433800, 0.197399, -0.879120,
		0.605056, 0.659152, 0.446571,
		0.667626, -0.725639, 0.166503,
		42.510960, 42.250256, 52.873775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643631, 43.076897, 52.774910>,  <42.043621, 42.758205, 52.757225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643631, 43.076897, 52.774910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.728119, 42.691216, 52.710781>,  <42.778812, 42.459808, 52.672302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.728119, 42.691216, 52.710781>,  <42.643631, 43.076897, 52.774910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728119, 42.691216, 52.710781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493732, 0.246806, -0.833856,
		0.843573, 0.096970, 0.528187,
		0.211218, -0.964201, -0.160322,
		42.791485, 42.401955, 52.662685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325409, 43.044960, 52.497250>,  <42.643631, 43.076897, 52.774910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325409, 43.044960, 52.497250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.124680, 42.719254, 52.380531>,  <43.004242, 42.523830, 52.310501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.124680, 42.719254, 52.380531>,  <43.325409, 43.044960, 52.497250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124680, 42.719254, 52.380531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398579, 0.081707, -0.913487,
		0.767664, -0.574711, 0.283547,
		-0.501823, -0.814267, -0.291791,
		42.974133, 42.474972, 52.292995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818581, 42.746727, 52.086163>,  <43.325409, 43.044960, 52.497250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818581, 42.746727, 52.086163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.494400, 42.537361, 51.980934>,  <43.299892, 42.411743, 51.917797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.494400, 42.537361, 51.980934>,  <43.818581, 42.746727, 52.086163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494400, 42.537361, 51.980934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344005, -0.061749, -0.936935,
		0.474157, -0.849840, 0.230100,
		-0.810454, -0.523410, -0.263071,
		43.251263, 42.380337, 51.902012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978401, 42.088524, 51.831184>,  <43.818581, 42.746727, 52.086163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978401, 42.088524, 51.831184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.608624, 42.117531, 51.681442>,  <43.386757, 42.134937, 51.591595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.608624, 42.117531, 51.681442>,  <43.978401, 42.088524, 51.831184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608624, 42.117531, 51.681442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378490, 0.055189, -0.923959,
		-0.046349, -0.995839, -0.078469,
		-0.924445, 0.072524, -0.374357,
		43.331291, 42.139286, 51.569134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903954, 41.524525, 51.278355>,  <43.978401, 42.088524, 51.831184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903954, 41.524525, 51.278355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.624905, 41.796616, 51.188370>,  <43.457474, 41.959869, 51.134377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.624905, 41.796616, 51.188370>,  <43.903954, 41.524525, 51.278355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624905, 41.796616, 51.188370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308733, 0.002064, -0.951146,
		-0.646533, -0.732997, -0.211449,
		-0.697624, 0.680229, -0.224966,
		43.415619, 42.000683, 51.120880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476521, 41.270691, 50.645298>,  <43.903954, 41.524525, 51.278355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476521, 41.270691, 50.645298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.466866, 41.667641, 50.693638>,  <43.461075, 41.905811, 50.722641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.466866, 41.667641, 50.693638>,  <43.476521, 41.270691, 50.645298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466866, 41.667641, 50.693638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277563, 0.122781, -0.952829,
		-0.960404, 0.010547, -0.278411,
		-0.024134, 0.992378, 0.120846,
		43.459625, 41.965355, 50.729893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924698, 41.544933, 50.157089>,  <43.476521, 41.270691, 50.645298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924698, 41.544933, 50.157089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.198143, 41.828522, 50.226414>,  <43.362209, 41.998672, 50.268009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.198143, 41.828522, 50.226414>,  <42.924698, 41.544933, 50.157089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198143, 41.828522, 50.226414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046519, 0.279304, -0.959075,
		-0.728361, 0.647574, 0.223916,
		0.683612, 0.708969, 0.173310,
		43.403225, 42.041214, 50.278408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248745, 41.527763, 49.924435>,  <42.924698, 41.544933, 50.157089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248745, 41.527763, 49.924435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.123047, 41.151955, 49.869949>,  <42.047630, 40.926468, 49.837257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.123047, 41.151955, 49.869949>,  <42.248745, 41.527763, 49.924435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123047, 41.151955, 49.869949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195884, -0.076225, 0.977660,
		-0.928914, 0.333903, -0.160084,
		-0.314241, -0.939521, -0.136212,
		42.028774, 40.870098, 49.829086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591042, 41.386181, 50.347111>,  <42.248745, 41.527763, 49.924435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591042, 41.386181, 50.347111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.714333, 41.012711, 50.274178>,  <41.788307, 40.788628, 50.230419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.714333, 41.012711, 50.274178>,  <41.591042, 41.386181, 50.347111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714333, 41.012711, 50.274178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226455, -0.258164, 0.939186,
		-0.923966, -0.248196, -0.291009,
		0.308230, -0.933675, -0.182330,
		41.806801, 40.732609, 50.219479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970135, 40.932064, 50.551750>,  <41.591042, 41.386181, 50.347111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970135, 40.932064, 50.551750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.286575, 40.687691, 50.539593>,  <41.476440, 40.541069, 50.532299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.286575, 40.687691, 50.539593>,  <40.970135, 40.932064, 50.551750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286575, 40.687691, 50.539593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313202, -0.447253, 0.837777,
		-0.525417, -0.653246, -0.545166,
		0.791102, -0.610929, -0.030396,
		41.523907, 40.504410, 50.530472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697250, 40.298004, 50.612396>,  <40.970135, 40.932064, 50.551750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697250, 40.298004, 50.612396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.084095, 40.258095, 50.705986>,  <41.316200, 40.234150, 50.762138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.084095, 40.258095, 50.705986>,  <40.697250, 40.298004, 50.612396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084095, 40.258095, 50.705986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254359, -0.380312, 0.889193,
		0.000267, -0.919461, -0.393181,
		0.967110, -0.099771, 0.233975,
		41.374229, 40.228165, 50.776176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770702, 39.649677, 50.800926>,  <40.697250, 40.298004, 50.612396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770702, 39.649677, 50.800926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.083504, 39.820435, 50.982582>,  <41.271183, 39.922890, 51.091576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.083504, 39.820435, 50.982582>,  <40.770702, 39.649677, 50.800926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083504, 39.820435, 50.982582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243175, -0.461920, 0.852934,
		0.573886, -0.777428, -0.257412,
		0.781998, 0.426890, 0.454140,
		41.318104, 39.948502, 51.118824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232361, 39.070328, 51.228928>,  <40.770702, 39.649677, 50.800926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232361, 39.070328, 51.228928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.316689, 39.418404, 51.407066>,  <41.367283, 39.627247, 51.513950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.316689, 39.418404, 51.407066>,  <41.232361, 39.070328, 51.228928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316689, 39.418404, 51.407066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166677, -0.416912, 0.893534,
		0.963211, -0.262600, 0.057149,
		0.210816, 0.870187, 0.445344,
		41.379932, 39.679459, 51.540668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800732, 39.033081, 51.720001>,  <41.232361, 39.070328, 51.228928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800732, 39.033081, 51.720001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.575424, 39.342636, 51.835812>,  <41.440239, 39.528370, 51.905300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.575424, 39.342636, 51.835812>,  <41.800732, 39.033081, 51.720001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575424, 39.342636, 51.835812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035985, -0.373049, 0.927114,
		0.825488, 0.511798, 0.237976,
		-0.563272, 0.773884, 0.289530,
		41.406445, 39.574802, 51.922672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966228, 39.040527, 52.355389>,  <41.800732, 39.033081, 51.720001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966228, 39.040527, 52.355389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.654613, 39.290993, 52.368145>,  <41.467644, 39.441273, 52.375797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.654613, 39.290993, 52.368145>,  <41.966228, 39.040527, 52.355389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654613, 39.290993, 52.368145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043769, -0.105055, 0.993503,
		0.625445, 0.772582, 0.109249,
		-0.779039, 0.626163, 0.031891,
		41.420902, 39.478844, 52.377712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062511, 39.440540, 52.914406>,  <41.966228, 39.040527, 52.355389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062511, 39.440540, 52.914406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.671608, 39.506096, 52.860580>,  <41.437065, 39.545429, 52.828285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.671608, 39.506096, 52.860580>,  <42.062511, 39.440540, 52.914406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671608, 39.506096, 52.860580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158774, -0.144908, 0.976623,
		0.140559, 0.975778, 0.167634,
		-0.977258, 0.163889, -0.134560,
		41.378429, 39.555264, 52.820213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897591, 39.777710, 53.524090>,  <42.062511, 39.440540, 52.914406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897591, 39.777710, 53.524090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.540939, 39.667267, 53.380550>,  <41.326950, 39.601002, 53.294426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.540939, 39.667267, 53.380550>,  <41.897591, 39.777710, 53.524090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540939, 39.667267, 53.380550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323539, -0.165911, 0.931556,
		-0.316743, 0.946699, 0.058600,
		-0.891626, -0.276104, -0.358845,
		41.273453, 39.584435, 53.272896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396259, 40.190731, 53.864037>,  <41.897591, 39.777710, 53.524090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396259, 40.190731, 53.864037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.233009, 39.845398, 53.745308>,  <41.135059, 39.638199, 53.674072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.233009, 39.845398, 53.745308>,  <41.396259, 40.190731, 53.864037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233009, 39.845398, 53.745308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320061, -0.169183, 0.932169,
		-0.854985, 0.475437, -0.207271,
		-0.408120, -0.863329, -0.296817,
		41.110573, 39.586399, 53.656261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786362, 40.203663, 54.199677>,  <41.396259, 40.190731, 53.864037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786362, 40.203663, 54.199677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.832069, 39.823021, 54.085567>,  <40.859493, 39.594635, 54.017101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.832069, 39.823021, 54.085567>,  <40.786362, 40.203663, 54.199677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832069, 39.823021, 54.085567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470016, -0.304774, 0.828371,
		-0.875229, 0.039424, -0.482099,
		0.114274, -0.951609, -0.285277,
		40.866352, 39.537537, 53.999985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133926, 39.944950, 54.131779>,  <40.786362, 40.203663, 54.199677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133926, 39.944950, 54.131779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.389923, 39.642693, 54.187504>,  <40.543522, 39.461338, 54.220940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.389923, 39.642693, 54.187504>,  <40.133926, 39.944950, 54.131779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389923, 39.642693, 54.187504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464802, -0.236353, 0.853285,
		-0.611858, -0.610846, -0.502491,
		0.639991, -0.755649, 0.139308,
		40.581921, 39.415997, 54.229298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739979, 39.348705, 54.375256>,  <40.133926, 39.944950, 54.131779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739979, 39.348705, 54.375256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.114609, 39.293945, 54.504303>,  <40.339386, 39.261089, 54.581730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.114609, 39.293945, 54.504303>,  <39.739979, 39.348705, 54.375256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114609, 39.293945, 54.504303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341968, -0.155545, 0.926749,
		-0.076691, -0.978296, -0.192496,
		0.936577, -0.136901, 0.322617,
		40.395580, 39.252872, 54.601089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971382, 38.909847, 54.526768>,  <39.739979, 39.348705, 54.375256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971382, 38.909847, 54.526768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.606377, 39.073448, 54.529202>,  <38.387375, 39.171608, 54.530663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.606377, 39.073448, 54.529202>,  <38.971382, 38.909847, 54.526768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606377, 39.073448, 54.529202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107705, -0.225894, -0.968180,
		-0.394609, -0.884134, 0.250182,
		-0.912515, 0.408999, 0.006086,
		38.332623, 39.196148, 54.531029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609123, 38.437813, 54.228527>,  <38.971382, 38.909847, 54.526768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609123, 38.437813, 54.228527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380936, 38.766045, 54.214577>,  <38.244022, 38.962982, 54.206207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380936, 38.766045, 54.214577>,  <38.609123, 38.437813, 54.228527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380936, 38.766045, 54.214577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243486, -0.209528, -0.947002,
		-0.784395, -0.531746, 0.319328,
		-0.570473, 0.820576, -0.034880,
		38.209793, 39.012218, 54.204113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953979, 38.238739, 53.865150>,  <38.609123, 38.437813, 54.228527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953979, 38.238739, 53.865150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989876, 38.636482, 53.842545>,  <38.011414, 38.875130, 53.828979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989876, 38.636482, 53.842545>,  <37.953979, 38.238739, 53.865150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989876, 38.636482, 53.842545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102562, -0.047215, -0.993605,
		-0.990670, 0.094963, 0.097747,
		0.089741, 0.994361, -0.056514,
		38.016796, 38.934792, 53.825592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348732, 38.577339, 53.418148>,  <37.953979, 38.238739, 53.865150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348732, 38.577339, 53.418148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.640862, 38.850052, 53.401188>,  <37.816139, 39.013680, 53.391014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.640862, 38.850052, 53.401188>,  <37.348732, 38.577339, 53.418148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640862, 38.850052, 53.401188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096020, 0.041010, -0.994534,
		-0.676314, 0.730407, 0.095415,
		0.730328, 0.681779, -0.042398,
		37.859959, 39.054585, 53.388470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123966, 39.118484, 52.858925>,  <37.348732, 38.577339, 53.418148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123966, 39.118484, 52.858925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.515110, 39.194618, 52.893730>,  <37.749794, 39.240299, 52.914612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.515110, 39.194618, 52.893730>,  <37.123966, 39.118484, 52.858925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515110, 39.194618, 52.893730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090651, -0.010473, -0.995828,
		-0.188632, 0.981663, -0.027495,
		0.977855, 0.190338, 0.087014,
		37.808468, 39.251720, 52.919834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307884, 39.622112, 52.415733>,  <37.123966, 39.118484, 52.858925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307884, 39.622112, 52.415733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669773, 39.469444, 52.491425>,  <37.886906, 39.377842, 52.536839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669773, 39.469444, 52.491425>,  <37.307884, 39.622112, 52.415733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669773, 39.469444, 52.491425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207538, 0.006970, -0.978202,
		0.372035, 0.924271, 0.085518,
		0.904720, -0.381673, 0.189228,
		37.941189, 39.354942, 52.548195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812645, 40.064720, 52.082935>,  <37.307884, 39.622112, 52.415733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812645, 40.064720, 52.082935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.022362, 39.735565, 52.170551>,  <38.148193, 39.538074, 52.223122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.022362, 39.735565, 52.170551>,  <37.812645, 40.064720, 52.082935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022362, 39.735565, 52.170551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363909, -0.016032, -0.931296,
		0.769862, 0.567981, 0.291050,
		0.524292, -0.822886, 0.219036,
		38.179649, 39.488701, 52.236263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535717, 40.254314, 51.889900>,  <37.812645, 40.064720, 52.082935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535717, 40.254314, 51.889900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506348, 39.855751, 51.906784>,  <38.488728, 39.616611, 51.916916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506348, 39.855751, 51.906784>,  <38.535717, 40.254314, 51.889900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506348, 39.855751, 51.906784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233344, -0.058313, -0.970644,
		0.969618, -0.061415, 0.236787,
		-0.073420, -0.996407, 0.042211,
		38.484322, 39.556828, 51.919449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222157, 40.027134, 51.741207>,  <38.535717, 40.254314, 51.889900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222157, 40.027134, 51.741207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.953159, 39.745201, 51.650902>,  <38.791763, 39.576042, 51.596718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.953159, 39.745201, 51.650902>,  <39.222157, 40.027134, 51.741207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953159, 39.745201, 51.650902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340215, -0.023490, -0.940054,
		0.657277, -0.708985, 0.255591,
		-0.672488, -0.704832, -0.225768,
		38.751411, 39.533752, 51.583172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634369, 39.499252, 51.412498>,  <39.222157, 40.027134, 51.741207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634369, 39.499252, 51.412498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.255062, 39.451080, 51.294998>,  <39.027477, 39.422176, 51.224499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.255062, 39.451080, 51.294998>,  <39.634369, 39.499252, 51.412498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255062, 39.451080, 51.294998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304985, -0.088501, -0.948236,
		0.088201, -0.988769, 0.120652,
		-0.948264, -0.120433, -0.293754,
		38.970581, 39.414951, 51.206871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653694, 38.926315, 51.068626>,  <39.634369, 39.499252, 51.412498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653694, 38.926315, 51.068626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.344856, 39.130531, 50.917252>,  <39.159554, 39.253059, 50.826427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.344856, 39.130531, 50.917252>,  <39.653694, 38.926315, 51.068626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344856, 39.130531, 50.917252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241192, -0.315530, -0.917751,
		-0.587958, -0.799869, 0.120482,
		-0.772096, 0.510540, -0.378440,
		39.113228, 39.283691, 50.803719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391205, 38.481499, 50.519146>,  <39.653694, 38.926315, 51.068626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391205, 38.481499, 50.519146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.235718, 38.842010, 50.442635>,  <39.142426, 39.058319, 50.396729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.235718, 38.842010, 50.442635>,  <39.391205, 38.481499, 50.519146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235718, 38.842010, 50.442635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043895, -0.225486, -0.973257,
		-0.920311, -0.369926, 0.127212,
		-0.388718, 0.901282, -0.191280,
		39.119102, 39.112396, 50.385250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907566, 38.272671, 49.990788>,  <39.391205, 38.481499, 50.519146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907566, 38.272671, 49.990788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.969582, 38.667809, 49.995262>,  <39.006790, 38.904892, 49.997948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.969582, 38.667809, 49.995262>,  <38.907566, 38.272671, 49.990788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969582, 38.667809, 49.995262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075684, -0.000588, -0.997132,
		-0.985006, 0.155437, -0.074855,
		0.155036, 0.987846, 0.011185,
		39.016090, 38.964161, 49.998619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424549, 38.507870, 49.514698>,  <38.907566, 38.272671, 49.990788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424549, 38.507870, 49.514698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.722710, 38.773796, 49.534317>,  <38.901604, 38.933350, 49.546089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.722710, 38.773796, 49.534317>,  <38.424549, 38.507870, 49.514698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722710, 38.773796, 49.534317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045589, 0.022571, -0.998705,
		-0.665058, 0.746670, -0.013483,
		0.745399, 0.664811, 0.049051,
		38.946331, 38.973240, 49.549034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.784119, 41.384060, 54.301849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.045311, 41.664207, 54.417156>,  <38.202026, 41.832298, 54.486340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.045311, 41.664207, 54.417156>,  <37.784119, 41.384060, 54.301849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045311, 41.664207, 54.417156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032760, -0.354139, 0.934619,
		0.756668, -0.619729, -0.208300,
		0.652977, 0.700372, 0.288268,
		38.241203, 41.874321, 54.503635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198772, 41.086773, 54.844978>,  <37.784119, 41.384060, 54.301849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198772, 41.086773, 54.844978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.237846, 41.481300, 54.898098>,  <38.261292, 41.718018, 54.929970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.237846, 41.481300, 54.898098>,  <38.198772, 41.086773, 54.844978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237846, 41.481300, 54.898098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131170, -0.119513, 0.984130,
		0.986536, -0.113550, 0.117701,
		0.097681, 0.986318, 0.132798,
		38.267151, 41.777195, 54.937939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662697, 41.187920, 55.484985>,  <38.198772, 41.086773, 54.844978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662697, 41.187920, 55.484985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.441582, 41.517242, 55.433456>,  <38.308914, 41.714836, 55.402538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.441582, 41.517242, 55.433456>,  <38.662697, 41.187920, 55.484985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441582, 41.517242, 55.433456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212061, 0.010522, 0.977200,
		0.805891, 0.567498, 0.168775,
		-0.552783, 0.823307, -0.128824,
		38.275745, 41.764236, 55.394810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735134, 41.641296, 56.103287>,  <38.662697, 41.187920, 55.484985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735134, 41.641296, 56.103287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.414906, 41.812798, 55.935829>,  <38.222771, 41.915699, 55.835354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.414906, 41.812798, 55.935829>,  <38.735134, 41.641296, 56.103287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414906, 41.812798, 55.935829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397031, 0.143770, 0.906475,
		0.448839, 0.891911, 0.055128,
		-0.800569, 0.428748, -0.418646,
		38.174736, 41.941422, 55.810234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661392, 42.278000, 56.461323>,  <38.735134, 41.641296, 56.103287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661392, 42.278000, 56.461323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.298023, 42.201866, 56.312439>,  <38.080002, 42.156185, 56.223110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.298023, 42.201866, 56.312439>,  <38.661392, 42.278000, 56.461323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298023, 42.201866, 56.312439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412912, 0.269359, 0.870029,
		-0.065337, 0.944044, -0.323283,
		-0.908424, -0.190332, -0.372208,
		38.025497, 42.144768, 56.200775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220642, 42.879658, 56.685711>,  <38.661392, 42.278000, 56.461323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220642, 42.879658, 56.685711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.980186, 42.568619, 56.611977>,  <37.835915, 42.381996, 56.567738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.980186, 42.568619, 56.611977>,  <38.220642, 42.879658, 56.685711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980186, 42.568619, 56.611977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429131, 0.119514, 0.895300,
		-0.674151, 0.617302, -0.405535,
		-0.601138, -0.777595, -0.184333,
		37.799847, 42.335339, 56.556675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596027, 43.145172, 56.830883>,  <38.220642, 42.879658, 56.685711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596027, 43.145172, 56.830883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.515350, 42.753418, 56.835251>,  <37.466946, 42.518364, 56.837872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.515350, 42.753418, 56.835251>,  <37.596027, 43.145172, 56.830883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515350, 42.753418, 56.835251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464340, 0.105425, 0.879360,
		-0.862386, 0.172290, -0.476032,
		-0.201690, -0.979388, 0.010916,
		37.454842, 42.459602, 56.838524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918503, 43.111332, 57.131802>,  <37.596027, 43.145172, 56.830883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918503, 43.111332, 57.131802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.051212, 42.734589, 57.153061>,  <37.130836, 42.508541, 57.165817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.051212, 42.734589, 57.153061>,  <36.918503, 43.111332, 57.131802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051212, 42.734589, 57.153061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411277, -0.093710, 0.906681,
		-0.848986, -0.322671, -0.418456,
		0.331773, -0.941861, 0.053148,
		37.150745, 42.452030, 57.169006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282997, 42.790600, 57.244614>,  <36.918503, 43.111332, 57.131802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282997, 42.790600, 57.244614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.598625, 42.577797, 57.367470>,  <36.788002, 42.450115, 57.441185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.598625, 42.577797, 57.367470>,  <36.282997, 42.790600, 57.244614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598625, 42.577797, 57.367470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449169, -0.158584, 0.879260,
		-0.419066, -0.831756, -0.364095,
		0.789070, -0.532009, 0.307142,
		36.835346, 42.418194, 57.459614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008644, 42.225628, 57.584854>,  <36.282997, 42.790600, 57.244614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008644, 42.225628, 57.584854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.382088, 42.265244, 57.722588>,  <36.606155, 42.289013, 57.805225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.382088, 42.265244, 57.722588>,  <36.008644, 42.225628, 57.584854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382088, 42.265244, 57.722588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346309, 0.002997, 0.938116,
		0.091881, -0.995079, 0.037097,
		0.933611, 0.099042, 0.344329,
		36.662170, 42.294956, 57.825886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051193, 41.709877, 58.084248>,  <36.008644, 42.225628, 57.584854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051193, 41.709877, 58.084248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335533, 41.968231, 58.195618>,  <36.506138, 42.123245, 58.262440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335533, 41.968231, 58.195618>,  <36.051193, 41.709877, 58.084248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335533, 41.968231, 58.195618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314100, -0.062674, 0.947319,
		0.629310, -0.760857, 0.158321,
		0.710852, 0.645885, 0.278426,
		36.548790, 42.161995, 58.279144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285011, 41.473423, 58.707767>,  <36.051193, 41.709877, 58.084248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285011, 41.473423, 58.707767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.399246, 41.855232, 58.673534>,  <36.467785, 42.084320, 58.652996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.399246, 41.855232, 58.673534>,  <36.285011, 41.473423, 58.707767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399246, 41.855232, 58.673534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183963, 0.142240, 0.972587,
		0.940531, -0.262012, 0.216218,
		0.285584, 0.954525, -0.085581,
		36.484921, 42.141590, 58.647861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757778, 41.556679, 59.301777>,  <36.285011, 41.473423, 58.707767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757778, 41.556679, 59.301777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.598217, 41.900368, 59.173645>,  <36.502480, 42.106583, 59.096767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.598217, 41.900368, 59.173645>,  <36.757778, 41.556679, 59.301777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598217, 41.900368, 59.173645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178082, 0.270087, 0.946224,
		0.899537, 0.434492, 0.045275,
		-0.398899, 0.859226, -0.320329,
		36.478546, 42.158134, 59.077545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039780, 41.207603, 59.996639>,  <36.757778, 41.556679, 59.301777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039780, 41.207603, 59.996639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.014648, 40.835068, 60.140114>,  <36.999569, 40.611546, 60.226196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.014648, 40.835068, 60.140114>,  <37.039780, 41.207603, 59.996639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014648, 40.835068, 60.140114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652570, 0.233585, 0.720826,
		-0.755119, 0.279356, 0.593090,
		-0.062830, -0.931342, 0.358684,
		36.995800, 40.555664, 60.247719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327927, 40.615326, 59.870613>,  <37.039780, 41.207603, 59.996639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327927, 40.615326, 59.870613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490150, 40.253151, 59.920742>,  <37.587486, 40.035847, 59.950821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490150, 40.253151, 59.920742>,  <37.327927, 40.615326, 59.870613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490150, 40.253151, 59.920742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312392, 0.008446, -0.949916,
		0.859029, 0.424399, 0.286276,
		0.405561, -0.905436, 0.125324,
		37.611820, 39.981522, 59.958340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884418, 40.677490, 59.516003>,  <37.327927, 40.615326, 59.870613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884418, 40.677490, 59.516003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.808193, 40.285347, 59.536312>,  <37.762459, 40.050060, 59.548496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.808193, 40.285347, 59.536312>,  <37.884418, 40.677490, 59.516003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808193, 40.285347, 59.536312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463805, -0.135497, -0.875515,
		0.865200, -0.143289, 0.480517,
		-0.190560, -0.980362, 0.050774,
		37.751026, 39.991238, 59.551544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409912, 40.416451, 59.156715>,  <37.884418, 40.677490, 59.516003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409912, 40.416451, 59.156715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.168762, 40.097412, 59.164551>,  <38.024071, 39.905991, 59.169254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.168762, 40.097412, 59.164551>,  <38.409912, 40.416451, 59.156715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168762, 40.097412, 59.164551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288117, -0.240547, -0.926890,
		0.743994, -0.553157, 0.374821,
		-0.602878, -0.797593, 0.019591,
		37.987900, 39.858135, 59.170429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817932, 39.786526, 58.963623>,  <38.409912, 40.416451, 59.156715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817932, 39.786526, 58.963623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.440147, 39.690575, 58.873772>,  <38.213478, 39.633003, 58.819862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.440147, 39.690575, 58.873772>,  <38.817932, 39.786526, 58.963623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440147, 39.690575, 58.873772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282596, -0.243933, -0.927705,
		0.167742, -0.939657, 0.298173,
		-0.944459, -0.239878, -0.224626,
		38.156811, 39.618610, 58.806385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747654, 39.248657, 58.495396>,  <38.817932, 39.786526, 58.963623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747654, 39.248657, 58.495396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.373688, 39.384666, 58.454754>,  <38.149307, 39.466270, 58.430367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.373688, 39.384666, 58.454754>,  <38.747654, 39.248657, 58.495396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373688, 39.384666, 58.454754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043071, -0.175480, -0.983540,
		-0.352258, -0.923900, 0.149413,
		-0.934911, 0.340024, -0.101608,
		38.093216, 39.486675, 58.424271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438473, 38.783909, 58.046009>,  <38.747654, 39.248657, 58.495396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438473, 38.783909, 58.046009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.204712, 39.107819, 58.025070>,  <38.064457, 39.302166, 58.012508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.204712, 39.107819, 58.025070>,  <38.438473, 38.783909, 58.046009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204712, 39.107819, 58.025070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055899, -0.024182, -0.998144,
		-0.809537, -0.586242, -0.031134,
		-0.584401, 0.809775, -0.052347,
		38.029392, 39.350750, 58.009365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848309, 38.644363, 57.676289>,  <38.438473, 38.783909, 58.046009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848309, 38.644363, 57.676289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911442, 39.038986, 57.659340>,  <37.949322, 39.275761, 57.649170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911442, 39.038986, 57.659340>,  <37.848309, 38.644363, 57.676289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911442, 39.038986, 57.659340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214425, -0.007644, -0.976710,
		-0.963904, 0.163243, 0.210336,
		0.157833, 0.986557, -0.042371,
		37.958790, 39.334953, 57.646629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203300, 38.918667, 57.354904>,  <37.848309, 38.644363, 57.676289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203300, 38.918667, 57.354904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.515968, 39.160957, 57.295448>,  <37.703568, 39.306332, 57.259773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.515968, 39.160957, 57.295448>,  <37.203300, 38.918667, 57.354904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515968, 39.160957, 57.295448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188543, 0.002311, -0.982062,
		-0.594515, 0.795671, 0.116011,
		0.781667, 0.605724, -0.148644,
		37.750469, 39.342674, 57.250854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915539, 39.466740, 56.857719>,  <37.203300, 38.918667, 57.354904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915539, 39.466740, 56.857719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.313644, 39.500740, 56.838890>,  <37.552509, 39.521141, 56.827591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.313644, 39.500740, 56.838890>,  <36.915539, 39.466740, 56.857719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313644, 39.500740, 56.838890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052480, 0.062501, -0.996664,
		-0.081773, 0.994419, 0.066666,
		0.995268, 0.084999, -0.047076,
		37.612225, 39.526241, 56.824768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992702, 40.001122, 56.398342>,  <36.915539, 39.466740, 56.857719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992702, 40.001122, 56.398342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.319016, 39.771019, 56.422295>,  <37.514801, 39.632957, 56.436665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.319016, 39.771019, 56.422295>,  <36.992702, 40.001122, 56.398342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319016, 39.771019, 56.422295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042072, -0.044232, -0.998135,
		0.576832, 0.816777, -0.011882,
		0.815779, -0.575256, 0.059878,
		37.563747, 39.598442, 56.440258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296314, 40.231453, 55.851948>,  <36.992702, 40.001122, 56.398342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296314, 40.231453, 55.851948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524841, 39.914925, 55.939037>,  <37.661957, 39.725006, 55.991291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524841, 39.914925, 55.939037>,  <37.296314, 40.231453, 55.851948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524841, 39.914925, 55.939037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166018, -0.148366, -0.974898,
		0.803763, 0.593121, 0.046610,
		0.571317, -0.791324, 0.217720,
		37.696236, 39.677528, 56.004353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999908, 40.319466, 55.629711>,  <37.296314, 40.231453, 55.851948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999908, 40.319466, 55.629711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.944603, 39.924576, 55.661396>,  <37.911419, 39.687641, 55.680408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.944603, 39.924576, 55.661396>,  <37.999908, 40.319466, 55.629711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944603, 39.924576, 55.661396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223396, -0.109008, -0.968613,
		0.964871, -0.116232, 0.235613,
		-0.138267, -0.987222, 0.079213,
		37.903122, 39.628410, 55.685162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582432, 40.099705, 55.324085>,  <37.999908, 40.319466, 55.629711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582432, 40.099705, 55.324085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338860, 39.782486, 55.317413>,  <38.192715, 39.592155, 55.313408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338860, 39.782486, 55.317413>,  <38.582432, 40.099705, 55.324085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338860, 39.782486, 55.317413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169387, -0.109460, -0.979452,
		0.774924, -0.599248, 0.200985,
		-0.608935, -0.793045, -0.016682,
		38.156178, 39.544571, 55.312408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978310, 39.541809, 55.006981>,  <38.582432, 40.099705, 55.324085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978310, 39.541809, 55.006981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.596352, 39.429298, 54.968887>,  <38.367176, 39.361794, 54.946033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.596352, 39.429298, 54.968887>,  <38.978310, 39.541809, 55.006981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596352, 39.429298, 54.968887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118830, -0.068041, -0.990580,
		0.272144, -0.957212, 0.098395,
		-0.954891, -0.281273, -0.095229,
		38.309883, 39.344917, 54.940319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609299, 39.064651, 55.151024>,  <38.978310, 39.541809, 55.006981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609299, 39.064651, 55.151024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.007988, 39.095200, 55.140308>,  <40.247200, 39.113529, 55.133877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.007988, 39.095200, 55.140308>,  <39.609299, 39.064651, 55.151024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007988, 39.095200, 55.140308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027814, -0.012344, 0.999537,
		0.076004, -0.997003, -0.014427,
		0.996720, 0.076370, -0.026793,
		40.307003, 39.118111, 55.132271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905121, 38.538246, 55.605488>,  <39.609299, 39.064651, 55.151024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905121, 38.538246, 55.605488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.195053, 38.812248, 55.576149>,  <40.369015, 38.976650, 55.558544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.195053, 38.812248, 55.576149>,  <39.905121, 38.538246, 55.605488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195053, 38.812248, 55.576149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121058, -0.021829, 0.992405,
		0.678204, -0.728209, -0.098748,
		0.724834, 0.685008, -0.073351,
		40.412502, 39.017750, 55.554142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473053, 38.297565, 55.962410>,  <39.905121, 38.538246, 55.605488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473053, 38.297565, 55.962410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.494774, 38.696976, 55.963219>,  <40.507805, 38.936623, 55.963703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.494774, 38.696976, 55.963219>,  <40.473053, 38.297565, 55.962410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494774, 38.696976, 55.963219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095122, -0.007185, 0.995440,
		0.993984, -0.053862, -0.095371,
		0.054301, 0.998523, 0.002019,
		40.511063, 38.996532, 55.963825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010372, 38.368481, 56.415791>,  <40.473053, 38.297565, 55.962410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010372, 38.368481, 56.415791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.856606, 38.737640, 56.406929>,  <40.764347, 38.959137, 56.401611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.856606, 38.737640, 56.406929>,  <41.010372, 38.368481, 56.415791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856606, 38.737640, 56.406929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041865, 0.041402, 0.998265,
		0.922211, 0.382819, -0.054552,
		-0.384413, 0.922895, -0.022155,
		40.741283, 39.014507, 56.400284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478085, 38.733299, 56.748146>,  <41.010372, 38.368481, 56.415791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478085, 38.733299, 56.748146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.136402, 38.940910, 56.760406>,  <40.931393, 39.065475, 56.767765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.136402, 38.940910, 56.760406>,  <41.478085, 38.733299, 56.748146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136402, 38.940910, 56.760406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069674, 0.055841, 0.996006,
		0.515240, 0.852933, -0.083862,
		-0.854209, 0.519025, 0.030656,
		40.880138, 39.096619, 56.769604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666191, 39.249588, 57.208469>,  <41.478085, 38.733299, 56.748146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666191, 39.249588, 57.208469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.266975, 39.230614, 57.192177>,  <41.027447, 39.219231, 57.182400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.266975, 39.230614, 57.192177>,  <41.666191, 39.249588, 57.208469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266975, 39.230614, 57.192177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050211, 0.219893, 0.974231,
		-0.037257, 0.974370, -0.221845,
		-0.998044, -0.047436, -0.040731,
		40.967564, 39.216381, 57.179958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314762, 39.846313, 57.591431>,  <41.666191, 39.249588, 57.208469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314762, 39.846313, 57.591431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.044853, 39.551521, 57.607182>,  <40.882908, 39.374645, 57.616631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.044853, 39.551521, 57.607182>,  <41.314762, 39.846313, 57.591431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044853, 39.551521, 57.607182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078261, 0.124504, 0.989128,
		-0.733866, 0.664353, -0.141688,
		-0.674770, -0.736976, 0.039376,
		40.842422, 39.330429, 57.618996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998222, 40.563213, 57.537552>,  <41.314762, 39.846313, 57.591431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998222, 40.563213, 57.537552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.210098, 40.875053, 57.671207>,  <41.337223, 41.062157, 57.751400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.210098, 40.875053, 57.671207>,  <40.998222, 40.563213, 57.537552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210098, 40.875053, 57.671207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168785, 0.289187, -0.942275,
		-0.831228, 0.555512, 0.021594,
		0.529690, 0.779601, 0.334142,
		41.369007, 41.108932, 57.771450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671650, 41.254993, 57.187386>,  <40.998222, 40.563213, 57.537552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671650, 41.254993, 57.187386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.048889, 41.274300, 57.318985>,  <41.275234, 41.285885, 57.397945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.048889, 41.274300, 57.318985>,  <40.671650, 41.254993, 57.187386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048889, 41.274300, 57.318985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298874, 0.310623, -0.902324,
		-0.145743, 0.949307, 0.278523,
		0.943098, 0.048264, 0.328994,
		41.331818, 41.288780, 57.417683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887871, 41.873158, 56.877491>,  <40.671650, 41.254993, 57.187386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887871, 41.873158, 56.877491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.230343, 41.708542, 57.002441>,  <41.435825, 41.609772, 57.077412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.230343, 41.708542, 57.002441>,  <40.887871, 41.873158, 56.877491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230343, 41.708542, 57.002441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460291, 0.332925, -0.822978,
		0.234691, 0.848407, 0.474475,
		0.856185, -0.411542, 0.312380,
		41.487198, 41.585079, 57.096157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311497, 42.354366, 56.648693>,  <40.887871, 41.873158, 56.877491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311497, 42.354366, 56.648693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.532780, 42.024513, 56.695919>,  <41.665550, 41.826599, 56.724255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.532780, 42.024513, 56.695919>,  <41.311497, 42.354366, 56.648693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532780, 42.024513, 56.695919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519550, 0.230751, -0.822692,
		0.651178, 0.516457, 0.556093,
		0.553204, -0.824637, 0.118065,
		41.698742, 41.777122, 56.731339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031792, 42.609207, 56.800713>,  <41.311497, 42.354366, 56.648693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031792, 42.609207, 56.800713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.032413, 42.239639, 56.647682>,  <42.032787, 42.017899, 56.555862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.032413, 42.239639, 56.647682>,  <42.031792, 42.609207, 56.800713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032413, 42.239639, 56.647682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390255, 0.352804, -0.850429,
		0.920705, -0.147978, 0.361115,
		0.001558, -0.923922, -0.382577,
		42.032883, 41.962463, 56.532909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641354, 42.571327, 56.347336>,  <42.031792, 42.609207, 56.800713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641354, 42.571327, 56.347336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.443363, 42.241066, 56.239044>,  <42.324570, 42.042908, 56.174068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.443363, 42.241066, 56.239044>,  <42.641354, 42.571327, 56.347336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443363, 42.241066, 56.239044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214793, 0.185640, -0.958854,
		0.841941, -0.532758, 0.085458,
		-0.494973, -0.825655, -0.270731,
		42.294872, 41.993370, 56.157825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066036, 42.293324, 55.919456>,  <42.641354, 42.571327, 56.347336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066036, 42.293324, 55.919456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.708660, 42.137680, 55.829697>,  <42.494236, 42.044292, 55.775841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.708660, 42.137680, 55.829697>,  <43.066036, 42.293324, 55.919456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708660, 42.137680, 55.829697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240022, 0.008704, -0.970728,
		0.379673, -0.921150, 0.085618,
		-0.893442, -0.389110, -0.224401,
		42.440628, 42.020947, 55.762375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.008636, 45.795303, 59.204144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.941433, 45.436935, 59.039658>,  <36.901112, 45.221916, 58.940968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.941433, 45.436935, 59.039658>,  <37.008636, 45.795303, 59.204144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941433, 45.436935, 59.039658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422756, 0.311355, -0.851079,
		0.890534, -0.316833, 0.326446,
		-0.168009, -0.895922, -0.411215,
		36.891029, 45.168159, 58.916294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626286, 45.617088, 58.903950>,  <37.008636, 45.795303, 59.204144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626286, 45.617088, 58.903950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.378601, 45.374420, 58.704544>,  <37.229988, 45.228817, 58.584900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.378601, 45.374420, 58.704544>,  <37.626286, 45.617088, 58.903950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378601, 45.374420, 58.704544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376703, 0.327532, -0.866497,
		0.688963, -0.724340, 0.025724,
		-0.619213, -0.606675, -0.498518,
		37.192837, 45.192417, 58.554989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042561, 45.227047, 58.392677>,  <37.626286, 45.617088, 58.903950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042561, 45.227047, 58.392677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.664612, 45.226196, 58.261703>,  <37.437843, 45.225685, 58.183121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.664612, 45.226196, 58.261703>,  <38.042561, 45.227047, 58.392677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664612, 45.226196, 58.261703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326988, 0.046228, -0.943897,
		0.017142, -0.998929, -0.042985,
		-0.944873, -0.002124, -0.327430,
		37.381149, 45.225559, 58.163475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078632, 44.924839, 57.768753>,  <38.042561, 45.227047, 58.392677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078632, 44.924839, 57.768753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.705395, 45.066658, 57.744629>,  <37.481453, 45.151749, 57.730156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.705395, 45.066658, 57.744629>,  <38.078632, 44.924839, 57.768753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705395, 45.066658, 57.744629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155611, 0.246835, -0.956482,
		-0.324231, -0.901870, -0.285491,
		-0.933091, 0.354546, -0.060309,
		37.425468, 45.173023, 57.726536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745430, 44.609539, 57.195015>,  <38.078632, 44.924839, 57.768753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745430, 44.609539, 57.195015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.564571, 44.959229, 57.265785>,  <37.456059, 45.169041, 57.308247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.564571, 44.959229, 57.265785>,  <37.745430, 44.609539, 57.195015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564571, 44.959229, 57.265785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113585, 0.253183, -0.960727,
		-0.884683, -0.414290, -0.213773,
		-0.452143, 0.874221, 0.176930,
		37.428928, 45.221497, 57.318863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289661, 44.635632, 56.743000>,  <37.745430, 44.609539, 57.195015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289661, 44.635632, 56.743000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.362244, 45.009407, 56.865566>,  <37.405792, 45.233673, 56.939106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.362244, 45.009407, 56.865566>,  <37.289661, 44.635632, 56.743000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362244, 45.009407, 56.865566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084433, 0.295635, -0.951563,
		-0.979769, 0.198535, -0.025254,
		0.181452, 0.934443, 0.306416,
		37.416679, 45.289742, 56.957493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763653, 45.077961, 56.506325>,  <37.289661, 44.635632, 56.743000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763653, 45.077961, 56.506325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.079952, 45.310089, 56.584251>,  <37.269730, 45.449368, 56.631008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.079952, 45.310089, 56.584251>,  <36.763653, 45.077961, 56.506325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079952, 45.310089, 56.584251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148893, 0.491025, -0.858327,
		-0.593763, 0.649710, 0.474680,
		0.790744, 0.580320, 0.194815,
		37.317177, 45.484184, 56.642696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721786, 45.741863, 56.229862>,  <36.763653, 45.077961, 56.506325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721786, 45.741863, 56.229862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.115334, 45.732216, 56.300758>,  <37.351463, 45.726429, 56.343296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.115334, 45.732216, 56.300758>,  <36.721786, 45.741863, 56.229862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115334, 45.732216, 56.300758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174265, 0.352745, -0.919349,
		-0.040352, 0.935409, 0.351258,
		0.983872, -0.024114, 0.177243,
		37.410496, 45.724983, 56.353931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969608, 46.286423, 55.869041>,  <36.721786, 45.741863, 56.229862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969608, 46.286423, 55.869041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.301788, 46.077423, 55.946350>,  <37.501095, 45.952023, 55.992737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.301788, 46.077423, 55.946350>,  <36.969608, 46.286423, 55.869041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301788, 46.077423, 55.946350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198226, -0.047086, -0.979025,
		0.520639, 0.851339, 0.064470,
		0.830447, -0.522498, 0.193272,
		37.550922, 45.920673, 56.004333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492851, 46.652626, 55.461273>,  <36.969608, 46.286423, 55.869041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492851, 46.652626, 55.461273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.669540, 46.302055, 55.537964>,  <37.775555, 46.091713, 55.583981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.669540, 46.302055, 55.537964>,  <37.492851, 46.652626, 55.461273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669540, 46.302055, 55.537964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345424, -0.031090, -0.937931,
		0.827987, 0.480535, 0.289005,
		0.441724, -0.876424, 0.191731,
		37.802059, 46.039127, 55.595482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214943, 46.684673, 55.235279>,  <37.492851, 46.652626, 55.461273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214943, 46.684673, 55.235279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.143948, 46.291245, 55.248459>,  <38.101349, 46.055187, 55.256367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.143948, 46.291245, 55.248459>,  <38.214943, 46.684673, 55.235279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143948, 46.291245, 55.248459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408441, -0.104085, -0.906831,
		0.895362, -0.147494, 0.420205,
		-0.177489, -0.983571, 0.032951,
		38.090702, 45.996174, 55.258343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865902, 46.147228, 55.198631>,  <38.214943, 46.684673, 55.235279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865902, 46.147228, 55.198631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.550480, 45.939049, 55.067596>,  <38.361225, 45.814140, 54.988976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.550480, 45.939049, 55.067596>,  <38.865902, 46.147228, 55.198631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550480, 45.939049, 55.067596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505296, -0.244746, -0.827511,
		0.350502, -0.818067, 0.455977,
		-0.788558, -0.520448, -0.327582,
		38.313911, 45.782913, 54.969322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397015, 46.043045, 55.637493>,  <38.865902, 46.147228, 55.198631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397015, 46.043045, 55.637493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.788578, 46.053703, 55.718513>,  <40.023518, 46.060101, 55.767124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.788578, 46.053703, 55.718513>,  <39.397015, 46.043045, 55.637493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788578, 46.053703, 55.718513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203578, 0.044215, 0.978060,
		0.017095, -0.998667, 0.048705,
		0.978909, 0.026635, 0.202551,
		40.082253, 46.061699, 55.779278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538025, 45.395725, 56.106346>,  <39.397015, 46.043045, 55.637493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538025, 45.395725, 56.106346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.806030, 45.689125, 56.152061>,  <39.966831, 45.865166, 56.179489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.806030, 45.689125, 56.152061>,  <39.538025, 45.395725, 56.106346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806030, 45.689125, 56.152061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207428, 0.037166, 0.977544,
		0.712782, -0.678671, 0.177050,
		0.670011, 0.733501, 0.114285,
		40.007034, 45.909176, 56.186348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016605, 45.080753, 56.658901>,  <39.538025, 45.395725, 56.106346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016605, 45.080753, 56.658901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.131214, 45.463982, 56.658867>,  <40.199978, 45.693920, 56.658844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.131214, 45.463982, 56.658867>,  <40.016605, 45.080753, 56.658901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131214, 45.463982, 56.658867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042111, 0.012687, 0.999032,
		0.957148, -0.286241, 0.043981,
		0.286522, 0.958074, -0.000089,
		40.217171, 45.751404, 56.658840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614643, 45.151562, 57.084465>,  <40.016605, 45.080753, 56.658901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614643, 45.151562, 57.084465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.452477, 45.517075, 57.074326>,  <40.355175, 45.736382, 57.068241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.452477, 45.517075, 57.074326>,  <40.614643, 45.151562, 57.084465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452477, 45.517075, 57.074326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017988, 0.035699, 0.999201,
		0.913954, 0.404638, -0.030910,
		-0.405418, 0.913780, -0.025349,
		40.330853, 45.791210, 57.066719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071541, 45.510048, 57.570934>,  <40.614643, 45.151562, 57.084465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071541, 45.510048, 57.570934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.719917, 45.691483, 57.512253>,  <40.508945, 45.800343, 57.477043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.719917, 45.691483, 57.512253>,  <41.071541, 45.510048, 57.570934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719917, 45.691483, 57.512253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159937, 0.009292, 0.987083,
		0.449092, 0.891163, 0.064377,
		-0.879054, 0.453588, -0.146703,
		40.456200, 45.827560, 57.468243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076168, 45.880444, 58.138744>,  <41.071541, 45.510048, 57.570934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076168, 45.880444, 58.138744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.696144, 45.885788, 58.014027>,  <40.468132, 45.888996, 57.939198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.696144, 45.885788, 58.014027>,  <41.076168, 45.880444, 58.138744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696144, 45.885788, 58.014027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311378, -0.107674, 0.944166,
		-0.020955, 0.994096, 0.106458,
		-0.950055, 0.013364, -0.311796,
		40.411129, 45.889797, 57.920486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734627, 46.513550, 58.445652>,  <41.076168, 45.880444, 58.138744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734627, 46.513550, 58.445652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.469620, 46.222153, 58.375954>,  <40.310616, 46.047314, 58.334133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.469620, 46.222153, 58.375954>,  <40.734627, 46.513550, 58.445652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469620, 46.222153, 58.375954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224749, -0.028572, 0.973998,
		-0.714529, 0.684457, -0.144799,
		-0.662522, -0.728493, -0.174247,
		40.270863, 46.003605, 58.323681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309040, 46.530251, 58.954670>,  <40.734627, 46.513550, 58.445652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309040, 46.530251, 58.954670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.208126, 46.162964, 58.832539>,  <40.147579, 45.942593, 58.759258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.208126, 46.162964, 58.832539>,  <40.309040, 46.530251, 58.954670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208126, 46.162964, 58.832539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313938, -0.220802, 0.923412,
		-0.915312, 0.328816, -0.232559,
		-0.252283, -0.918219, -0.305330,
		40.132442, 45.887497, 58.740940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691261, 46.348499, 59.318726>,  <40.309040, 46.530251, 58.954670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691261, 46.348499, 59.318726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.830292, 45.997154, 59.187473>,  <39.913708, 45.786346, 59.108723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.830292, 45.997154, 59.187473>,  <39.691261, 46.348499, 59.318726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830292, 45.997154, 59.187473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248302, -0.423674, 0.871118,
		-0.904179, -0.221302, -0.365357,
		0.347572, -0.878365, -0.328128,
		39.934563, 45.733646, 59.089035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290043, 45.922306, 59.721867>,  <39.691261, 46.348499, 59.318726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290043, 45.922306, 59.721867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.572098, 45.681244, 59.572418>,  <39.741329, 45.536606, 59.482750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.572098, 45.681244, 59.572418>,  <39.290043, 45.922306, 59.721867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572098, 45.681244, 59.572418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131005, -0.628564, 0.766646,
		-0.696867, -0.491643, -0.522173,
		0.705135, -0.602657, -0.373618,
		39.783638, 45.500446, 59.460335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015938, 45.205971, 59.648872>,  <39.290043, 45.922306, 59.721867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015938, 45.205971, 59.648872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.412994, 45.195198, 59.696098>,  <39.651230, 45.188732, 59.724434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.412994, 45.195198, 59.696098>,  <39.015938, 45.205971, 59.648872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412994, 45.195198, 59.696098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109011, -0.623311, 0.774338,
		0.052733, -0.781510, -0.621660,
		0.992641, -0.026935, 0.118063,
		39.710785, 45.187119, 59.731518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289646, 44.478764, 59.690510>,  <39.015938, 45.205971, 59.648872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289646, 44.478764, 59.690510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.590309, 44.698540, 59.836460>,  <39.770706, 44.830406, 59.924030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.590309, 44.698540, 59.836460>,  <39.289646, 44.478764, 59.690510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590309, 44.698540, 59.836460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061898, -0.609535, 0.790339,
		0.656648, -0.571475, -0.492168,
		0.751653, 0.549439, 0.364877,
		39.815804, 44.863373, 59.945923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828041, 43.990925, 59.845051>,  <39.289646, 44.478764, 59.690510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828041, 43.990925, 59.845051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.907738, 44.308441, 60.074902>,  <39.955555, 44.498951, 60.212811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.907738, 44.308441, 60.074902>,  <39.828041, 43.990925, 59.845051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907738, 44.308441, 60.074902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016769, -0.583533, 0.811916,
		0.979807, -0.171403, -0.102953,
		0.199242, 0.793794, 0.574624,
		39.967510, 44.546581, 60.247288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226032, 43.728928, 60.408066>,  <39.828041, 43.990925, 59.845051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226032, 43.728928, 60.408066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.110886, 44.086563, 60.545319>,  <40.041798, 44.301144, 60.627670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.110886, 44.086563, 60.545319>,  <40.226032, 43.728928, 60.408066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110886, 44.086563, 60.545319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075870, -0.335878, 0.938845,
		0.954659, 0.296299, 0.028855,
		-0.287871, 0.894087, 0.343130,
		40.024525, 44.354790, 60.648258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401478, 42.960194, 60.431297>,  <40.226032, 43.728928, 60.408066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401478, 42.960194, 60.431297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.660889, 42.670952, 60.526409>,  <40.816536, 42.497406, 60.583477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.660889, 42.670952, 60.526409>,  <40.401478, 42.960194, 60.431297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660889, 42.670952, 60.526409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107256, -0.222452, -0.969026,
		0.753600, 0.653940, -0.066708,
		0.648524, -0.723103, 0.237779,
		40.855446, 42.454021, 60.597744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014004, 42.900536, 59.984409>,  <40.401478, 42.960194, 60.431297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014004, 42.900536, 59.984409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.069336, 42.536812, 60.141388>,  <41.102535, 42.318577, 60.235577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.069336, 42.536812, 60.141388>,  <41.014004, 42.900536, 59.984409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069336, 42.536812, 60.141388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360822, -0.322751, -0.875008,
		0.922319, 0.262643, 0.283454,
		0.138330, -0.909313, 0.392447,
		41.110836, 42.264019, 60.259121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742207, 42.716858, 59.776665>,  <41.014004, 42.900536, 59.984409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742207, 42.716858, 59.776665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.516563, 42.395576, 59.853233>,  <41.381176, 42.202808, 59.899174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.516563, 42.395576, 59.853233>,  <41.742207, 42.716858, 59.776665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516563, 42.395576, 59.853233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307625, -0.419583, -0.854001,
		0.766256, -0.422863, 0.483776,
		-0.564110, -0.803204, 0.191425,
		41.347332, 42.154613, 59.910660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129662, 42.046070, 59.676044>,  <41.742207, 42.716858, 59.776665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129662, 42.046070, 59.676044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.744919, 41.939049, 59.653252>,  <41.514072, 41.874836, 59.639576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.744919, 41.939049, 59.653252>,  <42.129662, 42.046070, 59.676044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744919, 41.939049, 59.653252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176420, -0.447526, -0.876696,
		0.209067, -0.853307, 0.477658,
		-0.961856, -0.267557, -0.056977,
		41.456364, 41.858780, 59.636158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145260, 41.339642, 59.468487>,  <42.129662, 42.046070, 59.676044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145260, 41.339642, 59.468487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.767773, 41.441345, 59.383881>,  <41.541279, 41.502369, 59.333115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.767773, 41.441345, 59.383881>,  <42.145260, 41.339642, 59.468487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767773, 41.441345, 59.383881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037004, -0.554342, -0.831466,
		-0.328662, -0.792500, 0.513736,
		-0.943722, 0.254261, -0.211517,
		41.484657, 41.517624, 59.320427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783192, 40.681641, 59.258709>,  <42.145260, 41.339642, 59.468487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783192, 40.681641, 59.258709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.591625, 40.995674, 59.101593>,  <41.476685, 41.184093, 59.007324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.591625, 40.995674, 59.101593>,  <41.783192, 40.681641, 59.258709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591625, 40.995674, 59.101593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039213, -0.466123, -0.883851,
		-0.876987, -0.407884, 0.254018,
		-0.478912, 0.785086, -0.392789,
		41.447952, 41.231201, 58.983757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299549, 40.389587, 58.682659>,  <41.783192, 40.681641, 59.258709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299549, 40.389587, 58.682659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.375462, 40.772881, 58.597080>,  <41.421009, 41.002857, 58.545731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.375462, 40.772881, 58.597080>,  <41.299549, 40.389587, 58.682659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375462, 40.772881, 58.597080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054960, -0.227936, -0.972124,
		-0.980287, 0.172730, -0.095922,
		0.189779, 0.958232, -0.213950,
		41.432396, 41.060349, 58.532894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883198, 40.043270, 58.185963>,  <41.299549, 40.389587, 58.682659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883198, 40.043270, 58.185963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.711025, 39.688644, 58.118164>,  <40.607723, 39.475868, 58.077484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.711025, 39.688644, 58.118164>,  <40.883198, 40.043270, 58.185963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711025, 39.688644, 58.118164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209596, -0.084482, 0.974131,
		-0.877953, 0.454819, -0.149458,
		-0.430427, -0.886568, -0.169500,
		40.581898, 39.422672, 58.067314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175404, 40.063896, 58.551048>,  <40.883198, 40.043270, 58.185963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175404, 40.063896, 58.551048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.307533, 39.688164, 58.514061>,  <40.386810, 39.462727, 58.491867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.307533, 39.688164, 58.514061>,  <40.175404, 40.063896, 58.551048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307533, 39.688164, 58.514061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271084, -0.188255, 0.943967,
		-0.904103, -0.286743, -0.316822,
		0.330319, -0.939329, -0.092471,
		40.406628, 39.406364, 58.486320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664036, 39.647663, 58.722073>,  <40.175404, 40.063896, 58.551048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664036, 39.647663, 58.722073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.989746, 39.426369, 58.792377>,  <40.185173, 39.293591, 58.834560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.989746, 39.426369, 58.792377>,  <39.664036, 39.647663, 58.722073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989746, 39.426369, 58.792377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298022, -0.138596, 0.944444,
		-0.498140, -0.821415, -0.277731,
		0.814273, -0.553235, 0.175760,
		40.234028, 39.260399, 58.845104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462002, 39.058525, 59.181744>,  <39.664036, 39.647663, 58.722073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462002, 39.058525, 59.181744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.858349, 39.104340, 59.210197>,  <40.096157, 39.131828, 59.227272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.858349, 39.104340, 59.210197>,  <39.462002, 39.058525, 59.181744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858349, 39.104340, 59.210197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050088, -0.177157, 0.982907,
		0.125185, -0.977495, -0.169802,
		0.990868, 0.114540, 0.071139,
		40.155609, 39.138702, 59.231541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658821, 38.447598, 59.514126>,  <39.462002, 39.058525, 59.181744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658821, 38.447598, 59.514126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.971638, 38.693085, 59.557495>,  <40.159328, 38.840378, 59.583515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.971638, 38.693085, 59.557495>,  <39.658821, 38.447598, 59.514126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971638, 38.693085, 59.557495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017614, -0.152134, 0.988203,
		0.622976, -0.774726, -0.108166,
		0.782042, 0.613722, 0.108422,
		40.206249, 38.877201, 59.590023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030617, 38.200687, 60.149601>,  <39.658821, 38.447598, 59.514126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030617, 38.200687, 60.149601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.208042, 38.556969, 60.109810>,  <40.314499, 38.770737, 60.085934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.208042, 38.556969, 60.109810>,  <40.030617, 38.200687, 60.149601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208042, 38.556969, 60.109810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129306, 0.173437, 0.976319,
		0.886866, -0.420197, 0.192104,
		0.443564, 0.890705, -0.099481,
		40.341110, 38.824181, 60.079964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531979, 38.237358, 60.600586>,  <40.030617, 38.200687, 60.149601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531979, 38.237358, 60.600586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.457928, 38.623970, 60.529549>,  <40.413498, 38.855938, 60.486927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.457928, 38.623970, 60.529549>,  <40.531979, 38.237358, 60.600586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457928, 38.623970, 60.529549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097349, 0.161789, 0.982012,
		0.977880, 0.199090, 0.064139,
		-0.185131, 0.966534, -0.177592,
		40.402390, 38.913929, 60.476273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823883, 38.533131, 61.071182>,  <40.531979, 38.237358, 60.600586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823883, 38.533131, 61.071182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.567230, 38.817947, 60.957123>,  <40.413239, 38.988838, 60.888687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.567230, 38.817947, 60.957123>,  <40.823883, 38.533131, 61.071182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567230, 38.817947, 60.957123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189872, 0.212741, 0.958483,
		0.743143, 0.669132, -0.001304,
		-0.641629, 0.712042, -0.285146,
		40.374741, 39.031559, 60.871578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983913, 39.121326, 61.448200>,  <40.823883, 38.533131, 61.071182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983913, 39.121326, 61.448200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.606560, 39.172005, 61.325581>,  <40.380146, 39.202412, 61.252007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.606560, 39.172005, 61.325581>,  <40.983913, 39.121326, 61.448200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606560, 39.172005, 61.325581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296929, 0.089368, 0.950708,
		0.147844, 0.987908, -0.046690,
		-0.943385, 0.126693, -0.306551,
		40.323544, 39.210014, 61.233616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.781548, 41.921654, 45.345661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.414673, 41.775017, 45.283199>,  <42.194550, 41.687035, 45.245724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.414673, 41.775017, 45.283199>,  <42.781548, 41.921654, 45.345661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414673, 41.775017, 45.283199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004369, -0.382609, 0.923900,
		-0.398439, 0.848069, 0.349322,
		-0.917185, -0.366591, -0.156152,
		42.139519, 41.665039, 45.236355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398197, 42.096291, 45.984753>,  <42.781548, 41.921654, 45.345661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398197, 42.096291, 45.984753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.212227, 41.778954, 45.827553>,  <42.100647, 41.588551, 45.733231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.212227, 41.778954, 45.827553>,  <42.398197, 42.096291, 45.984753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212227, 41.778954, 45.827553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023907, -0.432482, 0.901326,
		-0.885029, 0.428441, 0.182104,
		-0.464921, -0.793346, -0.393001,
		42.072750, 41.540951, 45.709652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729385, 42.010593, 46.287537>,  <42.398197, 42.096291, 45.984753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729385, 42.010593, 46.287537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.862846, 41.658394, 46.152840>,  <41.942924, 41.447075, 46.072021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.862846, 41.658394, 46.152840>,  <41.729385, 42.010593, 46.287537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862846, 41.658394, 46.152840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078158, -0.381817, 0.920927,
		-0.939449, -0.280955, -0.196214,
		0.333657, -0.880500, -0.336739,
		41.962944, 41.394245, 46.051819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605797, 41.636658, 46.776482>,  <41.729385, 42.010593, 46.287537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605797, 41.636658, 46.776482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.807407, 41.351860, 46.580925>,  <41.928375, 41.180981, 46.463593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.807407, 41.351860, 46.580925>,  <41.605797, 41.636658, 46.776482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807407, 41.351860, 46.580925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030641, -0.580435, 0.813730,
		-0.863143, -0.395162, -0.314373,
		0.504028, -0.711998, -0.488891,
		41.958614, 41.138260, 46.434258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235504, 40.999271, 46.737747>,  <41.605797, 41.636658, 46.776482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235504, 40.999271, 46.737747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.622253, 40.900581, 46.711594>,  <41.854305, 40.841366, 46.695900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.622253, 40.900581, 46.711594>,  <41.235504, 40.999271, 46.737747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622253, 40.900581, 46.711594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071423, -0.507466, 0.858707,
		-0.245044, -0.825594, -0.508279,
		0.966877, -0.246724, -0.065385,
		41.912315, 40.826565, 46.691978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228638, 40.343632, 46.919365>,  <41.235504, 40.999271, 46.737747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228638, 40.343632, 46.919365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.611900, 40.451355, 46.958168>,  <41.841858, 40.515987, 46.981449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.611900, 40.451355, 46.958168>,  <41.228638, 40.343632, 46.919365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611900, 40.451355, 46.958168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032348, -0.438596, 0.898102,
		0.284409, -0.857385, -0.428955,
		0.958157, 0.269304, 0.097006,
		41.899349, 40.532146, 46.987270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551830, 39.694637, 47.185520>,  <41.228638, 40.343632, 46.919365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551830, 39.694637, 47.185520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.787495, 40.001656, 47.286522>,  <41.928894, 40.185867, 47.347122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.787495, 40.001656, 47.286522>,  <41.551830, 39.694637, 47.185520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787495, 40.001656, 47.286522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122240, -0.224241, 0.966837,
		0.798716, -0.600489, -0.038289,
		0.589161, 0.767547, 0.252509,
		41.964241, 40.231918, 47.362274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941460, 39.498878, 47.775047>,  <41.551830, 39.694637, 47.185520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941460, 39.498878, 47.775047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.010155, 39.892036, 47.801624>,  <42.051373, 40.127934, 47.817570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.010155, 39.892036, 47.801624>,  <41.941460, 39.498878, 47.775047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010155, 39.892036, 47.801624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043044, -0.074864, 0.996264,
		0.984201, -0.168240, -0.055165,
		0.171741, 0.982899, 0.066439,
		42.061676, 40.186905, 47.821556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537449, 39.554596, 48.235985>,  <41.941460, 39.498878, 47.775047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537449, 39.554596, 48.235985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.367153, 39.916534, 48.235352>,  <42.264977, 40.133698, 48.234974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.367153, 39.916534, 48.235352>,  <42.537449, 39.554596, 48.235985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367153, 39.916534, 48.235352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114217, 0.055472, 0.991906,
		0.897607, 0.422116, -0.126965,
		-0.425742, 0.904843, -0.001580,
		42.239429, 40.187988, 48.234879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908367, 40.014664, 48.666233>,  <42.537449, 39.554596, 48.235985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908367, 40.014664, 48.666233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.557487, 40.206345, 48.654320>,  <42.346962, 40.321354, 48.647171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.557487, 40.206345, 48.654320>,  <42.908367, 40.014664, 48.666233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557487, 40.206345, 48.654320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069886, 0.188811, 0.979524,
		0.475017, 0.857154, -0.199114,
		-0.877197, 0.479205, -0.029785,
		42.294327, 40.350105, 48.645386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958672, 40.598358, 48.971127>,  <42.908367, 40.014664, 48.666233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958672, 40.598358, 48.971127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.562210, 40.547432, 48.986130>,  <42.324333, 40.516876, 48.995132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.562210, 40.547432, 48.986130>,  <42.958672, 40.598358, 48.971127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562210, 40.547432, 48.986130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005750, 0.241144, 0.970472,
		-0.132597, 0.962103, -0.238279,
		-0.991153, -0.127311, 0.037507,
		42.264866, 40.509239, 48.997383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732113, 41.196453, 49.389473>,  <42.958672, 40.598358, 48.971127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732113, 41.196453, 49.389473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.391571, 40.986679, 49.384296>,  <42.187248, 40.860813, 49.381191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.391571, 40.986679, 49.384296>,  <42.732113, 41.196453, 49.389473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391571, 40.986679, 49.384296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035386, 0.032800, 0.998835,
		-0.523401, 0.850818, -0.046482,
		-0.851351, -0.524436, -0.012940,
		42.136166, 40.829350, 49.380413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780914, 42.002678, 49.617455>,  <42.732113, 41.196453, 49.389473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780914, 42.002678, 49.617455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.122513, 42.153618, 49.760723>,  <43.327473, 42.244183, 49.846684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.122513, 42.153618, 49.760723>,  <42.780914, 42.002678, 49.617455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122513, 42.153618, 49.760723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307435, 0.189376, -0.932535,
		-0.419723, 0.906500, 0.045716,
		0.854000, 0.377352, 0.358175,
		43.378712, 42.266823, 49.868176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957176, 42.607815, 49.246799>,  <42.780914, 42.002678, 49.617455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957176, 42.607815, 49.246799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.319733, 42.502419, 49.378880>,  <43.537266, 42.439178, 49.458126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.319733, 42.502419, 49.378880>,  <42.957176, 42.607815, 49.246799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319733, 42.502419, 49.378880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403066, 0.305364, -0.862723,
		0.126491, 0.915054, 0.382983,
		0.906387, -0.263494, 0.330201,
		43.591648, 42.423370, 49.477940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358902, 43.241776, 49.073254>,  <42.957176, 42.607815, 49.246799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358902, 43.241776, 49.073254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.614586, 42.940147, 49.133648>,  <43.767994, 42.759171, 49.169884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.614586, 42.940147, 49.133648>,  <43.358902, 43.241776, 49.073254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614586, 42.940147, 49.133648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470052, 0.227702, -0.852762,
		0.608659, 0.616064, 0.499999,
		0.639207, -0.754067, 0.150989,
		43.806347, 42.713928, 49.178944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997761, 43.595634, 49.027382>,  <43.358902, 43.241776, 49.073254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997761, 43.595634, 49.027382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.085842, 43.209373, 48.972221>,  <44.138691, 42.977615, 48.939125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.085842, 43.209373, 48.972221>,  <43.997761, 43.595634, 49.027382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085842, 43.209373, 48.972221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601904, 0.245759, -0.759812,
		0.767608, 0.084312, 0.635350,
		0.220205, -0.965657, -0.137899,
		44.151905, 42.919678, 48.930851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724930, 43.662617, 48.910034>,  <43.997761, 43.595634, 49.027382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724930, 43.662617, 48.910034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.553406, 43.340538, 48.746193>,  <44.450493, 43.147289, 48.647888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.553406, 43.340538, 48.746193>,  <44.724930, 43.662617, 48.910034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553406, 43.340538, 48.746193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470548, 0.187973, -0.862120,
		0.771174, -0.562422, 0.298281,
		-0.428806, -0.805200, -0.409607,
		44.424763, 43.098976, 48.623310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.281292, 43.471279, 48.551636>,  <44.724930, 43.662617, 48.910034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.281292, 43.471279, 48.551636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.953793, 43.285469, 48.416656>,  <44.757294, 43.173985, 48.335670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.953793, 43.285469, 48.416656>,  <45.281292, 43.471279, 48.551636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953793, 43.285469, 48.416656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309991, 0.137056, -0.940809,
		0.483277, -0.874890, 0.031784,
		-0.818749, -0.464525, -0.337444,
		44.708168, 43.146111, 48.315422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.548679, 43.046581, 48.005112>,  <45.281292, 43.471279, 48.551636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.548679, 43.046581, 48.005112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.155914, 43.097946, 47.949448>,  <44.920258, 43.128765, 47.916050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.155914, 43.097946, 47.949448>,  <45.548679, 43.046581, 48.005112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.155914, 43.097946, 47.949448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172481, 0.303316, -0.937150,
		-0.078134, -0.944198, -0.319977,
		-0.981909, 0.128413, -0.139157,
		44.861343, 43.136471, 47.907700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493027, 42.836250, 47.239403>,  <45.548679, 43.046581, 48.005112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493027, 42.836250, 47.239403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.173294, 43.055267, 47.338409>,  <44.981453, 43.186676, 47.397816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.173294, 43.055267, 47.338409>,  <45.493027, 42.836250, 47.239403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173294, 43.055267, 47.338409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013367, 0.428023, -0.903669,
		-0.600743, -0.719022, -0.349451,
		-0.799331, 0.547544, 0.247521,
		44.933495, 43.219532, 47.412666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098770, 42.945232, 46.574684>,  <45.493027, 42.836250, 47.239403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098770, 42.945232, 46.574684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.962013, 43.233711, 46.815674>,  <44.879959, 43.406799, 46.960270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.962013, 43.233711, 46.815674>,  <45.098770, 42.945232, 46.574684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962013, 43.233711, 46.815674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057074, 0.623994, -0.779342,
		-0.938003, -0.300839, -0.172179,
		-0.341895, 0.721198, 0.602479,
		44.859444, 43.450069, 46.996418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525696, 43.224102, 46.254974>,  <45.098770, 42.945232, 46.574684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525696, 43.224102, 46.254974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.582031, 43.514091, 46.524666>,  <44.615833, 43.688084, 46.686481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.582031, 43.514091, 46.524666>,  <44.525696, 43.224102, 46.254974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582031, 43.514091, 46.524666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324080, 0.677256, -0.660527,
		-0.935487, -0.125473, 0.330334,
		0.140842, 0.724969, 0.674228,
		44.624283, 43.731583, 46.726933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930645, 43.791683, 46.143833>,  <44.525696, 43.224102, 46.254974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930645, 43.791683, 46.143833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.235054, 43.966919, 46.335220>,  <44.417698, 44.072060, 46.450050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.235054, 43.966919, 46.335220>,  <43.930645, 43.791683, 46.143833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235054, 43.966919, 46.335220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143956, 0.833195, -0.533912,
		-0.632555, 0.337440, 0.697143,
		0.761019, 0.438087, 0.478466,
		44.463360, 44.098347, 46.478760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716717, 44.421032, 46.295654>,  <43.930645, 43.791683, 46.143833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716717, 44.421032, 46.295654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.114185, 44.463417, 46.310562>,  <44.352665, 44.488846, 46.319508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.114185, 44.463417, 46.310562>,  <43.716717, 44.421032, 46.295654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114185, 44.463417, 46.310562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068476, 0.834466, -0.546789,
		-0.089037, 0.540777, 0.836441,
		0.993672, 0.105960, 0.037269,
		44.412289, 44.495205, 46.321743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853313, 45.161552, 46.400085>,  <43.716717, 44.421032, 46.295654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853313, 45.161552, 46.400085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.188950, 44.999695, 46.254658>,  <44.390331, 44.902580, 46.167400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.188950, 44.999695, 46.254658>,  <43.853313, 45.161552, 46.400085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.188950, 44.999695, 46.254658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065077, 0.738214, -0.671420,
		0.540081, 0.539724, 0.645764,
		0.839093, -0.404646, -0.363572,
		44.440678, 44.878300, 46.145588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233189, 45.694832, 46.284740>,  <43.853313, 45.161552, 46.400085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233189, 45.694832, 46.284740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.405975, 45.415924, 46.055927>,  <44.509647, 45.248581, 45.918640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.405975, 45.415924, 46.055927>,  <44.233189, 45.694832, 46.284740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405975, 45.415924, 46.055927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022103, 0.642256, -0.766172,
		0.901619, 0.318317, 0.292845,
		0.431967, -0.697268, -0.572034,
		44.535564, 45.206745, 45.884315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045540, 45.872707, 46.027416>,  <44.233189, 45.694832, 46.284740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045540, 45.872707, 46.027416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.825562, 45.644836, 45.783112>,  <44.693573, 45.508114, 45.636528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.825562, 45.644836, 45.783112>,  <45.045540, 45.872707, 46.027416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825562, 45.644836, 45.783112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146910, 0.653890, -0.742190,
		0.822176, -0.497892, -0.275915,
		-0.549949, -0.569676, -0.610758,
		44.660576, 45.473934, 45.599884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579941, 46.442772, 46.219193>,  <45.045540, 45.872707, 46.027416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579941, 46.442772, 46.219193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.377647, 46.749817, 46.061710>,  <44.256271, 46.934044, 45.967220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.377647, 46.749817, 46.061710>,  <44.579941, 46.442772, 46.219193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377647, 46.749817, 46.061710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400050, 0.195661, 0.895364,
		0.764323, 0.610321, 0.208130,
		-0.505737, 0.767610, -0.393707,
		44.225925, 46.980099, 45.943600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659512, 47.144409, 46.649464>,  <44.579941, 46.442772, 46.219193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659512, 47.144409, 46.649464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.317947, 47.121208, 46.442593>,  <44.113007, 47.107288, 46.318470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.317947, 47.121208, 46.442593>,  <44.659512, 47.144409, 46.649464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317947, 47.121208, 46.442593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519024, 0.022269, 0.854469,
		-0.038044, 0.998068, -0.049119,
		-0.853912, -0.058001, -0.517175,
		44.061775, 47.103809, 46.287441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227943, 47.682999, 46.957325>,  <44.659512, 47.144409, 46.649464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227943, 47.682999, 46.957325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.973450, 47.439888, 46.767246>,  <43.820755, 47.294022, 46.653198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.973450, 47.439888, 46.767246>,  <44.227943, 47.682999, 46.957325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973450, 47.439888, 46.767246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536656, -0.093863, 0.838564,
		-0.554262, 0.788543, -0.266447,
		-0.636234, -0.607774, -0.475201,
		43.782581, 47.257557, 46.624687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570847, 47.929298, 47.054787>,  <44.227943, 47.682999, 46.957325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570847, 47.929298, 47.054787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.520569, 47.547173, 46.947769>,  <43.490402, 47.317898, 46.883560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.520569, 47.547173, 46.947769>,  <43.570847, 47.929298, 47.054787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520569, 47.547173, 46.947769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372116, -0.204594, 0.905357,
		-0.919637, 0.213351, -0.329772,
		-0.125690, -0.955313, -0.267543,
		43.482861, 47.260578, 46.867508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857708, 47.824802, 47.304600>,  <43.570847, 47.929298, 47.054787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857708, 47.824802, 47.304600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.011227, 47.458420, 47.257721>,  <43.103336, 47.238590, 47.229595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.011227, 47.458420, 47.257721>,  <42.857708, 47.824802, 47.304600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011227, 47.458420, 47.257721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373112, -0.269913, 0.887657,
		-0.844683, -0.296950, -0.445343,
		0.383794, -0.915952, -0.117196,
		43.126366, 47.183636, 47.222561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365494, 47.275593, 47.582653>,  <42.857708, 47.824802, 47.304600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365494, 47.275593, 47.582653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.688557, 47.039810, 47.588699>,  <42.882393, 46.898342, 47.592327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.688557, 47.039810, 47.588699>,  <42.365494, 47.275593, 47.582653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688557, 47.039810, 47.588699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279451, -0.360068, 0.890089,
		-0.519225, -0.723113, -0.455536,
		0.807658, -0.589457, 0.015118,
		42.930855, 46.862972, 47.593235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186657, 46.722897, 47.900097>,  <42.365494, 47.275593, 47.582653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186657, 46.722897, 47.900097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.584293, 46.694130, 47.932610>,  <42.822876, 46.676872, 47.952118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.584293, 46.694130, 47.932610>,  <42.186657, 46.722897, 47.900097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584293, 46.694130, 47.932610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097990, -0.272817, 0.957063,
		-0.046649, -0.959375, -0.278252,
		0.994094, -0.071912, 0.081282,
		42.882523, 46.672558, 47.956993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319386, 46.059078, 48.147678>,  <42.186657, 46.722897, 47.900097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319386, 46.059078, 48.147678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.618938, 46.280296, 48.293728>,  <42.798672, 46.413025, 48.381359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.618938, 46.280296, 48.293728>,  <42.319386, 46.059078, 48.147678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618938, 46.280296, 48.293728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221218, -0.310745, 0.924392,
		0.624690, -0.773034, -0.110368,
		0.748883, 0.553043, 0.365128,
		42.843605, 46.446209, 48.403267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645832, 45.631424, 48.667023>,  <42.319386, 46.059078, 48.147678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645832, 45.631424, 48.667023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.824059, 45.985825, 48.718361>,  <42.930996, 46.198463, 48.749165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.824059, 45.985825, 48.718361>,  <42.645832, 45.631424, 48.667023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824059, 45.985825, 48.718361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069977, -0.177389, 0.981650,
		0.892509, -0.428411, -0.141039,
		0.445569, 0.886000, 0.128343,
		42.957729, 46.251625, 48.756863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327171, 45.529964, 48.930122>,  <42.645832, 45.631424, 48.667023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327171, 45.529964, 48.930122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.202705, 45.893196, 49.042236>,  <43.128025, 46.111137, 49.109505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.202705, 45.893196, 49.042236>,  <43.327171, 45.529964, 48.930122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202705, 45.893196, 49.042236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013966, -0.290530, 0.956764,
		0.950252, 0.301630, 0.077721,
		-0.311169, 0.908081, 0.280289,
		43.109356, 46.165619, 49.126324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638203, 45.633968, 49.616852>,  <43.327171, 45.529964, 48.930122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638203, 45.633968, 49.616852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.366714, 45.927223, 49.599670>,  <43.203819, 46.103176, 49.589363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.366714, 45.927223, 49.599670>,  <43.638203, 45.633968, 49.616852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366714, 45.927223, 49.599670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183528, -0.112691, 0.976534,
		0.711093, 0.670679, 0.211037,
		-0.678723, 0.733137, -0.042954,
		43.163097, 46.147163, 49.586784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873131, 46.112141, 50.110950>,  <43.638203, 45.633968, 49.616852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873131, 46.112141, 50.110950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.485939, 46.184731, 50.041580>,  <43.253624, 46.228287, 49.999958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.485939, 46.184731, 50.041580>,  <43.873131, 46.112141, 50.110950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485939, 46.184731, 50.041580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190298, -0.079952, 0.978465,
		0.163704, 0.980139, 0.111927,
		-0.967981, 0.181479, -0.173430,
		43.195545, 46.239174, 49.989552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668011, 46.627388, 50.582951>,  <43.873131, 46.112141, 50.110950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668011, 46.627388, 50.582951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.347836, 46.412064, 50.477482>,  <43.155731, 46.282871, 50.414200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.347836, 46.412064, 50.477482>,  <43.668011, 46.627388, 50.582951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347836, 46.412064, 50.477482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314252, 0.002285, 0.949337,
		-0.510433, 0.842745, -0.170993,
		-0.800440, -0.538308, -0.263668,
		43.107704, 46.250572, 50.398380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143204, 46.791111, 51.086292>,  <43.668011, 46.627388, 50.582951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143204, 46.791111, 51.086292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.968628, 46.468613, 50.926548>,  <42.863884, 46.275112, 50.830700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.968628, 46.468613, 50.926548>,  <43.143204, 46.791111, 51.086292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968628, 46.468613, 50.926548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411468, -0.215878, 0.885489,
		-0.800136, 0.550784, -0.237527,
		-0.436436, -0.806246, -0.399362,
		42.837696, 46.226738, 50.806740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486397, 46.822521, 51.183247>,  <43.143204, 46.791111, 51.086292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486397, 46.822521, 51.183247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.553200, 46.430969, 51.136078>,  <42.593281, 46.196037, 51.107777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.553200, 46.430969, 51.136078>,  <42.486397, 46.822521, 51.183247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553200, 46.430969, 51.136078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491409, -0.186326, 0.850764,
		-0.854766, -0.084137, -0.512148,
		0.167007, -0.978879, -0.117919,
		42.603302, 46.137306, 51.100700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891941, 46.509415, 51.428055>,  <42.486397, 46.822521, 51.183247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891941, 46.509415, 51.428055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.172127, 46.224014, 51.421677>,  <42.340240, 46.052773, 51.417850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.172127, 46.224014, 51.421677>,  <41.891941, 46.509415, 51.428055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172127, 46.224014, 51.421677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301540, -0.316135, 0.899518,
		-0.646852, -0.625275, -0.436593,
		0.700468, -0.713505, -0.015947,
		42.382267, 46.009964, 51.416893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546108, 45.924171, 51.504456>,  <41.891941, 46.509415, 51.428055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546108, 45.924171, 51.504456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.914642, 45.826965, 51.625839>,  <42.135761, 45.768642, 51.698669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.914642, 45.826965, 51.625839>,  <41.546108, 45.924171, 51.504456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914642, 45.826965, 51.625839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368055, -0.293804, 0.882165,
		-0.125221, -0.924458, -0.360135,
		0.921333, -0.243015, 0.303461,
		42.191044, 45.754059, 51.716877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567280, 45.156658, 51.746250>,  <41.546108, 45.924171, 51.504456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567280, 45.156658, 51.746250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.828186, 45.401169, 51.925533>,  <41.984730, 45.547874, 52.033104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.828186, 45.401169, 51.925533>,  <41.567280, 45.156658, 51.746250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828186, 45.401169, 51.925533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381483, -0.246234, 0.890977,
		0.654997, -0.752137, 0.072582,
		0.652265, 0.611276, 0.448210,
		42.023865, 45.584553, 52.059998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647781, 44.839249, 52.474800>,  <41.567280, 45.156658, 51.746250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647781, 44.839249, 52.474800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.849899, 45.179832, 52.530926>,  <41.971169, 45.384182, 52.564602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.849899, 45.179832, 52.530926>,  <41.647781, 44.839249, 52.474800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849899, 45.179832, 52.530926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319501, 0.033549, 0.946992,
		0.801622, -0.523339, 0.288996,
		0.505293, 0.851464, 0.140314,
		42.001488, 45.435272, 52.573021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060146, 44.754341, 53.053349>,  <41.647781, 44.839249, 52.474800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060146, 44.754341, 53.053349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.980618, 45.144226, 53.012543>,  <41.932899, 45.378159, 52.988060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.980618, 45.144226, 53.012543>,  <42.060146, 44.754341, 53.053349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980618, 45.144226, 53.012543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223175, 0.056324, 0.973150,
		0.954287, 0.216246, 0.206334,
		-0.198818, 0.974713, -0.102010,
		41.920971, 45.436642, 52.981941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178806, 44.939529, 53.659065>,  <42.060146, 44.754341, 53.053349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178806, 44.939529, 53.659065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.014114, 45.277527, 53.522560>,  <41.915298, 45.480328, 53.440655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.014114, 45.277527, 53.522560>,  <42.178806, 44.939529, 53.659065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014114, 45.277527, 53.522560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299969, 0.227946, 0.926315,
		0.860524, 0.483756, 0.159621,
		-0.411726, 0.844997, -0.341265,
		41.890598, 45.531025, 53.420181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355927, 45.437508, 54.151611>,  <42.178806, 44.939529, 53.659065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355927, 45.437508, 54.151611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.038879, 45.588234, 53.959877>,  <41.848652, 45.678669, 53.844837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.038879, 45.588234, 53.959877>,  <42.355927, 45.437508, 54.151611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038879, 45.588234, 53.959877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428869, 0.214256, 0.877591,
		0.433393, 0.901168, -0.008218,
		-0.792617, 0.376817, -0.479340,
		41.801094, 45.701279, 53.816074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110321, 46.058079, 54.517845>,  <42.355927, 45.437508, 54.151611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110321, 46.058079, 54.517845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.769028, 45.992409, 54.319839>,  <41.564251, 45.953007, 54.201035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.769028, 45.992409, 54.319839>,  <42.110321, 46.058079, 54.517845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769028, 45.992409, 54.319839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503860, 0.014521, 0.863663,
		-0.134604, 0.986324, -0.095111,
		-0.853233, -0.164175, -0.495015,
		41.513058, 45.943157, 54.171333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653328, 46.591000, 54.701672>,  <42.110321, 46.058079, 54.517845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653328, 46.591000, 54.701672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.398384, 46.308846, 54.577606>,  <41.245419, 46.139553, 54.503166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.398384, 46.308846, 54.577606>,  <41.653328, 46.591000, 54.701672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398384, 46.308846, 54.577606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628993, 0.243738, 0.738214,
		-0.445130, 0.665596, -0.599033,
		-0.637360, -0.705389, -0.310160,
		41.207176, 46.097229, 54.484558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937775, 46.898350, 54.709312>,  <41.653328, 46.591000, 54.701672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937775, 46.898350, 54.709312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.878242, 46.502876, 54.701805>,  <40.842522, 46.265591, 54.697300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.878242, 46.502876, 54.701805>,  <40.937775, 46.898350, 54.709312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878242, 46.502876, 54.701805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668988, 0.086695, 0.738200,
		-0.728220, 0.122420, -0.674321,
		-0.148831, -0.988685, -0.018765,
		40.833591, 46.206272, 54.696175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229115, 46.768539, 54.679276>,  <40.937775, 46.898350, 54.709312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229115, 46.768539, 54.679276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.393188, 46.445374, 54.848522>,  <40.491631, 46.251472, 54.950069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.393188, 46.445374, 54.848522>,  <40.229115, 46.768539, 54.679276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393188, 46.445374, 54.848522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634120, 0.080790, 0.769002,
		-0.655472, -0.583735, -0.479177,
		0.410181, -0.807915, 0.423113,
		40.516243, 46.202999, 54.975456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666046, 46.338623, 55.014210>,  <40.229115, 46.768539, 54.679276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666046, 46.338623, 55.014210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.001690, 46.214355, 55.192818>,  <40.203075, 46.139797, 55.299980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.001690, 46.214355, 55.192818>,  <39.666046, 46.338623, 55.014210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001690, 46.214355, 55.192818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479303, -0.034127, 0.876985,
		-0.257214, -0.949905, -0.177542,
		0.839112, -0.310669, 0.446515,
		40.253426, 46.121155, 55.326771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217823, 45.659119, 54.775883>,  <39.666046, 46.338623, 55.014210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217823, 45.659119, 54.775883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.841305, 45.599197, 54.654873>,  <38.615395, 45.563244, 54.582268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.841305, 45.599197, 54.654873>,  <39.217823, 45.659119, 54.775883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841305, 45.599197, 54.654873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322514, -0.134344, -0.936982,
		0.099723, -0.979546, 0.174772,
		-0.941297, -0.149805, -0.302520,
		38.558914, 45.554256, 54.564117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231621, 45.095921, 54.333725>,  <39.217823, 45.659119, 54.775883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231621, 45.095921, 54.333725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.883484, 45.264069, 54.231129>,  <38.674603, 45.364960, 54.169571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.883484, 45.264069, 54.231129>,  <39.231621, 45.095921, 54.333725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883484, 45.264069, 54.231129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215997, -0.142189, -0.965985,
		-0.442545, -0.896141, 0.032954,
		-0.870345, 0.420374, -0.256488,
		38.622379, 45.390182, 54.154182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795235, 44.588573, 53.918743>,  <39.231621, 45.095921, 54.333725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795235, 44.588573, 53.918743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.674511, 44.958115, 53.824585>,  <38.602077, 45.179840, 53.768089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.674511, 44.958115, 53.824585>,  <38.795235, 44.588573, 53.918743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674511, 44.958115, 53.824585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239829, -0.165396, -0.956622,
		-0.922710, -0.345170, -0.171649,
		-0.301807, 0.923852, -0.235395,
		38.583969, 45.235271, 53.753967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472141, 44.360977, 53.334629>,  <38.795235, 44.588573, 53.918743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472141, 44.360977, 53.334629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.498810, 44.759872, 53.321541>,  <38.514812, 44.999210, 53.313686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.498810, 44.759872, 53.321541>,  <38.472141, 44.360977, 53.334629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498810, 44.759872, 53.321541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290340, -0.050767, -0.955576,
		-0.954598, 0.054209, -0.292923,
		0.066672, 0.997238, -0.032723,
		38.518810, 45.059044, 53.311726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076187, 44.568188, 52.724266>,  <38.472141, 44.360977, 53.334629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076187, 44.568188, 52.724266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346603, 44.850677, 52.808380>,  <38.508854, 45.020172, 52.858849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346603, 44.850677, 52.808380>,  <38.076187, 44.568188, 52.724266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346603, 44.850677, 52.808380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307195, -0.010717, -0.951586,
		-0.669780, 0.707906, -0.224194,
		0.676037, 0.706225, 0.210287,
		38.549416, 45.062546, 52.871468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
