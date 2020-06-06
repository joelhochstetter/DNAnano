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
	<44.248154, 41.726589, 45.431484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345936, 41.810104, 45.810249>,  <44.404606, 41.860214, 46.037510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345936, 41.810104, 45.810249>,  <44.248154, 41.726589, 45.431484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345936, 41.810104, 45.810249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794561, -0.516616, 0.319029,
		0.555802, -0.830371, 0.039607,
		0.244451, 0.208787, 0.946917,
		44.419270, 41.872742, 46.094326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188255, 41.128685, 45.785995>,  <44.248154, 41.726589, 45.431484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188255, 41.128685, 45.785995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.139763, 41.427361, 46.047607>,  <44.110668, 41.606567, 46.204575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.139763, 41.427361, 46.047607>,  <44.188255, 41.128685, 45.785995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.139763, 41.427361, 46.047607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801901, -0.462005, 0.378821,
		0.585028, -0.478540, 0.654784,
		-0.121232, 0.746693, 0.654028,
		44.103394, 41.651367, 46.243816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014946, 40.768097, 46.337147>,  <44.188255, 41.128685, 45.785995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014946, 40.768097, 46.337147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915115, 41.141289, 46.440884>,  <43.855217, 41.365204, 46.503124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915115, 41.141289, 46.440884>,  <44.014946, 40.768097, 46.337147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915115, 41.141289, 46.440884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840728, -0.341659, 0.420054,
		0.480510, -0.113201, 0.869653,
		-0.249574, 0.932982, 0.259342,
		43.840244, 41.421185, 46.518684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945255, 40.793201, 47.016155>,  <44.014946, 40.768097, 46.337147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945255, 40.793201, 47.016155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729111, 41.113922, 46.914082>,  <43.599422, 41.306355, 46.852837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729111, 41.113922, 46.914082>,  <43.945255, 40.793201, 47.016155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729111, 41.113922, 46.914082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726082, -0.291068, 0.622965,
		0.425217, 0.521915, 0.739456,
		-0.540366, 0.801801, -0.255186,
		43.567001, 41.354462, 46.837524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658649, 40.982281, 47.562695>,  <43.945255, 40.793201, 47.016155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658649, 40.982281, 47.562695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427399, 41.204117, 47.323299>,  <43.288647, 41.337219, 47.179661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427399, 41.204117, 47.323299>,  <43.658649, 40.982281, 47.562695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427399, 41.204117, 47.323299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773323, -0.138459, 0.618708,
		0.260265, 0.820521, 0.508927,
		-0.578129, 0.554593, -0.598492,
		43.253960, 41.370495, 47.143753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244019, 41.549301, 47.992279>,  <43.658649, 40.982281, 47.562695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244019, 41.549301, 47.992279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065304, 41.465729, 47.644318>,  <42.958073, 41.415585, 47.435543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065304, 41.465729, 47.644318>,  <43.244019, 41.549301, 47.992279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065304, 41.465729, 47.644318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865319, -0.145965, 0.479497,
		-0.227157, 0.966976, -0.115576,
		-0.446792, -0.208931, -0.869900,
		42.931267, 41.403049, 47.383347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601051, 41.923107, 48.029991>,  <43.244019, 41.549301, 47.992279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601051, 41.923107, 48.029991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560425, 41.630402, 47.760414>,  <42.536049, 41.454777, 47.598667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560425, 41.630402, 47.760414>,  <42.601051, 41.923107, 48.029991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560425, 41.630402, 47.760414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854944, -0.282189, 0.435248,
		-0.508680, 0.620392, -0.596958,
		-0.101569, -0.731767, -0.673944,
		42.529953, 41.410870, 47.558231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806473, 41.978661, 47.832718>,  <42.601051, 41.923107, 48.029991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806473, 41.978661, 47.832718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953819, 41.626678, 47.712730>,  <42.042225, 41.415489, 47.640739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953819, 41.626678, 47.712730>,  <41.806473, 41.978661, 47.832718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953819, 41.626678, 47.712730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819780, -0.459626, 0.341620,
		-0.438486, 0.120068, -0.890682,
		0.368363, -0.879959, -0.299969,
		42.064327, 41.362690, 47.622738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275887, 41.634182, 47.344177>,  <41.806473, 41.978661, 47.832718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275887, 41.634182, 47.344177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508202, 41.334259, 47.470963>,  <41.647591, 41.154305, 47.547035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508202, 41.334259, 47.470963>,  <41.275887, 41.634182, 47.344177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508202, 41.334259, 47.470963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810873, -0.498467, 0.306620,
		-0.071910, -0.435101, -0.897506,
		0.580788, -0.749812, 0.316967,
		41.682438, 41.109314, 47.566051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931164, 41.076977, 47.084812>,  <41.275887, 41.634182, 47.344177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931164, 41.076977, 47.084812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179085, 40.897453, 47.342316>,  <41.327835, 40.789742, 47.496819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179085, 40.897453, 47.342316>,  <40.931164, 41.076977, 47.084812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179085, 40.897453, 47.342316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746501, -0.590196, 0.307255,
		0.242046, -0.671002, -0.700836,
		0.619799, -0.448805, 0.643757,
		41.365025, 40.762814, 47.535442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843830, 40.365768, 47.043495>,  <40.931164, 41.076977, 47.084812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843830, 40.365768, 47.043495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993767, 40.434196, 47.407963>,  <41.083729, 40.475254, 47.626644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993767, 40.434196, 47.407963>,  <40.843830, 40.365768, 47.043495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993767, 40.434196, 47.407963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739936, -0.536934, 0.405212,
		0.558558, -0.826097, -0.074682,
		0.374843, 0.171074, 0.911167,
		41.106220, 40.485519, 47.681313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747166, 39.772408, 47.444767>,  <40.843830, 40.365768, 47.043495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747166, 39.772408, 47.444767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820988, 40.030945, 47.740921>,  <40.865280, 40.186069, 47.918613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820988, 40.030945, 47.740921>,  <40.747166, 39.772408, 47.444767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820988, 40.030945, 47.740921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619695, -0.508182, 0.598105,
		0.762836, -0.569198, 0.306750,
		0.184555, 0.646347, 0.740388,
		40.876354, 40.224850, 47.963036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752060, 39.365200, 48.094402>,  <40.747166, 39.772408, 47.444767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752060, 39.365200, 48.094402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685806, 39.738930, 48.220646>,  <40.646053, 39.963165, 48.296391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685806, 39.738930, 48.220646>,  <40.752060, 39.365200, 48.094402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685806, 39.738930, 48.220646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582300, -0.350943, 0.733325,
		0.795921, -0.062314, 0.602184,
		-0.165635, 0.934321, 0.315608,
		40.636116, 40.019226, 48.315327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877396, 39.409809, 48.765652>,  <40.752060, 39.365200, 48.094402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877396, 39.409809, 48.765652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628929, 39.721016, 48.728016>,  <40.479851, 39.907738, 48.705433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628929, 39.721016, 48.728016>,  <40.877396, 39.409809, 48.765652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628929, 39.721016, 48.728016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645599, -0.439956, 0.624212,
		0.444250, 0.448480, 0.775569,
		-0.621163, 0.778013, -0.094088,
		40.442581, 39.954418, 48.699791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534195, 39.326145, 49.316193>,  <40.877396, 39.409809, 48.765652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534195, 39.326145, 49.316193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304745, 39.617233, 49.165791>,  <40.167076, 39.791885, 49.075550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304745, 39.617233, 49.165791>,  <40.534195, 39.326145, 49.316193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304745, 39.617233, 49.165791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788415, -0.366010, 0.494407,
		0.222166, 0.580054, 0.783696,
		-0.573624, 0.727718, -0.376008,
		40.132656, 39.835548, 49.052990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113102, 39.663757, 49.921818>,  <40.534195, 39.326145, 49.316193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113102, 39.663757, 49.921818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922127, 39.733582, 49.577358>,  <39.807541, 39.775478, 49.370682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922127, 39.733582, 49.577358>,  <40.113102, 39.663757, 49.921818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922127, 39.733582, 49.577358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838778, -0.382482, 0.387504,
		-0.261730, 0.907323, 0.329032,
		-0.477440, 0.174564, -0.861150,
		39.778896, 39.785950, 49.319012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480484, 39.996868, 50.222759>,  <40.113102, 39.663757, 49.921818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480484, 39.996868, 50.222759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406338, 39.861084, 49.853889>,  <39.361851, 39.779613, 49.632568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406338, 39.861084, 49.853889>,  <39.480484, 39.996868, 50.222759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406338, 39.861084, 49.853889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924365, -0.258208, 0.280851,
		-0.333452, 0.904485, -0.265927,
		-0.185361, -0.339464, -0.922174,
		39.350731, 39.759243, 49.577236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815174, 40.186592, 49.930126>,  <39.480484, 39.996868, 50.222759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815174, 40.186592, 49.930126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917793, 39.859154, 49.724571>,  <38.979362, 39.662689, 49.601238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917793, 39.859154, 49.724571>,  <38.815174, 40.186592, 49.930126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917793, 39.859154, 49.724571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910362, -0.383264, 0.156044,
		-0.324692, 0.427792, -0.843546,
		0.256546, -0.818598, -0.513888,
		38.994759, 39.613575, 49.570404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218811, 40.064037, 49.480465>,  <38.815174, 40.186592, 49.930126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218811, 40.064037, 49.480465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414314, 39.717445, 49.521111>,  <38.531616, 39.509491, 49.545498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414314, 39.717445, 49.521111>,  <38.218811, 40.064037, 49.480465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414314, 39.717445, 49.521111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854118, -0.451523, 0.258090,
		-0.177748, -0.212936, -0.960762,
		0.488763, -0.866479, 0.101615,
		38.560944, 39.457500, 49.551594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831833, 39.568150, 49.054283>,  <38.218811, 40.064037, 49.480465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831833, 39.568150, 49.054283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049057, 39.349274, 49.309052>,  <38.179390, 39.217949, 49.461914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049057, 39.349274, 49.309052>,  <37.831833, 39.568150, 49.054283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049057, 39.349274, 49.309052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813868, -0.529680, 0.238867,
		0.206659, -0.648089, -0.732989,
		0.543057, -0.547192, 0.636922,
		38.211975, 39.185116, 49.500130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450924, 38.975395, 48.991837>,  <37.831833, 39.568150, 49.054283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450924, 38.975395, 48.991837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672997, 38.955605, 49.323936>,  <37.806240, 38.943729, 49.523197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672997, 38.955605, 49.323936>,  <37.450924, 38.975395, 48.991837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672997, 38.955605, 49.323936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729269, -0.508938, 0.457328,
		0.399920, -0.859380, -0.318637,
		0.555185, -0.049478, 0.830254,
		37.839554, 38.940762, 49.573013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263554, 38.359924, 49.237041>,  <37.450924, 38.975395, 48.991837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263554, 38.359924, 49.237041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458954, 38.504059, 49.554916>,  <37.576195, 38.590538, 49.745640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458954, 38.504059, 49.554916>,  <37.263554, 38.359924, 49.237041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458954, 38.504059, 49.554916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678959, -0.415086, 0.605572,
		0.548074, -0.835381, 0.041886,
		0.488497, 0.360337, 0.794687,
		37.605503, 38.612160, 49.793324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494038, 37.767448, 49.639881>,  <37.263554, 38.359924, 49.237041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494038, 37.767448, 49.639881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498253, 38.081024, 49.888180>,  <37.500782, 38.269169, 50.037159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498253, 38.081024, 49.888180>,  <37.494038, 37.767448, 49.639881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498253, 38.081024, 49.888180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678573, -0.450355, 0.580275,
		0.734457, -0.427337, 0.527215,
		0.010539, 0.783941, 0.620746,
		37.501415, 38.316208, 50.074402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591759, 37.498753, 50.339340>,  <37.494038, 37.767448, 49.639881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591759, 37.498753, 50.339340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421715, 37.860168, 50.360832>,  <37.319687, 38.077019, 50.373730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421715, 37.860168, 50.360832>,  <37.591759, 37.498753, 50.339340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421715, 37.860168, 50.360832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631137, -0.338455, 0.697936,
		0.648802, 0.262789, 0.714142,
		-0.425115, 0.903543, 0.053734,
		37.294182, 38.131233, 50.376953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531235, 37.591702, 51.006393>,  <37.591759, 37.498753, 50.339340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531235, 37.591702, 51.006393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272797, 37.860107, 50.860901>,  <37.117733, 38.021152, 50.773605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272797, 37.860107, 50.860901>,  <37.531235, 37.591702, 51.006393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272797, 37.860107, 50.860901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651463, -0.236505, 0.720875,
		0.397692, 0.702713, 0.589945,
		-0.646093, 0.671014, -0.363735,
		37.078968, 38.061413, 50.751781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343666, 37.939465, 51.595905>,  <37.531235, 37.591702, 51.006393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343666, 37.939465, 51.595905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067638, 37.967377, 51.307755>,  <36.902023, 37.984123, 51.134865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067638, 37.967377, 51.307755>,  <37.343666, 37.939465, 51.595905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067638, 37.967377, 51.307755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686178, -0.379597, 0.620536,
		-0.230150, 0.922516, 0.309830,
		-0.690066, 0.069782, -0.720375,
		36.860619, 37.988312, 51.091640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746181, 38.207085, 52.013897>,  <37.343666, 37.939465, 51.595905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746181, 38.207085, 52.013897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606689, 38.075890, 51.662716>,  <36.522995, 37.997173, 51.452007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606689, 38.075890, 51.662716>,  <36.746181, 38.207085, 52.013897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606689, 38.075890, 51.662716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835718, -0.315183, 0.449705,
		-0.424216, 0.890552, -0.164192,
		-0.348734, -0.327990, -0.877956,
		36.502068, 37.977493, 51.399330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114616, 38.466991, 52.036274>,  <36.746181, 38.207085, 52.013897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114616, 38.466991, 52.036274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107460, 38.170738, 51.767605>,  <36.103168, 37.992985, 51.606403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107460, 38.170738, 51.767605>,  <36.114616, 38.466991, 52.036274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107460, 38.170738, 51.767605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773293, -0.415591, 0.478855,
		-0.633796, 0.527963, -0.565294,
		-0.017887, -0.740634, -0.671670,
		36.102093, 37.948547, 51.566105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509537, 38.367573, 51.726757>,  <36.114616, 38.466991, 52.036274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509537, 38.367573, 51.726757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654045, 38.008156, 51.627075>,  <35.740749, 37.792507, 51.567265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654045, 38.008156, 51.627075>,  <35.509537, 38.367573, 51.726757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654045, 38.008156, 51.627075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811338, -0.434635, 0.390926,
		-0.459579, 0.060963, -0.886042,
		0.361273, -0.898541, -0.249211,
		35.762428, 37.738594, 51.552311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909206, 38.066086, 51.484909>,  <35.509537, 38.367573, 51.726757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909206, 38.066086, 51.484909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157516, 37.758911, 51.548046>,  <35.306503, 37.574608, 51.585926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157516, 37.758911, 51.548046>,  <34.909206, 38.066086, 51.484909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157516, 37.758911, 51.548046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771020, -0.561544, 0.300327,
		-0.141997, -0.308135, -0.940686,
		0.620778, -0.767933, 0.157841,
		35.343750, 37.528530, 51.595398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513256, 37.543655, 51.292179>,  <34.909206, 38.066086, 51.484909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513256, 37.543655, 51.292179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792461, 37.342216, 51.495808>,  <34.959984, 37.221352, 51.617985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792461, 37.342216, 51.495808>,  <34.513256, 37.543655, 51.292179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792461, 37.342216, 51.495808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707366, -0.595498, 0.380809,
		0.111378, -0.625914, -0.771898,
		0.698017, -0.503600, 0.509076,
		35.001865, 37.191135, 51.648529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374043, 36.786278, 51.210133>,  <34.513256, 37.543655, 51.292179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374043, 36.786278, 51.210133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599590, 36.829170, 51.537682>,  <34.734921, 36.854904, 51.734211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599590, 36.829170, 51.537682>,  <34.374043, 36.786278, 51.210133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599590, 36.829170, 51.537682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565312, -0.672718, 0.477361,
		0.602058, -0.732088, -0.318705,
		0.563869, 0.107231, 0.818874,
		34.768749, 36.861340, 51.783344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483253, 36.110046, 51.462730>,  <34.374043, 36.786278, 51.210133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483253, 36.110046, 51.462730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539314, 36.368782, 51.762585>,  <34.572948, 36.524025, 51.942497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539314, 36.368782, 51.762585>,  <34.483253, 36.110046, 51.462730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539314, 36.368782, 51.762585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583274, -0.557861, 0.590409,
		0.800093, -0.519990, 0.299101,
		0.140150, 0.646840, 0.749637,
		34.581360, 36.562836, 51.987476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478462, 35.685982, 52.067001>,  <34.483253, 36.110046, 51.462730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478462, 35.685982, 52.067001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432373, 36.043350, 52.240673>,  <34.404720, 36.257771, 52.344875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432373, 36.043350, 52.240673>,  <34.478462, 35.685982, 52.067001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432373, 36.043350, 52.240673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579614, -0.415440, 0.701040,
		0.806704, -0.170881, 0.565711,
		-0.115225, 0.893426, 0.434182,
		34.397804, 36.311378, 52.370926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516964, 35.477390, 52.785576>,  <34.478462, 35.685982, 52.067001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516964, 35.477390, 52.785576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341888, 35.836517, 52.766159>,  <34.236843, 36.051994, 52.754509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341888, 35.836517, 52.766159>,  <34.516964, 35.477390, 52.785576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341888, 35.836517, 52.766159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679253, -0.294806, 0.672090,
		0.589102, 0.327139, 0.738877,
		-0.437692, 0.897814, -0.048539,
		34.210579, 36.105862, 52.751598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604549, 35.653610, 53.435070>,  <34.516964, 35.477390, 52.785576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604549, 35.653610, 53.435070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309921, 35.862793, 53.263496>,  <34.133144, 35.988304, 53.160553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309921, 35.862793, 53.263496>,  <34.604549, 35.653610, 53.435070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309921, 35.862793, 53.263496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562967, -0.122526, 0.817347,
		0.374881, 0.843507, 0.384656,
		-0.736568, 0.522956, -0.428934,
		34.088951, 36.019680, 53.134815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261948, 36.040913, 53.969109>,  <34.604549, 35.653610, 53.435070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261948, 36.040913, 53.969109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997494, 36.042389, 53.669006>,  <33.838821, 36.043274, 53.488945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997494, 36.042389, 53.669006>,  <34.261948, 36.040913, 53.969109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997494, 36.042389, 53.669006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734833, -0.204989, 0.646529,
		-0.151410, 0.978757, 0.138236,
		-0.661132, 0.003690, -0.750260,
		33.799152, 36.043495, 53.443928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560078, 36.437759, 54.133583>,  <34.261948, 36.040913, 53.969109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560078, 36.437759, 54.133583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462948, 36.198914, 53.827774>,  <33.404671, 36.055607, 53.644287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462948, 36.198914, 53.827774>,  <33.560078, 36.437759, 54.133583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462948, 36.198914, 53.827774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753660, -0.380076, 0.536226,
		-0.610764, 0.706398, -0.357728,
		-0.242825, -0.597113, -0.764521,
		33.390099, 36.019779, 53.598419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825069, 36.567478, 54.055649>,  <33.560078, 36.437759, 54.133583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825069, 36.567478, 54.055649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875237, 36.225098, 53.855003>,  <32.905334, 36.019669, 53.734615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875237, 36.225098, 53.855003>,  <32.825069, 36.567478, 54.055649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875237, 36.225098, 53.855003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795958, -0.388621, 0.464139,
		-0.592218, 0.341052, -0.730042,
		0.125414, -0.855954, -0.501611,
		32.912861, 35.968311, 53.704521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171906, 36.312176, 53.806252>,  <32.825069, 36.567478, 54.055649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171906, 36.312176, 53.806252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407097, 35.989258, 53.826473>,  <32.548210, 35.795506, 53.838608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407097, 35.989258, 53.826473>,  <32.171906, 36.312176, 53.806252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407097, 35.989258, 53.826473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721032, -0.494766, 0.485097,
		-0.366604, -0.321679, -0.872997,
		0.587975, -0.807298, 0.050558,
		32.583488, 35.747070, 53.841640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787127, 35.685947, 53.566208>,  <32.171906, 36.312176, 53.806252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787127, 35.685947, 53.566208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067265, 35.548355, 53.816391>,  <32.235348, 35.465801, 53.966499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067265, 35.548355, 53.816391>,  <31.787127, 35.685947, 53.566208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067265, 35.548355, 53.816391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685088, -0.569945, 0.453671,
		0.200421, -0.746218, -0.634815,
		0.700347, -0.343979, 0.625454,
		32.277370, 35.445160, 54.004028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453884, 35.159630, 53.830227>,  <31.787127, 35.685947, 53.566208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453884, 35.159630, 53.830227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771952, 35.153069, 54.072693>,  <31.962791, 35.149132, 54.218174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771952, 35.153069, 54.072693>,  <31.453884, 35.159630, 53.830227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771952, 35.153069, 54.072693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456057, -0.675002, 0.579987,
		0.399652, -0.737634, -0.544219,
		0.795167, -0.016402, 0.606169,
		32.010502, 35.148148, 54.254543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397219, 34.630745, 54.269413>,  <31.453884, 35.159630, 53.830227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397219, 34.630745, 54.269413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721992, 34.745621, 54.472698>,  <31.916857, 34.814545, 54.594669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721992, 34.745621, 54.472698>,  <31.397219, 34.630745, 54.269413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721992, 34.745621, 54.472698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279651, -0.572844, 0.770484,
		0.512405, -0.767705, -0.384799,
		0.811934, 0.287191, 0.508217,
		31.965572, 34.831779, 54.625164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998600, 34.115959, 54.364738>,  <31.397219, 34.630745, 54.269413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998600, 34.115959, 54.364738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950014, 34.374809, 54.665798>,  <31.920862, 34.530121, 54.846432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950014, 34.374809, 54.665798>,  <31.998600, 34.115959, 54.364738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950014, 34.374809, 54.665798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280600, -0.749717, 0.599323,
		0.952108, -0.138397, 0.272646,
		-0.121462, 0.647125, 0.752646,
		31.913576, 34.568947, 54.891594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275482, 33.892326, 54.922203>,  <31.998600, 34.115959, 54.364738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275482, 33.892326, 54.922203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000248, 34.146957, 55.061523>,  <31.835108, 34.299736, 55.145115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000248, 34.146957, 55.061523>,  <32.275482, 33.892326, 54.922203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000248, 34.146957, 55.061523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249996, -0.658574, 0.709776,
		0.681208, 0.401310, 0.612295,
		-0.688082, 0.636577, 0.348300,
		31.793823, 34.337929, 55.166012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367496, 33.912964, 55.730938>,  <32.275482, 33.892326, 54.922203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367496, 33.912964, 55.730938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013142, 34.000847, 55.567505>,  <31.800529, 34.053577, 55.469444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013142, 34.000847, 55.567505>,  <32.367496, 33.912964, 55.730938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013142, 34.000847, 55.567505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461860, -0.500335, 0.732360,
		-0.043523, 0.837493, 0.544712,
		-0.885885, 0.219706, -0.408580,
		31.747375, 34.066757, 55.444931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857870, 34.236717, 56.228794>,  <32.367496, 33.912964, 55.730938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857870, 34.236717, 56.228794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640831, 34.049278, 55.949936>,  <31.510609, 33.936817, 55.782623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640831, 34.049278, 55.949936>,  <31.857870, 34.236717, 56.228794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640831, 34.049278, 55.949936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502112, -0.484409, 0.716402,
		-0.673405, 0.738761, 0.027552,
		-0.542596, -0.468594, -0.697144,
		31.478052, 33.908699, 55.740791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012234, 34.671349, 56.841633>,  <31.857870, 34.236717, 56.228794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012234, 34.671349, 56.841633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174721, 34.421547, 57.108459>,  <32.272213, 34.271667, 57.268555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174721, 34.421547, 57.108459>,  <32.012234, 34.671349, 56.841633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174721, 34.421547, 57.108459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844364, -0.022547, -0.535295,
		0.349332, 0.780699, 0.518147,
		0.406222, -0.624500, 0.667071,
		32.296589, 34.234196, 57.308582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582447, 34.999863, 57.167938>,  <32.012234, 34.671349, 56.841633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582447, 34.999863, 57.167938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622047, 34.601906, 57.160069>,  <32.645805, 34.363132, 57.155346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622047, 34.601906, 57.160069>,  <32.582447, 34.999863, 57.167938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622047, 34.601906, 57.160069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877030, 0.096577, -0.470629,
		0.470126, 0.029334, 0.882112,
		0.098997, -0.994893, -0.019677,
		32.651745, 34.303436, 57.154167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103111, 34.835892, 57.535957>,  <32.582447, 34.999863, 57.167938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103111, 34.835892, 57.535957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065311, 34.575172, 57.234962>,  <33.042633, 34.418743, 57.054367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065311, 34.575172, 57.234962>,  <33.103111, 34.835892, 57.535957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065311, 34.575172, 57.234962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919443, 0.232671, -0.316999,
		0.381700, -0.721821, 0.577304,
		-0.094495, -0.651796, -0.752484,
		33.036964, 34.379635, 57.009216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661659, 34.364861, 57.572826>,  <33.103111, 34.835892, 57.535957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661659, 34.364861, 57.572826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522041, 34.394684, 57.199173>,  <33.438271, 34.412579, 56.974979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522041, 34.394684, 57.199173>,  <33.661659, 34.364861, 57.572826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522041, 34.394684, 57.199173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936321, 0.068541, -0.344390,
		0.038350, -0.994859, -0.093733,
		-0.349044, 0.074557, -0.934136,
		33.417328, 34.417049, 56.918934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292740, 34.323055, 57.216755>,  <33.661659, 34.364861, 57.572826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292740, 34.323055, 57.216755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038040, 34.399986, 56.918076>,  <33.885220, 34.446144, 56.738869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038040, 34.399986, 56.918076>,  <34.292740, 34.323055, 57.216755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038040, 34.399986, 56.918076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770959, 0.175396, -0.612257,
		0.013215, -0.965529, -0.259960,
		-0.636748, 0.192328, -0.746701,
		33.847015, 34.457684, 56.694065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514572, 34.085346, 56.589970>,  <34.292740, 34.323055, 57.216755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514572, 34.085346, 56.589970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240467, 34.337738, 56.444496>,  <34.076004, 34.489174, 56.357212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240467, 34.337738, 56.444496>,  <34.514572, 34.085346, 56.589970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240467, 34.337738, 56.444496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633653, 0.270389, -0.724827,
		-0.359017, -0.727152, -0.585113,
		-0.685267, 0.630983, -0.363688,
		34.034885, 34.527035, 56.335388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574539, 34.065784, 55.930599>,  <34.514572, 34.085346, 56.589970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574539, 34.065784, 55.930599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389214, 34.418587, 55.965038>,  <34.278019, 34.630268, 55.985703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389214, 34.418587, 55.965038>,  <34.574539, 34.065784, 55.930599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389214, 34.418587, 55.965038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669399, 0.411983, -0.618204,
		-0.580729, -0.228786, -0.781288,
		-0.463314, 0.882001, 0.086101,
		34.250217, 34.683186, 55.990868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415215, 34.219860, 55.234993>,  <34.574539, 34.065784, 55.930599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415215, 34.219860, 55.234993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416580, 34.573753, 55.421429>,  <34.417400, 34.786091, 55.533291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416580, 34.573753, 55.421429>,  <34.415215, 34.219860, 55.234993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416580, 34.573753, 55.421429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841899, 0.248973, -0.478768,
		-0.539625, 0.394032, -0.744006,
		0.003413, 0.884732, 0.466087,
		34.417603, 34.839172, 55.561256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526318, 34.749210, 54.691303>,  <34.415215, 34.219860, 55.234993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526318, 34.749210, 54.691303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596680, 34.941734, 55.034790>,  <34.638897, 35.057247, 55.240883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596680, 34.941734, 55.034790>,  <34.526318, 34.749210, 54.691303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596680, 34.941734, 55.034790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785152, 0.457590, -0.417311,
		-0.593796, 0.747633, -0.297406,
		0.175906, 0.481307, 0.858720,
		34.649452, 35.086128, 55.292408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688297, 35.382137, 54.458569>,  <34.526318, 34.749210, 54.691303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688297, 35.382137, 54.458569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827850, 35.377335, 54.833405>,  <34.911583, 35.374451, 55.058308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827850, 35.377335, 54.833405>,  <34.688297, 35.382137, 54.458569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827850, 35.377335, 54.833405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829365, 0.469568, -0.302753,
		-0.436391, 0.882815, 0.173784,
		0.348878, -0.012011, 0.937091,
		34.932514, 35.373730, 55.114532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784744, 36.089638, 54.757500>,  <34.688297, 35.382137, 54.458569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784744, 36.089638, 54.757500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039852, 35.875862, 54.979359>,  <35.192917, 35.747597, 55.112473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039852, 35.875862, 54.979359>,  <34.784744, 36.089638, 54.757500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039852, 35.875862, 54.979359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764568, 0.526413, -0.371920,
		-0.093204, 0.661261, 0.744343,
		0.637768, -0.534436, 0.554643,
		35.231182, 35.715530, 55.145752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209129, 36.571068, 54.935104>,  <34.784744, 36.089638, 54.757500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209129, 36.571068, 54.935104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395515, 36.222305, 54.995304>,  <35.507347, 36.013046, 55.031425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395515, 36.222305, 54.995304>,  <35.209129, 36.571068, 54.935104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395515, 36.222305, 54.995304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874463, 0.427881, -0.228542,
		0.134872, 0.238098, 0.961831,
		0.465965, -0.871910, 0.150499,
		35.535305, 35.960732, 55.040455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632290, 36.599823, 55.490517>,  <35.209129, 36.571068, 54.935104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632290, 36.599823, 55.490517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781021, 36.321892, 55.244278>,  <35.870258, 36.155132, 55.096535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781021, 36.321892, 55.244278>,  <35.632290, 36.599823, 55.490517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781021, 36.321892, 55.244278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860308, 0.507046, -0.052672,
		0.348734, -0.510016, 0.786301,
		0.371827, -0.694829, -0.615595,
		35.892570, 36.113441, 55.059601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297222, 36.497860, 55.764084>,  <35.632290, 36.599823, 55.490517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297222, 36.497860, 55.764084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297348, 36.370880, 55.384773>,  <36.297424, 36.294693, 55.157188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297348, 36.370880, 55.384773>,  <36.297222, 36.497860, 55.764084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297348, 36.370880, 55.384773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845937, 0.505783, -0.169038,
		0.533283, -0.802130, 0.268696,
		0.000311, -0.317445, -0.948277,
		36.297440, 36.275646, 55.100288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995831, 36.454563, 55.625290>,  <36.297222, 36.497860, 55.764084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995831, 36.454563, 55.625290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834793, 36.426003, 55.260254>,  <36.738171, 36.408867, 55.041233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834793, 36.426003, 55.260254>,  <36.995831, 36.454563, 55.625290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834793, 36.426003, 55.260254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769322, 0.513858, -0.379595,
		0.496047, -0.854898, -0.151941,
		-0.402592, -0.071406, -0.912591,
		36.714016, 36.404579, 54.986477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440212, 36.172974, 55.223103>,  <36.995831, 36.454563, 55.625290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440212, 36.172974, 55.223103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193844, 36.354118, 54.965248>,  <37.046024, 36.462807, 54.810535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193844, 36.354118, 54.965248>,  <37.440212, 36.172974, 55.223103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193844, 36.354118, 54.965248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787809, 0.355526, -0.502950,
		0.001417, -0.817627, -0.575746,
		-0.615918, 0.452865, -0.644638,
		37.009068, 36.489979, 54.771858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754555, 36.014599, 54.553432>,  <37.440212, 36.172974, 55.223103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754555, 36.014599, 54.553432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506058, 36.315956, 54.467224>,  <37.356960, 36.496773, 54.415497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506058, 36.315956, 54.467224>,  <37.754555, 36.014599, 54.553432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506058, 36.315956, 54.467224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728337, 0.453679, -0.513517,
		-0.289104, -0.475992, -0.830572,
		-0.621244, 0.753397, -0.215523,
		37.319683, 36.541977, 54.402569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873478, 36.132133, 53.895771>,  <37.754555, 36.014599, 54.553432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873478, 36.132133, 53.895771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702599, 36.473244, 54.015953>,  <37.600071, 36.677910, 54.088062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702599, 36.473244, 54.015953>,  <37.873478, 36.132133, 53.895771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702599, 36.473244, 54.015953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679023, 0.522014, -0.516168,
		-0.597018, -0.016490, -0.802058,
		-0.427197, 0.852777, 0.300455,
		37.574440, 36.729076, 54.106091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565079, 36.500244, 53.288033>,  <37.873478, 36.132133, 53.895771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565079, 36.500244, 53.288033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649746, 36.791832, 53.548431>,  <37.700546, 36.966785, 53.704670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649746, 36.791832, 53.548431>,  <37.565079, 36.500244, 53.288033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649746, 36.791832, 53.548431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624418, 0.411550, -0.663874,
		-0.751863, 0.547017, -0.368069,
		0.211672, 0.728971, 0.650997,
		37.713249, 37.010525, 53.743729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419930, 37.154522, 52.992107>,  <37.565079, 36.500244, 53.288033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419930, 37.154522, 52.992107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647129, 37.259499, 53.304134>,  <37.783451, 37.322483, 53.491348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647129, 37.259499, 53.304134>,  <37.419930, 37.154522, 52.992107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647129, 37.259499, 53.304134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606527, 0.507188, -0.612279,
		-0.556325, 0.820905, 0.128907,
		0.568003, 0.262441, 0.780063,
		37.817532, 37.338230, 53.538155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627773, 37.871635, 52.904213>,  <37.419930, 37.154522, 52.992107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627773, 37.871635, 52.904213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886505, 37.715530, 53.166298>,  <38.041744, 37.621868, 53.323547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886505, 37.715530, 53.166298>,  <37.627773, 37.871635, 52.904213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886505, 37.715530, 53.166298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762629, 0.332897, -0.554596,
		-0.001682, 0.858415, 0.512953,
		0.646834, -0.390260, 0.655212,
		38.080555, 37.598454, 53.362862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167038, 38.484226, 53.032784>,  <37.627773, 37.871635, 52.904213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167038, 38.484226, 53.032784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321770, 38.127319, 53.125919>,  <38.414608, 37.913174, 53.181801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321770, 38.127319, 53.125919>,  <38.167038, 38.484226, 53.032784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321770, 38.127319, 53.125919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816572, 0.214129, -0.536059,
		0.428453, 0.397494, 0.811435,
		0.386832, -0.892271, 0.232838,
		38.437820, 37.859638, 53.195770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892467, 38.621456, 53.205162>,  <38.167038, 38.484226, 53.032784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892467, 38.621456, 53.205162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882980, 38.234283, 53.105122>,  <38.877289, 38.001980, 53.045097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882980, 38.234283, 53.105122>,  <38.892467, 38.621456, 53.205162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882980, 38.234283, 53.105122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830079, 0.120350, -0.544503,
		0.557141, -0.220515, 0.800605,
		-0.023718, -0.967930, -0.250097,
		38.875866, 37.943905, 53.030094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552532, 38.285439, 53.453804>,  <38.892467, 38.621456, 53.205162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552532, 38.285439, 53.453804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416466, 38.027939, 53.179615>,  <39.334827, 37.873440, 53.015102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416466, 38.027939, 53.179615>,  <39.552532, 38.285439, 53.453804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416466, 38.027939, 53.179615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878186, 0.043197, -0.476364,
		0.336268, -0.764018, 0.550636,
		-0.340165, -0.643747, -0.685476,
		39.314415, 37.834816, 52.973972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151932, 37.868523, 53.310360>,  <39.552532, 38.285439, 53.453804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151932, 37.868523, 53.310360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916031, 37.798065, 52.995106>,  <39.774490, 37.755791, 52.805954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916031, 37.798065, 52.995106>,  <40.151932, 37.868523, 53.310360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916031, 37.798065, 52.995106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783062, 0.113938, -0.611418,
		0.197496, -0.977748, 0.070737,
		-0.589753, -0.176144, -0.788140,
		39.739105, 37.745220, 52.758663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591656, 37.403385, 52.885273>,  <40.151932, 37.868523, 53.310360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591656, 37.403385, 52.885273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299438, 37.577057, 52.674446>,  <40.124107, 37.681259, 52.547951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299438, 37.577057, 52.674446>,  <40.591656, 37.403385, 52.885273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299438, 37.577057, 52.674446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650343, 0.206991, -0.730896,
		-0.208238, -0.876725, -0.433579,
		-0.730542, 0.434175, -0.527069,
		40.080276, 37.707310, 52.516327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658794, 37.168152, 52.327484>,  <40.591656, 37.403385, 52.885273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658794, 37.168152, 52.327484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468613, 37.512077, 52.253006>,  <40.354504, 37.718433, 52.208321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468613, 37.512077, 52.253006>,  <40.658794, 37.168152, 52.327484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468613, 37.512077, 52.253006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640110, 0.192923, -0.743667,
		-0.603491, -0.472766, -0.642099,
		-0.475456, 0.859810, -0.186194,
		40.325977, 37.770020, 52.197147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728638, 37.205151, 51.704830>,  <40.658794, 37.168152, 52.327484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728638, 37.205151, 51.704830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631935, 37.582085, 51.797405>,  <40.573914, 37.808243, 51.852951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631935, 37.582085, 51.797405>,  <40.728638, 37.205151, 51.704830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631935, 37.582085, 51.797405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647510, 0.334312, -0.684811,
		-0.722693, -0.015698, -0.690991,
		-0.241757, 0.942332, 0.231440,
		40.559406, 37.864784, 51.866837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612244, 37.673496, 51.030140>,  <40.728638, 37.205151, 51.704830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612244, 37.673496, 51.030140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703445, 37.909073, 51.340279>,  <40.758167, 38.050419, 51.526360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703445, 37.909073, 51.340279>,  <40.612244, 37.673496, 51.030140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703445, 37.909073, 51.340279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583047, 0.555170, -0.593163,
		-0.779788, 0.587307, -0.216799,
		0.228009, 0.588945, 0.775342,
		40.771847, 38.085758, 51.572880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715408, 38.254642, 50.708199>,  <40.612244, 37.673496, 51.030140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715408, 38.254642, 50.708199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869125, 38.328529, 51.070015>,  <40.961357, 38.372864, 51.287106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869125, 38.328529, 51.070015>,  <40.715408, 38.254642, 50.708199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869125, 38.328529, 51.070015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671717, 0.616198, -0.411213,
		-0.633337, 0.765623, 0.112722,
		0.384294, 0.184719, 0.904543,
		40.984413, 38.383945, 51.341377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793285, 38.963764, 50.675217>,  <40.715408, 38.254642, 50.708199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793285, 38.963764, 50.675217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043026, 38.819984, 50.952629>,  <41.192871, 38.733715, 51.119076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043026, 38.819984, 50.952629>,  <40.793285, 38.963764, 50.675217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043026, 38.819984, 50.952629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659770, 0.717978, -0.221835,
		-0.418204, 0.596074, 0.685420,
		0.624347, -0.359448, 0.693533,
		41.230331, 38.712151, 51.160690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849327, 39.451294, 51.140877>,  <40.793285, 38.963764, 50.675217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849327, 39.451294, 51.140877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179230, 39.234451, 51.205246>,  <41.377171, 39.104347, 51.243870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179230, 39.234451, 51.205246>,  <40.849327, 39.451294, 51.140877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179230, 39.234451, 51.205246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560376, 0.745325, -0.361205,
		0.075870, 0.388085, 0.918495,
		0.824756, -0.542107, 0.160926,
		41.426655, 39.071819, 51.253525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341942, 39.943939, 51.240479>,  <40.849327, 39.451294, 51.140877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341942, 39.943939, 51.240479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556633, 39.624573, 51.131336>,  <41.685448, 39.432953, 51.065849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556633, 39.624573, 51.131336>,  <41.341942, 39.943939, 51.240479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556633, 39.624573, 51.131336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629575, 0.594268, -0.500480,
		0.561742, 0.096839, 0.821625,
		0.536732, -0.798416, -0.272857,
		41.717651, 39.385048, 51.049480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127544, 40.049252, 51.398888>,  <41.341942, 39.943939, 51.240479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127544, 40.049252, 51.398888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125362, 39.756592, 51.126225>,  <42.124054, 39.580994, 50.962627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125362, 39.756592, 51.126225>,  <42.127544, 40.049252, 51.398888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125362, 39.756592, 51.126225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799885, 0.405905, -0.442070,
		0.600129, -0.547656, 0.583025,
		-0.005450, -0.731652, -0.681657,
		42.123726, 39.537098, 50.921726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820312, 39.773479, 51.460522>,  <42.127544, 40.049252, 51.398888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820312, 39.773479, 51.460522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661030, 39.698486, 51.101349>,  <42.565460, 39.653492, 50.885845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661030, 39.698486, 51.101349>,  <42.820312, 39.773479, 51.460522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661030, 39.698486, 51.101349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784369, 0.437945, -0.439283,
		0.475602, -0.879235, -0.027337,
		-0.398205, -0.187482, -0.897933,
		42.541569, 39.642242, 50.831970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394028, 39.682598, 51.019028>,  <42.820312, 39.773479, 51.460522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394028, 39.682598, 51.019028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108494, 39.745270, 50.746002>,  <42.937172, 39.782875, 50.582188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108494, 39.745270, 50.746002>,  <43.394028, 39.682598, 51.019028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108494, 39.745270, 50.746002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675867, 0.409411, -0.612851,
		0.183426, -0.898795, -0.398148,
		-0.713834, 0.156683, -0.682562,
		42.894344, 39.792274, 50.541233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688301, 39.457069, 50.396049>,  <43.394028, 39.682598, 51.019028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688301, 39.457069, 50.396049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383598, 39.676033, 50.257450>,  <43.200775, 39.807411, 50.174290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383598, 39.676033, 50.257450>,  <43.688301, 39.457069, 50.396049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383598, 39.676033, 50.257450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641242, 0.560840, -0.523705,
		-0.092349, -0.621129, -0.778248,
		-0.761761, 0.547409, -0.346501,
		43.155071, 39.840256, 50.153500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646542, 39.450790, 49.656124>,  <43.688301, 39.457069, 50.396049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646542, 39.450790, 49.656124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443550, 39.784897, 49.740784>,  <43.321754, 39.985359, 49.791580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443550, 39.784897, 49.740784>,  <43.646542, 39.450790, 49.656124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443550, 39.784897, 49.740784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694325, 0.541855, -0.473609,
		-0.510274, -0.093392, -0.854926,
		-0.507477, 0.835267, 0.211649,
		43.291306, 40.035477, 49.804279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651932, 39.798904, 49.062187>,  <43.646542, 39.450790, 49.656124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651932, 39.798904, 49.062187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556923, 40.072441, 49.338142>,  <43.499920, 40.236561, 49.503716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556923, 40.072441, 49.338142>,  <43.651932, 39.798904, 49.062187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556923, 40.072441, 49.338142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551699, 0.679518, -0.483616,
		-0.799508, 0.265743, -0.538672,
		-0.237520, 0.683839, 0.689890,
		43.485668, 40.277592, 49.545109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467354, 40.346687, 48.715401>,  <43.651932, 39.798904, 49.062187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467354, 40.346687, 48.715401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559357, 40.488007, 49.078117>,  <43.614559, 40.572800, 49.295750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559357, 40.488007, 49.078117>,  <43.467354, 40.346687, 48.715401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559357, 40.488007, 49.078117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702618, 0.584426, -0.405922,
		-0.673366, 0.730497, -0.113809,
		0.230012, 0.353299, 0.906793,
		43.628361, 40.593998, 49.350155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571358, 41.034222, 48.608681>,  <43.467354, 40.346687, 48.715401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571358, 41.034222, 48.608681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776543, 40.970757, 48.946129>,  <43.899654, 40.932678, 49.148598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776543, 40.970757, 48.946129>,  <43.571358, 41.034222, 48.608681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776543, 40.970757, 48.946129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728042, 0.601080, -0.329633,
		-0.454782, 0.783280, 0.423846,
		0.512961, -0.158666, 0.843621,
		43.930431, 40.923157, 49.199215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935390, 41.617260, 48.692207>,  <43.571358, 41.034222, 48.608681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935390, 41.617260, 48.692207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151451, 41.388527, 48.939186>,  <44.281086, 41.251286, 49.087372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151451, 41.388527, 48.939186>,  <43.935390, 41.617260, 48.692207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151451, 41.388527, 48.939186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841308, 0.385137, -0.379304,
		-0.020903, 0.724345, 0.689121,
		0.540153, -0.571834, 0.617447,
		44.313496, 41.216976, 49.124420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504517, 42.087811, 48.885689>,  <43.935390, 41.617260, 48.692207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504517, 42.087811, 48.885689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625389, 41.711823, 48.949120>,  <44.697914, 41.486229, 48.987179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625389, 41.711823, 48.949120>,  <44.504517, 42.087811, 48.885689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625389, 41.711823, 48.949120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925883, 0.249848, -0.283401,
		0.226769, 0.232459, 0.945801,
		0.302185, -0.939967, 0.158572,
		44.716045, 41.429832, 48.996693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981167, 42.115707, 49.312286>,  <44.504517, 42.087811, 48.885689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981167, 42.115707, 49.312286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064240, 41.754776, 49.161198>,  <45.114082, 41.538216, 49.070545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064240, 41.754776, 49.161198>,  <44.981167, 42.115707, 49.312286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064240, 41.754776, 49.161198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939514, 0.291514, -0.179813,
		0.272361, -0.317528, 0.908293,
		0.207685, -0.902328, -0.377719,
		45.126545, 41.484077, 49.047882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630314, 41.882496, 49.582111>,  <44.981167, 42.115707, 49.312286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630314, 41.882496, 49.582111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592194, 41.668839, 49.246109>,  <45.569321, 41.540646, 49.044506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592194, 41.668839, 49.246109>,  <45.630314, 41.882496, 49.582111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592194, 41.668839, 49.246109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956041, 0.185966, -0.226721,
		0.277314, -0.824689, 0.492936,
		-0.095305, -0.534140, -0.840007,
		45.563602, 41.508598, 48.994106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512306, 42.048172, 50.236118>,  <45.630314, 41.882496, 49.582111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512306, 42.048172, 50.236118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.605972, 42.418304, 50.355404>,  <45.662174, 42.640385, 50.426975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.605972, 42.418304, 50.355404>,  <45.512306, 42.048172, 50.236118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605972, 42.418304, 50.355404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562976, -0.121012, 0.817566,
		0.792606, -0.359332, 0.492601,
		0.234167, 0.925331, 0.298210,
		45.676224, 42.695904, 50.444866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.741940, 41.934349, 50.804035>,  <45.512306, 42.048172, 50.236118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.741940, 41.934349, 50.804035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632851, 42.317917, 50.835255>,  <45.567398, 42.548058, 50.853985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632851, 42.317917, 50.835255>,  <45.741940, 41.934349, 50.804035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632851, 42.317917, 50.835255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386395, -0.183462, 0.903903,
		0.881091, 0.216358, 0.420556,
		-0.272723, 0.958922, 0.078047,
		45.551033, 42.605595, 50.858669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.737537, 42.058064, 51.475174>,  <45.741940, 41.934349, 50.804035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.737537, 42.058064, 51.475174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527328, 42.373589, 51.347675>,  <45.401203, 42.562904, 51.271175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527328, 42.373589, 51.347675>,  <45.737537, 42.058064, 51.475174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527328, 42.373589, 51.347675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562241, -0.040810, 0.825966,
		0.638525, 0.613277, 0.464949,
		-0.525520, 0.788813, -0.318751,
		45.369671, 42.610233, 51.252048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623676, 42.460602, 52.057751>,  <45.737537, 42.058064, 51.475174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623676, 42.460602, 52.057751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341118, 42.581245, 51.801613>,  <45.171581, 42.653633, 51.647930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341118, 42.581245, 51.801613>,  <45.623676, 42.460602, 52.057751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341118, 42.581245, 51.801613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670456, 0.004920, 0.741933,
		0.226925, 0.953419, 0.198740,
		-0.706395, 0.301610, -0.640342,
		45.129200, 42.671730, 51.609509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.205574, 42.922115, 52.442184>,  <45.623676, 42.460602, 52.057751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.205574, 42.922115, 52.442184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991364, 42.791786, 52.130531>,  <44.862839, 42.713589, 51.943539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991364, 42.791786, 52.130531>,  <45.205574, 42.922115, 52.442184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991364, 42.791786, 52.130531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777408, -0.170230, 0.605523,
		-0.329926, 0.929979, -0.162136,
		-0.535524, -0.325824, -0.779136,
		44.830708, 42.694038, 51.896790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566322, 43.263893, 52.470257>,  <45.205574, 42.922115, 52.442184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566322, 43.263893, 52.470257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509079, 42.928764, 52.259514>,  <44.474735, 42.727688, 52.133068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509079, 42.928764, 52.259514>,  <44.566322, 43.263893, 52.470257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509079, 42.928764, 52.259514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895885, -0.116574, 0.428720,
		-0.420608, 0.533357, -0.733907,
		-0.143106, -0.837819, -0.526858,
		44.466148, 42.677418, 52.101456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881084, 43.267540, 52.298462>,  <44.566322, 43.263893, 52.470257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881084, 43.267540, 52.298462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961792, 42.882355, 52.226913>,  <44.010216, 42.651245, 52.183987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961792, 42.882355, 52.226913>,  <43.881084, 43.267540, 52.298462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961792, 42.882355, 52.226913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888784, -0.256750, 0.379660,
		-0.411522, 0.082370, -0.907670,
		0.201772, -0.962961, -0.178867,
		44.022324, 42.593468, 52.173252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271713, 43.034267, 51.974167>,  <43.881084, 43.267540, 52.298462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271713, 43.034267, 51.974167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447365, 42.694977, 52.092609>,  <43.552757, 42.491402, 52.163677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447365, 42.694977, 52.092609>,  <43.271713, 43.034267, 51.974167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447365, 42.694977, 52.092609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885477, -0.352878, 0.302335,
		-0.151957, -0.394963, -0.906042,
		0.439134, -0.848222, 0.296109,
		43.579105, 42.440510, 52.181442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833519, 42.529465, 51.816193>,  <43.271713, 43.034267, 51.974167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833519, 42.529465, 51.816193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063148, 42.360825, 52.096962>,  <43.200924, 42.259640, 52.265423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063148, 42.360825, 52.096962>,  <42.833519, 42.529465, 51.816193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063148, 42.360825, 52.096962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818353, -0.266929, 0.508967,
		-0.027217, -0.866604, -0.498254,
		0.574071, -0.421600, 0.701922,
		43.235371, 42.234344, 52.307537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575333, 41.895454, 51.866474>,  <42.833519, 42.529465, 51.816193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575333, 41.895454, 51.866474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779732, 41.938110, 52.207649>,  <42.902370, 41.963703, 52.412354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779732, 41.938110, 52.207649>,  <42.575333, 41.895454, 51.866474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779732, 41.938110, 52.207649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723992, -0.481511, 0.493946,
		0.463375, -0.869928, -0.168844,
		0.510998, 0.106641, 0.852941,
		42.933033, 41.970104, 52.463531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479530, 41.250263, 52.154240>,  <42.575333, 41.895454, 51.866474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479530, 41.250263, 52.154240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576691, 41.493454, 52.456596>,  <42.634987, 41.639366, 52.638008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576691, 41.493454, 52.456596>,  <42.479530, 41.250263, 52.154240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576691, 41.493454, 52.456596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534249, -0.566557, 0.627369,
		0.809678, -0.556221, 0.187192,
		0.242900, 0.607974, 0.755889,
		42.649559, 41.675846, 52.683361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781437, 40.821205, 52.609402>,  <42.479530, 41.250263, 52.154240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781437, 40.821205, 52.609402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660908, 41.135818, 52.825020>,  <42.588589, 41.324585, 52.954391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660908, 41.135818, 52.825020>,  <42.781437, 40.821205, 52.609402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660908, 41.135818, 52.825020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576227, -0.600623, 0.554269,
		0.759715, -0.143602, 0.634201,
		-0.301322, 0.786531, 0.539050,
		42.570511, 41.371777, 52.986736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960167, 40.685085, 53.381565>,  <42.781437, 40.821205, 52.609402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960167, 40.685085, 53.381565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654938, 40.942856, 53.361828>,  <42.471802, 41.097519, 53.349987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654938, 40.942856, 53.361828>,  <42.960167, 40.685085, 53.381565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654938, 40.942856, 53.361828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521150, -0.568340, 0.636704,
		0.382267, 0.511565, 0.769528,
		-0.763069, 0.644430, -0.049344,
		42.426018, 41.136185, 53.347023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681038, 40.582817, 54.010651>,  <42.960167, 40.685085, 53.381565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681038, 40.582817, 54.010651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398964, 40.802979, 53.831863>,  <42.229721, 40.935074, 53.724590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398964, 40.802979, 53.831863>,  <42.681038, 40.582817, 54.010651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398964, 40.802979, 53.831863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702053, -0.453826, 0.548784,
		0.099208, 0.700784, 0.706442,
		-0.705181, 0.550403, -0.446964,
		42.187408, 40.968098, 53.697773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284615, 40.962997, 54.507946>,  <42.681038, 40.582817, 54.010651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284615, 40.962997, 54.507946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014912, 40.950485, 54.212814>,  <41.853088, 40.942978, 54.035736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014912, 40.950485, 54.212814>,  <42.284615, 40.962997, 54.507946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014912, 40.950485, 54.212814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679589, -0.364729, 0.636499,
		-0.289016, 0.930588, 0.224667,
		-0.674261, -0.031277, -0.737830,
		41.812634, 40.941101, 53.991467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619015, 41.371521, 54.720558>,  <42.284615, 40.962997, 54.507946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619015, 41.371521, 54.720558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570831, 41.080589, 54.450306>,  <41.541920, 40.906029, 54.288155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570831, 41.080589, 54.450306>,  <41.619015, 41.371521, 54.720558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570831, 41.080589, 54.450306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653885, -0.453954, 0.605277,
		-0.746942, 0.514699, -0.420907,
		-0.120463, -0.727331, -0.675632,
		41.534691, 40.862389, 54.247616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961189, 41.143082, 54.863064>,  <41.619015, 41.371521, 54.720558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961189, 41.143082, 54.863064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060043, 40.872681, 54.585373>,  <41.119354, 40.710442, 54.418758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060043, 40.872681, 54.585373>,  <40.961189, 41.143082, 54.863064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060043, 40.872681, 54.585373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640026, -0.651798, 0.406850,
		-0.727526, 0.343778, -0.593736,
		0.247130, -0.676000, -0.694227,
		41.134182, 40.669880, 54.377106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374493, 40.910278, 54.472988>,  <40.961189, 41.143082, 54.863064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374493, 40.910278, 54.472988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653641, 40.627213, 54.428829>,  <40.821129, 40.457375, 54.402336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653641, 40.627213, 54.428829>,  <40.374493, 40.910278, 54.472988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653641, 40.627213, 54.428829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642599, -0.686721, 0.339825,
		-0.316292, -0.166215, -0.933987,
		0.697873, -0.707663, -0.110395,
		40.863003, 40.414913, 54.395710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145332, 40.481194, 54.017094>,  <40.374493, 40.910278, 54.472988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145332, 40.481194, 54.017094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417625, 40.281151, 54.231194>,  <40.581001, 40.161125, 54.359653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417625, 40.281151, 54.231194>,  <40.145332, 40.481194, 54.017094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417625, 40.281151, 54.231194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711618, -0.624821, 0.321245,
		0.173779, -0.599576, -0.781223,
		0.680735, -0.500107, 0.535250,
		40.621845, 40.131119, 54.391769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067764, 39.805359, 53.854633>,  <40.145332, 40.481194, 54.017094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067764, 39.805359, 53.854633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261993, 39.799492, 54.204262>,  <40.378532, 39.795971, 54.414040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261993, 39.799492, 54.204262>,  <40.067764, 39.805359, 53.854633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261993, 39.799492, 54.204262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629515, -0.699628, 0.337980,
		0.606569, -0.714356, -0.348954,
		0.485576, -0.014663, 0.874071,
		40.407665, 39.795094, 54.466484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066357, 39.052383, 54.065643>,  <40.067764, 39.805359, 53.854633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066357, 39.052383, 54.065643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133667, 39.279839, 54.387718>,  <40.174053, 39.416313, 54.580963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133667, 39.279839, 54.387718>,  <40.066357, 39.052383, 54.065643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133667, 39.279839, 54.387718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614609, -0.578099, 0.536710,
		0.770674, -0.585194, 0.252209,
		0.168277, 0.568639, 0.805191,
		40.184151, 39.450432, 54.629276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266628, 38.607449, 54.596313>,  <40.066357, 39.052383, 54.065643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266628, 38.607449, 54.596313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139397, 38.922966, 54.806694>,  <40.063057, 39.112278, 54.932922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139397, 38.922966, 54.806694>,  <40.266628, 38.607449, 54.596313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139397, 38.922966, 54.806694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668683, -0.579928, 0.465346,
		0.672077, -0.203677, 0.711919,
		-0.318081, 0.788796, 0.525951,
		40.043972, 39.159603, 54.964478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084530, 38.340595, 55.326191>,  <40.266628, 38.607449, 54.596313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084530, 38.340595, 55.326191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905174, 38.694870, 55.278027>,  <39.797562, 38.907436, 55.249126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905174, 38.694870, 55.278027>,  <40.084530, 38.340595, 55.326191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905174, 38.694870, 55.278027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754523, -0.302831, 0.582226,
		0.479207, 0.351920, 0.804060,
		-0.448391, 0.885689, -0.120413,
		39.770657, 38.960575, 55.241901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823933, 38.465805, 55.992115>,  <40.084530, 38.340595, 55.326191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823933, 38.465805, 55.992115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622627, 38.706779, 55.744308>,  <39.501846, 38.851364, 55.595627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622627, 38.706779, 55.744308>,  <39.823933, 38.465805, 55.992115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622627, 38.706779, 55.744308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858283, -0.265188, 0.439346,
		0.100392, 0.752822, 0.650523,
		-0.503260, 0.602440, -0.619512,
		39.471649, 38.887512, 55.558456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369659, 38.866177, 56.391411>,  <39.823933, 38.465805, 55.992115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369659, 38.866177, 56.391411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193031, 38.874786, 56.032623>,  <39.087055, 38.879951, 55.817352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193031, 38.874786, 56.032623>,  <39.369659, 38.866177, 56.391411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193031, 38.874786, 56.032623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891495, -0.123353, 0.435914,
		-0.101260, 0.992129, 0.073660,
		-0.441570, 0.021527, -0.896969,
		39.060562, 38.881245, 55.763535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855614, 39.295414, 56.459312>,  <39.369659, 38.866177, 56.391411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855614, 39.295414, 56.459312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755146, 39.074944, 56.141037>,  <38.694866, 38.942661, 55.950073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755146, 39.074944, 56.141037>,  <38.855614, 39.295414, 56.459312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755146, 39.074944, 56.141037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944152, -0.041624, 0.326872,
		-0.213284, 0.833349, -0.509940,
		-0.251173, -0.551177, -0.795686,
		38.679794, 38.909592, 55.902332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222466, 39.485958, 56.408264>,  <38.855614, 39.295414, 56.459312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222466, 39.485958, 56.408264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243317, 39.152481, 56.188362>,  <38.255829, 38.952393, 56.056419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243317, 39.152481, 56.188362>,  <38.222466, 39.485958, 56.408264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243317, 39.152481, 56.188362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901985, -0.275581, 0.332382,
		-0.428609, 0.478547, -0.766347,
		0.052130, -0.833696, -0.549758,
		38.258957, 38.902370, 56.023434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545341, 39.367615, 55.988415>,  <38.222466, 39.485958, 56.408264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545341, 39.367615, 55.988415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711548, 39.004044, 56.002201>,  <37.811272, 38.785900, 56.010471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711548, 39.004044, 56.002201>,  <37.545341, 39.367615, 55.988415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711548, 39.004044, 56.002201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907416, -0.411613, 0.084678,
		-0.062781, -0.066456, -0.995812,
		0.415517, -0.908932, 0.034462,
		37.836205, 38.731365, 56.012539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196049, 39.016289, 55.619053>,  <37.545341, 39.367615, 55.988415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196049, 39.016289, 55.619053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355156, 38.725655, 55.843143>,  <37.450619, 38.551273, 55.977596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355156, 38.725655, 55.843143>,  <37.196049, 39.016289, 55.619053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355156, 38.725655, 55.843143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917481, -0.317279, 0.239923,
		0.003423, -0.609430, -0.792833,
		0.397765, -0.726587, 0.560226,
		37.474487, 38.507679, 56.011211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730740, 38.434025, 55.563377>,  <37.196049, 39.016289, 55.619053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730740, 38.434025, 55.563377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957088, 38.334335, 55.877747>,  <37.092899, 38.274521, 56.066368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957088, 38.334335, 55.877747>,  <36.730740, 38.434025, 55.563377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957088, 38.334335, 55.877747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811127, -0.339221, 0.476448,
		0.147857, -0.907091, -0.394111,
		0.565872, -0.249227, 0.785922,
		37.126850, 38.259567, 56.113522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560902, 37.844166, 55.651493>,  <36.730740, 38.434025, 55.563377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560902, 37.844166, 55.651493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693768, 37.930748, 56.018715>,  <36.773487, 37.982697, 56.239048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693768, 37.930748, 56.018715>,  <36.560902, 37.844166, 55.651493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693768, 37.930748, 56.018715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873386, -0.296963, 0.386017,
		0.356182, -0.930033, 0.090408,
		0.332161, 0.216453, 0.918051,
		36.793415, 37.995686, 56.294128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323414, 37.287632, 56.088390>,  <36.560902, 37.844166, 55.651493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323414, 37.287632, 56.088390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400444, 37.606392, 56.317429>,  <36.446663, 37.797646, 56.454853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400444, 37.606392, 56.317429>,  <36.323414, 37.287632, 56.088390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400444, 37.606392, 56.317429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892276, -0.100628, 0.440133,
		0.408361, -0.595675, 0.691674,
		0.192574, 0.796898, 0.572599,
		36.458218, 37.845463, 56.489208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900665, 37.048645, 56.617573>,  <36.323414, 37.287632, 56.088390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900665, 37.048645, 56.617573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979233, 37.431358, 56.703342>,  <36.026375, 37.660988, 56.754807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979233, 37.431358, 56.703342>,  <35.900665, 37.048645, 56.617573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979233, 37.431358, 56.703342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852810, 0.058782, 0.518903,
		0.483874, -0.284789, 0.827503,
		0.196420, 0.956786, 0.214428,
		36.038158, 37.718395, 56.767670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952282, 37.173138, 57.369450>,  <35.900665, 37.048645, 56.617573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952282, 37.173138, 57.369450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860363, 37.523628, 57.200020>,  <35.805210, 37.733921, 57.098362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860363, 37.523628, 57.200020>,  <35.952282, 37.173138, 57.369450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860363, 37.523628, 57.200020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801473, 0.076521, 0.593115,
		0.552116, 0.475783, 0.684688,
		-0.229802, 0.876228, -0.423576,
		35.791424, 37.786495, 57.072948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706970, 37.646225, 57.891460>,  <35.952282, 37.173138, 57.369450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706970, 37.646225, 57.891460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563751, 37.805206, 57.553505>,  <35.477821, 37.900593, 57.350731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563751, 37.805206, 57.553505>,  <35.706970, 37.646225, 57.891460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563751, 37.805206, 57.553505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864157, 0.201633, 0.461060,
		0.353607, 0.895196, 0.271267,
		-0.358043, 0.397451, -0.844889,
		35.456337, 37.924442, 57.300037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235100, 38.160496, 58.178192>,  <35.706970, 37.646225, 57.891460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235100, 38.160496, 58.178192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157711, 38.185913, 57.786575>,  <35.111279, 38.201164, 57.551605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157711, 38.185913, 57.786575>,  <35.235100, 38.160496, 58.178192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157711, 38.185913, 57.786575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973748, 0.109543, 0.199539,
		0.119927, 0.991949, 0.040682,
		-0.193476, 0.063544, -0.979045,
		35.099667, 38.204975, 57.492863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680923, 38.735909, 58.115025>,  <35.235100, 38.160496, 58.178192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680923, 38.735909, 58.115025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682079, 38.475723, 57.811211>,  <34.682774, 38.319611, 57.628922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682079, 38.475723, 57.811211>,  <34.680923, 38.735909, 58.115025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682079, 38.475723, 57.811211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961794, -0.209736, 0.175962,
		-0.273758, 0.730005, -0.626218,
		0.002887, -0.650464, -0.759532,
		34.682945, 38.280582, 57.583351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189270, 38.983448, 57.594521>,  <34.680923, 38.735909, 58.115025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189270, 38.983448, 57.594521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246155, 38.587654, 57.583981>,  <34.280285, 38.350178, 57.577656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246155, 38.587654, 57.583981>,  <34.189270, 38.983448, 57.594521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246155, 38.587654, 57.583981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915710, -0.141623, 0.376055,
		-0.375834, -0.029346, -0.926222,
		0.142210, -0.989486, -0.026355,
		34.288818, 38.290810, 57.576073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531311, 39.286533, 57.290680>,  <34.189270, 38.983448, 57.594521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531311, 39.286533, 57.290680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235126, 39.548935, 57.349159>,  <33.057415, 39.706375, 57.384247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235126, 39.548935, 57.349159>,  <33.531311, 39.286533, 57.290680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235126, 39.548935, 57.349159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489003, 0.675076, -0.552403,
		-0.461073, -0.337542, -0.820656,
		-0.740465, 0.656002, 0.146201,
		33.012989, 39.745735, 57.393021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409946, 39.649963, 56.621311>,  <33.531311, 39.286533, 57.290680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409946, 39.649963, 56.621311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230545, 39.915276, 56.860947>,  <33.122906, 40.074463, 57.004730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230545, 39.915276, 56.860947>,  <33.409946, 39.649963, 56.621311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230545, 39.915276, 56.860947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321158, 0.745117, -0.584515,
		-0.834090, -0.069751, -0.547201,
		-0.448499, 0.663276, 0.599093,
		33.095997, 40.114258, 57.040676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091438, 40.140442, 56.188416>,  <33.409946, 39.649963, 56.621311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091438, 40.140442, 56.188416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152275, 40.324074, 56.538528>,  <33.188778, 40.434254, 56.748596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152275, 40.324074, 56.538528>,  <33.091438, 40.140442, 56.188416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152275, 40.324074, 56.538528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335032, 0.809205, -0.482640,
		-0.929851, 0.366650, -0.030737,
		0.152088, 0.459081, 0.875279,
		33.197903, 40.461800, 56.801113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948189, 40.838928, 56.040001>,  <33.091438, 40.140442, 56.188416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948189, 40.838928, 56.040001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158325, 40.840195, 56.380356>,  <33.284409, 40.840954, 56.584568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158325, 40.840195, 56.380356>,  <32.948189, 40.838928, 56.040001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158325, 40.840195, 56.380356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672162, 0.611623, -0.417271,
		-0.521742, 0.791143, 0.319185,
		0.525342, 0.003163, 0.850886,
		33.315929, 40.841145, 56.635620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153549, 41.538815, 56.186604>,  <32.948189, 40.838928, 56.040001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153549, 41.538815, 56.186604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414177, 41.292114, 56.363274>,  <33.570553, 41.144093, 56.469276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414177, 41.292114, 56.363274>,  <33.153549, 41.538815, 56.186604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414177, 41.292114, 56.363274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757876, 0.554518, -0.343704,
		-0.032938, 0.558683, 0.828727,
		0.651566, -0.616751, 0.441678,
		33.609646, 41.107090, 56.495777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623997, 42.002766, 56.364365>,  <33.153549, 41.538815, 56.186604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623997, 42.002766, 56.364365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821198, 41.658218, 56.413330>,  <33.939518, 41.451488, 56.442707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821198, 41.658218, 56.413330>,  <33.623997, 42.002766, 56.364365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821198, 41.658218, 56.413330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869956, 0.486281, -0.081897,
		0.011018, 0.146868, 0.989095,
		0.493006, -0.861371, 0.122411,
		33.969101, 41.399807, 56.450054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200211, 42.278511, 56.595341>,  <33.623997, 42.002766, 56.364365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200211, 42.278511, 56.595341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299133, 41.902512, 56.501320>,  <34.358486, 41.676914, 56.444908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299133, 41.902512, 56.501320>,  <34.200211, 42.278511, 56.595341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299133, 41.902512, 56.501320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957755, 0.273900, -0.087657,
		0.146777, -0.203443, 0.968022,
		0.247308, -0.939995, -0.235050,
		34.373325, 41.620514, 56.430805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798325, 42.124523, 56.877396>,  <34.200211, 42.278511, 56.595341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798325, 42.124523, 56.877396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826065, 41.829353, 56.608871>,  <34.842709, 41.652252, 56.447758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826065, 41.829353, 56.608871>,  <34.798325, 42.124523, 56.877396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826065, 41.829353, 56.608871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935502, 0.281802, -0.213128,
		0.346449, -0.613232, 0.709873,
		0.069347, -0.737926, -0.671310,
		34.846870, 41.607975, 56.407478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493214, 41.694431, 56.957939>,  <34.798325, 42.124523, 56.877396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493214, 41.694431, 56.957939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361656, 41.629021, 56.585899>,  <35.282722, 41.589775, 56.362675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361656, 41.629021, 56.585899>,  <35.493214, 41.694431, 56.957939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361656, 41.629021, 56.585899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871887, 0.325815, -0.365593,
		0.362823, -0.931185, 0.035415,
		-0.328896, -0.163524, -0.930101,
		35.262989, 41.579964, 56.306870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993023, 41.165657, 56.554226>,  <35.493214, 41.694431, 56.957939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993023, 41.165657, 56.554226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784496, 41.383408, 56.291355>,  <35.659378, 41.514057, 56.133633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784496, 41.383408, 56.291355>,  <35.993023, 41.165657, 56.554226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784496, 41.383408, 56.291355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848993, 0.253045, -0.463873,
		-0.086224, -0.799766, -0.594087,
		-0.521321, 0.544373, -0.657178,
		35.628101, 41.546719, 56.094200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381149, 41.097313, 56.006863>,  <35.993023, 41.165657, 56.554226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381149, 41.097313, 56.006863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150108, 41.407280, 55.904194>,  <36.011486, 41.593262, 55.842594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150108, 41.407280, 55.904194>,  <36.381149, 41.097313, 56.006863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150108, 41.407280, 55.904194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759600, 0.395053, -0.516663,
		-0.298973, -0.493392, -0.816811,
		-0.577601, 0.774918, -0.256670,
		35.976830, 41.639755, 55.827194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419819, 41.125683, 55.210926>,  <36.381149, 41.097313, 56.006863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419819, 41.125683, 55.210926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298729, 41.472420, 55.369392>,  <36.226074, 41.680462, 55.464474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298729, 41.472420, 55.369392>,  <36.419819, 41.125683, 55.210926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298729, 41.472420, 55.369392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723103, 0.479677, -0.497023,
		-0.620872, 0.136011, -0.772023,
		-0.302721, 0.866840, 0.396168,
		36.207912, 41.732471, 55.488243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493797, 41.574947, 54.643970>,  <36.419819, 41.125683, 55.210926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493797, 41.574947, 54.643970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504791, 41.819183, 54.960560>,  <36.511387, 41.965725, 55.150513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504791, 41.819183, 54.960560>,  <36.493797, 41.574947, 54.643970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504791, 41.819183, 54.960560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783963, 0.478075, -0.396039,
		-0.620199, 0.631368, -0.465540,
		0.027483, 0.610589, 0.791471,
		36.513035, 42.002361, 55.198002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532562, 42.258717, 54.298847>,  <36.493797, 41.574947, 54.643970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532562, 42.258717, 54.298847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659889, 42.297638, 54.676037>,  <36.736286, 42.320992, 54.902351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659889, 42.297638, 54.676037>,  <36.532562, 42.258717, 54.298847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659889, 42.297638, 54.676037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841948, 0.428117, -0.328389,
		-0.435658, 0.898470, 0.054352,
		0.318317, 0.097303, 0.942978,
		36.755383, 42.326828, 54.958931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735893, 43.003124, 54.375786>,  <36.532562, 42.258717, 54.298847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735893, 43.003124, 54.375786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932922, 42.793823, 54.653946>,  <37.051140, 42.668243, 54.820843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932922, 42.793823, 54.653946>,  <36.735893, 43.003124, 54.375786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932922, 42.793823, 54.653946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861879, 0.404016, -0.306489,
		-0.120584, 0.750320, 0.649984,
		0.492569, -0.523250, 0.695403,
		37.080692, 42.636848, 54.862568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159698, 43.531624, 54.661602>,  <36.735893, 43.003124, 54.375786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159698, 43.531624, 54.661602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303017, 43.166931, 54.741974>,  <37.389008, 42.948116, 54.790195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303017, 43.166931, 54.741974>,  <37.159698, 43.531624, 54.661602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303017, 43.166931, 54.741974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920190, 0.308515, -0.240973,
		0.157714, 0.271231, 0.949505,
		0.358296, -0.911730, 0.200927,
		37.410507, 42.893414, 54.802254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810127, 43.650654, 55.035641>,  <37.159698, 43.531624, 54.661602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810127, 43.650654, 55.035641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832352, 43.273109, 54.905384>,  <37.845688, 43.046585, 54.827229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832352, 43.273109, 54.905384>,  <37.810127, 43.650654, 55.035641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832352, 43.273109, 54.905384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967761, 0.131154, -0.215029,
		0.245667, -0.303197, 0.920717,
		0.055560, -0.943859, -0.325642,
		37.849018, 42.989952, 54.807690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399261, 43.418522, 55.287937>,  <37.810127, 43.650654, 55.035641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399261, 43.418522, 55.287937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342117, 43.163467, 54.985146>,  <38.307831, 43.010437, 54.803471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342117, 43.163467, 54.985146>,  <38.399261, 43.418522, 55.287937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342117, 43.163467, 54.985146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962281, 0.089435, -0.256938,
		0.231533, -0.765130, 0.600807,
		-0.142857, -0.637635, -0.756977,
		38.299259, 42.972176, 54.758053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884712, 42.779457, 55.335468>,  <38.399261, 43.418522, 55.287937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884712, 42.779457, 55.335468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777790, 42.802994, 54.950745>,  <38.713634, 42.817116, 54.719910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777790, 42.802994, 54.950745>,  <38.884712, 42.779457, 55.335468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777790, 42.802994, 54.950745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952795, -0.132993, -0.272938,
		-0.143974, -0.989369, -0.020513,
		-0.267309, 0.058841, -0.961813,
		38.697598, 42.820644, 54.662201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186928, 42.211735, 55.104256>,  <38.884712, 42.779457, 55.335468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186928, 42.211735, 55.104256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122402, 42.493057, 54.827316>,  <39.083687, 42.661850, 54.661152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122402, 42.493057, 54.827316>,  <39.186928, 42.211735, 55.104256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122402, 42.493057, 54.827316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913955, -0.158242, -0.373692,
		-0.372377, -0.693055, -0.617260,
		-0.161313, 0.703302, -0.692347,
		39.074009, 42.704048, 54.619614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621536, 41.954895, 54.482674>,  <39.186928, 42.211735, 55.104256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621536, 41.954895, 54.482674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533897, 42.337296, 54.404644>,  <39.481316, 42.566738, 54.357826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533897, 42.337296, 54.404644>,  <39.621536, 41.954895, 54.482674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533897, 42.337296, 54.404644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862806, 0.096475, -0.496243,
		-0.455590, -0.277038, -0.845983,
		-0.219094, 0.956003, -0.195077,
		39.468170, 42.624096, 54.346123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966644, 42.053715, 53.881306>,  <39.621536, 41.954895, 54.482674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966644, 42.053715, 53.881306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865093, 42.431473, 53.964897>,  <39.804161, 42.658127, 54.015053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865093, 42.431473, 53.964897>,  <39.966644, 42.053715, 53.881306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865093, 42.431473, 53.964897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839093, 0.322508, -0.438076,
		-0.481112, 0.064133, -0.874310,
		-0.253877, 0.944391, 0.208977,
		39.788929, 42.714790, 54.027592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025501, 42.490379, 53.211262>,  <39.966644, 42.053715, 53.881306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025501, 42.490379, 53.211262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065727, 42.751129, 53.511913>,  <40.089863, 42.907578, 53.692307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065727, 42.751129, 53.511913>,  <40.025501, 42.490379, 53.211262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065727, 42.751129, 53.511913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700281, 0.490263, -0.518891,
		-0.706747, 0.578537, -0.407189,
		0.100568, 0.651872, 0.751631,
		40.095898, 42.946690, 53.737404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091183, 43.030090, 52.879135>,  <40.025501, 42.490379, 53.211262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091183, 43.030090, 52.879135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217239, 43.136139, 53.243641>,  <40.292873, 43.199768, 53.462345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217239, 43.136139, 53.243641>,  <40.091183, 43.030090, 52.879135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217239, 43.136139, 53.243641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777454, 0.478565, -0.408095,
		-0.544292, 0.837071, -0.055302,
		0.315139, 0.265118, 0.911263,
		40.311783, 43.215675, 53.517021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157009, 43.753841, 52.878166>,  <40.091183, 43.030090, 52.879135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157009, 43.753841, 52.878166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399643, 43.628616, 53.170483>,  <40.545223, 43.553482, 53.345871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399643, 43.628616, 53.170483>,  <40.157009, 43.753841, 52.878166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399643, 43.628616, 53.170483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757383, 0.507034, -0.411445,
		-0.241727, 0.803062, 0.544665,
		0.606580, -0.313063, 0.730789,
		40.581615, 43.534698, 53.389721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491386, 44.373642, 53.088757>,  <40.157009, 43.753841, 52.878166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491386, 44.373642, 53.088757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727127, 44.084839, 53.233734>,  <40.868572, 43.911556, 53.320721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727127, 44.084839, 53.233734>,  <40.491386, 44.373642, 53.088757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727127, 44.084839, 53.233734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803106, 0.474905, -0.359842,
		0.087683, 0.503156, 0.859736,
		0.589350, -0.722011, 0.362446,
		40.903931, 43.868237, 53.342468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150242, 44.709232, 53.543224>,  <40.491386, 44.373642, 53.088757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150242, 44.709232, 53.543224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271812, 44.338020, 53.457077>,  <41.344757, 44.115292, 53.405388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271812, 44.338020, 53.457077>,  <41.150242, 44.709232, 53.543224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271812, 44.338020, 53.457077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921751, 0.343594, -0.179773,
		0.240835, -0.143880, 0.959842,
		0.303930, -0.928031, -0.215371,
		41.362991, 44.059612, 53.392467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782478, 44.577648, 53.916065>,  <41.150242, 44.709232, 53.543224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782478, 44.577648, 53.916065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767700, 44.331848, 53.600845>,  <41.758835, 44.184368, 53.411713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767700, 44.331848, 53.600845>,  <41.782478, 44.577648, 53.916065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767700, 44.331848, 53.600845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898077, 0.325447, -0.295874,
		0.438284, -0.718660, 0.539847,
		-0.036941, -0.614502, -0.788050,
		41.756618, 44.147499, 53.364429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439888, 44.218311, 53.981937>,  <41.782478, 44.577648, 53.916065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439888, 44.218311, 53.981937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301796, 44.183014, 53.608192>,  <42.218941, 44.161835, 53.383945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301796, 44.183014, 53.608192>,  <42.439888, 44.218311, 53.981937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301796, 44.183014, 53.608192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880427, 0.314365, -0.354997,
		0.325056, -0.945192, -0.030839,
		-0.345235, -0.088242, -0.934359,
		42.198227, 44.156540, 53.327885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053448, 44.125694, 53.600521>,  <42.439888, 44.218311, 53.981937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053448, 44.125694, 53.600521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778709, 44.221909, 53.326180>,  <42.613865, 44.279636, 53.161575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778709, 44.221909, 53.326180>,  <43.053448, 44.125694, 53.600521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778709, 44.221909, 53.326180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712753, 0.407573, -0.570848,
		0.142226, -0.880925, -0.451379,
		-0.686844, 0.240532, -0.685849,
		42.572655, 44.294067, 53.120426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368195, 43.817417, 52.983086>,  <43.053448, 44.125694, 53.600521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368195, 43.817417, 52.983086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095058, 44.078911, 52.852638>,  <42.931175, 44.235809, 52.774372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095058, 44.078911, 52.852638>,  <43.368195, 43.817417, 52.983086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095058, 44.078911, 52.852638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688520, 0.426621, -0.586460,
		-0.244263, -0.624997, -0.741428,
		-0.682844, 0.653738, -0.326115,
		42.890205, 44.275032, 52.754803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226234, 43.820717, 52.150723>,  <43.368195, 43.817417, 52.983086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226234, 43.820717, 52.150723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101013, 44.178833, 52.277496>,  <43.025883, 44.393703, 52.353561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101013, 44.178833, 52.277496>,  <43.226234, 43.820717, 52.150723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101013, 44.178833, 52.277496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589480, 0.444816, -0.674279,
		-0.744656, -0.024255, -0.667007,
		-0.313050, 0.895293, 0.316938,
		43.007099, 44.447422, 52.372578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069431, 44.207882, 51.504021>,  <43.226234, 43.820717, 52.150723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069431, 44.207882, 51.504021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098755, 44.485291, 51.790699>,  <43.116348, 44.651737, 51.962708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098755, 44.485291, 51.790699>,  <43.069431, 44.207882, 51.504021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098755, 44.485291, 51.790699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510119, 0.591435, -0.624486,
		-0.856974, 0.411379, -0.310424,
		0.073305, 0.693521, 0.716697,
		43.120747, 44.693348, 52.005707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614853, 44.862473, 51.317661>,  <43.069431, 44.207882, 51.504021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614853, 44.862473, 51.317661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909519, 44.954132, 51.572163>,  <43.086319, 45.009129, 51.724865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909519, 44.954132, 51.572163>,  <42.614853, 44.862473, 51.317661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909519, 44.954132, 51.572163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478868, 0.487570, -0.730041,
		-0.477508, 0.842475, 0.249442,
		0.736662, 0.229151, 0.636253,
		43.130516, 45.022877, 51.763039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722515, 45.533245, 51.206863>,  <42.614853, 44.862473, 51.317661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722515, 45.533245, 51.206863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064663, 45.427383, 51.384991>,  <43.269951, 45.363869, 51.491867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064663, 45.427383, 51.384991>,  <42.722515, 45.533245, 51.206863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064663, 45.427383, 51.384991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514026, 0.540229, -0.666280,
		-0.064244, 0.798819, 0.598131,
		0.855365, -0.264650, 0.445320,
		43.321274, 45.347988, 51.518585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099224, 46.077316, 51.090851>,  <42.722515, 45.533245, 51.206863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099224, 46.077316, 51.090851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376293, 45.828682, 51.237190>,  <43.542534, 45.679501, 51.324993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376293, 45.828682, 51.237190>,  <43.099224, 46.077316, 51.090851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376293, 45.828682, 51.237190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678293, 0.388945, -0.623410,
		0.245206, 0.679969, 0.691025,
		0.692671, -0.621581, 0.365847,
		43.584095, 45.642208, 51.346943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706642, 46.479469, 51.266125>,  <43.099224, 46.077316, 51.090851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706642, 46.479469, 51.266125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834702, 46.109428, 51.184452>,  <43.911537, 45.887405, 51.135448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834702, 46.109428, 51.184452>,  <43.706642, 46.479469, 51.266125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834702, 46.109428, 51.184452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612149, 0.366492, -0.700683,
		0.723033, 0.099337, 0.683634,
		0.320150, -0.925103, -0.204177,
		43.930748, 45.831898, 51.123199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494156, 46.442520, 51.224655>,  <43.706642, 46.479469, 51.266125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494156, 46.442520, 51.224655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387821, 46.094467, 51.058670>,  <44.324020, 45.885635, 50.959080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387821, 46.094467, 51.058670>,  <44.494156, 46.442520, 51.224655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387821, 46.094467, 51.058670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747789, 0.085530, -0.658404,
		0.608393, -0.485335, 0.627940,
		-0.265839, -0.870135, -0.414963,
		44.308071, 45.833427, 50.934181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079350, 45.980267, 51.175194>,  <44.494156, 46.442520, 51.224655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079350, 45.980267, 51.175194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815224, 45.881386, 50.891537>,  <44.656750, 45.822060, 50.721344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815224, 45.881386, 50.891537>,  <45.079350, 45.980267, 51.175194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815224, 45.881386, 50.891537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652945, 0.277527, -0.704728,
		0.371013, -0.928371, -0.021847,
		-0.660312, -0.247198, -0.709141,
		44.617130, 45.807228, 50.678795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502895, 45.819210, 50.663467>,  <45.079350, 45.980267, 51.175194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502895, 45.819210, 50.663467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160942, 45.847115, 50.457821>,  <44.955772, 45.863857, 50.334435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160942, 45.847115, 50.457821>,  <45.502895, 45.819210, 50.663467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160942, 45.847115, 50.457821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518827, 0.114238, -0.847212,
		-0.000377, -0.991001, -0.133857,
		-0.854880, 0.069768, -0.514114,
		44.904480, 45.868046, 50.303585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.711681, 41.542812, 50.974937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677296, 41.163422, 50.852951>,  <35.656662, 40.935787, 50.779758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677296, 41.163422, 50.852951>,  <35.711681, 41.542812, 50.974937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677296, 41.163422, 50.852951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784485, 0.124249, -0.607573,
		0.614160, -0.291473, 0.733384,
		-0.085969, -0.948475, -0.304965,
		35.651505, 40.878880, 50.761463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310089, 41.109943, 51.145077>,  <35.711681, 41.542812, 50.974937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310089, 41.109943, 51.145077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.127365, 40.944977, 50.829803>,  <36.017731, 40.845997, 50.640640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.127365, 40.944977, 50.829803>,  <36.310089, 41.109943, 51.145077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127365, 40.944977, 50.829803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819500, 0.149567, -0.553218,
		0.346041, -0.898635, 0.269648,
		-0.456810, -0.412413, -0.788188,
		35.990322, 40.821255, 50.593346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844261, 40.707058, 50.861229>,  <36.310089, 41.109943, 51.145077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844261, 40.707058, 50.861229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584015, 40.728439, 50.558220>,  <36.427868, 40.741268, 50.376415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584015, 40.728439, 50.558220>,  <36.844261, 40.707058, 50.861229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584015, 40.728439, 50.558220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759058, 0.076129, -0.646556,
		0.023111, -0.995664, -0.090102,
		-0.650612, 0.053450, -0.757527,
		36.388832, 40.744473, 50.330963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103226, 40.294479, 50.347401>,  <36.844261, 40.707058, 50.861229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103226, 40.294479, 50.347401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843552, 40.509315, 50.131962>,  <36.687748, 40.638218, 50.002697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843552, 40.509315, 50.131962>,  <37.103226, 40.294479, 50.347401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843552, 40.509315, 50.131962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741548, 0.289285, -0.605327,
		-0.169310, -0.792365, -0.586081,
		-0.649185, 0.537095, -0.538598,
		36.648796, 40.670444, 49.970383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039948, 40.021816, 49.640564>,  <37.103226, 40.294479, 50.347401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039948, 40.021816, 49.640564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920113, 40.402740, 49.617416>,  <36.848209, 40.631294, 49.603527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920113, 40.402740, 49.617416>,  <37.039948, 40.021816, 49.640564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920113, 40.402740, 49.617416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894163, 0.259107, -0.365152,
		-0.332743, -0.161141, -0.929148,
		-0.299590, 0.952312, -0.057870,
		36.830235, 40.688435, 49.600056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057400, 40.200588, 48.824490>,  <37.039948, 40.021816, 49.640564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057400, 40.200588, 48.824490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047653, 40.544205, 49.029018>,  <37.041805, 40.750374, 49.151737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047653, 40.544205, 49.029018>,  <37.057400, 40.200588, 48.824490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047653, 40.544205, 49.029018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828014, 0.303948, -0.471179,
		-0.560178, 0.411902, -0.718705,
		-0.024370, 0.859042, 0.511325,
		37.040344, 40.801918, 49.182415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174187, 40.680336, 48.357624>,  <37.057400, 40.200588, 48.824490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174187, 40.680336, 48.357624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247585, 40.881424, 48.695522>,  <37.291626, 41.002075, 48.898262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247585, 40.881424, 48.695522>,  <37.174187, 40.680336, 48.357624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247585, 40.881424, 48.695522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723790, 0.512388, -0.462154,
		-0.665173, 0.696227, -0.269840,
		0.183501, 0.502720, 0.844749,
		37.302635, 41.032238, 48.948948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234394, 41.496960, 48.212372>,  <37.174187, 40.680336, 48.357624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234394, 41.496960, 48.212372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407867, 41.431618, 48.566826>,  <37.511951, 41.392414, 48.779499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407867, 41.431618, 48.566826>,  <37.234394, 41.496960, 48.212372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407867, 41.431618, 48.566826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766136, 0.584496, -0.267208,
		-0.474291, 0.794783, 0.378640,
		0.433686, -0.163355, 0.886133,
		37.537971, 41.382610, 48.832664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437489, 42.140854, 48.476406>,  <37.234394, 41.496960, 48.212372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437489, 42.140854, 48.476406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.662514, 41.888954, 48.690674>,  <37.797527, 41.737816, 48.819237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.662514, 41.888954, 48.690674>,  <37.437489, 42.140854, 48.476406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662514, 41.888954, 48.690674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768955, 0.636555, -0.059208,
		-0.303700, 0.445217, 0.842347,
		0.562560, -0.629746, 0.535674,
		37.831284, 41.700031, 48.851376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660404, 42.489628, 48.994637>,  <37.437489, 42.140854, 48.476406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660404, 42.489628, 48.994637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.924686, 42.189392, 48.990986>,  <38.083256, 42.009251, 48.988796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.924686, 42.189392, 48.990986>,  <37.660404, 42.489628, 48.994637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924686, 42.189392, 48.990986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750551, 0.660763, -0.008060,
		0.012080, -0.001524, 0.999926,
		0.660702, -0.750593, -0.009125,
		38.122898, 41.964214, 48.988247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200020, 42.642338, 49.509872>,  <37.660404, 42.489628, 48.994637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200020, 42.642338, 49.509872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381023, 42.402878, 49.245491>,  <38.489624, 42.259201, 49.086864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381023, 42.402878, 49.245491>,  <38.200020, 42.642338, 49.509872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381023, 42.402878, 49.245491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711868, 0.688901, -0.136603,
		0.537106, -0.408695, 0.737892,
		0.452505, -0.598652, -0.660950,
		38.516773, 42.223282, 49.047207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956318, 42.809952, 49.533112>,  <38.200020, 42.642338, 49.509872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956318, 42.809952, 49.533112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.979630, 42.569183, 49.214542>,  <38.993618, 42.424721, 49.023399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.979630, 42.569183, 49.214542>,  <38.956318, 42.809952, 49.533112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979630, 42.569183, 49.214542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773873, 0.531221, -0.344855,
		0.630654, -0.596234, 0.496770,
		0.058280, -0.601921, -0.796426,
		38.997112, 42.388607, 48.975616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516884, 42.520493, 49.537792>,  <38.956318, 42.809952, 49.533112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516884, 42.520493, 49.537792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.438641, 42.530037, 49.145634>,  <39.391693, 42.535763, 48.910339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.438641, 42.530037, 49.145634>,  <39.516884, 42.520493, 49.537792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438641, 42.530037, 49.145634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888751, 0.426914, -0.166933,
		0.414560, -0.903977, -0.104713,
		-0.195607, 0.023860, -0.980392,
		39.379959, 42.537197, 48.851517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124172, 42.130066, 49.159416>,  <39.516884, 42.520493, 49.537792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124172, 42.130066, 49.159416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.936016, 42.376869, 48.907055>,  <39.823124, 42.524952, 48.755638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.936016, 42.376869, 48.907055>,  <40.124172, 42.130066, 49.159416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936016, 42.376869, 48.907055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864483, 0.465763, -0.189034,
		0.177215, -0.634323, -0.752482,
		-0.470387, 0.617008, -0.630902,
		39.794899, 42.561970, 48.717785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611305, 42.109451, 48.502781>,  <40.124172, 42.130066, 49.159416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611305, 42.109451, 48.502781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.393173, 42.444046, 48.481216>,  <40.262295, 42.644802, 48.468277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.393173, 42.444046, 48.481216>,  <40.611305, 42.109451, 48.502781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393173, 42.444046, 48.481216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808281, 0.507730, -0.298148,
		-0.222022, -0.206168, -0.952996,
		-0.545333, 0.836484, -0.053914,
		40.229572, 42.694992, 48.465042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674908, 42.370350, 47.893085>,  <40.611305, 42.109451, 48.502781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674908, 42.370350, 47.893085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.539734, 42.698601, 48.077419>,  <40.458630, 42.895550, 48.188019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.539734, 42.698601, 48.077419>,  <40.674908, 42.370350, 47.893085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539734, 42.698601, 48.077419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751528, 0.530041, -0.392763,
		-0.566575, 0.213605, -0.795843,
		-0.337933, 0.820628, 0.460838,
		40.438354, 42.944790, 48.215672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809799, 42.819164, 47.456406>,  <40.674908, 42.370350, 47.893085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809799, 42.819164, 47.456406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.727310, 43.060791, 47.764320>,  <40.677818, 43.205769, 47.949070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.727310, 43.060791, 47.764320>,  <40.809799, 42.819164, 47.456406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727310, 43.060791, 47.764320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638971, 0.678940, -0.361603,
		-0.741072, 0.417300, -0.525997,
		-0.206224, 0.604071, 0.769786,
		40.665443, 43.242012, 47.995255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680660, 43.463127, 47.183125>,  <40.809799, 42.819164, 47.456406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680660, 43.463127, 47.183125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.817436, 43.507286, 47.556412>,  <40.899502, 43.533783, 47.780384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.817436, 43.507286, 47.556412>,  <40.680660, 43.463127, 47.183125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817436, 43.507286, 47.556412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754108, 0.560310, -0.342598,
		-0.560712, 0.820893, 0.108341,
		0.341940, 0.110397, 0.933214,
		40.920017, 43.540405, 47.836376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919113, 44.137024, 47.144341>,  <40.680660, 43.463127, 47.183125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919113, 44.137024, 47.144341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.092449, 43.989975, 47.473476>,  <41.196449, 43.901745, 47.670959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.092449, 43.989975, 47.473476>,  <40.919113, 44.137024, 47.144341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092449, 43.989975, 47.473476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831529, 0.515167, -0.207756,
		-0.347526, 0.774247, 0.528930,
		0.433342, -0.367620, 0.822843,
		41.222450, 43.879688, 47.720329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175182, 44.681316, 47.528999>,  <40.919113, 44.137024, 47.144341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175182, 44.681316, 47.528999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.378372, 44.364822, 47.665184>,  <41.500286, 44.174927, 47.746895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.378372, 44.364822, 47.665184>,  <41.175182, 44.681316, 47.528999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378372, 44.364822, 47.665184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857202, 0.503201, -0.109513,
		-0.084671, 0.347475, 0.933859,
		0.507972, -0.791233, 0.340462,
		41.530766, 44.127453, 47.767323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713856, 44.975830, 47.944336>,  <41.175182, 44.681316, 47.528999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713856, 44.975830, 47.944336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.825966, 44.606560, 47.839115>,  <41.893230, 44.384998, 47.775982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.825966, 44.606560, 47.839115>,  <41.713856, 44.975830, 47.944336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825966, 44.606560, 47.839115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924544, 0.333322, -0.184703,
		0.258193, -0.191432, 0.946937,
		0.280277, -0.923174, -0.263049,
		41.910049, 44.329609, 47.760201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370335, 44.954048, 48.275036>,  <41.713856, 44.975830, 47.944336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370335, 44.954048, 48.275036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.344696, 44.670074, 47.994495>,  <42.329311, 44.499691, 47.826172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.344696, 44.670074, 47.994495>,  <42.370335, 44.954048, 48.275036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344696, 44.670074, 47.994495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870641, 0.303695, -0.386981,
		0.487726, -0.635426, 0.598629,
		-0.064097, -0.709932, -0.701348,
		42.325466, 44.457096, 47.784092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532650, 44.457340, 48.984856>,  <42.370335, 44.954048, 48.275036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532650, 44.457340, 48.984856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.607574, 44.839462, 48.893364>,  <42.652527, 45.068733, 48.838470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.607574, 44.839462, 48.893364>,  <42.532650, 44.457340, 48.984856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607574, 44.839462, 48.893364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661999, 0.294789, 0.689098,
		0.725722, 0.022342, 0.687625,
		0.187309, 0.955301, -0.228725,
		42.663769, 45.126053, 48.824745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540508, 44.789898, 49.581707>,  <42.532650, 44.457340, 48.984856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540508, 44.789898, 49.581707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.461235, 45.077522, 49.315269>,  <42.413670, 45.250095, 49.155407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.461235, 45.077522, 49.315269>,  <42.540508, 44.789898, 49.581707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461235, 45.077522, 49.315269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783744, 0.291845, 0.548244,
		0.588616, 0.630697, 0.505721,
		-0.198184, 0.719061, -0.666089,
		42.401779, 45.293240, 49.115444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476562, 45.430882, 49.895000>,  <42.540508, 44.789898, 49.581707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476562, 45.430882, 49.895000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.253464, 45.462936, 49.564545>,  <42.119606, 45.482170, 49.366272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.253464, 45.462936, 49.564545>,  <42.476562, 45.430882, 49.895000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253464, 45.462936, 49.564545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783986, 0.275980, 0.556058,
		0.272558, 0.957817, -0.091099,
		-0.557743, 0.080137, -0.826136,
		42.086140, 45.486977, 49.316704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191048, 45.977066, 49.982880>,  <42.476562, 45.430882, 49.895000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191048, 45.977066, 49.982880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.942654, 45.794815, 49.727764>,  <41.793617, 45.685467, 49.574696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.942654, 45.794815, 49.727764>,  <42.191048, 45.977066, 49.982880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942654, 45.794815, 49.727764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761054, 0.155802, 0.629701,
		-0.187538, 0.876431, -0.443506,
		-0.620989, -0.455625, -0.637792,
		41.756355, 45.658127, 49.536427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537071, 46.361942, 50.050339>,  <42.191048, 45.977066, 49.982880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537071, 46.361942, 50.050339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.432144, 46.028221, 49.856380>,  <41.369186, 45.827988, 49.740005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.432144, 46.028221, 49.856380>,  <41.537071, 46.361942, 50.050339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432144, 46.028221, 49.856380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897261, 0.025957, 0.440737,
		-0.355123, 0.550691, -0.755399,
		-0.262317, -0.834306, -0.484895,
		41.353451, 45.777931, 49.710911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878452, 46.478653, 49.676754>,  <41.537071, 46.361942, 50.050339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878452, 46.478653, 49.676754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.884682, 46.084763, 49.746132>,  <40.888420, 45.848431, 49.787758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.884682, 46.084763, 49.746132>,  <40.878452, 46.478653, 49.676754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884682, 46.084763, 49.746132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859722, 0.075383, 0.505168,
		-0.510524, -0.156976, -0.845413,
		0.015570, -0.984721, 0.173441,
		40.889351, 45.789345, 49.798164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148895, 46.212494, 49.555054>,  <40.878452, 46.478653, 49.676754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148895, 46.212494, 49.555054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.309982, 45.930847, 49.788990>,  <40.406635, 45.761860, 49.929352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.309982, 45.930847, 49.788990>,  <40.148895, 46.212494, 49.555054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309982, 45.930847, 49.788990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861271, -0.075182, 0.502553,
		-0.309887, -0.706094, -0.636712,
		0.402719, -0.704116, 0.584840,
		40.430798, 45.719612, 49.964443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676723, 45.645599, 49.485085>,  <40.148895, 46.212494, 49.555054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676723, 45.645599, 49.485085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.878761, 45.535828, 49.812393>,  <39.999985, 45.469963, 50.008778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.878761, 45.535828, 49.812393>,  <39.676723, 45.645599, 49.485085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878761, 45.535828, 49.812393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843399, -0.358175, 0.400487,
		0.183177, -0.892412, -0.412369,
		0.505099, -0.274431, 0.818268,
		40.030293, 45.453499, 50.057873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617004, 44.833626, 49.484238>,  <39.676723, 45.645599, 49.485085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617004, 44.833626, 49.484238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.704720, 44.981857, 49.845257>,  <39.757347, 45.070797, 50.061867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.704720, 44.981857, 49.845257>,  <39.617004, 44.833626, 49.484238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704720, 44.981857, 49.845257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672164, -0.613127, 0.415055,
		0.707184, -0.697673, 0.114639,
		0.219285, 0.370577, 0.902545,
		39.770504, 45.093029, 50.116020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724674, 44.166180, 49.898853>,  <39.617004, 44.833626, 49.484238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724674, 44.166180, 49.898853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.643967, 44.472420, 50.143196>,  <39.595543, 44.656162, 50.289803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.643967, 44.472420, 50.143196>,  <39.724674, 44.166180, 49.898853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643967, 44.472420, 50.143196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515304, -0.613365, 0.598536,
		0.832916, -0.194007, 0.518277,
		-0.201773, 0.765601, 0.610855,
		39.583435, 44.702099, 50.326454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572536, 43.893993, 50.492184>,  <39.724674, 44.166180, 49.898853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572536, 43.893993, 50.492184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.447105, 44.259148, 50.596725>,  <39.371845, 44.478241, 50.659451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.447105, 44.259148, 50.596725>,  <39.572536, 43.893993, 50.492184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447105, 44.259148, 50.596725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610328, -0.404621, 0.681015,
		0.727439, 0.054039, 0.684041,
		-0.313579, 0.912886, 0.261355,
		39.353031, 44.533012, 50.675133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690208, 43.909836, 51.213921>,  <39.572536, 43.893993, 50.492184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690208, 43.909836, 51.213921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.407349, 44.173935, 51.112724>,  <39.237633, 44.332394, 51.052006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.407349, 44.173935, 51.112724>,  <39.690208, 43.909836, 51.213921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407349, 44.173935, 51.112724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655095, -0.477171, 0.585797,
		0.266054, 0.579979, 0.769961,
		-0.707153, 0.660251, -0.252988,
		39.195202, 44.372009, 51.036827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261219, 44.078587, 51.852692>,  <39.690208, 43.909836, 51.213921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261219, 44.078587, 51.852692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.030731, 44.187241, 51.544357>,  <38.892437, 44.252434, 51.359356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.030731, 44.187241, 51.544357>,  <39.261219, 44.078587, 51.852692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030731, 44.187241, 51.544357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787384, -0.437322, 0.434483,
		-0.219081, 0.857299, 0.465877,
		-0.576220, 0.271637, -0.770833,
		38.857864, 44.268730, 51.313107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726608, 44.288578, 52.168831>,  <39.261219, 44.078587, 51.852692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726608, 44.288578, 52.168831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587341, 44.215378, 51.801071>,  <38.503780, 44.171459, 51.580414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587341, 44.215378, 51.801071>,  <38.726608, 44.288578, 52.168831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587341, 44.215378, 51.801071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866660, -0.311008, 0.390096,
		-0.357328, 0.932623, -0.050319,
		-0.348163, -0.183001, -0.919398,
		38.482891, 44.160477, 51.525253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036449, 44.501968, 52.195972>,  <38.726608, 44.288578, 52.168831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036449, 44.501968, 52.195972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.024094, 44.287926, 51.858284>,  <38.016682, 44.159500, 51.655670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.024094, 44.287926, 51.858284>,  <38.036449, 44.501968, 52.195972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024094, 44.287926, 51.858284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918854, -0.317218, 0.234690,
		-0.393386, 0.782963, -0.481889,
		-0.030889, -0.535110, -0.844218,
		38.014828, 44.127392, 51.605019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421486, 44.642582, 51.878048>,  <38.036449, 44.501968, 52.195972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421486, 44.642582, 51.878048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545067, 44.289696, 51.735928>,  <37.619217, 44.077965, 51.650654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545067, 44.289696, 51.735928>,  <37.421486, 44.642582, 51.878048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545067, 44.289696, 51.735928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901319, -0.390843, 0.186722,
		-0.303597, 0.262553, -0.915912,
		0.308953, -0.882218, -0.355303,
		37.637753, 44.025032, 51.629337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829533, 44.347855, 51.576756>,  <37.421486, 44.642582, 51.878048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829533, 44.347855, 51.576756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052963, 44.016151, 51.583954>,  <37.187023, 43.817131, 51.588272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052963, 44.016151, 51.583954>,  <36.829533, 44.347855, 51.576756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052963, 44.016151, 51.583954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828684, -0.556993, 0.055152,
		-0.035713, -0.045718, -0.998316,
		0.558577, -0.829258, 0.017994,
		37.220535, 43.767376, 51.589352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463848, 43.889217, 51.183388>,  <36.829533, 44.347855, 51.576756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463848, 43.889217, 51.183388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699608, 43.694832, 51.441521>,  <36.841064, 43.578201, 51.596401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699608, 43.694832, 51.441521>,  <36.463848, 43.889217, 51.183388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699608, 43.694832, 51.441521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776924, -0.559879, 0.287968,
		0.221366, -0.671100, -0.707546,
		0.589395, -0.485963, 0.645332,
		36.876427, 43.549042, 51.635120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.305378, 43.088192, 51.061279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479763, 43.117752, 51.420048>,  <36.584396, 43.135487, 51.635311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479763, 43.117752, 51.420048>,  <36.305378, 43.088192, 51.061279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479763, 43.117752, 51.420048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760860, -0.502011, 0.411190,
		0.480652, -0.861699, -0.162633,
		0.435965, 0.073898, 0.896924,
		36.610554, 43.139923, 51.689125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273411, 42.407696, 51.384541>,  <36.305378, 43.088192, 51.061279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273411, 42.407696, 51.384541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339893, 42.648399, 51.697018>,  <36.379784, 42.792820, 51.884502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339893, 42.648399, 51.697018>,  <36.273411, 42.407696, 51.384541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339893, 42.648399, 51.697018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731273, -0.456244, 0.507033,
		0.661526, -0.655535, 0.364222,
		0.166204, 0.601761, 0.781192,
		36.389755, 42.828926, 51.931374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190079, 42.015743, 51.973347>,  <36.273411, 42.407696, 51.384541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190079, 42.015743, 51.973347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.185936, 42.377480, 52.144020>,  <36.183453, 42.594521, 52.246426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.185936, 42.377480, 52.144020>,  <36.190079, 42.015743, 51.973347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185936, 42.377480, 52.144020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657425, -0.327679, 0.678542,
		0.753449, -0.273489, 0.597928,
		-0.010355, 0.904340, 0.426688,
		36.182831, 42.648781, 52.272026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194786, 41.956764, 52.718822>,  <36.190079, 42.015743, 51.973347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194786, 41.956764, 52.718822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.026917, 42.313805, 52.652931>,  <35.926197, 42.528030, 52.613396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.026917, 42.313805, 52.652931>,  <36.194786, 41.956764, 52.718822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026917, 42.313805, 52.652931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712433, -0.211476, 0.669117,
		0.562419, 0.398169, 0.724670,
		-0.419672, 0.892603, -0.164730,
		35.901016, 42.581585, 52.603512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100475, 42.186184, 53.359661>,  <36.194786, 41.956764, 52.718822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100475, 42.186184, 53.359661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854275, 42.357216, 53.094833>,  <35.706554, 42.459835, 52.935936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854275, 42.357216, 53.094833>,  <36.100475, 42.186184, 53.359661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854275, 42.357216, 53.094833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787906, -0.354270, 0.503684,
		-0.019188, 0.831667, 0.554943,
		-0.615497, 0.427578, -0.662073,
		35.669624, 42.485489, 52.896210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438560, 42.374390, 53.762234>,  <36.100475, 42.186184, 53.359661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438560, 42.374390, 53.762234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339561, 42.387489, 53.374901>,  <35.280163, 42.395348, 53.142502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339561, 42.387489, 53.374901>,  <35.438560, 42.374390, 53.762234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339561, 42.387489, 53.374901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869543, -0.448341, 0.207088,
		-0.427362, 0.893263, 0.139439,
		-0.247500, 0.032746, -0.968334,
		35.265312, 42.397312, 53.084400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796028, 42.854309, 53.636448>,  <35.438560, 42.374390, 53.762234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796028, 42.854309, 53.636448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832596, 42.585533, 53.342472>,  <34.854538, 42.424267, 53.166088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832596, 42.585533, 53.342472>,  <34.796028, 42.854309, 53.636448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832596, 42.585533, 53.342472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938012, -0.305888, 0.162990,
		-0.334330, 0.674482, -0.658253,
		0.091418, -0.671942, -0.734940,
		34.860020, 42.383949, 53.121990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244495, 42.768646, 53.314457>,  <34.796028, 42.854309, 53.636448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244495, 42.768646, 53.314457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373871, 42.421822, 53.162884>,  <34.451496, 42.213726, 53.071938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373871, 42.421822, 53.162884>,  <34.244495, 42.768646, 53.314457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373871, 42.421822, 53.162884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836374, -0.449257, 0.314082,
		-0.442563, 0.215333, -0.870499,
		0.323445, -0.867064, -0.378924,
		34.470905, 42.161705, 53.049202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823414, 42.564194, 52.815006>,  <34.244495, 42.768646, 53.314457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823414, 42.564194, 52.815006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990479, 42.215630, 52.917919>,  <34.090717, 42.006489, 52.979668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990479, 42.215630, 52.917919>,  <33.823414, 42.564194, 52.815006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990479, 42.215630, 52.917919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906446, -0.419117, 0.051937,
		0.062573, -0.254906, -0.964939,
		0.417662, -0.871415, 0.257284,
		34.115776, 41.954205, 52.995106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415215, 42.178692, 52.460052>,  <33.823414, 42.564194, 52.815006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415215, 42.178692, 52.460052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.601883, 41.963051, 52.740505>,  <33.713882, 41.833664, 52.908779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.601883, 41.963051, 52.740505>,  <33.415215, 42.178692, 52.460052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601883, 41.963051, 52.740505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864194, -0.446568, 0.231829,
		0.188124, -0.714103, -0.674290,
		0.466666, -0.539105, 0.701134,
		33.741882, 41.801319, 52.950844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060192, 41.604069, 52.456974>,  <33.415215, 42.178692, 52.460052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060192, 41.604069, 52.456974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262054, 41.567879, 52.800400>,  <33.383171, 41.546165, 53.006454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262054, 41.567879, 52.800400>,  <33.060192, 41.604069, 52.456974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262054, 41.567879, 52.800400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809883, -0.394058, 0.434520,
		0.299013, -0.914622, -0.272136,
		0.504659, -0.090472, 0.858565,
		33.413452, 41.540737, 53.057968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946136, 40.875412, 52.724903>,  <33.060192, 41.604069, 52.456974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946136, 40.875412, 52.724903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.073532, 41.062149, 53.054901>,  <33.149971, 41.174191, 53.252899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.073532, 41.062149, 53.054901>,  <32.946136, 40.875412, 52.724903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073532, 41.062149, 53.054901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686002, -0.487121, 0.540477,
		0.654191, -0.738087, 0.165112,
		0.318489, 0.466843, 0.824999,
		33.169079, 41.202202, 53.302402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133869, 40.422421, 53.223110>,  <32.946136, 40.875412, 52.724903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133869, 40.422421, 53.223110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.063660, 40.740196, 53.455685>,  <33.021534, 40.930862, 53.595230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.063660, 40.740196, 53.455685>,  <33.133869, 40.422421, 53.223110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063660, 40.740196, 53.455685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583693, -0.559576, 0.588369,
		0.792777, -0.236109, 0.561922,
		-0.175519, 0.794436, 0.581434,
		33.011005, 40.978527, 53.630116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270500, 40.247364, 53.956074>,  <33.133869, 40.422421, 53.223110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270500, 40.247364, 53.956074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018024, 40.556107, 53.986633>,  <32.866539, 40.741352, 54.004971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018024, 40.556107, 53.986633>,  <33.270500, 40.247364, 53.956074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018024, 40.556107, 53.986633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568182, -0.527179, 0.631863,
		0.527985, 0.355415, 0.771305,
		-0.631190, 0.771856, 0.076402,
		32.828667, 40.787663, 54.009556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154327, 40.320171, 54.591728>,  <33.270500, 40.247364, 53.956074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154327, 40.320171, 54.591728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.828384, 40.520493, 54.474972>,  <32.632820, 40.640686, 54.404919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.828384, 40.520493, 54.474972>,  <33.154327, 40.320171, 54.591728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828384, 40.520493, 54.474972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510904, -0.382625, 0.769789,
		0.273829, 0.776398, 0.567648,
		-0.814859, 0.500804, -0.291891,
		32.583927, 40.670734, 54.387405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884205, 40.638313, 55.211075>,  <33.154327, 40.320171, 54.591728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884205, 40.638313, 55.211075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.584843, 40.599228, 54.948673>,  <32.405224, 40.575779, 54.791233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.584843, 40.599228, 54.948673>,  <32.884205, 40.638313, 55.211075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584843, 40.599228, 54.948673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580167, -0.382840, 0.718916,
		-0.321388, 0.918633, 0.229833,
		-0.748409, -0.097709, -0.656001,
		32.360321, 40.569916, 54.751873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290482, 40.793545, 55.607937>,  <32.884205, 40.638313, 55.211075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290482, 40.793545, 55.607937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.147453, 40.616524, 55.278992>,  <32.061634, 40.510311, 55.081623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.147453, 40.616524, 55.278992>,  <32.290482, 40.793545, 55.607937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147453, 40.616524, 55.278992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655241, -0.508565, 0.558588,
		-0.665433, 0.738584, -0.108131,
		-0.357573, -0.442555, -0.822367,
		32.040180, 40.483757, 55.032280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576895, 40.837151, 55.751881>,  <32.290482, 40.793545, 55.607937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576895, 40.837151, 55.751881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.635872, 40.562614, 55.467010>,  <31.671259, 40.397892, 55.296089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.635872, 40.562614, 55.467010>,  <31.576895, 40.837151, 55.751881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635872, 40.562614, 55.467010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545364, -0.657110, 0.520369,
		-0.825130, 0.311669, -0.471194,
		0.147443, -0.686344, -0.712174,
		31.680105, 40.356712, 55.253357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883986, 40.647812, 55.642445>,  <31.576895, 40.837151, 55.751881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883986, 40.647812, 55.642445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119768, 40.360985, 55.493660>,  <31.261238, 40.188889, 55.404388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119768, 40.360985, 55.493660>,  <30.883986, 40.647812, 55.642445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119768, 40.360985, 55.493660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631047, -0.696218, 0.342139,
		-0.504300, 0.033046, -0.862896,
		0.589457, -0.717069, -0.371957,
		31.296606, 40.145863, 55.382072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453293, 40.152115, 55.246372>,  <30.883986, 40.647812, 55.642445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453293, 40.152115, 55.246372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.774788, 39.934822, 55.343449>,  <30.967686, 39.804447, 55.401695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.774788, 39.934822, 55.343449>,  <30.453293, 40.152115, 55.246372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774788, 39.934822, 55.343449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593395, -0.761651, 0.260326,
		0.043428, -0.353246, -0.934522,
		0.803739, -0.543236, 0.242691,
		31.015909, 39.771851, 55.416256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391905, 39.526516, 54.965832>,  <30.453293, 40.152115, 55.246372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391905, 39.526516, 54.965832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664227, 39.442650, 55.246559>,  <30.827620, 39.392330, 55.414993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664227, 39.442650, 55.246559>,  <30.391905, 39.526516, 54.965832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664227, 39.442650, 55.246559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489426, -0.843074, 0.222909,
		0.544947, -0.495244, -0.676584,
		0.680805, -0.209664, 0.701816,
		30.868467, 39.379749, 55.457104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343653, 38.804592, 54.950993>,  <30.391905, 39.526516, 54.965832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343653, 38.804592, 54.950993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.523478, 38.898071, 55.295845>,  <30.631372, 38.954159, 55.502758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.523478, 38.898071, 55.295845>,  <30.343653, 38.804592, 54.950993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523478, 38.898071, 55.295845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369309, -0.830185, 0.417616,
		0.813328, -0.506139, -0.286915,
		0.449564, 0.233699, 0.862135,
		30.658346, 38.968182, 55.554485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634390, 38.112190, 55.231709>,  <30.343653, 38.804592, 54.950993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634390, 38.112190, 55.231709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578253, 38.409454, 55.493397>,  <30.544571, 38.587814, 55.650410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578253, 38.409454, 55.493397>,  <30.634390, 38.112190, 55.231709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578253, 38.409454, 55.493397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656871, -0.564292, 0.500095,
		0.740826, -0.359556, 0.567359,
		-0.140344, 0.743165, 0.654224,
		30.536150, 38.632404, 55.689663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966452, 37.947876, 55.546097>,  <30.634390, 38.112190, 55.231709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966452, 37.947876, 55.546097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.941488, 37.558327, 55.633442>,  <29.926510, 37.324596, 55.685848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.941488, 37.558327, 55.633442>,  <29.966452, 37.947876, 55.546097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941488, 37.558327, 55.633442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878993, -0.157262, -0.450156,
		0.472733, 0.163842, 0.865840,
		-0.062409, -0.973871, 0.218359,
		29.922766, 37.266167, 55.698948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602663, 37.703960, 55.987225>,  <29.966452, 37.947876, 55.546097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602663, 37.703960, 55.987225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.428936, 37.433815, 55.748814>,  <30.324699, 37.271729, 55.605766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.428936, 37.433815, 55.748814>,  <30.602663, 37.703960, 55.987225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428936, 37.433815, 55.748814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809864, -0.003112, -0.586609,
		0.394321, -0.737477, 0.548306,
		-0.434317, -0.675365, -0.596029,
		30.298641, 37.231205, 55.570004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133091, 37.262398, 55.832836>,  <30.602663, 37.703960, 55.987225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133091, 37.262398, 55.832836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867121, 37.198959, 55.540886>,  <30.707539, 37.160896, 55.365715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867121, 37.198959, 55.540886>,  <31.133091, 37.262398, 55.832836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867121, 37.198959, 55.540886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719135, 0.128064, -0.682968,
		0.201791, -0.979002, 0.028903,
		-0.664926, -0.158602, -0.729877,
		30.667643, 37.151379, 55.321922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406818, 36.845448, 55.384926>,  <31.133091, 37.262398, 55.832836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406818, 36.845448, 55.384926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.134403, 37.030029, 55.157505>,  <30.970955, 37.140778, 55.021053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.134403, 37.030029, 55.157505>,  <31.406818, 36.845448, 55.384926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134403, 37.030029, 55.157505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658080, 0.045209, -0.751589,
		-0.321124, -0.886009, -0.334467,
		-0.681036, 0.461459, -0.568547,
		30.930092, 37.168468, 54.986942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630051, 36.618755, 54.682487>,  <31.406818, 36.845448, 55.384926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630051, 36.618755, 54.682487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.380852, 36.926086, 54.623768>,  <31.231333, 37.110485, 54.588535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.380852, 36.926086, 54.623768>,  <31.630051, 36.618755, 54.682487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380852, 36.926086, 54.623768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513048, 0.259687, -0.818134,
		-0.590473, -0.585009, -0.555973,
		-0.622995, 0.768328, -0.146800,
		31.193953, 37.156586, 54.579727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422617, 36.521000, 54.030312>,  <31.630051, 36.618755, 54.682487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422617, 36.521000, 54.030312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.356215, 36.906990, 54.111565>,  <31.316374, 37.138584, 54.160316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.356215, 36.906990, 54.111565>,  <31.422617, 36.521000, 54.030312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356215, 36.906990, 54.111565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543514, 0.261407, -0.797658,
		-0.822821, -0.022012, -0.567873,
		-0.166004, 0.964978, 0.203128,
		31.306414, 37.196484, 54.172504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211946, 36.786255, 53.420494>,  <31.422617, 36.521000, 54.030312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211946, 36.786255, 53.420494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333364, 37.107086, 53.626225>,  <31.406216, 37.299583, 53.749664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333364, 37.107086, 53.626225>,  <31.211946, 36.786255, 53.420494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333364, 37.107086, 53.626225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590049, 0.265599, -0.762430,
		-0.748132, 0.534910, -0.392644,
		0.303546, 0.802078, 0.514326,
		31.424429, 37.347710, 53.780521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231789, 37.311157, 52.948109>,  <31.211946, 36.786255, 53.420494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231789, 37.311157, 52.948109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465454, 37.434296, 53.248505>,  <31.605654, 37.508179, 53.428741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465454, 37.434296, 53.248505>,  <31.231789, 37.311157, 52.948109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465454, 37.434296, 53.248505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588039, 0.477231, -0.653039,
		-0.559432, 0.823092, 0.097754,
		0.584163, 0.307848, 0.750988,
		31.640703, 37.526649, 53.473801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315088, 38.036472, 52.918873>,  <31.231789, 37.311157, 52.948109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315088, 38.036472, 52.918873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.642340, 37.916016, 53.114822>,  <31.838692, 37.843742, 53.232391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.642340, 37.916016, 53.114822>,  <31.315088, 38.036472, 52.918873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642340, 37.916016, 53.114822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546867, 0.670816, -0.500942,
		-0.177763, 0.677732, 0.713499,
		0.818130, -0.301140, 0.489875,
		31.887779, 37.825672, 53.261784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609047, 38.665138, 53.315136>,  <31.315088, 38.036472, 52.918873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609047, 38.665138, 53.315136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896351, 38.392769, 53.257942>,  <32.068733, 38.229347, 53.223625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896351, 38.392769, 53.257942>,  <31.609047, 38.665138, 53.315136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896351, 38.392769, 53.257942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587123, 0.703438, -0.400577,
		0.373344, 0.203768, 0.905037,
		0.718262, -0.680921, -0.142988,
		32.111828, 38.188492, 53.215046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036602, 39.128571, 53.515297>,  <31.609047, 38.665138, 53.315136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036602, 39.128571, 53.515297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237293, 38.831917, 53.337196>,  <32.357708, 38.653923, 53.230335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237293, 38.831917, 53.337196>,  <32.036602, 39.128571, 53.515297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237293, 38.831917, 53.337196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484723, 0.667363, -0.565394,
		0.716460, 0.067850, 0.694321,
		0.501726, -0.741635, -0.445250,
		32.387810, 38.609425, 53.203621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654598, 39.438801, 53.553413>,  <32.036602, 39.128571, 53.515297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654598, 39.438801, 53.553413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.702991, 39.136841, 53.295578>,  <32.732025, 38.955666, 53.140877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.702991, 39.136841, 53.295578>,  <32.654598, 39.438801, 53.553413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702991, 39.136841, 53.295578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720367, 0.513533, -0.466214,
		0.682961, -0.407936, 0.605932,
		0.120981, -0.754899, -0.644586,
		32.739285, 38.910370, 53.102203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382393, 39.271137, 53.629841>,  <32.654598, 39.438801, 53.553413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382393, 39.271137, 53.629841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244003, 39.140602, 53.277977>,  <33.160969, 39.062283, 53.066860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244003, 39.140602, 53.277977>,  <33.382393, 39.271137, 53.629841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244003, 39.140602, 53.277977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808917, 0.371251, -0.455880,
		0.475347, -0.869296, 0.135537,
		-0.345976, -0.326339, -0.879661,
		33.140209, 39.042702, 53.014080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858322, 38.928879, 53.317898>,  <33.382393, 39.271137, 53.629841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858322, 38.928879, 53.317898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623310, 39.010872, 53.004772>,  <33.482304, 39.060066, 52.816898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623310, 39.010872, 53.004772>,  <33.858322, 38.928879, 53.317898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623310, 39.010872, 53.004772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772259, 0.430998, -0.466752,
		0.241716, -0.878763, -0.411520,
		-0.587528, 0.204978, -0.782812,
		33.447052, 39.072365, 52.769928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218014, 38.658798, 52.700508>,  <33.858322, 38.928879, 53.317898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218014, 38.658798, 52.700508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.959335, 38.937027, 52.575317>,  <33.804127, 39.103966, 52.500202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.959335, 38.937027, 52.575317>,  <34.218014, 38.658798, 52.700508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959335, 38.937027, 52.575317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719988, 0.421242, -0.551518,
		-0.251783, -0.582006, -0.773223,
		-0.646701, 0.695575, -0.312976,
		33.765324, 39.145699, 52.481426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370926, 38.735817, 51.971577>,  <34.218014, 38.658798, 52.700508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370926, 38.735817, 51.971577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193810, 39.085899, 52.049503>,  <34.087540, 39.295948, 52.096260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193810, 39.085899, 52.049503>,  <34.370926, 38.735817, 51.971577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193810, 39.085899, 52.049503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546432, 0.435676, -0.715262,
		-0.710876, -0.210259, -0.671153,
		-0.442795, 0.875202, 0.194819,
		34.060970, 39.348461, 52.107948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157074, 39.035316, 51.320511>,  <34.370926, 38.735817, 51.971577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157074, 39.035316, 51.320511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176102, 39.345108, 51.572838>,  <34.187519, 39.530983, 51.724232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176102, 39.345108, 51.572838>,  <34.157074, 39.035316, 51.320511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176102, 39.345108, 51.572838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532718, 0.514548, -0.671902,
		-0.844955, 0.368008, -0.388099,
		0.047570, 0.774475, 0.630814,
		34.190372, 39.577450, 51.762081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858658, 39.648983, 50.964981>,  <34.157074, 39.035316, 51.320511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858658, 39.648983, 50.964981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.102348, 39.771187, 51.257694>,  <34.248562, 39.844509, 51.433323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.102348, 39.771187, 51.257694>,  <33.858658, 39.648983, 50.964981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102348, 39.771187, 51.257694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403208, 0.675274, -0.617599,
		-0.682833, 0.671320, 0.288214,
		0.609230, 0.305507, 0.731781,
		34.285118, 39.862839, 51.477230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027061, 40.364708, 50.804340>,  <33.858658, 39.648983, 50.964981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027061, 40.364708, 50.804340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332169, 40.285973, 51.050732>,  <34.515232, 40.238731, 51.198566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332169, 40.285973, 51.050732>,  <34.027061, 40.364708, 50.804340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332169, 40.285973, 51.050732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623173, 0.478172, -0.618875,
		-0.172725, 0.855924, 0.487402,
		0.762772, -0.196841, 0.615981,
		34.561001, 40.226921, 51.235527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373760, 41.031937, 50.944572>,  <34.027061, 40.364708, 50.804340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373760, 41.031937, 50.944572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.639442, 40.745438, 51.030190>,  <34.798851, 40.573536, 51.081562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.639442, 40.745438, 51.030190>,  <34.373760, 41.031937, 50.944572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639442, 40.745438, 51.030190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680157, 0.460215, -0.570604,
		0.310187, 0.524585, 0.792840,
		0.664207, -0.716249, 0.214047,
		34.838703, 40.530563, 51.094402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027134, 41.401409, 51.115952>,  <34.373760, 41.031937, 50.944572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027134, 41.401409, 51.115952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.155281, 41.029373, 51.044075>,  <35.232170, 40.806152, 51.000950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.155281, 41.029373, 51.044075>,  <35.027134, 41.401409, 51.115952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155281, 41.029373, 51.044075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743653, 0.364439, -0.560503,
		0.586807, 0.045942, 0.808423,
		0.320372, -0.930093, -0.179690,
		35.251392, 40.750343, 50.990170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.342262, 45.247459, 50.500977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.588432, 44.978905, 50.666138>,  <38.736134, 44.817772, 50.765236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.588432, 44.978905, 50.666138>,  <38.342262, 45.247459, 50.500977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588432, 44.978905, 50.666138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767893, 0.628853, -0.122002,
		-0.177747, 0.392151, 0.902565,
		0.615424, -0.671388, 0.412906,
		38.773060, 44.777489, 50.790009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739891, 45.619366, 51.035042>,  <38.342262, 45.247459, 50.500977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739891, 45.619366, 51.035042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.935818, 45.294220, 50.908970>,  <39.053375, 45.099133, 50.833324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.935818, 45.294220, 50.908970>,  <38.739891, 45.619366, 51.035042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935818, 45.294220, 50.908970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823908, 0.549789, -0.137504,
		0.285055, -0.192329, 0.939017,
		0.489815, -0.812860, -0.315182,
		39.082764, 45.050362, 50.814415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385773, 45.702454, 51.228889>,  <38.739891, 45.619366, 51.035042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385773, 45.702454, 51.228889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.453140, 45.412338, 50.961876>,  <39.493561, 45.238270, 50.801670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.453140, 45.412338, 50.961876>,  <39.385773, 45.702454, 51.228889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453140, 45.412338, 50.961876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836219, 0.463675, -0.292819,
		0.521895, -0.508886, 0.684588,
		0.168415, -0.725286, -0.667530,
		39.503666, 45.194752, 50.761616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050404, 45.559425, 51.323910>,  <39.385773, 45.702454, 51.228889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050404, 45.559425, 51.323910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.972542, 45.396225, 50.967113>,  <39.925827, 45.298306, 50.753036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.972542, 45.396225, 50.967113>,  <40.050404, 45.559425, 51.323910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972542, 45.396225, 50.967113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892769, 0.302990, -0.333408,
		0.406294, -0.861240, 0.305271,
		-0.194651, -0.407998, -0.891992,
		39.914146, 45.273827, 50.699516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650192, 45.109844, 51.137421>,  <40.050404, 45.559425, 51.323910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650192, 45.109844, 51.137421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.458374, 45.231552, 50.808189>,  <40.343285, 45.304577, 50.610649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.458374, 45.231552, 50.808189>,  <40.650192, 45.109844, 51.137421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458374, 45.231552, 50.808189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869548, 0.038634, -0.492336,
		-0.118004, -0.951803, -0.283102,
		-0.479544, 0.304268, -0.823079,
		40.314510, 45.322834, 50.561264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790108, 44.683693, 50.614944>,  <40.650192, 45.109844, 51.137421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790108, 44.683693, 50.614944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.694130, 45.026474, 50.432487>,  <40.636543, 45.232143, 50.323013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.694130, 45.026474, 50.432487>,  <40.790108, 44.683693, 50.614944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694130, 45.026474, 50.432487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846606, -0.045222, -0.530296,
		-0.475066, -0.513409, -0.714650,
		-0.239940, 0.856952, -0.456138,
		40.622147, 45.283558, 50.295647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042149, 44.549797, 49.939915>,  <40.790108, 44.683693, 50.614944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042149, 44.549797, 49.939915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.977776, 44.944168, 49.921776>,  <40.939152, 45.180790, 49.910892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.977776, 44.944168, 49.921776>,  <41.042149, 44.549797, 49.939915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977776, 44.944168, 49.921776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722672, 0.086418, -0.685767,
		-0.672195, -0.143131, -0.726407,
		-0.160929, 0.985924, -0.045347,
		40.929497, 45.239944, 49.908173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969936, 44.678505, 49.179668>,  <41.042149, 44.549797, 49.939915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969936, 44.678505, 49.179668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.104965, 45.017708, 49.343098>,  <41.185982, 45.221230, 49.441154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.104965, 45.017708, 49.343098>,  <40.969936, 44.678505, 49.179668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104965, 45.017708, 49.343098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771150, -0.000236, -0.636654,
		-0.539789, 0.529989, -0.654018,
		0.337574, 0.848005, 0.408573,
		41.206238, 45.272110, 49.465668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038288, 45.116409, 48.578388>,  <40.969936, 44.678505, 49.179668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038288, 45.116409, 48.578388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.262238, 45.264816, 48.874737>,  <41.396606, 45.353859, 49.052547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.262238, 45.264816, 48.874737>,  <41.038288, 45.116409, 48.578388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262238, 45.264816, 48.874737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773331, 0.087060, -0.627996,
		-0.297496, 0.924537, -0.238175,
		0.559870, 0.371015, 0.740873,
		41.430199, 45.376122, 49.097000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431602, 45.664211, 48.230572>,  <41.038288, 45.116409, 48.578388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431602, 45.664211, 48.230572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.631168, 45.600876, 48.571396>,  <41.750908, 45.562874, 48.775890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.631168, 45.600876, 48.571396>,  <41.431602, 45.664211, 48.230572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631168, 45.600876, 48.571396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866403, 0.067638, -0.494743,
		0.020704, 0.985066, 0.170929,
		0.498916, -0.158336, 0.852064,
		41.780842, 45.553375, 48.827015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048531, 46.106308, 48.211128>,  <41.431602, 45.664211, 48.230572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048531, 46.106308, 48.211128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.163536, 45.850937, 48.496716>,  <42.232540, 45.697716, 48.668068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.163536, 45.850937, 48.496716>,  <42.048531, 46.106308, 48.211128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163536, 45.850937, 48.496716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934071, 0.022087, -0.356403,
		0.211768, 0.769366, 0.602687,
		0.287516, -0.638427, 0.713965,
		42.249790, 45.659409, 48.710903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697414, 46.361053, 48.405979>,  <42.048531, 46.106308, 48.211128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697414, 46.361053, 48.405979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.688221, 45.979378, 48.525311>,  <42.682705, 45.750374, 48.596909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.688221, 45.979378, 48.525311>,  <42.697414, 46.361053, 48.405979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688221, 45.979378, 48.525311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931390, -0.128877, -0.340446,
		0.363297, 0.270037, 0.891681,
		-0.022984, -0.954186, 0.298330,
		42.681324, 45.693123, 48.614811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180027, 46.237335, 48.864113>,  <42.697414, 46.361053, 48.405979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180027, 46.237335, 48.864113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093407, 45.908035, 48.654213>,  <43.041435, 45.710457, 48.528271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093407, 45.908035, 48.654213>,  <43.180027, 46.237335, 48.864113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093407, 45.908035, 48.654213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962611, -0.090449, -0.255342,
		0.162748, -0.560426, 0.812057,
		-0.216550, -0.823251, -0.524752,
		43.028442, 45.661060, 48.496788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583523, 45.574043, 49.109253>,  <43.180027, 46.237335, 48.864113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583523, 45.574043, 49.109253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.483059, 45.568619, 48.722111>,  <43.422783, 45.565365, 48.489826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.483059, 45.568619, 48.722111>,  <43.583523, 45.574043, 49.109253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483059, 45.568619, 48.722111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914802, -0.330087, -0.232765,
		-0.316319, -0.943853, 0.095310,
		-0.251157, -0.013562, -0.967852,
		43.407711, 45.564552, 48.431755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724209, 46.042004, 49.785370>,  <43.583523, 45.574043, 49.109253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724209, 46.042004, 49.785370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087242, 45.962631, 49.933376>,  <44.305061, 45.915009, 50.022179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087242, 45.962631, 49.933376>,  <43.724209, 46.042004, 49.785370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087242, 45.962631, 49.933376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419849, -0.421350, 0.803860,
		-0.003606, -0.884923, -0.465723,
		0.907587, -0.198432, 0.370014,
		44.359520, 45.903103, 50.044380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745449, 45.340691, 49.835171>,  <43.724209, 46.042004, 49.785370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745449, 45.340691, 49.835171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.997856, 45.505287, 50.098228>,  <44.149300, 45.604046, 50.256062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.997856, 45.505287, 50.098228>,  <43.745449, 45.340691, 49.835171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997856, 45.505287, 50.098228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546777, -0.365456, 0.753311,
		0.550323, -0.834933, -0.005612,
		0.631015, 0.411496, 0.657641,
		44.187160, 45.628735, 50.295521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811119, 44.799831, 50.311806>,  <43.745449, 45.340691, 49.835171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811119, 44.799831, 50.311806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992516, 45.102959, 50.499443>,  <44.101353, 45.284836, 50.612026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992516, 45.102959, 50.499443>,  <43.811119, 44.799831, 50.311806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992516, 45.102959, 50.499443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368949, -0.319493, 0.872812,
		0.811309, -0.568886, 0.134710,
		0.453491, 0.757821, 0.469098,
		44.128563, 45.330303, 50.640171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204697, 44.557301, 50.949234>,  <43.811119, 44.799831, 50.311806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204697, 44.557301, 50.949234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.124416, 44.944809, 51.007484>,  <44.076248, 45.177315, 51.042435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.124416, 44.944809, 51.007484>,  <44.204697, 44.557301, 50.949234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124416, 44.944809, 51.007484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396376, -0.216244, 0.892258,
		0.895882, 0.121357, 0.427397,
		-0.200704, 0.968768, 0.145626,
		44.064205, 45.235439, 51.051174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527718, 44.791115, 51.591465>,  <44.204697, 44.557301, 50.949234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527718, 44.791115, 51.591465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.235367, 45.054886, 51.521065>,  <44.059956, 45.213150, 51.478825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.235367, 45.054886, 51.521065>,  <44.527718, 44.791115, 51.591465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235367, 45.054886, 51.521065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363006, -0.157210, 0.918429,
		0.577971, 0.735144, 0.354277,
		-0.730874, 0.659430, -0.175999,
		44.016106, 45.252716, 51.468266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429516, 45.290325, 52.254505>,  <44.527718, 44.791115, 51.591465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429516, 45.290325, 52.254505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.096901, 45.272743, 52.033012>,  <43.897331, 45.262192, 51.900116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.096901, 45.272743, 52.033012>,  <44.429516, 45.290325, 52.254505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096901, 45.272743, 52.033012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541548, -0.157642, 0.825757,
		-0.123589, 0.986518, 0.107280,
		-0.831536, -0.043957, -0.553730,
		43.847439, 45.259556, 51.866894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996441, 45.465145, 52.663433>,  <44.429516, 45.290325, 52.254505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996441, 45.465145, 52.663433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746490, 45.325493, 52.384109>,  <43.596519, 45.241703, 52.216515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746490, 45.325493, 52.384109>,  <43.996441, 45.465145, 52.663433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746490, 45.325493, 52.384109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603192, -0.351967, 0.715736,
		-0.495667, 0.868463, 0.009344,
		-0.624879, -0.349131, -0.698308,
		43.559029, 45.220753, 52.174618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268532, 45.641205, 52.893848>,  <43.996441, 45.465145, 52.663433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268532, 45.641205, 52.893848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.236229, 45.341805, 52.630569>,  <43.216846, 45.162163, 52.472603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.236229, 45.341805, 52.630569>,  <43.268532, 45.641205, 52.893848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236229, 45.341805, 52.630569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694867, -0.431146, 0.575563,
		-0.714589, 0.503838, -0.485293,
		-0.080759, -0.748506, -0.658193,
		43.212002, 45.117252, 52.433113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521305, 45.609081, 52.653931>,  <43.268532, 45.641205, 52.893848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521305, 45.609081, 52.653931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.689270, 45.248413, 52.612637>,  <42.790051, 45.032013, 52.587860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.689270, 45.248413, 52.612637>,  <42.521305, 45.609081, 52.653931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689270, 45.248413, 52.612637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832769, -0.428027, 0.351124,
		-0.360786, -0.061473, -0.930620,
		0.419915, -0.901673, -0.103234,
		42.815243, 44.977913, 52.581665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947128, 45.203922, 52.411518>,  <42.521305, 45.609081, 52.653931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947128, 45.203922, 52.411518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.227661, 44.945107, 52.531174>,  <42.395981, 44.789818, 52.602966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.227661, 44.945107, 52.531174>,  <41.947128, 45.203922, 52.411518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227661, 44.945107, 52.531174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711788, -0.612866, 0.343151,
		-0.038699, -0.453585, -0.890372,
		0.701328, -0.647036, 0.299139,
		42.438061, 44.750996, 52.620914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799042, 44.593201, 52.150364>,  <41.947128, 45.203922, 52.411518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799042, 44.593201, 52.150364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046719, 44.473465, 52.440742>,  <42.195324, 44.401623, 52.614967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046719, 44.473465, 52.440742>,  <41.799042, 44.593201, 52.150364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046719, 44.473465, 52.440742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689596, -0.649470, 0.320383,
		0.375576, -0.698988, -0.608571,
		0.619193, -0.299340, 0.725945,
		42.232475, 44.383663, 52.658527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763771, 43.882469, 52.120926>,  <41.799042, 44.593201, 52.150364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763771, 43.882469, 52.120926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905704, 43.986763, 52.480061>,  <41.990864, 44.049339, 52.695541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905704, 43.986763, 52.480061>,  <41.763771, 43.882469, 52.120926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905704, 43.986763, 52.480061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633677, -0.639018, 0.436015,
		0.687419, -0.723651, -0.061523,
		0.354837, 0.260739, 0.897834,
		42.012157, 44.064983, 52.749413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785938, 43.219864, 52.457680>,  <41.763771, 43.882469, 52.120926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785938, 43.219864, 52.457680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780613, 43.523834, 52.717628>,  <41.777420, 43.706215, 52.873600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780613, 43.523834, 52.717628>,  <41.785938, 43.219864, 52.457680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780613, 43.523834, 52.717628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743174, -0.442340, 0.502023,
		0.668965, -0.476289, 0.570643,
		-0.013310, 0.759923, 0.649876,
		41.776619, 43.751812, 52.912590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884258, 42.915928, 53.141624>,  <41.785938, 43.219864, 52.457680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884258, 42.915928, 53.141624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670296, 43.251770, 53.179451>,  <41.541920, 43.453274, 53.202148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670296, 43.251770, 53.179451>,  <41.884258, 42.915928, 53.141624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670296, 43.251770, 53.179451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632612, -0.472179, 0.613880,
		0.560068, 0.268544, 0.783714,
		-0.534907, 0.839602, 0.094568,
		41.509823, 43.503651, 53.207821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205540, 42.473171, 53.617725>,  <41.884258, 42.915928, 53.141624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205540, 42.473171, 53.617725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275658, 42.144402, 53.400944>,  <42.317726, 41.947140, 53.270874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275658, 42.144402, 53.400944>,  <42.205540, 42.473171, 53.617725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275658, 42.144402, 53.400944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870376, 0.386651, -0.304872,
		0.460128, -0.418262, 0.783160,
		0.175293, -0.821923, -0.541954,
		42.328247, 41.897823, 53.238358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934566, 42.507477, 53.633808>,  <42.205540, 42.473171, 53.617725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934566, 42.507477, 53.633808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.860687, 42.246193, 53.340084>,  <42.816360, 42.089424, 53.163849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.860687, 42.246193, 53.340084>,  <42.934566, 42.507477, 53.633808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860687, 42.246193, 53.340084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852387, 0.265447, -0.450526,
		0.489207, -0.709126, 0.507757,
		-0.184698, -0.653206, -0.734309,
		42.805279, 42.050232, 53.119793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557198, 42.144405, 53.563469>,  <42.934566, 42.507477, 53.633808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557198, 42.144405, 53.563469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.358513, 42.066032, 53.225266>,  <43.239304, 42.019009, 53.022343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.358513, 42.066032, 53.225266>,  <43.557198, 42.144405, 53.563469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358513, 42.066032, 53.225266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819985, 0.213328, -0.531146,
		0.284439, -0.957133, 0.054698,
		-0.496708, -0.195930, -0.845513,
		43.209499, 42.007256, 52.971611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879650, 41.609207, 53.219902>,  <43.557198, 42.144405, 53.563469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879650, 41.609207, 53.219902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.686905, 41.831512, 52.948921>,  <43.571259, 41.964893, 52.786335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.686905, 41.831512, 52.948921>,  <43.879650, 41.609207, 53.219902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686905, 41.831512, 52.948921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841284, 0.077217, -0.535051,
		-0.245049, -0.827750, -0.504759,
		-0.481864, 0.555759, -0.677450,
		43.542347, 41.998241, 52.745686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184368, 41.364662, 52.535851>,  <43.879650, 41.609207, 53.219902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184368, 41.364662, 52.535851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.008247, 41.714767, 52.455803>,  <43.902576, 41.924831, 52.407776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.008247, 41.714767, 52.455803>,  <44.184368, 41.364662, 52.535851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008247, 41.714767, 52.455803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713571, 0.205850, -0.669658,
		-0.544934, -0.437648, -0.715200,
		-0.440299, 0.875265, -0.200118,
		43.876156, 41.977348, 52.395767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334492, 41.349445, 51.898438>,  <44.184368, 41.364662, 52.535851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334492, 41.349445, 51.898438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.249630, 41.731079, 51.983013>,  <44.198711, 41.960060, 52.033760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.249630, 41.731079, 51.983013>,  <44.334492, 41.349445, 51.898438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249630, 41.731079, 51.983013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683933, 0.299509, -0.665230,
		-0.698015, 0.003475, -0.716075,
		-0.212159, 0.954087, 0.211438,
		44.185982, 42.017303, 52.046444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287746, 41.647732, 51.279816>,  <44.334492, 41.349445, 51.898438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287746, 41.647732, 51.279816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.346519, 41.953133, 51.531364>,  <44.381783, 42.136372, 51.682293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.346519, 41.953133, 51.531364>,  <44.287746, 41.647732, 51.279816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346519, 41.953133, 51.531364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697846, 0.370566, -0.612936,
		-0.701015, 0.528916, -0.478357,
		0.146929, 0.763498, 0.628875,
		44.390598, 42.182182, 51.720028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171043, 42.252308, 50.881401>,  <44.287746, 41.647732, 51.279816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171043, 42.252308, 50.881401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384716, 42.379715, 51.194630>,  <44.512920, 42.456158, 51.382568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384716, 42.379715, 51.194630>,  <44.171043, 42.252308, 50.881401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384716, 42.379715, 51.194630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643951, 0.446829, -0.621024,
		-0.547706, 0.835997, 0.033576,
		0.534177, 0.318517, 0.783072,
		44.544968, 42.475269, 51.429550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200932, 42.997868, 50.797798>,  <44.171043, 42.252308, 50.881401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.200932, 42.997868, 50.797798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504002, 42.870667, 51.025764>,  <44.685844, 42.794346, 51.162544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504002, 42.870667, 51.025764>,  <44.200932, 42.997868, 50.797798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.504002, 42.870667, 51.025764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652041, 0.406087, -0.640262,
		-0.027834, 0.856720, 0.515030,
		0.757673, -0.318000, 0.569920,
		44.731304, 42.775265, 51.196739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645920, 43.583977, 50.791721>,  <44.200932, 42.997868, 50.797798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645920, 43.583977, 50.791721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870430, 43.286377, 50.936733>,  <45.005135, 43.107815, 51.023739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870430, 43.286377, 50.936733>,  <44.645920, 43.583977, 50.791721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870430, 43.286377, 50.936733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747709, 0.268045, -0.607522,
		0.354824, 0.612055, 0.706745,
		0.561276, -0.744003, 0.362530,
		45.038815, 43.063175, 51.045494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251019, 43.884888, 50.913128>,  <44.645920, 43.583977, 50.791721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251019, 43.884888, 50.913128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.332924, 43.494202, 50.887501>,  <45.382065, 43.259792, 50.872124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.332924, 43.494202, 50.887501>,  <45.251019, 43.884888, 50.913128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332924, 43.494202, 50.887501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716937, 0.194220, -0.669537,
		0.666389, 0.091160, 0.740011,
		0.204760, -0.976713, -0.064070,
		45.394352, 43.201187, 50.868279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.011929, 43.708885, 51.092644>,  <45.251019, 43.884888, 50.913128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.011929, 43.708885, 51.092644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.879578, 43.416794, 50.853550>,  <45.800167, 43.241539, 50.710094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.879578, 43.416794, 50.853550>,  <46.011929, 43.708885, 51.092644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879578, 43.416794, 50.853550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563604, 0.355116, -0.745817,
		0.756884, -0.583655, 0.294063,
		-0.330873, -0.730232, -0.597732,
		45.780315, 43.197723, 50.674229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.444698, 40.167686, 55.677105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358360, 39.935013, 55.363403>,  <40.306557, 39.795410, 55.175182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358360, 39.935013, 55.363403>,  <40.444698, 40.167686, 55.677105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358360, 39.935013, 55.363403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902665, 0.187372, -0.387411,
		0.372298, -0.791541, 0.484621,
		-0.215848, -0.581683, -0.784254,
		40.293606, 39.760509, 55.128128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116161, 39.808407, 55.587315>,  <40.444698, 40.167686, 55.677105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116161, 39.808407, 55.587315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885056, 39.782776, 55.261841>,  <40.746391, 39.767395, 55.066559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885056, 39.782776, 55.261841>,  <41.116161, 39.808407, 55.587315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885056, 39.782776, 55.261841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781121, 0.245715, -0.573998,
		0.236716, -0.967222, -0.091912,
		-0.577768, -0.064080, -0.813682,
		40.711727, 39.763550, 55.017735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540768, 39.488865, 55.106445>,  <41.116161, 39.808407, 55.587315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540768, 39.488865, 55.106445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262249, 39.667809, 54.881931>,  <41.095139, 39.775173, 54.747223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262249, 39.667809, 54.881931>,  <41.540768, 39.488865, 55.106445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262249, 39.667809, 54.881931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717741, 0.438580, -0.540829,
		0.004224, -0.779435, -0.626469,
		-0.696297, 0.447358, -0.561285,
		41.053360, 39.802017, 54.713547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713085, 39.466377, 54.433487>,  <41.540768, 39.488865, 55.106445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713085, 39.466377, 54.433487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446144, 39.764275, 54.433273>,  <41.285980, 39.943012, 54.433144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446144, 39.764275, 54.433273>,  <41.713085, 39.466377, 54.433487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446144, 39.764275, 54.433273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586648, 0.525238, -0.616417,
		-0.458793, -0.411678, -0.787420,
		-0.667348, 0.744746, -0.000534,
		41.245941, 39.987698, 54.433113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482281, 39.615162, 53.719448>,  <41.713085, 39.466377, 54.433487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482281, 39.615162, 53.719448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388344, 39.945557, 53.924423>,  <41.331982, 40.143795, 54.047409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388344, 39.945557, 53.924423>,  <41.482281, 39.615162, 53.719448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388344, 39.945557, 53.924423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402340, 0.562503, -0.722297,
		-0.884856, 0.036546, -0.464429,
		-0.234846, 0.825988, 0.512437,
		41.317890, 40.193352, 54.078156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304989, 40.113720, 53.173340>,  <41.482281, 39.615162, 53.719448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304989, 40.113720, 53.173340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346634, 40.339989, 53.500553>,  <41.371620, 40.475750, 53.696880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346634, 40.339989, 53.500553>,  <41.304989, 40.113720, 53.173340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346634, 40.339989, 53.500553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484164, 0.689635, -0.538506,
		-0.868761, 0.452126, -0.202080,
		0.104111, 0.565673, 0.818031,
		41.377869, 40.509689, 53.745964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111206, 40.754074, 52.972321>,  <41.304989, 40.113720, 53.173340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111206, 40.754074, 52.972321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332897, 40.822433, 53.298176>,  <41.465912, 40.863449, 53.493687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332897, 40.822433, 53.298176>,  <41.111206, 40.754074, 52.972321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332897, 40.822433, 53.298176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479020, 0.734901, -0.480063,
		-0.680716, 0.656289, 0.325438,
		0.554225, 0.170895, 0.814635,
		41.499165, 40.873703, 53.542564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238083, 41.525227, 53.026775>,  <41.111206, 40.754074, 52.972321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238083, 41.525227, 53.026775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528645, 41.376663, 53.258080>,  <41.702980, 41.287525, 53.396862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528645, 41.376663, 53.258080>,  <41.238083, 41.525227, 53.026775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528645, 41.376663, 53.258080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617528, 0.722033, -0.311973,
		-0.301655, 0.583713, 0.753846,
		0.726404, -0.371413, 0.578264,
		41.746567, 41.265240, 53.431561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518429, 42.101276, 53.419086>,  <41.238083, 41.525227, 53.026775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518429, 42.101276, 53.419086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778633, 41.801079, 53.372440>,  <41.934757, 41.620960, 53.344452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778633, 41.801079, 53.372440>,  <41.518429, 42.101276, 53.419086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778633, 41.801079, 53.372440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677057, 0.642598, -0.358693,
		0.344134, 0.154377, 0.926142,
		0.650512, -0.750490, -0.116618,
		41.973785, 41.575932, 53.337456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601814, 42.830139, 53.807072>,  <41.518429, 42.101276, 53.419086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601814, 42.830139, 53.807072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394550, 43.146210, 53.676147>,  <41.270191, 43.335850, 53.597591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394550, 43.146210, 53.676147>,  <41.601814, 42.830139, 53.807072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394550, 43.146210, 53.676147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823998, -0.358651, 0.438631,
		0.229204, 0.496986, 0.836941,
		-0.518163, 0.790174, -0.327311,
		41.239101, 43.383263, 53.577953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299095, 43.018024, 54.318848>,  <41.601814, 42.830139, 53.807072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299095, 43.018024, 54.318848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073772, 43.193642, 54.038868>,  <40.938580, 43.299011, 53.870880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073772, 43.193642, 54.038868>,  <41.299095, 43.018024, 54.318848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073772, 43.193642, 54.038868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812987, -0.445699, 0.374707,
		-0.147453, 0.780123, 0.608002,
		-0.563303, 0.439046, -0.699949,
		40.904781, 43.325356, 53.828884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771805, 43.408627, 54.704712>,  <41.299095, 43.018024, 54.318848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771805, 43.408627, 54.704712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624321, 43.339615, 54.339355>,  <40.535831, 43.298210, 54.120140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624321, 43.339615, 54.339355>,  <40.771805, 43.408627, 54.704712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624321, 43.339615, 54.339355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858251, -0.314212, 0.405804,
		-0.357011, 0.933545, -0.032216,
		-0.368713, -0.172526, -0.913392,
		40.513706, 43.287857, 54.065338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260662, 43.803123, 54.677891>,  <40.771805, 43.408627, 54.704712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260662, 43.803123, 54.677891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193672, 43.526215, 54.397118>,  <40.153481, 43.360069, 54.228653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193672, 43.526215, 54.397118>,  <40.260662, 43.803123, 54.677891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193672, 43.526215, 54.397118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922141, -0.141850, 0.359910,
		-0.348725, 0.707555, -0.614619,
		-0.167472, -0.692275, -0.701932,
		40.143429, 43.318531, 54.186539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607182, 43.927441, 54.475887>,  <40.260662, 43.803123, 54.677891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607182, 43.927441, 54.475887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651581, 43.563011, 54.317078>,  <39.678219, 43.344353, 54.221790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651581, 43.563011, 54.317078>,  <39.607182, 43.927441, 54.475887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651581, 43.563011, 54.317078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946744, -0.218434, 0.236564,
		-0.302250, 0.349623, -0.886797,
		0.110998, -0.911071, -0.397025,
		39.684879, 43.289688, 54.197971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131756, 43.843494, 54.045174>,  <39.607182, 43.927441, 54.475887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131756, 43.843494, 54.045174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242119, 43.467476, 54.125359>,  <39.308334, 43.241863, 54.173470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242119, 43.467476, 54.125359>,  <39.131756, 43.843494, 54.045174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242119, 43.467476, 54.125359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960401, -0.278038, 0.018001,
		0.038814, -0.197491, -0.979536,
		0.275904, -0.940049, 0.200462,
		39.324890, 43.185463, 54.185497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802502, 43.415447, 53.485256>,  <39.131756, 43.843494, 54.045174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802502, 43.415447, 53.485256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876907, 43.192070, 53.808624>,  <38.921551, 43.058044, 54.002644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876907, 43.192070, 53.808624>,  <38.802502, 43.415447, 53.485256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876907, 43.192070, 53.808624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982511, -0.112778, 0.148164,
		0.008430, -0.821840, -0.569656,
		0.186012, -0.558445, 0.808418,
		38.932713, 43.024536, 54.051147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324692, 42.867863, 53.414860>,  <38.802502, 43.415447, 53.485256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324692, 42.867863, 53.414860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433548, 42.845901, 53.799137>,  <38.498863, 42.832726, 54.029701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433548, 42.845901, 53.799137>,  <38.324692, 42.867863, 53.414860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433548, 42.845901, 53.799137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952179, -0.159489, 0.260613,
		0.138911, -0.985672, -0.095681,
		0.272139, -0.054904, 0.960690,
		38.515190, 42.829430, 54.087345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218258, 42.143021, 53.816975>,  <38.324692, 42.867863, 53.414860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218258, 42.143021, 53.816975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235474, 42.403648, 54.119919>,  <38.245804, 42.560024, 54.301685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235474, 42.403648, 54.119919>,  <38.218258, 42.143021, 53.816975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235474, 42.403648, 54.119919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804690, -0.426686, 0.412811,
		0.592133, -0.627210, 0.505951,
		0.043037, 0.651573, 0.757364,
		38.248386, 42.599121, 54.347130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104012, 41.771473, 54.431759>,  <38.218258, 42.143021, 53.816975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104012, 41.771473, 54.431759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007851, 42.145042, 54.537590>,  <37.950153, 42.369183, 54.601089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007851, 42.145042, 54.537590>,  <38.104012, 41.771473, 54.431759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007851, 42.145042, 54.537590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835546, -0.337826, 0.433285,
		0.494034, -0.116902, 0.861548,
		-0.240402, 0.933920, 0.264574,
		37.935730, 42.425217, 54.616962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928371, 41.645012, 55.112274>,  <38.104012, 41.771473, 54.431759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928371, 41.645012, 55.112274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777565, 42.006645, 55.031792>,  <37.687080, 42.223625, 54.983501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777565, 42.006645, 55.031792>,  <37.928371, 41.645012, 55.112274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777565, 42.006645, 55.031792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774824, -0.188848, 0.603311,
		0.507449, 0.383357, 0.771708,
		-0.377019, 0.904088, -0.201204,
		37.664459, 42.277870, 54.971432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678299, 41.896263, 55.714626>,  <37.928371, 41.645012, 55.112274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678299, 41.896263, 55.714626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498367, 42.124588, 55.439869>,  <37.390408, 42.261585, 55.275013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498367, 42.124588, 55.439869>,  <37.678299, 41.896263, 55.714626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498367, 42.124588, 55.439869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873652, -0.121540, 0.471127,
		0.185441, 0.812033, 0.553365,
		-0.449827, 0.570815, -0.686896,
		37.363419, 42.295834, 55.233799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293587, 42.360218, 56.115147>,  <37.678299, 41.896263, 55.714626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293587, 42.360218, 56.115147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113983, 42.387062, 55.758743>,  <37.006222, 42.403168, 55.544903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113983, 42.387062, 55.758743>,  <37.293587, 42.360218, 56.115147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113983, 42.387062, 55.758743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873684, -0.241973, 0.422050,
		-0.187274, 0.967959, 0.167281,
		-0.449004, 0.067112, -0.891006,
		36.979282, 42.407196, 55.491440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697945, 42.820496, 56.171467>,  <37.293587, 42.360218, 56.115147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697945, 42.820496, 56.171467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661224, 42.544556, 55.884224>,  <36.639194, 42.378990, 55.711880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661224, 42.544556, 55.884224>,  <36.697945, 42.820496, 56.171467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661224, 42.544556, 55.884224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821010, -0.355647, 0.446607,
		-0.563485, 0.630571, -0.533727,
		-0.091799, -0.689852, -0.718107,
		36.633686, 42.337601, 55.668793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.098770, 37.021187, 50.678711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.102684, 37.312317, 50.952988>,  <36.105034, 37.486996, 51.117554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.102684, 37.312317, 50.952988>,  <36.098770, 37.021187, 50.678711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102684, 37.312317, 50.952988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497930, 0.591120, -0.634541,
		-0.867162, 0.347637, -0.356622,
		0.009784, 0.727822, 0.685696,
		36.105618, 37.530663, 51.158695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972942, 37.537445, 50.332428>,  <36.098770, 37.021187, 50.678711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972942, 37.537445, 50.332428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117100, 37.684128, 50.675507>,  <36.203594, 37.772137, 50.881355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117100, 37.684128, 50.675507>,  <35.972942, 37.537445, 50.332428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117100, 37.684128, 50.675507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584779, 0.627548, -0.514021,
		-0.726739, 0.686814, 0.011725,
		0.360395, 0.366702, 0.857697,
		36.225220, 37.794140, 50.932816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879177, 38.356422, 50.309727>,  <35.972942, 37.537445, 50.332428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879177, 38.356422, 50.309727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.174549, 38.239647, 50.552868>,  <36.351772, 38.169582, 50.698753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.174549, 38.239647, 50.552868>,  <35.879177, 38.356422, 50.309727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174549, 38.239647, 50.552868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647313, 0.559476, -0.517661,
		-0.188955, 0.775731, 0.602111,
		0.738432, -0.291940, 0.607856,
		36.396080, 38.152065, 50.735226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199295, 38.962776, 50.444782>,  <35.879177, 38.356422, 50.309727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199295, 38.962776, 50.444782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477108, 38.684555, 50.518353>,  <36.643795, 38.517624, 50.562496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477108, 38.684555, 50.518353>,  <36.199295, 38.962776, 50.444782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477108, 38.684555, 50.518353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682180, 0.555434, -0.475525,
		0.228591, 0.455741, 0.860259,
		0.694534, -0.695552, 0.183930,
		36.685467, 38.475891, 50.573532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732204, 39.319664, 50.718147>,  <36.199295, 38.962776, 50.444782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732204, 39.319664, 50.718147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.889725, 38.975449, 50.588913>,  <36.984238, 38.768917, 50.511372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.889725, 38.975449, 50.588913>,  <36.732204, 39.319664, 50.718147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889725, 38.975449, 50.588913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723781, 0.506968, -0.468107,
		0.566620, -0.049500, 0.822491,
		0.393805, -0.860542, -0.323086,
		37.007866, 38.717285, 50.491985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482395, 39.345558, 50.848118>,  <36.732204, 39.319664, 50.718147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482395, 39.345558, 50.848118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472660, 39.018768, 50.617653>,  <37.466820, 38.822693, 50.479374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472660, 39.018768, 50.617653>,  <37.482395, 39.345558, 50.848118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472660, 39.018768, 50.617653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909610, 0.221006, -0.351805,
		0.414750, -0.532642, 0.737750,
		-0.024339, -0.816976, -0.576158,
		37.465359, 38.773674, 50.444805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188038, 39.127430, 50.865299>,  <37.482395, 39.345558, 50.848118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188038, 39.127430, 50.865299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.006165, 38.975082, 50.543255>,  <37.897041, 38.883675, 50.350029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.006165, 38.975082, 50.543255>,  <38.188038, 39.127430, 50.865299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006165, 38.975082, 50.543255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840576, 0.115331, -0.529273,
		0.294439, -0.917407, 0.267712,
		-0.454684, -0.380870, -0.805109,
		37.869759, 38.860821, 50.301723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740898, 38.768009, 50.571217>,  <38.188038, 39.127430, 50.865299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740898, 38.768009, 50.571217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.466930, 38.815475, 50.283661>,  <38.302547, 38.843956, 50.111126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.466930, 38.815475, 50.283661>,  <38.740898, 38.768009, 50.571217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466930, 38.815475, 50.283661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724647, 0.213781, -0.655122,
		0.075946, -0.969648, -0.232412,
		-0.684923, 0.118662, -0.718888,
		38.261452, 38.851074, 50.067993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080101, 38.511852, 50.144783>,  <38.740898, 38.768009, 50.571217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080101, 38.511852, 50.144783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796684, 38.701317, 49.935551>,  <38.626633, 38.814995, 49.810013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796684, 38.701317, 49.935551>,  <39.080101, 38.511852, 50.144783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796684, 38.701317, 49.935551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705635, 0.482804, -0.518632,
		0.006887, -0.736575, -0.676321,
		-0.708542, 0.473664, -0.523078,
		38.584122, 38.843414, 49.778625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247215, 38.297989, 49.443756>,  <39.080101, 38.511852, 50.144783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247215, 38.297989, 49.443756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038029, 38.636795, 49.481857>,  <38.912518, 38.840080, 49.504719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038029, 38.636795, 49.481857>,  <39.247215, 38.297989, 49.443756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038029, 38.636795, 49.481857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656888, 0.471726, -0.588195,
		-0.543144, -0.245033, -0.803090,
		-0.522966, 0.847014, 0.095256,
		38.881138, 38.890900, 49.510433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260334, 38.632668, 48.782398>,  <39.247215, 38.297989, 49.443756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260334, 38.632668, 48.782398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.161705, 38.933838, 49.026466>,  <39.102528, 39.114540, 49.172905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.161705, 38.933838, 49.026466>,  <39.260334, 38.632668, 48.782398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161705, 38.933838, 49.026466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597653, 0.613767, -0.515849,
		-0.762896, 0.237471, -0.601330,
		-0.246577, 0.752926, 0.610166,
		39.087730, 39.159714, 49.209515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035252, 39.228710, 48.409286>,  <39.260334, 38.632668, 48.782398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035252, 39.228710, 48.409286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.127525, 39.388893, 48.764008>,  <39.182888, 39.485001, 48.976841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.127525, 39.388893, 48.764008>,  <39.035252, 39.228710, 48.409286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127525, 39.388893, 48.764008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637052, 0.626742, -0.448731,
		-0.735494, 0.668454, -0.110532,
		0.230681, 0.400453, 0.886805,
		39.196732, 39.509029, 49.030048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063641, 39.930023, 48.277138>,  <39.035252, 39.228710, 48.409286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063641, 39.930023, 48.277138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285698, 39.898125, 48.608307>,  <39.418934, 39.878986, 48.807007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285698, 39.898125, 48.608307>,  <39.063641, 39.930023, 48.277138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285698, 39.898125, 48.608307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676978, 0.621625, -0.394061,
		-0.483231, 0.779245, 0.399079,
		0.555147, -0.079745, 0.827921,
		39.452244, 39.874203, 48.856682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279613, 40.532272, 48.420879>,  <39.063641, 39.930023, 48.277138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279613, 40.532272, 48.420879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.558609, 40.315872, 48.608852>,  <39.726006, 40.186031, 48.721634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.558609, 40.315872, 48.608852>,  <39.279613, 40.532272, 48.420879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558609, 40.315872, 48.608852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716048, 0.500531, -0.486563,
		0.028015, 0.675864, 0.736494,
		0.697488, -0.540996, 0.469929,
		39.767857, 40.153572, 48.749832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861179, 40.885414, 48.824478>,  <39.279613, 40.532272, 48.420879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861179, 40.885414, 48.824478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.652100, 41.220947, 48.885323>,  <38.526649, 41.422268, 48.921829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.652100, 41.220947, 48.885323>,  <38.861179, 40.885414, 48.824478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652100, 41.220947, 48.885323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768644, -0.540890, 0.341503,
		0.368741, 0.061583, 0.927490,
		-0.522701, 0.838836, 0.152113,
		38.495289, 41.472599, 48.930958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579533, 40.847321, 49.470860>,  <38.861179, 40.885414, 48.824478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579533, 40.847321, 49.470860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348534, 41.122971, 49.295769>,  <38.209934, 41.288361, 49.190716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348534, 41.122971, 49.295769>,  <38.579533, 40.847321, 49.470860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348534, 41.122971, 49.295769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815051, -0.455974, 0.357462,
		0.046742, 0.563206, 0.824993,
		-0.577501, 0.689120, -0.437729,
		38.175285, 41.329708, 49.164452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016132, 41.077000, 49.969696>,  <38.579533, 40.847321, 49.470860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016132, 41.077000, 49.969696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.870834, 41.167313, 49.608128>,  <37.783653, 41.221500, 49.391186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.870834, 41.167313, 49.608128>,  <38.016132, 41.077000, 49.969696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870834, 41.167313, 49.608128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916086, -0.263383, 0.302350,
		-0.169812, 0.937898, 0.302508,
		-0.363248, 0.225781, -0.903921,
		37.761860, 41.235046, 49.336952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533798, 41.634361, 50.044407>,  <38.016132, 41.077000, 49.969696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533798, 41.634361, 50.044407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460640, 41.432838, 49.706715>,  <37.416744, 41.311924, 49.504097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460640, 41.432838, 49.706715>,  <37.533798, 41.634361, 50.044407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460640, 41.432838, 49.706715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929202, -0.191919, 0.315832,
		-0.321142, 0.842227, -0.433037,
		-0.182895, -0.503806, -0.844233,
		37.405773, 41.281696, 49.453445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834610, 41.874313, 49.946098>,  <37.533798, 41.634361, 50.044407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834610, 41.874313, 49.946098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.915894, 41.557999, 49.715149>,  <36.964664, 41.368210, 49.576580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.915894, 41.557999, 49.715149>,  <36.834610, 41.874313, 49.946098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915894, 41.557999, 49.715149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940473, -0.321708, 0.109613,
		-0.272427, 0.520731, -0.809088,
		0.203211, -0.790787, -0.577375,
		36.976856, 41.320763, 49.541935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279591, 41.847214, 49.708115>,  <36.834610, 41.874313, 49.946098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279591, 41.847214, 49.708115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.445240, 41.490334, 49.636021>,  <36.544632, 41.276207, 49.592766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.445240, 41.490334, 49.636021>,  <36.279591, 41.847214, 49.708115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445240, 41.490334, 49.636021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817734, -0.451648, 0.356827,
		-0.399762, -0.000390, -0.916619,
		0.414128, -0.892196, -0.180233,
		36.569477, 41.222675, 49.581951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819202, 41.452240, 49.334118>,  <36.279591, 41.847214, 49.708115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819202, 41.452240, 49.334118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.066025, 41.217407, 49.543716>,  <36.214119, 41.076508, 49.669476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.066025, 41.217407, 49.543716>,  <35.819202, 41.452240, 49.334118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066025, 41.217407, 49.543716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781361, -0.378112, 0.496493,
		-0.093355, -0.715795, -0.692043,
		0.617057, -0.587085, 0.523996,
		36.251141, 41.041283, 49.700916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449898, 40.841702, 49.441807>,  <35.819202, 41.452240, 49.334118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449898, 40.841702, 49.441807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.731026, 40.802231, 49.723602>,  <35.899700, 40.778549, 49.892681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.731026, 40.802231, 49.723602>,  <35.449898, 40.841702, 49.441807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731026, 40.802231, 49.723602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664673, -0.443989, 0.600903,
		0.253490, -0.890582, -0.377633,
		0.702818, -0.098680, 0.704492,
		35.941872, 40.772629, 49.934952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324402, 40.237354, 49.600075>,  <35.449898, 40.841702, 49.441807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324402, 40.237354, 49.600075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.531952, 40.409142, 49.895729>,  <35.656483, 40.512215, 50.073124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.531952, 40.409142, 49.895729>,  <35.324402, 40.237354, 49.600075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531952, 40.409142, 49.895729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555561, -0.487736, 0.673398,
		0.649710, -0.760045, -0.014475,
		0.518873, 0.429472, 0.739138,
		35.687614, 40.537983, 50.117470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413143, 39.744110, 50.151676>,  <35.324402, 40.237354, 49.600075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413143, 39.744110, 50.151676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.509647, 40.067741, 50.366035>,  <35.567551, 40.261921, 50.494652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.509647, 40.067741, 50.366035>,  <35.413143, 39.744110, 50.151676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509647, 40.067741, 50.366035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499926, -0.369690, 0.783200,
		0.831786, -0.456865, 0.315288,
		0.241258, 0.809076, 0.535902,
		35.582024, 40.310463, 50.526806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629005, 39.470402, 50.799709>,  <35.413143, 39.744110, 50.151676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629005, 39.470402, 50.799709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.523613, 39.851570, 50.859734>,  <35.460377, 40.080273, 50.895748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.523613, 39.851570, 50.859734>,  <35.629005, 39.470402, 50.799709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523613, 39.851570, 50.859734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573309, -0.279791, 0.770087,
		0.775818, 0.116871, 0.620038,
		-0.263482, 0.952921, 0.150064,
		35.444569, 40.137447, 50.904755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681587, 39.639885, 51.508244>,  <35.629005, 39.470402, 50.799709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681587, 39.639885, 51.508244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.429413, 39.904579, 51.345936>,  <35.278107, 40.063396, 51.248550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.429413, 39.904579, 51.345936>,  <35.681587, 39.639885, 51.508244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429413, 39.904579, 51.345936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685403, -0.229171, 0.691161,
		0.364375, 0.713853, 0.598035,
		-0.630439, 0.661736, -0.405773,
		35.240280, 40.103100, 51.224205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467762, 39.899620, 52.123875>,  <35.681587, 39.639885, 51.508244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467762, 39.899620, 52.123875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.194019, 40.014709, 51.855885>,  <35.029774, 40.083763, 51.695091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.194019, 40.014709, 51.855885>,  <35.467762, 39.899620, 52.123875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194019, 40.014709, 51.855885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724624, -0.370536, 0.581054,
		-0.081070, 0.883131, 0.462068,
		-0.684359, 0.287719, -0.669978,
		34.988712, 40.101025, 51.654892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933319, 40.391376, 52.455971>,  <35.467762, 39.899620, 52.123875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933319, 40.391376, 52.455971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.756683, 40.207031, 52.148048>,  <34.650700, 40.096424, 51.963295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.756683, 40.207031, 52.148048>,  <34.933319, 40.391376, 52.455971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756683, 40.207031, 52.148048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779471, -0.227839, 0.583537,
		-0.444320, 0.857728, -0.258614,
		-0.441593, -0.460859, -0.769808,
		34.624207, 40.068775, 51.917107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019543, 41.071636, 52.524567>,  <34.933319, 40.391376, 52.455971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019543, 41.071636, 52.524567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.839447, 41.391312, 52.683857>,  <34.731392, 41.583118, 52.779430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.839447, 41.391312, 52.683857>,  <35.019543, 41.071636, 52.524567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839447, 41.391312, 52.683857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703799, 0.592096, -0.392541,
		-0.549504, 0.103538, -0.829051,
		-0.450235, 0.799188, 0.398229,
		34.704376, 41.631069, 52.803326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987041, 41.605190, 51.998726>,  <35.019543, 41.071636, 52.524567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987041, 41.605190, 51.998726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.962448, 41.790451, 52.352383>,  <34.947693, 41.901608, 52.564575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.962448, 41.790451, 52.352383>,  <34.987041, 41.605190, 51.998726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962448, 41.790451, 52.352383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591805, 0.730226, -0.341374,
		-0.803733, 0.502253, -0.318991,
		-0.061479, 0.463154, 0.884143,
		34.944004, 41.929398, 52.617626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834465, 42.270401, 51.909534>,  <34.987041, 41.605190, 51.998726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834465, 42.270401, 51.909534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.998764, 42.288544, 52.273781>,  <35.097343, 42.299427, 52.492329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.998764, 42.288544, 52.273781>,  <34.834465, 42.270401, 51.909534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998764, 42.288544, 52.273781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604783, 0.733854, -0.309349,
		-0.682291, 0.677792, 0.274003,
		0.410752, 0.045354, 0.910618,
		35.121990, 42.302151, 52.546967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897434, 43.037384, 52.038090>,  <34.834465, 42.270401, 51.909534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897434, 43.037384, 52.038090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.137749, 42.852692, 52.299122>,  <35.281937, 42.741875, 52.455742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.137749, 42.852692, 52.299122>,  <34.897434, 43.037384, 52.038090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137749, 42.852692, 52.299122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706407, 0.688782, -0.162996,
		-0.374224, 0.558912, 0.739982,
		0.600787, -0.461732, 0.652578,
		35.317986, 42.714172, 52.494896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202744, 43.599796, 52.421665>,  <34.897434, 43.037384, 52.038090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202744, 43.599796, 52.421665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.449646, 43.286583, 52.452286>,  <35.597786, 43.098656, 52.470657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.449646, 43.286583, 52.452286>,  <35.202744, 43.599796, 52.421665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449646, 43.286583, 52.452286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773150, 0.585668, -0.243374,
		0.145735, 0.209411, 0.966907,
		0.617252, -0.783032, 0.076553,
		35.634823, 43.051674, 52.475250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903393, 43.859264, 52.704769>,  <35.202744, 43.599796, 52.421665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903393, 43.859264, 52.704769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997551, 43.491470, 52.578831>,  <36.054047, 43.270794, 52.503269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997551, 43.491470, 52.578831>,  <35.903393, 43.859264, 52.704769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997551, 43.491470, 52.578831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898640, 0.329305, -0.289835,
		0.370179, -0.214702, 0.903809,
		0.235400, -0.919490, -0.314842,
		36.068172, 43.215622, 52.484379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508373, 43.678848, 52.954525>,  <35.903393, 43.859264, 52.704769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508373, 43.678848, 52.954525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.490791, 43.430527, 52.641434>,  <36.480240, 43.281532, 52.453579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.490791, 43.430527, 52.641434>,  <36.508373, 43.678848, 52.954525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490791, 43.430527, 52.641434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889193, 0.332846, -0.313927,
		0.455417, -0.709797, 0.537387,
		-0.043957, -0.620808, -0.782729,
		36.477604, 43.244286, 52.406616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124691, 43.247433, 52.888184>,  <36.508373, 43.678848, 52.954525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124691, 43.247433, 52.888184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.958874, 43.232849, 52.524464>,  <36.859383, 43.224098, 52.306232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.958874, 43.232849, 52.524464>,  <37.124691, 43.247433, 52.888184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958874, 43.232849, 52.524464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851123, 0.338122, -0.401575,
		0.322094, -0.940396, -0.109137,
		-0.414541, -0.036456, -0.909300,
		36.834511, 43.221912, 52.251675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648247, 42.880489, 52.541889>,  <37.124691, 43.247433, 52.888184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648247, 42.880489, 52.541889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.419952, 43.085030, 52.284897>,  <37.282978, 43.207756, 52.130703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.419952, 43.085030, 52.284897>,  <37.648247, 42.880489, 52.541889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419952, 43.085030, 52.284897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820197, 0.392430, -0.416264,
		0.039270, -0.764536, -0.643383,
		-0.570732, 0.511354, -0.642481,
		37.248734, 43.238434, 52.092152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929855, 42.708256, 51.797188>,  <37.648247, 42.880489, 52.541889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929855, 42.708256, 51.797188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720005, 43.042824, 51.733719>,  <37.594093, 43.243565, 51.695637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720005, 43.042824, 51.733719>,  <37.929855, 42.708256, 51.797188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720005, 43.042824, 51.733719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807609, 0.429999, -0.403568,
		-0.269325, -0.339863, -0.901086,
		-0.524625, 0.836417, -0.158668,
		37.562618, 43.293751, 51.686119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009640, 42.865471, 51.119736>,  <37.929855, 42.708256, 51.797188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009640, 42.865471, 51.119736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930359, 43.212112, 51.302917>,  <37.882790, 43.420097, 51.412827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930359, 43.212112, 51.302917>,  <38.009640, 42.865471, 51.119736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930359, 43.212112, 51.302917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749332, 0.435151, -0.499145,
		-0.631837, 0.244226, -0.735620,
		-0.198201, 0.866601, 0.457951,
		37.870899, 43.472092, 51.440304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160675, 43.295570, 50.569206>,  <38.009640, 42.865471, 51.119736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160675, 43.295570, 50.569206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117008, 43.555206, 50.870342>,  <38.090809, 43.710987, 51.051022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117008, 43.555206, 50.870342>,  <38.160675, 43.295570, 50.569206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117008, 43.555206, 50.870342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739751, 0.558935, -0.374647,
		-0.663967, 0.516013, -0.541182,
		-0.109163, 0.649093, 0.752836,
		38.084259, 43.749935, 51.096191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204796, 43.902637, 50.317497>,  <38.160675, 43.295570, 50.569206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204796, 43.902637, 50.317497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.290688, 43.987434, 50.698853>,  <38.342220, 44.038311, 50.927666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.290688, 43.987434, 50.698853>,  <38.204796, 43.902637, 50.317497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290688, 43.987434, 50.698853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700476, 0.646820, -0.301589,
		-0.680607, 0.732586, -0.009608,
		0.214725, 0.211994, 0.953390,
		38.355106, 44.051033, 50.984871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167328, 44.585846, 50.267113>,  <38.204796, 43.902637, 50.317497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167328, 44.585846, 50.267113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.373276, 44.459435, 50.585869>,  <38.496845, 44.383587, 50.777122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.373276, 44.459435, 50.585869>,  <38.167328, 44.585846, 50.267113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373276, 44.459435, 50.585869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802178, 0.505466, -0.317829,
		-0.302358, 0.802889, 0.513760,
		0.514870, -0.316029, 0.796891,
		38.527737, 44.364628, 50.824936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.850002, 42.901535, 55.922703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990715, 42.541786, 55.818874>,  <36.075142, 42.325935, 55.756577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990715, 42.541786, 55.818874>,  <35.850002, 42.901535, 55.922703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990715, 42.541786, 55.818874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903877, -0.398469, 0.155657,
		-0.243426, 0.179865, -0.953096,
		0.351783, -0.899373, -0.259573,
		36.096249, 42.271973, 55.741001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295517, 42.712387, 55.630692>,  <35.850002, 42.901535, 55.922703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295517, 42.712387, 55.630692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.508179, 42.376938, 55.678101>,  <35.635777, 42.175667, 55.706547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.508179, 42.376938, 55.678101>,  <35.295517, 42.712387, 55.630692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508179, 42.376938, 55.678101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846813, -0.528941, 0.055946,
		0.015773, -0.130110, -0.991374,
		0.531657, -0.838626, 0.118522,
		35.667675, 42.125351, 55.713657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998138, 42.219498, 55.187405>,  <35.295517, 42.712387, 55.630692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998138, 42.219498, 55.187405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191040, 42.006416, 55.465588>,  <35.306782, 41.878567, 55.632496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191040, 42.006416, 55.465588>,  <34.998138, 42.219498, 55.187405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191040, 42.006416, 55.465588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840654, -0.504730, 0.196336,
		0.246428, -0.679321, -0.691228,
		0.482258, -0.532701, 0.695454,
		35.335716, 41.846607, 55.674225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822750, 41.455250, 55.083431>,  <34.998138, 42.219498, 55.187405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822750, 41.455250, 55.083431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947617, 41.478134, 55.462753>,  <35.022537, 41.491863, 55.690346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947617, 41.478134, 55.462753>,  <34.822750, 41.455250, 55.083431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947617, 41.478134, 55.462753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784461, -0.547528, 0.291264,
		0.535886, -0.834829, -0.126042,
		0.312167, 0.057209, 0.948303,
		35.041267, 41.495296, 55.747246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708656, 40.852707, 55.411392>,  <34.822750, 41.455250, 55.083431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708656, 40.852707, 55.411392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.775761, 41.066475, 55.742752>,  <34.816021, 41.194736, 55.941570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.775761, 41.066475, 55.742752>,  <34.708656, 40.852707, 55.411392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775761, 41.066475, 55.742752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810289, -0.403873, 0.424640,
		0.561506, -0.742481, 0.365284,
		0.167759, 0.534423, 0.828402,
		34.826088, 41.226803, 55.991272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671646, 40.422321, 56.046612>,  <34.708656, 40.852707, 55.411392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671646, 40.422321, 56.046612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582047, 40.793808, 56.164810>,  <34.528286, 41.016701, 56.235729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582047, 40.793808, 56.164810>,  <34.671646, 40.422321, 56.046612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582047, 40.793808, 56.164810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777099, -0.353184, 0.520940,
		0.588168, -0.112938, 0.800814,
		-0.224001, 0.928712, 0.295496,
		34.514847, 41.072422, 56.253460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598713, 40.301006, 56.663742>,  <34.671646, 40.422321, 56.046612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598713, 40.301006, 56.663742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.402763, 40.643356, 56.597420>,  <34.285194, 40.848766, 56.557625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.402763, 40.643356, 56.597420>,  <34.598713, 40.301006, 56.663742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402763, 40.643356, 56.597420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733913, -0.302223, 0.608303,
		0.470523, 0.419681, 0.776193,
		-0.489877, 0.855879, -0.165806,
		34.255802, 40.900120, 56.547676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390362, 40.421413, 57.298862>,  <34.598713, 40.301006, 56.663742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390362, 40.421413, 57.298862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159462, 40.631317, 57.048611>,  <34.020924, 40.757259, 56.898460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159462, 40.631317, 57.048611>,  <34.390362, 40.421413, 57.298862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159462, 40.631317, 57.048611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811617, -0.284469, 0.510251,
		0.089786, 0.802314, 0.590111,
		-0.577250, 0.524757, -0.625630,
		33.986286, 40.788746, 56.860920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977444, 40.840942, 57.711342>,  <34.390362, 40.421413, 57.298862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977444, 40.840942, 57.711342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778496, 40.804871, 57.366207>,  <33.659126, 40.783226, 57.159126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778496, 40.804871, 57.366207>,  <33.977444, 40.840942, 57.711342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778496, 40.804871, 57.366207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809226, -0.310252, 0.498896,
		-0.312686, 0.946368, 0.081337,
		-0.497374, -0.090178, -0.862837,
		33.629284, 40.777817, 57.107357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246925, 41.055706, 57.924248>,  <33.977444, 40.840942, 57.711342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246925, 41.055706, 57.924248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217239, 40.884392, 57.564011>,  <33.199429, 40.781601, 57.347870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217239, 40.884392, 57.564011>,  <33.246925, 41.055706, 57.924248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217239, 40.884392, 57.564011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753362, -0.567629, 0.332029,
		-0.653404, 0.703113, -0.280527,
		-0.074219, -0.428287, -0.900589,
		33.194973, 40.755905, 57.293835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494785, 40.901928, 57.835579>,  <33.246925, 41.055706, 57.924248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494785, 40.901928, 57.835579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685780, 40.663750, 57.577141>,  <32.800377, 40.520844, 57.422077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685780, 40.663750, 57.577141>,  <32.494785, 40.901928, 57.835579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685780, 40.663750, 57.577141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554750, -0.774550, 0.303849,
		-0.681362, 0.213339, -0.700166,
		0.477490, -0.595448, -0.646099,
		32.829025, 40.485115, 57.383312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014004, 40.482727, 57.595673>,  <32.494785, 40.901928, 57.835579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014004, 40.482727, 57.595673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.347656, 40.269753, 57.538071>,  <32.547848, 40.141968, 57.503510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.347656, 40.269753, 57.538071>,  <32.014004, 40.482727, 57.595673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347656, 40.269753, 57.538071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429003, -0.790378, 0.437331,
		-0.346665, -0.303015, -0.887697,
		0.834134, -0.532432, -0.144002,
		32.597897, 40.110023, 57.494869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744356, 39.915241, 57.327141>,  <32.014004, 40.482727, 57.595673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744356, 39.915241, 57.327141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.095211, 39.826965, 57.497749>,  <32.305725, 39.773998, 57.600117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.095211, 39.826965, 57.497749>,  <31.744356, 39.915241, 57.327141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095211, 39.826965, 57.497749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438439, -0.730409, 0.523712,
		0.195958, -0.646373, -0.737430,
		0.877138, -0.220693, 0.426524,
		32.358353, 39.760757, 57.625706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766985, 39.167439, 57.276558>,  <31.744356, 39.915241, 57.327141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766985, 39.167439, 57.276558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.001114, 39.312950, 57.566402>,  <32.141590, 39.400257, 57.740307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.001114, 39.312950, 57.566402>,  <31.766985, 39.167439, 57.276558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001114, 39.312950, 57.566402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353903, -0.689440, 0.632001,
		0.729487, -0.626366, -0.274800,
		0.585322, 0.363784, 0.724610,
		32.176712, 39.422085, 57.783787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223993, 39.188869, 56.735275>,  <31.766985, 39.167439, 57.276558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223993, 39.188869, 56.735275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.043875, 39.138191, 56.381737>,  <30.935804, 39.107784, 56.169613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.043875, 39.138191, 56.381737>,  <31.223993, 39.188869, 56.735275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043875, 39.138191, 56.381737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490362, 0.792151, -0.363376,
		0.746176, -0.597031, -0.294577,
		-0.450296, -0.126693, -0.883845,
		30.908787, 39.100182, 56.116585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810802, 39.108349, 56.311672>,  <31.223993, 39.188869, 56.735275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810802, 39.108349, 56.311672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.509401, 39.204048, 56.066727>,  <31.328560, 39.261467, 55.919758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.509401, 39.204048, 56.066727>,  <31.810802, 39.108349, 56.311672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509401, 39.204048, 56.066727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576355, 0.688509, -0.440193,
		0.316306, -0.684628, -0.656685,
		-0.753502, 0.239248, -0.612368,
		31.283350, 39.275822, 55.883015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109543, 39.081268, 55.653053>,  <31.810802, 39.108349, 56.311672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109543, 39.081268, 55.653053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.776419, 39.298927, 55.612385>,  <31.576546, 39.429523, 55.587982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.776419, 39.298927, 55.612385>,  <32.109543, 39.081268, 55.653053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776419, 39.298927, 55.612385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516053, 0.696709, -0.498284,
		-0.200302, -0.467443, -0.861032,
		-0.832808, 0.544145, -0.101673,
		31.526577, 39.462170, 55.581882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117432, 39.211502, 54.918480>,  <32.109543, 39.081268, 55.653053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117432, 39.211502, 54.918480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.874849, 39.483833, 55.082764>,  <31.729300, 39.647232, 55.181335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.874849, 39.483833, 55.082764>,  <32.117432, 39.211502, 54.918480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874849, 39.483833, 55.082764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280898, 0.666687, -0.690380,
		-0.743848, -0.303316, -0.595559,
		-0.606455, 0.680829, 0.410713,
		31.692913, 39.688084, 55.205978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857109, 39.463375, 54.325535>,  <32.117432, 39.211502, 54.918480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857109, 39.463375, 54.325535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762035, 39.742188, 54.596138>,  <31.704990, 39.909473, 54.758499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762035, 39.742188, 54.596138>,  <31.857109, 39.463375, 54.325535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762035, 39.742188, 54.596138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269814, 0.716431, -0.643371,
		-0.933117, 0.029611, -0.358353,
		-0.237684, 0.697029, 0.676504,
		31.690729, 39.951298, 54.799088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456327, 39.966705, 53.987919>,  <31.857109, 39.463375, 54.325535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456327, 39.966705, 53.987919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.602945, 40.148857, 54.312454>,  <31.690916, 40.258148, 54.507175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.602945, 40.148857, 54.312454>,  <31.456327, 39.966705, 53.987919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602945, 40.148857, 54.312454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308009, 0.763472, -0.567663,
		-0.877939, 0.457973, 0.139585,
		0.366544, 0.455379, 0.811342,
		31.712908, 40.285469, 54.555859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367790, 40.653969, 53.896183>,  <31.456327, 39.966705, 53.987919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367790, 40.653969, 53.896183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.664167, 40.635872, 54.164200>,  <31.841993, 40.625011, 54.325008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.664167, 40.635872, 54.164200>,  <31.367790, 40.653969, 53.896183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664167, 40.635872, 54.164200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509308, 0.688183, -0.516730,
		-0.437732, 0.724125, 0.532948,
		0.740943, -0.045245, 0.670042,
		31.886450, 40.622299, 54.365211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564283, 41.362144, 53.944481>,  <31.367790, 40.653969, 53.896183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564283, 41.362144, 53.944481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.878723, 41.161674, 54.089188>,  <32.067387, 41.041393, 54.176010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.878723, 41.161674, 54.089188>,  <31.564283, 41.362144, 53.944481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878723, 41.161674, 54.089188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615834, 0.584956, -0.527803,
		0.052907, 0.637690, 0.768474,
		0.786098, -0.501177, 0.361763,
		32.114552, 41.011322, 54.197716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104992, 41.853336, 54.026894>,  <31.564283, 41.362144, 53.944481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104992, 41.853336, 54.026894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.307487, 41.509300, 54.001717>,  <32.428986, 41.302879, 53.986610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.307487, 41.509300, 54.001717>,  <32.104992, 41.853336, 54.026894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307487, 41.509300, 54.001717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719976, 0.461682, -0.518155,
		0.474720, 0.216994, 0.852968,
		0.506237, -0.860095, -0.062940,
		32.459358, 41.251270, 53.982834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687675, 42.110489, 54.203762>,  <32.104992, 41.853336, 54.026894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687675, 42.110489, 54.203762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.784500, 41.758507, 54.040260>,  <32.842594, 41.547318, 53.942158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.784500, 41.758507, 54.040260>,  <32.687675, 42.110489, 54.203762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784500, 41.758507, 54.040260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777633, 0.427891, -0.460648,
		0.580254, -0.206360, 0.787859,
		0.242058, -0.879957, -0.408757,
		32.857117, 41.494518, 53.917633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488068, 41.999828, 54.258537>,  <32.687675, 42.110489, 54.203762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488068, 41.999828, 54.258537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.396477, 41.739143, 53.969307>,  <33.341522, 41.582733, 53.795769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.396477, 41.739143, 53.969307>,  <33.488068, 41.999828, 54.258537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396477, 41.739143, 53.969307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862576, 0.208421, -0.461004,
		0.451145, -0.729270, 0.514426,
		-0.228979, -0.651711, -0.723078,
		33.327782, 41.543629, 53.752384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996593, 41.390350, 54.211777>,  <33.488068, 41.999828, 54.258537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996593, 41.390350, 54.211777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.837574, 41.442131, 53.848415>,  <33.742161, 41.473202, 53.630398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.837574, 41.442131, 53.848415>,  <33.996593, 41.390350, 54.211777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837574, 41.442131, 53.848415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902654, 0.233016, -0.361828,
		0.164832, -0.963818, -0.209488,
		-0.397551, 0.129454, -0.908403,
		33.718307, 41.480968, 53.575893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333939, 40.860634, 53.723206>,  <33.996593, 41.390350, 54.211777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333939, 40.860634, 53.723206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159203, 41.141518, 53.498329>,  <34.054359, 41.310047, 53.363403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159203, 41.141518, 53.498329>,  <34.333939, 40.860634, 53.723206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159203, 41.141518, 53.498329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813735, 0.042102, -0.579710,
		-0.383411, -0.710720, -0.589808,
		-0.436843, 0.702214, -0.562195,
		34.028149, 41.352180, 53.329670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681984, 40.779881, 53.143677>,  <34.333939, 40.860634, 53.723206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681984, 40.779881, 53.143677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.516762, 41.141922, 53.103352>,  <34.417629, 41.359146, 53.079159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.516762, 41.141922, 53.103352>,  <34.681984, 40.779881, 53.143677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516762, 41.141922, 53.103352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854805, 0.347138, -0.385751,
		-0.314151, -0.245511, -0.917079,
		-0.413059, 0.905107, -0.100811,
		34.392845, 41.413456, 53.073109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153912, 40.537430, 52.634666>,  <34.681984, 40.779881, 53.143677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153912, 40.537430, 52.634666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163197, 40.250702, 52.355919>,  <34.168770, 40.078663, 52.188671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163197, 40.250702, 52.355919>,  <34.153912, 40.537430, 52.634666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163197, 40.250702, 52.355919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792524, -0.438096, 0.424237,
		-0.609398, 0.542438, -0.578269,
		0.023215, -0.716821, -0.696870,
		34.170162, 40.035656, 52.146858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451199, 40.446594, 52.424526>,  <34.153912, 40.537430, 52.634666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451199, 40.446594, 52.424526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650192, 40.108780, 52.345272>,  <33.769588, 39.906090, 52.297718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650192, 40.108780, 52.345272>,  <33.451199, 40.446594, 52.424526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650192, 40.108780, 52.345272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795670, -0.535236, 0.283604,
		-0.345565, 0.016562, -0.938248,
		0.497487, -0.844540, -0.198137,
		33.799438, 39.855419, 52.285831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944271, 40.049267, 52.140842>,  <33.451199, 40.446594, 52.424526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944271, 40.049267, 52.140842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.207413, 39.763687, 52.236771>,  <33.365295, 39.592339, 52.294327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.207413, 39.763687, 52.236771>,  <32.944271, 40.049267, 52.140842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207413, 39.763687, 52.236771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751155, -0.645106, 0.140012,
		0.054749, -0.272250, -0.960668,
		0.657851, -0.713945, 0.239821,
		33.404770, 39.549503, 52.308716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647594, 39.463322, 51.804684>,  <32.944271, 40.049267, 52.140842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647594, 39.463322, 51.804684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896725, 39.337685, 52.091301>,  <33.046204, 39.262302, 52.263271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896725, 39.337685, 52.091301>,  <32.647594, 39.463322, 51.804684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896725, 39.337685, 52.091301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670504, -0.686217, 0.282013,
		0.403123, -0.656088, -0.637997,
		0.622830, -0.314093, 0.716540,
		33.083572, 39.243458, 52.306263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594845, 38.714275, 51.840229>,  <32.647594, 39.463322, 51.804684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594845, 38.714275, 51.840229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773132, 38.811378, 52.184879>,  <32.880104, 38.869640, 52.391670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773132, 38.811378, 52.184879>,  <32.594845, 38.714275, 51.840229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773132, 38.811378, 52.184879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562994, -0.672316, 0.480655,
		0.695968, -0.699329, -0.162994,
		0.445720, 0.242755, 0.861629,
		32.906849, 38.884205, 52.443367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860806, 38.138470, 52.074497>,  <32.594845, 38.714275, 51.840229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860806, 38.138470, 52.074497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.806564, 38.372299, 52.394470>,  <32.774021, 38.512596, 52.586452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.806564, 38.372299, 52.394470>,  <32.860806, 38.138470, 52.074497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806564, 38.372299, 52.394470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402438, -0.770279, 0.494685,
		0.905348, -0.254841, 0.339707,
		-0.135603, 0.584573, 0.799929,
		32.765884, 38.547672, 52.634449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119423, 37.719772, 52.510590>,  <32.860806, 38.138470, 52.074497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119423, 37.719772, 52.510590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.888519, 37.970055, 52.720451>,  <32.749977, 38.120224, 52.846371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.888519, 37.970055, 52.720451>,  <33.119423, 37.719772, 52.510590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888519, 37.970055, 52.720451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448372, -0.779875, 0.436758,
		0.682450, 0.016879, 0.730738,
		-0.577256, 0.625708, 0.524657,
		32.715343, 38.157768, 52.877850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626640, 37.274208, 52.555508>,  <33.119423, 37.719772, 52.510590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626640, 37.274208, 52.555508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.809601, 36.925972, 52.628010>,  <33.919376, 36.717030, 52.671513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.809601, 36.925972, 52.628010>,  <33.626640, 37.274208, 52.555508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809601, 36.925972, 52.628010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766191, 0.282366, -0.577253,
		0.451371, 0.402914, 0.796194,
		0.457402, -0.870592, 0.181257,
		33.946823, 36.664795, 52.682388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275810, 37.495461, 52.816914>,  <33.626640, 37.274208, 52.555508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275810, 37.495461, 52.816914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281670, 37.122322, 52.672928>,  <34.285187, 36.898438, 52.586536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281670, 37.122322, 52.672928>,  <34.275810, 37.495461, 52.816914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281670, 37.122322, 52.672928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774125, 0.238443, -0.586409,
		0.632863, -0.270069, 0.725635,
		0.014652, -0.932849, -0.359969,
		34.286064, 36.842468, 52.564938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866360, 37.293255, 53.030930>,  <34.275810, 37.495461, 52.816914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866360, 37.293255, 53.030930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.762608, 37.088303, 52.703472>,  <34.700356, 36.965332, 52.506996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.762608, 37.088303, 52.703472>,  <34.866360, 37.293255, 53.030930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762608, 37.088303, 52.703472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864778, 0.254168, -0.433079,
		0.429977, -0.820281, 0.377173,
		-0.259381, -0.512384, -0.818648,
		34.684792, 36.934586, 52.457878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494991, 36.956673, 52.833939>,  <34.866360, 37.293255, 53.030930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494991, 36.956673, 52.833939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250229, 36.959442, 52.517578>,  <35.103371, 36.961102, 52.327763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250229, 36.959442, 52.517578>,  <35.494991, 36.956673, 52.833939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250229, 36.959442, 52.517578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783912, 0.138201, -0.605295,
		0.105112, -0.990380, -0.089993,
		-0.611910, 0.006923, -0.790897,
		35.066654, 36.961517, 52.280308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773926, 36.478428, 52.374924>,  <35.494991, 36.956673, 52.833939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773926, 36.478428, 52.374924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.542297, 36.711853, 52.147194>,  <35.403320, 36.851910, 52.010555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.542297, 36.711853, 52.147194>,  <35.773926, 36.478428, 52.374924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542297, 36.711853, 52.147194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801100, 0.277617, -0.530252,
		-0.151384, -0.763137, -0.628255,
		-0.579070, 0.583567, -0.569323,
		35.368576, 36.886925, 51.976398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072605, 36.479916, 51.857479>,  <35.773926, 36.478428, 52.374924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072605, 36.479916, 51.857479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.853012, 36.802353, 51.769089>,  <35.721256, 36.995815, 51.716053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.853012, 36.802353, 51.769089>,  <36.072605, 36.479916, 51.857479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853012, 36.802353, 51.769089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745704, 0.352929, -0.565125,
		-0.377556, -0.475026, -0.794860,
		-0.548979, 0.806096, -0.220978,
		35.688320, 37.044182, 51.702797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281025, 36.649883, 51.277107>,  <36.072605, 36.479916, 51.857479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281025, 36.649883, 51.277107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.084061, 36.987152, 51.363445>,  <35.965881, 37.189514, 51.415249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.084061, 36.987152, 51.363445>,  <36.281025, 36.649883, 51.277107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084061, 36.987152, 51.363445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572665, 0.500624, -0.649176,
		-0.655425, -0.196055, -0.729370,
		-0.492415, 0.843171, 0.215848,
		35.936337, 37.240105, 51.428200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.548740, 37.018780, 57.328079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.457474, 37.404869, 57.379120>,  <34.402714, 37.636524, 57.409744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.457474, 37.404869, 57.379120>,  <34.548740, 37.018780, 57.328079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457474, 37.404869, 57.379120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935586, 0.253640, -0.245652,
		-0.269474, 0.063333, -0.960923,
		-0.228170, 0.965223, 0.127603,
		34.389023, 37.694435, 57.417400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616016, 37.330101, 56.673542>,  <34.548740, 37.018780, 57.328079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616016, 37.330101, 56.673542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.630280, 37.639694, 56.926426>,  <34.638836, 37.825451, 57.078156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.630280, 37.639694, 56.926426>,  <34.616016, 37.330101, 56.673542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630280, 37.639694, 56.926426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898935, 0.251554, -0.358660,
		-0.436630, 0.581100, -0.686788,
		0.035654, 0.773979, 0.632207,
		34.640976, 37.871887, 57.116089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872715, 37.917992, 56.238621>,  <34.616016, 37.330101, 56.673542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872715, 37.917992, 56.238621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.924072, 38.020088, 56.621948>,  <34.954887, 38.081345, 56.851944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.924072, 38.020088, 56.621948>,  <34.872715, 37.917992, 56.238621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924072, 38.020088, 56.621948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949431, 0.247548, -0.193136,
		-0.286524, 0.934651, -0.210548,
		0.128394, 0.255238, 0.958315,
		34.962589, 38.096661, 56.909443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293434, 38.574802, 56.190155>,  <34.872715, 37.917992, 56.238621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293434, 38.574802, 56.190155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.328125, 38.406090, 56.551170>,  <35.348938, 38.304863, 56.767780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.328125, 38.406090, 56.551170>,  <35.293434, 38.574802, 56.190155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328125, 38.406090, 56.551170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995153, -0.005472, -0.098182,
		0.046350, 0.906681, 0.419264,
		0.086725, -0.421783, 0.902540,
		35.354141, 38.279556, 56.821934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672882, 38.974785, 56.503349>,  <35.293434, 38.574802, 56.190155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672882, 38.974785, 56.503349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.723885, 38.636345, 56.710365>,  <35.754486, 38.433281, 56.834576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.723885, 38.636345, 56.710365>,  <35.672882, 38.974785, 56.503349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723885, 38.636345, 56.710365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965471, -0.013631, -0.260154,
		0.227172, 0.532844, 0.815150,
		0.127510, -0.846104, 0.517542,
		35.762138, 38.382515, 56.865627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230976, 39.029732, 56.977787>,  <35.672882, 38.974785, 56.503349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230976, 39.029732, 56.977787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.199772, 38.632446, 56.943298>,  <36.181049, 38.394073, 56.922607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.199772, 38.632446, 56.943298>,  <36.230976, 39.029732, 56.977787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199772, 38.632446, 56.943298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978812, -0.059885, -0.195806,
		0.189315, -0.099666, 0.976845,
		-0.078013, -0.993217, -0.086217,
		36.176369, 38.334480, 56.917435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821732, 38.818840, 57.281418>,  <36.230976, 39.029732, 56.977787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821732, 38.818840, 57.281418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.679478, 38.520493, 57.056137>,  <36.594124, 38.341484, 56.920967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.679478, 38.520493, 57.056137>,  <36.821732, 38.818840, 57.281418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679478, 38.520493, 57.056137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909972, -0.138844, -0.390734,
		0.213240, -0.651458, 0.728101,
		-0.355639, -0.745872, -0.563201,
		36.572784, 38.296730, 56.887177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286140, 38.319321, 57.455826>,  <36.821732, 38.818840, 57.281418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286140, 38.319321, 57.455826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.129765, 38.205795, 57.105598>,  <37.035938, 38.137680, 56.895462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.129765, 38.205795, 57.105598>,  <37.286140, 38.319321, 57.455826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129765, 38.205795, 57.105598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906725, 0.044702, -0.419346,
		0.158157, -0.957836, 0.239868,
		-0.390942, -0.283817, -0.875564,
		37.012482, 38.120651, 56.842930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792248, 37.961983, 57.162193>,  <37.286140, 38.319321, 57.455826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792248, 37.961983, 57.162193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.566483, 38.045189, 56.842651>,  <37.431023, 38.095112, 56.650925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.566483, 38.045189, 56.842651>,  <37.792248, 37.961983, 57.162193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566483, 38.045189, 56.842651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825470, 0.149560, -0.544272,
		0.006258, -0.966623, -0.256126,
		-0.564412, 0.208019, -0.798854,
		37.397160, 38.107594, 56.602997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167950, 37.664944, 56.728077>,  <37.792248, 37.961983, 57.162193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167950, 37.664944, 56.728077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.951645, 37.917259, 56.505478>,  <37.821861, 38.068649, 56.371918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.951645, 37.917259, 56.505478>,  <38.167950, 37.664944, 56.728077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951645, 37.917259, 56.505478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795461, 0.168354, -0.582150,
		-0.273523, -0.757475, -0.592804,
		-0.540765, 0.630784, -0.556493,
		37.789417, 38.106495, 56.338531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343548, 37.542519, 56.095196>,  <38.167950, 37.664944, 56.728077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343548, 37.542519, 56.095196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.211071, 37.919945, 56.094894>,  <38.131584, 38.146400, 56.094715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.211071, 37.919945, 56.094894>,  <38.343548, 37.542519, 56.095196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211071, 37.919945, 56.094894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799276, 0.280121, -0.531686,
		-0.501468, -0.176693, -0.846941,
		-0.331191, 0.943564, -0.000755,
		38.111713, 38.203014, 56.094669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354683, 37.803886, 55.327591>,  <38.343548, 37.542519, 56.095196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354683, 37.803886, 55.327591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.323135, 38.138893, 55.543869>,  <38.304207, 38.339897, 55.673637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.323135, 38.138893, 55.543869>,  <38.354683, 37.803886, 55.327591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323135, 38.138893, 55.543869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753368, 0.405281, -0.517865,
		-0.652852, 0.366497, -0.662921,
		-0.078873, 0.837512, 0.540696,
		38.299473, 38.390148, 55.706078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883087, 37.820511, 54.734856>,  <38.354683, 37.803886, 55.327591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883087, 37.820511, 54.734856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.832508, 37.563240, 54.432774>,  <37.802158, 37.408878, 54.251522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.832508, 37.563240, 54.432774>,  <37.883087, 37.820511, 54.734856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832508, 37.563240, 54.432774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838779, -0.337119, 0.427553,
		-0.529585, 0.687517, -0.496850,
		-0.126452, -0.643173, -0.755208,
		37.794571, 37.370289, 54.206211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167728, 37.864788, 54.561600>,  <37.883087, 37.820511, 54.734856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167728, 37.864788, 54.561600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.292805, 37.517662, 54.407131>,  <37.367851, 37.309387, 54.314449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.292805, 37.517662, 54.407131>,  <37.167728, 37.864788, 54.561600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292805, 37.517662, 54.407131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777453, -0.467398, 0.420839,
		-0.545704, 0.168636, -0.820834,
		0.312688, -0.867814, -0.386168,
		37.386612, 37.257317, 54.291279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578461, 37.583565, 54.270943>,  <37.167728, 37.864788, 54.561600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578461, 37.583565, 54.270943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.822510, 37.267250, 54.290569>,  <36.968937, 37.077461, 54.302345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.822510, 37.267250, 54.290569>,  <36.578461, 37.583565, 54.270943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822510, 37.267250, 54.290569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767621, -0.574634, 0.283820,
		-0.196245, -0.210830, -0.957621,
		0.610120, -0.790789, 0.049069,
		37.005547, 37.030014, 54.305290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179882, 37.036411, 53.948017>,  <36.578461, 37.583565, 54.270943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179882, 37.036411, 53.948017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.442032, 36.849525, 54.185402>,  <36.599323, 36.737392, 54.327831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.442032, 36.849525, 54.185402>,  <36.179882, 37.036411, 53.948017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442032, 36.849525, 54.185402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703030, -0.664568, 0.253176,
		0.276105, -0.583144, -0.764009,
		0.655374, -0.467218, 0.593458,
		36.638645, 36.709358, 54.363438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084652, 36.347927, 53.874241>,  <36.179882, 37.036411, 53.948017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084652, 36.347927, 53.874241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.299431, 36.341469, 54.211624>,  <36.428299, 36.337593, 54.414055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.299431, 36.341469, 54.211624>,  <36.084652, 36.347927, 53.874241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299431, 36.341469, 54.211624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498788, -0.812416, 0.301977,
		0.680366, -0.582854, -0.444278,
		0.536948, -0.016145, 0.843461,
		36.460514, 36.336624, 54.464661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279823, 35.593708, 54.019337>,  <36.084652, 36.347927, 53.874241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279823, 35.593708, 54.019337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.296627, 35.815208, 54.351986>,  <36.306709, 35.948109, 54.551575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.296627, 35.815208, 54.351986>,  <36.279823, 35.593708, 54.019337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296627, 35.815208, 54.351986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656069, -0.612473, 0.440964,
		0.753531, -0.564126, 0.337569,
		0.042008, 0.553749, 0.831623,
		36.309231, 35.981335, 54.601475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464966, 35.157539, 54.481155>,  <36.279823, 35.593708, 54.019337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464966, 35.157539, 54.481155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.275620, 35.461403, 54.659527>,  <36.162014, 35.643719, 54.766548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.275620, 35.461403, 54.659527>,  <36.464966, 35.157539, 54.481155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275620, 35.461403, 54.659527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697344, -0.632468, 0.337187,
		0.538181, -0.151354, 0.829128,
		-0.473362, 0.759655, 0.445928,
		36.133610, 35.689301, 54.793304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243179, 34.844543, 55.119957>,  <36.464966, 35.157539, 54.481155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243179, 34.844543, 55.119957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.018669, 35.174248, 55.090103>,  <35.883965, 35.372070, 55.072189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.018669, 35.174248, 55.090103>,  <36.243179, 34.844543, 55.119957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018669, 35.174248, 55.090103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647350, -0.381034, 0.660115,
		0.515667, 0.418819, 0.747448,
		-0.561271, 0.824260, -0.074636,
		35.850288, 35.421524, 55.067711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972496, 34.914177, 55.841679>,  <36.243179, 34.844543, 55.119957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972496, 34.914177, 55.841679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.758369, 35.151146, 55.600857>,  <35.629894, 35.293327, 55.456364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.758369, 35.151146, 55.600857>,  <35.972496, 34.914177, 55.841679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758369, 35.151146, 55.600857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823350, -0.206930, 0.528464,
		0.188488, 0.778601, 0.598542,
		-0.535319, 0.592418, -0.602058,
		35.597775, 35.328873, 55.420238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542362, 35.308960, 56.302834>,  <35.972496, 34.914177, 55.841679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542362, 35.308960, 56.302834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.351685, 35.324623, 55.951553>,  <35.237278, 35.334023, 55.740784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.351685, 35.324623, 55.951553>,  <35.542362, 35.308960, 56.302834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351685, 35.324623, 55.951553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871741, -0.149810, 0.466503,
		-0.113294, 0.987939, 0.105552,
		-0.476690, 0.039162, -0.878199,
		35.208679, 35.336372, 55.688095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002544, 35.671680, 56.375851>,  <35.542362, 35.308960, 56.302834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002544, 35.671680, 56.375851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.880955, 35.484161, 56.044109>,  <34.808002, 35.371651, 55.845062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.880955, 35.484161, 56.044109>,  <35.002544, 35.671680, 56.375851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880955, 35.484161, 56.044109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824742, -0.306265, 0.475398,
		-0.476866, 0.828513, -0.293538,
		-0.303973, -0.468794, -0.829357,
		34.789764, 35.343525, 55.795303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326775, 35.879963, 56.275700>,  <35.002544, 35.671680, 56.375851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326775, 35.879963, 56.275700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.346203, 35.553436, 56.045479>,  <34.357861, 35.357521, 55.907345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.346203, 35.553436, 56.045479>,  <34.326775, 35.879963, 56.275700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346203, 35.553436, 56.045479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909330, -0.274537, 0.312646,
		-0.413231, 0.508184, -0.755638,
		0.048569, -0.816320, -0.575555,
		34.360775, 35.308540, 55.872814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643162, 35.790249, 55.977692>,  <34.326775, 35.879963, 56.275700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643162, 35.790249, 55.977692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.826542, 35.434776, 55.981014>,  <33.936569, 35.221493, 55.983006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.826542, 35.434776, 55.981014>,  <33.643162, 35.790249, 55.977692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826542, 35.434776, 55.981014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787437, -0.401860, 0.467388,
		-0.412021, -0.220814, -0.884013,
		0.458455, -0.888679, 0.008302,
		33.964077, 35.168171, 55.983505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092495, 35.279007, 55.805641>,  <33.643162, 35.790249, 55.977692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092495, 35.279007, 55.805641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.386124, 35.045494, 55.944397>,  <33.562302, 34.905384, 56.027649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.386124, 35.045494, 55.944397>,  <33.092495, 35.279007, 55.805641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386124, 35.045494, 55.944397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673903, -0.563357, 0.478000,
		-0.083627, -0.584657, -0.806959,
		0.734072, -0.583786, 0.346890,
		33.606346, 34.870358, 56.048466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921741, 35.318462, 55.139469>,  <33.092495, 35.279007, 55.805641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921741, 35.318462, 55.139469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.656570, 35.244034, 54.849392>,  <32.497467, 35.199375, 54.675346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.656570, 35.244034, 54.849392>,  <32.921741, 35.318462, 55.139469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656570, 35.244034, 54.849392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585139, 0.475492, -0.656901,
		0.467057, -0.859816, -0.206336,
		-0.662925, -0.186075, -0.725194,
		32.457691, 35.188210, 54.631832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273335, 34.971992, 54.702579>,  <32.921741, 35.318462, 55.139469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273335, 34.971992, 54.702579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.967216, 35.125168, 54.495628>,  <32.783546, 35.217075, 54.371456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.967216, 35.125168, 54.495628>,  <33.273335, 34.971992, 54.702579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967216, 35.125168, 54.495628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641673, 0.390461, -0.660149,
		-0.050782, -0.837196, -0.544541,
		-0.765295, 0.382941, -0.517377,
		32.737629, 35.240051, 54.340416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340706, 34.739140, 53.934521>,  <33.273335, 34.971992, 54.702579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340706, 34.739140, 53.934521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.091957, 35.051041, 53.905472>,  <32.942707, 35.238182, 53.888042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.091957, 35.051041, 53.905472>,  <33.340706, 34.739140, 53.934521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091957, 35.051041, 53.905472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457109, 0.286123, -0.842131,
		-0.635871, -0.556890, -0.534361,
		-0.621867, 0.779748, -0.072622,
		32.905396, 35.284966, 53.883686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160358, 34.742374, 53.232426>,  <33.340706, 34.739140, 53.934521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160358, 34.742374, 53.232426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.085682, 35.108871, 53.374218>,  <33.040874, 35.328770, 53.459293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.085682, 35.108871, 53.374218>,  <33.160358, 34.742374, 53.232426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085682, 35.108871, 53.374218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529043, 0.397796, -0.749581,
		-0.827805, 0.047594, -0.558994,
		-0.186690, 0.916238, 0.354477,
		33.029675, 35.383743, 53.480560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062366, 35.220436, 52.653320>,  <33.160358, 34.742374, 53.232426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062366, 35.220436, 52.653320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.163010, 35.472618, 52.947044>,  <33.223396, 35.623928, 53.123280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.163010, 35.472618, 52.947044>,  <33.062366, 35.220436, 52.653320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163010, 35.472618, 52.947044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496558, 0.567157, -0.657087,
		-0.830737, 0.529957, -0.170358,
		0.251608, 0.630459, 0.734312,
		33.238491, 35.661755, 53.167339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970352, 35.939392, 52.410690>,  <33.062366, 35.220436, 52.653320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970352, 35.939392, 52.410690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.226822, 35.969070, 52.716213>,  <33.380703, 35.986877, 52.899525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.226822, 35.969070, 52.716213>,  <32.970352, 35.939392, 52.410690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226822, 35.969070, 52.716213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566210, 0.626087, -0.536117,
		-0.517983, 0.776216, 0.359420,
		0.641171, 0.074193, 0.763803,
		33.419174, 35.991329, 52.945354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112473, 36.669689, 52.611183>,  <32.970352, 35.939392, 52.410690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112473, 36.669689, 52.611183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.428520, 36.463745, 52.744232>,  <33.618149, 36.340179, 52.824062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.428520, 36.463745, 52.744232>,  <33.112473, 36.669689, 52.611183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428520, 36.463745, 52.744232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606101, 0.575289, -0.549258,
		0.091438, 0.635579, 0.766602,
		0.790114, -0.514861, 0.332622,
		33.665554, 36.309288, 52.844017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014130, 37.247993, 53.100182>,  <33.112473, 36.669689, 52.611183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014130, 37.247993, 53.100182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.762440, 37.556831, 53.135838>,  <32.611427, 37.742134, 53.157230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.762440, 37.556831, 53.135838>,  <33.014130, 37.247993, 53.100182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762440, 37.556831, 53.135838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441913, -0.449749, 0.776169,
		0.639366, 0.448994, 0.624192,
		-0.629225, 0.772095, 0.089138,
		32.573673, 37.788460, 53.162579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947166, 37.558735, 53.909496>,  <33.014130, 37.247993, 53.100182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947166, 37.558735, 53.909496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.613258, 37.647217, 53.707809>,  <32.412914, 37.700306, 53.586796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.613258, 37.647217, 53.707809>,  <32.947166, 37.558735, 53.909496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613258, 37.647217, 53.707809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550436, -0.312545, 0.774168,
		0.013658, 0.923788, 0.382660,
		-0.834766, 0.221203, -0.504217,
		32.362827, 37.713577, 53.556545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466106, 38.012695, 54.399864>,  <32.947166, 37.558735, 53.909496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466106, 38.012695, 54.399864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.219368, 37.866592, 54.120983>,  <32.071323, 37.778931, 53.953655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.219368, 37.866592, 54.120983>,  <32.466106, 38.012695, 54.399864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219368, 37.866592, 54.120983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663287, -0.235645, 0.710297,
		-0.423732, 0.900589, -0.096912,
		-0.616849, -0.365256, -0.697198,
		32.034313, 37.757015, 53.911823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842501, 38.348221, 54.409203>,  <32.466106, 38.012695, 54.399864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842501, 38.348221, 54.409203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.732290, 38.012054, 54.222534>,  <31.666164, 37.810356, 54.110531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.732290, 38.012054, 54.222534>,  <31.842501, 38.348221, 54.409203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732290, 38.012054, 54.222534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738668, -0.125581, 0.662268,
		-0.615187, 0.527190, -0.586188,
		-0.275527, -0.840417, -0.466674,
		31.649632, 37.759930, 54.082531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142126, 38.447048, 54.389050>,  <31.842501, 38.348221, 54.409203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142126, 38.447048, 54.389050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.190470, 38.053497, 54.336319>,  <31.219477, 37.817368, 54.304680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.190470, 38.053497, 54.336319>,  <31.142126, 38.447048, 54.389050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190470, 38.053497, 54.336319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718496, -0.178338, 0.672279,
		-0.684950, 0.013466, -0.728466,
		0.120860, -0.983877, -0.131828,
		31.226728, 37.758335, 54.296772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471083, 38.160191, 54.308880>,  <31.142126, 38.447048, 54.389050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471083, 38.160191, 54.308880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.695272, 37.842567, 54.402973>,  <30.829786, 37.651993, 54.459427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.695272, 37.842567, 54.402973>,  <30.471083, 38.160191, 54.308880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695272, 37.842567, 54.402973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757518, -0.376752, 0.533127,
		-0.334709, -0.477001, -0.812675,
		0.560479, -0.794058, 0.235234,
		30.863415, 37.604347, 54.473541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956507, 37.679577, 54.310349>,  <30.471083, 38.160191, 54.308880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956507, 37.679577, 54.310349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.255682, 37.493301, 54.499550>,  <30.435186, 37.381538, 54.613071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.255682, 37.493301, 54.499550>,  <29.956507, 37.679577, 54.310349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255682, 37.493301, 54.499550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655420, -0.405453, 0.637207,
		-0.104957, -0.786605, -0.608471,
		0.747936, -0.465683, 0.473001,
		30.480062, 37.353596, 54.641449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802469, 36.987206, 54.333618>,  <29.956507, 37.679577, 54.310349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802469, 36.987206, 54.333618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.065228, 37.036201, 54.631203>,  <30.222883, 37.065598, 54.809753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.065228, 37.036201, 54.631203>,  <29.802469, 36.987206, 54.333618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065228, 37.036201, 54.631203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694195, -0.286814, 0.660175,
		0.294243, -0.950123, -0.103376,
		0.656897, 0.122489, 0.743964,
		30.262297, 37.072948, 54.854393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759890, 36.371311, 54.701694>,  <29.802469, 36.987206, 54.333618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759890, 36.371311, 54.701694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896217, 36.643066, 54.961624>,  <29.978014, 36.806122, 55.117580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896217, 36.643066, 54.961624>,  <29.759890, 36.371311, 54.701694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896217, 36.643066, 54.961624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690517, -0.288165, 0.663436,
		0.637989, -0.674825, 0.370920,
		0.340817, 0.679391, 0.649825,
		29.998463, 36.846882, 55.156570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.350506, 43.541603, 46.865364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.336304, 43.819633, 47.152584>,  <42.327782, 43.986454, 47.324917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.336304, 43.819633, 47.152584>,  <42.350506, 43.541603, 46.865364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336304, 43.819633, 47.152584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552657, -0.612302, 0.565382,
		0.832652, -0.376762, 0.405884,
		-0.035509, 0.695081, 0.718055,
		42.325649, 44.028156, 47.368000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399929, 43.134930, 47.531055>,  <42.350506, 43.541603, 46.865364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399929, 43.134930, 47.531055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.251545, 43.502571, 47.584183>,  <42.162514, 43.723156, 47.616058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.251545, 43.502571, 47.584183>,  <42.399929, 43.134930, 47.531055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251545, 43.502571, 47.584183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675171, -0.365124, 0.640959,
		0.637602, 0.148095, 0.755997,
		-0.370955, 0.919104, 0.132815,
		42.140259, 43.778301, 47.624027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148476, 43.121189, 48.241566>,  <42.399929, 43.134930, 47.531055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148476, 43.121189, 48.241566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.971649, 43.447052, 48.091412>,  <41.865555, 43.642570, 48.001320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.971649, 43.447052, 48.091412>,  <42.148476, 43.121189, 48.241566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971649, 43.447052, 48.091412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850632, -0.247957, 0.463619,
		0.284611, 0.524265, 0.802585,
		-0.442065, 0.814656, -0.375385,
		41.839031, 43.691448, 47.978798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747849, 43.344208, 48.803463>,  <42.148476, 43.121189, 48.241566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747849, 43.344208, 48.803463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.598419, 43.499466, 48.466469>,  <41.508762, 43.592621, 48.264271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.598419, 43.499466, 48.466469>,  <41.747849, 43.344208, 48.803463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598419, 43.499466, 48.466469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925974, -0.102253, 0.363479,
		0.054938, 0.915906, 0.397615,
		-0.373570, 0.388150, -0.842488,
		41.486347, 43.615910, 48.213722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256386, 43.786449, 49.026283>,  <41.747849, 43.344208, 48.803463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256386, 43.786449, 49.026283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.140465, 43.695099, 48.654507>,  <41.070911, 43.640289, 48.431442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.140465, 43.695099, 48.654507>,  <41.256386, 43.786449, 49.026283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140465, 43.695099, 48.654507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906416, -0.246299, 0.343143,
		-0.307286, 0.941903, -0.135628,
		-0.289802, -0.228378, -0.929440,
		41.053524, 43.626587, 48.375675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566925, 44.038479, 49.040546>,  <41.256386, 43.786449, 49.026283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566925, 44.038479, 49.040546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.580315, 43.790466, 48.727001>,  <40.588348, 43.641659, 48.538876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.580315, 43.790466, 48.727001>,  <40.566925, 44.038479, 49.040546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580315, 43.790466, 48.727001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989214, -0.132457, 0.062528,
		-0.142597, 0.773313, -0.617780,
		0.033475, -0.620034, -0.783861,
		40.590359, 43.604458, 48.491844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894894, 43.824039, 48.963562>,  <40.566925, 44.038479, 49.040546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894894, 43.824039, 48.963562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.068787, 43.576813, 48.701569>,  <40.173122, 43.428478, 48.544373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.068787, 43.576813, 48.701569>,  <39.894894, 43.824039, 48.963562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068787, 43.576813, 48.701569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862362, -0.495282, -0.105008,
		-0.259500, 0.610483, -0.748311,
		0.434731, -0.618066, -0.654984,
		40.199207, 43.391392, 48.505074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506454, 43.764965, 48.425186>,  <39.894894, 43.824039, 48.963562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506454, 43.764965, 48.425186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.718239, 43.425964, 48.410126>,  <39.845306, 43.222565, 48.401089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.718239, 43.425964, 48.410126>,  <39.506454, 43.764965, 48.425186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718239, 43.425964, 48.410126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848337, -0.528918, -0.023876,
		0.000323, 0.044579, -0.999006,
		0.529456, -0.847501, -0.037647,
		39.877075, 43.171715, 48.398830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234463, 43.296936, 47.843475>,  <39.506454, 43.764965, 48.425186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234463, 43.296936, 47.843475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.430626, 43.052826, 48.092331>,  <39.548325, 42.906361, 48.241646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.430626, 43.052826, 48.092331>,  <39.234463, 43.296936, 47.843475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430626, 43.052826, 48.092331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775254, -0.631593, -0.008450,
		0.398097, -0.478173, -0.782860,
		0.490409, -0.610279, 0.622141,
		39.577747, 42.869743, 48.278973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012798, 42.560394, 47.642891>,  <39.234463, 43.296936, 47.843475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012798, 42.560394, 47.642891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.141022, 42.567841, 48.021709>,  <39.217957, 42.572308, 48.249001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.141022, 42.567841, 48.021709>,  <39.012798, 42.560394, 47.642891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141022, 42.567841, 48.021709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680471, -0.690990, 0.243908,
		0.658940, -0.722624, -0.208836,
		0.320558, 0.018614, 0.947046,
		39.237190, 42.573425, 48.305824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979221, 41.865955, 47.823162>,  <39.012798, 42.560394, 47.642891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979221, 41.865955, 47.823162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995934, 42.013138, 48.194725>,  <39.005962, 42.101448, 48.417664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995934, 42.013138, 48.194725>,  <38.979221, 41.865955, 47.823162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995934, 42.013138, 48.194725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681846, -0.669065, 0.295700,
		0.730302, -0.645724, 0.222934,
		0.041783, 0.367956, 0.928904,
		39.008469, 42.123524, 48.473396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107658, 41.338146, 48.319481>,  <38.979221, 41.865955, 47.823162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107658, 41.338146, 48.319481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.909588, 41.621681, 48.520420>,  <38.790745, 41.791801, 48.640984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.909588, 41.621681, 48.520420>,  <39.107658, 41.338146, 48.319481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909588, 41.621681, 48.520420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649715, -0.685998, 0.327532,
		0.576778, -0.164199, 0.800229,
		-0.495175, 0.708834, 0.502351,
		38.761036, 41.834332, 48.671127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725853, 41.084320, 48.662357>,  <39.107658, 41.338146, 48.319481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725853, 41.084320, 48.662357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.928825, 40.739761, 48.653324>,  <40.050610, 40.533028, 48.647903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.928825, 40.739761, 48.653324>,  <39.725853, 41.084320, 48.662357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928825, 40.739761, 48.653324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725209, 0.441070, -0.528705,
		0.465385, 0.251904, 0.848505,
		0.507433, -0.861395, -0.022584,
		40.081055, 40.481342, 48.646549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518852, 41.228798, 48.759510>,  <39.725853, 41.084320, 48.662357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518852, 41.228798, 48.759510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.562775, 40.852829, 48.630211>,  <40.589130, 40.627247, 48.552631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.562775, 40.852829, 48.630211>,  <40.518852, 41.228798, 48.759510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562775, 40.852829, 48.630211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784275, 0.281723, -0.552761,
		0.610619, -0.192816, 0.768093,
		0.109808, -0.939922, -0.323246,
		40.595718, 40.570854, 48.533237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131653, 41.141636, 48.852318>,  <40.518852, 41.228798, 48.759510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131653, 41.141636, 48.852318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.047585, 40.856621, 48.584549>,  <40.997143, 40.685612, 48.423889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.047585, 40.856621, 48.584549>,  <41.131653, 41.141636, 48.852318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047585, 40.856621, 48.584549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809940, 0.256594, -0.527406,
		0.547565, -0.653032, 0.523184,
		-0.210167, -0.712537, -0.669419,
		40.984535, 40.642860, 48.383724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642441, 40.657654, 48.835037>,  <41.131653, 41.141636, 48.852318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642441, 40.657654, 48.835037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.470230, 40.589684, 48.480461>,  <41.366905, 40.548901, 48.267715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.470230, 40.589684, 48.480461>,  <41.642441, 40.657654, 48.835037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470230, 40.589684, 48.480461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878669, 0.145646, -0.454674,
		0.206369, -0.974634, 0.086608,
		-0.430526, -0.169930, -0.886437,
		41.341072, 40.538704, 48.214531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117702, 40.202930, 48.487980>,  <41.642441, 40.657654, 48.835037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117702, 40.202930, 48.487980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.894722, 40.403717, 48.223473>,  <41.760933, 40.524189, 48.064770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.894722, 40.403717, 48.223473>,  <42.117702, 40.202930, 48.487980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894722, 40.403717, 48.223473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825662, 0.251964, -0.504774,
		-0.086766, -0.827370, -0.554915,
		-0.557453, 0.501970, -0.661266,
		41.727486, 40.554306, 48.025093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481411, 40.131855, 47.951984>,  <42.117702, 40.202930, 48.487980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481411, 40.131855, 47.951984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.248360, 40.440132, 47.848774>,  <42.108528, 40.625099, 47.786850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.248360, 40.440132, 47.848774>,  <42.481411, 40.131855, 47.951984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248360, 40.440132, 47.848774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769486, 0.420905, -0.480343,
		-0.261592, -0.478409, -0.838269,
		-0.582632, 0.770690, -0.258023,
		42.073570, 40.671341, 47.771366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490555, 40.200077, 47.172100>,  <42.481411, 40.131855, 47.951984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490555, 40.200077, 47.172100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.369537, 40.555946, 47.308895>,  <42.296928, 40.769466, 47.390972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.369537, 40.555946, 47.308895>,  <42.490555, 40.200077, 47.172100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369537, 40.555946, 47.308895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473210, 0.451663, -0.756355,
		-0.827369, -0.066998, -0.557648,
		-0.302543, 0.889669, 0.341988,
		42.278774, 40.822845, 47.411491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303680, 40.609486, 46.607033>,  <42.490555, 40.200077, 47.172100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303680, 40.609486, 46.607033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.376083, 40.868355, 46.903252>,  <42.419525, 41.023674, 47.080982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.376083, 40.868355, 46.903252>,  <42.303680, 40.609486, 46.607033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376083, 40.868355, 46.903252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647526, 0.488324, -0.585022,
		-0.740235, 0.585415, -0.330670,
		0.181006, 0.647170, 0.740545,
		42.430386, 41.062508, 47.125416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301498, 41.215000, 46.259399>,  <42.303680, 40.609486, 46.607033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301498, 41.215000, 46.259399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.480251, 41.286926, 46.609932>,  <42.587502, 41.330082, 46.820251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.480251, 41.286926, 46.609932>,  <42.301498, 41.215000, 46.259399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480251, 41.286926, 46.609932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645258, 0.613709, -0.454976,
		-0.619628, 0.768782, 0.158225,
		0.446882, 0.179820, 0.876334,
		42.614315, 41.340874, 46.872833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434444, 41.884514, 46.289143>,  <42.301498, 41.215000, 46.259399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434444, 41.884514, 46.289143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.693661, 41.727562, 46.550243>,  <42.849190, 41.633392, 46.706905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.693661, 41.727562, 46.550243>,  <42.434444, 41.884514, 46.289143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693661, 41.727562, 46.550243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736425, 0.541400, -0.405665,
		-0.194224, 0.743589, 0.639806,
		0.648039, -0.392380, 0.652751,
		42.888073, 41.609848, 46.746067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923531, 42.388958, 46.405842>,  <42.434444, 41.884514, 46.289143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923531, 42.388958, 46.405842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.113800, 42.073959, 46.562599>,  <43.227962, 41.884960, 46.656654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.113800, 42.073959, 46.562599>,  <42.923531, 42.388958, 46.405842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113800, 42.073959, 46.562599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859450, 0.321232, -0.397688,
		0.187290, 0.525984, 0.829617,
		0.475677, -0.787497, 0.391893,
		43.256504, 41.837711, 46.680168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386082, 42.670494, 46.844505>,  <42.923531, 42.388958, 46.405842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386082, 42.670494, 46.844505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.510033, 42.310951, 46.720547>,  <43.584404, 42.095226, 46.646172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.510033, 42.310951, 46.720547>,  <43.386082, 42.670494, 46.844505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510033, 42.310951, 46.720547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870828, 0.399145, -0.286954,
		0.381624, -0.180948, 0.906433,
		0.309874, -0.898855, -0.309898,
		43.602997, 42.041294, 46.627579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081043, 42.638470, 47.117825>,  <43.386082, 42.670494, 46.844505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081043, 42.638470, 47.117825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.059982, 42.367020, 46.824783>,  <44.047344, 42.204151, 46.648960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.059982, 42.367020, 46.824783>,  <44.081043, 42.638470, 47.117825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059982, 42.367020, 46.824783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934832, 0.224482, -0.275130,
		0.351164, -0.699343, 0.622578,
		-0.052653, -0.678622, -0.732598,
		44.044186, 42.163433, 46.605003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733189, 42.346405, 47.247894>,  <44.081043, 42.638470, 47.117825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733189, 42.346405, 47.247894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.627335, 42.179512, 46.900127>,  <44.563824, 42.079376, 46.691467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.627335, 42.179512, 46.900127>,  <44.733189, 42.346405, 47.247894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627335, 42.179512, 46.900127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946800, 0.058798, -0.316407,
		0.183135, -0.906896, 0.379475,
		-0.264636, -0.417232, -0.869417,
		44.547943, 42.054344, 46.639301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007889, 41.625664, 47.215382>,  <44.733189, 42.346405, 47.247894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007889, 41.625664, 47.215382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.953346, 41.827621, 46.874447>,  <44.920620, 41.948795, 46.669884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.953346, 41.827621, 46.874447>,  <45.007889, 41.625664, 47.215382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953346, 41.827621, 46.874447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990440, 0.051391, -0.128012,
		-0.020830, -0.861648, -0.507079,
		-0.136360, 0.504898, -0.852340,
		44.912437, 41.979092, 46.618744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496445, 41.429451, 47.795372>,  <45.007889, 41.625664, 47.215382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496445, 41.429451, 47.795372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.701332, 41.436638, 48.138840>,  <45.824265, 41.440952, 48.344921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.701332, 41.436638, 48.138840>,  <45.496445, 41.429451, 47.795372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701332, 41.436638, 48.138840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749919, -0.477971, 0.457345,
		0.418638, -0.878192, -0.231348,
		0.512214, 0.017970, 0.858670,
		45.854996, 41.442028, 48.396442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483421, 40.748177, 48.016804>,  <45.496445, 41.429451, 47.795372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483421, 40.748177, 48.016804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.522919, 40.984032, 48.337448>,  <45.546616, 41.125546, 48.529835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.522919, 40.984032, 48.337448>,  <45.483421, 40.748177, 48.016804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522919, 40.984032, 48.337448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826204, -0.400414, 0.396302,
		0.554650, -0.701424, 0.447624,
		0.098740, 0.589638, 0.801610,
		45.552540, 41.160923, 48.577930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283508, 40.318516, 48.534195>,  <45.483421, 40.748177, 48.016804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283508, 40.318516, 48.534195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.239182, 40.686859, 48.683720>,  <45.212585, 40.907867, 48.773434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.239182, 40.686859, 48.683720>,  <45.283508, 40.318516, 48.534195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239182, 40.686859, 48.683720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846222, -0.284671, 0.450412,
		0.521180, -0.266411, 0.810800,
		-0.110817, 0.920862, 0.373808,
		45.205936, 40.963120, 48.795860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114826, 40.221127, 49.229656>,  <45.283508, 40.318516, 48.534195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114826, 40.221127, 49.229656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.004890, 40.599541, 49.160965>,  <44.938931, 40.826588, 49.119751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.004890, 40.599541, 49.160965>,  <45.114826, 40.221127, 49.229656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004890, 40.599541, 49.160965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807169, -0.129965, 0.575836,
		0.522440, 0.296875, 0.799326,
		-0.274835, 0.946031, -0.171730,
		44.922440, 40.883350, 49.109447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953953, 40.445236, 49.971878>,  <45.114826, 40.221127, 49.229656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953953, 40.445236, 49.971878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.773430, 40.679588, 49.702637>,  <44.665115, 40.820198, 49.541092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.773430, 40.679588, 49.702637>,  <44.953953, 40.445236, 49.971878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773430, 40.679588, 49.702637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876256, -0.148249, 0.458473,
		0.168821, 0.796725, 0.580284,
		-0.451304, 0.585877, -0.673107,
		44.638039, 40.855350, 49.500706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512180, 40.920429, 50.360241>,  <44.953953, 40.445236, 49.971878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512180, 40.920429, 50.360241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.347263, 40.897972, 49.996513>,  <44.248314, 40.884499, 49.778278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.347263, 40.897972, 49.996513>,  <44.512180, 40.920429, 50.360241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347263, 40.897972, 49.996513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872788, -0.261879, 0.411899,
		-0.261258, 0.963467, 0.058969,
		-0.412293, -0.056145, -0.909320,
		44.223576, 40.881130, 49.723717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900581, 41.077637, 50.498356>,  <44.512180, 40.920429, 50.360241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900581, 41.077637, 50.498356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.849113, 40.927361, 50.131248>,  <43.818233, 40.837196, 49.910984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.849113, 40.927361, 50.131248>,  <43.900581, 41.077637, 50.498356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849113, 40.927361, 50.131248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850155, -0.434687, 0.297125,
		-0.510569, 0.818478, -0.263463,
		-0.128666, -0.375688, -0.917771,
		43.810513, 40.814655, 49.855919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204498, 41.292271, 50.314968>,  <43.900581, 41.077637, 50.498356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204498, 41.292271, 50.314968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.298584, 40.966728, 50.102436>,  <43.355034, 40.771404, 49.974915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.298584, 40.966728, 50.102436>,  <43.204498, 41.292271, 50.314968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298584, 40.966728, 50.102436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881953, -0.408453, 0.235212,
		-0.408453, 0.413285, -0.813856,
		-0.235212, 0.813856, 0.531332,
		43.369148, 40.722572, 49.943035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576488, 41.079891, 50.149582>,  <43.204498, 41.292271, 50.314968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576488, 41.079891, 50.149582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.792156, 40.770752, 50.015720>,  <42.921558, 40.585266, 49.935402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.792156, 40.770752, 50.015720>,  <42.576488, 41.079891, 50.149582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792156, 40.770752, 50.015720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761351, -0.617162, 0.198634,
		-0.360052, 0.147694, -0.921167,
		0.539172, -0.772851, -0.334657,
		42.953907, 40.538898, 49.915321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202023, 40.651798, 49.836182>,  <42.576488, 41.079891, 50.149582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202023, 40.651798, 49.836182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.492645, 40.389381, 49.917892>,  <42.667019, 40.231934, 49.966919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.492645, 40.389381, 49.917892>,  <42.202023, 40.651798, 49.836182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492645, 40.389381, 49.917892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651043, -0.562241, 0.509930,
		-0.219682, -0.503484, -0.835610,
		0.726556, -0.656040, 0.204275,
		42.710613, 40.192570, 49.979176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979099, 39.970257, 49.646080>,  <42.202023, 40.651798, 49.836182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979099, 39.970257, 49.646080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.277496, 39.899689, 49.902943>,  <42.456535, 39.857346, 50.057060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.277496, 39.899689, 49.902943>,  <41.979099, 39.970257, 49.646080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277496, 39.899689, 49.902943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559465, -0.689081, 0.460615,
		0.361237, -0.702882, -0.612751,
		0.745993, -0.176422, 0.642160,
		42.501293, 39.846764, 50.095589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937180, 39.243359, 49.756325>,  <41.979099, 39.970257, 49.646080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937180, 39.243359, 49.756325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.153587, 39.360229, 50.071774>,  <42.283432, 39.430351, 50.261044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.153587, 39.360229, 50.071774>,  <41.937180, 39.243359, 49.756325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153587, 39.360229, 50.071774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545692, -0.591558, 0.593532,
		0.639935, -0.751458, -0.160604,
		0.541021, 0.292182, 0.788623,
		42.315895, 39.447884, 50.308361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209766, 38.621323, 50.056473>,  <41.937180, 39.243359, 49.756325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209766, 38.621323, 50.056473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.210728, 38.904404, 50.339077>,  <42.211304, 39.074253, 50.508640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.210728, 38.904404, 50.339077>,  <42.209766, 38.621323, 50.056473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210728, 38.904404, 50.339077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562270, -0.583292, 0.586194,
		0.826950, -0.398658, 0.396515,
		0.002407, 0.707702, 0.706507,
		42.211449, 39.116714, 50.551029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325188, 38.311127, 50.659054>,  <42.209766, 38.621323, 50.056473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325188, 38.311127, 50.659054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.143440, 38.643913, 50.786407>,  <42.034389, 38.843586, 50.862820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.143440, 38.643913, 50.786407>,  <42.325188, 38.311127, 50.659054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143440, 38.643913, 50.786407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523206, -0.538512, 0.660500,
		0.720972, 0.133531, 0.679977,
		-0.454373, 0.831970, 0.318388,
		42.007130, 38.893505, 50.881924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317501, 38.185726, 51.387295>,  <42.325188, 38.311127, 50.659054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317501, 38.185726, 51.387295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.048103, 38.480118, 51.359749>,  <41.886467, 38.656754, 51.343220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.048103, 38.480118, 51.359749>,  <42.317501, 38.185726, 51.387295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048103, 38.480118, 51.359749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578378, -0.466661, 0.669109,
		0.460315, 0.490468, 0.739967,
		-0.673490, 0.735981, -0.068865,
		41.846058, 38.700912, 51.339088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067909, 38.262775, 52.007587>,  <42.317501, 38.185726, 51.387295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067909, 38.262775, 52.007587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.800987, 38.427010, 51.759033>,  <41.640835, 38.525551, 51.609901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.800987, 38.427010, 51.759033>,  <42.067909, 38.262775, 52.007587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800987, 38.427010, 51.759033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744095, -0.331684, 0.579921,
		0.032005, 0.849355, 0.526851,
		-0.667307, 0.410587, -0.621385,
		41.600796, 38.550186, 51.572617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613270, 38.611526, 52.442101>,  <42.067909, 38.262775, 52.007587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613270, 38.611526, 52.442101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.420609, 38.542145, 52.098492>,  <41.305012, 38.500515, 51.892326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.420609, 38.542145, 52.098492>,  <41.613270, 38.611526, 52.442101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420609, 38.542145, 52.098492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757537, -0.410436, 0.507621,
		-0.440625, 0.895240, 0.066288,
		-0.481650, -0.173455, -0.859027,
		41.276115, 38.490108, 51.840782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933945, 38.837605, 52.565113>,  <41.613270, 38.611526, 52.442101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933945, 38.837605, 52.565113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.883827, 38.603752, 52.244488>,  <40.853756, 38.463440, 52.052113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.883827, 38.603752, 52.244488>,  <40.933945, 38.837605, 52.565113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883827, 38.603752, 52.244488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870677, -0.322532, 0.371341,
		-0.475628, 0.744434, -0.468610,
		-0.125298, -0.584629, -0.801567,
		40.846237, 38.428364, 52.004017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317181, 39.082752, 52.281395>,  <40.933945, 38.837605, 52.565113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317181, 39.082752, 52.281395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.388634, 38.715637, 52.139549>,  <40.431507, 38.495369, 52.054443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.388634, 38.715637, 52.139549>,  <40.317181, 39.082752, 52.281395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388634, 38.715637, 52.139549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823725, -0.336612, 0.456257,
		-0.538116, 0.210601, -0.816136,
		0.178633, -0.917790, -0.354614,
		40.442223, 38.440300, 52.033165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720482, 38.879574, 52.041908>,  <40.317181, 39.082752, 52.281395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720482, 38.879574, 52.041908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914146, 38.532478, 52.086834>,  <40.030346, 38.324219, 52.113789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914146, 38.532478, 52.086834>,  <39.720482, 38.879574, 52.041908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914146, 38.532478, 52.086834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828993, -0.413853, 0.376159,
		-0.279926, -0.275231, -0.919722,
		0.484161, -0.867740, 0.112317,
		40.059395, 38.272156, 52.120529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278915, 38.358562, 51.672028>,  <39.720482, 38.879574, 52.041908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278915, 38.358562, 51.672028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.515991, 38.183678, 51.942604>,  <39.658237, 38.078747, 52.104950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.515991, 38.183678, 51.942604>,  <39.278915, 38.358562, 51.672028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515991, 38.183678, 51.942604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803918, -0.372633, 0.463530,
		0.049401, -0.818528, -0.572339,
		0.592685, -0.437215, 0.676438,
		39.693798, 38.052513, 52.145535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998192, 37.567242, 51.736073>,  <39.278915, 38.358562, 51.672028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998192, 37.567242, 51.736073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223557, 37.648094, 52.056499>,  <39.358776, 37.696606, 52.248756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223557, 37.648094, 52.056499>,  <38.998192, 37.567242, 51.736073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223557, 37.648094, 52.056499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719193, -0.357196, 0.595963,
		0.406602, -0.911895, -0.055876,
		0.563414, 0.202134, 0.801065,
		39.392582, 37.708733, 52.296818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819302, 37.008205, 52.157516>,  <38.998192, 37.567242, 51.736073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819302, 37.008205, 52.157516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.981239, 37.241974, 52.438812>,  <39.078403, 37.382236, 52.607590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.981239, 37.241974, 52.438812>,  <38.819302, 37.008205, 52.157516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981239, 37.241974, 52.438812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692931, -0.305723, 0.652978,
		0.596614, -0.751652, 0.281196,
		0.404845, 0.584425, 0.703241,
		39.102692, 37.417301, 52.649784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901451, 36.688614, 52.847958>,  <38.819302, 37.008205, 52.157516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901451, 36.688614, 52.847958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.910095, 37.077560, 52.940933>,  <38.915283, 37.310928, 52.996719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.910095, 37.077560, 52.940933>,  <38.901451, 36.688614, 52.847958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910095, 37.077560, 52.940933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627113, -0.167885, 0.760620,
		0.778628, -0.162203, 0.606159,
		0.021610, 0.972371, 0.232440,
		38.916576, 37.369270, 53.010666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112030, 36.805176, 53.508568>,  <38.901451, 36.688614, 52.847958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112030, 36.805176, 53.508568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.901520, 37.135704, 53.428341>,  <38.775211, 37.334023, 53.380203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.901520, 37.135704, 53.428341>,  <39.112030, 36.805176, 53.508568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901520, 37.135704, 53.428341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646513, -0.235638, 0.725601,
		0.552316, 0.511538, 0.658237,
		-0.526278, 0.826319, -0.200569,
		38.743637, 37.383598, 53.368172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961563, 37.094505, 54.155872>,  <39.112030, 36.805176, 53.508568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961563, 37.094505, 54.155872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692856, 37.264305, 53.913048>,  <38.531631, 37.366184, 53.767353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692856, 37.264305, 53.913048>,  <38.961563, 37.094505, 54.155872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692856, 37.264305, 53.913048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711770, -0.142868, 0.687730,
		0.205212, 0.894085, 0.398120,
		-0.671768, 0.424500, -0.607065,
		38.491325, 37.391655, 53.730927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565445, 37.535877, 54.652477>,  <38.961563, 37.094505, 54.155872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565445, 37.535877, 54.652477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.359154, 37.473434, 54.315514>,  <38.235378, 37.435970, 54.113335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.359154, 37.473434, 54.315514>,  <38.565445, 37.535877, 54.652477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359154, 37.473434, 54.315514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814835, -0.214410, 0.538584,
		-0.264696, 0.964189, -0.016621,
		-0.515733, -0.156104, -0.842408,
		38.204433, 37.426601, 54.062790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464226, 38.275261, 54.771175>,  <38.565445, 37.535877, 54.652477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464226, 38.275261, 54.771175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.514462, 38.458183, 55.123333>,  <38.544601, 38.567936, 55.334629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.514462, 38.458183, 55.123333>,  <38.464226, 38.275261, 54.771175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514462, 38.458183, 55.123333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624950, 0.652747, -0.428204,
		-0.770496, 0.603983, -0.203812,
		0.125591, 0.457302, 0.880399,
		38.552139, 38.595375, 55.387451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485561, 39.029118, 54.664803>,  <38.464226, 38.275261, 54.771175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485561, 39.029118, 54.664803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.670418, 38.975662, 55.015476>,  <38.781330, 38.943588, 55.225880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.670418, 38.975662, 55.015476>,  <38.485561, 39.029118, 54.664803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670418, 38.975662, 55.015476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777490, 0.536550, -0.328060,
		-0.426542, 0.833220, 0.351862,
		0.462138, -0.133637, 0.876681,
		38.809059, 38.935570, 55.278481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724667, 39.629482, 54.703930>,  <38.485561, 39.029118, 54.664803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724667, 39.629482, 54.703930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.941154, 39.418190, 54.965633>,  <39.071049, 39.291412, 55.122654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.941154, 39.418190, 54.965633>,  <38.724667, 39.629482, 54.703930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941154, 39.418190, 54.965633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819698, 0.504965, -0.270382,
		-0.187551, 0.682628, 0.706288,
		0.541221, -0.528232, 0.654256,
		39.103519, 39.259720, 55.161911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182076, 40.091339, 55.129593>,  <38.724667, 39.629482, 54.703930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182076, 40.091339, 55.129593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.380333, 39.745560, 55.163223>,  <39.499287, 39.538094, 55.183399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.380333, 39.745560, 55.163223>,  <39.182076, 40.091339, 55.129593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380333, 39.745560, 55.163223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865579, 0.483681, -0.129713,
		0.071466, 0.137063, 0.987981,
		0.495647, -0.864446, 0.084072,
		39.529026, 39.486225, 55.188446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734161, 40.207294, 55.633076>,  <39.182076, 40.091339, 55.129593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734161, 40.207294, 55.633076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.847225, 39.883652, 55.426987>,  <39.915066, 39.689468, 55.303333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.847225, 39.883652, 55.426987>,  <39.734161, 40.207294, 55.633076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847225, 39.883652, 55.426987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777956, 0.507591, -0.370318,
		0.561147, -0.296142, 0.772926,
		0.282664, -0.809105, -0.515219,
		39.932026, 39.640919, 55.272423>
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
