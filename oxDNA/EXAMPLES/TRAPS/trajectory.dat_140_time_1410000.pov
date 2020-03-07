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
	<36.846069, 53.482960, 49.372162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667191, 53.264828, 49.655746>,  <36.559864, 53.133949, 49.825897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667191, 53.264828, 49.655746>,  <36.846069, 53.482960, 49.372162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667191, 53.264828, 49.655746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721594, -0.688319, -0.074285,
		0.528504, 0.478364, 0.701321,
		-0.447197, -0.545330, 0.708964,
		36.533031, 53.101231, 49.868435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318947, 53.130989, 49.647911>,  <36.846069, 53.482960, 49.372162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318947, 53.130989, 49.647911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040230, 52.947968, 49.868858>,  <36.872997, 52.838154, 50.001427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040230, 52.947968, 49.868858>,  <37.318947, 53.130989, 49.647911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040230, 52.947968, 49.868858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586949, -0.806376, 0.072452,
		0.412268, 0.374698, 0.830444,
		-0.696797, -0.457558, 0.552372,
		36.831192, 52.810699, 50.034569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996292, 52.944408, 49.751762>,  <37.318947, 53.130989, 49.647911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996292, 52.944408, 49.751762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038666, 53.137054, 50.099747>,  <38.064091, 53.252644, 50.308537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038666, 53.137054, 50.099747>,  <37.996292, 52.944408, 49.751762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038666, 53.137054, 50.099747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310537, -0.847145, 0.431175,
		0.944640, 0.224479, -0.239299,
		0.105931, 0.481616, 0.869956,
		38.070446, 53.281540, 50.360733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621323, 52.953011, 50.206573>,  <37.996292, 52.944408, 49.751762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621323, 52.953011, 50.206573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323242, 52.969563, 50.472794>,  <38.144394, 52.979496, 50.632526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323242, 52.969563, 50.472794>,  <38.621323, 52.953011, 50.206573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323242, 52.969563, 50.472794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490206, -0.642630, 0.588834,
		0.452070, 0.765059, 0.458604,
		-0.745205, 0.041383, 0.665550,
		38.099682, 52.981979, 50.672459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834560, 53.662189, 49.882252>,  <38.621323, 52.953011, 50.206573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834560, 53.662189, 49.882252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934704, 53.401108, 49.596230>,  <38.994789, 53.244461, 49.424618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934704, 53.401108, 49.596230>,  <38.834560, 53.662189, 49.882252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934704, 53.401108, 49.596230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131124, 0.754630, -0.642915,
		0.959232, 0.067200, 0.274514,
		0.250360, -0.652700, -0.715054,
		39.009811, 53.205299, 49.381714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252735, 54.123661, 49.691151>,  <38.834560, 53.662189, 49.882252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252735, 54.123661, 49.691151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011177, 54.224895, 49.993477>,  <37.866241, 54.285637, 50.174873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011177, 54.224895, 49.993477>,  <38.252735, 54.123661, 49.691151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011177, 54.224895, 49.993477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658508, -0.375844, 0.652003,
		0.449084, 0.891452, 0.060309,
		-0.603896, 0.253091, 0.755814,
		37.830009, 54.300823, 50.220222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408463, 54.724762, 50.150497>,  <38.252735, 54.123661, 49.691151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408463, 54.724762, 50.150497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214676, 54.424118, 50.329552>,  <38.098404, 54.243732, 50.436985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214676, 54.424118, 50.329552>,  <38.408463, 54.724762, 50.150497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214676, 54.424118, 50.329552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821333, -0.214632, 0.528530,
		-0.301171, 0.623713, 0.721303,
		-0.484466, -0.751608, 0.447635,
		38.069336, 54.198635, 50.463840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324928, 54.791069, 50.931477>,  <38.408463, 54.724762, 50.150497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324928, 54.791069, 50.931477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379482, 54.425163, 50.779366>,  <38.412212, 54.205620, 50.688099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379482, 54.425163, 50.779366>,  <38.324928, 54.791069, 50.931477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379482, 54.425163, 50.779366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820505, -0.110802, 0.560798,
		-0.555132, -0.388501, 0.735456,
		0.136380, -0.914762, -0.380277,
		38.420395, 54.150734, 50.665283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496723, 54.373783, 51.478943>,  <38.324928, 54.791069, 50.931477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496723, 54.373783, 51.478943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679535, 54.194244, 51.171783>,  <38.789223, 54.086521, 50.987488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679535, 54.194244, 51.171783>,  <38.496723, 54.373783, 51.478943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679535, 54.194244, 51.171783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763931, -0.244099, 0.597349,
		-0.455561, -0.859623, 0.231329,
		0.457028, -0.448848, -0.767894,
		38.816643, 54.059589, 50.941414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728992, 53.777157, 51.745014>,  <38.496723, 54.373783, 51.478943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728992, 53.777157, 51.745014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946049, 53.861141, 51.419693>,  <39.076283, 53.911533, 51.224503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946049, 53.861141, 51.419693>,  <38.728992, 53.777157, 51.745014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946049, 53.861141, 51.419693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839817, -0.117531, 0.529994,
		0.015692, -0.970619, -0.240109,
		0.542642, 0.209965, -0.813298,
		39.108841, 53.924129, 51.175705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118401, 53.218662, 51.613922>,  <38.728992, 53.777157, 51.745014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118401, 53.218662, 51.613922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286392, 53.560947, 51.493011>,  <39.387188, 53.766319, 51.420467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286392, 53.560947, 51.493011>,  <39.118401, 53.218662, 51.613922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286392, 53.560947, 51.493011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828309, -0.225328, 0.512963,
		0.370841, -0.465808, -0.803430,
		0.419978, 0.855716, -0.302272,
		39.412384, 53.817661, 51.402328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770149, 53.216511, 51.237484>,  <39.118401, 53.218662, 51.613922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770149, 53.216511, 51.237484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808670, 53.572983, 51.414806>,  <39.831783, 53.786865, 51.521202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808670, 53.572983, 51.414806>,  <39.770149, 53.216511, 51.237484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808670, 53.572983, 51.414806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947571, -0.218421, 0.233242,
		0.304688, 0.397605, -0.865491,
		0.096303, 0.891181, 0.443309,
		39.837563, 53.840336, 51.547798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316605, 53.552750, 51.047241>,  <39.770149, 53.216511, 51.237484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316605, 53.552750, 51.047241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281879, 53.707508, 51.414452>,  <40.261044, 53.800362, 51.634777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281879, 53.707508, 51.414452>,  <40.316605, 53.552750, 51.047241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281879, 53.707508, 51.414452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981784, -0.123109, 0.144721,
		0.169009, 0.913870, -0.369159,
		-0.086809, 0.386893, 0.918029,
		40.255836, 53.823578, 51.689861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588104, 54.355949, 51.193718>,  <40.316605, 53.552750, 51.047241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588104, 54.355949, 51.193718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630547, 54.075294, 51.475555>,  <40.656010, 53.906902, 51.644657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630547, 54.075294, 51.475555>,  <40.588104, 54.355949, 51.193718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630547, 54.075294, 51.475555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994107, 0.090668, -0.059414,
		-0.022196, 0.706742, 0.707123,
		0.106104, -0.701637, 0.704590,
		40.662376, 53.864803, 51.686932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121597, 54.581875, 51.718433>,  <40.588104, 54.355949, 51.193718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121597, 54.581875, 51.718433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099041, 54.184395, 51.679676>,  <41.085506, 53.945908, 51.656422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099041, 54.184395, 51.679676>,  <41.121597, 54.581875, 51.718433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099041, 54.184395, 51.679676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990182, -0.043228, -0.132929,
		0.127903, -0.103439, 0.986378,
		-0.056389, -0.993696, -0.096895,
		41.082123, 53.886288, 51.650608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611607, 54.355305, 52.075150>,  <41.121597, 54.581875, 51.718433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611607, 54.355305, 52.075150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533005, 54.054703, 51.823238>,  <41.485844, 53.874340, 51.672092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533005, 54.054703, 51.823238>,  <41.611607, 54.355305, 52.075150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533005, 54.054703, 51.823238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979966, -0.129276, -0.151506,
		0.032442, -0.646936, 0.761854,
		-0.196504, -0.751506, -0.629782,
		41.474052, 53.829250, 51.634304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868206, 53.673317, 52.349632>,  <41.611607, 54.355305, 52.075150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868206, 53.673317, 52.349632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870716, 53.703636, 51.950790>,  <41.872223, 53.721828, 51.711487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870716, 53.703636, 51.950790>,  <41.868206, 53.673317, 52.349632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870716, 53.703636, 51.950790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980980, -0.193918, -0.008572,
		-0.194006, -0.978085, -0.075571,
		0.006271, 0.075797, -0.997104,
		41.872597, 53.726376, 51.651661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016495, 53.003635, 51.914326>,  <41.868206, 53.673317, 52.349632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016495, 53.003635, 51.914326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142387, 53.343636, 51.745354>,  <42.217922, 53.547634, 51.643970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142387, 53.343636, 51.745354>,  <42.016495, 53.003635, 51.914326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142387, 53.343636, 51.745354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942330, -0.226426, 0.246467,
		0.113848, -0.475638, -0.872243,
		0.314727, 0.850000, -0.422429,
		42.236805, 53.598637, 51.618626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620022, 52.946537, 51.378445>,  <42.016495, 53.003635, 51.914326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620022, 52.946537, 51.378445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639751, 53.312332, 51.539082>,  <42.651588, 53.531811, 51.635464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639751, 53.312332, 51.539082>,  <42.620022, 52.946537, 51.378445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639751, 53.312332, 51.539082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938498, -0.180011, 0.294646,
		0.341742, 0.362364, -0.867124,
		0.049323, 0.914488, 0.401595,
		42.654549, 53.586678, 51.659561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225567, 53.238346, 51.116837>,  <42.620022, 52.946537, 51.378445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225567, 53.238346, 51.116837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081905, 53.336735, 51.476948>,  <42.995708, 53.395767, 51.693016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081905, 53.336735, 51.476948>,  <43.225567, 53.238346, 51.116837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081905, 53.336735, 51.476948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899838, -0.164652, 0.403958,
		0.247596, 0.955190, -0.162201,
		-0.359150, 0.245973, 0.900283,
		42.974159, 53.410526, 51.747032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585018, 53.670055, 51.509377>,  <43.225567, 53.238346, 51.116837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585018, 53.670055, 51.509377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416553, 53.448071, 51.796329>,  <43.315475, 53.314880, 51.968502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416553, 53.448071, 51.796329>,  <43.585018, 53.670055, 51.509377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416553, 53.448071, 51.796329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905699, -0.215202, 0.365236,
		-0.048308, 0.803559, 0.593261,
		-0.421159, -0.554960, 0.717387,
		43.290207, 53.281582, 52.011547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833241, 53.952152, 52.239868>,  <43.585018, 53.670055, 51.509377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833241, 53.952152, 52.239868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749062, 53.562859, 52.202911>,  <43.698555, 53.329285, 52.180737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749062, 53.562859, 52.202911>,  <43.833241, 53.952152, 52.239868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749062, 53.562859, 52.202911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933877, -0.228080, 0.275414,
		-0.289114, -0.028323, 0.956876,
		-0.210443, -0.973230, -0.092392,
		43.685928, 53.270889, 52.175194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640835, 53.770653, 52.164093>,  <43.833241, 53.952152, 52.239868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640835, 53.770653, 52.164093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673920, 54.053272, 51.882965>,  <44.693771, 54.222843, 51.714287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673920, 54.053272, 51.882965>,  <44.640835, 53.770653, 52.164093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673920, 54.053272, 51.882965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995859, -0.085304, 0.031439,
		-0.037741, -0.702509, -0.710674,
		0.082710, 0.706544, -0.702819,
		44.698734, 54.265236, 51.672119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.112659, 53.610909, 51.592167>,  <44.640835, 53.770653, 52.164093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.112659, 53.610909, 51.592167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106846, 54.008617, 51.634514>,  <45.103359, 54.247242, 51.659924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106846, 54.008617, 51.634514>,  <45.112659, 53.610909, 51.592167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106846, 54.008617, 51.634514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995340, 0.024480, -0.093272,
		-0.095330, 0.104019, -0.989996,
		-0.014533, 0.994274, 0.105867,
		45.102486, 54.306900, 51.666275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215019, 53.932274, 50.932281>,  <45.112659, 53.610909, 51.592167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215019, 53.932274, 50.932281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349007, 54.121147, 51.258430>,  <45.429398, 54.234470, 51.454121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349007, 54.121147, 51.258430>,  <45.215019, 53.932274, 50.932281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349007, 54.121147, 51.258430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940986, -0.212078, -0.263758,
		0.048379, 0.855606, -0.515362,
		0.334969, 0.472188, 0.815374,
		45.449497, 54.262802, 51.503044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638741, 54.551987, 50.730370>,  <45.215019, 53.932274, 50.932281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638741, 54.551987, 50.730370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757881, 54.415207, 51.086876>,  <45.829365, 54.333138, 51.300781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757881, 54.415207, 51.086876>,  <45.638741, 54.551987, 50.730370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.757881, 54.415207, 51.086876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938199, -0.067533, -0.339444,
		0.176262, 0.937289, 0.300701,
		0.297850, -0.341948, 0.891267,
		45.847237, 54.312622, 51.354256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243176, 54.941349, 51.076862>,  <45.638741, 54.551987, 50.730370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243176, 54.941349, 51.076862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241417, 54.559006, 51.194378>,  <46.240360, 54.329597, 51.264889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241417, 54.559006, 51.194378>,  <46.243176, 54.941349, 51.076862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241417, 54.559006, 51.194378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956293, -0.089921, -0.278240,
		0.292376, 0.279725, 0.914478,
		-0.004400, -0.955860, 0.293790,
		46.240097, 54.272247, 51.282516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.775990, 54.820717, 51.586784>,  <46.243176, 54.941349, 51.076862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.775990, 54.820717, 51.586784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726593, 54.485359, 51.374432>,  <46.696957, 54.284145, 51.247021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726593, 54.485359, 51.374432>,  <46.775990, 54.820717, 51.586784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726593, 54.485359, 51.374432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979497, -0.017168, -0.200723,
		0.159172, -0.544788, 0.823329,
		-0.123487, -0.838398, -0.530886,
		46.689548, 54.233841, 51.215164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389038, 54.306404, 51.833073>,  <46.775990, 54.820717, 51.586784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389038, 54.306404, 51.833073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.274071, 54.248634, 51.454330>,  <47.205090, 54.213974, 51.227085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.274071, 54.248634, 51.454330>,  <47.389038, 54.306404, 51.833073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.274071, 54.248634, 51.454330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918236, 0.239657, -0.315289,
		0.272455, -0.960055, 0.063733,
		-0.287421, -0.144424, -0.946853,
		47.187843, 54.205307, 51.170273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.888317, 53.854824, 51.392681>,  <47.389038, 54.306404, 51.833073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.888317, 53.854824, 51.392681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707119, 54.141953, 51.181198>,  <47.598400, 54.314232, 51.054310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707119, 54.141953, 51.181198>,  <47.888317, 53.854824, 51.392681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.707119, 54.141953, 51.181198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891047, 0.383734, -0.242451,
		0.028845, -0.580928, -0.813444,
		-0.452993, 0.717823, -0.528703,
		47.571220, 54.357300, 51.022587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.020660, 53.832363, 50.634197>,  <47.888317, 53.854824, 51.392681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.020660, 53.832363, 50.634197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.959774, 54.191833, 50.798737>,  <47.923241, 54.407516, 50.897461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.959774, 54.191833, 50.798737>,  <48.020660, 53.832363, 50.634197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.959774, 54.191833, 50.798737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904734, 0.294236, -0.308028,
		-0.397853, 0.325278, -0.857851,
		-0.152216, 0.898676, 0.411352,
		47.914108, 54.461437, 50.922142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.291107, 54.207832, 50.112637>,  <48.020660, 53.832363, 50.634197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.291107, 54.207832, 50.112637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.282497, 54.411835, 50.456596>,  <48.277332, 54.534237, 50.662971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.282497, 54.411835, 50.456596>,  <48.291107, 54.207832, 50.112637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.282497, 54.411835, 50.456596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959071, 0.253435, -0.126307,
		-0.282347, 0.821989, -0.494585,
		-0.021522, 0.510005, 0.859902,
		48.276039, 54.564835, 50.714565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.406857, 54.939850, 49.959488>,  <48.291107, 54.207832, 50.112637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.406857, 54.939850, 49.959488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.524601, 54.798233, 50.314568>,  <48.595249, 54.713264, 50.527615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.524601, 54.798233, 50.314568>,  <48.406857, 54.939850, 49.959488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.524601, 54.798233, 50.314568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942231, 0.262868, -0.207608,
		-0.159846, 0.897528, 0.410965,
		0.294363, -0.354039, 0.887697,
		48.612911, 54.692020, 50.580875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.868057, 55.426903, 50.249920>,  <48.406857, 54.939850, 49.959488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.868057, 55.426903, 50.249920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.952888, 55.076256, 50.422695>,  <49.003788, 54.865868, 50.526360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.952888, 55.076256, 50.422695>,  <48.868057, 55.426903, 50.249920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.952888, 55.076256, 50.422695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976700, 0.175261, -0.123859,
		0.032875, 0.448139, 0.893359,
		0.212077, -0.876615, 0.431936,
		49.016510, 54.813271, 50.552277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.618732, 55.559780, 50.612488>,  <48.868057, 55.426903, 50.249920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.618732, 55.559780, 50.612488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.569210, 55.163013, 50.601357>,  <49.539497, 54.924953, 50.594677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.569210, 55.163013, 50.601357>,  <49.618732, 55.559780, 50.612488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.569210, 55.163013, 50.601357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964012, -0.126877, 0.233629,
		-0.235271, 0.002095, 0.971928,
		-0.123805, -0.991916, -0.027831,
		49.532070, 54.865440, 50.593006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.918159, 55.311779, 51.220783>,  <49.618732, 55.559780, 50.612488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.918159, 55.311779, 51.220783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.921268, 55.028088, 50.938812>,  <49.923134, 54.857872, 50.769630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.921268, 55.028088, 50.938812>,  <49.918159, 55.311779, 51.220783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.921268, 55.028088, 50.938812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946097, -0.223046, 0.234843,
		-0.323791, -0.668759, 0.669269,
		0.007775, -0.709233, -0.704932,
		49.923599, 54.815319, 50.727333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.250633, 54.663673, 51.580818>,  <49.918159, 55.311779, 51.220783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.250633, 54.663673, 51.580818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.319469, 54.686226, 51.187431>,  <50.360771, 54.699757, 50.951401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.319469, 54.686226, 51.187431>,  <50.250633, 54.663673, 51.580818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.319469, 54.686226, 51.187431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983053, -0.073847, 0.167787,
		-0.063166, -0.995675, -0.068135,
		0.172093, 0.056382, -0.983466,
		50.371098, 54.703140, 50.892391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.876598, 54.201916, 51.324657>,  <50.250633, 54.663673, 51.580818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.876598, 54.201916, 51.324657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.856163, 54.470104, 51.028587>,  <50.843903, 54.631016, 50.850945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.856163, 54.470104, 51.028587>,  <50.876598, 54.201916, 51.324657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.856163, 54.470104, 51.028587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998170, 0.010276, -0.059581,
		-0.032341, -0.741868, -0.669766,
		-0.051084, 0.670467, -0.740179,
		50.840839, 54.671246, 50.806534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.386806, 53.951454, 50.992664>,  <50.876598, 54.201916, 51.324657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.386806, 53.951454, 50.992664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.306744, 54.327072, 50.880859>,  <51.258705, 54.552444, 50.813774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.306744, 54.327072, 50.880859>,  <51.386806, 53.951454, 50.992664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.306744, 54.327072, 50.880859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970898, 0.151804, -0.185235,
		-0.131513, -0.308457, -0.942103,
		-0.200153, 0.939047, -0.279516,
		51.246696, 54.608788, 50.797005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.644623, 54.048321, 50.335819>,  <51.386806, 53.951454, 50.992664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.644623, 54.048321, 50.335819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.632721, 54.411209, 50.503654>,  <51.625580, 54.628944, 50.604355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.632721, 54.411209, 50.503654>,  <51.644623, 54.048321, 50.335819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.632721, 54.411209, 50.503654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946719, 0.160252, -0.279361,
		-0.320684, 0.388924, -0.863655,
		-0.029753, 0.907225, 0.419592,
		51.623795, 54.683376, 50.629532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.765755, 54.525921, 49.861137>,  <51.644623, 54.048321, 50.335819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.765755, 54.525921, 49.861137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.869953, 54.687454, 50.211922>,  <51.932472, 54.784374, 50.422394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.869953, 54.687454, 50.211922>,  <51.765755, 54.525921, 49.861137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.869953, 54.687454, 50.211922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954870, 0.026488, -0.295840,
		-0.142698, 0.914451, -0.378704,
		0.260500, 0.403829, 0.876962,
		51.948105, 54.808601, 50.475010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.275349, 55.075111, 49.692860>,  <51.765755, 54.525921, 49.861137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.275349, 55.075111, 49.692860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.301502, 54.944614, 50.070068>,  <52.317196, 54.866318, 50.296394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.301502, 54.944614, 50.070068>,  <52.275349, 55.075111, 49.692860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.301502, 54.944614, 50.070068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997577, -0.001146, -0.069562,
		0.023775, 0.945287, 0.325374,
		0.065383, -0.326239, 0.943023,
		52.321117, 54.846741, 50.352974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.765339, 55.430573, 50.052094>,  <52.275349, 55.075111, 49.692860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.765339, 55.430573, 50.052094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.735992, 55.082939, 50.247772>,  <52.718384, 54.874359, 50.365177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.735992, 55.082939, 50.247772>,  <52.765339, 55.430573, 50.052094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.735992, 55.082939, 50.247772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989144, -0.126035, -0.075555,
		0.127319, 0.478339, 0.868897,
		-0.073371, -0.869084, 0.489193,
		52.713982, 54.822212, 50.394531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.244583, 55.369385, 50.586048>,  <52.765339, 55.430573, 50.052094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.244583, 55.369385, 50.586048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.165401, 54.979912, 50.540863>,  <53.117893, 54.746227, 50.513752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.165401, 54.979912, 50.540863>,  <53.244583, 55.369385, 50.586048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.165401, 54.979912, 50.540863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966716, -0.212984, 0.141766,
		-0.162095, -0.081143, 0.983433,
		-0.197952, -0.973681, -0.112966,
		53.106014, 54.687809, 50.506973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.515297, 54.971409, 51.159283>,  <53.244583, 55.369385, 50.586048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.515297, 54.971409, 51.159283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.506237, 54.733177, 50.838093>,  <53.500801, 54.590237, 50.645378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.506237, 54.733177, 50.838093>,  <53.515297, 54.971409, 51.159283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.506237, 54.733177, 50.838093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964882, -0.223274, 0.138385,
		-0.261704, -0.771644, 0.579722,
		-0.022653, -0.595579, -0.802977,
		53.499439, 54.554504, 50.597198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.654415, 55.218872, 51.875664>,  <53.515297, 54.971409, 51.159283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.654415, 55.218872, 51.875664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.544941, 55.597191, 51.805737>,  <53.479256, 55.824181, 51.763779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.544941, 55.597191, 51.805737>,  <53.654415, 55.218872, 51.875664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.544941, 55.597191, 51.805737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559019, 0.304330, 0.771285,
		0.782683, 0.113364, -0.612010,
		-0.273689, 0.945797, -0.174822,
		53.462833, 55.880928, 51.753288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.237804, 55.668144, 51.684311>,  <53.654415, 55.218872, 51.875664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.237804, 55.668144, 51.684311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.940235, 55.864853, 51.865303>,  <53.761692, 55.982880, 51.973900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.940235, 55.864853, 51.865303>,  <54.237804, 55.668144, 51.684311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.940235, 55.864853, 51.865303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587629, 0.158956, 0.793363,
		0.318229, 0.856092, -0.407230,
		-0.743924, 0.491771, 0.452481,
		53.717056, 56.012383, 52.001049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.475357, 56.377209, 51.913464>,  <54.237804, 55.668144, 51.684311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.475357, 56.377209, 51.913464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.260429, 56.144642, 52.157837>,  <54.131474, 56.005104, 52.304462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.260429, 56.144642, 52.157837>,  <54.475357, 56.377209, 51.913464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.260429, 56.144642, 52.157837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759426, -0.018485, 0.650331,
		-0.366818, 0.813398, 0.451473,
		-0.537324, -0.581414, 0.610935,
		54.099232, 55.970219, 52.341118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.259205, 56.606380, 52.652493>,  <54.475357, 56.377209, 51.913464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.259205, 56.606380, 52.652493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.355545, 56.218246, 52.644016>,  <54.413349, 55.985367, 52.638931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.355545, 56.218246, 52.644016>,  <54.259205, 56.606380, 52.652493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.355545, 56.218246, 52.644016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853367, 0.201314, 0.480872,
		-0.462340, -0.133897, 0.876535,
		0.240846, -0.970332, -0.021188,
		54.427799, 55.927147, 52.637661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.479084, 56.911697, 53.355751>,  <54.259205, 56.606380, 52.652493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.479084, 56.911697, 53.355751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.665779, 56.905697, 53.709457>,  <54.777798, 56.902096, 53.921680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.665779, 56.905697, 53.709457>,  <54.479084, 56.911697, 53.355751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.665779, 56.905697, 53.709457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778605, -0.467223, -0.418899,
		0.419436, 0.884012, -0.206389,
		0.466741, -0.015006, 0.884266,
		54.805801, 56.901196, 53.974739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.258755, 57.120804, 53.327904>,  <54.479084, 56.911697, 53.355751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.258755, 57.120804, 53.327904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.196129, 56.877441, 53.639114>,  <55.158554, 56.731422, 53.825840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.196129, 56.877441, 53.639114>,  <55.258755, 57.120804, 53.327904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.196129, 56.877441, 53.639114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678273, -0.638845, -0.363075,
		0.717937, 0.470870, 0.512687,
		-0.156566, -0.608406, 0.778029,
		55.149158, 56.694920, 53.872524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.835804, 56.985420, 53.769897>,  <55.258755, 57.120804, 53.327904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.835804, 56.985420, 53.769897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.589005, 56.671791, 53.796841>,  <55.440926, 56.483612, 53.813007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.589005, 56.671791, 53.796841>,  <55.835804, 56.985420, 53.769897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.589005, 56.671791, 53.796841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671057, -0.568908, -0.475423,
		0.411089, -0.248133, 0.877175,
		-0.617000, -0.784075, 0.067360,
		55.403904, 56.436569, 53.817047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.187138, 56.471676, 54.186348>,  <55.835804, 56.985420, 53.769897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.187138, 56.471676, 54.186348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.928375, 56.356590, 53.903862>,  <55.773117, 56.287540, 53.734371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.928375, 56.356590, 53.903862>,  <56.187138, 56.471676, 54.186348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.928375, 56.356590, 53.903862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723365, -0.524647, -0.448873,
		-0.241367, -0.801228, 0.547517,
		-0.646903, -0.287712, -0.706214,
		55.734303, 56.270275, 53.691998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.645439, 56.672817, 53.514671>,  <56.187138, 56.471676, 54.186348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.645439, 56.672817, 53.514671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.672661, 56.390076, 53.233040>,  <56.688995, 56.220432, 53.064060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.672661, 56.390076, 53.233040>,  <56.645439, 56.672817, 53.514671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.672661, 56.390076, 53.233040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996305, 0.085207, 0.010761,
		0.052386, -0.702212, 0.710038,
		0.068057, -0.706851, -0.704081,
		56.693077, 56.178020, 53.021816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.090809, 56.057327, 53.639946>,  <56.645439, 56.672817, 53.514671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.090809, 56.057327, 53.639946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.117172, 56.142780, 53.250072>,  <57.132992, 56.194054, 53.016148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.117172, 56.142780, 53.250072>,  <57.090809, 56.057327, 53.639946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.117172, 56.142780, 53.250072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983866, 0.148906, 0.099170,
		0.166323, -0.965499, -0.200371,
		0.065912, 0.213632, -0.974688,
		57.136948, 56.206871, 52.957664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.620304, 55.575893, 53.233200>,  <57.090809, 56.057327, 53.639946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.620304, 55.575893, 53.233200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.590149, 55.954544, 53.107849>,  <57.572056, 56.181736, 53.032639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.590149, 55.954544, 53.107849>,  <57.620304, 55.575893, 53.233200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.590149, 55.954544, 53.107849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952923, 0.160959, 0.256965,
		0.293692, -0.279252, -0.914201,
		-0.075391, 0.946631, -0.313378,
		57.567532, 56.238533, 53.013836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.974823, 55.641460, 52.618053>,  <57.620304, 55.575893, 53.233200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.974823, 55.641460, 52.618053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.969528, 55.995625, 52.803902>,  <57.966351, 56.208122, 52.915409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.969528, 55.995625, 52.803902>,  <57.974823, 55.641460, 52.618053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.969528, 55.995625, 52.803902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968206, -0.104737, 0.227172,
		0.249803, 0.452854, -0.855875,
		-0.013234, 0.885411, 0.464620,
		57.965557, 56.261250, 52.943287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.438728, 56.098049, 52.342648>,  <57.974823, 55.641460, 52.618053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.438728, 56.098049, 52.342648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.403435, 56.153522, 52.737206>,  <58.382259, 56.186806, 52.973942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.403435, 56.153522, 52.737206>,  <58.438728, 56.098049, 52.342648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.403435, 56.153522, 52.737206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969394, -0.215809, 0.117054,
		0.229107, 0.966536, -0.115401,
		-0.088232, 0.138687, 0.986398,
		58.376965, 56.195129, 53.033127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.034481, 56.482349, 52.703503>,  <58.438728, 56.098049, 52.342648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.034481, 56.482349, 52.703503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.863228, 56.250450, 52.980804>,  <58.760475, 56.111313, 53.147186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.863228, 56.250450, 52.980804>,  <59.034481, 56.482349, 52.703503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.863228, 56.250450, 52.980804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902522, -0.313740, 0.294995,
		0.046480, 0.751973, 0.657553,
		-0.428128, -0.579745, 0.693255,
		58.734791, 56.076527, 53.188782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.432316, 56.739975, 53.180420>,  <59.034481, 56.482349, 52.703503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.432316, 56.739975, 53.180420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.278152, 56.388081, 53.291794>,  <59.185654, 56.176945, 53.358620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.278152, 56.388081, 53.291794>,  <59.432316, 56.739975, 53.180420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.278152, 56.388081, 53.291794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866009, -0.240668, 0.438300,
		-0.318578, 0.410052, 0.854615,
		-0.385404, -0.879737, 0.278437,
		59.162533, 56.124161, 53.375324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.918583, 56.726402, 53.741779>,  <59.432316, 56.739975, 53.180420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.918583, 56.726402, 53.741779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.225151, 56.817524, 53.501549>,  <60.409092, 56.872196, 53.357410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.225151, 56.817524, 53.501549>,  <59.918583, 56.726402, 53.741779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.225151, 56.817524, 53.501549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452081, 0.472904, 0.756297,
		0.456295, -0.851159, 0.259467,
		0.766432, 0.227794, -0.600576,
		60.455078, 56.885864, 53.321373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.492615, 56.511028, 54.106838>,  <59.918583, 56.726402, 53.741779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.492615, 56.511028, 54.106838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.570816, 56.814991, 53.858868>,  <60.617737, 56.997368, 53.710083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.570816, 56.814991, 53.858868>,  <60.492615, 56.511028, 54.106838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.570816, 56.814991, 53.858868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457723, 0.488350, 0.742970,
		0.867333, -0.429012, -0.252352,
		0.195507, 0.759910, -0.619931,
		60.629467, 57.042965, 53.672890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.024712, 55.898525, 53.863750>,  <60.492615, 56.511028, 54.106838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.024712, 55.898525, 53.863750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.232834, 56.208546, 53.720322>,  <61.357708, 56.394558, 53.634266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.232834, 56.208546, 53.720322>,  <61.024712, 55.898525, 53.863750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.232834, 56.208546, 53.720322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677225, -0.630268, -0.379643,
		-0.520240, -0.045303, -0.852818,
		0.520305, 0.775055, -0.358571,
		61.388924, 56.441063, 53.612751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.208584, 55.918800, 53.064220>,  <61.024712, 55.898525, 53.863750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.208584, 55.918800, 53.064220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.480247, 56.099422, 53.295681>,  <61.643246, 56.207794, 53.434559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.480247, 56.099422, 53.295681>,  <61.208584, 55.918800, 53.064220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.480247, 56.099422, 53.295681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732815, -0.461750, -0.499769,
		0.041520, 0.763469, -0.644509,
		0.679160, 0.451556, 0.578653,
		61.683994, 56.234890, 53.469276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.156113, 56.166153, 52.430599>,  <61.208584, 55.918800, 53.064220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.156113, 56.166153, 52.430599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.440590, 56.387718, 52.603752>,  <61.611275, 56.520657, 52.707642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.440590, 56.387718, 52.603752>,  <61.156113, 56.166153, 52.430599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.440590, 56.387718, 52.603752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633300, -0.772127, -0.052453,
		0.305183, 0.311446, -0.899925,
		0.711192, 0.553915, 0.432878,
		61.653946, 56.553894, 52.733616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.672245, 55.961575, 52.060169>,  <61.156113, 56.166153, 52.430599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.672245, 55.961575, 52.060169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.748978, 56.066727, 52.438396>,  <61.795017, 56.129818, 52.665333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.748978, 56.066727, 52.438396>,  <61.672245, 55.961575, 52.060169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.748978, 56.066727, 52.438396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518841, -0.844981, 0.129660,
		0.833070, 0.465726, -0.298485,
		0.191828, 0.262883, 0.945566,
		61.806526, 56.145592, 52.722065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.379475, 55.756340, 52.126755>,  <61.672245, 55.961575, 52.060169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.379475, 55.756340, 52.126755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.188530, 55.758438, 52.478233>,  <62.073963, 55.759697, 52.689121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.188530, 55.758438, 52.478233>,  <62.379475, 55.756340, 52.126755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.188530, 55.758438, 52.478233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526634, -0.798781, 0.290871,
		0.703410, 0.601599, 0.378541,
		-0.477359, 0.005250, 0.878693,
		62.045322, 55.760014, 52.741840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.827225, 55.858006, 52.779171>,  <62.379475, 55.756340, 52.126755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.827225, 55.858006, 52.779171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.498825, 55.642746, 52.855438>,  <62.301785, 55.513588, 52.901199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.498825, 55.642746, 52.855438>,  <62.827225, 55.858006, 52.779171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.498825, 55.642746, 52.855438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562841, -0.818916, 0.112188,
		0.095764, 0.199420, 0.975223,
		-0.820999, -0.538152, 0.190664,
		62.252525, 55.481300, 52.912636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.807156, 56.667969, 52.809742>,  <62.827225, 55.858006, 52.779171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.807156, 56.667969, 52.809742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.785683, 56.704365, 53.207504>,  <62.772800, 56.726204, 53.446159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.785683, 56.704365, 53.207504>,  <62.807156, 56.667969, 52.809742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.785683, 56.704365, 53.207504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804786, -0.585580, 0.097029,
		0.591132, 0.805491, -0.041796,
		-0.053681, 0.090994, 0.994404,
		62.769577, 56.731663, 53.505825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.490597, 56.686443, 53.059429>,  <62.807156, 56.667969, 52.809742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.490597, 56.686443, 53.059429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.236870, 56.568840, 53.345421>,  <63.084633, 56.498276, 53.517017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.236870, 56.568840, 53.345421>,  <63.490597, 56.686443, 53.059429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.236870, 56.568840, 53.345421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660999, -0.685883, 0.304377,
		0.400903, 0.665674, 0.629408,
		-0.634316, -0.294012, 0.714982,
		63.046574, 56.480637, 53.559914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.712418, 56.849503, 53.832539>,  <63.490597, 56.686443, 53.059429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.712418, 56.849503, 53.832539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.498032, 56.519138, 53.762550>,  <63.369400, 56.320919, 53.720558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.498032, 56.519138, 53.762550>,  <63.712418, 56.849503, 53.832539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.498032, 56.519138, 53.762550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818213, -0.559231, 0.133374,
		-0.208004, -0.071679, 0.975498,
		-0.535969, -0.825907, -0.174970,
		63.337242, 56.271366, 53.710060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.745205, 56.410625, 54.308014>,  <63.712418, 56.849503, 53.832539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.745205, 56.410625, 54.308014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.696884, 56.167114, 53.994377>,  <63.667892, 56.021008, 53.806194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.696884, 56.167114, 53.994377>,  <63.745205, 56.410625, 54.308014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.696884, 56.167114, 53.994377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917620, -0.369778, 0.145730,
		-0.378657, -0.701891, 0.603298,
		-0.120800, -0.608780, -0.784088,
		63.660645, 55.984482, 53.759151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.879650, 55.650803, 54.574604>,  <63.745205, 56.410625, 54.308014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.879650, 55.650803, 54.574604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.961639, 55.712410, 54.187973>,  <64.010834, 55.749374, 53.955994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.961639, 55.712410, 54.187973>,  <63.879650, 55.650803, 54.574604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.961639, 55.712410, 54.187973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949588, -0.270626, 0.158251,
		-0.237208, -0.950285, -0.201722,
		0.204974, 0.154014, -0.966574,
		64.023132, 55.758614, 53.898003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.873337, 55.994995, 55.316471>,  <63.879650, 55.650803, 54.574604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.873337, 55.994995, 55.316471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.780602, 55.607018, 55.286896>,  <63.724960, 55.374233, 55.269150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.780602, 55.607018, 55.286896>,  <63.873337, 55.994995, 55.316471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.780602, 55.607018, 55.286896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838207, -0.237767, 0.490791,
		-0.493618, 0.051810, 0.868134,
		-0.231841, -0.969940, -0.073938,
		63.711048, 55.316036, 55.264713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.616302, 55.822678, 55.898930>,  <63.873337, 55.994995, 55.316471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.616302, 55.822678, 55.898930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.821228, 55.517303, 55.741600>,  <63.944183, 55.334080, 55.647202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.821228, 55.517303, 55.741600>,  <63.616302, 55.822678, 55.898930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.821228, 55.517303, 55.741600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738052, 0.157224, 0.656171,
		-0.439101, -0.626462, 0.644000,
		0.512318, -0.763431, -0.393324,
		63.974922, 55.288273, 55.623604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.716923, 55.251163, 56.401894>,  <63.616302, 55.822678, 55.898930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.716923, 55.251163, 56.401894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.002914, 55.355095, 56.142265>,  <64.174507, 55.417454, 55.986488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.002914, 55.355095, 56.142265>,  <63.716923, 55.251163, 56.401894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.002914, 55.355095, 56.142265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582285, 0.292560, 0.758520,
		0.386979, -0.920270, 0.057879,
		0.714976, 0.259829, -0.649074,
		64.217407, 55.433044, 55.947544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.321960, 55.279114, 56.696606>,  <63.716923, 55.251163, 56.401894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.321960, 55.279114, 56.696606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.516281, 55.435192, 56.383751>,  <64.632874, 55.528839, 56.196037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.516281, 55.435192, 56.383751>,  <64.321960, 55.279114, 56.696606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.516281, 55.435192, 56.383751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777866, 0.215117, 0.590465,
		0.398646, -0.895251, -0.199013,
		0.485804, 0.390192, -0.782141,
		64.662025, 55.552250, 56.149109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.860039, 54.840710, 56.496799>,  <64.321960, 55.279114, 56.696606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.860039, 54.840710, 56.496799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.944656, 55.223515, 56.417419>,  <64.995422, 55.453197, 56.369793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.944656, 55.223515, 56.417419>,  <64.860039, 54.840710, 56.496799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.944656, 55.223515, 56.417419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759712, -0.033263, 0.649408,
		0.614890, -0.288139, -0.734089,
		0.211538, 0.957011, -0.198450,
		65.008118, 55.510616, 56.357883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.567345, 54.973564, 56.312004>,  <64.860039, 54.840710, 56.496799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.567345, 54.973564, 56.312004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.440750, 55.301582, 56.502739>,  <65.364792, 55.498394, 56.617180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.440750, 55.301582, 56.502739>,  <65.567345, 54.973564, 56.312004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.440750, 55.301582, 56.502739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743253, -0.097973, 0.661797,
		0.589418, 0.563857, -0.578491,
		-0.316482, 0.820041, 0.476835,
		65.345802, 55.547596, 56.645790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.051613, 55.530632, 56.312080>,  <65.567345, 54.973564, 56.312004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.051613, 55.530632, 56.312080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.807419, 55.489342, 56.626190>,  <65.660904, 55.464569, 56.814655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.807419, 55.489342, 56.626190>,  <66.051613, 55.530632, 56.312080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.807419, 55.489342, 56.626190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789025, 0.007000, 0.614321,
		-0.068909, 0.994634, 0.077172,
		-0.610484, -0.103223, 0.785274,
		65.624275, 55.458374, 56.861771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.373337, 55.876553, 56.879692>,  <66.051613, 55.530632, 56.312080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.373337, 55.876553, 56.879692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.094780, 55.628185, 57.023643>,  <65.927650, 55.479164, 57.110012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.094780, 55.628185, 57.023643>,  <66.373337, 55.876553, 56.879692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.094780, 55.628185, 57.023643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567582, -0.169620, 0.805655,
		-0.439204, 0.765304, 0.470542,
		-0.696384, -0.620918, 0.359875,
		65.885864, 55.441910, 57.131607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.202690, 56.058857, 57.728748>,  <66.373337, 55.876553, 56.879692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.202690, 56.058857, 57.728748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.194077, 55.683479, 57.590851>,  <66.188911, 55.458252, 57.508110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.194077, 55.683479, 57.590851>,  <66.202690, 56.058857, 57.728748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.194077, 55.683479, 57.590851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563998, -0.296118, 0.770857,
		-0.825495, -0.177844, 0.535658,
		-0.021526, -0.938449, -0.344748,
		66.187622, 55.401943, 57.487427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.085838, 55.563126, 58.296871>,  <66.202690, 56.058857, 57.728748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.085838, 55.563126, 58.296871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.272636, 55.349800, 58.014740>,  <66.384720, 55.221806, 57.845463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.272636, 55.349800, 58.014740>,  <66.085838, 55.563126, 58.296871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.272636, 55.349800, 58.014740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682952, -0.289131, 0.670805,
		-0.561681, -0.794972, 0.229203,
		0.467002, -0.533313, -0.705328,
		66.412735, 55.189808, 57.803143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.479744, 56.190357, 58.844635>,  <66.085838, 55.563126, 58.296871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.479744, 56.190357, 58.844635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.549721, 56.382595, 58.500908>,  <66.591705, 56.497940, 58.294674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.549721, 56.382595, 58.500908>,  <66.479744, 56.190357, 58.844635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.549721, 56.382595, 58.500908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908648, 0.257292, 0.328877,
		0.379153, -0.838348, -0.391684,
		0.174936, 0.480598, -0.859315,
		66.602203, 56.526775, 58.243114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.055817, 55.896492, 58.494659>,  <66.479744, 56.190357, 58.844635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.055817, 55.896492, 58.494659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.006241, 56.289886, 58.441910>,  <66.976494, 56.525925, 58.410259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.006241, 56.289886, 58.441910>,  <67.055817, 55.896492, 58.494659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.006241, 56.289886, 58.441910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978592, 0.143142, 0.147879,
		0.164314, -0.110721, -0.980174,
		-0.123931, 0.983489, -0.131871,
		66.969063, 56.584934, 58.402348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.647469, 56.237652, 58.341930>,  <67.055817, 55.896492, 58.494659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.647469, 56.237652, 58.341930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.446877, 56.534386, 58.520012>,  <67.326523, 56.712425, 58.626862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.446877, 56.534386, 58.520012>,  <67.647469, 56.237652, 58.341930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.446877, 56.534386, 58.520012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825564, 0.564215, -0.010234,
		-0.258784, 0.362413, -0.895370,
		-0.501472, 0.741834, 0.445205,
		67.296432, 56.756935, 58.653572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.290207, 56.559650, 58.351128>,  <67.647469, 56.237652, 58.341930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.290207, 56.559650, 58.351128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.410011, 56.939087, 58.310196>,  <68.481895, 57.166748, 58.285637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.410011, 56.939087, 58.310196>,  <68.290207, 56.559650, 58.351128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.410011, 56.939087, 58.310196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569034, 0.263687, 0.778890,
		0.765832, -0.175053, 0.618756,
		0.299505, 0.948592, -0.102329,
		68.499863, 57.223663, 58.279499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.145981, 56.798683, 59.004974>,  <68.290207, 56.559650, 58.351128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.145981, 56.798683, 59.004974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.128380, 57.126125, 58.775909>,  <68.117821, 57.322590, 58.638470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.128380, 57.126125, 58.775909>,  <68.145981, 56.798683, 59.004974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.128380, 57.126125, 58.775909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488064, 0.482544, 0.727286,
		0.871698, 0.311497, 0.378302,
		-0.044001, 0.818609, -0.572663,
		68.115181, 57.371708, 58.604111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.311844, 57.268631, 59.395134>,  <68.145981, 56.798683, 59.004974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.311844, 57.268631, 59.395134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.138100, 57.480385, 59.103630>,  <68.033852, 57.607437, 58.928730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.138100, 57.480385, 59.103630>,  <68.311844, 57.268631, 59.395134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.138100, 57.480385, 59.103630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443456, 0.578536, 0.684574,
		0.784014, 0.620522, -0.016534,
		-0.434359, 0.529384, -0.728755,
		68.007790, 57.639198, 58.885002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.508820, 58.011322, 59.519833>,  <68.311844, 57.268631, 59.395134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.508820, 58.011322, 59.519833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.158401, 57.949665, 59.337067>,  <67.948151, 57.912670, 59.227406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.158401, 57.949665, 59.337067>,  <68.508820, 58.011322, 59.519833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.158401, 57.949665, 59.337067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436317, 0.656848, 0.614963,
		0.205331, 0.738099, -0.642688,
		-0.876052, -0.154145, -0.456917,
		67.895584, 57.903423, 59.199993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.038010, 58.611408, 59.579483>,  <68.508820, 58.011322, 59.519833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.038010, 58.611408, 59.579483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.409828, 58.717842, 59.477394>,  <69.632919, 58.781704, 59.416142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.409828, 58.717842, 59.477394>,  <69.038010, 58.611408, 59.579483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.409828, 58.717842, 59.477394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358426, -0.814415, 0.456353,
		-0.086428, -0.515681, -0.852410,
		0.929549, 0.266085, -0.255222,
		69.688690, 58.797668, 59.400829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.961708, 58.899364, 60.345612>,  <69.038010, 58.611408, 59.579483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.961708, 58.899364, 60.345612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.244194, 58.747372, 60.584564>,  <69.413689, 58.656178, 60.727936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.244194, 58.747372, 60.584564>,  <68.961708, 58.899364, 60.345612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.244194, 58.747372, 60.584564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295444, -0.924963, -0.239072,
		0.643398, -0.007655, -0.765493,
		0.706223, -0.379979, 0.597381,
		69.456062, 58.633377, 60.763779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.595764, 58.984131, 60.038910>,  <68.961708, 58.899364, 60.345612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.595764, 58.984131, 60.038910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.482689, 58.603283, 60.085480>,  <69.414841, 58.374775, 60.113422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.482689, 58.603283, 60.085480>,  <69.595764, 58.984131, 60.038910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.482689, 58.603283, 60.085480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517015, 0.253483, 0.817583,
		-0.807947, 0.170933, -0.563917,
		-0.282695, -0.952118, 0.116426,
		69.397881, 58.317646, 60.120407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.008369, 59.490353, 60.292557>,  <69.595764, 58.984131, 60.038910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.008369, 59.490353, 60.292557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.124756, 59.582325, 60.664032>,  <70.194588, 59.637508, 60.886917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.124756, 59.582325, 60.664032>,  <70.008369, 59.490353, 60.292557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.124756, 59.582325, 60.664032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925211, -0.314736, -0.211955,
		0.243558, 0.920909, -0.304312,
		0.290970, 0.229930, 0.928692,
		70.212044, 59.651302, 60.942638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.574516, 59.126469, 60.676880>,  <70.008369, 59.490353, 60.292557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.574516, 59.126469, 60.676880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.503662, 58.935997, 60.332352>,  <70.461151, 58.821716, 60.125633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.503662, 58.935997, 60.332352>,  <70.574516, 59.126469, 60.676880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.503662, 58.935997, 60.332352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146142, 0.878188, -0.455443,
		0.973276, 0.045201, -0.225148,
		-0.177136, -0.476175, -0.861325,
		70.450523, 58.793144, 60.073956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.436203, 59.112637, 60.593769>,  <70.574516, 59.126469, 60.676880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.436203, 59.112637, 60.593769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.620125, 58.898815, 60.310127>,  <71.730476, 58.770523, 60.139942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.620125, 58.898815, 60.310127>,  <71.436203, 59.112637, 60.593769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.620125, 58.898815, 60.310127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780051, 0.624744, 0.034852,
		0.424379, -0.569163, 0.704242,
		0.459807, -0.534554, -0.709104,
		71.758064, 58.738449, 60.097397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.126450, 58.891846, 60.851944>,  <71.436203, 59.112637, 60.593769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.126450, 58.891846, 60.851944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.135284, 58.901695, 60.452164>,  <72.140587, 58.907604, 60.212296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.135284, 58.901695, 60.452164>,  <72.126450, 58.891846, 60.851944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.135284, 58.901695, 60.452164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771748, 0.635087, 0.032699,
		0.635545, -0.772048, -0.004982,
		0.022082, 0.024626, -0.999453,
		72.141907, 58.909084, 60.152328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.462502, 58.320232, 61.278728>,  <72.126450, 58.891846, 60.851944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.462502, 58.320232, 61.278728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.369446, 57.984406, 61.082359>,  <72.313614, 57.782909, 60.964539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.369446, 57.984406, 61.082359>,  <72.462502, 58.320232, 61.278728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.369446, 57.984406, 61.082359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076805, 0.487338, -0.869829,
		0.969527, -0.240057, -0.048889,
		-0.232634, -0.839568, -0.490925,
		72.299652, 57.732536, 60.935081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.040749, 58.100807, 60.823067>,  <72.462502, 58.320232, 61.278728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.040749, 58.100807, 60.823067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.694290, 57.962490, 60.678719>,  <72.486412, 57.879501, 60.592110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.694290, 57.962490, 60.678719>,  <73.040749, 58.100807, 60.823067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.694290, 57.962490, 60.678719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161478, 0.489694, -0.856811,
		0.472987, -0.800395, -0.368309,
		-0.866145, -0.345787, -0.360866,
		72.434448, 57.858753, 60.570457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.936012, 57.640865, 60.177715>,  <73.040749, 58.100807, 60.823067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.936012, 57.640865, 60.177715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.668556, 57.934433, 60.225525>,  <72.508080, 58.110573, 60.254211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.668556, 57.934433, 60.225525>,  <72.936012, 57.640865, 60.177715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.668556, 57.934433, 60.225525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551298, 0.597152, -0.582649,
		-0.498987, -0.323693, -0.803888,
		-0.668643, 0.733916, 0.119520,
		72.467964, 58.154606, 60.261379>
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
