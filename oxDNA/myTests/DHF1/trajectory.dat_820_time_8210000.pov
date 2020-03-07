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
	<1.661031, 4.255689, 3.449560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.588829, 4.316048, 3.838332>,  <1.545508, 4.352263, 4.071596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.588829, 4.316048, 3.838332>,  <1.661031, 4.255689, 3.449560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.588829, 4.316048, 3.838332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328026, -0.922352, 0.204119,
		0.927263, 0.355663, 0.116990,
		-0.180504, 0.150897, 0.971930,
		1.534678, 4.361317, 4.129911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.266214, 4.199262, 3.921073>,  <1.661031, 4.255689, 3.449560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.266214, 4.199262, 3.921073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.928673, 4.112335, 4.117311>,  <1.726148, 4.060179, 4.235054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.928673, 4.112335, 4.117311>,  <2.266214, 4.199262, 3.921073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.928673, 4.112335, 4.117311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336036, -0.926846, 0.167442,
		0.418318, 0.306154, 0.855149,
		-0.843854, -0.217317, 0.490595,
		1.675517, 4.047140, 4.264490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.334217, 4.097051, 4.635646>,  <2.266214, 4.199262, 3.921073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.334217, 4.097051, 4.635646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.037231, 3.879341, 4.479434>,  <1.859040, 3.748715, 4.385707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.037231, 3.879341, 4.479434>,  <2.334217, 4.097051, 4.635646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.037231, 3.879341, 4.479434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518780, -0.835996, 0.178823,
		-0.423811, -0.069829, 0.903055,
		-0.742463, -0.544274, -0.390530,
		1.814492, 3.716059, 4.362275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.162480, 3.574681, 5.131192>,  <2.334217, 4.097051, 4.635646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.162480, 3.574681, 5.131192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.031136, 3.407799, 4.792224>,  <1.952329, 3.307670, 4.588843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.031136, 3.407799, 4.792224>,  <2.162480, 3.574681, 5.131192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.031136, 3.407799, 4.792224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396093, -0.875290, 0.277447,
		-0.857490, -0.244554, 0.452663,
		-0.328361, -0.417205, -0.847419,
		1.932627, 3.282637, 4.537998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.931520, 2.887000, 5.212308>,  <2.162480, 3.574681, 5.131192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.931520, 2.887000, 5.212308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.723473, 2.942169, 4.875154>,  <1.598644, 2.975271, 4.672862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.723473, 2.942169, 4.875154>,  <1.931520, 2.887000, 5.212308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.723473, 2.942169, 4.875154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162371, -0.952910, -0.256120,
		-0.838518, -0.270073, 0.473231,
		-0.520118, 0.137922, -0.842885,
		1.567437, 2.983546, 4.622289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.440848, 2.421865, 5.252025>,  <1.931520, 2.887000, 5.212308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.440848, 2.421865, 5.252025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.548576, 2.525047, 4.880880>,  <1.613213, 2.586957, 4.658194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.548576, 2.525047, 4.880880>,  <1.440848, 2.421865, 5.252025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.548576, 2.525047, 4.880880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312726, -0.934673, -0.169080,
		-0.910862, -0.244630, -0.332396,
		0.269320, 0.257957, -0.927860,
		1.629372, 2.602434, 4.602522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.180688, 1.917189, 4.802709>,  <1.440848, 2.421865, 5.252025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.180688, 1.917189, 4.802709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.493877, 2.077583, 4.612483>,  <1.681791, 2.173820, 4.498347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.493877, 2.077583, 4.612483>,  <1.180688, 1.917189, 4.802709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.493877, 2.077583, 4.612483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383718, -0.913063, -0.138120,
		-0.489605, -0.074338, -0.868770,
		0.782973, 0.400987, -0.475565,
		1.728769, 2.197879, 4.469813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.328219, 1.560960, 4.162535>,  <1.180688, 1.917189, 4.802709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.328219, 1.560960, 4.162535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.669170, 1.718491, 4.300144>,  <1.873741, 1.813009, 4.382710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.669170, 1.718491, 4.300144>,  <1.328219, 1.560960, 4.162535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.669170, 1.718491, 4.300144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398478, -0.915188, 0.060377,
		0.338624, 0.085621, -0.937018,
		0.852379, 0.393826, 0.344022,
		1.924884, 1.836638, 4.403351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.302331, 1.133848, 5.280022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.657867, 1.170181, 5.100372>,  <2.871189, 1.191981, 4.992582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.657867, 1.170181, 5.100372>,  <2.302331, 1.133848, 5.280022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.657867, 1.170181, 5.100372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406395, 0.609056, -0.681097,
		0.211676, 0.787909, 0.578268,
		0.888840, 0.090834, -0.449125,
		2.924519, 1.197431, 4.965635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.286149, 1.840892, 5.209767>,  <2.302331, 1.133848, 5.280022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.286149, 1.840892, 5.209767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.549919, 1.675926, 4.958349>,  <2.708181, 1.576947, 4.807498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.549919, 1.675926, 4.958349>,  <2.286149, 1.840892, 5.209767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.549919, 1.675926, 4.958349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284146, 0.637334, -0.716286,
		0.696002, 0.650937, 0.303089,
		0.659426, -0.412415, -0.628547,
		2.747747, 1.552202, 4.769785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.881423, 2.273812, 5.093713>,  <2.286149, 1.840892, 5.209767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.881423, 2.273812, 5.093713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.741913, 2.052788, 4.790917>,  <2.658207, 1.920173, 4.609240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.741913, 2.052788, 4.790917>,  <2.881423, 2.273812, 5.093713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.741913, 2.052788, 4.790917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538288, 0.779301, -0.320836,
		0.767205, 0.295579, -0.569236,
		-0.348774, -0.552560, -0.756990,
		2.637280, 1.887020, 4.563821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.947022, 2.583590, 4.487435>,  <2.881423, 2.273812, 5.093713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.947022, 2.583590, 4.487435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.640923, 2.331238, 4.436236>,  <2.457263, 2.179826, 4.405516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.640923, 2.331238, 4.436236>,  <2.947022, 2.583590, 4.487435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.640923, 2.331238, 4.436236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590697, 0.767213, -0.249923,
		0.255873, -0.115645, -0.959768,
		-0.765249, -0.630881, -0.127998,
		2.411348, 2.141973, 4.397837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.661382, 2.687615, 3.807217>,  <2.947022, 2.583590, 4.487435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.661382, 2.687615, 3.807217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.352234, 2.536285, 4.010998>,  <2.166745, 2.445488, 4.133266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.352234, 2.536285, 4.010998>,  <2.661382, 2.687615, 3.807217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.352234, 2.536285, 4.010998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496573, 0.860426, -0.114373,
		-0.395076, -0.341376, -0.852864,
		-0.772871, -0.378323, 0.509452,
		2.120373, 2.422788, 4.163833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.116294, 2.922471, 3.457075>,  <2.661382, 2.687615, 3.807217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.116294, 2.922471, 3.457075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.978897, 2.826965, 3.820395>,  <1.896459, 2.769662, 4.038386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.978897, 2.826965, 3.820395>,  <2.116294, 2.922471, 3.457075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.978897, 2.826965, 3.820395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567925, 0.823079, 0.001590,
		-0.747980, -0.515299, -0.418321,
		-0.343491, -0.238764, 0.908298,
		1.875850, 2.755336, 4.092884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.358221, 2.837743, 3.464319>,  <2.116294, 2.922471, 3.457075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.358221, 2.837743, 3.464319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.507774, 2.971153, 3.810492>,  <1.597507, 3.051200, 4.018195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.507774, 2.971153, 3.810492>,  <1.358221, 2.837743, 3.464319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.507774, 2.971153, 3.810492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516776, 0.849752, -0.104226,
		-0.770164, -0.408265, 0.490068,
		0.373884, 0.333527, 0.865431,
		1.619940, 3.071211, 4.070121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.855687, 2.968520, 3.883759>,  <1.358221, 2.837743, 3.464319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.855687, 2.968520, 3.883759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.159950, 3.197708, 4.005813>,  <1.342508, 3.335221, 4.079045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.159950, 3.197708, 4.005813>,  <0.855687, 2.968520, 3.883759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.159950, 3.197708, 4.005813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543150, 0.819177, -0.184223,
		-0.355513, -0.025604, 0.934321,
		0.760657, 0.572970, 0.305135,
		1.388147, 3.369599, 4.097353>
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
