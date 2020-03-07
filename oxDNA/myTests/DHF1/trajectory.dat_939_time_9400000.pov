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
	<4.670541, 3.526551, 6.034232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.895920, 3.374261, 5.740953>,  <5.031147, 3.282887, 5.564986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.895920, 3.374261, 5.740953>,  <4.670541, 3.526551, 6.034232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.895920, 3.374261, 5.740953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824512, -0.203241, -0.528084,
		0.052038, 0.902077, -0.428427,
		0.563447, -0.380724, -0.733196,
		5.064954, 3.260044, 5.520995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.480153, 3.899994, 5.342322>,  <4.670541, 3.526551, 6.034232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.480153, 3.899994, 5.342322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.622871, 3.532017, 5.277327>,  <4.708502, 3.311230, 5.238329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.622871, 3.532017, 5.277327>,  <4.480153, 3.899994, 5.342322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.622871, 3.532017, 5.277327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801045, -0.211790, -0.559886,
		0.480649, 0.329925, -0.812481,
		0.356796, -0.919943, -0.162488,
		4.729910, 3.256034, 5.228580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.348500, 3.711154, 4.654958>,  <4.480153, 3.899994, 5.342322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.348500, 3.711154, 4.654958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.394600, 3.378954, 4.872944>,  <4.422260, 3.179634, 5.003736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.394600, 3.378954, 4.872944>,  <4.348500, 3.711154, 4.654958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.394600, 3.378954, 4.872944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731023, -0.442361, -0.519540,
		0.672550, -0.338505, -0.658097,
		0.115250, -0.830501, 0.544964,
		4.429175, 3.129804, 5.036433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.493178, 3.098240, 4.302972>,  <4.348500, 3.711154, 4.654958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.493178, 3.098240, 4.302972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.300598, 2.974277, 4.630915>,  <4.185050, 2.899900, 4.827680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.300598, 2.974277, 4.630915>,  <4.493178, 3.098240, 4.302972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.300598, 2.974277, 4.630915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692407, -0.439029, -0.572561,
		0.537381, -0.843334, -0.003211,
		-0.481450, -0.309906, 0.819856,
		4.156163, 2.881306, 4.876872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.360668, 2.421211, 4.121934>,  <4.493178, 3.098240, 4.302972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.360668, 2.421211, 4.121934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.105865, 2.529061, 4.410801>,  <3.952984, 2.593771, 4.584121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.105865, 2.529061, 4.410801>,  <4.360668, 2.421211, 4.121934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.105865, 2.529061, 4.410801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758566, -0.385893, -0.525037,
		0.137116, -0.882264, 0.450344,
		-0.637006, 0.269625, 0.722167,
		3.914764, 2.609949, 4.627451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.049756, 1.822638, 4.383638>,  <4.360668, 2.421211, 4.121934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.049756, 1.822638, 4.383638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.804054, 2.134142, 4.434591>,  <3.656633, 2.321044, 4.465163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.804054, 2.134142, 4.434591>,  <4.049756, 1.822638, 4.383638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.804054, 2.134142, 4.434591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573110, -0.329302, -0.750404,
		-0.542437, -0.533943, 0.648589,
		-0.614254, 0.778759, 0.127382,
		3.619778, 2.367770, 4.472806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.340328, 1.523334, 4.323676>,  <4.049756, 1.822638, 4.383638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.340328, 1.523334, 4.323676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.257645, 1.909994, 4.263201>,  <3.208035, 2.141990, 4.226915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.257645, 1.909994, 4.263201>,  <3.340328, 1.523334, 4.323676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.257645, 1.909994, 4.263201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608272, -0.248001, -0.753990,
		-0.766340, -0.063893, 0.639250,
		-0.206709, 0.966651, -0.151189,
		3.195632, 2.199989, 4.217844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.653585, 1.592101, 4.223738>,  <3.340328, 1.523334, 4.323676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.653585, 1.592101, 4.223738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.771233, 1.938293, 4.061535>,  <2.841821, 2.146009, 3.964213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.771233, 1.938293, 4.061535>,  <2.653585, 1.592101, 4.223738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.771233, 1.938293, 4.061535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601029, -0.162404, -0.782553,
		-0.743141, 0.473886, 0.472413,
		0.294120, 0.865481, -0.405508,
		2.859468, 2.197938, 3.939883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.363480, 1.823237, 3.050488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.308273, 2.207420, 2.953766>,  <2.275149, 2.437931, 2.895733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.308273, 2.207420, 2.953766>,  <2.363480, 1.823237, 3.050488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.308273, 2.207420, 2.953766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347462, 0.275579, 0.896285,
		0.927481, 0.039685, -0.371758,
		-0.138018, 0.960459, -0.241805,
		2.266868, 2.495558, 2.881224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.020958, 2.176077, 2.909180>,  <2.363480, 1.823237, 3.050488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.020958, 2.176077, 2.909180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.748062, 2.432308, 3.050152>,  <2.584324, 2.586047, 3.134735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.748062, 2.432308, 3.050152>,  <3.020958, 2.176077, 2.909180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.748062, 2.432308, 3.050152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566433, 0.158315, 0.808758,
		0.462278, 0.751396, -0.470854,
		-0.682241, 0.640578, 0.352430,
		2.543390, 2.624482, 3.155881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.274701, 2.923276, 3.112278>,  <3.020958, 2.176077, 2.909180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.274701, 2.923276, 3.112278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.965858, 2.812328, 3.340984>,  <2.780553, 2.745759, 3.478208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.965858, 2.812328, 3.340984>,  <3.274701, 2.923276, 3.112278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.965858, 2.812328, 3.340984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595956, -0.003640, 0.803008,
		-0.220649, 0.960756, 0.168111,
		-0.772107, -0.277370, 0.571766,
		2.734226, 2.729117, 3.512514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.195299, 3.378109, 3.610966>,  <3.274701, 2.923276, 3.112278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.195299, 3.378109, 3.610966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.059341, 3.029293, 3.751831>,  <2.977767, 2.820003, 3.836350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.059341, 3.029293, 3.751831>,  <3.195299, 3.378109, 3.610966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.059341, 3.029293, 3.751831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525409, 0.134496, 0.840152,
		-0.780011, 0.470591, 0.412464,
		-0.339894, -0.872041, 0.352162,
		2.957373, 2.767681, 3.857480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.997625, 3.512933, 4.175039>,  <3.195299, 3.378109, 3.610966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.997625, 3.512933, 4.175039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.056465, 3.117542, 4.189308>,  <3.091769, 2.880307, 4.197870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.056465, 3.117542, 4.189308>,  <2.997625, 3.512933, 4.175039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.056465, 3.117542, 4.189308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461270, 0.100458, 0.881554,
		-0.874981, -0.113221, 0.470733,
		0.147100, -0.988478, 0.035673,
		3.100595, 2.820999, 4.200010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.833861, 3.332292, 4.863209>,  <2.997625, 3.512933, 4.175039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.833861, 3.332292, 4.863209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.073311, 3.044798, 4.721748>,  <3.216981, 2.872302, 4.636872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.073311, 3.044798, 4.721748>,  <2.833861, 3.332292, 4.863209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.073311, 3.044798, 4.721748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492726, -0.017700, 0.870004,
		-0.631562, -0.695059, 0.343543,
		0.598624, -0.718734, -0.353653,
		3.252898, 2.829178, 4.615653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.123648, 3.044039, 5.526875>,  <2.833861, 3.332292, 4.863209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.123648, 3.044039, 5.526875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.361191, 2.898487, 5.239841>,  <3.503716, 2.811156, 5.067622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.361191, 2.898487, 5.239841>,  <3.123648, 3.044039, 5.526875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.361191, 2.898487, 5.239841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661657, -0.286561, 0.692888,
		-0.457760, -0.886269, 0.070588,
		0.593857, -0.363881, -0.717582,
		3.539348, 2.789323, 5.024567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.398909, 2.418051, 5.836871>,  <3.123648, 3.044039, 5.526875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.398909, 2.418051, 5.836871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.643639, 2.547878, 5.548336>,  <3.790476, 2.625774, 5.375215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.643639, 2.547878, 5.548336>,  <3.398909, 2.418051, 5.836871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.643639, 2.547878, 5.548336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790956, -0.259962, 0.553902,
		-0.007742, -0.909437, -0.415770,
		0.611824, 0.324568, -0.721337,
		3.827186, 2.645248, 5.331935>
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
