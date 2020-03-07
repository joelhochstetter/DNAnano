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
	<2.921218, 5.229918, 1.115312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.754486, 5.191124, 0.753794>,  <2.654447, 5.167848, 0.536883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.754486, 5.191124, 0.753794>,  <2.921218, 5.229918, 1.115312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.754486, 5.191124, 0.753794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884256, -0.187076, 0.427894,
		-0.210577, 0.977546, -0.007780,
		-0.416831, -0.096984, -0.903795,
		2.629437, 5.162029, 0.482655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.359376, 4.493379, 1.031605>,  <2.921218, 5.229918, 1.115312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.359376, 4.493379, 1.031605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.745972, 4.412880, 0.967859>,  <3.977929, 4.364581, 0.929612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.745972, 4.412880, 0.967859>,  <3.359376, 4.493379, 1.031605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.745972, 4.412880, 0.967859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047372, -0.470322, 0.881222,
		-0.252295, -0.859242, -0.445029,
		0.966490, -0.201246, -0.159364,
		4.035919, 4.352506, 0.920050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.523254, 3.783858, 1.092858>,  <3.359376, 4.493379, 1.031605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.523254, 3.783858, 1.092858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.801964, 4.050110, 1.199774>,  <3.969190, 4.209861, 1.263923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.801964, 4.050110, 1.199774>,  <3.523254, 3.783858, 1.092858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.801964, 4.050110, 1.199774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044349, -0.411901, 0.910148,
		0.715918, -0.622314, -0.316522,
		0.696774, 0.665629, 0.267289,
		4.010996, 4.249799, 1.279960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.195440, 3.448179, 1.431635>,  <3.523254, 3.783858, 1.092858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.195440, 3.448179, 1.431635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.133110, 3.820465, 1.563990>,  <4.095712, 4.043837, 1.643402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.133110, 3.820465, 1.563990>,  <4.195440, 3.448179, 1.431635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.133110, 3.820465, 1.563990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109827, -0.316577, 0.942188,
		0.981660, 0.183156, -0.052887,
		-0.155825, 0.930716, 0.330886,
		4.086363, 4.099680, 1.663255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.854360, 3.694903, 1.809074>,  <4.195440, 3.448179, 1.431635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.854360, 3.694903, 1.809074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.555557, 3.927437, 1.938089>,  <4.376276, 4.066957, 2.015498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.555557, 3.927437, 1.938089>,  <4.854360, 3.694903, 1.809074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.555557, 3.927437, 1.938089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196737, -0.270123, 0.942511,
		0.635039, 0.767518, 0.087414,
		-0.747007, 0.581334, 0.322538,
		4.331455, 4.101837, 2.034851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.058280, 3.781127, 2.494188>,  <4.854360, 3.694903, 1.809074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.058280, 3.781127, 2.494188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.695892, 3.949848, 2.508631>,  <4.478460, 4.051081, 2.517296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.695892, 3.949848, 2.508631>,  <5.058280, 3.781127, 2.494188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.695892, 3.949848, 2.508631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104145, -0.304728, 0.946729,
		0.410335, 0.853946, 0.320002,
		-0.905969, 0.421802, 0.036106,
		4.424102, 4.076389, 2.519463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.019298, 4.201841, 3.082008>,  <5.058280, 3.781127, 2.494188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.019298, 4.201841, 3.082008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.644913, 4.095757, 2.989370>,  <4.420281, 4.032106, 2.933788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.644913, 4.095757, 2.989370>,  <5.019298, 4.201841, 3.082008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.644913, 4.095757, 2.989370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144499, -0.310486, 0.939531,
		-0.321081, 0.912832, 0.252280,
		-0.935963, -0.265211, -0.231594,
		4.364124, 4.016193, 2.919892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.560532, 4.530291, 3.501812>,  <5.019298, 4.201841, 3.082008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.560532, 4.530291, 3.501812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.376419, 4.193836, 3.388231>,  <4.265951, 3.991963, 3.320083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.376419, 4.193836, 3.388231>,  <4.560532, 4.530291, 3.501812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.376419, 4.193836, 3.388231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279485, -0.166292, 0.945640,
		-0.842631, 0.514623, -0.158544,
		-0.460283, -0.841136, -0.283952,
		4.238334, 3.941495, 3.303046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.507769, 3.587525, 4.234069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.142746, 3.430733, 4.280699>,  <3.923732, 3.336658, 4.308676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.142746, 3.430733, 4.280699>,  <4.507769, 3.587525, 4.234069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.142746, 3.430733, 4.280699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138656, 0.028398, -0.989933,
		0.384724, -0.919535, -0.080266,
		-0.912558, -0.391981, 0.116573,
		3.868979, 3.313139, 4.315671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.491799, 3.010494, 3.826176>,  <4.507769, 3.587525, 4.234069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.491799, 3.010494, 3.826176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.132584, 3.181393, 3.868099>,  <3.917054, 3.283932, 3.893253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.132584, 3.181393, 3.868099>,  <4.491799, 3.010494, 3.826176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.132584, 3.181393, 3.868099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073861, 0.088424, -0.993341,
		-0.433670, -0.899800, -0.047851,
		-0.898039, 0.427247, 0.104807,
		3.863172, 3.309567, 3.899541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.960913, 2.841043, 3.389052>,  <4.491799, 3.010494, 3.826176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.960913, 2.841043, 3.389052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.884163, 3.221771, 3.484737>,  <3.838113, 3.450208, 3.542148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.884163, 3.221771, 3.484737>,  <3.960913, 2.841043, 3.389052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.884163, 3.221771, 3.484737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123325, 0.265193, -0.956276,
		-0.973640, -0.153984, -0.168267,
		-0.191874, 0.951820, 0.239213,
		3.826601, 3.507317, 3.556501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.501587, 3.052374, 2.849988>,  <3.960913, 2.841043, 3.389052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.501587, 3.052374, 2.849988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.717438, 3.350449, 3.006704>,  <3.846948, 3.529293, 3.100734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.717438, 3.350449, 3.006704>,  <3.501587, 3.052374, 2.849988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.717438, 3.350449, 3.006704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069043, 0.424626, -0.902732,
		-0.839068, 0.514190, 0.177691,
		0.539628, 0.745185, 0.391791,
		3.879326, 3.574004, 3.124242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.131519, 3.628511, 2.720341>,  <3.501587, 3.052374, 2.849988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.131519, 3.628511, 2.720341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.511459, 3.747631, 2.758495>,  <3.739424, 3.819103, 2.781388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.511459, 3.747631, 2.758495>,  <3.131519, 3.628511, 2.720341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.511459, 3.747631, 2.758495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086256, 0.542718, -0.835474,
		-0.300572, 0.785348, 0.541188,
		0.949851, 0.297801, 0.095385,
		3.796415, 3.836971, 2.787111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.154821, 4.339452, 2.588377>,  <3.131519, 3.628511, 2.720341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.154821, 4.339452, 2.588377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.548218, 4.278957, 2.548634>,  <3.784256, 4.242661, 2.524788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.548218, 4.278957, 2.548634>,  <3.154821, 4.339452, 2.588377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.548218, 4.278957, 2.548634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003253, 0.534207, -0.845348,
		0.180926, 0.831716, 0.524896,
		0.983491, -0.151238, -0.099357,
		3.843265, 4.233586, 2.518826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.494911, 4.974064, 2.517283>,  <3.154821, 4.339452, 2.588377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.494911, 4.974064, 2.517283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.753891, 4.702385, 2.379009>,  <3.909279, 4.539377, 2.296045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.753891, 4.702385, 2.379009>,  <3.494911, 4.974064, 2.517283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.753891, 4.702385, 2.379009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020215, 0.468735, -0.883108,
		0.761839, 0.564780, 0.317213,
		0.647450, -0.679199, -0.345684,
		3.948126, 4.498625, 2.275304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.155212, 5.312942, 2.164192>,  <3.494911, 4.974064, 2.517283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.155212, 5.312942, 2.164192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.139084, 4.939568, 2.021603>,  <4.129407, 4.715543, 1.936049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.139084, 4.939568, 2.021603>,  <4.155212, 5.312942, 2.164192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.139084, 4.939568, 2.021603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069591, 0.353274, -0.932928,
		0.996760, -0.062424, 0.050714,
		-0.040321, -0.933435, -0.356473,
		4.126987, 4.659537, 1.914661>
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
