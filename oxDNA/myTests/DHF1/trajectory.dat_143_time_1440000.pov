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
	<-0.731350, 0.990514, 3.039683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.511166, 0.695709, 3.196556>,  <-0.379055, 0.518826, 3.290680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.511166, 0.695709, 3.196556>,  <-0.731350, 0.990514, 3.039683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.511166, 0.695709, 3.196556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824618, 0.406621, -0.393273,
		0.130377, 0.539882, 0.831582,
		0.550460, -0.737012, 0.392182,
		-0.346028, 0.474606, 3.314211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.225704, 1.380552, 3.318500>,  <-0.731350, 0.990514, 3.039683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.225704, 1.380552, 3.318500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.066368, 1.015282, 3.284012>,  <0.029234, 0.796119, 3.263319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.066368, 1.015282, 3.284012>,  <-0.225704, 1.380552, 3.318500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.066368, 1.015282, 3.284012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875632, 0.406577, -0.260699,
		0.273119, 0.028350, 0.961562,
		0.398340, -0.913177, -0.086219,
		0.053134, 0.741329, 3.258146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.461143, 1.472958, 3.624325>,  <-0.225704, 1.380552, 3.318500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.461143, 1.472958, 3.624325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.440979, 1.172985, 3.360489>,  <0.428881, 0.993001, 3.202187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.440979, 1.172985, 3.360489>,  <0.461143, 1.472958, 3.624325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.440979, 1.172985, 3.360489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929535, 0.206315, -0.305612,
		0.365272, -0.628518, 0.686689,
		-0.050409, -0.749933, -0.659591,
		0.425856, 0.948005, 3.162612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.150679, 1.210441, 3.578765>,  <0.461143, 1.472958, 3.624325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.150679, 1.210441, 3.578765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.967312, 1.056480, 3.258339>,  <0.857292, 0.964104, 3.066083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.967312, 1.056480, 3.258339>,  <1.150679, 1.210441, 3.578765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.967312, 1.056480, 3.258339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862471, 0.024849, -0.505497,
		0.214473, -0.922623, 0.320576,
		-0.458417, -0.384903, -0.801064,
		0.829787, 0.941010, 3.018020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.625620, 0.704214, 3.315750>,  <1.150679, 1.210441, 3.578765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.625620, 0.704214, 3.315750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.375942, 0.829521, 3.029465>,  <1.226136, 0.904705, 2.857693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.375942, 0.829521, 3.029465>,  <1.625620, 0.704214, 3.315750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.375942, 0.829521, 3.029465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772194, 0.108149, -0.626115,
		-0.118738, -0.943487, -0.309409,
		-0.624194, 0.313267, -0.715713,
		1.188684, 0.923501, 2.814751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.710758, 0.229592, 2.787743>,  <1.625620, 0.704214, 3.315750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.710758, 0.229592, 2.787743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.568150, 0.552414, 2.599464>,  <1.482584, 0.746107, 2.486497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.568150, 0.552414, 2.599464>,  <1.710758, 0.229592, 2.787743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.568150, 0.552414, 2.599464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642884, -0.153651, -0.750394,
		-0.677933, -0.570135, -0.464062,
		-0.356522, 0.807055, -0.470696,
		1.461193, 0.794530, 2.458256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.480121, -0.011002, 2.169855>,  <1.710758, 0.229592, 2.787743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.480121, -0.011002, 2.169855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.565807, 0.378456, 2.138542>,  <1.617219, 0.612131, 2.119755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.565807, 0.378456, 2.138542>,  <1.480121, -0.011002, 2.169855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.565807, 0.378456, 2.138542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688865, -0.207406, -0.694585,
		-0.692515, 0.094866, -0.715139,
		0.214216, 0.973644, -0.078282,
		1.630072, 0.670549, 2.115057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.448084, 0.156310, 1.422371>,  <1.480121, -0.011002, 2.169855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.448084, 0.156310, 1.422371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.662556, 0.434818, 1.613251>,  <1.791239, 0.601923, 1.727778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.662556, 0.434818, 1.613251>,  <1.448084, 0.156310, 1.422371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.662556, 0.434818, 1.613251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761133, -0.154381, -0.629955,
		-0.364949, 0.700981, -0.612731,
		0.536180, 0.696271, 0.477198,
		1.823410, 0.643699, 1.756410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.635794, 0.700546, 0.259233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.874780, 0.931877, 0.481430>,  <3.018171, 1.070676, 0.614748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.874780, 0.931877, 0.481430>,  <2.635794, 0.700546, 0.259233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.874780, 0.931877, 0.481430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591645, -0.149681, 0.792182,
		0.541287, -0.801956, 0.252735,
		0.597465, 0.578328, 0.555493,
		3.054019, 1.105375, 0.648078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.012077, 0.353011, 0.874990>,  <2.635794, 0.700546, 0.259233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.012077, 0.353011, 0.874990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.918387, 0.737740, 0.931610>,  <2.862173, 0.968577, 0.965582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.918387, 0.737740, 0.931610>,  <3.012077, 0.353011, 0.874990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.918387, 0.737740, 0.931610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638945, -0.262037, 0.723247,
		0.732726, 0.078959, 0.675927,
		-0.234225, 0.961822, 0.141551,
		2.848120, 1.026286, 0.974075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.058392, 0.646211, 1.675466>,  <3.012077, 0.353011, 0.874990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.058392, 0.646211, 1.675466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.802285, 0.876411, 1.471954>,  <2.648621, 1.014532, 1.349847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.802285, 0.876411, 1.471954>,  <3.058392, 0.646211, 1.675466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.802285, 0.876411, 1.471954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627508, -0.009842, 0.778548,
		0.443048, 0.817742, 0.367433,
		-0.640268, 0.575501, -0.508779,
		2.610205, 1.049062, 1.319321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.725083, 1.106924, 2.219831>,  <3.058392, 0.646211, 1.675466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.725083, 1.106924, 2.219831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.488182, 1.102478, 1.897560>,  <2.346042, 1.099810, 1.704198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.488182, 1.102478, 1.897560>,  <2.725083, 1.106924, 2.219831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.488182, 1.102478, 1.897560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782534, 0.246247, 0.571842,
		0.192039, 0.969143, -0.154538,
		-0.592252, -0.011115, -0.805676,
		2.310507, 1.099144, 1.655857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.343270, 1.784780, 2.182799>,  <2.725083, 1.106924, 2.219831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.343270, 1.784780, 2.182799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.161632, 1.459953, 2.036186>,  <2.052648, 1.265058, 1.948219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.161632, 1.459953, 2.036186>,  <2.343270, 1.784780, 2.182799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.161632, 1.459953, 2.036186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797232, 0.186686, 0.574082,
		-0.397765, 0.552899, -0.732178,
		-0.454097, -0.812065, -0.366531,
		2.025403, 1.216334, 1.926227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.675889, 1.905592, 1.939719>,  <2.343270, 1.784780, 2.182799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.675889, 1.905592, 1.939719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.649348, 1.515854, 2.025742>,  <1.633424, 1.282011, 2.077355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.649348, 1.515854, 2.025742>,  <1.675889, 1.905592, 1.939719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.649348, 1.515854, 2.025742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902739, 0.150433, 0.403028,
		-0.425040, -0.167399, -0.889561,
		-0.066353, -0.974345, 0.215057,
		1.629442, 1.223550, 2.090259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.001032, 1.873829, 1.960645>,  <1.675889, 1.905592, 1.939719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.001032, 1.873829, 1.960645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.117233, 1.515396, 2.094894>,  <1.186954, 1.300336, 2.175444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.117233, 1.515396, 2.094894>,  <1.001032, 1.873829, 1.960645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.117233, 1.515396, 2.094894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813440, -0.046556, 0.579782,
		-0.503908, -0.441438, -0.742435,
		0.290503, -0.896083, 0.335623,
		1.204384, 1.246571, 2.195581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.406202, 1.473640, 1.975095>,  <1.001032, 1.873829, 1.960645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.406202, 1.473640, 1.975095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.662186, 1.298233, 2.227493>,  <0.815776, 1.192989, 2.378932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.662186, 1.298233, 2.227493>,  <0.406202, 1.473640, 1.975095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.662186, 1.298233, 2.227493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756220, -0.213738, 0.618423,
		-0.136322, -0.872937, -0.468399,
		0.639959, -0.438517, 0.630996,
		0.854173, 1.166678, 2.416792>
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
