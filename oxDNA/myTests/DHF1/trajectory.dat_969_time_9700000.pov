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
	<1.572210, 1.883888, 3.340870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.704308, 1.552265, 3.521358>,  <1.783566, 1.353291, 3.629652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.704308, 1.552265, 3.521358>,  <1.572210, 1.883888, 3.340870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.704308, 1.552265, 3.521358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464221, 0.273573, 0.842411,
		-0.821850, -0.487668, -0.294521,
		0.330244, -0.829058, 0.451222,
		1.803381, 1.303548, 3.656725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.061982, 1.484283, 3.698905>,  <1.572210, 1.883888, 3.340870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.061982, 1.484283, 3.698905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.414352, 1.413795, 3.874593>,  <1.625775, 1.371503, 3.980006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.414352, 1.413795, 3.874593>,  <1.061982, 1.484283, 3.698905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.414352, 1.413795, 3.874593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348549, 0.386209, 0.854024,
		-0.320127, -0.905422, 0.278801,
		0.880927, -0.176220, 0.439220,
		1.678631, 1.360929, 4.006359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.011212, 1.060759, 4.394801>,  <1.061982, 1.484283, 3.698905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.011212, 1.060759, 4.394801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.328812, 1.303574, 4.381700>,  <1.519371, 1.449263, 4.373839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.328812, 1.303574, 4.381700>,  <1.011212, 1.060759, 4.394801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.328812, 1.303574, 4.381700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330544, 0.476309, 0.814782,
		0.510204, -0.636109, 0.578841,
		0.793998, 0.607038, -0.032753,
		1.567011, 1.485685, 4.371874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.479499, 1.095280, 5.055262>,  <1.011212, 1.060759, 4.394801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.479499, 1.095280, 5.055262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.507050, 1.441505, 4.856845>,  <1.523580, 1.649240, 4.737795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.507050, 1.441505, 4.856845>,  <1.479499, 1.095280, 5.055262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.507050, 1.441505, 4.856845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072301, 0.500246, 0.862860,
		0.995002, -0.023567, 0.097036,
		0.068877, 0.865563, -0.496042,
		1.527713, 1.701174, 4.708033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.023211, 1.456834, 5.439919>,  <1.479499, 1.095280, 5.055262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.023211, 1.456834, 5.439919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.832359, 1.739216, 5.230549>,  <1.717848, 1.908645, 5.104926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.832359, 1.739216, 5.230549>,  <2.023211, 1.456834, 5.439919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.832359, 1.739216, 5.230549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150640, 0.521082, 0.840108,
		0.865826, 0.479689, -0.142278,
		-0.477129, 0.705955, -0.523427,
		1.689221, 1.951002, 5.073521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.248340, 2.058069, 5.783352>,  <2.023211, 1.456834, 5.439919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.248340, 2.058069, 5.783352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.927971, 2.169636, 5.571416>,  <1.735750, 2.236576, 5.444254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.927971, 2.169636, 5.571416>,  <2.248340, 2.058069, 5.783352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.927971, 2.169636, 5.571416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195103, 0.715025, 0.671323,
		0.566091, 0.641050, -0.518262,
		-0.800922, 0.278915, -0.529840,
		1.687694, 2.253310, 5.412464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.254486, 2.757121, 5.649598>,  <2.248340, 2.058069, 5.783352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.254486, 2.757121, 5.649598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.862305, 2.678432, 5.650998>,  <1.626996, 2.631219, 5.651838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.862305, 2.678432, 5.650998>,  <2.254486, 2.757121, 5.649598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.862305, 2.678432, 5.650998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176757, 0.888482, 0.423505,
		-0.086422, 0.414608, -0.905887,
		-0.980453, -0.196722, 0.003500,
		1.568169, 2.619416, 5.652048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.889112, 3.178172, 5.228234>,  <2.254486, 2.757121, 5.649598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.889112, 3.178172, 5.228234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.652618, 3.078196, 5.534951>,  <1.510723, 3.018209, 5.718982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.652618, 3.078196, 5.534951>,  <1.889112, 3.178172, 5.228234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.652618, 3.078196, 5.534951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237193, 0.962606, 0.130881,
		-0.770833, -0.104497, -0.628409,
		-0.591233, -0.249942, 0.766794,
		1.475249, 3.003213, 5.764989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.454390, 4.056194, 1.571802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.077095, 3.976948, 1.465178>,  <0.850718, 3.929400, 1.401203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.077095, 3.976948, 1.465178>,  <1.454390, 4.056194, 1.571802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.077095, 3.976948, 1.465178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267086, -0.929529, -0.254246,
		-0.197405, -0.311009, 0.929680,
		-0.943237, -0.198115, -0.266560,
		0.794124, 3.917513, 1.385210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.304934, 3.380103, 1.628613>,  <1.454390, 4.056194, 1.571802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.304934, 3.380103, 1.628613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.045547, 3.517597, 1.356926>,  <0.889915, 3.600094, 1.193914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.045547, 3.517597, 1.356926>,  <1.304934, 3.380103, 1.628613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.045547, 3.517597, 1.356926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006921, -0.894873, -0.446267,
		-0.761211, -0.284689, 0.582675,
		-0.648467, 0.343736, -0.679217,
		0.851007, 3.620718, 1.153161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.703680, 2.847020, 1.658050>,  <1.304934, 3.380103, 1.628613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.703680, 2.847020, 1.658050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.778328, 3.053162, 1.323486>,  <0.823117, 3.176847, 1.122748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.778328, 3.053162, 1.323486>,  <0.703680, 2.847020, 1.658050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.778328, 3.053162, 1.323486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140423, -0.856618, -0.496475,
		-0.972345, -0.024798, -0.232231,
		0.186621, 0.515355, -0.836410,
		0.834314, 3.207768, 1.072563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.481107, 2.360808, 1.168429>,  <0.703680, 2.847020, 1.658050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.481107, 2.360808, 1.168429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.710915, 2.634129, 0.988195>,  <0.848799, 2.798121, 0.880056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.710915, 2.634129, 0.988195>,  <0.481107, 2.360808, 1.168429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.710915, 2.634129, 0.988195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451156, -0.723698, -0.522226,
		-0.682924, 0.096746, -0.724055,
		0.574520, 0.683302, -0.450583,
		0.883271, 2.839119, 0.853021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.381121, 2.346879, 0.376660>,  <0.481107, 2.360808, 1.168429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.381121, 2.346879, 0.376660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.756401, 2.470085, 0.439789>,  <0.981569, 2.544009, 0.477666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.756401, 2.470085, 0.439789>,  <0.381121, 2.346879, 0.376660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.756401, 2.470085, 0.439789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321595, -0.607345, -0.726436,
		-0.127902, 0.732296, -0.668867,
		0.938199, 0.308017, 0.157822,
		1.037861, 2.562490, 0.487135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.595200, 2.605242, -0.157765>,  <0.381121, 2.346879, 0.376660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.595200, 2.605242, -0.157765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.931496, 2.485802, 0.022898>,  <1.133273, 2.414137, 0.131296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.931496, 2.485802, 0.022898>,  <0.595200, 2.605242, -0.157765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.931496, 2.485802, 0.022898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261769, -0.506042, -0.821827,
		0.473956, 0.809172, -0.347284,
		0.840739, -0.298602, 0.451658,
		1.183717, 2.396221, 0.158395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.004179, 2.727346, -0.691905>,  <0.595200, 2.605242, -0.157765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.004179, 2.727346, -0.691905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.241684, 2.508617, -0.455793>,  <1.384187, 2.377380, -0.314126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.241684, 2.508617, -0.455793>,  <1.004179, 2.727346, -0.691905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.241684, 2.508617, -0.455793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361012, -0.474573, -0.802777,
		0.719107, 0.689758, -0.084374,
		0.593763, -0.546823, 0.590280,
		1.419813, 2.344571, -0.278709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.679560, 2.841164, -0.898375>,  <1.004179, 2.727346, -0.691905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.679560, 2.841164, -0.898375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.634575, 2.486279, -0.719398>,  <1.607584, 2.273347, -0.612013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.634575, 2.486279, -0.719398>,  <1.679560, 2.841164, -0.898375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.634575, 2.486279, -0.719398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336759, -0.457680, -0.822874,
		0.934851, 0.058137, 0.350249,
		-0.112462, -0.887214, 0.447441,
		1.600836, 2.220114, -0.585166>
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
