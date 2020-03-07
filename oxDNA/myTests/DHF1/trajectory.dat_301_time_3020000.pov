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
	<5.845382, 2.114012, 4.267346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.668221, 1.777679, 4.391823>,  <5.561924, 1.575880, 4.466508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.668221, 1.777679, 4.391823>,  <5.845382, 2.114012, 4.267346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.668221, 1.777679, 4.391823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652470, 0.064229, -0.755088,
		0.614914, -0.537474, -0.577064,
		-0.442904, -0.840831, 0.311191,
		5.535349, 1.525430, 4.485180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.647585, 1.695934, 3.671293>,  <5.845382, 2.114012, 4.267346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.647585, 1.695934, 3.671293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.428623, 1.544495, 3.969826>,  <5.297246, 1.453631, 4.148945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.428623, 1.544495, 3.969826>,  <5.647585, 1.695934, 3.671293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.428623, 1.544495, 3.969826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798075, -0.032209, -0.601697,
		0.251840, -0.925001, -0.284518,
		-0.547405, -0.378598, 0.746331,
		5.264401, 1.430915, 4.193725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.368147, 1.081354, 3.504144>,  <5.647585, 1.695934, 3.671293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.368147, 1.081354, 3.504144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.122959, 1.240189, 3.777374>,  <4.975846, 1.335489, 3.941312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.122959, 1.240189, 3.777374>,  <5.368147, 1.081354, 3.504144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.122959, 1.240189, 3.777374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787031, -0.230655, -0.572172,
		-0.069647, -0.888325, 0.453903,
		-0.612970, 0.397085, 0.683075,
		4.939068, 1.359315, 3.982297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.830007, 0.657252, 3.792609>,  <5.368147, 1.081354, 3.504144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.830007, 0.657252, 3.792609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.686447, 1.028656, 3.830681>,  <4.600311, 1.251499, 3.853524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.686447, 1.028656, 3.830681>,  <4.830007, 0.657252, 3.792609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.686447, 1.028656, 3.830681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793514, -0.249836, -0.554904,
		-0.491455, -0.274680, 0.826452,
		-0.358899, 0.928511, 0.095179,
		4.578777, 1.307209, 3.859235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.137749, 0.760508, 4.068476>,  <4.830007, 0.657252, 3.792609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.137749, 0.760508, 4.068476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192223, 1.069962, 3.820946>,  <4.224906, 1.255633, 3.672427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192223, 1.069962, 3.820946>,  <4.137749, 0.760508, 4.068476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.192223, 1.069962, 3.820946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746886, -0.330203, -0.577172,
		-0.650857, 0.540794, 0.532847,
		0.136184, 0.773633, -0.618827,
		4.233078, 1.302051, 3.635298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.490028, 1.079928, 3.820332>,  <4.137749, 0.760508, 4.068476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.490028, 1.079928, 3.820332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.751083, 1.210281, 3.546730>,  <3.907717, 1.288494, 3.382569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.751083, 1.210281, 3.546730>,  <3.490028, 1.079928, 3.820332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.751083, 1.210281, 3.546730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660670, -0.197177, -0.724317,
		-0.370914, 0.924619, 0.086617,
		0.652639, 0.325885, -0.684004,
		3.946875, 1.308047, 3.341529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.037233, 1.379034, 3.373417>,  <3.490028, 1.079928, 3.820332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.037233, 1.379034, 3.373417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.379230, 1.316467, 3.175621>,  <3.584429, 1.278927, 3.056944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.379230, 1.316467, 3.175621>,  <3.037233, 1.379034, 3.373417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.379230, 1.316467, 3.175621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518363, -0.226643, -0.824581,
		0.016906, 0.961336, -0.274859,
		0.854994, -0.156417, -0.494489,
		3.635729, 1.269542, 3.027274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.110717, 1.946379, 2.989175>,  <3.037233, 1.379034, 3.373417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.110717, 1.946379, 2.989175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.296314, 1.647720, 2.798500>,  <3.407673, 1.468525, 2.684095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.296314, 1.647720, 2.798500>,  <3.110717, 1.946379, 2.989175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.296314, 1.647720, 2.798500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639625, 0.089904, -0.763411,
		0.612854, 0.659119, -0.435858,
		0.463993, -0.746646, -0.476687,
		3.435512, 1.423727, 2.655494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.344305, 1.441168, 1.433176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.470360, 1.061813, 1.419022>,  <2.545993, 0.834201, 1.410529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.470360, 1.061813, 1.419022>,  <2.344305, 1.441168, 1.433176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.470360, 1.061813, 1.419022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596783, 0.169038, 0.784395,
		-0.737928, -0.268310, 0.619251,
		0.315138, -0.948386, -0.035385,
		2.564901, 0.777298, 1.408406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.360028, 1.133321, 2.144393>,  <2.344305, 1.441168, 1.433176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.360028, 1.133321, 2.144393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.624048, 0.967896, 1.893539>,  <2.782460, 0.868640, 1.743027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.624048, 0.967896, 1.893539>,  <2.360028, 1.133321, 2.144393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.624048, 0.967896, 1.893539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725839, 0.135924, 0.674302,
		-0.193624, -0.900272, 0.389897,
		0.660051, -0.413564, -0.627134,
		2.822064, 0.843826, 1.705399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.785903, 0.490277, 2.343538>,  <2.360028, 1.133321, 2.144393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.785903, 0.490277, 2.343538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.982868, 0.704071, 2.068771>,  <3.101048, 0.832347, 1.903911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.982868, 0.704071, 2.068771>,  <2.785903, 0.490277, 2.343538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.982868, 0.704071, 2.068771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720453, 0.192514, 0.666248,
		0.488341, -0.822960, -0.290274,
		0.492414, 0.534485, -0.686917,
		3.130592, 0.864416, 1.862696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.616511, 0.243749, 2.236416>,  <2.785903, 0.490277, 2.343538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.616511, 0.243749, 2.236416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.528887, 0.622955, 2.144089>,  <3.476312, 0.850479, 2.088692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.528887, 0.622955, 2.144089>,  <3.616511, 0.243749, 2.236416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.528887, 0.622955, 2.144089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720643, 0.316685, 0.616753,
		0.657789, -0.031232, -0.752555,
		-0.219060, 0.948017, -0.230819,
		3.463169, 0.907360, 2.074843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.203802, 0.590534, 1.967414>,  <3.616511, 0.243749, 2.236416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.203802, 0.590534, 1.967414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.973577, 0.843994, 2.174187>,  <3.835443, 0.996070, 2.298250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.973577, 0.843994, 2.174187>,  <4.203802, 0.590534, 1.967414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.973577, 0.843994, 2.174187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734761, 0.123237, 0.667037,
		0.358962, 0.763742, -0.536511,
		-0.575562, 0.633649, 0.516931,
		3.800909, 1.034089, 2.329266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.600876, 0.968933, 2.238544>,  <4.203802, 0.590534, 1.967414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.600876, 0.968933, 2.238544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.300020, 1.071976, 2.481171>,  <4.119506, 1.133801, 2.626747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.300020, 1.071976, 2.481171>,  <4.600876, 0.968933, 2.238544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.300020, 1.071976, 2.481171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658828, 0.315129, 0.683110,
		-0.015174, 0.913418, -0.406739,
		-0.752140, 0.257606, 0.606568,
		4.074378, 1.149258, 2.663141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.619269, 1.698001, 2.336823>,  <4.600876, 0.968933, 2.238544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.619269, 1.698001, 2.336823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.453209, 1.528381, 2.658775>,  <4.353573, 1.426610, 2.851947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.453209, 1.528381, 2.658775>,  <4.619269, 1.698001, 2.336823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.453209, 1.528381, 2.658775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742820, 0.352782, 0.569002,
		-0.525232, 0.834103, 0.168535,
		-0.415149, -0.424049, 0.804881,
		4.328664, 1.401167, 2.900240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.458214, 2.233096, 2.867455>,  <4.619269, 1.698001, 2.336823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.458214, 2.233096, 2.867455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.533495, 1.872330, 3.022957>,  <4.578663, 1.655870, 3.116258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.533495, 1.872330, 3.022957>,  <4.458214, 2.233096, 2.867455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.533495, 1.872330, 3.022957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757011, 0.385395, 0.527642,
		-0.625711, 0.194987, 0.755292,
		0.188202, -0.901915, 0.388753,
		4.589956, 1.601755, 3.139583>
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
