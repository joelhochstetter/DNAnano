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
	<2.024908, 1.556859, 0.026735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.203682, 1.446651, 0.367167>,  <2.310946, 1.380527, 0.571427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.203682, 1.446651, 0.367167>,  <2.024908, 1.556859, 0.026735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.203682, 1.446651, 0.367167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625999, 0.583307, 0.517569,
		-0.639043, -0.764095, 0.088224,
		0.446934, -0.275520, 0.851081,
		2.337762, 1.363995, 0.622492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.523392, 1.962800, 0.344230>,  <2.024908, 1.556859, 0.026735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.523392, 1.962800, 0.344230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.612320, 2.352024, 0.319813>,  <2.665677, 2.585559, 0.305163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.612320, 2.352024, 0.319813>,  <2.523392, 1.962800, 0.344230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.612320, 2.352024, 0.319813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845889, 0.223640, 0.484209,
		0.484816, -0.056013, 0.872821,
		0.222319, 0.973061, -0.061043,
		2.679016, 2.643942, 0.301500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.395757, 2.250983, 0.980685>,  <2.523392, 1.962800, 0.344230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.395757, 2.250983, 0.980685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.376869, 2.558147, 0.725160>,  <2.365536, 2.742446, 0.571845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.376869, 2.558147, 0.725160>,  <2.395757, 2.250983, 0.980685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.376869, 2.558147, 0.725160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862452, 0.291294, 0.413913,
		0.503931, 0.570491, 0.648532,
		-0.047220, 0.767911, -0.638813,
		2.362703, 2.788521, 0.533516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.341765, 2.853554, 1.396037>,  <2.395757, 2.250983, 0.980685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.341765, 2.853554, 1.396037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.185204, 2.912586, 1.032714>,  <2.091267, 2.948005, 0.814720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.185204, 2.912586, 1.032714>,  <2.341765, 2.853554, 1.396037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.185204, 2.912586, 1.032714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866596, 0.272908, 0.417770,
		0.309539, 0.950653, 0.021076,
		-0.391403, 0.147581, -0.908308,
		2.067783, 2.956860, 0.760221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.028885, 3.416255, 1.474608>,  <2.341765, 2.853554, 1.396037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.028885, 3.416255, 1.474608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.865051, 3.264923, 1.142558>,  <1.766751, 3.174124, 0.943328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.865051, 3.264923, 1.142558>,  <2.028885, 3.416255, 1.474608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.865051, 3.264923, 1.142558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862909, 0.455938, 0.217965,
		0.296023, 0.805597, -0.513210,
		-0.409584, -0.378331, -0.830124,
		1.742176, 3.151424, 0.893521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.596319, 3.903080, 1.197555>,  <2.028885, 3.416255, 1.474608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.596319, 3.903080, 1.197555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.446182, 3.575600, 1.023729>,  <1.356100, 3.379111, 0.919434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.446182, 3.575600, 1.023729>,  <1.596319, 3.903080, 1.197555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.446182, 3.575600, 1.023729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925413, 0.304581, 0.225479,
		-0.052240, 0.486782, -0.871960,
		-0.375342, -0.818702, -0.434563,
		1.333580, 3.329989, 0.893360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.062144, 4.094056, 0.841432>,  <1.596319, 3.903080, 1.197555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.062144, 4.094056, 0.841432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.996178, 3.702290, 0.887986>,  <0.956598, 3.467230, 0.915918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.996178, 3.702290, 0.887986>,  <1.062144, 4.094056, 0.841432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.996178, 3.702290, 0.887986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967941, 0.183381, 0.171644,
		-0.189454, -0.084346, -0.978260,
		-0.164917, -0.979417, 0.116384,
		0.946703, 3.408464, 0.922902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.543524, 3.965359, 0.356722>,  <1.062144, 4.094056, 0.841432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.543524, 3.965359, 0.356722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.538956, 3.706760, 0.661855>,  <0.536215, 3.551601, 0.844934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.538956, 3.706760, 0.661855>,  <0.543524, 3.965359, 0.356722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.538956, 3.706760, 0.661855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965706, 0.205026, 0.159302,
		-0.259389, -0.734852, -0.626666,
		-0.011420, -0.646496, 0.762832,
		0.535530, 3.512812, 0.890704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.368638, 4.273197, 1.371746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.058342, 4.050102, 1.489838>,  <-0.127835, 3.916245, 1.560692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.058342, 4.050102, 1.489838>,  <0.368638, 4.273197, 1.371746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.058342, 4.050102, 1.489838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465253, -0.821547, -0.329546,
		0.426344, -0.118286, 0.896794,
		-0.775739, -0.557736, 0.295228,
		-0.174380, 3.882782, 1.578406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.518820, 3.773480, 1.850103>,  <0.368638, 4.273197, 1.371746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.518820, 3.773480, 1.850103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.208206, 3.640305, 1.636133>,  <0.021838, 3.560399, 1.507751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.208206, 3.640305, 1.636133>,  <0.518820, 3.773480, 1.850103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.208206, 3.640305, 1.636133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495474, -0.847136, -0.192004,
		-0.389229, -0.414140, 0.822793,
		-0.776535, -0.332939, -0.534926,
		-0.024754, 3.540423, 1.475655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.540654, 3.084318, 2.096925>,  <0.518820, 3.773480, 1.850103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.540654, 3.084318, 2.096925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.357948, 3.164925, 1.750340>,  <0.248325, 3.213289, 1.542388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.357948, 3.164925, 1.750340>,  <0.540654, 3.084318, 2.096925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.357948, 3.164925, 1.750340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666482, -0.567602, -0.483352,
		-0.589211, -0.798259, 0.124950,
		-0.456763, 0.201520, -0.866463,
		0.220919, 3.225380, 1.490401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.555638, 2.474165, 1.680076>,  <0.540654, 3.084318, 2.096925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.555638, 2.474165, 1.680076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.555992, 2.788811, 1.433098>,  <0.556204, 2.977598, 1.284911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.555992, 2.788811, 1.433098>,  <0.555638, 2.474165, 1.680076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.555992, 2.788811, 1.433098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643044, -0.473304, -0.602061,
		-0.765829, -0.396512, -0.506246,
		0.000884, 0.786614, -0.617445,
		0.556257, 3.024795, 1.247864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.523851, 2.197190, 1.001209>,  <0.555638, 2.474165, 1.680076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.523851, 2.197190, 1.001209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.664993, 2.571312, 0.990648>,  <0.749679, 2.795785, 0.984312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.664993, 2.571312, 0.990648>,  <0.523851, 2.197190, 1.001209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.664993, 2.571312, 0.990648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720976, -0.289765, -0.629468,
		-0.596395, 0.203077, -0.776577,
		0.352856, 0.935305, -0.026401,
		0.770850, 2.851903, 0.982728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.878466, 2.211642, 0.392615>,  <0.523851, 2.197190, 1.001209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.878466, 2.211642, 0.392615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.007408, 2.557999, 0.545622>,  <1.084773, 2.765813, 0.637426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.007408, 2.557999, 0.545622>,  <0.878466, 2.211642, 0.392615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.007408, 2.557999, 0.545622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865121, -0.105449, -0.490353,
		-0.384256, 0.488992, -0.783093,
		0.322355, 0.865891, 0.382518,
		1.104115, 2.817766, 0.660377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.161173, 2.610803, -0.136569>,  <0.878466, 2.211642, 0.392615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.161173, 2.610803, -0.136569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.325401, 2.796921, 0.177101>,  <1.423939, 2.908591, 0.365303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.325401, 2.796921, 0.177101>,  <1.161173, 2.610803, -0.136569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.325401, 2.796921, 0.177101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888043, -0.008898, -0.459674,
		-0.206906, 0.885112, -0.416854,
		0.410572, 0.465294, 0.784176,
		1.448573, 2.936509, 0.412354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.464646, 3.128771, -0.417927>,  <1.161173, 2.610803, -0.136569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.464646, 3.128771, -0.417927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.632309, 3.023384, -0.070389>,  <1.732906, 2.960152, 0.138134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.632309, 3.023384, -0.070389>,  <1.464646, 3.128771, -0.417927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.632309, 3.023384, -0.070389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892624, -0.055303, -0.447397,
		0.165924, 0.963082, 0.211997,
		0.419156, -0.263468, 0.868846,
		1.758056, 2.944344, 0.190265>
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
