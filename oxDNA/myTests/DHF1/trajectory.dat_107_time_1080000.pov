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
	<4.769032, 3.428079, 1.240354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.450190, 3.294472, 1.441572>,  <4.258884, 3.214308, 1.562303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.450190, 3.294472, 1.441572>,  <4.769032, 3.428079, 1.240354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.450190, 3.294472, 1.441572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289024, -0.520405, -0.803520,
		0.530177, -0.785882, 0.318279,
		-0.797106, -0.334017, 0.503045,
		4.211058, 3.194267, 1.592486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.561692, 2.678840, 1.221277>,  <4.769032, 3.428079, 1.240354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.561692, 2.678840, 1.221277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.203619, 2.848801, 1.275101>,  <3.988775, 2.950777, 1.307395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.203619, 2.848801, 1.275101>,  <4.561692, 2.678840, 1.221277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.203619, 2.848801, 1.275101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379863, -0.569432, -0.729007,
		-0.233134, -0.703708, 0.671151,
		-0.895183, 0.424902, 0.134559,
		3.935064, 2.976271, 1.315468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.022053, 2.113667, 1.254772>,  <4.561692, 2.678840, 1.221277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.022053, 2.113667, 1.254772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.863608, 2.452110, 1.112114>,  <3.768541, 2.655176, 1.026519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.863608, 2.452110, 1.112114>,  <4.022053, 2.113667, 1.254772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.863608, 2.452110, 1.112114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474123, -0.521107, -0.709686,
		-0.786322, -0.112023, 0.607576,
		-0.396113, 0.846108, -0.356645,
		3.744774, 2.705943, 1.005120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.282835, 2.090166, 1.221424>,  <4.022053, 2.113667, 1.254772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.282835, 2.090166, 1.221424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.456900, 2.296967, 0.926577>,  <3.561339, 2.421047, 0.749668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.456900, 2.296967, 0.926577>,  <3.282835, 2.090166, 1.221424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.456900, 2.296967, 0.926577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404583, -0.619100, -0.673074,
		-0.804330, 0.591122, -0.060239,
		0.435163, 0.517002, -0.737118,
		3.587448, 2.452067, 0.705441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.837735, 2.132627, 0.784487>,  <3.282835, 2.090166, 1.221424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.837735, 2.132627, 0.784487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.180521, 2.170815, 0.581905>,  <3.386193, 2.193727, 0.460356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.180521, 2.170815, 0.581905>,  <2.837735, 2.132627, 0.784487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.180521, 2.170815, 0.581905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390382, -0.521322, -0.758832,
		-0.336469, 0.848003, -0.409486,
		0.856966, 0.095467, -0.506454,
		3.437611, 2.199455, 0.429969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.603831, 2.214250, 0.153726>,  <2.837735, 2.132627, 0.784487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.603831, 2.214250, 0.153726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.969023, 2.059624, 0.101521>,  <3.188138, 1.966848, 0.070197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.969023, 2.059624, 0.101521>,  <2.603831, 2.214250, 0.153726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.969023, 2.059624, 0.101521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357519, -0.603844, -0.712427,
		0.196591, 0.697093, -0.689503,
		0.912980, -0.386567, -0.130513,
		3.242917, 1.943654, 0.062367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.720109, 2.209342, -0.604386>,  <2.603831, 2.214250, 0.153726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.720109, 2.209342, -0.604386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.988910, 1.947762, -0.465385>,  <3.150191, 1.790813, -0.381985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.988910, 1.947762, -0.465385>,  <2.720109, 2.209342, -0.604386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.988910, 1.947762, -0.465385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375099, -0.705179, -0.601683,
		0.638523, 0.273986, -0.719180,
		0.672004, -0.653952, 0.347502,
		3.190511, 1.751576, -0.361135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.924044, 1.936070, -1.246331>,  <2.720109, 2.209342, -0.604386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.924044, 1.936070, -1.246331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.004242, 1.680008, -0.949682>,  <3.052361, 1.526371, -0.771693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.004242, 1.680008, -0.949682>,  <2.924044, 1.936070, -1.246331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.004242, 1.680008, -0.949682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389573, -0.746665, -0.539188,
		0.898907, -0.180812, -0.399090,
		0.200495, -0.640155, 0.741622,
		3.064391, 1.487961, -0.727196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.564032, 1.734301, 3.073089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.208979, 1.616051, 2.931831>,  <1.995947, 1.545101, 2.847076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.208979, 1.616051, 2.931831>,  <2.564032, 1.734301, 3.073089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.208979, 1.616051, 2.931831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446446, 0.364011, 0.817424,
		-0.113103, 0.883234, -0.455089,
		-0.887634, -0.295626, -0.353145,
		1.942688, 1.527363, 2.825888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.421644, 1.364424, 3.768016>,  <2.564032, 1.734301, 3.073089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.421644, 1.364424, 3.768016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.443342, 0.968155, 3.818016>,  <2.456361, 0.730393, 3.848016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.443342, 0.968155, 3.818016>,  <2.421644, 1.364424, 3.768016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.443342, 0.968155, 3.818016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755010, 0.122618, 0.644146,
		-0.653466, 0.059434, 0.754619,
		0.054246, -0.990673, 0.125000,
		2.459616, 0.670953, 3.855516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.215239, 1.214373, 4.486281>,  <2.421644, 1.364424, 3.768016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.215239, 1.214373, 4.486281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.489286, 0.979111, 4.314381>,  <2.653715, 0.837954, 4.211240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.489286, 0.979111, 4.314381>,  <2.215239, 1.214373, 4.486281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.489286, 0.979111, 4.314381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700947, 0.371782, 0.608647,
		-0.198205, -0.718228, 0.666980,
		0.685118, -0.588155, -0.429751,
		2.694822, 0.802664, 4.185455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.577441, 0.821519, 5.060528>,  <2.215239, 1.214373, 4.486281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.577441, 0.821519, 5.060528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.801609, 0.846741, 4.730206>,  <2.936110, 0.861874, 4.532012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.801609, 0.846741, 4.730206>,  <2.577441, 0.821519, 5.060528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.801609, 0.846741, 4.730206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741412, 0.406178, 0.534161,
		0.369105, -0.911616, 0.180881,
		0.560419, 0.063054, -0.825806,
		2.969735, 0.865657, 4.482464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.313282, 0.578302, 5.185400>,  <2.577441, 0.821519, 5.060528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.313282, 0.578302, 5.185400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.268784, 0.863266, 4.908245>,  <3.242085, 1.034245, 4.741952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.268784, 0.863266, 4.908245>,  <3.313282, 0.578302, 5.185400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.268784, 0.863266, 4.908245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506201, 0.640611, 0.577388,
		0.855210, -0.286509, -0.431889,
		-0.111246, 0.712411, -0.692889,
		3.235410, 1.076989, 4.700378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.038329, 0.843460, 5.004801>,  <3.313282, 0.578302, 5.185400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.038329, 0.843460, 5.004801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.774220, 1.127136, 4.905937>,  <3.615754, 1.297342, 4.846619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.774220, 1.127136, 4.905937>,  <4.038329, 0.843460, 5.004801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.774220, 1.127136, 4.905937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484671, 0.653763, 0.581109,
		0.573701, 0.263900, -0.775387,
		-0.660273, 0.709190, -0.247160,
		3.576138, 1.339893, 4.831789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.430231, 1.483328, 4.913008>,  <4.038329, 0.843460, 5.004801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.430231, 1.483328, 4.913008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.062948, 1.634056, 4.961842>,  <3.842579, 1.724493, 4.991142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.062948, 1.634056, 4.961842>,  <4.430231, 1.483328, 4.913008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.062948, 1.634056, 4.961842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377572, 0.739470, 0.557337,
		0.119737, 0.557846, -0.821262,
		-0.918206, 0.376819, 0.122085,
		3.787486, 1.747102, 4.998467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.481365, 2.179680, 4.717940>,  <4.430231, 1.483328, 4.913008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.481365, 2.179680, 4.717940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.152815, 2.179817, 4.946095>,  <3.955685, 2.179899, 5.082987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.152815, 2.179817, 4.946095>,  <4.481365, 2.179680, 4.717940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.152815, 2.179817, 4.946095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403432, 0.707266, 0.580532,
		-0.403216, 0.706947, -0.581070,
		-0.821376, 0.000343, 0.570387,
		3.906402, 2.179920, 5.117210>
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
