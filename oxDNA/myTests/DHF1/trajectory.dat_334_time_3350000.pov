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
	<2.730742, 2.540507, 2.100016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.814182, 2.890198, 1.924648>,  <2.864246, 3.100012, 1.819427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.814182, 2.890198, 1.924648>,  <2.730742, 2.540507, 2.100016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.814182, 2.890198, 1.924648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075161, -0.461286, -0.884062,
		-0.975109, 0.151464, -0.161932,
		0.208601, 0.874228, -0.438420,
		2.876762, 3.152466, 1.793122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.349240, 2.552902, 1.487224>,  <2.730742, 2.540507, 2.100016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.349240, 2.552902, 1.487224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.644569, 2.814178, 1.420029>,  <2.821767, 2.970944, 1.379712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.644569, 2.814178, 1.420029>,  <2.349240, 2.552902, 1.487224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.644569, 2.814178, 1.420029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124112, -0.376408, -0.918103,
		-0.662928, 0.657009, -0.358980,
		0.738325, 0.653190, -0.167988,
		2.866067, 3.010135, 1.369632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.440825, 2.840603, 0.738065>,  <2.349240, 2.552902, 1.487224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.440825, 2.840603, 0.738065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.806217, 2.823830, 0.899952>,  <3.025452, 2.813766, 0.997084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.806217, 2.823830, 0.899952>,  <2.440825, 2.840603, 0.738065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.806217, 2.823830, 0.899952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311918, -0.566538, -0.762720,
		0.261271, 0.822968, -0.504442,
		0.913479, -0.041932, 0.404718,
		3.080261, 2.811250, 1.021367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.914378, 3.166934, 0.302753>,  <2.440825, 2.840603, 0.738065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.914378, 3.166934, 0.302753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.099834, 2.894882, 0.529896>,  <3.211108, 2.731651, 0.666181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.099834, 2.894882, 0.529896>,  <2.914378, 3.166934, 0.302753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.099834, 2.894882, 0.529896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309743, -0.476047, -0.823067,
		0.830119, 0.557496, -0.010049,
		0.463640, -0.680130, 0.567856,
		3.238926, 2.690843, 0.700253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.511758, 3.011795, -0.019191>,  <2.914378, 3.166934, 0.302753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.511758, 3.011795, -0.019191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.430511, 2.700584, 0.218605>,  <3.381764, 2.513858, 0.361283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.430511, 2.700584, 0.218605>,  <3.511758, 3.011795, -0.019191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.430511, 2.700584, 0.218605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216168, -0.627796, -0.747759,
		0.954995, -0.023372, 0.295699,
		-0.203115, -0.778027, 0.594490,
		3.369577, 2.467176, 0.396952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.085597, 2.588355, -0.051432>,  <3.511758, 3.011795, -0.019191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.085597, 2.588355, -0.051432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.784626, 2.342033, 0.042068>,  <3.604044, 2.194240, 0.098169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.784626, 2.342033, 0.042068>,  <4.085597, 2.588355, -0.051432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.784626, 2.342033, 0.042068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137689, -0.494089, -0.858439,
		0.644124, -0.613727, 0.456555,
		-0.752426, -0.615804, 0.233751,
		3.558898, 2.157292, 0.112194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.391193, 1.970184, -0.072584>,  <4.085597, 2.588355, -0.051432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.391193, 1.970184, -0.072584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.997051, 1.917763, -0.116219>,  <3.760566, 1.886310, -0.142399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.997051, 1.917763, -0.116219>,  <4.391193, 1.970184, -0.072584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.997051, 1.917763, -0.116219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167273, -0.618813, -0.767522,
		0.033083, -0.774529, 0.631673,
		-0.985356, -0.131054, -0.109086,
		3.701445, 1.878447, -0.148944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.290991, 1.269389, -0.084830>,  <4.391193, 1.970184, -0.072584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.290991, 1.269389, -0.084830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.968689, 1.410912, -0.274811>,  <3.775308, 1.495825, -0.388799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.968689, 1.410912, -0.274811>,  <4.290991, 1.269389, -0.084830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.968689, 1.410912, -0.274811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187757, -0.607979, -0.771433,
		-0.561694, -0.710764, 0.423455,
		-0.805759, 0.353803, -0.474949,
		3.726963, 1.517054, -0.417296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.556323, 1.090039, 3.296498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.195468, 1.139648, 3.131203>,  <3.978955, 1.169414, 3.032025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.195468, 1.139648, 3.131203>,  <4.556323, 1.090039, 3.296498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.195468, 1.139648, 3.131203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348336, 0.355779, 0.867227,
		0.254578, 0.926304, -0.277760,
		-0.902137, 0.124023, -0.413239,
		3.924827, 1.176855, 3.007231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.199264, 1.793980, 3.323545>,  <4.556323, 1.090039, 3.296498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.199264, 1.793980, 3.323545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.904061, 1.524185, 3.315376>,  <3.726940, 1.362309, 3.310475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.904061, 1.524185, 3.315376>,  <4.199264, 1.793980, 3.323545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.904061, 1.524185, 3.315376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319592, 0.322716, 0.890907,
		-0.594314, 0.664020, -0.453726,
		-0.738005, -0.674486, -0.020420,
		3.682660, 1.321839, 3.309250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.536787, 2.096668, 3.355101>,  <4.199264, 1.793980, 3.323545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.536787, 2.096668, 3.355101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.501058, 1.721344, 3.488724>,  <3.479620, 1.496149, 3.568897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.501058, 1.721344, 3.488724>,  <3.536787, 2.096668, 3.355101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.501058, 1.721344, 3.488724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268924, 0.345661, 0.898999,
		-0.959011, -0.009534, -0.283210,
		-0.089324, -0.938311, 0.334056,
		3.474261, 1.439851, 3.588941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.060757, 2.241660, 3.802343>,  <3.536787, 2.096668, 3.355101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.060757, 2.241660, 3.802343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.189788, 1.873383, 3.890221>,  <3.267206, 1.652416, 3.942947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.189788, 1.873383, 3.890221>,  <3.060757, 2.241660, 3.802343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.189788, 1.873383, 3.890221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145890, 0.180968, 0.972608,
		-0.935233, -0.345793, -0.075944,
		0.322578, -0.920695, 0.219694,
		3.286561, 1.597174, 3.956129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.580982, 1.782815, 4.146428>,  <3.060757, 2.241660, 3.802343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.580982, 1.782815, 4.146428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.936091, 1.690094, 4.305489>,  <3.149157, 1.634461, 4.400925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.936091, 1.690094, 4.305489>,  <2.580982, 1.782815, 4.146428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.936091, 1.690094, 4.305489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356274, 0.200926, 0.912523,
		-0.291425, -0.951785, 0.095791,
		0.887773, -0.231804, 0.397651,
		3.202423, 1.620553, 4.424784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.404381, 1.602702, 4.729242>,  <2.580982, 1.782815, 4.146428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.404381, 1.602702, 4.729242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.798401, 1.659149, 4.768768>,  <3.034813, 1.693018, 4.792484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.798401, 1.659149, 4.768768>,  <2.404381, 1.602702, 4.729242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.798401, 1.659149, 4.768768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149481, 0.414997, 0.897459,
		0.085640, -0.898812, 0.429886,
		0.985049, 0.141118, 0.098815,
		3.093915, 1.701485, 4.798413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.613082, 1.410138, 5.389824>,  <2.404381, 1.602702, 4.729242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.613082, 1.410138, 5.389824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.905580, 1.670761, 5.309074>,  <3.081078, 1.827135, 5.260624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.905580, 1.670761, 5.309074>,  <2.613082, 1.410138, 5.389824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.905580, 1.670761, 5.309074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125799, 0.419695, 0.898905,
		0.670416, -0.631923, 0.388865,
		0.731244, 0.651559, -0.201875,
		3.124953, 1.866229, 5.248512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.136917, 1.256268, 5.807085>,  <2.613082, 1.410138, 5.389824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.136917, 1.256268, 5.807085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.174863, 1.639359, 5.698448>,  <3.197630, 1.869213, 5.633266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.174863, 1.639359, 5.698448>,  <3.136917, 1.256268, 5.807085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.174863, 1.639359, 5.698448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006035, 0.272263, 0.962204,
		0.995472, -0.092917, 0.020048,
		0.094864, 0.957726, -0.271591,
		3.203322, 1.926676, 5.616971>
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
