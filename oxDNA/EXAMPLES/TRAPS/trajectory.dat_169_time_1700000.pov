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
	<36.340672, 52.767265, 50.097050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171688, 52.660217, 49.750660>,  <36.070297, 52.595989, 49.542828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171688, 52.660217, 49.750660>,  <36.340672, 52.767265, 50.097050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171688, 52.660217, 49.750660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370334, -0.922993, 0.104576,
		-0.827275, -0.276521, 0.489032,
		-0.422455, -0.267619, -0.865975,
		36.044952, 52.579933, 49.490868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009991, 52.109066, 50.212872>,  <36.340672, 52.767265, 50.097050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009991, 52.109066, 50.212872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092739, 52.150894, 49.823765>,  <36.142387, 52.175991, 49.590302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092739, 52.150894, 49.823765>,  <36.009991, 52.109066, 50.212872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092739, 52.150894, 49.823765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527213, -0.849479, 0.020802,
		-0.824168, -0.517157, -0.230857,
		0.206866, 0.104566, -0.972765,
		36.154800, 52.182262, 49.531937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235088, 51.527443, 50.031006>,  <36.009991, 52.109066, 50.212872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235088, 51.527443, 50.031006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352886, 51.652317, 49.669716>,  <36.423565, 51.727242, 49.452942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352886, 51.652317, 49.669716>,  <36.235088, 51.527443, 50.031006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352886, 51.652317, 49.669716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671891, -0.739745, -0.036607,
		-0.679583, -0.596087, -0.427607,
		0.294499, 0.312182, -0.903223,
		36.441235, 51.745972, 49.398750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254322, 51.020786, 49.520245>,  <36.235088, 51.527443, 50.031006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254322, 51.020786, 49.520245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535213, 51.299023, 49.459545>,  <36.703747, 51.465965, 49.423126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535213, 51.299023, 49.459545>,  <36.254322, 51.020786, 49.520245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535213, 51.299023, 49.459545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709782, -0.700633, 0.072962,
		-0.055567, -0.158943, -0.985723,
		0.702227, 0.695594, -0.151746,
		36.745880, 51.507702, 49.414021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720646, 50.877407, 48.906639>,  <36.254322, 51.020786, 49.520245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720646, 50.877407, 48.906639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913181, 51.052132, 49.210617>,  <37.028702, 51.156967, 49.393002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913181, 51.052132, 49.210617>,  <36.720646, 50.877407, 48.906639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913181, 51.052132, 49.210617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739878, -0.667345, -0.085037,
		0.469998, 0.603195, -0.644404,
		0.481334, 0.436813, 0.759942,
		37.057583, 51.183174, 49.438599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527115, 50.777485, 48.638180>,  <36.720646, 50.877407, 48.906639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527115, 50.777485, 48.638180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920589, 50.705578, 48.640900>,  <38.156673, 50.662434, 48.642532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920589, 50.705578, 48.640900>,  <37.527115, 50.777485, 48.638180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920589, 50.705578, 48.640900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057066, -0.347647, -0.935887,
		0.170607, 0.920231, -0.352234,
		0.983685, -0.179770, 0.006798,
		38.215694, 50.651646, 48.642941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870518, 50.711678, 47.911816>,  <37.527115, 50.777485, 48.638180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870518, 50.711678, 47.911816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143410, 50.538300, 48.147339>,  <38.307144, 50.434273, 48.288651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143410, 50.538300, 48.147339>,  <37.870518, 50.711678, 47.911816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143410, 50.538300, 48.147339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327002, -0.539401, -0.775961,
		0.653939, 0.721923, -0.226257,
		0.682227, -0.433445, 0.588806,
		38.348080, 50.408268, 48.323982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583981, 50.718468, 47.596077>,  <37.870518, 50.711678, 47.911816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583981, 50.718468, 47.596077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570972, 50.420212, 47.862297>,  <38.563168, 50.241257, 48.022030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570972, 50.420212, 47.862297>,  <38.583981, 50.718468, 47.596077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570972, 50.420212, 47.862297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422988, -0.613601, -0.666764,
		0.905551, 0.259835, 0.335354,
		-0.032525, -0.745640, 0.665555,
		38.561214, 50.196518, 48.061962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220428, 50.314751, 47.659771>,  <38.583981, 50.718468, 47.596077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220428, 50.314751, 47.659771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915474, 50.073994, 47.754845>,  <38.732502, 49.929539, 47.811890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915474, 50.073994, 47.754845>,  <39.220428, 50.314751, 47.659771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915474, 50.073994, 47.754845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106901, -0.479387, -0.871068,
		0.638234, -0.638680, 0.429820,
		-0.762384, -0.601894, 0.237685,
		38.686760, 49.893425, 47.826149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346352, 49.568928, 47.541183>,  <39.220428, 50.314751, 47.659771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346352, 49.568928, 47.541183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948139, 49.604019, 47.555180>,  <38.709213, 49.625076, 47.563580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948139, 49.604019, 47.555180>,  <39.346352, 49.568928, 47.541183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948139, 49.604019, 47.555180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077369, -0.544921, -0.834911,
		-0.054180, -0.833885, 0.549272,
		-0.995529, 0.087733, 0.034993,
		38.649479, 49.630341, 47.565678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333729, 49.808907, 48.237144>,  <39.346352, 49.568928, 47.541183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333729, 49.808907, 48.237144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382782, 49.553085, 48.540703>,  <39.412212, 49.399593, 48.722839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382782, 49.553085, 48.540703>,  <39.333729, 49.808907, 48.237144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382782, 49.553085, 48.540703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944682, 0.309604, 0.108265,
		-0.304200, 0.703642, 0.642145,
		0.122631, -0.639557, 0.758899,
		39.419571, 49.361217, 48.768372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516380, 50.105274, 48.852478>,  <39.333729, 49.808907, 48.237144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516380, 50.105274, 48.852478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665642, 49.744759, 48.764442>,  <39.755199, 49.528450, 48.711620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665642, 49.744759, 48.764442>,  <39.516380, 50.105274, 48.852478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665642, 49.744759, 48.764442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918103, 0.324566, 0.227471,
		-0.133584, -0.286946, 0.948587,
		0.373151, -0.901287, -0.220089,
		39.777588, 49.474373, 48.698414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960800, 49.820953, 49.391602>,  <39.516380, 50.105274, 48.852478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960800, 49.820953, 49.391602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099728, 49.661850, 49.051918>,  <40.183083, 49.566387, 48.848106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099728, 49.661850, 49.051918>,  <39.960800, 49.820953, 49.391602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099728, 49.661850, 49.051918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932704, 0.240326, 0.268897,
		0.097129, -0.885454, 0.454464,
		0.347315, -0.397763, -0.849209,
		40.203922, 49.542522, 48.797153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492409, 49.312710, 49.431541>,  <39.960800, 49.820953, 49.391602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492409, 49.312710, 49.431541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529945, 49.497963, 49.079018>,  <40.552467, 49.609116, 48.867504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529945, 49.497963, 49.079018>,  <40.492409, 49.312710, 49.431541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529945, 49.497963, 49.079018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841980, 0.435469, 0.318491,
		0.531285, -0.771931, -0.349082,
		0.093839, 0.463130, -0.881309,
		40.558098, 49.636902, 48.814625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883385, 49.608532, 50.012123>,  <40.492409, 49.312710, 49.431541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883385, 49.608532, 50.012123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237370, 49.499519, 49.861092>,  <41.449760, 49.434113, 49.770473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237370, 49.499519, 49.861092>,  <40.883385, 49.608532, 50.012123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237370, 49.499519, 49.861092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433279, 0.184844, 0.882101,
		-0.170606, -0.944224, 0.281662,
		0.884965, -0.272530, -0.377577,
		41.502857, 49.417759, 49.747818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246380, 49.684612, 50.615765>,  <40.883385, 49.608532, 50.012123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246380, 49.684612, 50.615765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502571, 49.556450, 50.336586>,  <41.656284, 49.479553, 50.169079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502571, 49.556450, 50.336586>,  <41.246380, 49.684612, 50.615765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502571, 49.556450, 50.336586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763381, 0.166327, 0.624167,
		-0.083898, -0.932565, 0.351118,
		0.640476, -0.320403, -0.697948,
		41.694714, 49.460327, 50.127201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702747, 49.694759, 51.237480>,  <41.246380, 49.684612, 50.615765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702747, 49.694759, 51.237480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977318, 49.863468, 51.000526>,  <42.142059, 49.964695, 50.858353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977318, 49.863468, 51.000526>,  <41.702747, 49.694759, 51.237480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977318, 49.863468, 51.000526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588138, 0.157091, 0.793357,
		0.427678, -0.892988, -0.140231,
		0.686429, 0.421777, -0.592385,
		42.183247, 49.990002, 50.822811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466190, 49.576553, 51.403374>,  <41.702747, 49.694759, 51.237480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466190, 49.576553, 51.403374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524818, 49.865273, 51.132812>,  <42.559998, 50.038506, 50.970474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524818, 49.865273, 51.132812>,  <42.466190, 49.576553, 51.403374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524818, 49.865273, 51.132812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424091, 0.571906, 0.702190,
		0.893680, -0.389779, -0.222282,
		0.146574, 0.721801, -0.676402,
		42.568790, 50.081814, 50.929893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185787, 49.794815, 51.242737>,  <42.466190, 49.576553, 51.403374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185787, 49.794815, 51.242737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907841, 50.082462, 51.240406>,  <42.741074, 50.255051, 51.239006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907841, 50.082462, 51.240406>,  <43.185787, 49.794815, 51.242737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907841, 50.082462, 51.240406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479920, 0.469741, 0.740959,
		0.535572, 0.512071, -0.671525,
		-0.694866, 0.719116, -0.005827,
		42.699383, 50.298199, 51.238659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526829, 50.464500, 51.186577>,  <43.185787, 49.794815, 51.242737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526829, 50.464500, 51.186577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164433, 50.539207, 51.338520>,  <42.946995, 50.584030, 51.429688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164433, 50.539207, 51.338520>,  <43.526829, 50.464500, 51.186577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164433, 50.539207, 51.338520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416286, 0.555682, 0.719669,
		-0.076671, 0.810146, -0.581193,
		-0.905995, 0.186765, 0.379857,
		42.892635, 50.595238, 51.452477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383595, 51.241516, 51.254662>,  <43.526829, 50.464500, 51.186577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383595, 51.241516, 51.254662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179363, 51.035362, 51.529961>,  <43.056824, 50.911671, 51.695141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179363, 51.035362, 51.529961>,  <43.383595, 51.241516, 51.254662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179363, 51.035362, 51.529961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385294, 0.578449, 0.718989,
		-0.768674, 0.632279, -0.096769,
		-0.510577, -0.515384, 0.688251,
		43.026192, 50.880749, 51.736435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333782, 51.785305, 51.747715>,  <43.383595, 51.241516, 51.254662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333782, 51.785305, 51.747715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268353, 51.426826, 51.912678>,  <43.229095, 51.211739, 52.011654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268353, 51.426826, 51.912678>,  <43.333782, 51.785305, 51.747715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268353, 51.426826, 51.912678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429459, 0.311661, 0.847603,
		-0.888149, 0.315758, 0.333899,
		-0.163574, -0.896194, 0.412407,
		43.219280, 51.157967, 52.036400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830669, 51.779896, 52.252586>,  <43.333782, 51.785305, 51.747715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830669, 51.779896, 52.252586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114784, 51.509506, 52.331123>,  <43.285252, 51.347271, 52.378246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114784, 51.509506, 52.331123>,  <42.830669, 51.779896, 52.252586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114784, 51.509506, 52.331123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379049, 0.602340, 0.702502,
		-0.593138, -0.424555, 0.684062,
		0.710288, -0.675973, 0.196343,
		43.327869, 51.306713, 52.390026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918533, 51.587475, 52.987728>,  <42.830669, 51.779896, 52.252586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918533, 51.587475, 52.987728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283222, 51.538376, 52.830910>,  <43.502033, 51.508915, 52.736820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283222, 51.538376, 52.830910>,  <42.918533, 51.587475, 52.987728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283222, 51.538376, 52.830910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376346, 0.632202, 0.677263,
		0.164719, -0.765019, 0.622587,
		0.911719, -0.122750, -0.392047,
		43.556736, 51.501553, 52.713295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388493, 51.319660, 53.508549>,  <42.918533, 51.587475, 52.987728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388493, 51.319660, 53.508549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507309, 51.568550, 53.218834>,  <43.578598, 51.717884, 53.045006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507309, 51.568550, 53.218834>,  <43.388493, 51.319660, 53.508549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507309, 51.568550, 53.218834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139391, 0.722146, 0.677551,
		0.944636, -0.302219, 0.127772,
		0.297039, 0.622229, -0.724291,
		43.596420, 51.755219, 53.001545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869137, 51.844643, 53.867287>,  <43.388493, 51.319660, 53.508549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869137, 51.844643, 53.867287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112106, 51.598934, 53.665810>,  <44.257889, 51.451508, 53.544926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112106, 51.598934, 53.665810>,  <43.869137, 51.844643, 53.867287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112106, 51.598934, 53.665810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709054, 0.705137, -0.004857,
		0.358154, -0.354192, 0.863872,
		0.607427, -0.614272, -0.503689,
		44.294334, 51.414654, 53.514702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511971, 52.103477, 54.087296>,  <43.869137, 51.844643, 53.867287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511971, 52.103477, 54.087296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600967, 51.847942, 53.792709>,  <44.654366, 51.694622, 53.615959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600967, 51.847942, 53.792709>,  <44.511971, 52.103477, 54.087296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600967, 51.847942, 53.792709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768609, 0.579661, -0.270617,
		0.599780, -0.505840, 0.619993,
		0.222497, -0.638842, -0.736462,
		44.667717, 51.656288, 53.571770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189472, 52.059395, 54.140335>,  <44.511971, 52.103477, 54.087296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189472, 52.059395, 54.140335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059040, 51.957436, 53.776203>,  <44.980782, 51.896259, 53.557724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059040, 51.957436, 53.776203>,  <45.189472, 52.059395, 54.140335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059040, 51.957436, 53.776203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723996, 0.551859, -0.413861,
		0.607867, -0.794026, 0.004597,
		-0.326080, -0.254901, -0.910329,
		44.961216, 51.880966, 53.503105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628899, 51.624382, 53.784164>,  <45.189472, 52.059395, 54.140335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628899, 51.624382, 53.784164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427231, 51.908051, 53.587032>,  <45.306229, 52.078251, 53.468754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427231, 51.908051, 53.587032>,  <45.628899, 51.624382, 53.784164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427231, 51.908051, 53.587032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862311, 0.382174, -0.332210,
		-0.047246, -0.592467, -0.804208,
		-0.504171, 0.709173, -0.492834,
		45.275978, 52.120804, 53.439182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797871, 51.737648, 53.051727>,  <45.628899, 51.624382, 53.784164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797871, 51.737648, 53.051727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.679459, 52.105038, 53.156631>,  <45.608410, 52.325470, 53.219574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.679459, 52.105038, 53.156631>,  <45.797871, 51.737648, 53.051727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.679459, 52.105038, 53.156631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780179, 0.390908, -0.488376,
		-0.551078, 0.060035, -0.832292,
		-0.296030, 0.918470, 0.262258,
		45.590649, 52.380577, 53.235310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.089264, 52.259285, 52.738361>,  <45.797871, 51.737648, 53.051727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.089264, 52.259285, 52.738361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055561, 52.326214, 53.131279>,  <46.035339, 52.366371, 53.367031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055561, 52.326214, 53.131279>,  <46.089264, 52.259285, 52.738361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.055561, 52.326214, 53.131279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988366, 0.139302, 0.061049,
		-0.126620, 0.976011, -0.177116,
		-0.084257, 0.167325, 0.982295,
		46.030285, 52.376411, 53.425968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408386, 52.943531, 52.909229>,  <46.089264, 52.259285, 52.738361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408386, 52.943531, 52.909229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.467022, 52.649910, 53.174461>,  <46.502205, 52.473736, 53.333599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.467022, 52.649910, 53.174461>,  <46.408386, 52.943531, 52.909229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.467022, 52.649910, 53.174461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973443, 0.226204, 0.035215,
		-0.175841, 0.640307, 0.747721,
		0.146589, -0.734056, 0.663078,
		46.510998, 52.429691, 53.373386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.727448, 53.176918, 53.611759>,  <46.408386, 52.943531, 52.909229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.727448, 53.176918, 53.611759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839481, 52.821030, 53.467567>,  <46.906704, 52.607498, 53.381050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839481, 52.821030, 53.467567>,  <46.727448, 53.176918, 53.611759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.839481, 52.821030, 53.467567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959844, 0.253371, 0.120424,
		-0.015808, -0.379736, 0.924960,
		0.280088, -0.889721, -0.360482,
		46.923508, 52.554111, 53.359425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.141624, 52.865177, 54.148197>,  <46.727448, 53.176918, 53.611759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.141624, 52.865177, 54.148197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253155, 52.744682, 53.783447>,  <47.320072, 52.672386, 53.564598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253155, 52.744682, 53.783447>,  <47.141624, 52.865177, 54.148197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.253155, 52.744682, 53.783447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945425, 0.252805, 0.205575,
		0.168599, -0.919427, 0.355285,
		0.278829, -0.301236, -0.911872,
		47.336803, 52.654312, 53.509884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.602627, 52.313652, 54.161751>,  <47.141624, 52.865177, 54.148197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.602627, 52.313652, 54.161751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664822, 52.536732, 53.835609>,  <47.702137, 52.670578, 53.639923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664822, 52.536732, 53.835609>,  <47.602627, 52.313652, 54.161751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.664822, 52.536732, 53.835609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936058, 0.180541, 0.301993,
		0.315625, -0.810174, -0.493963,
		0.155486, 0.557695, -0.815353,
		47.711468, 52.704041, 53.591003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.248993, 52.177380, 53.662846>,  <47.602627, 52.313652, 54.161751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.248993, 52.177380, 53.662846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.154556, 52.563385, 53.617233>,  <48.097893, 52.794991, 53.589867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.154556, 52.563385, 53.617233>,  <48.248993, 52.177380, 53.662846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.154556, 52.563385, 53.617233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969059, 0.242512, 0.045965,
		0.072010, -0.099648, -0.992414,
		-0.236092, 0.965017, -0.114028,
		48.083729, 52.852890, 53.583023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.180073, 51.425262, 53.639103>,  <48.248993, 52.177380, 53.662846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.180073, 51.425262, 53.639103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.303200, 51.165283, 53.917046>,  <48.377075, 51.009296, 54.083809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.303200, 51.165283, 53.917046>,  <48.180073, 51.425262, 53.639103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.303200, 51.165283, 53.917046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934555, 0.069535, -0.348959,
		0.178488, 0.756793, 0.628814,
		0.307814, -0.649946, 0.694853,
		48.395542, 50.970299, 54.125500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.741302, 51.673672, 54.004368>,  <48.180073, 51.425262, 53.639103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.741302, 51.673672, 54.004368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.776596, 51.275288, 54.011086>,  <48.797771, 51.036259, 54.015118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.776596, 51.275288, 54.011086>,  <48.741302, 51.673672, 54.004368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.776596, 51.275288, 54.011086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958404, 0.080292, -0.273888,
		0.271432, 0.040266, 0.961615,
		0.088238, -0.995958, 0.016798,
		48.803066, 50.976501, 54.016125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.332947, 51.442818, 54.487625>,  <48.741302, 51.673672, 54.004368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.332947, 51.442818, 54.487625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.247475, 51.191265, 54.188602>,  <49.196190, 51.040333, 54.009190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.247475, 51.191265, 54.188602>,  <49.332947, 51.442818, 54.487625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.247475, 51.191265, 54.188602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946054, 0.057568, -0.318853,
		0.243557, -0.775365, 0.582656,
		-0.213685, -0.628883, -0.747559,
		49.183369, 51.002602, 53.964336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.869869, 51.537075, 53.895222>,  <49.332947, 51.442818, 54.487625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.869869, 51.537075, 53.895222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.805931, 51.912201, 54.018478>,  <49.767570, 52.137276, 54.092430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.805931, 51.912201, 54.018478>,  <49.869869, 51.537075, 53.895222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.805931, 51.912201, 54.018478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616478, -0.148964, 0.773153,
		0.770977, 0.313543, -0.554333,
		-0.159841, 0.937817, 0.308140,
		49.757980, 52.193546, 54.110920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.531590, 51.967945, 54.031948>,  <49.869869, 51.537075, 53.895222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.531590, 51.967945, 54.031948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.239109, 52.108913, 54.265575>,  <50.063622, 52.193497, 54.405750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.239109, 52.108913, 54.265575>,  <50.531590, 51.967945, 54.031948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.239109, 52.108913, 54.265575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600577, -0.073445, 0.796186,
		0.323493, 0.932954, -0.157955,
		-0.731204, 0.352425, 0.584070,
		50.019749, 52.214642, 54.440796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.737446, 52.613167, 54.381119>,  <50.531590, 51.967945, 54.031948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.737446, 52.613167, 54.381119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.482265, 52.382061, 54.584766>,  <50.329155, 52.243397, 54.706955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.482265, 52.382061, 54.584766>,  <50.737446, 52.613167, 54.381119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.482265, 52.382061, 54.584766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585765, 0.065091, 0.807863,
		-0.499892, 0.813605, 0.296909,
		-0.637955, -0.577763, 0.509120,
		50.290878, 52.208733, 54.737503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.612389, 52.889992, 55.089882>,  <50.737446, 52.613167, 54.381119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.612389, 52.889992, 55.089882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.593651, 52.490433, 55.089386>,  <50.582409, 52.250698, 55.089088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.593651, 52.490433, 55.089386>,  <50.612389, 52.889992, 55.089882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.593651, 52.490433, 55.089386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637465, -0.030852, 0.769861,
		-0.769054, 0.035272, 0.638210,
		-0.046845, -0.998901, -0.001243,
		50.579597, 52.190762, 55.089012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.437492, 52.685265, 55.823357>,  <50.612389, 52.889992, 55.089882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.437492, 52.685265, 55.823357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.644547, 52.412849, 55.616188>,  <50.768780, 52.249401, 55.491886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.644547, 52.412849, 55.616188>,  <50.437492, 52.685265, 55.823357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.644547, 52.412849, 55.616188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589946, -0.154335, 0.792556,
		-0.619694, -0.715799, 0.321887,
		0.517633, -0.681038, -0.517923,
		50.799835, 52.208538, 55.460812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.792877, 52.882149, 56.518978>,  <50.437492, 52.685265, 55.823357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.792877, 52.882149, 56.518978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.123989, 52.688545, 56.632477>,  <51.322659, 52.572384, 56.700577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.123989, 52.688545, 56.632477>,  <50.792877, 52.882149, 56.518978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.123989, 52.688545, 56.632477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166505, 0.694896, 0.699568,
		-0.535772, -0.531844, 0.655812,
		0.827783, -0.484006, 0.283751,
		51.372322, 52.543343, 56.717602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.795578, 52.623486, 57.248348>,  <50.792877, 52.882149, 56.518978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.795578, 52.623486, 57.248348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.149704, 52.728012, 57.094498>,  <51.362179, 52.790730, 57.002190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.149704, 52.728012, 57.094498>,  <50.795578, 52.623486, 57.248348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.149704, 52.728012, 57.094498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116903, 0.675501, 0.728033,
		0.450062, -0.689499, 0.567481,
		0.885312, 0.261320, -0.384622,
		51.415298, 52.806408, 56.979111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.328201, 52.464214, 57.668308>,  <50.795578, 52.623486, 57.248348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.328201, 52.464214, 57.668308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.381527, 52.804356, 57.464691>,  <51.413521, 53.008442, 57.342522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.381527, 52.804356, 57.464691>,  <51.328201, 52.464214, 57.668308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.381527, 52.804356, 57.464691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103831, 0.498814, 0.860467,
		0.985620, -0.167567, -0.021794,
		0.133315, 0.850356, -0.509040,
		51.421520, 53.059464, 57.311977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.981457, 52.875961, 57.750488>,  <51.328201, 52.464214, 57.668308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.981457, 52.875961, 57.750488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.703171, 53.154728, 57.680878>,  <51.536198, 53.321987, 57.639111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.703171, 53.154728, 57.680878>,  <51.981457, 52.875961, 57.750488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.703171, 53.154728, 57.680878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375011, 0.559028, 0.739495,
		0.612651, 0.449219, -0.650278,
		-0.695719, 0.696914, -0.174027,
		51.494453, 53.363804, 57.628670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.014088, 53.431240, 58.232719>,  <51.981457, 52.875961, 57.750488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.014088, 53.431240, 58.232719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.655785, 53.350403, 58.391098>,  <51.440804, 53.301899, 58.486126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.655785, 53.350403, 58.391098>,  <52.014088, 53.431240, 58.232719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.655785, 53.350403, 58.391098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080729, 0.949832, 0.302162,
		-0.437149, 0.238700, -0.867135,
		-0.895759, -0.202093, 0.395948,
		51.387058, 53.289776, 58.509884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.640305, 53.237446, 58.042728>,  <52.014088, 53.431240, 58.232719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.640305, 53.237446, 58.042728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.614830, 52.844776, 57.970886>,  <52.599545, 52.609173, 57.927780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.614830, 52.844776, 57.970886>,  <52.640305, 53.237446, 58.042728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.614830, 52.844776, 57.970886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882551, -0.139411, 0.449074,
		-0.465883, -0.129909, 0.875258,
		-0.063682, -0.981676, -0.179601,
		52.595726, 52.550274, 57.917007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.677849, 52.901627, 58.652798>,  <52.640305, 53.237446, 58.042728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.677849, 52.901627, 58.652798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.870770, 52.716194, 58.355484>,  <52.986523, 52.604935, 58.177097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.870770, 52.716194, 58.355484>,  <52.677849, 52.901627, 58.652798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.870770, 52.716194, 58.355484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840124, 0.004436, 0.542375,
		-0.248139, -0.886042, 0.391607,
		0.482305, -0.463583, -0.743285,
		53.015461, 52.577118, 58.132500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.490868, 52.934742, 58.780807>,  <52.677849, 52.901627, 58.652798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.490868, 52.934742, 58.780807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.584877, 52.772560, 59.134163>,  <53.641281, 52.675251, 59.346176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.584877, 52.772560, 59.134163>,  <53.490868, 52.934742, 58.780807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.584877, 52.772560, 59.134163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612604, 0.767402, 0.189236,
		-0.754640, 0.496692, 0.428737,
		0.235022, -0.405451, 0.883388,
		53.655384, 52.650925, 59.399178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.792713, 53.426590, 58.975258>,  <53.490868, 52.934742, 58.780807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.792713, 53.426590, 58.975258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.902054, 53.188606, 59.277596>,  <53.967659, 53.045815, 59.459000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.902054, 53.188606, 59.277596>,  <53.792713, 53.426590, 58.975258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.902054, 53.188606, 59.277596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823435, 0.550909, 0.135844,
		-0.497223, 0.585255, 0.640504,
		0.273356, -0.594958, 0.755845,
		53.984062, 53.010120, 59.504349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.090225, 53.804237, 59.645061>,  <53.792713, 53.426590, 58.975258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.090225, 53.804237, 59.645061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.220139, 53.438610, 59.547913>,  <54.298088, 53.219234, 59.489624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.220139, 53.438610, 59.547913>,  <54.090225, 53.804237, 59.645061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.220139, 53.438610, 59.547913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930053, 0.355320, -0.093537,
		0.171798, -0.195507, 0.965537,
		0.324787, -0.914070, -0.242876,
		54.317574, 53.164391, 59.475048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.789631, 53.729774, 59.808334>,  <54.090225, 53.804237, 59.645061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.789631, 53.729774, 59.808334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.760971, 53.448460, 59.525421>,  <54.743774, 53.279671, 59.355675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.760971, 53.448460, 59.525421>,  <54.789631, 53.729774, 59.808334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.760971, 53.448460, 59.525421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926567, 0.215574, -0.308222,
		0.369242, -0.677429, 0.636200,
		-0.071651, -0.703291, -0.707283,
		54.739475, 53.237473, 59.313236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.336048, 53.129837, 59.757225>,  <54.789631, 53.729774, 59.808334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.336048, 53.129837, 59.757225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.190689, 53.203480, 59.391922>,  <55.103474, 53.247665, 59.172741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.190689, 53.203480, 59.391922>,  <55.336048, 53.129837, 59.757225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.190689, 53.203480, 59.391922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931251, 0.099852, -0.350431,
		0.026674, -0.977821, -0.207736,
		-0.363401, 0.184106, -0.913260,
		55.081669, 53.258713, 59.117943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.498272, 52.624279, 59.236267>,  <55.336048, 53.129837, 59.757225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.498272, 52.624279, 59.236267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.478981, 52.994156, 59.085213>,  <55.467407, 53.216084, 58.994579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.478981, 52.994156, 59.085213>,  <55.498272, 52.624279, 59.236267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.478981, 52.994156, 59.085213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984276, -0.020320, -0.175462,
		-0.169923, -0.380162, -0.909177,
		-0.048230, 0.924697, -0.377637,
		55.464512, 53.271564, 58.971920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.764019, 52.619534, 58.541756>,  <55.498272, 52.624279, 59.236267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.764019, 52.619534, 58.541756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.790649, 52.983307, 58.705948>,  <55.806629, 53.201572, 58.804462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.790649, 52.983307, 58.705948>,  <55.764019, 52.619534, 58.541756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.790649, 52.983307, 58.705948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951068, 0.066561, -0.301727,
		-0.301723, 0.410485, -0.860503,
		0.066578, 0.909435, 0.410482,
		55.810623, 53.256138, 58.829094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.104286, 53.164471, 58.037815>,  <55.764019, 52.619534, 58.541756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.104286, 53.164471, 58.037815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.180565, 53.269608, 58.416138>,  <56.226334, 53.332691, 58.643131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.180565, 53.269608, 58.416138>,  <56.104286, 53.164471, 58.037815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.180565, 53.269608, 58.416138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917327, 0.295314, -0.267023,
		-0.349495, 0.918533, -0.184797,
		0.190696, 0.262842, 0.945806,
		56.237774, 53.348461, 58.699879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.507538, 53.778976, 58.040424>,  <56.104286, 53.164471, 58.037815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.507538, 53.778976, 58.040424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.610985, 53.619003, 58.392143>,  <56.673054, 53.523018, 58.603176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.610985, 53.619003, 58.392143>,  <56.507538, 53.778976, 58.040424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.610985, 53.619003, 58.392143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964277, 0.160911, -0.210421,
		-0.057335, 0.902309, 0.427260,
		0.258616, -0.399932, 0.879302,
		56.688568, 53.499023, 58.655933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.974056, 54.249657, 58.299774>,  <56.507538, 53.778976, 58.040424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.974056, 54.249657, 58.299774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.025955, 53.874371, 58.428101>,  <57.057095, 53.649200, 58.505096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.025955, 53.874371, 58.428101>,  <56.974056, 54.249657, 58.299774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.025955, 53.874371, 58.428101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984518, 0.083437, -0.154154,
		0.117861, 0.335848, 0.934513,
		0.129746, -0.938213, 0.320814,
		57.064880, 53.592907, 58.524345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.532516, 54.111095, 58.853214>,  <56.974056, 54.249657, 58.299774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.532516, 54.111095, 58.853214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.506081, 53.752205, 58.678574>,  <57.490219, 53.536869, 58.573792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.506081, 53.752205, 58.678574>,  <57.532516, 54.111095, 58.853214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.506081, 53.752205, 58.678574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997034, -0.076671, 0.006626,
		-0.039419, -0.434864, 0.899633,
		-0.066094, -0.897226, -0.436597,
		57.486252, 53.483036, 58.547596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.861031, 53.732201, 58.271667>,  <57.532516, 54.111095, 58.853214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.861031, 53.732201, 58.271667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.868156, 53.334606, 58.314903>,  <57.872433, 53.096050, 58.340843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.868156, 53.334606, 58.314903>,  <57.861031, 53.732201, 58.271667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.868156, 53.334606, 58.314903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039868, -0.107314, -0.993425,
		0.999046, 0.022004, 0.037717,
		0.017812, -0.993982, 0.108089,
		57.873501, 53.036411, 58.347328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.499390, 53.512890, 57.903690>,  <57.861031, 53.732201, 58.271667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.499390, 53.512890, 57.903690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.212967, 53.236118, 57.940559>,  <58.041115, 53.070057, 57.962681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.212967, 53.236118, 57.940559>,  <58.499390, 53.512890, 57.903690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.212967, 53.236118, 57.940559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108677, -0.240944, -0.964435,
		0.689529, -0.680574, 0.247726,
		-0.716058, -0.691928, 0.092175,
		57.998150, 53.028542, 57.968212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.737690, 53.410603, 58.566090>,  <58.499390, 53.512890, 57.903690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.737690, 53.410603, 58.566090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.878952, 53.194164, 58.871376>,  <58.963707, 53.064301, 59.054546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.878952, 53.194164, 58.871376>,  <58.737690, 53.410603, 58.566090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.878952, 53.194164, 58.871376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931556, 0.127929, -0.340350,
		0.086525, 0.831172, 0.549241,
		0.353153, -0.541098, 0.763214,
		58.984898, 53.031834, 59.100342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.364372, 53.763176, 58.835705>,  <58.737690, 53.410603, 58.566090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.364372, 53.763176, 58.835705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.377556, 53.372787, 58.921860>,  <59.385468, 53.138554, 58.973553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.377556, 53.372787, 58.921860>,  <59.364372, 53.763176, 58.835705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.377556, 53.372787, 58.921860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912667, -0.058447, -0.404503,
		0.407372, 0.209905, 0.888812,
		0.032958, -0.975973, 0.215383,
		59.387444, 53.079994, 58.986473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.994362, 53.601612, 59.065689>,  <59.364372, 53.763176, 58.835705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.994362, 53.601612, 59.065689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.836281, 53.275753, 58.895905>,  <59.741432, 53.080238, 58.794033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.836281, 53.275753, 58.895905>,  <59.994362, 53.601612, 59.065689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.836281, 53.275753, 58.895905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809881, -0.090950, -0.579500,
		0.433485, -0.572779, 0.695712,
		-0.395201, -0.814648, -0.424458,
		59.717720, 53.031357, 58.768566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.276703, 53.559738, 59.818184>,  <59.994362, 53.601612, 59.065689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.276703, 53.559738, 59.818184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.221306, 53.400585, 60.180954>,  <60.188068, 53.305092, 60.398617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.221306, 53.400585, 60.180954>,  <60.276703, 53.559738, 59.818184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.221306, 53.400585, 60.180954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974239, -0.219309, 0.052554,
		0.177985, 0.890836, 0.418009,
		-0.138490, -0.397887, 0.906921,
		60.179760, 53.281219, 60.453030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.837318, 53.770851, 60.338791>,  <60.276703, 53.559738, 59.818184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.837318, 53.770851, 60.338791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.705734, 53.404202, 60.429642>,  <60.626785, 53.184212, 60.484154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.705734, 53.404202, 60.429642>,  <60.837318, 53.770851, 60.338791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.705734, 53.404202, 60.429642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944126, -0.324402, 0.058211,
		0.020325, 0.233590, 0.972123,
		-0.328956, -0.916624, 0.227132,
		60.607048, 53.129215, 60.497780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.616665, 53.953308, 60.542034>,  <60.837318, 53.770851, 60.338791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.616665, 53.953308, 60.542034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.666237, 53.670059, 60.263985>,  <61.695980, 53.500111, 60.097153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.666237, 53.670059, 60.263985>,  <61.616665, 53.953308, 60.542034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.666237, 53.670059, 60.263985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875207, 0.408120, -0.259713,
		0.467604, -0.576192, 0.670336,
		0.123934, -0.708125, -0.695126,
		61.703419, 53.457623, 60.055447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.299679, 53.720940, 60.647835>,  <61.616665, 53.953308, 60.542034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.299679, 53.720940, 60.647835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.189148, 53.680862, 60.265503>,  <62.122829, 53.656815, 60.036106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.189148, 53.680862, 60.265503>,  <62.299679, 53.720940, 60.647835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.189148, 53.680862, 60.265503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851467, 0.435706, -0.291829,
		0.445700, -0.894495, -0.035083,
		-0.276326, -0.100196, -0.955827,
		62.106251, 53.650803, 59.978756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.820839, 53.373619, 60.153526>,  <62.299679, 53.720940, 60.647835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.820839, 53.373619, 60.153526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.609665, 53.619892, 59.919525>,  <62.482960, 53.767654, 59.779125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.609665, 53.619892, 59.919525>,  <62.820839, 53.373619, 60.153526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.609665, 53.619892, 59.919525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845830, 0.443240, -0.296833,
		0.076540, -0.651517, -0.754763,
		-0.527932, 0.615682, -0.584999,
		62.451286, 53.804596, 59.744026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.145168, 53.392254, 59.364285>,  <62.820839, 53.373619, 60.153526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.145168, 53.392254, 59.364285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.945320, 53.724648, 59.462143>,  <62.825413, 53.924084, 59.520859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.945320, 53.724648, 59.462143>,  <63.145168, 53.392254, 59.364285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.945320, 53.724648, 59.462143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661570, 0.548350, -0.511506,
		-0.559203, -0.093708, -0.823718,
		-0.499617, 0.830982, 0.244645,
		62.795433, 53.973942, 59.535538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.807934, 53.459484, 58.793133>,  <63.145168, 53.392254, 59.364285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.807934, 53.459484, 58.793133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.880035, 53.785744, 59.013031>,  <62.923294, 53.981499, 59.144970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.880035, 53.785744, 59.013031>,  <62.807934, 53.459484, 58.793133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.880035, 53.785744, 59.013031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380376, 0.457619, -0.803678,
		-0.907097, 0.353974, -0.227768,
		0.180250, 0.815651, 0.549748,
		62.934109, 54.030437, 59.177956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.554272, 54.088299, 58.494667>,  <62.807934, 53.459484, 58.793133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.554272, 54.088299, 58.494667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.879784, 54.181080, 58.707817>,  <63.075092, 54.236748, 58.835709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.879784, 54.181080, 58.707817>,  <62.554272, 54.088299, 58.494667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.879784, 54.181080, 58.707817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377504, 0.486169, -0.788119,
		-0.441871, 0.842520, 0.308074,
		0.813782, 0.231948, 0.532878,
		63.123917, 54.250664, 58.867680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.748280, 54.716969, 58.266384>,  <62.554272, 54.088299, 58.494667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.748280, 54.716969, 58.266384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.083443, 54.550186, 58.407272>,  <63.284542, 54.450119, 58.491806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.083443, 54.550186, 58.407272>,  <62.748280, 54.716969, 58.266384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.083443, 54.550186, 58.407272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514871, 0.389626, -0.763609,
		0.181153, 0.821184, 0.541148,
		0.837909, -0.416951, 0.352222,
		63.334816, 54.425102, 58.512939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.346561, 55.162460, 58.502869>,  <62.748280, 54.716969, 58.266384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.346561, 55.162460, 58.502869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.486504, 54.818615, 58.353920>,  <63.570469, 54.612309, 58.264553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.486504, 54.818615, 58.353920>,  <63.346561, 55.162460, 58.502869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.486504, 54.818615, 58.353920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555287, 0.510422, -0.656602,
		0.754491, 0.022947, 0.655909,
		0.349857, -0.859618, -0.372367,
		63.591461, 54.560730, 58.242210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.861263, 55.401272, 58.073483>,  <63.346561, 55.162460, 58.502869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.861263, 55.401272, 58.073483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.905006, 55.006233, 58.028419>,  <63.931252, 54.769211, 58.001381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.905006, 55.006233, 58.028419>,  <63.861263, 55.401272, 58.073483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.905006, 55.006233, 58.028419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699128, 0.156983, -0.697550,
		0.706584, -0.002478, 0.707625,
		0.109357, -0.987598, -0.112654,
		63.937813, 54.709953, 57.994625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.519745, 55.253464, 58.086761>,  <63.861263, 55.401272, 58.073483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.519745, 55.253464, 58.086761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.371178, 54.949295, 57.873665>,  <64.282036, 54.766796, 57.745808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.371178, 54.949295, 57.873665>,  <64.519745, 55.253464, 58.086761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.371178, 54.949295, 57.873665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628535, 0.216386, -0.747075,
		0.683367, -0.612323, 0.397580,
		-0.371420, -0.760419, -0.532737,
		64.259750, 54.721169, 57.713844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.033455, 55.014923, 57.702618>,  <64.519745, 55.253464, 58.086761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.033455, 55.014923, 57.702618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.721428, 54.893970, 57.483513>,  <64.534210, 54.821400, 57.352051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.721428, 54.893970, 57.483513>,  <65.033455, 55.014923, 57.702618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.721428, 54.893970, 57.483513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513155, 0.191707, -0.836613,
		0.357986, -0.933710, 0.005622,
		-0.780076, -0.302380, -0.547766,
		64.487404, 54.803257, 57.319183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.467392, 55.549458, 57.748657>,  <65.033455, 55.014923, 57.702618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.467392, 55.549458, 57.748657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.525345, 55.423794, 57.373360>,  <65.560120, 55.348396, 57.148182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.525345, 55.423794, 57.373360>,  <65.467392, 55.549458, 57.748657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.525345, 55.423794, 57.373360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904775, -0.425880, 0.002882,
		-0.400486, 0.848486, -0.345950,
		0.144888, -0.314161, -0.938248,
		65.568810, 55.329544, 57.091885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.821793, 54.912281, 57.581459>,  <65.467392, 55.549458, 57.748657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.821793, 54.912281, 57.581459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.187019, 55.074951, 57.569168>,  <66.406151, 55.172554, 57.561794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.187019, 55.074951, 57.569168>,  <65.821793, 54.912281, 57.581459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.187019, 55.074951, 57.569168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395101, -0.900722, -0.180540,
		-0.101100, 0.152702, -0.983087,
		0.913058, 0.406671, -0.030730,
		66.460938, 55.196953, 57.559948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.189590, 54.377048, 57.266411>,  <65.821793, 54.912281, 57.581459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.189590, 54.377048, 57.266411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.474380, 54.634144, 57.379532>,  <66.645256, 54.788403, 57.447403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.474380, 54.634144, 57.379532>,  <66.189590, 54.377048, 57.266411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.474380, 54.634144, 57.379532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692970, -0.708210, -0.135026,
		0.113497, 0.292110, -0.949626,
		0.711977, 0.642737, 0.282803,
		66.687973, 54.826965, 57.464375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.748268, 54.270462, 56.749691>,  <66.189590, 54.377048, 57.266411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.748268, 54.270462, 56.749691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.883217, 54.389347, 57.106979>,  <66.964188, 54.460678, 57.321354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.883217, 54.389347, 57.106979>,  <66.748268, 54.270462, 56.749691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.883217, 54.389347, 57.106979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543828, -0.836035, 0.072780,
		0.768395, 0.461205, -0.443688,
		0.337372, 0.297214, 0.893221,
		66.984428, 54.478512, 57.374947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.480232, 54.335838, 56.768219>,  <66.748268, 54.270462, 56.749691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.480232, 54.335838, 56.768219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.311958, 54.241859, 57.118721>,  <67.210999, 54.185471, 57.329021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.311958, 54.241859, 57.118721>,  <67.480232, 54.335838, 56.768219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.311958, 54.241859, 57.118721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570329, -0.819637, 0.054039,
		0.705518, 0.522488, 0.478801,
		-0.420678, -0.234948, 0.876259,
		67.185753, 54.171375, 57.381599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.012131, 54.082035, 57.169037>,  <67.480232, 54.335838, 56.768219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.012131, 54.082035, 57.169037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.670135, 53.936943, 57.317314>,  <67.464935, 53.849888, 57.406281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.670135, 53.936943, 57.317314>,  <68.012131, 54.082035, 57.169037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.670135, 53.936943, 57.317314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488565, -0.803141, 0.340982,
		0.174036, 0.472645, 0.863897,
		-0.854995, -0.362726, 0.370693,
		67.413635, 53.828125, 57.428524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.873230, 53.852459, 57.977764>,  <68.012131, 54.082035, 57.169037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.873230, 53.852459, 57.977764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.657410, 53.609566, 57.744476>,  <67.527916, 53.463829, 57.604504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.657410, 53.609566, 57.744476>,  <67.873230, 53.852459, 57.977764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.657410, 53.609566, 57.744476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631260, -0.750129, 0.197019,
		-0.557127, -0.261860, 0.788060,
		-0.539555, -0.607236, -0.583219,
		67.495544, 53.427395, 57.569511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.625153, 54.405891, 58.434383>,  <67.873230, 53.852459, 57.977764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.625153, 54.405891, 58.434383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.985878, 54.344322, 58.595894>,  <68.202316, 54.307381, 58.692799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.985878, 54.344322, 58.595894>,  <67.625153, 54.405891, 58.434383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.985878, 54.344322, 58.595894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018335, 0.947196, 0.320132,
		-0.431728, -0.281298, 0.857019,
		0.901818, -0.153923, 0.403773,
		68.256424, 54.298145, 58.717026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.658531, 54.743546, 59.022278>,  <67.625153, 54.405891, 58.434383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.658531, 54.743546, 59.022278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.042419, 54.737858, 58.910042>,  <68.272751, 54.734444, 58.842701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.042419, 54.737858, 58.910042>,  <67.658531, 54.743546, 59.022278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.042419, 54.737858, 58.910042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175002, 0.811557, 0.557449,
		0.219789, -0.584101, 0.781357,
		0.959722, -0.014218, -0.280590,
		68.330338, 54.733593, 58.825863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.082359, 54.791611, 59.633385>,  <67.658531, 54.743546, 59.022278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.082359, 54.791611, 59.633385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.282539, 54.924095, 59.313423>,  <68.402649, 55.003586, 59.121445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.282539, 54.924095, 59.313423>,  <68.082359, 54.791611, 59.633385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.282539, 54.924095, 59.313423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289543, 0.806701, 0.515169,
		0.815912, -0.489425, 0.307817,
		0.500453, 0.331206, -0.799906,
		68.432671, 55.023457, 59.073452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.779663, 54.779652, 59.773483>,  <68.082359, 54.791611, 59.633385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.779663, 54.779652, 59.773483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.641365, 55.078163, 59.545967>,  <68.558388, 55.257271, 59.409458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.641365, 55.078163, 59.545967>,  <68.779663, 54.779652, 59.773483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.641365, 55.078163, 59.545967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373485, 0.665544, 0.646190,
		0.860794, 0.010983, -0.508835,
		-0.345748, 0.746278, -0.568794,
		68.537643, 55.302048, 59.375328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.323212, 55.158913, 59.424221>,  <68.779663, 54.779652, 59.773483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.323212, 55.158913, 59.424221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.001053, 55.384846, 59.496101>,  <68.807755, 55.520405, 59.539230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.001053, 55.384846, 59.496101>,  <69.323212, 55.158913, 59.424221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.001053, 55.384846, 59.496101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549637, 0.598201, 0.583142,
		0.221880, 0.568434, -0.792245,
		-0.805399, 0.564835, 0.179703,
		68.759430, 55.554295, 59.550011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.568573, 55.841190, 59.529476>,  <69.323212, 55.158913, 59.424221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.568573, 55.841190, 59.529476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.215607, 55.818947, 59.716339>,  <69.003822, 55.805599, 59.828457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.215607, 55.818947, 59.716339>,  <69.568573, 55.841190, 59.529476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.215607, 55.818947, 59.716339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303545, 0.691336, 0.655679,
		-0.359425, 0.720390, -0.593171,
		-0.882425, -0.055613, 0.467154,
		68.950882, 55.802261, 59.856487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.000252, 55.894325, 60.157566>,  <69.568573, 55.841190, 59.529476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.000252, 55.894325, 60.157566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.774277, 55.571129, 60.090622>,  <69.638695, 55.377213, 60.050457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.774277, 55.571129, 60.090622>,  <70.000252, 55.894325, 60.157566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.774277, 55.571129, 60.090622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671902, 0.568184, -0.475094,
		0.478959, -0.155949, -0.863874,
		-0.564930, -0.807989, -0.167355,
		69.604797, 55.328732, 60.040417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.731354, 55.563423, 60.196362>,  <70.000252, 55.894325, 60.157566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.731354, 55.563423, 60.196362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.071129, 55.602127, 60.403854>,  <71.274994, 55.625351, 60.528351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.071129, 55.602127, 60.403854>,  <70.731354, 55.563423, 60.196362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.071129, 55.602127, 60.403854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303550, 0.714504, -0.630350,
		-0.431628, 0.692908, 0.577560,
		0.849444, 0.096758, 0.518732,
		71.325958, 55.631153, 60.559475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.851463, 56.297138, 60.215931>,  <70.731354, 55.563423, 60.196362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.851463, 56.297138, 60.215931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.207420, 56.136536, 60.302536>,  <71.420998, 56.040173, 60.354500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.207420, 56.136536, 60.302536>,  <70.851463, 56.297138, 60.215931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.207420, 56.136536, 60.302536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452171, 0.713783, -0.534842,
		0.060203, 0.573853, 0.816743,
		0.889897, -0.401506, 0.216508,
		71.474388, 56.016083, 60.367489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.396713, 56.741280, 60.276035>,  <70.851463, 56.297138, 60.215931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.396713, 56.741280, 60.276035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.587280, 56.416969, 60.139992>,  <71.701622, 56.222385, 60.058365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.587280, 56.416969, 60.139992>,  <71.396713, 56.741280, 60.276035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.587280, 56.416969, 60.139992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648702, 0.585257, -0.486478,
		0.593474, 0.011137, 0.804776,
		0.476418, -0.810772, -0.340110,
		71.730209, 56.173737, 60.037960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.169762, 56.833275, 60.176800>,  <71.396713, 56.741280, 60.276035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.169762, 56.833275, 60.176800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.085815, 56.513668, 59.951401>,  <72.035446, 56.321903, 59.816162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.085815, 56.513668, 59.951401>,  <72.169762, 56.833275, 60.176800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.085815, 56.513668, 59.951401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566389, 0.370427, -0.736198,
		0.796970, -0.473656, 0.374818,
		-0.209862, -0.799020, -0.563493,
		72.022858, 56.273960, 59.782352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.922768, 56.964947, 60.107647>,  <72.169762, 56.833275, 60.176800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.922768, 56.964947, 60.107647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.912224, 56.932091, 60.506157>,  <72.905899, 56.912376, 60.745262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.912224, 56.932091, 60.506157>,  <72.922768, 56.964947, 60.107647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.912224, 56.932091, 60.506157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922419, 0.382121, 0.055909,
		-0.385289, 0.920454, 0.065699,
		-0.026357, -0.082143, 0.996272,
		72.904320, 56.907448, 60.805038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.269188, 57.552429, 60.226212>,  <72.922768, 56.964947, 60.107647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.269188, 57.552429, 60.226212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.298340, 57.340698, 60.564323>,  <73.315834, 57.213657, 60.767189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.298340, 57.340698, 60.564323>,  <73.269188, 57.552429, 60.226212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.298340, 57.340698, 60.564323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886500, 0.422700, 0.188263,
		-0.456953, 0.735618, 0.500060,
		0.072886, -0.529330, 0.845280,
		73.320206, 57.181900, 60.817905>
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
