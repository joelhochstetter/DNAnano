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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.419754, 53.566689, 49.684395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714981, 53.379452, 49.878777>,  <36.892117, 53.267109, 49.995403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714981, 53.379452, 49.878777>,  <36.419754, 53.566689, 49.684395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714981, 53.379452, 49.878777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657164, 0.661976, -0.360449,
		-0.152965, 0.585385, 0.796195,
		0.738063, -0.468095, 0.485953,
		36.936401, 53.239025, 50.024563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969418, 54.027821, 49.898022>,  <36.419754, 53.566689, 49.684395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969418, 54.027821, 49.898022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151009, 53.673233, 49.933952>,  <37.259964, 53.460480, 49.955509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151009, 53.673233, 49.933952>,  <36.969418, 54.027821, 49.898022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151009, 53.673233, 49.933952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887980, 0.441821, -0.127619,
		0.073445, 0.137698, 0.987748,
		0.453980, -0.886473, 0.089823,
		37.287201, 53.407291, 49.960899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551071, 54.187550, 50.351021>,  <36.969418, 54.027821, 49.898022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551071, 54.187550, 50.351021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581860, 53.887531, 50.088264>,  <37.600330, 53.707520, 49.930611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581860, 53.887531, 50.088264>,  <37.551071, 54.187550, 50.351021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581860, 53.887531, 50.088264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925566, 0.298696, -0.232608,
		0.370678, -0.590094, 0.717207,
		0.076967, -0.750046, -0.656892,
		37.604950, 53.662518, 49.891197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163403, 53.801422, 50.561569>,  <37.551071, 54.187550, 50.351021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163403, 53.801422, 50.561569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057308, 53.787914, 50.176132>,  <37.993652, 53.779808, 49.944870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057308, 53.787914, 50.176132>,  <38.163403, 53.801422, 50.561569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057308, 53.787914, 50.176132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807889, 0.537703, -0.241226,
		0.526272, -0.842457, -0.115338,
		-0.265240, -0.033770, -0.963591,
		37.977737, 53.777782, 49.887054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558765, 53.456398, 50.054726>,  <38.163403, 53.801422, 50.561569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558765, 53.456398, 50.054726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417072, 53.734520, 49.804581>,  <38.332058, 53.901394, 49.654495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417072, 53.734520, 49.804581>,  <38.558765, 53.456398, 50.054726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417072, 53.734520, 49.804581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914928, 0.396018, -0.077951,
		0.193454, -0.599773, -0.776433,
		-0.354234, 0.695301, -0.625360,
		38.310802, 53.943111, 49.616974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981907, 53.588566, 49.362190>,  <38.558765, 53.456398, 50.054726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981907, 53.588566, 49.362190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828541, 53.926796, 49.510784>,  <38.736523, 54.129734, 49.599941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828541, 53.926796, 49.510784>,  <38.981907, 53.588566, 49.362190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828541, 53.926796, 49.510784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922505, 0.331264, 0.198113,
		0.044460, 0.418653, -0.907057,
		-0.383416, 0.845573, 0.371482,
		38.713516, 54.180470, 49.622231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089451, 54.262516, 48.943359>,  <38.981907, 53.588566, 49.362190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089451, 54.262516, 48.943359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087334, 54.292576, 49.342224>,  <39.086063, 54.310612, 49.581543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087334, 54.292576, 49.342224>,  <39.089451, 54.262516, 48.943359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087334, 54.292576, 49.342224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910404, 0.412885, -0.026287,
		-0.413687, 0.907677, -0.070601,
		-0.005290, 0.075150, 0.997158,
		39.085747, 54.315121, 49.641373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622574, 54.826939, 49.074139>,  <39.089451, 54.262516, 48.943359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622574, 54.826939, 49.074139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504974, 54.694977, 49.432964>,  <39.434414, 54.615799, 49.648262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504974, 54.694977, 49.432964>,  <39.622574, 54.826939, 49.074139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504974, 54.694977, 49.432964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866754, 0.303572, 0.395704,
		-0.402867, 0.893874, 0.196692,
		-0.293999, -0.329900, 0.897068,
		39.416775, 54.596008, 49.702084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668770, 55.348278, 49.527054>,  <39.622574, 54.826939, 49.074139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668770, 55.348278, 49.527054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662594, 55.035683, 49.776543>,  <39.658890, 54.848125, 49.926235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662594, 55.035683, 49.776543>,  <39.668770, 55.348278, 49.527054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662594, 55.035683, 49.776543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863507, 0.304072, 0.402364,
		-0.504101, 0.544803, 0.670129,
		-0.015442, -0.781492, 0.623724,
		39.657963, 54.801235, 49.963661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569023, 55.565083, 50.219002>,  <39.668770, 55.348278, 49.527054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569023, 55.565083, 50.219002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757118, 55.212425, 50.234894>,  <39.869976, 55.000832, 50.244431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757118, 55.212425, 50.234894>,  <39.569023, 55.565083, 50.219002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757118, 55.212425, 50.234894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682449, 0.391805, 0.617052,
		-0.559588, -0.263046, 0.785919,
		0.470240, -0.881644, 0.039734,
		39.898190, 54.947933, 50.246815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815075, 55.458599, 50.924126>,  <39.569023, 55.565083, 50.219002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815075, 55.458599, 50.924126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044540, 55.221680, 50.697815>,  <40.182220, 55.079529, 50.562031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044540, 55.221680, 50.697815>,  <39.815075, 55.458599, 50.924126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044540, 55.221680, 50.697815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812805, 0.326217, 0.482628,
		-0.101294, -0.736728, 0.668559,
		0.573661, -0.592296, -0.565773,
		40.216640, 55.043991, 50.528084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317558, 54.903137, 51.338188>,  <39.815075, 55.458599, 50.924126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317558, 54.903137, 51.338188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477531, 55.008438, 50.987019>,  <40.573513, 55.071617, 50.776318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477531, 55.008438, 50.987019>,  <40.317558, 54.903137, 51.338188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477531, 55.008438, 50.987019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787508, 0.391366, 0.476092,
		0.468922, -0.881778, -0.050794,
		0.399929, 0.263251, -0.877927,
		40.597511, 55.087414, 50.723640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023563, 54.849022, 51.364731>,  <40.317558, 54.903137, 51.338188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023563, 54.849022, 51.364731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030758, 55.079430, 51.037834>,  <41.035076, 55.217674, 50.841698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030758, 55.079430, 51.037834>,  <41.023563, 54.849022, 51.364731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030758, 55.079430, 51.037834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889290, 0.364371, 0.276400,
		0.456990, -0.731734, -0.505693,
		0.017991, 0.576020, -0.817238,
		41.036156, 55.252235, 50.792664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698868, 54.781494, 51.012932>,  <41.023563, 54.849022, 51.364731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698868, 54.781494, 51.012932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529858, 55.134499, 50.930328>,  <41.428452, 55.346302, 50.880768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529858, 55.134499, 50.930328>,  <41.698868, 54.781494, 51.012932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529858, 55.134499, 50.930328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862926, 0.461378, 0.206128,
		0.277190, -0.091109, -0.956486,
		-0.422522, 0.882513, -0.206510,
		41.403103, 55.399254, 50.868374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106064, 55.236687, 50.653294>,  <41.698868, 54.781494, 51.012932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106064, 55.236687, 50.653294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901146, 55.499203, 50.874866>,  <41.778194, 55.656712, 51.007809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901146, 55.499203, 50.874866>,  <42.106064, 55.236687, 50.653294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901146, 55.499203, 50.874866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829042, 0.546267, 0.119507,
		-0.224161, 0.520452, -0.823943,
		-0.512290, 0.656294, 0.553928,
		41.747459, 55.696091, 51.041046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848782, 55.928604, 50.354412>,  <42.106064, 55.236687, 50.653294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848782, 55.928604, 50.354412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963970, 55.921127, 50.737396>,  <42.033085, 55.916641, 50.967186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963970, 55.921127, 50.737396>,  <41.848782, 55.928604, 50.354412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963970, 55.921127, 50.737396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778139, 0.587334, -0.222572,
		-0.558187, 0.809129, 0.183679,
		0.287970, -0.018691, 0.957457,
		42.050362, 55.915520, 51.024632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070255, 56.676880, 50.570957>,  <41.848782, 55.928604, 50.354412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070255, 56.676880, 50.570957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273033, 56.462906, 50.841320>,  <42.394699, 56.334522, 51.003536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273033, 56.462906, 50.841320>,  <42.070255, 56.676880, 50.570957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273033, 56.462906, 50.841320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795514, 0.592283, -0.127898,
		-0.331911, 0.602531, 0.725804,
		0.506944, -0.534936, 0.675907,
		42.425117, 56.302425, 51.044094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440289, 57.220699, 51.065514>,  <42.070255, 56.676880, 50.570957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440289, 57.220699, 51.065514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589622, 56.858410, 50.985222>,  <42.679222, 56.641037, 50.937046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589622, 56.858410, 50.985222>,  <42.440289, 57.220699, 51.065514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589622, 56.858410, 50.985222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825621, 0.423054, -0.373330,
		0.423054, -0.026354, 0.905721,
		0.373330, -0.905721, -0.200733,
		42.701622, 56.586693, 50.925003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970100, 57.121140, 51.533298>,  <42.440289, 57.220699, 51.065514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970100, 57.121140, 51.533298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024616, 56.929291, 51.186569>,  <43.057323, 56.814182, 50.978531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024616, 56.929291, 51.186569>,  <42.970100, 57.121140, 51.533298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024616, 56.929291, 51.186569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753316, 0.618428, -0.223745,
		0.643383, -0.622500, 0.445591,
		0.136285, -0.479625, -0.866826,
		43.065502, 56.785404, 50.926521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651047, 56.742207, 51.448517>,  <42.970100, 57.121140, 51.533298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651047, 56.742207, 51.448517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511703, 56.828918, 51.083736>,  <43.428097, 56.880943, 50.864868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511703, 56.828918, 51.083736>,  <43.651047, 56.742207, 51.448517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511703, 56.828918, 51.083736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905422, 0.329619, -0.267512,
		0.242606, -0.918890, -0.311101,
		-0.348359, 0.216777, -0.911951,
		43.407196, 56.893951, 50.810150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711414, 57.377888, 51.204659>,  <43.651047, 56.742207, 51.448517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711414, 57.377888, 51.204659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479069, 57.703274, 51.216469>,  <43.339661, 57.898506, 51.223553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479069, 57.703274, 51.216469>,  <43.711414, 57.377888, 51.204659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479069, 57.703274, 51.216469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622206, 0.420322, 0.660446,
		0.524842, 0.401996, -0.750293,
		-0.580862, 0.813467, 0.029521,
		43.304810, 57.947315, 51.225327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079128, 58.000149, 51.118893>,  <43.711414, 57.377888, 51.204659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079128, 58.000149, 51.118893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748417, 58.089508, 51.325401>,  <43.549992, 58.143124, 51.449306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748417, 58.089508, 51.325401>,  <44.079128, 58.000149, 51.118893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748417, 58.089508, 51.325401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550596, 0.509425, 0.661309,
		-0.115262, 0.831010, -0.544185,
		-0.826776, 0.223402, 0.516268,
		43.500385, 58.156528, 51.480282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896969, 58.736073, 51.120132>,  <44.079128, 58.000149, 51.118893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896969, 58.736073, 51.120132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828484, 58.537605, 51.460602>,  <43.787392, 58.418526, 51.664883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828484, 58.537605, 51.460602>,  <43.896969, 58.736073, 51.120132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828484, 58.537605, 51.460602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586177, 0.643090, 0.492779,
		-0.791885, 0.583313, 0.180734,
		-0.171216, -0.496167, 0.851178,
		43.777119, 58.388756, 51.715954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833584, 59.225201, 51.681103>,  <43.896969, 58.736073, 51.120132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833584, 59.225201, 51.681103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943855, 58.876381, 51.842857>,  <44.010017, 58.667088, 51.939911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943855, 58.876381, 51.842857>,  <43.833584, 59.225201, 51.681103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943855, 58.876381, 51.842857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685532, 0.473262, 0.553235,
		-0.673831, 0.124708, 0.728286,
		0.275678, -0.872050, 0.404390,
		44.026558, 58.614765, 51.964176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743362, 59.154701, 52.403652>,  <43.833584, 59.225201, 51.681103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743362, 59.154701, 52.403652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077785, 58.979347, 52.271694>,  <44.278439, 58.874134, 52.192520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077785, 58.979347, 52.271694>,  <43.743362, 59.154701, 52.403652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077785, 58.979347, 52.271694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547425, 0.626437, 0.554889,
		-0.036598, -0.644510, 0.763720,
		0.836054, -0.438387, -0.329894,
		44.328602, 58.847832, 52.172726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241814, 58.928993, 52.904324>,  <43.743362, 59.154701, 52.403652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241814, 58.928993, 52.904324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465706, 59.012375, 52.583515>,  <44.600040, 59.062405, 52.391029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465706, 59.012375, 52.583515>,  <44.241814, 58.928993, 52.904324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465706, 59.012375, 52.583515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618236, 0.539423, 0.571670,
		0.551807, -0.815821, 0.173047,
		0.559726, 0.208468, -0.802027,
		44.633625, 59.074913, 52.342907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018585, 59.013184, 53.031174>,  <44.241814, 58.928993, 52.904324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018585, 59.013184, 53.031174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.972824, 59.248116, 52.710686>,  <44.945366, 59.389076, 52.518394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.972824, 59.248116, 52.710686>,  <45.018585, 59.013184, 53.031174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.972824, 59.248116, 52.710686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408624, 0.762950, 0.500933,
		0.905505, -0.270090, -0.327281,
		-0.114402, 0.587332, -0.801220,
		44.938503, 59.424316, 52.470322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898945, 58.957924, 52.993206>,  <45.018585, 59.013184, 53.031174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898945, 58.957924, 52.993206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745163, 59.248627, 53.220898>,  <45.652893, 59.423050, 53.357513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745163, 59.248627, 53.220898>,  <45.898945, 58.957924, 52.993206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.745163, 59.248627, 53.220898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639045, -0.235469, 0.732240,
		0.666197, 0.645272, -0.373905,
		-0.384451, 0.726759, 0.569227,
		45.629829, 59.466656, 53.391666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.481934, 59.101814, 53.431122>,  <45.898945, 58.957924, 52.993206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.481934, 59.101814, 53.431122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.167175, 59.280495, 53.601414>,  <45.978321, 59.387703, 53.703590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.167175, 59.280495, 53.601414>,  <46.481934, 59.101814, 53.431122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.167175, 59.280495, 53.601414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439285, -0.079016, 0.894866,
		0.433379, 0.891186, -0.134053,
		-0.786900, 0.446704, 0.425729,
		45.931107, 59.414505, 53.729134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.578823, 58.421658, 53.697643>,  <46.481934, 59.101814, 53.431122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.578823, 58.421658, 53.697643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.727863, 58.208038, 54.001213>,  <46.817287, 58.079868, 54.183353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.727863, 58.208038, 54.001213>,  <46.578823, 58.421658, 53.697643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.727863, 58.208038, 54.001213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495723, -0.805894, -0.323719,
		0.784493, -0.255600, -0.565012,
		0.372597, -0.534045, 0.758925,
		46.839642, 58.047825, 54.228889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.973804, 57.818840, 53.496014>,  <46.578823, 58.421658, 53.697643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.973804, 57.818840, 53.496014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807411, 57.762550, 53.855381>,  <46.707577, 57.728775, 54.071003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807411, 57.762550, 53.855381>,  <46.973804, 57.818840, 53.496014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.807411, 57.762550, 53.855381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301227, -0.910855, -0.282145,
		0.858035, -0.387995, 0.336507,
		-0.415980, -0.140726, 0.898419,
		46.682617, 57.720333, 54.124908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.118534, 57.063751, 53.660942>,  <46.973804, 57.818840, 53.496014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.118534, 57.063751, 53.660942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789520, 57.170254, 53.861954>,  <46.592110, 57.234154, 53.982563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789520, 57.170254, 53.861954>,  <47.118534, 57.063751, 53.660942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.789520, 57.170254, 53.861954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486686, -0.786705, -0.379779,
		0.294226, -0.556959, 0.776678,
		-0.822537, 0.266258, 0.502533,
		46.542759, 57.250130, 54.012714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854553, 56.525627, 54.115654>,  <47.118534, 57.063751, 53.660942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854553, 56.525627, 54.115654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544189, 56.766571, 54.040688>,  <46.357971, 56.911137, 53.995708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544189, 56.766571, 54.040688>,  <46.854553, 56.525627, 54.115654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.544189, 56.766571, 54.040688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516012, -0.776924, -0.360721,
		-0.362893, -0.183178, 0.913649,
		-0.775913, 0.602357, -0.187418,
		46.311417, 56.947277, 53.984463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472054, 56.237534, 53.741570>,  <46.854553, 56.525627, 54.115654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472054, 56.237534, 53.741570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.366024, 56.231865, 53.355919>,  <47.302406, 56.228462, 53.124531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.366024, 56.231865, 53.355919>,  <47.472054, 56.237534, 53.741570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.366024, 56.231865, 53.355919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957849, 0.118693, 0.261607,
		0.110726, 0.992829, -0.045042,
		-0.265077, -0.014176, -0.964123,
		47.286499, 56.227612, 53.066681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.015419, 56.361900, 54.298008>,  <47.472054, 56.237534, 53.741570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.015419, 56.361900, 54.298008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.046459, 56.514648, 54.666389>,  <48.065083, 56.606297, 54.887417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.046459, 56.514648, 54.666389>,  <48.015419, 56.361900, 54.298008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.046459, 56.514648, 54.666389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961695, 0.214921, -0.170150,
		-0.262908, 0.898878, -0.350567,
		0.077600, 0.381872, 0.920951,
		48.069740, 56.629211, 54.942677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.404144, 56.992146, 54.327438>,  <48.015419, 56.361900, 54.298008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.404144, 56.992146, 54.327438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.447300, 56.803764, 54.677654>,  <48.473194, 56.690735, 54.887783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.447300, 56.803764, 54.677654>,  <48.404144, 56.992146, 54.327438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.447300, 56.803764, 54.677654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964833, 0.261942, 0.022001,
		-0.239701, 0.842372, 0.482652,
		0.107894, -0.470952, 0.875536,
		48.479668, 56.662479, 54.940315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.662575, 57.369164, 54.927608>,  <48.404144, 56.992146, 54.327438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.662575, 57.369164, 54.927608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.825333, 57.013500, 55.011353>,  <48.922985, 56.800102, 55.061600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.825333, 57.013500, 55.011353>,  <48.662575, 57.369164, 54.927608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.825333, 57.013500, 55.011353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892546, 0.435767, 0.116058,
		-0.194425, 0.139637, 0.970928,
		0.406892, -0.889162, 0.209356,
		48.947399, 56.746750, 55.074158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.942268, 57.393040, 55.534237>,  <48.662575, 57.369164, 54.927608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.942268, 57.393040, 55.534237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.131229, 57.145485, 55.283218>,  <49.244606, 56.996952, 55.132607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.131229, 57.145485, 55.283218>,  <48.942268, 57.393040, 55.534237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.131229, 57.145485, 55.283218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806531, 0.590680, 0.024612,
		0.355448, -0.517764, 0.778188,
		0.472403, -0.618884, -0.627549,
		49.272949, 56.959820, 55.094955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.724163, 57.468781, 55.652222>,  <48.942268, 57.393040, 55.534237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.724163, 57.468781, 55.652222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.644661, 57.338474, 55.282494>,  <49.596958, 57.260292, 55.060658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.644661, 57.338474, 55.282494>,  <49.724163, 57.468781, 55.652222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.644661, 57.338474, 55.282494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801535, 0.488676, -0.344584,
		0.563948, -0.809365, 0.163984,
		-0.198759, -0.325766, -0.924322,
		49.585033, 57.240746, 55.005196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.180676, 56.912598, 55.414902>,  <49.724163, 57.468781, 55.652222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.180676, 56.912598, 55.414902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.008995, 57.205154, 55.202919>,  <49.905987, 57.380688, 55.075729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.008995, 57.205154, 55.202919>,  <50.180676, 56.912598, 55.414902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.008995, 57.205154, 55.202919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868378, 0.495523, -0.019423,
		0.248400, -0.468538, -0.847803,
		-0.429206, 0.731389, -0.529956,
		49.880234, 57.424572, 55.043934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.834579, 56.578526, 55.253326>,  <50.180676, 56.912598, 55.414902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.834579, 56.578526, 55.253326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.961765, 56.632114, 55.628761>,  <51.038078, 56.664268, 55.854023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.961765, 56.632114, 55.628761>,  <50.834579, 56.578526, 55.253326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.961765, 56.632114, 55.628761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869102, 0.354438, -0.345016,
		-0.378893, 0.925433, -0.003733,
		0.317966, 0.133969, 0.938589,
		51.057156, 56.672306, 55.910339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.572006, 56.865288, 55.192127>,  <50.834579, 56.578526, 55.253326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.572006, 56.865288, 55.192127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.514820, 56.819664, 55.585381>,  <51.480507, 56.792290, 55.821331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.514820, 56.819664, 55.585381>,  <51.572006, 56.865288, 55.192127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.514820, 56.819664, 55.585381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965492, 0.202405, 0.163883,
		-0.217684, 0.972637, 0.081190,
		-0.142966, -0.114063, 0.983133,
		51.471931, 56.785446, 55.880322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.887753, 57.466599, 55.435394>,  <51.572006, 56.865288, 55.192127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.887753, 57.466599, 55.435394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.859459, 57.151260, 55.679855>,  <51.842484, 56.962055, 55.826530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.859459, 57.151260, 55.679855>,  <51.887753, 57.466599, 55.435394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.859459, 57.151260, 55.679855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984261, 0.044309, 0.171078,
		-0.161948, 0.613632, 0.772806,
		-0.070737, -0.788348, 0.611149,
		51.838238, 56.914757, 55.863201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.291264, 57.621086, 56.033470>,  <51.887753, 57.466599, 55.435394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.291264, 57.621086, 56.033470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.264957, 57.222603, 56.010712>,  <52.249172, 56.983513, 55.997055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.264957, 57.222603, 56.010712>,  <52.291264, 57.621086, 56.033470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.264957, 57.222603, 56.010712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956523, -0.079179, 0.280704,
		-0.284146, -0.035965, 0.958106,
		-0.065766, -0.996211, -0.056900,
		52.245228, 56.923740, 55.993641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.528912, 57.217716, 56.666763>,  <52.291264, 57.621086, 56.033470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.528912, 57.217716, 56.666763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.593300, 57.026718, 56.321259>,  <52.631931, 56.912117, 56.113956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.593300, 57.026718, 56.321259>,  <52.528912, 57.217716, 56.666763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.593300, 57.026718, 56.321259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967604, -0.096125, 0.233457,
		-0.194504, -0.873359, 0.446555,
		0.160966, -0.477497, -0.863763,
		52.641590, 56.883469, 56.062130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.722343, 56.510700, 56.752739>,  <52.528912, 57.217716, 56.666763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.722343, 56.510700, 56.752739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.872749, 56.661762, 56.414276>,  <52.962994, 56.752399, 56.211197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.872749, 56.661762, 56.414276>,  <52.722343, 56.510700, 56.752739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.872749, 56.661762, 56.414276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917404, -0.023310, 0.397274,
		0.130308, -0.925653, -0.355226,
		0.376018, 0.377654, -0.846161,
		52.985554, 56.775059, 56.160427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.241047, 56.193268, 56.618774>,  <52.722343, 56.510700, 56.752739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.241047, 56.193268, 56.618774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.319450, 56.527382, 56.413300>,  <53.366493, 56.727852, 56.290016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.319450, 56.527382, 56.413300>,  <53.241047, 56.193268, 56.618774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.319450, 56.527382, 56.413300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952877, -0.038555, 0.300898,
		0.231531, -0.548460, -0.803483,
		0.196009, 0.835287, -0.513688,
		53.378254, 56.777969, 56.259193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.837505, 56.116043, 56.061321>,  <53.241047, 56.193268, 56.618774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.837505, 56.116043, 56.061321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.812527, 56.467632, 56.250427>,  <53.797539, 56.678585, 56.363892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.812527, 56.467632, 56.250427>,  <53.837505, 56.116043, 56.061321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.812527, 56.467632, 56.250427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897453, -0.157799, 0.411919,
		0.436668, 0.450006, -0.778984,
		-0.062443, 0.878973, 0.472765,
		53.793793, 56.731323, 56.392258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.445461, 56.566494, 55.888386>,  <53.837505, 56.116043, 56.061321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.445461, 56.566494, 55.888386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.275894, 56.638939, 56.243347>,  <54.174152, 56.682407, 56.456326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.275894, 56.638939, 56.243347>,  <54.445461, 56.566494, 55.888386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.275894, 56.638939, 56.243347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862490, -0.218303, 0.456569,
		0.276416, 0.958927, -0.063668,
		-0.423917, 0.181116, 0.887407,
		54.148720, 56.693275, 56.509571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.761425, 57.146648, 56.387981>,  <54.445461, 56.566494, 55.888386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.761425, 57.146648, 56.387981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.596878, 56.844341, 56.591782>,  <54.498150, 56.662956, 56.714062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.596878, 56.844341, 56.591782>,  <54.761425, 57.146648, 56.387981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.596878, 56.844341, 56.591782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841805, -0.100694, 0.530306,
		-0.349486, 0.647049, 0.677633,
		-0.411368, -0.755770, 0.509498,
		54.473469, 56.617611, 56.744633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.757492, 57.152695, 57.186867>,  <54.761425, 57.146648, 56.387981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.757492, 57.152695, 57.186867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.758690, 56.770447, 57.069031>,  <54.759407, 56.541100, 56.998329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.758690, 56.770447, 57.069031>,  <54.757492, 57.152695, 57.186867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.758690, 56.770447, 57.069031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800747, -0.174169, 0.573122,
		-0.598995, -0.237610, 0.764687,
		0.002994, -0.955618, -0.294592,
		54.759586, 56.483761, 56.980652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.773212, 56.678490, 57.771378>,  <54.757492, 57.152695, 57.186867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.773212, 56.678490, 57.771378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.924080, 56.486034, 57.454834>,  <55.014599, 56.370560, 57.264908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.924080, 56.486034, 57.454834>,  <54.773212, 56.678490, 57.771378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.924080, 56.486034, 57.454834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823774, -0.216210, 0.524069,
		-0.423252, -0.849561, 0.314807,
		0.377165, -0.481143, -0.791358,
		55.037228, 56.341690, 57.217426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.076962, 56.115932, 58.150177>,  <54.773212, 56.678490, 57.771378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.076962, 56.115932, 58.150177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.257149, 56.122032, 57.793114>,  <55.365261, 56.125690, 57.578876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.257149, 56.122032, 57.793114>,  <55.076962, 56.115932, 58.150177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.257149, 56.122032, 57.793114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826990, -0.383867, 0.410773,
		-0.336399, -0.923262, -0.185532,
		0.450471, 0.015250, -0.892661,
		55.392288, 56.126606, 57.525314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.546257, 55.523319, 58.040989>,  <55.076962, 56.115932, 58.150177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.546257, 55.523319, 58.040989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.701378, 55.800533, 57.797905>,  <55.794449, 55.966862, 57.652054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.701378, 55.800533, 57.797905>,  <55.546257, 55.523319, 58.040989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.701378, 55.800533, 57.797905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921738, -0.293702, 0.253257,
		-0.002969, -0.658362, -0.752695,
		0.387803, 0.693036, -0.607709,
		55.817719, 56.008446, 57.615593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.072056, 55.196804, 57.556480>,  <55.546257, 55.523319, 58.040989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.072056, 55.196804, 57.556480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.142723, 55.582157, 57.637154>,  <56.185123, 55.813370, 57.685558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.142723, 55.582157, 57.637154>,  <56.072056, 55.196804, 57.556480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.142723, 55.582157, 57.637154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915723, -0.236009, 0.325193,
		0.360886, 0.127237, -0.923889,
		0.176670, 0.963385, 0.201686,
		56.195724, 55.871174, 57.697659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.630245, 55.083305, 58.006798>,  <56.072056, 55.196804, 57.556480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.630245, 55.083305, 58.006798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.586914, 55.460968, 57.882324>,  <56.560917, 55.687565, 57.807640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.586914, 55.460968, 57.882324>,  <56.630245, 55.083305, 58.006798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.586914, 55.460968, 57.882324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954267, 0.186497, 0.233654,
		0.278641, -0.271639, -0.921179,
		-0.108327, 0.944156, -0.311182,
		56.554417, 55.744213, 57.788971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.203938, 55.263584, 57.615082>,  <56.630245, 55.083305, 58.006798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.203938, 55.263584, 57.615082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.087906, 55.605446, 57.787323>,  <57.018288, 55.810562, 57.890667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.087906, 55.605446, 57.787323>,  <57.203938, 55.263584, 57.615082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.087906, 55.605446, 57.787323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954408, 0.291470, 0.064430,
		-0.070443, 0.429661, -0.900238,
		-0.290075, 0.854656, 0.430604,
		57.000885, 55.861843, 57.916504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.469002, 55.871056, 57.293198>,  <57.203938, 55.263584, 57.615082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.469002, 55.871056, 57.293198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.437157, 55.954460, 57.683105>,  <57.418049, 56.004501, 57.917049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.437157, 55.954460, 57.683105>,  <57.469002, 55.871056, 57.293198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.437157, 55.954460, 57.683105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966232, 0.256550, 0.024042,
		-0.245066, 0.943772, -0.221895,
		-0.079617, 0.208510, 0.974774,
		57.413273, 56.017014, 57.975536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.940929, 56.460037, 57.378170>,  <57.469002, 55.871056, 57.293198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.940929, 56.460037, 57.378170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.885933, 56.297668, 57.739571>,  <57.852936, 56.200249, 57.956413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.885933, 56.297668, 57.739571>,  <57.940929, 56.460037, 57.378170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.885933, 56.297668, 57.739571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989331, -0.011930, 0.145197,
		-0.048159, 0.913830, 0.403231,
		-0.137496, -0.405921, 0.903506,
		57.844685, 56.175892, 58.010624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.968616, 56.920006, 58.051670>,  <57.940929, 56.460037, 57.378170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.968616, 56.920006, 58.051670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.079239, 56.552330, 58.163818>,  <58.145611, 56.331726, 58.231106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.079239, 56.552330, 58.163818>,  <57.968616, 56.920006, 58.051670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.079239, 56.552330, 58.163818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915674, 0.340589, 0.213401,
		-0.291647, 0.197711, 0.935870,
		0.276556, -0.919189, 0.280371,
		58.162205, 56.276573, 58.247929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.330444, 56.791695, 58.786007>,  <57.968616, 56.920006, 58.051670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.330444, 56.791695, 58.786007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.473473, 56.536701, 58.513023>,  <58.559292, 56.383705, 58.349232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.473473, 56.536701, 58.513023>,  <58.330444, 56.791695, 58.786007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.473473, 56.536701, 58.513023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909566, 0.072046, 0.409266,
		-0.211732, -0.767087, 0.605596,
		0.357573, -0.637484, -0.682462,
		58.580746, 56.345455, 58.308285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.803665, 56.264679, 59.154785>,  <58.330444, 56.791695, 58.786007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.803665, 56.264679, 59.154785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.908836, 56.350651, 58.778557>,  <58.971939, 56.402233, 58.552818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.908836, 56.350651, 58.778557>,  <58.803665, 56.264679, 59.154785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.908836, 56.350651, 58.778557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960168, 0.037289, 0.276922,
		0.094592, -0.975917, -0.196567,
		0.262923, 0.214932, -0.940572,
		58.987713, 56.415131, 58.496384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.383183, 56.455837, 59.597816>,  <58.803665, 56.264679, 59.154785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.383183, 56.455837, 59.597816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.288338, 56.834782, 59.683868>,  <59.231430, 57.062149, 59.735500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.288338, 56.834782, 59.683868>,  <59.383183, 56.455837, 59.597816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.288338, 56.834782, 59.683868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918812, 0.146770, 0.366393,
		0.315533, 0.284538, -0.905250,
		-0.237116, 0.947363, 0.215126,
		59.217201, 57.118992, 59.748405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.926765, 56.833305, 59.420700>,  <59.383183, 56.455837, 59.597816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.926765, 56.833305, 59.420700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.722023, 57.078743, 59.661201>,  <59.599178, 57.226006, 59.805504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.722023, 57.078743, 59.661201>,  <59.926765, 56.833305, 59.420700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.722023, 57.078743, 59.661201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846024, 0.481551, 0.228805,
		-0.149141, 0.625791, -0.765600,
		-0.511860, 0.613592, 0.601253,
		59.568466, 57.262821, 59.841576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.212734, 57.381981, 59.157864>,  <59.926765, 56.833305, 59.420700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.212734, 57.381981, 59.157864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.084373, 57.404823, 59.536018>,  <60.007359, 57.418530, 59.762913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.084373, 57.404823, 59.536018>,  <60.212734, 57.381981, 59.157864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.084373, 57.404823, 59.536018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918392, 0.262716, 0.295867,
		-0.231473, 0.963182, -0.136750,
		-0.320900, 0.057105, 0.945390,
		59.988102, 57.421955, 59.819633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.191174, 58.098145, 59.484684>,  <60.212734, 57.381981, 59.157864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.191174, 58.098145, 59.484684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.264107, 57.824741, 59.767403>,  <60.307869, 57.660698, 59.937035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.264107, 57.824741, 59.767403>,  <60.191174, 58.098145, 59.484684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.264107, 57.824741, 59.767403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953462, 0.298477, 0.042674,
		-0.240132, 0.666126, 0.706125,
		0.182335, -0.683511, 0.706800,
		60.318806, 57.619690, 59.979443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.612621, 58.486938, 59.913303>,  <60.191174, 58.098145, 59.484684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.612621, 58.486938, 59.913303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.687042, 58.117672, 60.047859>,  <60.731693, 57.896114, 60.128593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.687042, 58.117672, 60.047859>,  <60.612621, 58.486938, 59.913303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.687042, 58.117672, 60.047859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912810, 0.289077, 0.288465,
		-0.363542, 0.253389, 0.896455,
		0.186050, -0.923162, 0.336387,
		60.742859, 57.840725, 60.148777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.934269, 58.491440, 60.597218>,  <60.612621, 58.486938, 59.913303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.934269, 58.491440, 60.597218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.038857, 58.155796, 60.406418>,  <61.101608, 57.954411, 60.291939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.038857, 58.155796, 60.406418>,  <60.934269, 58.491440, 60.597218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.038857, 58.155796, 60.406418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957552, 0.163372, 0.237496,
		-0.121357, -0.518850, 0.846208,
		0.261471, -0.839109, -0.476999,
		61.117298, 57.904064, 60.263317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.410698, 58.092934, 60.932850>,  <60.934269, 58.491440, 60.597218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.410698, 58.092934, 60.932850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.492722, 57.939194, 60.572800>,  <61.541935, 57.846951, 60.356770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.492722, 57.939194, 60.572800>,  <61.410698, 58.092934, 60.932850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.492722, 57.939194, 60.572800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969419, -0.046936, 0.240881,
		-0.134831, -0.921995, 0.362968,
		0.205055, -0.384347, -0.900128,
		61.554237, 57.823891, 60.302761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.977524, 57.751926, 61.014774>,  <61.410698, 58.092934, 60.932850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.977524, 57.751926, 61.014774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.985558, 57.766319, 60.615112>,  <61.990379, 57.774956, 60.375317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.985558, 57.766319, 60.615112>,  <61.977524, 57.751926, 61.014774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.985558, 57.766319, 60.615112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984152, -0.176817, 0.013416,
		-0.176184, -0.983586, -0.038961,
		0.020084, 0.035980, -0.999151,
		61.991585, 57.777115, 60.315369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.363838, 57.194714, 60.737259>,  <61.977524, 57.751926, 61.014774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.363838, 57.194714, 60.737259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.366821, 57.511898, 60.493568>,  <62.368610, 57.702209, 60.347355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.366821, 57.511898, 60.493568>,  <62.363838, 57.194714, 60.737259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.366821, 57.511898, 60.493568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999703, -0.020051, -0.013853,
		-0.023201, -0.608938, -0.792878,
		0.007462, 0.792964, -0.609222,
		62.369061, 57.749786, 60.310802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.969074, 56.981937, 60.413990>,  <62.363838, 57.194714, 60.737259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.969074, 56.981937, 60.413990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.887230, 57.368958, 60.354691>,  <62.838123, 57.601170, 60.319111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.887230, 57.368958, 60.354691>,  <62.969074, 56.981937, 60.413990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.887230, 57.368958, 60.354691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972615, 0.218024, 0.080536,
		0.110244, -0.127709, -0.985666,
		-0.204613, 0.967552, -0.148247,
		62.825848, 57.659222, 60.310215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.246269, 57.241322, 59.815815>,  <62.969074, 56.981937, 60.413990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.246269, 57.241322, 59.815815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.215736, 57.515495, 60.105461>,  <63.197418, 57.680000, 60.279251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.215736, 57.515495, 60.105461>,  <63.246269, 57.241322, 59.815815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.215736, 57.515495, 60.105461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972692, 0.210838, -0.097039,
		-0.219186, 0.696939, -0.682813,
		-0.076333, 0.685437, 0.724120,
		63.192837, 57.721127, 60.322697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.458385, 57.889179, 59.468723>,  <63.246269, 57.241322, 59.815815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.458385, 57.889179, 59.468723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.353539, 58.273548, 59.504333>,  <63.290630, 58.504169, 59.525700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.353539, 58.273548, 59.504333>,  <63.458385, 57.889179, 59.468723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.353539, 58.273548, 59.504333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959832, 0.269157, -0.079231,
		-0.100096, 0.064680, -0.992873,
		-0.262115, 0.960922, 0.089023,
		63.274902, 58.561825, 59.531040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.872597, 58.267704, 58.983212>,  <63.458385, 57.889179, 59.468723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.872597, 58.267704, 58.983212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.784058, 58.558159, 59.243591>,  <63.730934, 58.732433, 59.399818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.784058, 58.558159, 59.243591>,  <63.872597, 58.267704, 58.983212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.784058, 58.558159, 59.243591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962462, 0.270180, 0.025883,
		-0.157079, 0.632240, -0.758682,
		-0.221345, 0.726137, 0.650947,
		63.717655, 58.776001, 59.438877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.128654, 58.897095, 58.677494>,  <63.872597, 58.267704, 58.983212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.128654, 58.897095, 58.677494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.157150, 58.964256, 59.070786>,  <64.174248, 59.004551, 59.306759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.157150, 58.964256, 59.070786>,  <64.128654, 58.897095, 58.677494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.157150, 58.964256, 59.070786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929086, 0.347500, -0.126660,
		-0.362937, 0.922526, -0.131237,
		0.071242, 0.167900, 0.983226,
		64.178520, 59.014626, 59.365753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.404007, 59.505688, 58.846085>,  <64.128654, 58.897095, 58.677494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.404007, 59.505688, 58.846085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.476326, 59.258377, 59.152039>,  <64.519714, 59.109989, 59.335609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.476326, 59.258377, 59.152039>,  <64.404007, 59.505688, 58.846085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.476326, 59.258377, 59.152039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940548, 0.336059, 0.049327,
		-0.287544, 0.710492, 0.642277,
		0.180796, -0.618276, 0.764884,
		64.530563, 59.072895, 59.381504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.712105, 59.881001, 59.281605>,  <64.404007, 59.505688, 58.846085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.712105, 59.881001, 59.281605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.818726, 59.504700, 59.365456>,  <64.882698, 59.278919, 59.415768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.818726, 59.504700, 59.365456>,  <64.712105, 59.881001, 59.281605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.818726, 59.504700, 59.365456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954019, 0.288459, 0.081475,
		-0.137116, 0.178271, 0.974381,
		0.266545, -0.940750, 0.209626,
		64.898689, 59.222473, 59.428345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.222313, 59.907078, 59.821949>,  <64.712105, 59.881001, 59.281605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.222313, 59.907078, 59.821949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.265541, 59.540901, 59.666878>,  <65.291481, 59.321198, 59.573837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.265541, 59.540901, 59.666878>,  <65.222313, 59.907078, 59.821949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.265541, 59.540901, 59.666878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991532, 0.127497, -0.024661,
		0.072003, -0.381728, 0.921466,
		0.108070, -0.915439, -0.387676,
		65.297958, 59.266270, 59.550575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.838318, 59.715172, 59.983845>,  <65.222313, 59.907078, 59.821949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.838318, 59.715172, 59.983845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.790962, 59.376076, 59.777031>,  <65.762550, 59.172619, 59.652943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.790962, 59.376076, 59.777031>,  <65.838318, 59.715172, 59.983845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.790962, 59.376076, 59.777031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990192, -0.139694, 0.002319,
		-0.074193, -0.511693, 0.855959,
		-0.118385, -0.847736, -0.517039,
		65.755447, 59.121754, 59.621918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.105827, 59.196762, 60.497795>,  <65.838318, 59.715172, 59.983845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.105827, 59.196762, 60.497795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.113480, 59.095085, 60.111008>,  <66.118073, 59.034081, 59.878937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.113480, 59.095085, 60.111008>,  <66.105827, 59.196762, 60.497795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.113480, 59.095085, 60.111008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911542, -0.392902, 0.121323,
		-0.410761, -0.883750, 0.224188,
		0.019135, -0.254192, -0.966965,
		66.119217, 59.018829, 59.820919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.297630, 58.415478, 60.407494>,  <66.105827, 59.196762, 60.497795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.297630, 58.415478, 60.407494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.404015, 58.664505, 60.113098>,  <66.467842, 58.813923, 59.936462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.404015, 58.664505, 60.113098>,  <66.297630, 58.415478, 60.407494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.404015, 58.664505, 60.113098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946390, -0.313833, 0.076521,
		-0.183336, -0.716879, -0.672660,
		0.265959, 0.622570, -0.735984,
		66.483803, 58.851276, 59.892303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.667336, 58.029884, 59.853336>,  <66.297630, 58.415478, 60.407494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.667336, 58.029884, 59.853336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.779884, 58.402359, 59.946045>,  <66.847412, 58.625843, 60.001671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.779884, 58.402359, 59.946045>,  <66.667336, 58.029884, 59.853336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.779884, 58.402359, 59.946045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952841, -0.299731, 0.047498,
		0.113698, 0.207474, -0.971611,
		0.281367, 0.931191, 0.231769,
		66.864296, 58.681717, 60.015575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.341415, 58.142769, 59.549591>,  <66.667336, 58.029884, 59.853336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.341415, 58.142769, 59.549591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.294624, 58.415619, 59.838318>,  <67.266548, 58.579327, 60.011555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.294624, 58.415619, 59.838318>,  <67.341415, 58.142769, 59.549591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.294624, 58.415619, 59.838318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923776, -0.192109, 0.331257,
		0.364627, 0.705551, -0.607656,
		-0.116983, 0.682123, 0.721819,
		67.259529, 58.620255, 60.054863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.820633, 58.692173, 59.621464>,  <67.341415, 58.142769, 59.549591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.820633, 58.692173, 59.621464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.696198, 58.613396, 59.993362>,  <67.621536, 58.566132, 60.216503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.696198, 58.613396, 59.993362>,  <67.820633, 58.692173, 59.621464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.696198, 58.613396, 59.993362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950333, -0.054812, 0.306371,
		-0.009376, 0.978882, 0.204211,
		-0.311094, -0.196941, 0.929750,
		67.602867, 58.554314, 60.272285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.090553, 59.222912, 60.120300>,  <67.820633, 58.692173, 59.621464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.090553, 59.222912, 60.120300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.040833, 58.845116, 60.241951>,  <68.011002, 58.618439, 60.314941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.040833, 58.845116, 60.241951>,  <68.090553, 59.222912, 60.120300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.040833, 58.845116, 60.241951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991830, -0.127122, 0.010614,
		0.028637, 0.302961, 0.952573,
		-0.124309, -0.944486, 0.304126,
		68.003540, 58.561771, 60.333187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.406578, 59.124157, 60.755394>,  <68.090553, 59.222912, 60.120300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.406578, 59.124157, 60.755394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.394890, 58.804028, 60.515854>,  <68.387878, 58.611950, 60.372128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.394890, 58.804028, 60.515854>,  <68.406578, 59.124157, 60.755394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.394890, 58.804028, 60.515854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999092, -0.041958, 0.007332,
		-0.030994, -0.598095, 0.800826,
		-0.029216, -0.800326, -0.598853,
		68.386124, 58.563931, 60.336197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.757454, 58.581562, 61.020550>,  <68.406578, 59.124157, 60.755394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.757454, 58.581562, 61.020550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.793747, 58.502083, 60.630211>,  <68.815521, 58.454395, 60.396008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.793747, 58.502083, 60.630211>,  <68.757454, 58.581562, 61.020550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.793747, 58.502083, 60.630211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985001, -0.126504, 0.117341,
		-0.146765, -0.971862, 0.184241,
		0.090732, -0.198699, -0.975852,
		68.820969, 58.442474, 60.337456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.993713, 57.816433, 60.693478>,  <68.757454, 58.581562, 61.020550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.993713, 57.816433, 60.693478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.105667, 58.135159, 60.479279>,  <69.172844, 58.326393, 60.350761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.105667, 58.135159, 60.479279>,  <68.993713, 57.816433, 60.693478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.105667, 58.135159, 60.479279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942183, -0.120928, 0.312517,
		0.184260, -0.592006, -0.784587,
		0.279890, 0.796810, -0.535496,
		69.189636, 58.374203, 60.318630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.375954, 57.797054, 59.967609>,  <68.993713, 57.816433, 60.693478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.375954, 57.797054, 59.967609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.469604, 58.113670, 60.193405>,  <69.525795, 58.303638, 60.328884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.469604, 58.113670, 60.193405>,  <69.375954, 57.797054, 59.967609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.469604, 58.113670, 60.193405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955429, -0.294729, 0.017014,
		0.179840, 0.535350, -0.825262,
		0.234121, 0.791540, 0.564493,
		69.539841, 58.351131, 60.362755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.993362, 58.081944, 59.670868>,  <69.375954, 57.797054, 59.967609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.993362, 58.081944, 59.670868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.990379, 58.208500, 60.050308>,  <69.988586, 58.284431, 60.277973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.990379, 58.208500, 60.050308>,  <69.993362, 58.081944, 59.670868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.990379, 58.208500, 60.050308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885106, -0.439346, 0.153502,
		0.465330, 0.840758, -0.276756,
		-0.007466, 0.316388, 0.948601,
		69.988136, 58.303417, 60.334888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.562088, 58.537231, 59.860439>,  <69.993362, 58.081944, 59.670868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.562088, 58.537231, 59.860439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.418167, 58.311359, 60.157539>,  <70.331818, 58.175835, 60.335800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.418167, 58.311359, 60.157539>,  <70.562088, 58.537231, 59.860439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.418167, 58.311359, 60.157539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833374, -0.552469, -0.016317,
		0.419559, 0.613117, 0.669371,
		-0.359803, -0.564683, 0.742749,
		70.310226, 58.141956, 60.380363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.032074, 58.649399, 60.309612>,  <70.562088, 58.537231, 59.860439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.032074, 58.649399, 60.309612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.840134, 58.303699, 60.370041>,  <70.724968, 58.096279, 60.406300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.840134, 58.303699, 60.370041>,  <71.032074, 58.649399, 60.309612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.840134, 58.303699, 60.370041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875423, -0.483052, 0.017180,
		0.058130, 0.140499, 0.988373,
		-0.479850, -0.864246, 0.151076,
		70.696182, 58.044426, 60.415363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.277275, 58.353905, 60.986191>,  <71.032074, 58.649399, 60.309612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.277275, 58.353905, 60.986191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.146706, 58.079063, 60.726547>,  <71.068367, 57.914158, 60.570763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.146706, 58.079063, 60.726547>,  <71.277275, 58.353905, 60.986191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.146706, 58.079063, 60.726547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837372, -0.528764, 0.138628,
		-0.438477, -0.498295, 0.747958,
		-0.326415, -0.687104, -0.649108,
		71.048782, 57.872932, 60.531815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.142059, 57.619022, 61.264057>,  <71.277275, 58.353905, 60.986191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.142059, 57.619022, 61.264057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.288460, 57.647327, 60.892891>,  <71.376305, 57.664310, 60.670193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.288460, 57.647327, 60.892891>,  <71.142059, 57.619022, 61.264057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.288460, 57.647327, 60.892891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823186, -0.489686, 0.287354,
		-0.434053, -0.869022, -0.237482,
		0.366009, 0.070765, -0.927917,
		71.398262, 57.668556, 60.614517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.397316, 56.981503, 60.916855>,  <71.142059, 57.619022, 61.264057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.397316, 56.981503, 60.916855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.615005, 57.287121, 60.778259>,  <71.745621, 57.470493, 60.695103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.615005, 57.287121, 60.778259>,  <71.397316, 56.981503, 60.916855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.615005, 57.287121, 60.778259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837887, -0.474286, 0.270183,
		0.042096, -0.437360, -0.898301,
		0.544219, 0.764048, -0.346492,
		71.778275, 57.516335, 60.674313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.911278, 56.752621, 60.433735>,  <71.397316, 56.981503, 60.916855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.911278, 56.752621, 60.433735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.060448, 57.098438, 60.568489>,  <72.149948, 57.305927, 60.649342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.060448, 57.098438, 60.568489>,  <71.911278, 56.752621, 60.433735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.060448, 57.098438, 60.568489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893485, -0.432518, 0.120883,
		0.250216, 0.255918, -0.933755,
		0.372929, 0.864543, 0.336882,
		72.172325, 57.357800, 60.669552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.620644, 56.777836, 60.234894>,  <71.911278, 56.752621, 60.433735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.620644, 56.777836, 60.234894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.602348, 57.071056, 60.506348>,  <72.591370, 57.246986, 60.669220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.602348, 57.071056, 60.506348>,  <72.620644, 56.777836, 60.234894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.602348, 57.071056, 60.506348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987094, -0.071201, 0.143440,
		0.153468, 0.676441, -0.720330,
		-0.045740, 0.733047, 0.678638,
		72.588623, 57.290970, 60.709938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.907501, 57.565170, 60.135643>,  <72.620644, 56.777836, 60.234894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.907501, 57.565170, 60.135643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.941261, 57.410923, 60.503159>,  <72.961517, 57.318375, 60.723667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.941261, 57.410923, 60.503159>,  <72.907501, 57.565170, 60.135643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.941261, 57.410923, 60.503159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993384, -0.039516, -0.107831,
		0.077889, 0.921812, 0.379732,
		0.084394, -0.385619, 0.918791,
		72.966583, 57.295238, 60.778797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.216599, 58.022587, 60.564911>,  <72.907501, 57.565170, 60.135643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.216599, 58.022587, 60.564911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.339020, 57.675331, 60.721199>,  <73.412476, 57.466976, 60.814972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.339020, 57.675331, 60.721199>,  <73.216599, 58.022587, 60.564911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.339020, 57.675331, 60.721199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908577, 0.143812, -0.392181,
		0.284277, 0.475029, 0.832787,
		0.306062, -0.868139, 0.390718,
		73.430840, 57.414890, 60.838413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
