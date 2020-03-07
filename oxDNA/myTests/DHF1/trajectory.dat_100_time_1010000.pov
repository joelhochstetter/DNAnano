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
	<5.127714, 0.034854, 2.718147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.890685, -0.286140, 2.690226>,  <4.748467, -0.478737, 2.673473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.890685, -0.286140, 2.690226>,  <5.127714, 0.034854, 2.718147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.890685, -0.286140, 2.690226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318064, 0.312718, -0.895010,
		0.740063, -0.508156, -0.440550,
		-0.592573, -0.802487, -0.069804,
		4.712913, -0.526886, 2.669284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.144331, -0.322895, 2.031290>,  <5.127714, 0.034854, 2.718147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.144331, -0.322895, 2.031290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.785534, -0.378685, 2.199076>,  <4.570256, -0.412159, 2.299747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.785534, -0.378685, 2.199076>,  <5.144331, -0.322895, 2.031290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.785534, -0.378685, 2.199076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430546, 0.490699, -0.757525,
		-0.100176, -0.860094, -0.500204,
		-0.896992, -0.139475, 0.419466,
		4.516437, -0.420528, 2.324915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.813845, -0.376602, 1.424608>,  <5.144331, -0.322895, 2.031290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.813845, -0.376602, 1.424608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.608653, -0.236717, 1.738182>,  <4.485538, -0.152787, 1.926327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.608653, -0.236717, 1.738182>,  <4.813845, -0.376602, 1.424608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.608653, -0.236717, 1.738182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374715, 0.730415, -0.571036,
		-0.772296, -0.586682, -0.243645,
		-0.512979, 0.349711, 0.783935,
		4.454759, -0.131804, 1.973363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.165191, -0.250026, 1.193410>,  <4.813845, -0.376602, 1.424608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.165191, -0.250026, 1.193410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.237477, -0.023445, 1.515024>,  <4.280849, 0.112503, 1.707993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.237477, -0.023445, 1.515024>,  <4.165191, -0.250026, 1.193410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.237477, -0.023445, 1.515024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416283, 0.784714, -0.459275,
		-0.891095, -0.251708, 0.377614,
		0.180716, 0.566451, 0.804037,
		4.291691, 0.146490, 1.756235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.544827, -0.043253, 1.389462>,  <4.165191, -0.250026, 1.193410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.544827, -0.043253, 1.389462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.839081, 0.206627, 1.494221>,  <4.015634, 0.356555, 1.557076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.839081, 0.206627, 1.494221>,  <3.544827, -0.043253, 1.389462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.839081, 0.206627, 1.494221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430879, 0.729877, -0.530681,
		-0.522670, 0.277542, 0.806094,
		0.735636, 0.624700, 0.261898,
		4.059772, 0.394037, 1.572790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.282965, 0.577108, 1.731204>,  <3.544827, -0.043253, 1.389462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.282965, 0.577108, 1.731204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.633301, 0.686493, 1.572145>,  <3.843502, 0.752124, 1.476710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.633301, 0.686493, 1.572145>,  <3.282965, 0.577108, 1.731204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.633301, 0.686493, 1.572145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457842, 0.731361, -0.505461,
		0.152598, 0.624762, 0.765758,
		0.875839, 0.273463, -0.397647,
		3.896053, 0.768532, 1.452851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.351281, 1.338431, 1.867307>,  <3.282965, 0.577108, 1.731204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.351281, 1.338431, 1.867307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.575010, 1.261742, 1.544718>,  <3.709248, 1.215728, 1.351164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.575010, 1.261742, 1.544718>,  <3.351281, 1.338431, 1.867307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.575010, 1.261742, 1.544718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363108, 0.817918, -0.446275,
		0.745191, 0.542449, 0.387864,
		0.559323, -0.191724, -0.806474,
		3.742807, 1.204224, 1.302776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.724616, 1.945744, 1.760953>,  <3.351281, 1.338431, 1.867307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.724616, 1.945744, 1.760953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.735220, 1.738350, 1.419083>,  <3.741582, 1.613914, 1.213960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.735220, 1.738350, 1.419083>,  <3.724616, 1.945744, 1.760953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.735220, 1.738350, 1.419083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385263, 0.783631, -0.487335,
		0.922426, 0.342194, -0.178979,
		0.026510, -0.518484, -0.854676,
		3.743173, 1.582805, 1.162680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.787196, 2.842660, 0.657187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.708599, 2.570251, 0.375023>,  <2.661441, 2.406806, 0.205725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.708599, 2.570251, 0.375023>,  <2.787196, 2.842660, 0.657187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.708599, 2.570251, 0.375023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759007, -0.561095, 0.330274,
		-0.620725, -0.470513, 0.627150,
		-0.196492, -0.681021, -0.705409,
		2.649652, 2.365945, 0.163400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.909981, 2.182209, 0.888804>,  <2.787196, 2.842660, 0.657187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.909981, 2.182209, 0.888804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.952145, 2.113533, 0.497005>,  <2.977443, 2.072327, 0.261927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.952145, 2.113533, 0.497005>,  <2.909981, 2.182209, 0.888804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.952145, 2.113533, 0.497005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838641, -0.513963, 0.180342,
		-0.534388, -0.840455, 0.089810,
		0.105410, -0.171691, -0.979495,
		2.983768, 2.062026, 0.203157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.691059, 1.448872, 0.518683>,  <2.909981, 2.182209, 0.888804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.691059, 1.448872, 0.518683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.015293, 1.637184, 0.379360>,  <3.209833, 1.750172, 0.295767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.015293, 1.637184, 0.379360>,  <2.691059, 1.448872, 0.518683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.015293, 1.637184, 0.379360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578893, -0.554240, 0.598082,
		0.088521, -0.686428, -0.721790,
		0.810585, 0.470782, -0.348307,
		3.258469, 1.778419, 0.274868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.167301, 0.892118, 0.389041>,  <2.691059, 1.448872, 0.518683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.167301, 0.892118, 0.389041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.362415, 1.239853, 0.420834>,  <3.479484, 1.448494, 0.439909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.362415, 1.239853, 0.420834>,  <3.167301, 0.892118, 0.389041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.362415, 1.239853, 0.420834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661685, -0.427584, 0.615909,
		0.569418, -0.247840, -0.783797,
		0.487786, 0.869337, 0.079482,
		3.508751, 1.500654, 0.444678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.785629, 0.815815, 0.107440>,  <3.167301, 0.892118, 0.389041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.785629, 0.815815, 0.107440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.800495, 1.068436, 0.417217>,  <3.809415, 1.220008, 0.603084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.800495, 1.068436, 0.417217>,  <3.785629, 0.815815, 0.107440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.800495, 1.068436, 0.417217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646842, -0.605927, 0.463085,
		0.761717, 0.483732, -0.431033,
		0.037166, 0.631550, 0.774443,
		3.811645, 1.257901, 0.649550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.542279, 0.931718, 0.335657>,  <3.785629, 0.815815, 0.107440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.542279, 0.931718, 0.335657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.319462, 1.032890, 0.652069>,  <4.185771, 1.093594, 0.841917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.319462, 1.032890, 0.652069>,  <4.542279, 0.931718, 0.335657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.319462, 1.032890, 0.652069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477281, -0.681987, 0.554164,
		0.679637, 0.686237, 0.259177,
		-0.557042, 0.252930, 0.791031,
		4.152349, 1.108769, 0.889378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.062993, 1.122741, 0.943883>,  <4.542279, 0.931718, 0.335657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.062993, 1.122741, 0.943883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.708488, 0.997643, 1.080547>,  <4.495786, 0.922584, 1.162546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.708488, 0.997643, 1.080547>,  <5.062993, 1.122741, 0.943883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.708488, 0.997643, 1.080547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462059, -0.648384, 0.605062,
		0.032296, 0.694110, 0.719144,
		-0.886261, -0.312746, 0.341660,
		4.442610, 0.903819, 1.183045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.258329, 1.050667, 1.644866>,  <5.062993, 1.122741, 0.943883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.258329, 1.050667, 1.644866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.920914, 0.842331, 1.592457>,  <4.718464, 0.717329, 1.561011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.920914, 0.842331, 1.592457>,  <5.258329, 1.050667, 1.644866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.920914, 0.842331, 1.592457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336332, -0.702494, 0.627203,
		-0.418715, 0.485002, 0.767756,
		-0.843539, -0.520841, -0.131023,
		4.667852, 0.686079, 1.553150>
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
