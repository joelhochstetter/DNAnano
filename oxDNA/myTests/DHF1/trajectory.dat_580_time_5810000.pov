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
	<1.713625, 4.568853, 4.909511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.796322, 4.463766, 4.532526>,  <1.845940, 4.400714, 4.306334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.796322, 4.463766, 4.532526>,  <1.713625, 4.568853, 4.909511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.796322, 4.463766, 4.532526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956808, -0.146944, 0.250851,
		-0.204392, -0.953618, 0.220990,
		0.206743, -0.262717, -0.942463,
		1.858345, 4.384951, 4.249786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.908137, 3.871648, 4.885137>,  <1.713625, 4.568853, 4.909511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.908137, 3.871648, 4.885137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.073990, 4.111414, 4.611266>,  <2.173501, 4.255273, 4.446944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.073990, 4.111414, 4.611266>,  <1.908137, 3.871648, 4.885137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.073990, 4.111414, 4.611266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905897, -0.343164, 0.248170,
		-0.086200, -0.723147, -0.685294,
		0.414632, 0.599414, -0.684677,
		2.198380, 4.291238, 4.405863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.423787, 3.414641, 4.572441>,  <1.908137, 3.871648, 4.885137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.423787, 3.414641, 4.572441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.536636, 3.794968, 4.521293>,  <2.604346, 4.023165, 4.490603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.536636, 3.794968, 4.521293>,  <2.423787, 3.414641, 4.572441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.536636, 3.794968, 4.521293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921168, -0.231228, 0.313022,
		0.268059, -0.206101, -0.941099,
		0.282123, 0.950818, -0.127871,
		2.621273, 4.080214, 4.482932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.957685, 3.443859, 4.108723>,  <2.423787, 3.414641, 4.572441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.957685, 3.443859, 4.108723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.974983, 3.728807, 4.388911>,  <2.985362, 3.899776, 4.557024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.974983, 3.728807, 4.388911>,  <2.957685, 3.443859, 4.108723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.974983, 3.728807, 4.388911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881834, -0.356755, 0.308373,
		0.469572, 0.604363, -0.643621,
		0.043246, 0.712371, 0.700470,
		2.987957, 3.942518, 4.599052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.725430, 3.544874, 4.191608>,  <2.957685, 3.443859, 4.108723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.725430, 3.544874, 4.191608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.556614, 3.724607, 4.506565>,  <3.455324, 3.832446, 4.695539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.556614, 3.724607, 4.506565>,  <3.725430, 3.544874, 4.191608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.556614, 3.724607, 4.506565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792013, -0.239875, 0.561404,
		0.441132, 0.860559, -0.254640,
		-0.422039, 0.449331, 0.787391,
		3.430002, 3.859406, 4.742782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.283597, 3.812674, 4.561364>,  <3.725430, 3.544874, 4.191608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.283597, 3.812674, 4.561364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.988785, 3.796021, 4.831195>,  <3.811898, 3.786030, 4.993094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.988785, 3.796021, 4.831195>,  <4.283597, 3.812674, 4.561364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.988785, 3.796021, 4.831195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636294, -0.379234, 0.671797,
		0.227855, 0.924364, 0.305996,
		-0.737029, -0.041631, 0.674577,
		3.767676, 3.783532, 5.033568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.591275, 4.077549, 5.156069>,  <4.283597, 3.812674, 4.561364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.591275, 4.077549, 5.156069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.275150, 3.859311, 5.267593>,  <4.085475, 3.728369, 5.334508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.275150, 3.859311, 5.267593>,  <4.591275, 4.077549, 5.156069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.275150, 3.859311, 5.267593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539764, -0.404636, 0.738190,
		-0.289936, 0.733891, 0.614281,
		-0.790311, -0.545594, 0.278810,
		4.038057, 3.695633, 5.351236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.428725, 4.186536, 5.901924>,  <4.591275, 4.077549, 5.156069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.428725, 4.186536, 5.901924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.291611, 3.825186, 5.798843>,  <4.209342, 3.608376, 5.736995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.291611, 3.825186, 5.798843>,  <4.428725, 4.186536, 5.901924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.291611, 3.825186, 5.798843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566182, -0.417572, 0.710684,
		-0.749623, 0.097707, 0.654613,
		-0.342787, -0.903375, -0.257702,
		4.188775, 3.554173, 5.721533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.513430, 3.156889, 1.958782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.196739, 2.918228, 1.906363>,  <4.006725, 2.775031, 1.874911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.196739, 2.918228, 1.906363>,  <4.513430, 3.156889, 1.958782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.196739, 2.918228, 1.906363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150349, 0.398251, -0.904870,
		0.592085, -0.696706, -0.405013,
		-0.791726, -0.596654, -0.131050,
		3.959221, 2.739232, 1.867048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.590364, 2.757126, 1.308961>,  <4.513430, 3.156889, 1.958782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.590364, 2.757126, 1.308961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.207840, 2.822016, 1.406249>,  <3.978326, 2.860950, 1.464622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.207840, 2.822016, 1.406249>,  <4.590364, 2.757126, 1.308961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.207840, 2.822016, 1.406249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156451, 0.418816, -0.894492,
		-0.246973, -0.893463, -0.375137,
		-0.956309, 0.162225, 0.243219,
		3.920947, 2.870683, 1.479215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.164294, 2.388724, 0.717787>,  <4.590364, 2.757126, 1.308961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.164294, 2.388724, 0.717787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.024773, 2.711489, 0.908461>,  <3.941060, 2.905148, 1.022865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.024773, 2.711489, 0.908461>,  <4.164294, 2.388724, 0.717787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.024773, 2.711489, 0.908461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218772, 0.424474, -0.878613,
		-0.911304, -0.410749, 0.028472,
		-0.348803, 0.806912, 0.476685,
		3.920131, 2.953562, 1.051466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.404263, 2.529445, 0.628950>,  <4.164294, 2.388724, 0.717787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.404263, 2.529445, 0.628950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.614342, 2.865696, 0.681886>,  <3.740389, 3.067446, 0.713647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.614342, 2.865696, 0.681886>,  <3.404263, 2.529445, 0.628950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.614342, 2.865696, 0.681886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414228, 0.388385, -0.823148,
		-0.743359, 0.377495, 0.552190,
		0.525197, 0.840627, 0.132340,
		3.771901, 3.117884, 0.721588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.989443, 3.071378, 0.865842>,  <3.404263, 2.529445, 0.628950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.989443, 3.071378, 0.865842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.298332, 3.265062, 0.701301>,  <3.483666, 3.381273, 0.602576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.298332, 3.265062, 0.701301>,  <2.989443, 3.071378, 0.865842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.298332, 3.265062, 0.701301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630152, 0.501048, -0.593177,
		-0.081115, 0.717280, 0.692047,
		0.772223, 0.484211, -0.411353,
		3.529999, 3.410326, 0.577895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.809035, 3.719301, 0.874337>,  <2.989443, 3.071378, 0.865842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.809035, 3.719301, 0.874337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.112259, 3.726154, 0.613553>,  <3.294193, 3.730267, 0.457082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.112259, 3.726154, 0.613553>,  <2.809035, 3.719301, 0.874337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.112259, 3.726154, 0.613553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487651, 0.678680, -0.549173,
		0.433063, 0.734234, 0.522835,
		0.758059, 0.017135, -0.651961,
		3.339677, 3.731295, 0.417965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.979087, 4.449914, 0.837168>,  <2.809035, 3.719301, 0.874337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.979087, 4.449914, 0.837168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.114105, 4.281437, 0.500440>,  <3.195116, 4.180351, 0.298403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.114105, 4.281437, 0.500440>,  <2.979087, 4.449914, 0.837168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.114105, 4.281437, 0.500440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411305, 0.738422, -0.534379,
		0.846694, 0.526622, 0.076013,
		0.337545, -0.421191, -0.841820,
		3.215369, 4.155080, 0.247894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.199252, 4.951863, 0.323547>,  <2.979087, 4.449914, 0.837168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.199252, 4.951863, 0.323547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.103157, 4.621914, 0.118854>,  <3.045500, 4.423944, -0.003963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.103157, 4.621914, 0.118854>,  <3.199252, 4.951863, 0.323547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.103157, 4.621914, 0.118854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688356, 0.516464, -0.509344,
		0.684436, 0.229892, -0.691879,
		-0.240236, -0.824873, -0.511734,
		3.031086, 4.374452, -0.034667>
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
