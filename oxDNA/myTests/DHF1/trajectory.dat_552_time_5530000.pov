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
	<3.377649, 0.812138, 1.349730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.391796, 0.505859, 1.092838>,  <3.400284, 0.322092, 0.938703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.391796, 0.505859, 1.092838>,  <3.377649, 0.812138, 1.349730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.391796, 0.505859, 1.092838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932642, 0.256179, -0.254069,
		0.359066, -0.589984, 0.723181,
		0.035367, -0.765697, -0.642229,
		3.402406, 0.276150, 0.900170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.117855, 0.611183, 1.262928>,  <3.377649, 0.812138, 1.349730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.117855, 0.611183, 1.262928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.949364, 0.427284, 0.950211>,  <3.848269, 0.316945, 0.762580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.949364, 0.427284, 0.950211>,  <4.117855, 0.611183, 1.262928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.949364, 0.427284, 0.950211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867728, 0.046479, -0.494862,
		0.263848, -0.886833, 0.379356,
		-0.421228, -0.459746, -0.781793,
		3.822995, 0.289361, 0.715673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.467845, 0.038913, 1.024691>,  <4.117855, 0.611183, 1.262928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.467845, 0.038913, 1.024691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.340603, 0.185623, 0.674997>,  <4.264257, 0.273649, 0.465181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.340603, 0.185623, 0.674997>,  <4.467845, 0.038913, 1.024691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.340603, 0.185623, 0.674997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923174, -0.090036, -0.373688,
		-0.215772, -0.925942, -0.309957,
		-0.318106, 0.366775, -0.874233,
		4.245171, 0.295656, 0.412727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.558880, -0.411362, 0.475631>,  <4.467845, 0.038913, 1.024691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.558880, -0.411362, 0.475631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.585484, -0.042286, 0.323727>,  <4.601446, 0.179160, 0.232584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.585484, -0.042286, 0.323727>,  <4.558880, -0.411362, 0.475631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.585484, -0.042286, 0.323727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928480, -0.196603, -0.315073,
		-0.365378, -0.331646, -0.869776,
		0.066508, 0.922691, -0.379761,
		4.605436, 0.234521, 0.209798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.732279, -0.453435, -0.303477>,  <4.558880, -0.411362, 0.475631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.732279, -0.453435, -0.303477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.838818, -0.082642, -0.197826>,  <4.902740, 0.139834, -0.134436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.838818, -0.082642, -0.197826>,  <4.732279, -0.453435, -0.303477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.838818, -0.082642, -0.197826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853662, -0.099618, -0.511212,
		-0.447572, 0.361635, -0.817863,
		0.266346, 0.926982, 0.264128,
		4.918722, 0.195453, -0.118588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.927530, -0.037596, -0.825624>,  <4.732279, -0.453435, -0.303477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.927530, -0.037596, -0.825624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.118813, 0.132687, -0.518354>,  <5.233582, 0.234856, -0.333993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.118813, 0.132687, -0.518354>,  <4.927530, -0.037596, -0.825624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.118813, 0.132687, -0.518354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828914, 0.070245, -0.554948,
		-0.290206, 0.902130, -0.319283,
		0.478207, 0.425708, 0.768174,
		5.262275, 0.260399, -0.287902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.263650, 0.612271, -1.051505>,  <4.927530, -0.037596, -0.825624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.263650, 0.612271, -1.051505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.465885, 0.526882, -0.717125>,  <5.587226, 0.475649, -0.516497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.465885, 0.526882, -0.717125>,  <5.263650, 0.612271, -1.051505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.465885, 0.526882, -0.717125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840352, 0.341304, -0.421094,
		-0.195421, 0.915391, 0.351950,
		0.505588, -0.213471, 0.835949,
		5.617561, 0.462841, -0.466340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.588440, 1.275660, -0.982495>,  <5.263650, 0.612271, -1.051505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.588440, 1.275660, -0.982495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.767929, 0.993961, -0.762428>,  <5.875623, 0.824942, -0.630388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.767929, 0.993961, -0.762428>,  <5.588440, 1.275660, -0.982495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.767929, 0.993961, -0.762428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891962, 0.314883, -0.324425,
		0.055237, 0.636306, 0.769457,
		0.448723, -0.704247, 0.550167,
		5.902546, 0.782687, -0.597378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.718671, 0.494058, 3.240719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.995201, 0.492455, 3.529732>,  <2.161119, 0.491492, 3.703139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.995201, 0.492455, 3.529732>,  <1.718671, 0.494058, 3.240719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.995201, 0.492455, 3.529732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720097, 0.078391, 0.689432,
		-0.059407, -0.996915, 0.051304,
		0.691326, -0.004013, 0.722532,
		2.202599, 0.491252, 3.746491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.399683, 0.094161, 3.729396>,  <1.718671, 0.494058, 3.240719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.399683, 0.094161, 3.729396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.673462, 0.285469, 3.949501>,  <1.837729, 0.400254, 4.081564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.673462, 0.285469, 3.949501>,  <1.399683, 0.094161, 3.729396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.673462, 0.285469, 3.949501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653533, 0.067949, 0.753842,
		0.323150, -0.875581, 0.359072,
		0.684448, 0.478270, 0.550263,
		1.878796, 0.428950, 4.114580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.303794, -0.300414, 4.389787>,  <1.399683, 0.094161, 3.729396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.303794, -0.300414, 4.389787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.435097, 0.075954, 4.423050>,  <1.513878, 0.301776, 4.443007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.435097, 0.075954, 4.423050>,  <1.303794, -0.300414, 4.389787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.435097, 0.075954, 4.423050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706119, 0.185959, 0.683239,
		0.627410, -0.282996, 0.725445,
		0.328256, 0.940921, 0.083156,
		1.533574, 0.358231, 4.447997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.463667, -0.101784, 5.135745>,  <1.303794, -0.300414, 4.389787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.463667, -0.101784, 5.135745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.300903, 0.180668, 4.903950>,  <1.203245, 0.350139, 4.764873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.300903, 0.180668, 4.903950>,  <1.463667, -0.101784, 5.135745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.300903, 0.180668, 4.903950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744277, 0.111506, 0.658497,
		0.529601, 0.699247, 0.480184,
		-0.406908, 0.706131, -0.579487,
		1.178831, 0.392507, 4.730103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.237697, 0.460147, 5.640732>,  <1.463667, -0.101784, 5.135745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.237697, 0.460147, 5.640732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.023521, 0.464367, 5.302929>,  <0.895016, 0.466899, 5.100247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.023521, 0.464367, 5.302929>,  <1.237697, 0.460147, 5.640732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.023521, 0.464367, 5.302929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830131, 0.177559, 0.528540,
		0.155526, 0.984054, -0.086315,
		-0.535438, 0.010549, -0.844509,
		0.862890, 0.467532, 5.049576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.680115, 0.795022, 5.846903>,  <1.237697, 0.460147, 5.640732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.680115, 0.795022, 5.846903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.560272, 0.679207, 5.483276>,  <0.488367, 0.609718, 5.265100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.560272, 0.679207, 5.483276>,  <0.680115, 0.795022, 5.846903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.560272, 0.679207, 5.483276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953949, 0.105615, 0.280760,
		0.014720, 0.951322, -0.307847,
		-0.299607, -0.289537, -0.909067,
		0.470390, 0.592346, 5.210556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.256211, 1.358267, 5.417977>,  <0.680115, 0.795022, 5.846903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.256211, 1.358267, 5.417977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.162392, 0.990154, 5.292713>,  <0.106100, 0.769287, 5.217555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.162392, 0.990154, 5.292713>,  <0.256211, 1.358267, 5.417977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.162392, 0.990154, 5.292713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968134, 0.192052, 0.160725,
		-0.087769, 0.340879, -0.936001,
		-0.234548, -0.920281, -0.313160,
		0.092027, 0.714070, 5.198765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.291560, 1.457699, 4.937826>,  <0.256211, 1.358267, 5.417977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.291560, 1.457699, 4.937826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.293274, 1.071484, 5.041916>,  <-0.294302, 0.839754, 5.104370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.293274, 1.071484, 5.041916>,  <-0.291560, 1.457699, 4.937826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.293274, 1.071484, 5.041916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983634, 0.050944, 0.172825,
		-0.180126, -0.255225, -0.949955,
		-0.004285, -0.965539, 0.260225,
		-0.294560, 0.781822, 5.119983>
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
