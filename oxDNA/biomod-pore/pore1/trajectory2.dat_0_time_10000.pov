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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<48.280228, 41.132629, 45.681656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.415192, 41.490791, 45.797863>,  <48.496170, 41.705688, 45.867588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.415192, 41.490791, 45.797863>,  <48.280228, 41.132629, 45.681656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.415192, 41.490791, 45.797863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160512, -0.249375, 0.955012,
		0.927572, -0.368864, 0.059582,
		0.337411, 0.895406, 0.290521,
		48.516415, 41.759415, 45.885017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.647491, 41.001705, 46.222439>,  <48.280228, 41.132629, 45.681656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.647491, 41.001705, 46.222439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.564964, 41.391006, 46.262863>,  <48.515450, 41.624588, 46.287117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.564964, 41.391006, 46.262863>,  <48.647491, 41.001705, 46.222439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.564964, 41.391006, 46.262863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053583, -0.091892, 0.994326,
		0.977018, 0.210559, -0.033191,
		-0.206314, 0.973253, 0.101062,
		48.503071, 41.682983, 46.293182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.140289, 41.157070, 46.642799>,  <48.647491, 41.001705, 46.222439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.140289, 41.157070, 46.642799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.867111, 41.447815, 46.671810>,  <48.703205, 41.622261, 46.689217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.867111, 41.447815, 46.671810>,  <49.140289, 41.157070, 46.642799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.867111, 41.447815, 46.671810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013426, -0.111760, 0.993644,
		0.730346, 0.677632, 0.086084,
		-0.682946, 0.726860, 0.072526,
		48.662228, 41.665874, 46.693569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.339439, 41.582657, 47.225147>,  <49.140289, 41.157070, 46.642799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.339439, 41.582657, 47.225147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.959259, 41.690819, 47.163799>,  <48.731152, 41.755714, 47.126991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.959259, 41.690819, 47.163799>,  <49.339439, 41.582657, 47.225147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.959259, 41.690819, 47.163799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152664, 0.023766, 0.987992,
		0.270804, 0.962453, 0.018693,
		-0.950452, 0.270406, -0.153368,
		48.674122, 41.771942, 47.117790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.214890, 41.996372, 47.787724>,  <49.339439, 41.582657, 47.225147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.214890, 41.996372, 47.787724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.849648, 41.885704, 47.667927>,  <48.630501, 41.819305, 47.596050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.849648, 41.885704, 47.667927>,  <49.214890, 41.996372, 47.787724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.849648, 41.885704, 47.667927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319075, 0.027593, 0.947328,
		-0.253831, 0.960570, -0.113474,
		-0.913105, -0.276668, -0.299490,
		48.575714, 41.802704, 47.578079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.798512, 42.437611, 48.149899>,  <49.214890, 41.996372, 47.787724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.798512, 42.437611, 48.149899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.559113, 42.147614, 48.013550>,  <48.415474, 41.973618, 47.931740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.559113, 42.147614, 48.013550>,  <48.798512, 42.437611, 48.149899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.559113, 42.147614, 48.013550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531749, 0.041249, 0.845897,
		-0.599204, 0.687525, -0.410199,
		-0.598496, -0.724988, -0.340875,
		48.379562, 41.930119, 47.911289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.094574, 42.680996, 48.238998>,  <48.798512, 42.437611, 48.149899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.094574, 42.680996, 48.238998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.099800, 42.281151, 48.229240>,  <48.102936, 42.041245, 48.223385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.099800, 42.281151, 48.229240>,  <48.094574, 42.680996, 48.238998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.099800, 42.281151, 48.229240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448528, -0.027665, 0.893341,
		-0.893673, -0.000735, -0.448718,
		0.013070, -0.999617, -0.024394,
		48.103722, 41.981266, 48.221924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.385605, 42.451576, 48.375172>,  <48.094574, 42.680996, 48.238998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.385605, 42.451576, 48.375172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592010, 42.117058, 48.449299>,  <47.715855, 41.916348, 48.493774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592010, 42.117058, 48.449299>,  <47.385605, 42.451576, 48.375172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.592010, 42.117058, 48.449299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426412, -0.063160, 0.902321,
		-0.742901, -0.544632, -0.389197,
		0.516014, -0.836294, 0.185316,
		47.746815, 41.866169, 48.504894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.905529, 41.989925, 48.580677>,  <47.385605, 42.451576, 48.375172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.905529, 41.989925, 48.580677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254318, 41.864494, 48.731056>,  <47.463593, 41.789238, 48.821285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254318, 41.864494, 48.731056>,  <46.905529, 41.989925, 48.580677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.254318, 41.864494, 48.731056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452639, -0.223841, 0.863141,
		-0.186497, -0.922807, -0.337115,
		0.871973, -0.313565, 0.375952,
		47.515911, 41.770420, 48.843842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747627, 41.374760, 49.053780>,  <46.905529, 41.989925, 48.580677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747627, 41.374760, 49.053780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.106560, 41.527771, 49.141846>,  <47.321918, 41.619576, 49.194687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.106560, 41.527771, 49.141846>,  <46.747627, 41.374760, 49.053780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.106560, 41.527771, 49.141846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208346, -0.072629, 0.975355,
		0.389089, -0.921085, 0.014525,
		0.897330, 0.382526, 0.220164,
		47.375759, 41.642529, 49.207893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.934971, 41.023113, 49.698006>,  <46.747627, 41.374760, 49.053780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.934971, 41.023113, 49.698006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180344, 41.338013, 49.672890>,  <47.327568, 41.526951, 49.657822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180344, 41.338013, 49.672890>,  <46.934971, 41.023113, 49.698006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.180344, 41.338013, 49.672890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016309, 0.092118, 0.995615,
		0.789579, -0.609717, 0.069348,
		0.613432, 0.787248, -0.062791,
		47.364372, 41.574188, 49.654053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.347443, 40.986862, 50.259537>,  <46.934971, 41.023113, 49.698006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.347443, 40.986862, 50.259537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.384659, 41.371605, 50.156639>,  <47.406986, 41.602451, 50.094902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.384659, 41.371605, 50.156639>,  <47.347443, 40.986862, 50.259537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.384659, 41.371605, 50.156639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154362, 0.269176, 0.950640,
		0.983624, -0.048736, 0.173518,
		0.093037, 0.961857, -0.257245,
		47.412571, 41.660164, 50.079464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.726315, 41.225910, 50.794273>,  <47.347443, 40.986862, 50.259537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.726315, 41.225910, 50.794273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.572586, 41.547325, 50.612453>,  <47.480347, 41.740173, 50.503361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.572586, 41.547325, 50.612453>,  <47.726315, 41.225910, 50.794273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.572586, 41.547325, 50.612453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268581, 0.373750, 0.887792,
		0.883265, 0.463285, 0.072174,
		-0.384326, 0.803541, -0.454550,
		47.457287, 41.788387, 50.476089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.131546, 41.756664, 51.050583>,  <47.726315, 41.225910, 50.794273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.131546, 41.756664, 51.050583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.786621, 41.900772, 50.908249>,  <47.579666, 41.987236, 50.822849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.786621, 41.900772, 50.908249>,  <48.131546, 41.756664, 51.050583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.786621, 41.900772, 50.908249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103867, 0.561926, 0.820640,
		0.495607, 0.744609, -0.447136,
		-0.862314, 0.360272, -0.355835,
		47.527927, 42.008854, 50.801498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.206802, 42.539555, 50.933186>,  <48.131546, 41.756664, 51.050583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.206802, 42.539555, 50.933186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.836388, 42.419792, 51.025112>,  <47.614140, 42.347935, 51.080269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.836388, 42.419792, 51.025112>,  <48.206802, 42.539555, 50.933186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.836388, 42.419792, 51.025112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078720, 0.442286, 0.893413,
		-0.369135, 0.845423, -0.386004,
		-0.926036, -0.299403, 0.229815,
		47.558578, 42.329971, 51.094055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.086094, 42.891647, 51.448658>,  <48.206802, 42.539555, 50.933186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.086094, 42.891647, 51.448658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759933, 42.662170, 51.479668>,  <47.564240, 42.524487, 51.498276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759933, 42.662170, 51.479668>,  <48.086094, 42.891647, 51.448658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.759933, 42.662170, 51.479668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141768, 0.327727, 0.934076,
		-0.561275, 0.750651, -0.348558,
		-0.815397, -0.573688, 0.077527,
		47.515316, 42.490063, 51.502926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.532677, 43.338680, 51.672813>,  <48.086094, 42.891647, 51.448658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.532677, 43.338680, 51.672813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.433708, 42.961311, 51.761124>,  <47.374329, 42.734890, 51.814110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.433708, 42.961311, 51.761124>,  <47.532677, 43.338680, 51.672813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.433708, 42.961311, 51.761124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237967, 0.280045, 0.930025,
		-0.939232, 0.177567, -0.293791,
		-0.247417, -0.943422, 0.220772,
		47.359482, 42.678284, 51.827354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.932915, 43.389759, 52.047058>,  <47.532677, 43.338680, 51.672813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.932915, 43.389759, 52.047058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084053, 43.030411, 52.136642>,  <47.174736, 42.814800, 52.190395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084053, 43.030411, 52.136642>,  <46.932915, 43.389759, 52.047058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.084053, 43.030411, 52.136642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205960, 0.154278, 0.966322,
		-0.902668, -0.411252, -0.126735,
		0.377849, -0.898371, 0.223964,
		47.197407, 42.760899, 52.203831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.403496, 43.063122, 52.595558>,  <46.932915, 43.389759, 52.047058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.403496, 43.063122, 52.595558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741211, 42.852638, 52.636116>,  <46.943840, 42.726349, 52.660450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741211, 42.852638, 52.636116>,  <46.403496, 43.063122, 52.595558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.741211, 42.852638, 52.636116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139071, -0.032421, 0.989752,
		-0.517532, -0.849735, -0.100553,
		0.844287, -0.526212, 0.101394,
		46.994495, 42.694775, 52.666534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.269264, 42.509342, 52.982185>,  <46.403496, 43.063122, 52.595558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.269264, 42.509342, 52.982185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.664757, 42.561928, 53.010853>,  <46.902050, 42.593479, 53.028053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.664757, 42.561928, 53.010853>,  <46.269264, 42.509342, 52.982185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.664757, 42.561928, 53.010853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063733, -0.063626, 0.995937,
		0.135488, -0.989277, -0.054531,
		0.988727, 0.131462, 0.071670,
		46.961376, 42.601368, 53.032352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.469330, 42.003349, 53.529446>,  <46.269264, 42.509342, 52.982185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.469330, 42.003349, 53.529446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751656, 42.280922, 53.472466>,  <46.921051, 42.447464, 53.438278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751656, 42.280922, 53.472466>,  <46.469330, 42.003349, 53.529446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.751656, 42.280922, 53.472466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010265, 0.191043, 0.981528,
		0.708323, -0.694238, 0.127718,
		0.705814, 0.693928, -0.142446,
		46.963402, 42.489101, 53.429733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.887470, 41.939888, 54.046062>,  <46.469330, 42.003349, 53.529446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.887470, 41.939888, 54.046062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984650, 42.313232, 53.940372>,  <47.042957, 42.537239, 53.876957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984650, 42.313232, 53.940372>,  <46.887470, 41.939888, 54.046062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.984650, 42.313232, 53.940372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030941, 0.279708, 0.959587,
		0.969546, -0.224951, 0.096833,
		0.242945, 0.933360, -0.264229,
		47.057533, 42.593239, 53.861103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.418751, 42.178459, 54.506947>,  <46.887470, 41.939888, 54.046062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.418751, 42.178459, 54.506947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.246147, 42.506989, 54.357697>,  <47.142586, 42.704105, 54.268147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.246147, 42.506989, 54.357697>,  <47.418751, 42.178459, 54.506947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.246147, 42.506989, 54.357697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019184, 0.405171, 0.914040,
		0.901903, 0.401578, -0.159080,
		-0.431513, 0.821323, -0.373129,
		47.116692, 42.753384, 54.245758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.762257, 42.687027, 54.788067>,  <47.418751, 42.178459, 54.506947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.762257, 42.687027, 54.788067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.458542, 42.894485, 54.630844>,  <47.276314, 43.018959, 54.536510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.458542, 42.894485, 54.630844>,  <47.762257, 42.687027, 54.788067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.458542, 42.894485, 54.630844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079070, 0.525998, 0.846802,
		0.645937, 0.674044, -0.358373,
		-0.759285, 0.518644, -0.393058,
		47.230755, 43.050079, 54.512928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.954445, 43.260971, 54.812042>,  <47.762257, 42.687027, 54.788067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.954445, 43.260971, 54.812042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.554741, 43.274933, 54.818398>,  <47.314919, 43.283310, 54.822208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.554741, 43.274933, 54.818398>,  <47.954445, 43.260971, 54.812042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.554741, 43.274933, 54.818398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027237, 0.354370, 0.934709,
		0.026996, 0.934454, -0.355060,
		-0.999264, 0.034905, 0.015885,
		47.254963, 43.285404, 54.823162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.909645, 43.736107, 55.187115>,  <47.954445, 43.260971, 54.812042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.909645, 43.736107, 55.187115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.543640, 43.574944, 55.195290>,  <47.324039, 43.478245, 55.200195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.543640, 43.574944, 55.195290>,  <47.909645, 43.736107, 55.187115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.543640, 43.574944, 55.195290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151588, 0.390312, 0.908118,
		-0.373868, 0.827839, -0.418216,
		-0.915010, -0.402913, 0.020434,
		47.269138, 43.454071, 55.201420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.453545, 44.242283, 55.316105>,  <47.909645, 43.736107, 55.187115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.453545, 44.242283, 55.316105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.250107, 43.919960, 55.437431>,  <47.128044, 43.726566, 55.510227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.250107, 43.919960, 55.437431>,  <47.453545, 44.242283, 55.316105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.250107, 43.919960, 55.437431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128913, 0.419580, 0.898518,
		-0.851299, 0.417882, -0.317276,
		-0.508597, -0.805809, 0.303317,
		47.097527, 43.678219, 55.528427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.837669, 44.472561, 55.684723>,  <47.453545, 44.242283, 55.316105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.837669, 44.472561, 55.684723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849342, 44.082428, 55.772236>,  <46.856346, 43.848347, 55.824745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849342, 44.082428, 55.772236>,  <46.837669, 44.472561, 55.684723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.849342, 44.082428, 55.772236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306459, 0.199608, 0.930720,
		-0.951437, -0.094206, -0.293076,
		0.029180, -0.975337, 0.218784,
		46.858097, 43.789825, 55.837872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.262482, 44.279686, 55.979881>,  <46.837669, 44.472561, 55.684723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.262482, 44.279686, 55.979881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.526581, 44.004044, 56.099350>,  <46.685040, 43.838657, 56.171032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.526581, 44.004044, 56.099350>,  <46.262482, 44.279686, 55.979881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.526581, 44.004044, 56.099350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233027, 0.190083, 0.953712,
		-0.713982, -0.699284, -0.035079,
		0.660248, -0.689108, 0.298668,
		46.724655, 43.797310, 56.188950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.900311, 43.894650, 56.492100>,  <46.262482, 44.279686, 55.979881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.900311, 43.894650, 56.492100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295532, 43.860222, 56.543243>,  <46.532665, 43.839565, 56.573929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295532, 43.860222, 56.543243>,  <45.900311, 43.894650, 56.492100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.295532, 43.860222, 56.543243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106226, 0.220798, 0.969518,
		-0.111673, -0.971515, 0.209017,
		0.988051, -0.086066, 0.127857,
		46.591949, 43.834400, 56.581600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.023575, 43.329777, 57.066730>,  <45.900311, 43.894650, 56.492100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.023575, 43.329777, 57.066730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318184, 43.598961, 57.039448>,  <46.494949, 43.760471, 57.023079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318184, 43.598961, 57.039448>,  <46.023575, 43.329777, 57.066730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.318184, 43.598961, 57.039448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081818, 0.188727, 0.978615,
		0.671441, -0.715197, 0.194063,
		0.736527, 0.672961, -0.068203,
		46.539143, 43.800850, 57.018986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.310509, 43.275829, 57.683399>,  <46.023575, 43.329777, 57.066730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.310509, 43.275829, 57.683399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481369, 43.615837, 57.560112>,  <46.583885, 43.819843, 57.486137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481369, 43.615837, 57.560112>,  <46.310509, 43.275829, 57.683399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481369, 43.615837, 57.560112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027388, 0.328564, 0.944085,
		0.903764, -0.411711, 0.117066,
		0.427154, 0.850023, -0.308221,
		46.609516, 43.870846, 57.467648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.975891, 43.409595, 58.064953>,  <46.310509, 43.275829, 57.683399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.975891, 43.409595, 58.064953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853699, 43.761673, 57.919662>,  <46.780384, 43.972919, 57.832489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853699, 43.761673, 57.919662>,  <46.975891, 43.409595, 58.064953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.853699, 43.761673, 57.919662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038290, 0.392510, 0.918950,
		0.951428, 0.266813, -0.153607,
		-0.305480, 0.880197, -0.363229,
		46.762054, 44.025734, 57.810692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.163521, 43.794807, 58.675968>,  <46.975891, 43.409595, 58.064953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.163521, 43.794807, 58.675968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.957664, 44.045013, 58.441406>,  <46.834148, 44.195137, 58.300671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.957664, 44.045013, 58.441406>,  <47.163521, 43.794807, 58.675968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.957664, 44.045013, 58.441406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156742, 0.603765, 0.781601,
		0.842954, 0.494161, -0.212680,
		-0.514646, 0.625518, -0.586402,
		46.803272, 44.232670, 58.265484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.577862, 44.432209, 58.665234>,  <47.163521, 43.794807, 58.675968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.577862, 44.432209, 58.665234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.188232, 44.488403, 58.594307>,  <46.954453, 44.522118, 58.551750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.188232, 44.488403, 58.594307>,  <47.577862, 44.432209, 58.665234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.188232, 44.488403, 58.594307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052556, 0.621849, 0.781372,
		0.220036, 0.770434, -0.598345,
		-0.974075, 0.140484, -0.177320,
		46.896011, 44.530548, 58.541111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.459648, 45.146912, 58.611423>,  <47.577862, 44.432209, 58.665234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.459648, 45.146912, 58.611423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115540, 44.981140, 58.730206>,  <46.909077, 44.881676, 58.801476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115540, 44.981140, 58.730206>,  <47.459648, 45.146912, 58.611423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.115540, 44.981140, 58.730206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136490, 0.748399, 0.649053,
		-0.491230, 0.517829, -0.700390,
		-0.860270, -0.414430, 0.296957,
		46.857460, 44.856812, 58.819294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.131248, 45.715061, 58.787663>,  <47.459648, 45.146912, 58.611423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.131248, 45.715061, 58.787663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926666, 45.420715, 58.965164>,  <46.803917, 45.244110, 59.071667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926666, 45.420715, 58.965164>,  <47.131248, 45.715061, 58.787663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.926666, 45.420715, 58.965164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211709, 0.608398, 0.764873,
		-0.832819, 0.297255, -0.466960,
		-0.511460, -0.735861, 0.443754,
		46.773228, 45.199959, 59.098289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.603172, 46.038448, 59.203835>,  <47.131248, 45.715061, 58.787663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.603172, 46.038448, 59.203835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566719, 45.676804, 59.370819>,  <46.544846, 45.459816, 59.471008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566719, 45.676804, 59.370819>,  <46.603172, 46.038448, 59.203835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.566719, 45.676804, 59.370819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297723, 0.424769, 0.854946,
		-0.950292, -0.046373, -0.307886,
		-0.091134, -0.904113, 0.417461,
		46.539379, 45.405571, 59.496056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945324, 46.007298, 59.598244>,  <46.603172, 46.038448, 59.203835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945324, 46.007298, 59.598244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179787, 45.719574, 59.747383>,  <46.320465, 45.546940, 59.836868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179787, 45.719574, 59.747383>,  <45.945324, 46.007298, 59.598244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.179787, 45.719574, 59.747383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305973, 0.229587, 0.923943,
		-0.750201, -0.655657, -0.085515,
		0.586156, -0.719308, 0.372850,
		46.355633, 45.503780, 59.859238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504726, 45.661652, 60.005280>,  <45.945324, 46.007298, 59.598244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504726, 45.661652, 60.005280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867981, 45.547661, 60.127972>,  <46.085934, 45.479267, 60.201588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867981, 45.547661, 60.127972>,  <45.504726, 45.661652, 60.005280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867981, 45.547661, 60.127972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240827, 0.243730, 0.939467,
		-0.342489, -0.927029, 0.152708,
		0.908132, -0.284981, 0.306728,
		46.140419, 45.462166, 60.219990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470684, 45.277409, 60.537670>,  <45.504726, 45.661652, 60.005280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470684, 45.277409, 60.537670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846313, 45.406250, 60.585648>,  <46.071693, 45.483555, 60.614433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846313, 45.406250, 60.585648>,  <45.470684, 45.277409, 60.537670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846313, 45.406250, 60.585648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212583, 0.270080, 0.939077,
		0.270080, -0.907364, 0.322099,
		-0.939077, -0.322099, -0.119947,
		46.128036, 45.502880, 60.621632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638088, 45.024223, 61.181053>,  <45.470684, 45.277409, 60.537670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638088, 45.024223, 61.181053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864075, 45.343468, 61.097309>,  <45.999668, 45.535015, 61.047062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864075, 45.343468, 61.097309>,  <45.638088, 45.024223, 61.181053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864075, 45.343468, 61.097309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221122, 0.390903, 0.893476,
		0.794930, -0.458493, 0.397328,
		0.564970, 0.798109, -0.209357,
		46.033566, 45.582901, 61.034500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127975, 45.141499, 61.692024>,  <45.638088, 45.024223, 61.181053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127975, 45.141499, 61.692024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086823, 45.494293, 61.508064>,  <46.062130, 45.705971, 61.397686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086823, 45.494293, 61.508064>,  <46.127975, 45.141499, 61.692024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086823, 45.494293, 61.508064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034078, 0.458959, 0.887804,
		0.994109, 0.107015, -0.017164,
		-0.102886, 0.881989, -0.459902,
		46.055958, 45.758888, 61.370094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.721424, 45.534870, 61.883770>,  <46.127975, 45.141499, 61.692024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.721424, 45.534870, 61.883770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384644, 45.736885, 61.807816>,  <46.182575, 45.858093, 61.762241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384644, 45.736885, 61.807816>,  <46.721424, 45.534870, 61.883770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.384644, 45.736885, 61.807816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097563, 0.488640, 0.867013,
		0.530661, 0.711456, -0.460683,
		-0.841950, 0.505036, -0.189890,
		46.132057, 45.888397, 61.750847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.851410, 46.319153, 61.636440>,  <46.721424, 45.534870, 61.883770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.851410, 46.319153, 61.636440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522919, 46.227356, 61.845406>,  <46.325825, 46.172279, 61.970787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522919, 46.227356, 61.845406>,  <46.851410, 46.319153, 61.636440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.522919, 46.227356, 61.845406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279909, 0.635800, 0.719311,
		-0.497228, 0.736948, -0.457900,
		-0.821228, -0.229491, 0.522416,
		46.276550, 46.158508, 62.002129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.456032, 46.985268, 61.860703>,  <46.851410, 46.319153, 61.636440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.456032, 46.985268, 61.860703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360725, 46.681244, 62.102539>,  <46.303539, 46.498829, 62.247643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360725, 46.681244, 62.102539>,  <46.456032, 46.985268, 61.860703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.360725, 46.681244, 62.102539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389380, 0.495536, 0.776420,
		-0.889725, 0.420413, 0.177883,
		-0.238270, -0.760064, 0.604591,
		46.289246, 46.453224, 62.283916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.144703, 47.223549, 62.384087>,  <46.456032, 46.985268, 61.860703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.144703, 47.223549, 62.384087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.313080, 46.878990, 62.497791>,  <46.414104, 46.672256, 62.566013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.313080, 46.878990, 62.497791>,  <46.144703, 47.223549, 62.384087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.313080, 46.878990, 62.497791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469444, 0.475020, 0.744298,
		-0.776166, -0.179859, 0.604332,
		0.420938, -0.861398, 0.284261,
		46.439362, 46.620571, 62.583069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201622, 47.198158, 63.083378>,  <46.144703, 47.223549, 62.384087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201622, 47.198158, 63.083378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124664, 47.565163, 63.222603>,  <46.078491, 47.785366, 63.306137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124664, 47.565163, 63.222603>,  <46.201622, 47.198158, 63.083378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124664, 47.565163, 63.222603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374167, 0.259308, -0.890370,
		-0.907184, -0.301537, 0.293414,
		-0.192395, 0.917515, 0.348065,
		46.066944, 47.840416, 63.327023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.526569, 47.346344, 62.984863>,  <46.201622, 47.198158, 63.083378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.526569, 47.346344, 62.984863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738770, 47.685295, 62.975746>,  <45.866089, 47.888664, 62.970276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738770, 47.685295, 62.975746>,  <45.526569, 47.346344, 62.984863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738770, 47.685295, 62.975746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334318, 0.184435, -0.924238,
		-0.778975, 0.497930, 0.381136,
		0.530500, 0.847378, -0.022797,
		45.897919, 47.939510, 62.968906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240788, 47.626125, 62.386646>,  <45.526569, 47.346344, 62.984863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240788, 47.626125, 62.386646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593224, 47.799416, 62.462536>,  <45.804684, 47.903389, 62.508068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593224, 47.799416, 62.462536>,  <45.240788, 47.626125, 62.386646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593224, 47.799416, 62.462536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016798, 0.372233, -0.927987,
		-0.472648, 0.820829, 0.320694,
		0.881091, 0.433224, 0.189723,
		45.857552, 47.929382, 62.519451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.273205, 48.362255, 62.189854>,  <45.240788, 47.626125, 62.386646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.273205, 48.362255, 62.189854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598923, 48.137489, 62.131645>,  <45.794353, 48.002632, 62.096722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598923, 48.137489, 62.131645>,  <45.273205, 48.362255, 62.189854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598923, 48.137489, 62.131645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001939, 0.253333, -0.967377,
		0.580446, 0.787449, 0.207377,
		0.814296, -0.561913, -0.145519,
		45.843212, 47.968914, 62.087990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229816, 48.436176, 61.503769>,  <45.273205, 48.362255, 62.189854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229816, 48.436176, 61.503769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591713, 48.278450, 61.568214>,  <45.808849, 48.183815, 61.606880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591713, 48.278450, 61.568214>,  <45.229816, 48.436176, 61.503769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591713, 48.278450, 61.568214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211339, 0.087146, -0.973520,
		0.369834, 0.914834, 0.162179,
		0.904743, -0.394315, 0.161110,
		45.863136, 48.160156, 61.616547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765476, 48.861607, 61.215542>,  <45.229816, 48.436176, 61.503769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765476, 48.861607, 61.215542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879112, 48.478088, 61.216286>,  <45.947296, 48.247978, 61.216732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879112, 48.478088, 61.216286>,  <45.765476, 48.861607, 61.215542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879112, 48.478088, 61.216286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194678, 0.055781, -0.979280,
		0.938825, 0.278569, 0.202503,
		0.284092, -0.958795, 0.001862,
		45.964340, 48.190449, 61.216843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.322269, 48.896797, 60.835861>,  <45.765476, 48.861607, 61.215542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.322269, 48.896797, 60.835861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.215149, 48.511406, 60.836445>,  <46.150875, 48.280170, 60.836796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.215149, 48.511406, 60.836445>,  <46.322269, 48.896797, 60.835861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.215149, 48.511406, 60.836445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317945, -0.089807, -0.943846,
		0.909502, -0.252297, 0.330382,
		-0.267800, -0.963473, 0.001463,
		46.134808, 48.222363, 60.836884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.889763, 48.588306, 60.435188>,  <46.322269, 48.896797, 60.835861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.889763, 48.588306, 60.435188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.568542, 48.349960, 60.438042>,  <46.375809, 48.206951, 60.439754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.568542, 48.349960, 60.438042>,  <46.889763, 48.588306, 60.435188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.568542, 48.349960, 60.438042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135039, -0.193632, -0.971736,
		0.580406, -0.779392, 0.235962,
		-0.803053, -0.595866, 0.007136,
		46.327625, 48.171200, 60.440182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.083378, 47.837997, 60.160519>,  <46.889763, 48.588306, 60.435188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.083378, 47.837997, 60.160519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693001, 47.913605, 60.117065>,  <46.458775, 47.958969, 60.090992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693001, 47.913605, 60.117065>,  <47.083378, 47.837997, 60.160519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.693001, 47.913605, 60.117065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056547, -0.261787, -0.963468,
		-0.210549, -0.946436, 0.244802,
		-0.975947, 0.189014, -0.108637,
		46.400215, 47.970310, 60.084473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.844379, 47.351540, 59.666992>,  <47.083378, 47.837997, 60.160519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.844379, 47.351540, 59.666992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547173, 47.617249, 59.699650>,  <46.368851, 47.776676, 59.719246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547173, 47.617249, 59.699650>,  <46.844379, 47.351540, 59.666992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.547173, 47.617249, 59.699650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212234, -0.118159, -0.970049,
		-0.634733, -0.738089, 0.228776,
		-0.743015, 0.664276, 0.081648,
		46.324268, 47.816532, 59.724144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353603, 47.098499, 59.276684>,  <46.844379, 47.351540, 59.666992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353603, 47.098499, 59.276684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239204, 47.480217, 59.311371>,  <46.170567, 47.709248, 59.332184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239204, 47.480217, 59.311371>,  <46.353603, 47.098499, 59.276684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.239204, 47.480217, 59.311371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293774, -0.001183, -0.955874,
		-0.912086, -0.298853, 0.280686,
		-0.285999, 0.954298, 0.086716,
		46.153404, 47.766506, 59.337387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744183, 47.065266, 58.903870>,  <46.353603, 47.098499, 59.276684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744183, 47.065266, 58.903870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850220, 47.450951, 58.905579>,  <45.913841, 47.682362, 58.906605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850220, 47.450951, 58.905579>,  <45.744183, 47.065266, 58.903870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850220, 47.450951, 58.905579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214823, 0.063378, -0.974595,
		-0.939987, 0.257445, 0.223936,
		0.265097, 0.964212, 0.004270,
		45.929749, 47.740215, 58.906860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231270, 47.454689, 58.493385>,  <45.744183, 47.065266, 58.903870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231270, 47.454689, 58.493385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578308, 47.653481, 58.486633>,  <45.786530, 47.772755, 58.482582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578308, 47.653481, 58.486633>,  <45.231270, 47.454689, 58.493385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578308, 47.653481, 58.486633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022799, 0.005850, -0.999723,
		-0.496745, 0.867741, 0.016406,
		0.867597, 0.496982, -0.016877,
		45.838589, 47.802574, 58.481571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.123421, 47.861664, 57.910065>,  <45.231270, 47.454689, 58.493385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.123421, 47.861664, 57.910065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516190, 47.901855, 57.974228>,  <45.751850, 47.925972, 58.012726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516190, 47.901855, 57.974228>,  <45.123421, 47.861664, 57.910065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516190, 47.901855, 57.974228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142418, 0.166014, -0.975785,
		-0.124679, 0.980991, 0.148703,
		0.981923, 0.100482, 0.160410,
		45.810768, 47.931999, 58.022350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277298, 48.474258, 57.569901>,  <45.123421, 47.861664, 57.910065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277298, 48.474258, 57.569901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612549, 48.257103, 57.591114>,  <45.813698, 48.126808, 57.603840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612549, 48.257103, 57.591114>,  <45.277298, 48.474258, 57.569901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612549, 48.257103, 57.591114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114351, 0.079811, -0.990229,
		0.533355, 0.836001, 0.128972,
		0.838126, -0.542892, 0.053030,
		45.863987, 48.094234, 57.607021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.711498, 48.803776, 57.096600>,  <45.277298, 48.474258, 57.569901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.711498, 48.803776, 57.096600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880630, 48.444450, 57.144356>,  <45.982109, 48.228855, 57.173012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880630, 48.444450, 57.144356>,  <45.711498, 48.803776, 57.096600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880630, 48.444450, 57.144356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216215, -0.027941, -0.975946,
		0.880038, 0.438472, 0.182414,
		0.422828, -0.898310, 0.119393,
		46.007481, 48.174957, 57.180172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457264, 48.788948, 56.861568>,  <45.711498, 48.803776, 57.096600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457264, 48.788948, 56.861568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.327141, 48.411324, 56.839928>,  <46.249065, 48.184750, 56.826942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.327141, 48.411324, 56.839928>,  <46.457264, 48.788948, 56.861568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.327141, 48.411324, 56.839928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363023, -0.071854, -0.929006,
		0.873148, -0.321855, 0.366089,
		-0.325310, -0.944059, -0.054101,
		46.229549, 48.128105, 56.823696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.000446, 48.433983, 56.521133>,  <46.457264, 48.788948, 56.861568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.000446, 48.433983, 56.521133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682060, 48.198975, 56.462807>,  <46.491028, 48.057968, 56.427811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682060, 48.198975, 56.462807>,  <47.000446, 48.433983, 56.521133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.682060, 48.198975, 56.462807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262954, -0.118613, -0.957490,
		0.545249, -0.800469, 0.248902,
		-0.795964, -0.587520, -0.145813,
		46.443272, 48.022720, 56.419064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.224152, 47.887653, 56.122753>,  <47.000446, 48.433983, 56.521133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.224152, 47.887653, 56.122753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831604, 47.853867, 56.053722>,  <46.596077, 47.833595, 56.012306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831604, 47.853867, 56.053722>,  <47.224152, 47.887653, 56.122753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831604, 47.853867, 56.053722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186131, -0.195131, -0.962953,
		0.047667, -0.977133, 0.207218,
		-0.981368, -0.084471, -0.172573,
		46.537193, 47.828526, 56.001949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.130192, 47.202061, 55.761578>,  <47.224152, 47.887653, 56.122753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.130192, 47.202061, 55.761578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.825302, 47.450111, 55.687325>,  <46.642368, 47.598942, 55.642773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.825302, 47.450111, 55.687325>,  <47.130192, 47.202061, 55.761578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.825302, 47.450111, 55.687325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177671, -0.075341, -0.981202,
		-0.622455, -0.780876, -0.052752,
		-0.762222, 0.620126, -0.185636,
		46.596634, 47.636150, 55.631634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.737873, 46.881821, 55.334076>,  <47.130192, 47.202061, 55.761578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.737873, 46.881821, 55.334076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.605637, 47.255638, 55.281391>,  <46.526295, 47.479927, 55.249783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.605637, 47.255638, 55.281391>,  <46.737873, 46.881821, 55.334076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.605637, 47.255638, 55.281391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219552, -0.059574, -0.973780,
		-0.917882, -0.350838, -0.185485,
		-0.330589, 0.934539, -0.131709,
		46.506458, 47.535999, 55.241879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570541, 46.861313, 54.715603>,  <46.737873, 46.881821, 55.334076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570541, 46.861313, 54.715603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570580, 47.258118, 54.766052>,  <46.570602, 47.496201, 54.796322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570580, 47.258118, 54.766052>,  <46.570541, 46.861313, 54.715603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570580, 47.258118, 54.766052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161786, 0.124447, -0.978948,
		-0.986826, 0.020495, -0.160482,
		0.000092, 0.992015, 0.126124,
		46.570606, 47.555721, 54.803890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167458, 47.058628, 54.211155>,  <46.570541, 46.861313, 54.715603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167458, 47.058628, 54.211155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401291, 47.368660, 54.307083>,  <46.541592, 47.554680, 54.364639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401291, 47.368660, 54.307083>,  <46.167458, 47.058628, 54.211155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401291, 47.368660, 54.307083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214901, 0.137108, -0.966964,
		-0.782353, 0.616812, -0.086413,
		0.584587, 0.775077, 0.239820,
		46.576668, 47.601185, 54.379028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.985950, 47.476391, 53.747913>,  <46.167458, 47.058628, 54.211155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.985950, 47.476391, 53.747913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343979, 47.613586, 53.861900>,  <46.558796, 47.695904, 53.930294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343979, 47.613586, 53.861900>,  <45.985950, 47.476391, 53.747913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343979, 47.613586, 53.861900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279701, 0.065887, -0.957824,
		-0.347301, 0.937025, -0.036961,
		0.895070, 0.342991, 0.284969,
		46.612499, 47.716484, 53.947392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061890, 48.121754, 53.426880>,  <45.985950, 47.476391, 53.747913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061890, 48.121754, 53.426880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430939, 47.992836, 53.511635>,  <46.652367, 47.915485, 53.562489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430939, 47.992836, 53.511635>,  <46.061890, 48.121754, 53.426880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430939, 47.992836, 53.511635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228858, 0.015251, -0.973340,
		0.310474, 0.946515, 0.087832,
		0.922621, -0.322298, 0.211883,
		46.707726, 47.896145, 53.575199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547749, 48.497131, 52.923569>,  <46.061890, 48.121754, 53.426880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547749, 48.497131, 52.923569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764191, 48.188004, 53.056213>,  <46.894054, 48.002529, 53.135799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764191, 48.188004, 53.056213>,  <46.547749, 48.497131, 52.923569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764191, 48.188004, 53.056213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538384, 0.015428, -0.842558,
		0.646026, 0.634443, 0.424420,
		0.541103, -0.772815, 0.331608,
		46.926521, 47.956158, 53.155697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.268963, 48.657181, 52.876266>,  <46.547749, 48.497131, 52.923569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.268963, 48.657181, 52.876266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230453, 48.259300, 52.861870>,  <47.207348, 48.020573, 52.853233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230453, 48.259300, 52.861870>,  <47.268963, 48.657181, 52.876266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.230453, 48.259300, 52.861870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510964, -0.018361, -0.859406,
		0.854194, -0.101125, 0.510026,
		-0.096272, -0.994704, -0.035988,
		47.201572, 47.960888, 52.851074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.922932, 48.376892, 52.602005>,  <47.268963, 48.657181, 52.876266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.922932, 48.376892, 52.602005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.670769, 48.067024, 52.582130>,  <47.519470, 47.881104, 52.570206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.670769, 48.067024, 52.582130>,  <47.922932, 48.376892, 52.602005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.670769, 48.067024, 52.582130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385324, -0.256718, -0.886353,
		0.673879, -0.577908, 0.460337,
		-0.630407, -0.774673, -0.049685,
		47.481647, 47.834621, 52.567226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.316082, 47.737041, 52.618599>,  <47.922932, 48.376892, 52.602005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.316082, 47.737041, 52.618599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.972702, 47.627563, 52.445095>,  <47.766674, 47.561874, 52.340992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.972702, 47.627563, 52.445095>,  <48.316082, 47.737041, 52.618599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.972702, 47.627563, 52.445095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509968, -0.365318, -0.778765,
		0.054685, -0.889737, 0.453185,
		-0.858453, -0.273697, -0.433760,
		47.715164, 47.545456, 52.314968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.471428, 47.070507, 52.291374>,  <48.316082, 47.737041, 52.618599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.471428, 47.070507, 52.291374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.134186, 47.176544, 52.104229>,  <47.931839, 47.240166, 51.991943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.134186, 47.176544, 52.104229>,  <48.471428, 47.070507, 52.291374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.134186, 47.176544, 52.104229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362391, -0.362705, -0.858556,
		-0.397303, -0.893401, 0.209727,
		-0.843103, 0.265104, -0.467864,
		47.881252, 47.256073, 51.963871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.237915, 46.460152, 51.956600>,  <48.471428, 47.070507, 52.291374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.237915, 46.460152, 51.956600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.087540, 46.780952, 51.770927>,  <47.997314, 46.973434, 51.659523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.087540, 46.780952, 51.770927>,  <48.237915, 46.460152, 51.956600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.087540, 46.780952, 51.770927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369569, -0.329601, -0.868782,
		-0.849760, -0.498152, -0.172487,
		-0.375934, 0.802002, -0.464183,
		47.974758, 47.021553, 51.631672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.867477, 46.129719, 51.547325>,  <48.237915, 46.460152, 51.956600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.867477, 46.129719, 51.547325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.938080, 46.491478, 51.391933>,  <47.980442, 46.708534, 51.298698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.938080, 46.491478, 51.391933>,  <47.867477, 46.129719, 51.547325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.938080, 46.491478, 51.391933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139966, -0.413726, -0.899578,
		-0.974298, 0.104405, -0.199609,
		0.176504, 0.904395, -0.388479,
		47.991032, 46.762798, 51.275391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.419392, 46.172195, 50.991993>,  <47.867477, 46.129719, 51.547325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.419392, 46.172195, 50.991993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.698486, 46.446861, 50.910347>,  <47.865944, 46.611660, 50.861359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.698486, 46.446861, 50.910347>,  <47.419392, 46.172195, 50.991993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.698486, 46.446861, 50.910347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063764, -0.343335, -0.937046,
		-0.713513, 0.640794, -0.283341,
		0.697734, 0.686662, -0.204115,
		47.907806, 46.652859, 50.849113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.220963, 46.353333, 50.283157>,  <47.419392, 46.172195, 50.991993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.220963, 46.353333, 50.283157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.597244, 46.471527, 50.349792>,  <47.823013, 46.542446, 50.389774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.597244, 46.471527, 50.349792>,  <47.220963, 46.353333, 50.283157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.597244, 46.471527, 50.349792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270489, -0.357072, -0.894056,
		-0.204701, 0.886107, -0.415828,
		0.940709, 0.295491, 0.166589,
		47.879456, 46.560173, 50.399769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.482231, 46.603340, 49.693535>,  <47.220963, 46.353333, 50.283157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.482231, 46.603340, 49.693535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834129, 46.555466, 49.877586>,  <48.045269, 46.526741, 49.988018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834129, 46.555466, 49.877586>,  <47.482231, 46.603340, 49.693535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.834129, 46.555466, 49.877586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413674, -0.284345, -0.864883,
		0.234351, 0.951222, -0.200640,
		0.879746, -0.119686, 0.460132,
		48.098053, 46.519558, 50.015625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.984352, 46.937401, 49.309750>,  <47.482231, 46.603340, 49.693535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.984352, 46.937401, 49.309750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.195877, 46.682693, 49.534206>,  <48.322792, 46.529869, 49.668880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.195877, 46.682693, 49.534206>,  <47.984352, 46.937401, 49.309750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.195877, 46.682693, 49.534206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460583, -0.340033, -0.819903,
		0.712894, 0.692031, 0.113469,
		0.528816, -0.636766, 0.561145,
		48.354523, 46.491665, 49.702549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.671925, 47.071709, 49.197994>,  <47.984352, 46.937401, 49.309750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.671925, 47.071709, 49.197994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.663506, 46.691101, 49.320744>,  <48.658455, 46.462738, 49.394394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.663506, 46.691101, 49.320744>,  <48.671925, 47.071709, 49.197994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.663506, 46.691101, 49.320744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547737, -0.267750, -0.792650,
		0.836386, 0.151405, 0.526816,
		-0.021043, -0.951518, 0.306872,
		48.657192, 46.405647, 49.412804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.224796, 46.886002, 48.894211>,  <48.671925, 47.071709, 49.197994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.224796, 46.886002, 48.894211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.071175, 46.534798, 49.008476>,  <48.979000, 46.324078, 49.077034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.071175, 46.534798, 49.008476>,  <49.224796, 46.886002, 48.894211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.071175, 46.534798, 49.008476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584255, -0.470670, -0.661148,
		0.714945, -0.087021, 0.693745,
		-0.384059, -0.878008, 0.285660,
		48.955956, 46.271397, 49.094173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.706974, 46.422203, 48.915730>,  <49.224796, 46.886002, 48.894211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.706974, 46.422203, 48.915730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.387756, 46.181534, 48.902336>,  <49.196228, 46.037132, 48.894299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.387756, 46.181534, 48.902336>,  <49.706974, 46.422203, 48.915730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.387756, 46.181534, 48.902336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430889, -0.530911, -0.729704,
		0.421266, -0.596762, 0.682943,
		-0.798041, -0.601672, -0.033483,
		49.148342, 46.001034, 48.892292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.936592, 45.759121, 48.870861>,  <49.706974, 46.422203, 48.915730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.936592, 45.759121, 48.870861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.575768, 45.725899, 48.701447>,  <49.359272, 45.705963, 48.599796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.575768, 45.725899, 48.701447>,  <49.936592, 45.759121, 48.870861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.575768, 45.725899, 48.701447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377730, -0.626689, -0.681602,
		-0.208814, -0.774830, 0.596686,
		-0.902063, -0.083059, -0.423538,
		49.305149, 45.700981, 48.574387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.861526, 45.078793, 48.686722>,  <49.936592, 45.759121, 48.870861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.861526, 45.078793, 48.686722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.586876, 45.251144, 48.452496>,  <49.422085, 45.354557, 48.311958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.586876, 45.251144, 48.452496>,  <49.861526, 45.078793, 48.686722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.586876, 45.251144, 48.452496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137590, -0.713873, -0.686625,
		-0.713873, -0.552022, 0.430879,
		0.686625, -0.430879, 0.585568,
		49.380890, 45.380409, 48.276825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.456974, 44.511364, 48.476192>,  <49.861526, 45.078793, 48.686722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.456974, 44.511364, 48.476192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.349434, 44.803589, 48.225117>,  <49.284912, 44.978924, 48.074471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.349434, 44.803589, 48.225117>,  <49.456974, 44.511364, 48.476192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.349434, 44.803589, 48.225117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050286, -0.640152, -0.766601,
		-0.961869, -0.237663, 0.135366,
		-0.268848, 0.730563, -0.627693,
		49.268780, 45.022758, 48.036808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.870090, 44.322685, 48.221210>,  <49.456974, 44.511364, 48.476192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.870090, 44.322685, 48.221210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.031029, 44.571434, 47.952465>,  <49.127590, 44.720684, 47.791218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.031029, 44.571434, 47.952465>,  <48.870090, 44.322685, 48.221210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.031029, 44.571434, 47.952465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177600, -0.666923, -0.723651,
		-0.898096, 0.410480, -0.157890,
		0.402345, 0.621867, -0.671863,
		49.151733, 44.757996, 47.750908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.382328, 44.378387, 47.632526>,  <48.870090, 44.322685, 48.221210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.382328, 44.378387, 47.632526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.738647, 44.492271, 47.490871>,  <48.952438, 44.560600, 47.405876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.738647, 44.492271, 47.490871>,  <48.382328, 44.378387, 47.632526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.738647, 44.492271, 47.490871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125012, -0.595735, -0.793392,
		-0.436859, 0.751026, -0.495090,
		0.890801, 0.284708, -0.354140,
		49.005886, 44.577682, 47.384628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.228287, 44.573547, 46.994797>,  <48.382328, 44.378387, 47.632526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.228287, 44.573547, 46.994797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.619843, 44.508736, 46.944969>,  <48.854778, 44.469849, 46.915073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.619843, 44.508736, 46.944969>,  <48.228287, 44.573547, 46.994797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.619843, 44.508736, 46.944969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198838, -0.614116, -0.763757,
		0.047252, 0.772405, -0.633370,
		0.978892, -0.162027, -0.124565,
		48.913509, 44.460129, 46.907600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.789242, 44.985790, 47.413170>,  <48.228287, 44.573547, 46.994797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.789242, 44.985790, 47.413170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.555496, 45.018089, 47.090183>,  <47.415249, 45.037468, 46.896393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.555496, 45.018089, 47.090183>,  <47.789242, 44.985790, 47.413170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.555496, 45.018089, 47.090183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684114, 0.486173, 0.543713,
		0.436471, 0.870124, -0.228861,
		-0.584364, 0.080748, -0.807464,
		47.380188, 45.042313, 46.847942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.576420, 45.700607, 47.271481>,  <47.789242, 44.985790, 47.413170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.576420, 45.700607, 47.271481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.322662, 45.409203, 47.168087>,  <47.170406, 45.234360, 47.106052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.322662, 45.409203, 47.168087>,  <47.576420, 45.700607, 47.271481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.322662, 45.409203, 47.168087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708439, 0.414146, 0.571487,
		-0.309288, 0.545666, -0.778839,
		-0.634394, -0.728514, -0.258480,
		47.132343, 45.190647, 47.090542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.944557, 46.009941, 47.248970>,  <47.576420, 45.700607, 47.271481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.944557, 46.009941, 47.248970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.812004, 45.632545, 47.249874>,  <46.732471, 45.406109, 47.250416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.812004, 45.632545, 47.249874>,  <46.944557, 46.009941, 47.248970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.812004, 45.632545, 47.249874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673824, 0.238345, 0.699395,
		-0.660414, 0.230243, -0.714732,
		-0.331383, -0.943494, 0.002263,
		46.712589, 45.349499, 47.250553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204967, 46.035938, 47.107616>,  <46.944557, 46.009941, 47.248970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204967, 46.035938, 47.107616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.280090, 45.691864, 47.297276>,  <46.325165, 45.485420, 47.411072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.280090, 45.691864, 47.297276>,  <46.204967, 46.035938, 47.107616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280090, 45.691864, 47.297276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712202, 0.213172, 0.668825,
		-0.676386, -0.463299, -0.572587,
		0.187807, -0.860181, 0.474149,
		46.336433, 45.433811, 47.439522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.580101, 45.705048, 47.206627>,  <46.204967, 46.035938, 47.107616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.580101, 45.705048, 47.206627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814651, 45.548264, 47.490181>,  <45.955383, 45.454193, 47.660313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814651, 45.548264, 47.490181>,  <45.580101, 45.705048, 47.206627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.814651, 45.548264, 47.490181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716797, 0.156552, 0.679480,
		-0.377311, -0.906562, -0.189161,
		0.586377, -0.391966, 0.708889,
		45.990566, 45.430676, 47.702847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167057, 45.310093, 47.557194>,  <45.580101, 45.705048, 47.206627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167057, 45.310093, 47.557194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.474922, 45.344330, 47.810268>,  <45.659641, 45.364872, 47.962112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.474922, 45.344330, 47.810268>,  <45.167057, 45.310093, 47.557194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.474922, 45.344330, 47.810268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633658, -0.018768, 0.773386,
		0.078073, -0.996153, 0.039794,
		0.769664, 0.085596, 0.632686,
		45.705822, 45.370007, 48.000072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038727, 44.771160, 48.099350>,  <45.167057, 45.310093, 47.557194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038727, 44.771160, 48.099350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309875, 45.013298, 48.266228>,  <45.472565, 45.158581, 48.366356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309875, 45.013298, 48.266228>,  <45.038727, 44.771160, 48.099350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309875, 45.013298, 48.266228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457077, -0.097454, 0.884072,
		0.575827, -0.789974, 0.210629,
		0.677867, 0.605346, 0.417195,
		45.513237, 45.194901, 48.391388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152328, 44.467045, 48.706367>,  <45.038727, 44.771160, 48.099350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152328, 44.467045, 48.706367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242668, 44.856094, 48.728252>,  <45.296871, 45.089523, 48.741383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242668, 44.856094, 48.728252>,  <45.152328, 44.467045, 48.706367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242668, 44.856094, 48.728252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499660, 0.067447, 0.863592,
		0.836260, -0.222379, 0.501215,
		0.225850, 0.972624, 0.054710,
		45.310425, 45.147881, 48.744667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513039, 44.622875, 49.381714>,  <45.152328, 44.467045, 48.706367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513039, 44.622875, 49.381714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370506, 44.978119, 49.265583>,  <45.284988, 45.191265, 49.195904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370506, 44.978119, 49.265583>,  <45.513039, 44.622875, 49.381714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370506, 44.978119, 49.265583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428712, 0.120687, 0.895344,
		0.830202, 0.443506, 0.337738,
		-0.356330, 0.888108, -0.290331,
		45.263607, 45.244553, 49.178482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716633, 45.010601, 49.854996>,  <45.513039, 44.622875, 49.381714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716633, 45.010601, 49.854996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465439, 45.266479, 49.677719>,  <45.314724, 45.420006, 49.571354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465439, 45.266479, 49.677719>,  <45.716633, 45.010601, 49.854996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465439, 45.266479, 49.677719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151871, 0.457801, 0.875987,
		0.763263, 0.617415, -0.190340,
		-0.627985, 0.639701, -0.443190,
		45.277042, 45.458389, 49.544762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874313, 45.684536, 50.132599>,  <45.716633, 45.010601, 49.854996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874313, 45.684536, 50.132599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506882, 45.720207, 49.978584>,  <45.286423, 45.741611, 49.886177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506882, 45.720207, 49.978584>,  <45.874313, 45.684536, 50.132599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506882, 45.720207, 49.978584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268492, 0.574096, 0.773515,
		0.290032, 0.813917, -0.503410,
		-0.918582, 0.089183, -0.385036,
		45.231308, 45.746964, 49.863075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683437, 46.397682, 50.176689>,  <45.874313, 45.684536, 50.132599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683437, 46.397682, 50.176689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343124, 46.187775, 50.165447>,  <45.138939, 46.061829, 50.158703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343124, 46.187775, 50.165447>,  <45.683437, 46.397682, 50.176689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343124, 46.187775, 50.165447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285703, 0.416976, 0.862847,
		-0.441075, 0.742124, -0.504683,
		-0.850780, -0.524770, -0.028109,
		45.087891, 46.030342, 50.157013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165451, 46.831661, 50.243507>,  <45.683437, 46.397682, 50.176689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165451, 46.831661, 50.243507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.965462, 46.490166, 50.301693>,  <44.845467, 46.285271, 50.336605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.965462, 46.490166, 50.301693>,  <45.165451, 46.831661, 50.243507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965462, 46.490166, 50.301693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463067, 0.405478, 0.788135,
		-0.731842, 0.326687, -0.598065,
		-0.499976, -0.853735, 0.145468,
		44.815468, 46.234047, 50.345333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457169, 46.988033, 50.257099>,  <45.165451, 46.831661, 50.243507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457169, 46.988033, 50.257099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538223, 46.659904, 50.471016>,  <44.586857, 46.463028, 50.599365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538223, 46.659904, 50.471016>,  <44.457169, 46.988033, 50.257099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538223, 46.659904, 50.471016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405809, 0.426680, 0.808247,
		-0.891212, -0.380803, -0.246436,
		0.202633, -0.820326, 0.534795,
		44.599014, 46.413807, 50.631454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872566, 46.961773, 50.670452>,  <44.457169, 46.988033, 50.257099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872566, 46.961773, 50.670452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137043, 46.732590, 50.864170>,  <44.295731, 46.595081, 50.980400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137043, 46.732590, 50.864170>,  <43.872566, 46.961773, 50.670452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137043, 46.732590, 50.864170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286045, 0.404243, 0.868772,
		-0.693544, -0.712956, 0.103391,
		0.661192, -0.572957, 0.484298,
		44.335400, 46.560703, 51.009460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497948, 46.724613, 51.159019>,  <43.872566, 46.961773, 50.670452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497948, 46.724613, 51.159019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876831, 46.693779, 51.283512>,  <44.104160, 46.675278, 51.358208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876831, 46.693779, 51.283512>,  <43.497948, 46.724613, 51.159019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876831, 46.693779, 51.283512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234474, 0.495537, 0.836340,
		-0.218694, -0.865160, 0.451300,
		0.947204, -0.077084, 0.311228,
		44.160992, 46.670654, 51.376881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464329, 46.496548, 51.841526>,  <43.497948, 46.724613, 51.159019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464329, 46.496548, 51.841526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839706, 46.634407, 51.832272>,  <44.064934, 46.717125, 51.826717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839706, 46.634407, 51.832272>,  <43.464329, 46.496548, 51.841526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839706, 46.634407, 51.832272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172486, 0.525584, 0.833073,
		0.299277, -0.777804, 0.552680,
		0.938446, 0.344649, -0.023135,
		44.121239, 46.737801, 51.825333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851032, 46.269821, 52.500217>,  <43.464329, 46.496548, 51.841526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851032, 46.269821, 52.500217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043419, 46.586250, 52.349018>,  <44.158852, 46.776108, 52.258301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043419, 46.586250, 52.349018>,  <43.851032, 46.269821, 52.500217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043419, 46.586250, 52.349018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213034, 0.523662, 0.824860,
		0.850465, -0.316201, 0.420388,
		0.480963, 0.791072, -0.377995,
		44.187706, 46.823570, 52.235619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353073, 46.427917, 52.997204>,  <43.851032, 46.269821, 52.500217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353073, 46.427917, 52.997204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293373, 46.766159, 52.792194>,  <44.257553, 46.969105, 52.669189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293373, 46.766159, 52.792194>,  <44.353073, 46.427917, 52.997204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293373, 46.766159, 52.792194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021649, 0.515411, 0.856670,
		0.988562, 0.138956, -0.058620,
		-0.149253, 0.845602, -0.512524,
		44.248596, 47.019840, 52.638435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776684, 46.932835, 53.388477>,  <44.353073, 46.427917, 52.997204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776684, 46.932835, 53.388477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568085, 47.167824, 53.140957>,  <44.442924, 47.308819, 52.992447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568085, 47.167824, 53.140957>,  <44.776684, 46.932835, 53.388477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568085, 47.167824, 53.140957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106761, 0.674596, 0.730426,
		0.846547, 0.446979, -0.289081,
		-0.521498, 0.587478, -0.618797,
		44.411636, 47.344067, 52.955318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.097404, 47.540653, 53.496708>,  <44.776684, 46.932835, 53.388477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.097404, 47.540653, 53.496708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723957, 47.607658, 53.370033>,  <44.499889, 47.647861, 53.294029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723957, 47.607658, 53.370033>,  <45.097404, 47.540653, 53.496708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723957, 47.607658, 53.370033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132416, 0.660012, 0.739493,
		0.332888, 0.732341, -0.594021,
		-0.933623, 0.167510, -0.316684,
		44.443871, 47.657913, 53.275028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057522, 48.162201, 53.733612>,  <45.097404, 47.540653, 53.496708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057522, 48.162201, 53.733612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683060, 48.046906, 53.653072>,  <44.458382, 47.977730, 53.604748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683060, 48.046906, 53.653072>,  <45.057522, 48.162201, 53.733612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683060, 48.046906, 53.653072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312117, 0.417614, 0.853335,
		-0.161875, 0.861695, -0.480914,
		-0.936151, -0.288236, -0.201349,
		44.402214, 47.960434, 53.592667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660606, 48.762192, 53.814850>,  <45.057522, 48.162201, 53.733612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660606, 48.762192, 53.814850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.446323, 48.428589, 53.867676>,  <44.317753, 48.228428, 53.899372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.446323, 48.428589, 53.867676>,  <44.660606, 48.762192, 53.814850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446323, 48.428589, 53.867676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415789, 0.396669, 0.818397,
		-0.734940, 0.383509, -0.559272,
		-0.535708, -0.834012, 0.132069,
		44.285610, 48.178387, 53.907295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046097, 48.916382, 54.070656>,  <44.660606, 48.762192, 53.814850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046097, 48.916382, 54.070656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056137, 48.533089, 54.184608>,  <44.062160, 48.303112, 54.252979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056137, 48.533089, 54.184608>,  <44.046097, 48.916382, 54.070656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056137, 48.533089, 54.184608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395446, 0.252215, 0.883182,
		-0.918146, -0.134825, -0.372599,
		0.025100, -0.958232, 0.284886,
		44.063667, 48.245621, 54.270073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633064, 48.925686, 54.568878>,  <44.046097, 48.916382, 54.070656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633064, 48.925686, 54.568878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767567, 48.550682, 54.604683>,  <43.848267, 48.325680, 54.626163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767567, 48.550682, 54.604683>,  <43.633064, 48.925686, 54.568878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767567, 48.550682, 54.604683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415553, -0.062409, 0.907425,
		-0.845133, -0.342319, -0.410570,
		0.336252, -0.937509, 0.089508,
		43.868443, 48.269428, 54.631535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072823, 48.490795, 54.854088>,  <43.633064, 48.925686, 54.568878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072823, 48.490795, 54.854088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404354, 48.283783, 54.939140>,  <43.603271, 48.159576, 54.990173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404354, 48.283783, 54.939140>,  <43.072823, 48.490795, 54.854088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404354, 48.283783, 54.939140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306167, -0.101429, 0.946559,
		-0.468306, -0.849632, -0.242517,
		0.828825, -0.517530, 0.212630,
		43.653000, 48.128525, 55.002930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884262, 47.824802, 55.142109>,  <43.072823, 48.490795, 54.854088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884262, 47.824802, 55.142109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249840, 47.931160, 55.264755>,  <43.469185, 47.994976, 55.338345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249840, 47.931160, 55.264755>,  <42.884262, 47.824802, 55.142109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249840, 47.931160, 55.264755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243289, -0.245756, 0.938304,
		0.324847, -0.932149, -0.159916,
		0.913939, 0.265899, 0.306615,
		43.524021, 48.010929, 55.356739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163048, 47.298634, 55.520947>,  <42.884262, 47.824802, 55.142109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163048, 47.298634, 55.520947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371582, 47.618958, 55.638870>,  <43.496704, 47.811153, 55.709625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371582, 47.618958, 55.638870>,  <43.163048, 47.298634, 55.520947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371582, 47.618958, 55.638870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169495, -0.241413, 0.955506,
		0.836351, -0.548106, 0.009877,
		0.521334, 0.800812, 0.294807,
		43.527981, 47.859200, 55.727314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447117, 47.088253, 56.122833>,  <43.163048, 47.298634, 55.520947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447117, 47.088253, 56.122833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516827, 47.479797, 56.165668>,  <43.558651, 47.714722, 56.191372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516827, 47.479797, 56.165668>,  <43.447117, 47.088253, 56.122833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516827, 47.479797, 56.165668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055661, -0.098788, 0.993550,
		0.983122, -0.179113, 0.037268,
		0.174276, 0.978856, 0.107091,
		43.569111, 47.773453, 56.197796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938183, 47.124664, 56.676575>,  <43.447117, 47.088253, 56.122833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938183, 47.124664, 56.676575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780022, 47.491119, 56.650200>,  <43.685123, 47.710991, 56.634377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780022, 47.491119, 56.650200>,  <43.938183, 47.124664, 56.676575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780022, 47.491119, 56.650200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089711, 0.032924, 0.995424,
		0.914117, 0.399508, 0.069169,
		-0.395402, 0.916139, -0.065937,
		43.661400, 47.765961, 56.630421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361073, 47.568703, 57.116249>,  <43.938183, 47.124664, 56.676575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361073, 47.568703, 57.116249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989243, 47.709259, 57.071663>,  <43.766144, 47.793591, 57.044910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989243, 47.709259, 57.071663>,  <44.361073, 47.568703, 57.116249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989243, 47.709259, 57.071663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068880, 0.131475, 0.988924,
		0.362150, 0.926953, -0.098012,
		-0.929572, 0.351387, -0.111462,
		43.710373, 47.814674, 57.038223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292480, 48.183582, 57.461060>,  <44.361073, 47.568703, 57.116249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292480, 48.183582, 57.461060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913948, 48.057251, 57.433590>,  <43.686829, 47.981453, 57.417107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913948, 48.057251, 57.433590>,  <44.292480, 48.183582, 57.461060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913948, 48.057251, 57.433590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116402, 0.134816, 0.984010,
		-0.301517, 0.939191, -0.164343,
		-0.946329, -0.315825, -0.068675,
		43.630051, 47.962505, 57.412987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923428, 48.642757, 57.846058>,  <44.292480, 48.183582, 57.461060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923428, 48.642757, 57.846058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684494, 48.322121, 57.835941>,  <43.541134, 48.129738, 57.829872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684494, 48.322121, 57.835941>,  <43.923428, 48.642757, 57.846058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684494, 48.322121, 57.835941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174709, 0.099282, 0.979602,
		-0.782729, 0.589571, -0.199350,
		-0.597337, -0.801591, -0.025293,
		43.505295, 48.081642, 57.828354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334270, 48.786816, 58.326935>,  <43.923428, 48.642757, 57.846058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334270, 48.786816, 58.326935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353622, 48.391129, 58.271633>,  <43.365234, 48.153717, 58.238453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353622, 48.391129, 58.271633>,  <43.334270, 48.786816, 58.326935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353622, 48.391129, 58.271633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114908, -0.143013, 0.983028,
		-0.992198, -0.031669, -0.120587,
		0.048377, -0.989214, -0.138259,
		43.368134, 48.094364, 58.230156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907383, 48.561882, 58.871655>,  <43.334270, 48.786816, 58.326935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907383, 48.561882, 58.871655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086876, 48.223251, 58.757145>,  <43.194572, 48.020073, 58.688438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086876, 48.223251, 58.757145>,  <42.907383, 48.561882, 58.871655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086876, 48.223251, 58.757145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031010, -0.305393, 0.951721,
		-0.893130, -0.435942, -0.110787,
		0.448729, -0.846575, -0.286274,
		43.221497, 47.969280, 58.671261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646729, 48.122196, 59.286106>,  <42.907383, 48.561882, 58.871655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646729, 48.122196, 59.286106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982903, 47.941948, 59.165703>,  <43.184608, 47.833797, 59.093460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982903, 47.941948, 59.165703>,  <42.646729, 48.122196, 59.286106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982903, 47.941948, 59.165703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093524, -0.426506, 0.899637,
		-0.533777, -0.784240, -0.316307,
		0.840438, -0.450624, -0.301004,
		43.235035, 47.806763, 59.075401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513107, 47.460819, 59.435734>,  <42.646729, 48.122196, 59.286106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513107, 47.460819, 59.435734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911758, 47.489815, 59.420307>,  <43.150948, 47.507214, 59.411053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911758, 47.489815, 59.420307>,  <42.513107, 47.460819, 59.435734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911758, 47.489815, 59.420307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068045, -0.466251, 0.882032,
		0.045954, -0.881678, -0.469609,
		0.996623, 0.072488, -0.038568,
		43.210747, 47.511562, 59.408737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714336, 46.848557, 59.570557>,  <42.513107, 47.460819, 59.435734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714336, 46.848557, 59.570557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042736, 47.060104, 59.656582>,  <43.239777, 47.187035, 59.708199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042736, 47.060104, 59.656582>,  <42.714336, 46.848557, 59.570557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042736, 47.060104, 59.656582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123144, -0.531868, 0.837826,
		0.557490, -0.661371, -0.501791,
		0.821000, 0.528872, 0.215067,
		43.289036, 47.218765, 59.721104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164349, 46.460857, 60.031441>,  <42.714336, 46.848557, 59.570557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164349, 46.460857, 60.031441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876709, 46.183464, 60.049259>,  <41.704124, 46.017029, 60.059952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876709, 46.183464, 60.049259>,  <42.164349, 46.460857, 60.031441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876709, 46.183464, 60.049259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355873, -0.422561, -0.833544,
		0.596870, -0.583547, 0.550653,
		-0.719097, -0.693480, 0.044546,
		41.660980, 45.975418, 60.062622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567856, 45.841789, 59.943359>,  <42.164349, 46.460857, 60.031441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567856, 45.841789, 59.943359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185169, 45.764061, 59.856697>,  <41.955559, 45.717422, 59.804699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185169, 45.764061, 59.856697>,  <42.567856, 45.841789, 59.943359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185169, 45.764061, 59.856697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271291, -0.325949, -0.905626,
		0.105367, -0.925200, 0.364558,
		-0.956713, -0.194325, -0.216654,
		41.898155, 45.705765, 59.791702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576279, 45.160095, 59.575565>,  <42.567856, 45.841789, 59.943359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576279, 45.160095, 59.575565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232285, 45.348701, 59.497482>,  <42.025890, 45.461864, 59.450634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232285, 45.348701, 59.497482>,  <42.576279, 45.160095, 59.575565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232285, 45.348701, 59.497482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117986, -0.188442, -0.974971,
		-0.496497, -0.861490, 0.106424,
		-0.859982, 0.471514, -0.195205,
		41.974289, 45.490154, 59.438919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184105, 44.773048, 59.062683>,  <42.576279, 45.160095, 59.575565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184105, 44.773048, 59.062683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995819, 45.124916, 59.035530>,  <41.882847, 45.336037, 59.019238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995819, 45.124916, 59.035530>,  <42.184105, 44.773048, 59.062683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995819, 45.124916, 59.035530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043850, -0.053518, -0.997604,
		-0.881194, -0.472566, -0.013382,
		-0.470717, 0.879669, -0.067882,
		41.854603, 45.388817, 59.015167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672661, 44.705971, 58.550995>,  <42.184105, 44.773048, 59.062683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672661, 44.705971, 58.550995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720734, 45.102776, 58.566349>,  <41.749577, 45.340858, 58.575562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720734, 45.102776, 58.566349>,  <41.672661, 44.705971, 58.550995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720734, 45.102776, 58.566349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045801, 0.033088, -0.998402,
		-0.991695, 0.121744, -0.041458,
		0.120178, 0.992010, 0.038389,
		41.756786, 45.400379, 58.577866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228897, 45.016983, 58.118946>,  <41.672661, 44.705971, 58.550995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228897, 45.016983, 58.118946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521820, 45.288536, 58.140259>,  <41.697575, 45.451469, 58.153046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521820, 45.288536, 58.140259>,  <41.228897, 45.016983, 58.118946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521820, 45.288536, 58.140259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084476, -0.012929, -0.996342,
		-0.675712, 0.734132, -0.066818,
		0.732310, 0.678884, 0.053280,
		41.741512, 45.492203, 58.156242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063530, 45.597309, 57.644108>,  <41.228897, 45.016983, 58.118946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063530, 45.597309, 57.644108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454292, 45.617371, 57.727196>,  <41.688747, 45.629406, 57.777046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454292, 45.617371, 57.727196>,  <41.063530, 45.597309, 57.644108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454292, 45.617371, 57.727196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205730, 0.042008, -0.977707,
		-0.057757, 0.997858, 0.030720,
		0.976903, 0.050150, 0.207715,
		41.747364, 45.632416, 57.789509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348335, 46.045147, 57.143631>,  <41.063530, 45.597309, 57.644108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348335, 46.045147, 57.143631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684830, 45.877892, 57.280735>,  <41.886726, 45.777538, 57.362995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684830, 45.877892, 57.280735>,  <41.348335, 46.045147, 57.143631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684830, 45.877892, 57.280735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368966, -0.019405, -0.929240,
		0.395200, 0.908177, 0.137954,
		0.841238, -0.418136, 0.342755,
		41.937202, 45.752449, 57.383560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933922, 46.466000, 56.866383>,  <41.348335, 46.045147, 57.143631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933922, 46.466000, 56.866383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058777, 46.093117, 56.939667>,  <42.133690, 45.869389, 56.983639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058777, 46.093117, 56.939667>,  <41.933922, 46.466000, 56.866383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058777, 46.093117, 56.939667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502742, -0.001555, -0.864435,
		0.806115, 0.361931, 0.468172,
		0.312138, -0.932204, 0.183211,
		42.152420, 45.813457, 56.994629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694050, 46.445511, 56.756531>,  <41.933922, 46.466000, 56.866383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694050, 46.445511, 56.756531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574112, 46.064507, 56.735313>,  <42.502148, 45.835903, 56.722584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574112, 46.064507, 56.735313>,  <42.694050, 46.445511, 56.756531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574112, 46.064507, 56.735313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566196, -0.132932, -0.813481,
		0.767799, -0.273950, 0.579168,
		-0.299843, -0.952513, -0.053044,
		42.484158, 45.778751, 56.719398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153896, 46.085728, 56.258389>,  <42.694050, 46.445511, 56.756531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153896, 46.085728, 56.258389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865997, 45.811935, 56.304790>,  <42.693260, 45.647659, 56.332630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865997, 45.811935, 56.304790>,  <43.153896, 46.085728, 56.258389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865997, 45.811935, 56.304790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182376, -0.347640, -0.919720,
		0.669856, -0.640807, 0.375045,
		-0.719744, -0.684480, 0.116001,
		42.650074, 45.606590, 56.339592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466213, 45.426258, 55.988914>,  <43.153896, 46.085728, 56.258389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466213, 45.426258, 55.988914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068909, 45.380524, 55.996590>,  <42.830528, 45.353085, 56.001194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068909, 45.380524, 55.996590>,  <43.466213, 45.426258, 55.988914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068909, 45.380524, 55.996590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018465, -0.319432, -0.947429,
		0.114453, -0.940686, 0.319389,
		-0.993257, -0.114333, 0.019190,
		42.770931, 45.346222, 56.002346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229252, 44.797550, 55.651485>,  <43.466213, 45.426258, 55.988914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229252, 44.797550, 55.651485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896049, 45.017197, 55.624428>,  <42.696129, 45.148983, 55.608192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896049, 45.017197, 55.624428>,  <43.229252, 44.797550, 55.651485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896049, 45.017197, 55.624428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114589, -0.290836, -0.949886,
		-0.541272, -0.783507, 0.305190,
		-0.833003, 0.549118, -0.067640,
		42.646149, 45.181931, 55.604137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622269, 44.426472, 55.315765>,  <43.229252, 44.797550, 55.651485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622269, 44.426472, 55.315765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574944, 44.819633, 55.259338>,  <42.546547, 45.055531, 55.225483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574944, 44.819633, 55.259338>,  <42.622269, 44.426472, 55.315765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574944, 44.819633, 55.259338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207535, -0.163408, -0.964483,
		-0.971046, -0.084833, 0.223321,
		-0.118313, 0.982904, -0.141071,
		42.539452, 45.114506, 55.217018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120796, 44.469959, 54.865620>,  <42.622269, 44.426472, 55.315765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120796, 44.469959, 54.865620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241898, 44.851082, 54.874512>,  <42.314560, 45.079758, 54.879848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241898, 44.851082, 54.874512>,  <42.120796, 44.469959, 54.865620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241898, 44.851082, 54.874512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212974, 0.090372, -0.972870,
		-0.928968, 0.289808, 0.230284,
		0.302757, 0.952809, 0.022231,
		42.332726, 45.136925, 54.881180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533688, 44.775684, 54.551140>,  <42.120796, 44.469959, 54.865620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533688, 44.775684, 54.551140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872406, 44.984245, 54.509041>,  <42.075638, 45.109383, 54.483780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872406, 44.984245, 54.509041>,  <41.533688, 44.775684, 54.551140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872406, 44.984245, 54.509041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245479, 0.207537, -0.946926,
		-0.471882, 0.827691, 0.303734,
		0.846798, 0.521398, -0.105248,
		42.126446, 45.140663, 54.477467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377510, 45.317421, 54.000202>,  <41.533688, 44.775684, 54.551140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377510, 45.317421, 54.000202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776405, 45.303833, 54.026630>,  <42.015743, 45.295681, 54.042488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776405, 45.303833, 54.026630>,  <41.377510, 45.317421, 54.000202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776405, 45.303833, 54.026630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065237, -0.025041, -0.997556,
		0.035538, 0.999109, -0.022756,
		0.997237, -0.033966, 0.066069,
		42.075577, 45.293644, 54.046452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624294, 45.799961, 53.471367>,  <41.377510, 45.317421, 54.000202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624294, 45.799961, 53.471367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929970, 45.556870, 53.557793>,  <42.113373, 45.411015, 53.609650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929970, 45.556870, 53.557793>,  <41.624294, 45.799961, 53.471367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929970, 45.556870, 53.557793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175876, -0.125960, -0.976321,
		0.620555, 0.784091, 0.010628,
		0.764185, -0.607730, 0.216068,
		42.159225, 45.374550, 53.622612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191235, 45.990948, 53.058250>,  <41.624294, 45.799961, 53.471367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191235, 45.990948, 53.058250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271236, 45.615952, 53.172173>,  <42.319237, 45.390953, 53.240524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271236, 45.615952, 53.172173>,  <42.191235, 45.990948, 53.058250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271236, 45.615952, 53.172173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168723, -0.253381, -0.952539,
		0.965159, 0.238562, 0.107500,
		0.200001, -0.937489, 0.284804,
		42.331238, 45.334705, 53.257614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711994, 45.826351, 52.627522>,  <42.191235, 45.990948, 53.058250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711994, 45.826351, 52.627522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596916, 45.464867, 52.754356>,  <42.527870, 45.247978, 52.830456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596916, 45.464867, 52.754356>,  <42.711994, 45.826351, 52.627522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596916, 45.464867, 52.754356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176354, -0.375412, -0.909926,
		0.941345, -0.205860, 0.267377,
		-0.287694, -0.903708, 0.317088,
		42.510609, 45.193756, 52.849483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250744, 45.410164, 52.406975>,  <42.711994, 45.826351, 52.627522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250744, 45.410164, 52.406975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926422, 45.184265, 52.468506>,  <42.731831, 45.048725, 52.505424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926422, 45.184265, 52.468506>,  <43.250744, 45.410164, 52.406975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926422, 45.184265, 52.468506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090683, -0.380831, -0.920187,
		0.578252, -0.732141, 0.359992,
		-0.810803, -0.564746, 0.153824,
		42.683182, 45.014843, 52.514652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413944, 44.699017, 52.315334>,  <43.250744, 45.410164, 52.406975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413944, 44.699017, 52.315334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025059, 44.766396, 52.250305>,  <42.791729, 44.806824, 52.211288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025059, 44.766396, 52.250305>,  <43.413944, 44.699017, 52.315334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025059, 44.766396, 52.250305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108135, -0.292787, -0.950043,
		-0.207629, -0.941224, 0.266436,
		-0.972213, 0.168446, -0.162570,
		42.733395, 44.816929, 52.201534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315525, 44.184475, 51.914757>,  <43.413944, 44.699017, 52.315334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315525, 44.184475, 51.914757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973846, 44.385216, 51.860359>,  <42.768841, 44.505661, 51.827721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973846, 44.385216, 51.860359>,  <43.315525, 44.184475, 51.914757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973846, 44.385216, 51.860359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043511, -0.191643, -0.980500,
		-0.518125, -0.843458, 0.141865,
		-0.854197, 0.501849, -0.135995,
		42.717587, 44.535770, 51.819561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951206, 43.787846, 51.396122>,  <43.315525, 44.184475, 51.914757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951206, 43.787846, 51.396122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803631, 44.159622, 51.394291>,  <42.715088, 44.382690, 51.393192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803631, 44.159622, 51.394291>,  <42.951206, 43.787846, 51.396122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.803631, 44.159622, 51.394291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030360, -0.016972, -0.999395,
		-0.928959, -0.368574, 0.034479,
		-0.368937, 0.929443, -0.004576,
		42.692951, 44.438454, 51.392918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363457, 43.673073, 51.082577>,  <42.951206, 43.787846, 51.396122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363457, 43.673073, 51.082577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440540, 44.063133, 51.038860>,  <42.486790, 44.297169, 51.012630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440540, 44.063133, 51.038860>,  <42.363457, 43.673073, 51.082577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440540, 44.063133, 51.038860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039821, -0.103514, -0.993830,
		-0.980448, 0.195872, 0.018884,
		0.192709, 0.975151, -0.109290,
		42.498352, 44.355679, 51.006073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852703, 43.955990, 50.680336>,  <42.363457, 43.673073, 51.082577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852703, 43.955990, 50.680336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142471, 44.227379, 50.631546>,  <42.316334, 44.390213, 50.602272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142471, 44.227379, 50.631546>,  <41.852703, 43.955990, 50.680336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142471, 44.227379, 50.631546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064555, -0.109400, -0.991899,
		-0.686325, 0.726431, -0.035453,
		0.724425, 0.678476, -0.121979,
		42.359798, 44.430923, 50.594952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651127, 44.426022, 50.205597>,  <41.852703, 43.955990, 50.680336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651127, 44.426022, 50.205597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049873, 44.451561, 50.186909>,  <42.289120, 44.466885, 50.175697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049873, 44.451561, 50.186909>,  <41.651127, 44.426022, 50.205597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049873, 44.451561, 50.186909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050048, 0.051552, -0.997415,
		-0.061277, 0.996627, 0.054586,
		0.996865, 0.063850, -0.046720,
		42.348934, 44.470715, 50.172894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779839, 45.056984, 49.863655>,  <41.651127, 44.426022, 50.205597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779839, 45.056984, 49.863655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100670, 44.819557, 49.837273>,  <42.293167, 44.677101, 49.821445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100670, 44.819557, 49.837273>,  <41.779839, 45.056984, 49.863655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100670, 44.819557, 49.837273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063072, 0.194004, -0.978971,
		0.593881, 0.781050, 0.193044,
		0.802077, -0.593568, -0.065953,
		42.341293, 44.641487, 49.817486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083099, 45.363297, 49.349636>,  <41.779839, 45.056984, 49.863655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083099, 45.363297, 49.349636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255791, 45.003441, 49.375759>,  <42.359406, 44.787529, 49.391434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255791, 45.003441, 49.375759>,  <42.083099, 45.363297, 49.349636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255791, 45.003441, 49.375759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061056, -0.043092, -0.997204,
		0.899935, 0.434509, 0.036324,
		0.431729, -0.899636, 0.065310,
		42.385311, 44.733551, 49.395351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632927, 45.432323, 48.822407>,  <42.083099, 45.363297, 49.349636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632927, 45.432323, 48.822407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569046, 45.042458, 48.885056>,  <42.530716, 44.808540, 48.922646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569046, 45.042458, 48.885056>,  <42.632927, 45.432323, 48.822407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569046, 45.042458, 48.885056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056244, -0.167388, -0.984286,
		0.985562, -0.148385, 0.081551,
		-0.159704, -0.974661, 0.156626,
		42.521133, 44.750061, 48.932045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077034, 45.152084, 48.437077>,  <42.632927, 45.432323, 48.822407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077034, 45.152084, 48.437077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816925, 44.852531, 48.488197>,  <42.660862, 44.672802, 48.518867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816925, 44.852531, 48.488197>,  <43.077034, 45.152084, 48.437077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816925, 44.852531, 48.488197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056198, -0.215179, -0.974957,
		0.757624, -0.626801, 0.182009,
		-0.650268, -0.748879, 0.127800,
		42.621845, 44.627869, 48.526539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296978, 44.540161, 48.089153>,  <43.077034, 45.152084, 48.437077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296978, 44.540161, 48.089153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900200, 44.490829, 48.100754>,  <42.662132, 44.461231, 48.107716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900200, 44.490829, 48.100754>,  <43.296978, 44.540161, 48.089153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900200, 44.490829, 48.100754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025673, -0.419842, -0.907234,
		0.124061, -0.899179, 0.419626,
		-0.991943, -0.123326, 0.029002,
		42.602615, 44.453831, 48.109455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180176, 43.824554, 47.841526>,  <43.296978, 44.540161, 48.089153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180176, 43.824554, 47.841526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821754, 44.000755, 47.819477>,  <42.606701, 44.106476, 47.806248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821754, 44.000755, 47.819477>,  <43.180176, 43.824554, 47.841526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821754, 44.000755, 47.819477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141926, -0.401897, -0.904619,
		-0.420655, -0.802760, 0.422641,
		-0.896050, 0.440516, -0.055128,
		42.552937, 44.132908, 47.802940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737083, 43.272732, 47.814419>,  <43.180176, 43.824554, 47.841526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737083, 43.272732, 47.814419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578709, 43.607857, 47.664055>,  <42.483685, 43.808933, 47.573837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578709, 43.607857, 47.664055>,  <42.737083, 43.272732, 47.814419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578709, 43.607857, 47.664055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101565, -0.446804, -0.888848,
		-0.912645, -0.313745, 0.261997,
		-0.395933, 0.837813, -0.375908,
		42.459930, 43.859200, 47.551281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111938, 43.107315, 47.452206>,  <42.737083, 43.272732, 47.814419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111938, 43.107315, 47.452206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185158, 43.467529, 47.294456>,  <42.229088, 43.683659, 47.199806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185158, 43.467529, 47.294456>,  <42.111938, 43.107315, 47.452206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185158, 43.467529, 47.294456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238465, -0.348500, -0.906467,
		-0.953745, 0.259968, 0.150955,
		0.183045, 0.900535, -0.394374,
		42.240070, 43.737690, 47.176144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675034, 43.230877, 46.765808>,  <42.111938, 43.107315, 47.452206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675034, 43.230877, 46.765808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954071, 43.515556, 46.732697>,  <42.121494, 43.686363, 46.712830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954071, 43.515556, 46.732697>,  <41.675034, 43.230877, 46.765808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954071, 43.515556, 46.732697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051542, -0.065393, -0.996528,
		-0.714641, 0.699434, -0.008935,
		0.697590, 0.711699, -0.082783,
		42.163349, 43.729065, 46.707863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432934, 43.697346, 46.280983>,  <41.675034, 43.230877, 46.765808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432934, 43.697346, 46.280983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829468, 43.748917, 46.290977>,  <42.067390, 43.779861, 46.296974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829468, 43.748917, 46.290977>,  <41.432934, 43.697346, 46.280983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829468, 43.748917, 46.290977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007005, 0.138089, -0.990395,
		-0.131142, 0.981992, 0.135990,
		0.991339, 0.128930, 0.024989,
		42.126869, 43.787594, 46.298473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540478, 44.291851, 45.906494>,  <41.432934, 43.697346, 46.280983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540478, 44.291851, 45.906494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899513, 44.115990, 45.893597>,  <42.114933, 44.010471, 45.885857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899513, 44.115990, 45.893597>,  <41.540478, 44.291851, 45.906494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899513, 44.115990, 45.893597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094895, 0.264133, -0.959807,
		0.430500, 0.858451, 0.278804,
		0.897588, -0.439653, -0.032247,
		42.168789, 43.984093, 45.883923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928558, 44.649109, 45.352093>,  <41.540478, 44.291851, 45.906494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928558, 44.649109, 45.352093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127914, 44.307060, 45.409180>,  <42.247528, 44.101830, 45.443432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127914, 44.307060, 45.409180>,  <41.928558, 44.649109, 45.352093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127914, 44.307060, 45.409180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144056, -0.080648, -0.986278,
		0.854899, 0.512113, 0.082991,
		0.498393, -0.855124, 0.142718,
		42.277431, 44.050522, 45.451996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583324, 44.704216, 44.998859>,  <41.928558, 44.649109, 45.352093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583324, 44.704216, 44.998859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519455, 44.311691, 45.041813>,  <42.481133, 44.076176, 45.067585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519455, 44.311691, 45.041813>,  <42.583324, 44.704216, 44.998859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519455, 44.311691, 45.041813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107679, -0.125446, -0.986240,
		0.981279, -0.145914, 0.125697,
		-0.159674, -0.981311, 0.107386,
		42.471554, 44.017300, 45.074028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<43.034378, 42.781731, 54.220268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.428940, 42.729591, 54.260315>,  <43.665676, 42.698307, 54.284344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.428940, 42.729591, 54.260315>,  <43.034378, 42.781731, 54.220268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428940, 42.729591, 54.260315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082618, -0.133364, -0.987617,
		0.142090, 0.982457, -0.120781,
		0.986400, -0.130351, 0.100118,
		43.724861, 42.690487, 54.290352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398766, 43.211388, 53.693916>,  <43.034378, 42.781731, 54.220268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398766, 43.211388, 53.693916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.680138, 42.943542, 53.789246>,  <43.848961, 42.782833, 53.846443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.680138, 42.943542, 53.789246>,  <43.398766, 43.211388, 53.693916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680138, 42.943542, 53.789246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230558, -0.102208, -0.967676,
		0.672331, 0.735640, 0.082490,
		0.703430, -0.669617, 0.238326,
		43.891167, 42.742657, 53.860744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846573, 43.263195, 53.223728>,  <43.398766, 43.211388, 53.693916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846573, 43.263195, 53.223728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.999435, 42.920815, 53.363045>,  <44.091152, 42.715385, 53.446636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.999435, 42.920815, 53.363045>,  <43.846573, 43.263195, 53.223728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999435, 42.920815, 53.363045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259616, -0.262273, -0.929415,
		0.886881, 0.445602, 0.121989,
		0.382155, -0.855951, 0.348291,
		44.114082, 42.664028, 53.467533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574898, 43.194496, 53.083885>,  <43.846573, 43.263195, 53.223728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574898, 43.194496, 53.083885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.461876, 42.814339, 53.135918>,  <44.394062, 42.586246, 53.167137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.461876, 42.814339, 53.135918>,  <44.574898, 43.194496, 53.083885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461876, 42.814339, 53.135918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488764, -0.259325, -0.832983,
		0.825392, -0.171785, 0.537790,
		-0.282557, -0.950390, 0.130083,
		44.377110, 42.529221, 53.174942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.173431, 42.832199, 52.744053>,  <44.574898, 43.194496, 53.083885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.173431, 42.832199, 52.744053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.882847, 42.560188, 52.783688>,  <44.708496, 42.396980, 52.807468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.882847, 42.560188, 52.783688>,  <45.173431, 42.832199, 52.744053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.882847, 42.560188, 52.783688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332758, -0.474245, -0.815085,
		0.601270, -0.559156, 0.570805,
		-0.726462, -0.680026, 0.099086,
		44.664909, 42.356182, 52.813412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501053, 42.085098, 52.735935>,  <45.173431, 42.832199, 52.744053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501053, 42.085098, 52.735935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.120224, 42.085938, 52.613586>,  <44.891727, 42.086441, 52.540176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.120224, 42.085938, 52.613586>,  <45.501053, 42.085098, 52.735935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120224, 42.085938, 52.613586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281455, -0.385517, -0.878726,
		-0.119764, -0.922698, 0.366448,
		-0.952071, 0.002101, -0.305869,
		44.834602, 42.086567, 52.521824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437237, 41.503929, 52.283730>,  <45.501053, 42.085098, 52.735935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437237, 41.503929, 52.283730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.115967, 41.723801, 52.191849>,  <44.923206, 41.855724, 52.136719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.115967, 41.723801, 52.191849>,  <45.437237, 41.503929, 52.283730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115967, 41.723801, 52.191849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032141, -0.345028, -0.938042,
		-0.594875, -0.760795, 0.259451,
		-0.803176, 0.549678, -0.229701,
		44.875015, 41.888702, 52.122940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998333, 41.013741, 51.960800>,  <45.437237, 41.503929, 52.283730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998333, 41.013741, 51.960800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.884727, 41.373825, 51.828766>,  <44.816563, 41.589874, 51.749546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.884727, 41.373825, 51.828766>,  <44.998333, 41.013741, 51.960800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.884727, 41.373825, 51.828766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092903, -0.316803, -0.943931,
		-0.954308, -0.298759, 0.006346,
		-0.284018, 0.900211, -0.330083,
		44.799522, 41.643887, 51.729740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589149, 40.903667, 51.358456>,  <44.998333, 41.013741, 51.960800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589149, 40.903667, 51.358456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.696342, 41.287994, 51.330139>,  <44.760658, 41.518593, 51.313148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.696342, 41.287994, 51.330139>,  <44.589149, 40.903667, 51.358456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696342, 41.287994, 51.330139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051570, -0.059063, -0.996921,
		-0.962042, 0.270811, 0.033722,
		0.267986, 0.960819, -0.070787,
		44.776737, 41.576241, 51.308903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091484, 41.256348, 50.872463>,  <44.589149, 40.903667, 51.358456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091484, 41.256348, 50.872463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.439484, 41.453568, 50.873337>,  <44.648281, 41.571899, 50.873863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.439484, 41.453568, 50.873337>,  <44.091484, 41.256348, 50.872463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439484, 41.453568, 50.873337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006776, -0.007523, -0.999949,
		-0.493011, 0.869967, -0.009886,
		0.869997, 0.493053, 0.002186,
		44.700481, 41.601482, 50.873993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000927, 41.843548, 50.403820>,  <44.091484, 41.256348, 50.872463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000927, 41.843548, 50.403820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.399689, 41.830292, 50.432346>,  <44.638947, 41.822338, 50.449463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.399689, 41.830292, 50.432346>,  <44.000927, 41.843548, 50.403820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399689, 41.830292, 50.432346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074293, 0.099649, -0.992245,
		0.025778, 0.994471, 0.101803,
		0.996903, -0.033142, 0.071314,
		44.698761, 41.820351, 50.453739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207840, 42.301201, 49.980076>,  <44.000927, 41.843548, 50.403820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207840, 42.301201, 49.980076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.542858, 42.083923, 50.003593>,  <44.743870, 41.953556, 50.017704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.542858, 42.083923, 50.003593>,  <44.207840, 42.301201, 49.980076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542858, 42.083923, 50.003593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169001, 0.155240, -0.973314,
		0.519567, 0.825134, 0.221821,
		0.837549, -0.543190, 0.058791,
		44.794125, 41.920967, 50.021229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710007, 42.631485, 49.519165>,  <44.207840, 42.301201, 49.980076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710007, 42.631485, 49.519165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.844971, 42.257751, 49.565083>,  <44.925949, 42.033512, 49.592632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.844971, 42.257751, 49.565083>,  <44.710007, 42.631485, 49.519165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844971, 42.257751, 49.565083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317341, -0.001907, -0.948310,
		0.886256, 0.356397, 0.295858,
		0.337410, -0.934333, 0.114789,
		44.946194, 41.977451, 49.599518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.297722, 42.540405, 49.092743>,  <44.710007, 42.631485, 49.519165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.297722, 42.540405, 49.092743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.164436, 42.167633, 49.149963>,  <45.084465, 41.943970, 49.184296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.164436, 42.167633, 49.149963>,  <45.297722, 42.540405, 49.092743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164436, 42.167633, 49.149963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195415, -0.216693, -0.956482,
		0.922377, -0.290762, 0.254320,
		-0.333217, -0.931934, 0.143053,
		45.064472, 41.888054, 49.192879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751900, 42.141624, 48.721321>,  <45.297722, 42.540405, 49.092743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751900, 42.141624, 48.721321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.427025, 41.912262, 48.764332>,  <45.232101, 41.774643, 48.790138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.427025, 41.912262, 48.764332>,  <45.751900, 42.141624, 48.721321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427025, 41.912262, 48.764332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031458, -0.141001, -0.989510,
		0.582554, -0.807046, 0.096480,
		-0.812183, -0.573408, 0.107529,
		45.183369, 41.740238, 48.796589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.935383, 41.541580, 48.333027>,  <45.751900, 42.141624, 48.721321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.935383, 41.541580, 48.333027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.537415, 41.514824, 48.363132>,  <45.298634, 41.498768, 48.381195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.537415, 41.514824, 48.363132>,  <45.935383, 41.541580, 48.333027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537415, 41.514824, 48.363132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047479, -0.347462, -0.936491,
		0.088794, -0.935305, 0.342520,
		-0.994918, -0.066892, 0.075259,
		45.238937, 41.494755, 48.385712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799797, 40.850502, 48.117371>,  <45.935383, 41.541580, 48.333027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799797, 40.850502, 48.117371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.476700, 41.082718, 48.076324>,  <45.282841, 41.222046, 48.051697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.476700, 41.082718, 48.076324>,  <45.799797, 40.850502, 48.117371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476700, 41.082718, 48.076324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122467, -0.335494, -0.934048,
		-0.576677, -0.741902, 0.342089,
		-0.807741, 0.580539, -0.102613,
		45.234379, 41.256878, 48.045540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312870, 40.387707, 47.807411>,  <45.799797, 40.850502, 48.117371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312870, 40.387707, 47.807411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.178967, 40.757164, 47.732773>,  <45.098625, 40.978840, 47.687988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.178967, 40.757164, 47.732773>,  <45.312870, 40.387707, 47.807411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178967, 40.757164, 47.732773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251025, -0.278281, -0.927117,
		-0.908253, -0.263518, 0.325014,
		-0.334757, 0.923644, -0.186600,
		45.078541, 41.034256, 47.676792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547756, 40.307144, 47.553337>,  <45.312870, 40.387707, 47.807411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547756, 40.307144, 47.553337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.675316, 40.663300, 47.423401>,  <44.751850, 40.876991, 47.345440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.675316, 40.663300, 47.423401>,  <44.547756, 40.307144, 47.553337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675316, 40.663300, 47.423401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258276, -0.248128, -0.933663,
		-0.911920, 0.381640, 0.150838,
		0.318896, 0.890384, -0.324841,
		44.770985, 40.930416, 47.325947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949997, 40.730549, 47.296078>,  <44.547756, 40.307144, 47.553337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949997, 40.730549, 47.296078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.268631, 40.906578, 47.130291>,  <44.459812, 41.012196, 47.030819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.268631, 40.906578, 47.130291>,  <43.949997, 40.730549, 47.296078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268631, 40.906578, 47.130291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532462, 0.186142, -0.825733,
		-0.286233, 0.878458, 0.382600,
		0.796590, 0.440072, -0.414466,
		44.507607, 41.038601, 47.005951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614632, 41.297138, 46.993301>,  <43.949997, 40.730549, 47.296078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614632, 41.297138, 46.993301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.949265, 41.259613, 46.777401>,  <44.150043, 41.237099, 46.647861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.949265, 41.259613, 46.777401>,  <43.614632, 41.297138, 46.993301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949265, 41.259613, 46.777401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422926, 0.515658, -0.745138,
		0.348233, 0.851642, 0.391712,
		0.836581, -0.093816, -0.539751,
		44.200237, 41.231468, 46.615475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716473, 41.925392, 46.694599>,  <43.614632, 41.297138, 46.993301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716473, 41.925392, 46.694599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.979706, 41.715256, 46.478844>,  <44.137646, 41.589172, 46.349392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.979706, 41.715256, 46.478844>,  <43.716473, 41.925392, 46.694599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979706, 41.715256, 46.478844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279438, 0.494804, -0.822851,
		0.699169, 0.692232, 0.178823,
		0.658086, -0.525342, -0.539387,
		44.177132, 41.557652, 46.317028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113911, 42.008759, 46.174129>,  <43.716473, 41.925392, 46.694599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113911, 42.008759, 46.174129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.806309, 41.765480, 46.095417>,  <42.621746, 41.619511, 46.048191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.806309, 41.765480, 46.095417>,  <43.113911, 42.008759, 46.174129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806309, 41.765480, 46.095417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349059, 0.141641, 0.926334,
		-0.535524, 0.781045, -0.321220,
		-0.769007, -0.608199, -0.196779,
		42.575607, 41.583019, 46.036385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475563, 42.368755, 46.352222>,  <43.113911, 42.008759, 46.174129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475563, 42.368755, 46.352222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.368607, 41.983353, 46.347279>,  <42.304432, 41.752110, 46.344315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.368607, 41.983353, 46.347279>,  <42.475563, 42.368755, 46.352222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368607, 41.983353, 46.347279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466536, 0.118231, 0.876565,
		-0.843117, 0.240152, -0.481125,
		-0.267392, -0.963509, -0.012357,
		42.288387, 41.694302, 46.343571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886490, 42.383251, 46.639412>,  <42.475563, 42.368755, 46.352222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886490, 42.383251, 46.639412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.976387, 41.994217, 46.663326>,  <42.030327, 41.760796, 46.677673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.976387, 41.994217, 46.663326>,  <41.886490, 42.383251, 46.639412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976387, 41.994217, 46.663326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438239, -0.046089, 0.897676,
		-0.870308, -0.227950, -0.436582,
		0.224747, -0.972582, 0.059785,
		42.043812, 41.702442, 46.681263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238091, 42.101036, 46.727905>,  <41.886490, 42.383251, 46.639412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238091, 42.101036, 46.727905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.494896, 41.827690, 46.866943>,  <41.648979, 41.663681, 46.950367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.494896, 41.827690, 46.866943>,  <41.238091, 42.101036, 46.727905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494896, 41.827690, 46.866943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500350, -0.029936, 0.865306,
		-0.580917, -0.729460, -0.361143,
		0.642017, -0.683368, 0.347595,
		41.687500, 41.622681, 46.971222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895664, 41.584606, 47.059128>,  <41.238091, 42.101036, 46.727905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895664, 41.584606, 47.059128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.264847, 41.588020, 47.213051>,  <41.486355, 41.590069, 47.305405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.264847, 41.588020, 47.213051>,  <40.895664, 41.584606, 47.059128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264847, 41.588020, 47.213051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383376, -0.068588, 0.921042,
		0.034253, -0.997609, -0.060032,
		0.922957, 0.008534, 0.384809,
		41.541733, 41.590580, 47.328495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822689, 41.132259, 47.623844>,  <40.895664, 41.584606, 47.059128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822689, 41.132259, 47.623844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.164127, 41.310005, 47.732594>,  <41.368992, 41.416653, 47.797844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.164127, 41.310005, 47.732594>,  <40.822689, 41.132259, 47.623844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164127, 41.310005, 47.732594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293323, -0.021308, 0.955776,
		0.430506, -0.895592, 0.112154,
		0.853596, 0.444365, 0.271871,
		41.420208, 41.443314, 47.814156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031242, 40.864296, 48.388054>,  <40.822689, 41.132259, 47.623844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031242, 40.864296, 48.388054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.232914, 41.205322, 48.333023>,  <41.353916, 41.409939, 48.300003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.232914, 41.205322, 48.333023>,  <41.031242, 40.864296, 48.388054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232914, 41.205322, 48.333023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109064, 0.095177, 0.989468,
		0.856684, -0.513874, -0.044999,
		0.504179, 0.852569, -0.137581,
		41.384167, 41.461094, 48.291748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546814, 40.885326, 48.876251>,  <41.031242, 40.864296, 48.388054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546814, 40.885326, 48.876251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.509087, 41.273605, 48.787838>,  <41.486450, 41.506573, 48.734791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.509087, 41.273605, 48.787838>,  <41.546814, 40.885326, 48.876251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509087, 41.273605, 48.787838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059828, 0.227150, 0.972020,
		0.993743, 0.078458, -0.079500,
		-0.094321, 0.970694, -0.221035,
		41.480789, 41.564812, 48.721527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095421, 41.259567, 49.330402>,  <41.546814, 40.885326, 48.876251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095421, 41.259567, 49.330402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.841682, 41.540092, 49.200317>,  <41.689438, 41.708408, 49.122269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.841682, 41.540092, 49.200317>,  <42.095421, 41.259567, 49.330402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841682, 41.540092, 49.200317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042884, 0.451962, 0.891006,
		0.771857, 0.551262, -0.316776,
		-0.634349, 0.701313, -0.325210,
		41.651379, 41.750488, 49.102753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362621, 41.912663, 49.600681>,  <42.095421, 41.259567, 49.330402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362621, 41.912663, 49.600681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.978897, 41.966896, 49.501610>,  <41.748665, 41.999435, 49.442165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.978897, 41.966896, 49.501610>,  <42.362621, 41.912663, 49.600681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978897, 41.966896, 49.501610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143580, 0.521069, 0.841351,
		0.243134, 0.842676, -0.480398,
		-0.959307, 0.135586, -0.247681,
		41.691105, 42.007572, 49.427307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287720, 42.644466, 49.737751>,  <42.362621, 41.912663, 49.600681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287720, 42.644466, 49.737751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.924980, 42.475922, 49.734165>,  <41.707336, 42.374794, 49.732014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.924980, 42.475922, 49.734165>,  <42.287720, 42.644466, 49.737751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924980, 42.475922, 49.734165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185075, 0.379031, 0.906688,
		-0.378643, 0.823888, -0.421707,
		-0.906850, -0.421359, -0.008963,
		41.652924, 42.349514, 49.731476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869228, 43.120979, 49.875866>,  <42.287720, 42.644466, 49.737751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869228, 43.120979, 49.875866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.640587, 42.819725, 50.006134>,  <41.503403, 42.638973, 50.084293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.640587, 42.819725, 50.006134>,  <41.869228, 43.120979, 49.875866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640587, 42.819725, 50.006134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042251, 0.423390, 0.904962,
		-0.819440, 0.503522, -0.273833,
		-0.571606, -0.753131, 0.325668,
		41.469105, 42.593784, 50.103836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322510, 43.396778, 50.324490>,  <41.869228, 43.120979, 49.875866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322510, 43.396778, 50.324490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.350189, 43.016800, 50.446350>,  <41.366798, 42.788815, 50.519466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.350189, 43.016800, 50.446350>,  <41.322510, 43.396778, 50.324490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350189, 43.016800, 50.446350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100910, 0.297156, 0.949482,
		-0.992486, -0.096447, -0.075296,
		0.069200, -0.949945, 0.304656,
		41.370949, 42.731815, 50.537746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673580, 43.258736, 50.736893>,  <41.322510, 43.396778, 50.324490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673580, 43.258736, 50.736893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.928467, 42.976074, 50.859917>,  <41.081398, 42.806477, 50.933731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.928467, 42.976074, 50.859917>,  <40.673580, 43.258736, 50.736893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928467, 42.976074, 50.859917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225836, 0.210337, 0.951187,
		-0.736854, -0.675568, -0.025559,
		0.637215, -0.706658, 0.307555,
		41.119633, 42.764076, 50.952183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435493, 43.060555, 51.405045>,  <40.673580, 43.258736, 50.736893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435493, 43.060555, 51.405045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.795551, 42.887283, 51.386745>,  <41.011585, 42.783321, 51.375767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.795551, 42.887283, 51.386745>,  <40.435493, 43.060555, 51.405045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795551, 42.887283, 51.386745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043644, -0.014815, 0.998937,
		-0.433399, -0.901185, 0.005570,
		0.900145, -0.433181, -0.045752,
		41.065594, 42.757328, 51.373020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289440, 42.562519, 51.876877>,  <40.435493, 43.060555, 51.405045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289440, 42.562519, 51.876877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.686096, 42.579887, 51.828285>,  <40.924091, 42.590309, 51.799129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.686096, 42.579887, 51.828285>,  <40.289440, 42.562519, 51.876877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686096, 42.579887, 51.828285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126801, -0.154866, 0.979764,
		0.023730, -0.986981, -0.159078,
		0.991644, 0.043421, -0.121475,
		40.983589, 42.592915, 51.791843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606861, 42.002953, 52.271130>,  <40.289440, 42.562519, 51.876877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606861, 42.002953, 52.271130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.883217, 42.288559, 52.225784>,  <41.049030, 42.459923, 52.198578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.883217, 42.288559, 52.225784>,  <40.606861, 42.002953, 52.271130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883217, 42.288559, 52.225784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237602, -0.076160, 0.968372,
		0.682803, -0.695971, -0.222271,
		0.690887, 0.714020, -0.113362,
		41.090485, 42.502766, 52.191776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233734, 41.787823, 52.698395>,  <40.606861, 42.002953, 52.271130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233734, 41.787823, 52.698395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.294945, 42.178703, 52.639519>,  <41.331673, 42.413231, 52.604195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.294945, 42.178703, 52.639519>,  <41.233734, 41.787823, 52.698395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294945, 42.178703, 52.639519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040091, 0.142684, 0.988956,
		0.987408, -0.157241, -0.017341,
		0.153030, 0.977198, -0.147191,
		41.340855, 42.471863, 52.595360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.921867, 41.885189, 52.970909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.755028, 42.248497, 52.957836>,  <41.654926, 42.466484, 52.949993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.755028, 42.248497, 52.957836>,  <41.921867, 41.885189, 52.970909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755028, 42.248497, 52.957836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251853, 0.150059, 0.956061,
		0.873270, 0.390538, -0.291341,
		-0.417096, 0.908275, -0.032684,
		41.629898, 42.520981, 52.948032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441792, 42.381645, 53.311718>,  <41.921867, 41.885189, 52.970909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441792, 42.381645, 53.311718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.073826, 42.535858, 53.340324>,  <41.853046, 42.628387, 53.357487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.073826, 42.535858, 53.340324>,  <42.441792, 42.381645, 53.311718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073826, 42.535858, 53.340324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090735, 0.031861, 0.995365,
		0.381466, 0.922144, -0.064291,
		-0.919919, 0.385532, 0.071517,
		41.797852, 42.651516, 53.361778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510406, 42.927799, 53.666496>,  <42.441792, 42.381645, 53.311718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510406, 42.927799, 53.666496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.115646, 42.901901, 53.725594>,  <41.878788, 42.886364, 53.761051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.115646, 42.901901, 53.725594>,  <42.510406, 42.927799, 53.666496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115646, 42.901901, 53.725594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137969, 0.135771, 0.981086,
		-0.083578, 0.988623, -0.125061,
		-0.986904, -0.064743, 0.147746,
		41.819576, 42.882477, 53.769917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359177, 43.532593, 54.077908>,  <42.510406, 42.927799, 53.666496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359177, 43.532593, 54.077908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.061737, 43.266724, 54.106922>,  <41.883274, 43.107201, 54.124332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.061737, 43.266724, 54.106922>,  <42.359177, 43.532593, 54.077908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061737, 43.266724, 54.106922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018839, 0.129272, 0.991430,
		-0.668357, 0.735863, -0.108649,
		-0.743602, -0.664676, 0.072537,
		41.838657, 43.067322, 54.128685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859341, 43.823853, 54.486523>,  <42.359177, 43.532593, 54.077908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859341, 43.823853, 54.486523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.781345, 43.433640, 54.527153>,  <41.734547, 43.199512, 54.551533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.781345, 43.433640, 54.527153>,  <41.859341, 43.823853, 54.486523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781345, 43.433640, 54.527153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139760, 0.074874, 0.987350,
		-0.970796, 0.206723, 0.121740,
		-0.194993, -0.975530, 0.101580,
		41.722847, 43.140980, 54.557629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417664, 43.763290, 54.963848>,  <41.859341, 43.823853, 54.486523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417664, 43.763290, 54.963848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.547630, 43.384995, 54.964504>,  <41.625610, 43.158016, 54.964897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.547630, 43.384995, 54.964504>,  <41.417664, 43.763290, 54.963848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547630, 43.384995, 54.964504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074608, -0.023906, 0.996927,
		-0.942795, -0.324043, -0.078327,
		0.324919, -0.945741, 0.001638,
		41.645107, 43.101273, 54.964996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933357, 43.372986, 55.434914>,  <41.417664, 43.763290, 54.963848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933357, 43.372986, 55.434914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.256470, 43.138718, 55.408127>,  <41.450336, 42.998158, 55.392056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.256470, 43.138718, 55.408127>,  <40.933357, 43.372986, 55.434914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256470, 43.138718, 55.408127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052108, -0.184104, 0.981524,
		-0.587178, -0.789365, -0.179234,
		0.807779, -0.585669, -0.066970,
		41.498802, 42.963017, 55.388035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777367, 42.759975, 55.782139>,  <40.933357, 43.372986, 55.434914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777367, 42.759975, 55.782139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.174469, 42.807159, 55.773010>,  <41.412731, 42.835468, 55.767532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.174469, 42.807159, 55.773010>,  <40.777367, 42.759975, 55.782139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174469, 42.807159, 55.773010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039157, -0.138108, 0.989643,
		0.113583, -0.983368, -0.141726,
		0.992757, 0.117956, -0.022819,
		41.472298, 42.842545, 55.766163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961952, 42.300003, 56.224899>,  <40.777367, 42.759975, 55.782139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961952, 42.300003, 56.224899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.282097, 42.536942, 56.187912>,  <41.474182, 42.679104, 56.165722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.282097, 42.536942, 56.187912>,  <40.961952, 42.300003, 56.224899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282097, 42.536942, 56.187912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108450, 0.008641, 0.994064,
		0.589630, -0.805637, -0.057324,
		0.800359, 0.592347, -0.092466,
		41.522205, 42.714645, 56.160172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487602, 41.901524, 56.554195>,  <40.961952, 42.300003, 56.224899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487602, 41.901524, 56.554195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.593033, 42.287361, 56.557796>,  <41.656292, 42.518864, 56.559956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.593033, 42.287361, 56.557796>,  <41.487602, 41.901524, 56.554195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593033, 42.287361, 56.557796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022404, -0.015453, 0.999629,
		0.964379, -0.263274, -0.025683,
		0.263573, 0.964597, 0.009004,
		41.672104, 42.576740, 56.560497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021706, 41.891842, 57.080021>,  <41.487602, 41.901524, 56.554195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021706, 41.891842, 57.080021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.938713, 42.281151, 57.040653>,  <41.888920, 42.514736, 57.017033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.938713, 42.281151, 57.040653>,  <42.021706, 41.891842, 57.080021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938713, 42.281151, 57.040653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069812, 0.115087, 0.990899,
		0.975745, 0.198719, -0.091824,
		-0.207478, 0.973276, -0.098423,
		41.876469, 42.573135, 57.011127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602535, 42.325470, 57.412121>,  <42.021706, 41.891842, 57.080021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602535, 42.325470, 57.412121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.283562, 42.566689, 57.420372>,  <42.092178, 42.711418, 57.425323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.283562, 42.566689, 57.420372>,  <42.602535, 42.325470, 57.412121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283562, 42.566689, 57.420372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277868, 0.336667, 0.899692,
		0.535613, 0.723180, -0.436039,
		-0.797439, 0.603047, 0.020625,
		42.044331, 42.747604, 57.426559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881470, 43.019321, 57.473289>,  <42.602535, 42.325470, 57.412121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881470, 43.019321, 57.473289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.499634, 42.987923, 57.588242>,  <42.270531, 42.969082, 57.657215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.499634, 42.987923, 57.588242>,  <42.881470, 43.019321, 57.473289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499634, 42.987923, 57.588242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269160, 0.186197, 0.944925,
		-0.127688, 0.979371, -0.156613,
		-0.954593, -0.078501, 0.287383,
		42.213257, 42.964371, 57.674458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848282, 43.471226, 57.994884>,  <42.881470, 43.019321, 57.473289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848282, 43.471226, 57.994884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.523178, 43.246231, 58.055584>,  <42.328114, 43.111233, 58.092003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.523178, 43.246231, 58.055584>,  <42.848282, 43.471226, 57.994884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523178, 43.246231, 58.055584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016418, 0.282481, 0.959132,
		-0.582366, 0.777054, -0.238825,
		-0.812761, -0.562487, 0.151749,
		42.279350, 43.077484, 58.101109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323494, 43.835007, 58.362377>,  <42.848282, 43.471226, 57.994884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323494, 43.835007, 58.362377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.216911, 43.458458, 58.445152>,  <42.152962, 43.232529, 58.494816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.216911, 43.458458, 58.445152>,  <42.323494, 43.835007, 58.362377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216911, 43.458458, 58.445152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073409, 0.233893, 0.969487,
		-0.961046, 0.243140, -0.131429,
		-0.266461, -0.941370, 0.206934,
		42.136974, 43.176048, 58.507233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652157, 43.859707, 58.733044>,  <42.323494, 43.835007, 58.362377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652157, 43.859707, 58.733044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.824905, 43.507156, 58.809631>,  <41.928555, 43.295624, 58.855583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.824905, 43.507156, 58.809631>,  <41.652157, 43.859707, 58.733044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824905, 43.507156, 58.809631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043852, 0.191516, 0.980509,
		-0.900870, -0.431848, 0.044060,
		0.431869, -0.881379, 0.191468,
		41.954468, 43.242744, 58.867073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308418, 43.649166, 59.369694>,  <41.652157, 43.859707, 58.733044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308418, 43.649166, 59.369694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.617104, 43.394791, 59.367088>,  <41.802315, 43.242165, 59.365524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.617104, 43.394791, 59.367088>,  <41.308418, 43.649166, 59.369694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617104, 43.394791, 59.367088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137663, 0.157033, 0.977952,
		-0.620890, -0.755597, 0.208730,
		0.771715, -0.635935, -0.006518,
		41.848618, 43.204010, 59.365131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145763, 43.185642, 59.925449>,  <41.308418, 43.649166, 59.369694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145763, 43.185642, 59.925449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.533226, 43.118271, 59.852417>,  <41.765705, 43.077847, 59.808598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.533226, 43.118271, 59.852417>,  <41.145763, 43.185642, 59.925449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533226, 43.118271, 59.852417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198107, 0.080406, 0.976877,
		-0.149856, -0.982428, 0.111253,
		0.968657, -0.168431, -0.182577,
		41.823822, 43.067741, 59.797646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350254, 42.741005, 60.372826>,  <41.145763, 43.185642, 59.925449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350254, 42.741005, 60.372826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.697441, 42.911636, 60.271118>,  <41.905754, 43.014015, 60.210094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.697441, 42.911636, 60.271118>,  <41.350254, 42.741005, 60.372826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697441, 42.911636, 60.271118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209269, 0.150150, 0.966262,
		0.450369, -0.891898, 0.041055,
		0.867972, 0.426582, -0.254269,
		41.957832, 43.039612, 60.194836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880356, 42.456623, 60.793133>,  <41.350254, 42.741005, 60.372826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880356, 42.456623, 60.793133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023354, 42.804527, 60.657066>,  <42.109154, 43.013271, 60.575428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023354, 42.804527, 60.657066>,  <41.880356, 42.456623, 60.793133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023354, 42.804527, 60.657066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429295, 0.170429, 0.886938,
		0.829398, -0.463111, -0.312455,
		0.357499, 0.869760, -0.340165,
		42.130604, 43.065456, 60.555016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534622, 42.469505, 60.983292>,  <41.880356, 42.456623, 60.793133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534622, 42.469505, 60.983292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.451660, 42.850967, 60.896088>,  <42.401882, 43.079845, 60.843765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.451660, 42.850967, 60.896088>,  <42.534622, 42.469505, 60.983292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451660, 42.850967, 60.896088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261479, 0.268793, 0.927027,
		0.942662, 0.135263, -0.305109,
		-0.207404, 0.953653, -0.218012,
		42.389439, 43.137062, 60.830685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009216, 42.832314, 61.270283>,  <42.534622, 42.469505, 60.983292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009216, 42.832314, 61.270283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.726768, 43.110657, 61.217865>,  <42.557301, 43.277664, 61.186413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.726768, 43.110657, 61.217865>,  <43.009216, 42.832314, 61.270283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726768, 43.110657, 61.217865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213188, 0.385408, 0.897782,
		0.675234, 0.606007, -0.420493,
		-0.706123, 0.695857, -0.131047,
		42.514931, 43.319412, 61.178551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247841, 43.600368, 61.397869>,  <43.009216, 42.832314, 61.270283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247841, 43.600368, 61.397869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.860619, 43.577110, 61.495430>,  <42.628284, 43.563156, 61.553967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.860619, 43.577110, 61.495430>,  <43.247841, 43.600368, 61.397869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860619, 43.577110, 61.495430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205673, 0.372218, 0.905070,
		-0.143405, 0.926322, -0.348370,
		-0.968056, -0.058141, 0.243898,
		42.570202, 43.559669, 61.568600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893063, 44.256092, 61.668247>,  <43.247841, 43.600368, 61.397869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893063, 44.256092, 61.668247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.687248, 43.959618, 61.840706>,  <42.563759, 43.781731, 61.944183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.687248, 43.959618, 61.840706>,  <42.893063, 44.256092, 61.668247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687248, 43.959618, 61.840706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150656, 0.416852, 0.896402,
		-0.844130, 0.526187, -0.102821,
		-0.514536, -0.741189, 0.431150,
		42.532887, 43.737259, 61.970051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514839, 44.153221, 61.940090>,  <42.893063, 44.256092, 61.668247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514839, 44.153221, 61.940090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.877914, 44.004715, 62.018333>,  <44.095760, 43.915611, 62.065281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.877914, 44.004715, 62.018333>,  <43.514839, 44.153221, 61.940090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877914, 44.004715, 62.018333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276905, 0.179648, -0.943954,
		0.315318, 0.910981, 0.265871,
		0.907688, -0.371267, 0.195609,
		44.150219, 43.893333, 62.077015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943924, 44.519737, 61.448189>,  <43.514839, 44.153221, 61.940090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943924, 44.519737, 61.448189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.194290, 44.224762, 61.549709>,  <44.344509, 44.047775, 61.610622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.194290, 44.224762, 61.549709>,  <43.943924, 44.519737, 61.448189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194290, 44.224762, 61.549709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329652, -0.044762, -0.943041,
		0.706799, 0.673925, 0.215082,
		0.625911, -0.737442, 0.253798,
		44.382065, 44.003529, 61.625851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.580383, 44.665329, 61.187321>,  <43.943924, 44.519737, 61.448189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.580383, 44.665329, 61.187321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.557129, 44.268257, 61.229668>,  <44.543175, 44.030014, 61.255077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.557129, 44.268257, 61.229668>,  <44.580383, 44.665329, 61.187321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557129, 44.268257, 61.229668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381893, -0.120097, -0.916370,
		0.922376, -0.012845, 0.386080,
		-0.058138, -0.992679, 0.105869,
		44.539688, 43.970455, 61.261429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249069, 44.368671, 61.006618>,  <44.580383, 44.665329, 61.187321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249069, 44.368671, 61.006618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.981644, 44.073067, 60.973434>,  <44.821190, 43.895702, 60.953526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.981644, 44.073067, 60.973434>,  <45.249069, 44.368671, 61.006618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.981644, 44.073067, 60.973434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275766, -0.142773, -0.950563,
		0.690633, -0.658390, 0.299248,
		-0.668565, -0.739012, -0.082958,
		44.781075, 43.851364, 60.948547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.554310, 43.822079, 60.614086>,  <45.249069, 44.368671, 61.006618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.554310, 43.822079, 60.614086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.165390, 43.744774, 60.561501>,  <44.932037, 43.698391, 60.529949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.165390, 43.744774, 60.561501>,  <45.554310, 43.822079, 60.614086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165390, 43.744774, 60.561501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161325, -0.147864, -0.975761,
		0.169139, -0.969941, 0.174946,
		-0.972300, -0.193262, -0.131466,
		44.873699, 43.686794, 60.522060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.518990, 43.272331, 60.148079>,  <45.554310, 43.822079, 60.614086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.518990, 43.272331, 60.148079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.147964, 43.420128, 60.125786>,  <44.925350, 43.508808, 60.112408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.147964, 43.420128, 60.125786>,  <45.518990, 43.272331, 60.148079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147964, 43.420128, 60.125786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050970, -0.022656, -0.998443,
		-0.370184, -0.928956, 0.002181,
		-0.927559, 0.369496, -0.055736,
		44.869698, 43.530975, 60.109066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051670, 42.853504, 59.698822>,  <45.518990, 43.272331, 60.148079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051670, 42.853504, 59.698822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.887192, 43.217987, 59.688873>,  <44.788506, 43.436676, 59.682903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.887192, 43.217987, 59.688873>,  <45.051670, 42.853504, 59.698822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.887192, 43.217987, 59.688873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170509, -0.103690, -0.979885,
		-0.895457, -0.398685, 0.198006,
		-0.411197, 0.911207, -0.024870,
		44.763832, 43.491348, 59.681412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672779, 42.753258, 59.177219>,  <45.051670, 42.853504, 59.698822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672779, 42.753258, 59.177219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.566559, 43.134621, 59.234474>,  <44.502827, 43.363438, 59.268829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.566559, 43.134621, 59.234474>,  <44.672779, 42.753258, 59.177219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566559, 43.134621, 59.234474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346789, 0.044072, -0.936907,
		-0.899566, -0.298439, 0.318929,
		-0.265554, 0.953411, 0.143141,
		44.486893, 43.420643, 59.277416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936451, 42.876053, 59.028095>,  <44.672779, 42.753258, 59.177219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936451, 42.876053, 59.028095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.125145, 43.222542, 58.962231>,  <44.238361, 43.430435, 58.922710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.125145, 43.222542, 58.962231>,  <43.936451, 42.876053, 59.028095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125145, 43.222542, 58.962231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268780, -0.036592, -0.962506,
		-0.839774, 0.498309, 0.215563,
		0.471738, 0.866227, -0.164664,
		44.266666, 43.482410, 58.912830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477188, 43.391495, 58.703465>,  <43.936451, 42.876053, 59.028095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477188, 43.391495, 58.703465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.854145, 43.479797, 58.602932>,  <44.080318, 43.532780, 58.542614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.854145, 43.479797, 58.602932>,  <43.477188, 43.391495, 58.703465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854145, 43.479797, 58.602932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256619, -0.004880, -0.966500,
		-0.214588, 0.975317, 0.052052,
		0.942390, 0.220757, -0.251332,
		44.136864, 43.546024, 58.527531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449760, 43.883827, 58.182137>,  <43.477188, 43.391495, 58.703465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449760, 43.883827, 58.182137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.813820, 43.724937, 58.135059>,  <44.032253, 43.629604, 58.106812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.813820, 43.724937, 58.135059>,  <43.449760, 43.883827, 58.182137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813820, 43.724937, 58.135059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186661, -0.139561, -0.972461,
		0.369859, 0.907048, -0.201167,
		0.910144, -0.397223, -0.117692,
		44.086864, 43.605770, 58.099751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760769, 44.152657, 57.486580>,  <43.449760, 43.883827, 58.182137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760769, 44.152657, 57.486580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.971325, 43.834206, 57.605972>,  <44.097660, 43.643135, 57.677608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.971325, 43.834206, 57.605972>,  <43.760769, 44.152657, 57.486580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.971325, 43.834206, 57.605972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004915, -0.348199, -0.937408,
		0.850228, 0.494910, -0.179376,
		0.526391, -0.796129, 0.298481,
		44.129242, 43.595367, 57.695515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332703, 44.138798, 57.057606>,  <43.760769, 44.152657, 57.486580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332703, 44.138798, 57.057606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.290459, 43.768623, 57.203163>,  <44.265110, 43.546520, 57.290497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.290459, 43.768623, 57.203163>,  <44.332703, 44.138798, 57.057606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290459, 43.768623, 57.203163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000183, -0.365921, -0.930646,
		0.994407, -0.098354, 0.038476,
		-0.105612, -0.925434, 0.363893,
		44.258774, 43.490993, 57.312332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944065, 43.694439, 56.791702>,  <44.332703, 44.138798, 57.057606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944065, 43.694439, 56.791702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.646492, 43.452469, 56.905285>,  <44.467949, 43.307285, 56.973434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.646492, 43.452469, 56.905285>,  <44.944065, 43.694439, 56.791702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646492, 43.452469, 56.905285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068951, -0.492137, -0.867783,
		0.664689, -0.625992, 0.407826,
		-0.743932, -0.604925, 0.283955,
		44.423313, 43.270992, 56.990471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148697, 43.058552, 56.580582>,  <44.944065, 43.694439, 56.791702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148697, 43.058552, 56.580582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.752815, 43.023865, 56.626137>,  <44.515285, 43.003052, 56.653469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.752815, 43.023865, 56.626137>,  <45.148697, 43.058552, 56.580582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752815, 43.023865, 56.626137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065385, -0.433878, -0.898596,
		0.127339, -0.896788, 0.423740,
		-0.989701, -0.086720, 0.113886,
		44.455906, 42.997849, 56.660301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977879, 42.437378, 56.296551>,  <45.148697, 43.058552, 56.580582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977879, 42.437378, 56.296551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.622772, 42.621231, 56.306381>,  <44.409710, 42.731544, 56.312279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.622772, 42.621231, 56.306381>,  <44.977879, 42.437378, 56.296551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622772, 42.621231, 56.306381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207827, -0.352623, -0.912395,
		-0.410708, -0.815100, 0.408572,
		-0.887765, 0.459640, 0.024574,
		44.356441, 42.759121, 56.313755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564911, 41.949646, 56.067051>,  <44.977879, 42.437378, 56.296551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564911, 41.949646, 56.067051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.357731, 42.283821, 55.993534>,  <44.233425, 42.484325, 55.949425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.357731, 42.283821, 55.993534>,  <44.564911, 41.949646, 56.067051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357731, 42.283821, 55.993534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337049, -0.396791, -0.853789,
		-0.786212, -0.380270, 0.487099,
		-0.517947, 0.835435, -0.183792,
		44.202347, 42.534451, 55.938396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070011, 41.729820, 55.514214>,  <44.564911, 41.949646, 56.067051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070011, 41.729820, 55.514214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.023506, 42.126472, 55.491768>,  <43.995602, 42.364464, 55.478302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.023506, 42.126472, 55.491768>,  <44.070011, 41.729820, 55.514214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023506, 42.126472, 55.491768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361390, -0.094860, -0.927577,
		-0.925138, -0.087568, 0.369394,
		-0.116267, 0.991632, -0.056112,
		43.988625, 42.423962, 55.474934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394825, 41.823532, 55.208191>,  <44.070011, 41.729820, 55.514214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394825, 41.823532, 55.208191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.614120, 42.154869, 55.162086>,  <43.745697, 42.353672, 55.134426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.614120, 42.154869, 55.162086>,  <43.394825, 41.823532, 55.208191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614120, 42.154869, 55.162086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204702, -0.000713, -0.978824,
		-0.810885, 0.560220, 0.169172,
		0.548236, 0.828344, -0.115256,
		43.778591, 42.403374, 55.127510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084167, 42.284164, 54.743603>,  <43.394825, 41.823532, 55.208191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084167, 42.284164, 54.743603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.465912, 42.403503, 54.748951>,  <43.694958, 42.475105, 54.752159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.465912, 42.403503, 54.748951>,  <43.084167, 42.284164, 54.743603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465912, 42.403503, 54.748951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004094, 0.031691, -0.999489,
		-0.298617, 0.953932, 0.029023,
		0.954364, 0.298345, 0.013369,
		43.752220, 42.493008, 54.752960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.723389, 41.611103, 50.532467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.965210, 41.903572, 50.406036>,  <41.110302, 42.079052, 50.330177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.965210, 41.903572, 50.406036>,  <40.723389, 41.611103, 50.532467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965210, 41.903572, 50.406036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191023, -0.252149, -0.948647,
		-0.773323, 0.633883, -0.012766,
		0.604551, 0.731172, -0.316079,
		41.146576, 42.122925, 50.311214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490482, 41.681107, 49.786648>,  <40.723389, 41.611103, 50.532467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490482, 41.681107, 49.786648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821465, 41.905113, 49.770142>,  <41.020054, 42.039516, 49.760239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821465, 41.905113, 49.770142>,  <40.490482, 41.681107, 49.786648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821465, 41.905113, 49.770142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115758, -0.242026, -0.963340,
		-0.549469, 0.792345, -0.265092,
		0.827456, 0.560012, -0.041266,
		41.069702, 42.073116, 49.757763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475449, 42.292374, 49.229824>,  <40.490482, 41.681107, 49.786648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475449, 42.292374, 49.229824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.857838, 42.195854, 49.296627>,  <41.087273, 42.137943, 49.336708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.857838, 42.195854, 49.296627>,  <40.475449, 42.292374, 49.229824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857838, 42.195854, 49.296627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129337, -0.164407, -0.977877,
		0.263421, 0.956423, -0.125959,
		0.955972, -0.241302, 0.167009,
		41.144630, 42.123463, 49.346729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847065, 42.720325, 48.815052>,  <40.475449, 42.292374, 49.229824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847065, 42.720325, 48.815052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.086021, 42.408035, 48.888359>,  <41.229397, 42.220661, 48.932343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.086021, 42.408035, 48.888359>,  <40.847065, 42.720325, 48.815052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086021, 42.408035, 48.888359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244328, -0.040477, -0.968848,
		0.763821, 0.623564, 0.166571,
		0.597396, -0.780724, 0.183271,
		41.265240, 42.173817, 48.943340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415733, 42.763878, 48.277397>,  <40.847065, 42.720325, 48.815052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415733, 42.763878, 48.277397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.435287, 42.391403, 48.421898>,  <41.447018, 42.167919, 48.508598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.435287, 42.391403, 48.421898>,  <41.415733, 42.763878, 48.277397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435287, 42.391403, 48.421898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316655, -0.328576, -0.889813,
		0.947280, 0.157888, 0.278804,
		0.048883, -0.931187, 0.361250,
		41.449951, 42.112045, 48.530273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123924, 42.507629, 48.239044>,  <41.415733, 42.763878, 48.277397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123924, 42.507629, 48.239044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.896450, 42.178825, 48.250996>,  <41.759964, 41.981544, 48.258167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.896450, 42.178825, 48.250996>,  <42.123924, 42.507629, 48.239044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896450, 42.178825, 48.250996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367770, -0.286584, -0.884655,
		0.735757, -0.492107, 0.465288,
		-0.568689, -0.822010, 0.029874,
		41.725842, 41.932224, 48.259956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561489, 41.987812, 48.058640>,  <42.123924, 42.507629, 48.239044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561489, 41.987812, 48.058640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.206299, 41.812157, 48.003994>,  <41.993187, 41.706764, 47.971207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.206299, 41.812157, 48.003994>,  <42.561489, 41.987812, 48.058640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206299, 41.812157, 48.003994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282201, -0.285724, -0.915819,
		0.363133, -0.851776, 0.377640,
		-0.887974, -0.439134, -0.136616,
		41.939907, 41.680416, 47.963009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722763, 41.283424, 47.841705>,  <42.561489, 41.987812, 48.058640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722763, 41.283424, 47.841705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361088, 41.361893, 47.689941>,  <42.144081, 41.408974, 47.598885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361088, 41.361893, 47.689941>,  <42.722763, 41.283424, 47.841705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361088, 41.361893, 47.689941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317400, -0.285820, -0.904193,
		-0.285820, -0.937989, 0.196171,
		0.904193, -0.196171, 0.379411,
		42.089828, 41.420746, 47.576118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748074, 40.916851, 47.261482>,  <42.722763, 41.283424, 47.841705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748074, 40.916851, 47.261482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.411652, 41.120903, 47.189495>,  <42.209797, 41.243336, 47.146301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.411652, 41.120903, 47.189495>,  <42.748074, 40.916851, 47.261482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411652, 41.120903, 47.189495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102545, -0.176310, -0.978979,
		-0.531141, -0.841830, 0.095975,
		-0.841056, 0.510134, -0.179971,
		42.159336, 41.273945, 47.135506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369450, 40.473846, 46.844753>,  <42.748074, 40.916851, 47.261482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369450, 40.473846, 46.844753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.277493, 40.859787, 46.793831>,  <42.222321, 41.091351, 46.763275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.277493, 40.859787, 46.793831>,  <42.369450, 40.473846, 46.844753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277493, 40.859787, 46.793831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337015, -0.043793, -0.940480,
		-0.913001, -0.259111, -0.315102,
		-0.229890, 0.964854, -0.127308,
		42.208527, 41.149242, 46.755638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918774, 40.438877, 46.355129>,  <42.369450, 40.473846, 46.844753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918774, 40.438877, 46.355129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032352, 40.822357, 46.348652>,  <42.100498, 41.052444, 46.344765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032352, 40.822357, 46.348652>,  <41.918774, 40.438877, 46.355129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032352, 40.822357, 46.348652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108807, -0.048999, -0.992855,
		-0.952648, 0.280152, -0.118226,
		0.283943, 0.958704, -0.016196,
		42.117535, 41.109970, 46.343792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600124, 40.762604, 45.765514>,  <41.918774, 40.438877, 46.355129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600124, 40.762604, 45.765514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.901169, 41.012459, 45.848846>,  <42.081795, 41.162373, 45.898846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.901169, 41.012459, 45.848846>,  <41.600124, 40.762604, 45.765514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901169, 41.012459, 45.848846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032099, 0.281214, -0.959108,
		-0.657684, 0.728521, 0.191594,
		0.752609, 0.624640, 0.208335,
		42.126953, 41.199852, 45.911346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591217, 41.612507, 45.467381>,  <41.600124, 40.762604, 45.765514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591217, 41.612507, 45.467381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.961891, 41.472099, 45.521095>,  <42.184296, 41.387856, 45.553322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.961891, 41.472099, 45.521095>,  <41.591217, 41.612507, 45.467381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961891, 41.472099, 45.521095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208512, 0.182924, -0.960761,
		0.312686, 0.918325, 0.242706,
		0.926688, -0.351023, 0.134284,
		42.239899, 41.366791, 45.561382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227959, 42.074451, 45.373669>,  <41.591217, 41.612507, 45.467381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227959, 42.074451, 45.373669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.291267, 41.688202, 45.291187>,  <42.329254, 41.456451, 45.241699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.291267, 41.688202, 45.291187>,  <42.227959, 42.074451, 45.373669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291267, 41.688202, 45.291187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413953, 0.254487, -0.874002,
		0.896433, 0.052975, 0.440002,
		0.158275, -0.965624, -0.206201,
		42.338749, 41.398514, 45.229328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220577, 42.777496, 45.205418>,  <42.227959, 42.074451, 45.373669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220577, 42.777496, 45.205418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327053, 43.157043, 45.137535>,  <42.390938, 43.384769, 45.096806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327053, 43.157043, 45.137535>,  <42.220577, 42.777496, 45.205418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327053, 43.157043, 45.137535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181946, 0.123435, 0.975531,
		0.946594, -0.290551, -0.139785,
		0.266187, 0.948864, -0.169708,
		42.406910, 43.441704, 45.086624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889839, 42.891472, 45.536739>,  <42.220577, 42.777496, 45.205418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889839, 42.891472, 45.536739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.692677, 43.239433, 45.529705>,  <42.574379, 43.448212, 45.525482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.692677, 43.239433, 45.529705>,  <42.889839, 42.891472, 45.536739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692677, 43.239433, 45.529705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175568, 0.119240, 0.977219,
		0.852185, 0.478589, -0.211501,
		-0.492906, 0.869905, -0.017590,
		42.544804, 43.500404, 45.524429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351532, 43.460552, 45.777386>,  <42.889839, 42.891472, 45.536739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351532, 43.460552, 45.777386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.971512, 43.579781, 45.814404>,  <42.743500, 43.651318, 45.836613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.971512, 43.579781, 45.814404>,  <43.351532, 43.460552, 45.777386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971512, 43.579781, 45.814404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106390, 0.030529, 0.993856,
		0.293416, 0.954055, -0.060716,
		-0.950046, 0.298073, 0.092544,
		42.686497, 43.669201, 45.842167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403942, 43.958607, 46.304691>,  <43.351532, 43.460552, 45.777386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403942, 43.958607, 46.304691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008354, 43.900505, 46.293053>,  <42.771004, 43.865646, 46.286072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008354, 43.900505, 46.293053>,  <43.403942, 43.958607, 46.304691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008354, 43.900505, 46.293053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063569, 0.238737, 0.969002,
		-0.133803, 0.960160, -0.245336,
		-0.988967, -0.145251, -0.029092,
		42.711662, 43.856930, 46.284325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057308, 44.685387, 46.560524>,  <43.403942, 43.958607, 46.304691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057308, 44.685387, 46.560524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.800858, 44.384140, 46.619545>,  <42.646988, 44.203392, 46.654957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.800858, 44.384140, 46.619545>,  <43.057308, 44.685387, 46.560524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800858, 44.384140, 46.619545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178446, 0.333293, 0.925782,
		-0.746403, 0.567211, -0.348073,
		-0.641124, -0.753119, 0.147554,
		42.608521, 44.158203, 46.663811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411179, 44.977810, 46.923790>,  <43.057308, 44.685387, 46.560524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411179, 44.977810, 46.923790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.412888, 44.582451, 46.984516>,  <42.413914, 44.345234, 47.020950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.412888, 44.582451, 46.984516>,  <42.411179, 44.977810, 46.923790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412888, 44.582451, 46.984516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387811, 0.138293, 0.911305,
		-0.921729, -0.062769, -0.382722,
		0.004274, -0.988400, 0.151812,
		42.414169, 44.285931, 47.030060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672733, 44.801868, 47.027512>,  <42.411179, 44.977810, 46.923790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672733, 44.801868, 47.027512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.951073, 44.565147, 47.190269>,  <42.118076, 44.423115, 47.287926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.951073, 44.565147, 47.190269>,  <41.672733, 44.801868, 47.027512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951073, 44.565147, 47.190269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399568, 0.151767, 0.904053,
		-0.596772, -0.791669, -0.130857,
		0.695851, -0.591800, 0.406896,
		42.159828, 44.387608, 47.312340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415070, 44.741795, 47.673466>,  <41.672733, 44.801868, 47.027512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415070, 44.741795, 47.673466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.759254, 44.543617, 47.721027>,  <41.965767, 44.424713, 47.749565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.759254, 44.543617, 47.721027>,  <41.415070, 44.741795, 47.673466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759254, 44.543617, 47.721027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150510, -0.024201, 0.988312,
		-0.486770, -0.868306, -0.095393,
		0.860466, -0.495438, 0.118908,
		42.017395, 44.394985, 47.756699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355232, 44.226292, 48.264671>,  <41.415070, 44.741795, 47.673466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355232, 44.226292, 48.264671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.746555, 44.301270, 48.229416>,  <41.981350, 44.346256, 48.208263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.746555, 44.301270, 48.229416>,  <41.355232, 44.226292, 48.264671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746555, 44.301270, 48.229416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108246, -0.099866, 0.989095,
		0.176603, -0.977184, -0.117991,
		0.978312, 0.187450, -0.088140,
		42.040051, 44.357506, 48.202972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646530, 43.800449, 48.793945>,  <41.355232, 44.226292, 48.264671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646530, 43.800449, 48.793945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.958420, 44.031853, 48.698143>,  <42.145554, 44.170696, 48.640659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.958420, 44.031853, 48.698143>,  <41.646530, 43.800449, 48.793945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958420, 44.031853, 48.698143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338459, -0.067610, 0.938549,
		0.526765, -0.812870, -0.248518,
		0.779721, 0.578507, -0.239508,
		42.192337, 44.205406, 48.626289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307251, 43.494427, 49.007027>,  <41.646530, 43.800449, 48.793945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307251, 43.494427, 49.007027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.358444, 43.890999, 48.996517>,  <42.389160, 44.128941, 48.990211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.358444, 43.890999, 48.996517>,  <42.307251, 43.494427, 49.007027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358444, 43.890999, 48.996517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281481, -0.010911, 0.959505,
		0.950994, -0.130191, -0.280465,
		0.127979, 0.991429, -0.026270,
		42.396839, 44.188427, 48.988636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975700, 43.604004, 49.362991>,  <42.307251, 43.494427, 49.007027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975700, 43.604004, 49.362991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.767418, 43.944748, 49.385593>,  <42.642448, 44.149197, 49.399155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.767418, 43.944748, 49.385593>,  <42.975700, 43.604004, 49.362991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767418, 43.944748, 49.385593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386573, 0.176249, 0.905261,
		0.761198, 0.493221, -0.421081,
		-0.520710, 0.851862, 0.056505,
		42.611206, 44.200306, 49.402546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482246, 44.054546, 49.677216>,  <42.975700, 43.604004, 49.362991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482246, 44.054546, 49.677216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119541, 44.209824, 49.743053>,  <42.901920, 44.302990, 49.782558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119541, 44.209824, 49.743053>,  <43.482246, 44.054546, 49.677216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119541, 44.209824, 49.743053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310633, 0.351049, 0.883330,
		0.285122, 0.852097, -0.438903,
		-0.906759, 0.388195, 0.164598,
		42.847515, 44.326283, 49.792431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633751, 44.713356, 50.107433>,  <43.482246, 44.054546, 49.677216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633751, 44.713356, 50.107433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244720, 44.625038, 50.136703>,  <43.011303, 44.572048, 50.154266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244720, 44.625038, 50.136703>,  <43.633751, 44.713356, 50.107433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244720, 44.625038, 50.136703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005801, 0.337511, 0.941304,
		-0.232531, 0.915061, -0.329534,
		-0.972572, -0.220794, 0.073173,
		42.952950, 44.558800, 50.158657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931812, 45.413795, 50.154716>,  <43.633751, 44.713356, 50.107433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931812, 45.413795, 50.154716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.286163, 45.598747, 50.139626>,  <44.498775, 45.709717, 50.130569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.286163, 45.598747, 50.139626>,  <43.931812, 45.413795, 50.154716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286163, 45.598747, 50.139626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184448, -0.425670, -0.885881,
		-0.425670, 0.777826, -0.462377,
		0.885881, 0.462377, -0.037726,
		44.551926, 45.737461, 50.128307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993164, 45.605740, 49.444420>,  <43.931812, 45.413795, 50.154716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993164, 45.605740, 49.444420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371384, 45.678635, 49.552296>,  <44.598316, 45.722374, 49.617020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371384, 45.678635, 49.552296>,  <43.993164, 45.605740, 49.444420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371384, 45.678635, 49.552296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307173, -0.225573, -0.924533,
		-0.107653, 0.957029, -0.269269,
		0.945545, 0.182241, 0.269690,
		44.655048, 45.733307, 49.633202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281910, 46.110405, 48.916428>,  <43.993164, 45.605740, 49.444420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281910, 46.110405, 48.916428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.585838, 45.931969, 49.105606>,  <44.768196, 45.824909, 49.219112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.585838, 45.931969, 49.105606>,  <44.281910, 46.110405, 48.916428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585838, 45.931969, 49.105606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448220, -0.167511, -0.878088,
		0.470928, 0.879174, 0.072667,
		0.759820, -0.446087, 0.472949,
		44.813786, 45.798141, 49.247490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965916, 46.455189, 48.793537>,  <44.281910, 46.110405, 48.916428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965916, 46.455189, 48.793537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043041, 46.079330, 48.906590>,  <45.089317, 45.853813, 48.974422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043041, 46.079330, 48.906590>,  <44.965916, 46.455189, 48.793537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043041, 46.079330, 48.906590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714542, -0.062952, -0.696755,
		0.672497, 0.336299, 0.659280,
		0.192815, -0.939649, 0.282635,
		45.100887, 45.797436, 48.991379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681286, 46.418175, 48.859436>,  <44.965916, 46.455189, 48.793537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681286, 46.418175, 48.859436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.575241, 46.033882, 48.826672>,  <45.511616, 45.803307, 48.807014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.575241, 46.033882, 48.826672>,  <45.681286, 46.418175, 48.859436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575241, 46.033882, 48.826672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759501, -0.155731, -0.631590,
		0.594034, -0.229651, 0.770964,
		-0.265108, -0.960733, -0.081910,
		45.495708, 45.745663, 48.802097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299435, 46.130348, 48.781422>,  <45.681286, 46.418175, 48.859436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.299435, 46.130348, 48.781422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.057579, 45.833420, 48.665932>,  <45.912464, 45.655262, 48.596638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.057579, 45.833420, 48.665932>,  <46.299435, 46.130348, 48.781422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.057579, 45.833420, 48.665932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647149, -0.246535, -0.721401,
		0.464333, -0.623037, 0.629460,
		-0.604643, -0.742325, -0.288723,
		45.876186, 45.610722, 48.579315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.647148, 45.491695, 48.867371>,  <46.299435, 46.130348, 48.781422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.647148, 45.491695, 48.867371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.367317, 45.440338, 48.586197>,  <46.199421, 45.409523, 48.417492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.367317, 45.440338, 48.586197>,  <46.647148, 45.491695, 48.867371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.367317, 45.440338, 48.586197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699117, -0.326393, -0.636163,
		-0.147756, -0.936474, 0.318094,
		-0.699574, -0.128388, -0.702931,
		46.157444, 45.401821, 48.375317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818695, 44.898075, 48.520962>,  <46.647148, 45.491695, 48.867371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818695, 44.898075, 48.520962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.539589, 45.045952, 48.275536>,  <46.372128, 45.134678, 48.128281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.539589, 45.045952, 48.275536>,  <46.818695, 44.898075, 48.520962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539589, 45.045952, 48.275536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496396, -0.367987, -0.786242,
		-0.516448, -0.853179, 0.073255,
		-0.697762, 0.369690, -0.613561,
		46.330261, 45.156860, 48.091469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550255, 44.336090, 48.056179>,  <46.818695, 44.898075, 48.520962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550255, 44.336090, 48.056179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.503365, 44.692802, 47.881374>,  <46.475231, 44.906830, 47.776493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.503365, 44.692802, 47.881374>,  <46.550255, 44.336090, 48.056179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.503365, 44.692802, 47.881374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557000, -0.305274, -0.772372,
		-0.822197, -0.333960, -0.460937,
		-0.117229, 0.891784, -0.437011,
		46.468197, 44.960339, 47.750271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301029, 44.176327, 47.409828>,  <46.550255, 44.336090, 48.056179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301029, 44.176327, 47.409828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.441162, 44.549416, 47.375668>,  <46.525242, 44.773270, 47.355171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.441162, 44.549416, 47.375668>,  <46.301029, 44.176327, 47.409828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441162, 44.549416, 47.375668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684336, -0.317151, -0.656581,
		-0.639494, 0.171579, -0.749405,
		0.350330, 0.932725, -0.085399,
		46.546261, 44.829231, 47.350048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353706, 44.221008, 46.690830>,  <46.301029, 44.176327, 47.409828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353706, 44.221008, 46.690830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.587173, 44.505119, 46.848221>,  <46.727253, 44.675587, 46.942657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.587173, 44.505119, 46.848221>,  <46.353706, 44.221008, 46.690830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.587173, 44.505119, 46.848221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725828, -0.239150, -0.644966,
		-0.364006, 0.662048, -0.655127,
		0.583672, 0.710281, 0.393481,
		46.762276, 44.718204, 46.966267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.679050, 44.549732, 46.106319>,  <46.353706, 44.221008, 46.690830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.679050, 44.549732, 46.106319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.911133, 44.610344, 46.426422>,  <47.050381, 44.646713, 46.618484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.911133, 44.610344, 46.426422>,  <46.679050, 44.549732, 46.106319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.911133, 44.610344, 46.426422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805010, -0.256029, -0.535171,
		0.123792, 0.954719, -0.270533,
		0.580202, 0.151531, 0.800252,
		47.085194, 44.655804, 46.666496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.218502, 47.838825, 52.809315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594467, 47.795311, 52.938759>,  <43.820045, 47.769203, 53.016426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594467, 47.795311, 52.938759>,  <43.218502, 47.838825, 52.809315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594467, 47.795311, 52.938759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274707, -0.321847, -0.906063,
		0.202724, 0.940521, -0.272624,
		0.939914, -0.108789, 0.323614,
		43.876442, 47.762672, 53.035843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626488, 48.150703, 52.313183>,  <43.218502, 47.838825, 52.809315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626488, 48.150703, 52.313183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847691, 47.877472, 52.504009>,  <43.980412, 47.713531, 52.618504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847691, 47.877472, 52.504009>,  <43.626488, 48.150703, 52.313183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.847691, 47.877472, 52.504009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277048, -0.389244, -0.878484,
		0.785769, 0.617974, -0.026007,
		0.553003, -0.683080, 0.477064,
		44.013592, 47.672546, 52.647129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233051, 48.109539, 51.903004>,  <43.626488, 48.150703, 52.313183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233051, 48.109539, 51.903004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231178, 47.768555, 52.112110>,  <44.230057, 47.563965, 52.237572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231178, 47.768555, 52.112110>,  <44.233051, 48.109539, 51.903004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231178, 47.768555, 52.112110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482270, -0.459879, -0.745605,
		0.876010, 0.248624, 0.413271,
		-0.004680, -0.852465, 0.522763,
		44.229774, 47.512814, 52.268940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954582, 47.774517, 51.811905>,  <44.233051, 48.109539, 51.903004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954582, 47.774517, 51.811905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723267, 47.488281, 51.968632>,  <44.584476, 47.316540, 52.062668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723267, 47.488281, 51.968632>,  <44.954582, 47.774517, 51.811905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723267, 47.488281, 51.968632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451543, -0.680735, -0.576810,
		0.679481, -0.156639, 0.716778,
		-0.578286, -0.715587, 0.391817,
		44.549782, 47.273605, 52.086178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372643, 47.158199, 51.858532>,  <44.954582, 47.774517, 51.811905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372643, 47.158199, 51.858532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996422, 47.022354, 51.860222>,  <44.770687, 46.940845, 51.861237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996422, 47.022354, 51.860222>,  <45.372643, 47.158199, 51.858532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.996422, 47.022354, 51.860222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244437, -0.685494, -0.685820,
		0.235806, -0.644020, 0.727759,
		-0.940556, -0.339612, 0.004221,
		44.714256, 46.920471, 51.861488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383572, 46.408829, 51.757965>,  <45.372643, 47.158199, 51.858532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383572, 46.408829, 51.757965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008949, 46.504654, 51.655617>,  <44.784176, 46.562149, 51.594208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008949, 46.504654, 51.655617>,  <45.383572, 46.408829, 51.757965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008949, 46.504654, 51.655617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036857, -0.658629, -0.751564,
		-0.348573, -0.713313, 0.608014,
		-0.936557, 0.239565, -0.255871,
		44.727982, 46.576523, 51.578854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095230, 45.780258, 51.584789>,  <45.383572, 46.408829, 51.757965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095230, 45.780258, 51.584789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838745, 46.035637, 51.414505>,  <44.684853, 46.188866, 51.312332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838745, 46.035637, 51.414505>,  <45.095230, 45.780258, 51.584789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838745, 46.035637, 51.414505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039326, -0.526704, -0.849139,
		-0.766355, -0.561220, 0.312621,
		-0.641212, 0.638448, -0.425713,
		44.646381, 46.227173, 51.286793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615395, 45.391743, 51.385883>,  <45.095230, 45.780258, 51.584789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615395, 45.391743, 51.385883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639549, 45.712769, 51.148479>,  <44.654041, 45.905384, 51.006039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639549, 45.712769, 51.148479>,  <44.615395, 45.391743, 51.385883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639549, 45.712769, 51.148479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029721, -0.592881, -0.804742,
		-0.997733, 0.066234, -0.011949,
		0.060385, 0.802562, -0.593505,
		44.657665, 45.953537, 50.970428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174145, 45.230286, 50.798180>,  <44.615395, 45.391743, 51.385883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174145, 45.230286, 50.798180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411140, 45.525665, 50.669399>,  <44.553337, 45.702892, 50.592133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411140, 45.525665, 50.669399>,  <44.174145, 45.230286, 50.798180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411140, 45.525665, 50.669399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118013, -0.474897, -0.872093,
		-0.796889, 0.478709, -0.368517,
		0.592486, 0.738451, -0.321946,
		44.588886, 45.747200, 50.572815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354031, 45.262249, 50.530331>,  <44.174145, 45.230286, 50.798180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354031, 45.262249, 50.530331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056026, 44.996292, 50.551785>,  <42.877224, 44.836720, 50.564655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056026, 44.996292, 50.551785>,  <43.354031, 45.262249, 50.530331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056026, 44.996292, 50.551785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132752, 0.226584, 0.964902,
		-0.653709, 0.711743, -0.257073,
		-0.745011, -0.664892, 0.053635,
		42.832523, 44.796825, 50.567875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729427, 45.643414, 50.885185>,  <43.354031, 45.262249, 50.530331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729427, 45.643414, 50.885185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678333, 45.249184, 50.929611>,  <42.647678, 45.012646, 50.956264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678333, 45.249184, 50.929611>,  <42.729427, 45.643414, 50.885185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678333, 45.249184, 50.929611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310783, 0.146115, 0.939183,
		-0.941859, 0.085451, -0.324962,
		-0.127736, -0.985570, 0.111063,
		42.640011, 44.953514, 50.962929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095573, 45.619873, 51.174709>,  <42.729427, 45.643414, 50.885185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095573, 45.619873, 51.174709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291000, 45.282349, 51.263504>,  <42.408257, 45.079834, 51.316780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291000, 45.282349, 51.263504>,  <42.095573, 45.619873, 51.174709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291000, 45.282349, 51.263504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392690, 0.014546, 0.919556,
		-0.779163, -0.536439, -0.324251,
		0.488569, -0.843814, 0.221988,
		42.437572, 45.029205, 51.330101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635433, 45.251045, 51.576431>,  <42.095573, 45.619873, 51.174709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635433, 45.251045, 51.576431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974220, 45.052910, 51.653667>,  <42.177494, 44.934029, 51.700008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974220, 45.052910, 51.653667>,  <41.635433, 45.251045, 51.576431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974220, 45.052910, 51.653667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166828, 0.097229, 0.981180,
		-0.504787, -0.863244, -0.000286,
		0.846970, -0.495335, 0.193093,
		42.228310, 44.904308, 51.711594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463951, 44.911777, 52.160175>,  <41.635433, 45.251045, 51.576431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463951, 44.911777, 52.160175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861904, 44.874611, 52.144295>,  <42.100677, 44.852310, 52.134766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861904, 44.874611, 52.144295>,  <41.463951, 44.911777, 52.160175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861904, 44.874611, 52.144295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045195, 0.057769, 0.997307,
		-0.090372, -0.993997, 0.061673,
		0.994882, -0.092916, -0.039703,
		42.160370, 44.846737, 52.132385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559109, 44.426411, 52.731972>,  <41.463951, 44.911777, 52.160175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559109, 44.426411, 52.731972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913132, 44.601372, 52.668274>,  <42.125546, 44.706348, 52.630054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913132, 44.601372, 52.668274>,  <41.559109, 44.426411, 52.731972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913132, 44.601372, 52.668274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130016, 0.096188, 0.986835,
		0.446957, -0.894109, 0.028263,
		0.885057, 0.437399, -0.159240,
		42.178650, 44.732590, 52.620502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072144, 44.024097, 53.127079>,  <41.559109, 44.426411, 52.731972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072144, 44.024097, 53.127079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215237, 44.391487, 53.059620>,  <42.301090, 44.611919, 53.019146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215237, 44.391487, 53.059620>,  <42.072144, 44.024097, 53.127079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215237, 44.391487, 53.059620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127230, 0.130978, 0.983187,
		0.925118, -0.373172, -0.070002,
		0.357729, 0.918470, -0.168649,
		42.322556, 44.667027, 53.009026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664913, 44.141052, 53.572079>,  <42.072144, 44.024097, 53.127079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664913, 44.141052, 53.572079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582443, 44.520561, 53.476303>,  <42.532963, 44.748264, 53.418839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582443, 44.520561, 53.476303>,  <42.664913, 44.141052, 53.572079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582443, 44.520561, 53.476303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129882, 0.269068, 0.954323,
		0.969858, 0.165655, -0.178702,
		-0.206171, 0.948768, -0.239442,
		42.520592, 44.805191, 53.404472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170601, 44.565990, 53.818253>,  <42.664913, 44.141052, 53.572079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170601, 44.565990, 53.818253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844723, 44.794731, 53.779747>,  <42.649197, 44.931976, 53.756645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844723, 44.794731, 53.779747>,  <43.170601, 44.565990, 53.818253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844723, 44.794731, 53.779747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173004, 0.398119, 0.900872,
		0.553487, 0.717279, -0.423277,
		-0.814691, 0.571850, -0.096262,
		42.600315, 44.966286, 53.750870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376774, 45.191578, 54.099380>,  <43.170601, 44.565990, 53.818253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376774, 45.191578, 54.099380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979469, 45.234154, 54.081070>,  <42.741085, 45.259701, 54.070084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979469, 45.234154, 54.081070>,  <43.376774, 45.191578, 54.099380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979469, 45.234154, 54.081070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005490, 0.351384, 0.936215,
		0.115737, 0.930161, -0.348433,
		-0.993265, 0.106442, -0.045775,
		42.681488, 45.266087, 54.067337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189774, 45.893089, 54.408302>,  <43.376774, 45.191578, 54.099380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189774, 45.893089, 54.408302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871895, 45.652138, 54.438255>,  <42.681168, 45.507568, 54.456226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871895, 45.652138, 54.438255>,  <43.189774, 45.893089, 54.408302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.871895, 45.652138, 54.438255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144227, 0.307206, 0.940650,
		-0.589629, 0.736728, -0.331013,
		-0.794692, -0.602376, 0.074881,
		42.633488, 45.471424, 54.460720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700413, 46.335842, 54.734940>,  <43.189774, 45.893089, 54.408302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700413, 46.335842, 54.734940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592163, 45.956932, 54.803574>,  <42.527214, 45.729588, 54.844753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592163, 45.956932, 54.803574>,  <42.700413, 46.335842, 54.734940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592163, 45.956932, 54.803574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121544, 0.210427, 0.970024,
		-0.954982, 0.241655, -0.172082,
		-0.270622, -0.947271, 0.171582,
		42.510975, 45.672752, 54.855049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257679, 46.358055, 55.320637>,  <42.700413, 46.335842, 54.734940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257679, 46.358055, 55.320637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314003, 45.963486, 55.286819>,  <42.347797, 45.726746, 55.266529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314003, 45.963486, 55.286819>,  <42.257679, 46.358055, 55.320637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314003, 45.963486, 55.286819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134284, -0.103637, 0.985508,
		-0.980887, -0.127420, -0.147054,
		0.140814, -0.986419, -0.084546,
		42.356247, 45.667561, 55.261456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613377, 45.965572, 55.566135>,  <42.257679, 46.358055, 55.320637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613377, 45.965572, 55.566135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926346, 45.717682, 55.590652>,  <42.114128, 45.568947, 55.605362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926346, 45.717682, 55.590652>,  <41.613377, 45.965572, 55.566135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926346, 45.717682, 55.590652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070696, 0.009388, 0.997454,
		-0.618720, -0.784765, -0.036466,
		0.782424, -0.619723, 0.061288,
		42.161072, 45.531765, 55.609039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.099316, 42.557156, 56.228664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.020546, 42.933800, 56.119415>,  <46.973286, 43.159786, 56.053867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.020546, 42.933800, 56.119415>,  <47.099316, 42.557156, 56.228664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.020546, 42.933800, 56.119415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000128, -0.278549, -0.960422,
		-0.980419, -0.189164, 0.054733,
		-0.196923, 0.941609, -0.273119,
		46.961468, 43.216282, 56.037479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441940, 42.562840, 55.842808>,  <47.099316, 42.557156, 56.228664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441940, 42.562840, 55.842808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.646049, 42.893646, 55.748436>,  <46.768517, 43.092129, 55.691811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.646049, 42.893646, 55.748436>,  <46.441940, 42.562840, 55.842808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.646049, 42.893646, 55.748436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024224, -0.288049, -0.957310,
		-0.859669, 0.482778, -0.167018,
		0.510277, 0.827015, -0.235932,
		46.799133, 43.141750, 55.677658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.185448, 42.736649, 55.229210>,  <46.441940, 42.562840, 55.842808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.185448, 42.736649, 55.229210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.501587, 42.981239, 55.244373>,  <46.691273, 43.127995, 55.253471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.501587, 42.981239, 55.244373>,  <46.185448, 42.736649, 55.229210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501587, 42.981239, 55.244373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122829, -0.097525, -0.987624,
		-0.600213, 0.785228, -0.152186,
		0.790353, 0.611478, 0.037913,
		46.738693, 43.164684, 55.255749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948917, 43.265934, 54.875923>,  <46.185448, 42.736649, 55.229210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948917, 43.265934, 54.875923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.348396, 43.259415, 54.856621>,  <46.588085, 43.255505, 54.845039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.348396, 43.259415, 54.856621>,  <45.948917, 43.265934, 54.875923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.348396, 43.259415, 54.856621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048790, -0.033850, -0.998235,
		0.014633, 0.999294, -0.034601,
		0.998702, -0.016296, -0.048261,
		46.648006, 43.254524, 54.842144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174477, 43.678761, 54.280838>,  <45.948917, 43.265934, 54.875923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174477, 43.678761, 54.280838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.485191, 43.443138, 54.369938>,  <46.671619, 43.301765, 54.423397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.485191, 43.443138, 54.369938>,  <46.174477, 43.678761, 54.280838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.485191, 43.443138, 54.369938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152908, -0.166699, -0.974079,
		0.610917, 0.790712, -0.039419,
		0.776788, -0.589054, 0.222745,
		46.718227, 43.266422, 54.436760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.648151, 43.889469, 53.771378>,  <46.174477, 43.678761, 54.280838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.648151, 43.889469, 53.771378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.775505, 43.533836, 53.902935>,  <46.851917, 43.320457, 53.981869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.775505, 43.533836, 53.902935>,  <46.648151, 43.889469, 53.771378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.775505, 43.533836, 53.902935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162410, -0.290660, -0.942942,
		0.933946, 0.353633, 0.051853,
		0.318384, -0.889078, 0.328894,
		46.871021, 43.267113, 54.001602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.326481, 43.787888, 53.419514>,  <46.648151, 43.889469, 53.771378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.326481, 43.787888, 53.419514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.226074, 43.422066, 53.546371>,  <47.165833, 43.202572, 53.622486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.226074, 43.422066, 53.546371>,  <47.326481, 43.787888, 53.419514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.226074, 43.422066, 53.546371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373459, -0.393769, -0.839925,
		0.893040, -0.092391, 0.440389,
		-0.251013, -0.914554, 0.317148,
		47.150772, 43.147701, 53.641518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.924629, 43.397106, 53.371754>,  <47.326481, 43.787888, 53.419514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.924629, 43.397106, 53.371754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.627411, 43.129410, 53.371506>,  <47.449081, 42.968792, 53.371357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.627411, 43.129410, 53.371506>,  <47.924629, 43.397106, 53.371754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.627411, 43.129410, 53.371506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399772, -0.443121, -0.802388,
		0.536718, -0.596456, 0.596803,
		-0.743045, -0.669241, -0.000615,
		47.404499, 42.928638, 53.371323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.226517, 42.791164, 53.141548>,  <47.924629, 43.397106, 53.371754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.226517, 42.791164, 53.141548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.834579, 42.720856, 53.103588>,  <47.599415, 42.678673, 53.080811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.834579, 42.720856, 53.103588>,  <48.226517, 42.791164, 53.141548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.834579, 42.720856, 53.103588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159440, -0.401974, -0.901663,
		0.120337, -0.898622, 0.421898,
		-0.979846, -0.175770, -0.094904,
		47.540627, 42.668125, 53.075115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.121284, 42.026588, 52.739334>,  <48.226517, 42.791164, 53.141548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.121284, 42.026588, 52.739334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.780983, 42.230652, 52.688812>,  <47.576801, 42.353092, 52.658497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.780983, 42.230652, 52.688812>,  <48.121284, 42.026588, 52.739334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.780983, 42.230652, 52.688812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068040, -0.345219, -0.936053,
		-0.521143, -0.787756, 0.328408,
		-0.850753, 0.510162, -0.126309,
		47.525757, 42.383701, 52.650921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.649574, 41.532837, 52.402096>,  <48.121284, 42.026588, 52.739334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.649574, 41.532837, 52.402096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.499481, 41.899879, 52.349640>,  <47.409424, 42.120106, 52.318165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.499481, 41.899879, 52.349640>,  <47.649574, 41.532837, 52.402096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.499481, 41.899879, 52.349640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236684, -0.231636, -0.943571,
		-0.896204, -0.323019, 0.304100,
		-0.375232, 0.917608, -0.131139,
		47.386913, 42.175163, 52.310299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.951988, 41.469391, 52.148651>,  <47.649574, 41.532837, 52.402096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.951988, 41.469391, 52.148651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.093758, 41.830002, 52.049351>,  <47.178818, 42.046368, 51.989769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.093758, 41.830002, 52.049351>,  <46.951988, 41.469391, 52.148651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.093758, 41.830002, 52.049351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120193, -0.219360, -0.968212,
		-0.927330, 0.372992, 0.030612,
		0.354420, 0.901531, -0.248250,
		47.200085, 42.100460, 51.974876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499760, 41.699841, 51.673313>,  <46.951988, 41.469391, 52.148651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499760, 41.699841, 51.673313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.821877, 41.928246, 51.609505>,  <47.015148, 42.065289, 51.571220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.821877, 41.928246, 51.609505>,  <46.499760, 41.699841, 51.673313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.821877, 41.928246, 51.609505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070511, -0.174905, -0.982057,
		-0.588671, 0.802091, -0.100586,
		0.805292, 0.571016, -0.159518,
		47.063465, 42.099552, 51.561649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.290878, 42.193214, 51.114258>,  <46.499760, 41.699841, 51.673313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.290878, 42.193214, 51.114258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.690559, 42.207451, 51.106995>,  <46.930367, 42.215992, 51.102634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.690559, 42.207451, 51.106995>,  <46.290878, 42.193214, 51.114258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.690559, 42.207451, 51.106995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008245, -0.261095, -0.965278,
		-0.039097, 0.964657, -0.260593,
		0.999201, 0.035591, -0.018161,
		46.990318, 42.218128, 51.101547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654556, 42.477669, 50.799919>,  <46.290878, 42.193214, 51.114258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654556, 42.477669, 50.799919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.364265, 42.203911, 50.827972>,  <45.190090, 42.039654, 50.844807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.364265, 42.203911, 50.827972>,  <45.654556, 42.477669, 50.799919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364265, 42.203911, 50.827972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204698, 0.312130, 0.927725,
		-0.656825, 0.658918, -0.366616,
		-0.725727, -0.684399, 0.070135,
		45.146549, 41.998592, 50.849014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068386, 42.827255, 51.097580>,  <45.654556, 42.477669, 50.799919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068386, 42.827255, 51.097580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.948589, 42.450920, 51.161003>,  <44.876713, 42.225121, 51.199055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.948589, 42.450920, 51.161003>,  <45.068386, 42.827255, 51.097580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948589, 42.450920, 51.161003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443158, 0.284338, 0.850155,
		-0.844937, 0.184347, -0.502094,
		-0.299487, -0.940834, 0.158553,
		44.858742, 42.168671, 51.208569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363041, 42.808788, 51.363365>,  <45.068386, 42.827255, 51.097580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363041, 42.808788, 51.363365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.494099, 42.451019, 51.485123>,  <44.572735, 42.236359, 51.558178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.494099, 42.451019, 51.485123>,  <44.363041, 42.808788, 51.363365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494099, 42.451019, 51.485123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396517, 0.162254, 0.903575,
		-0.857568, -0.416749, -0.301493,
		0.327645, -0.894424, 0.304392,
		44.592392, 42.182693, 51.576439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787365, 42.520679, 51.789295>,  <44.363041, 42.808788, 51.363365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787365, 42.520679, 51.789295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.126171, 42.330421, 51.884224>,  <44.329456, 42.216267, 51.941181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.126171, 42.330421, 51.884224>,  <43.787365, 42.520679, 51.789295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126171, 42.330421, 51.884224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198908, 0.130414, 0.971302,
		-0.492944, -0.869916, 0.015854,
		0.847019, -0.475644, 0.237320,
		44.380276, 42.187729, 51.955421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546597, 42.102299, 52.214584>,  <43.787365, 42.520679, 51.789295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546597, 42.102299, 52.214584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.936371, 42.105865, 52.304375>,  <44.170235, 42.108006, 52.358250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.936371, 42.105865, 52.304375>,  <43.546597, 42.102299, 52.214584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936371, 42.105865, 52.304375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223539, -0.060799, 0.972797,
		0.022325, -0.998110, -0.057251,
		0.974440, 0.008920, 0.224474,
		44.228703, 42.108540, 52.371716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625416, 41.579670, 52.855938>,  <43.546597, 42.102299, 52.214584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625416, 41.579670, 52.855938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.936207, 41.830986, 52.840164>,  <44.122681, 41.981773, 52.830700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.936207, 41.830986, 52.840164>,  <43.625416, 41.579670, 52.855938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936207, 41.830986, 52.840164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007894, 0.052910, 0.998568,
		0.629475, -0.776180, 0.036151,
		0.776981, 0.628288, -0.039432,
		44.169300, 42.019474, 52.828335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949478, 41.318333, 53.305752>,  <43.625416, 41.579670, 52.855938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949478, 41.318333, 53.305752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.073833, 41.696030, 53.262398>,  <44.148445, 41.922649, 53.236385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.073833, 41.696030, 53.262398>,  <43.949478, 41.318333, 53.305752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073833, 41.696030, 53.262398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029578, 0.104370, 0.994099,
		0.949987, -0.312257, 0.004518,
		0.310886, 0.944247, -0.108386,
		44.167099, 41.979305, 53.229881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373020, 41.401852, 53.806492>,  <43.949478, 41.318333, 53.305752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373020, 41.401852, 53.806492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.302658, 41.785416, 53.717457>,  <44.260441, 42.015556, 53.664036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.302658, 41.785416, 53.717457>,  <44.373020, 41.401852, 53.806492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302658, 41.785416, 53.717457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036578, 0.232322, 0.971951,
		0.983728, 0.162828, -0.075941,
		-0.175904, 0.958913, -0.222586,
		44.249886, 42.073090, 53.650681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687653, 41.781471, 54.285122>,  <44.373020, 41.401852, 53.806492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687653, 41.781471, 54.285122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.454536, 42.077980, 54.151932>,  <44.314667, 42.255886, 54.072018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.454536, 42.077980, 54.151932>,  <44.687653, 41.781471, 54.285122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454536, 42.077980, 54.151932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003343, 0.411938, 0.911206,
		0.812618, 0.529927, -0.242550,
		-0.582788, 0.741273, -0.332977,
		44.279701, 42.300362, 54.052040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010517, 42.379730, 54.479633>,  <44.687653, 41.781471, 54.285122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010517, 42.379730, 54.479633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.621490, 42.459267, 54.431355>,  <44.388073, 42.506989, 54.402390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.621490, 42.459267, 54.431355>,  <45.010517, 42.379730, 54.479633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621490, 42.459267, 54.431355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036636, 0.381455, 0.923661,
		0.229705, 0.902747, -0.363707,
		-0.972570, 0.198845, -0.120695,
		44.329720, 42.518921, 54.395145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901081, 43.007187, 54.640942>,  <45.010517, 42.379730, 54.479633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901081, 43.007187, 54.640942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.537041, 42.846260, 54.680660>,  <44.318615, 42.749706, 54.704491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.537041, 42.846260, 54.680660>,  <44.901081, 43.007187, 54.640942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537041, 42.846260, 54.680660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127195, 0.499264, 0.857063,
		-0.394383, 0.767384, -0.505553,
		-0.910101, -0.402315, 0.099294,
		44.264011, 42.725567, 54.710449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381443, 43.569187, 54.885876>,  <44.901081, 43.007187, 54.640942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381443, 43.569187, 54.885876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.243683, 43.206253, 54.982323>,  <44.161026, 42.988495, 55.040192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.243683, 43.206253, 54.982323>,  <44.381443, 43.569187, 54.885876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243683, 43.206253, 54.982323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052122, 0.274915, 0.960055,
		-0.937375, 0.318074, -0.141972,
		-0.344399, -0.907332, 0.241120,
		44.140362, 42.934055, 55.054657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011166, 43.727962, 55.467178>,  <44.381443, 43.569187, 54.885876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011166, 43.727962, 55.467178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.971405, 43.330093, 55.478092>,  <43.947548, 43.091373, 55.484642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.971405, 43.330093, 55.478092>,  <44.011166, 43.727962, 55.467178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.971405, 43.330093, 55.478092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058400, 0.033209, 0.997741,
		-0.993333, 0.097580, -0.061390,
		-0.099399, -0.994673, 0.027289,
		43.941586, 43.031693, 55.486279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326241, 43.489723, 55.672779>,  <44.011166, 43.727962, 55.467178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326241, 43.489723, 55.672779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.607727, 43.223549, 55.772362>,  <43.776619, 43.063843, 55.832111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.607727, 43.223549, 55.772362>,  <43.326241, 43.489723, 55.672779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607727, 43.223549, 55.772362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181589, 0.170312, 0.968514,
		-0.686888, -0.726763, -0.000986,
		0.703712, -0.665440, 0.248957,
		43.818840, 43.023918, 55.847050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743031, 42.956490, 55.738758>,  <43.326241, 43.489723, 55.672779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743031, 42.956490, 55.738758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.348568, 42.891792, 55.753342>,  <42.111889, 42.852974, 55.762093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.348568, 42.891792, 55.753342>,  <42.743031, 42.956490, 55.738758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348568, 42.891792, 55.753342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031469, -0.033279, -0.998951,
		0.162786, -0.986272, 0.027728,
		-0.986159, -0.161743, 0.036454,
		42.052719, 42.843269, 55.764278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594376, 42.295589, 55.300949>,  <42.743031, 42.956490, 55.738758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594376, 42.295589, 55.300949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.254539, 42.503319, 55.337818>,  <42.050636, 42.627956, 55.359940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.254539, 42.503319, 55.337818>,  <42.594376, 42.295589, 55.300949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254539, 42.503319, 55.337818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190245, -0.138742, -0.971884,
		-0.491931, -0.843242, 0.216673,
		-0.849595, 0.519320, 0.092170,
		41.999660, 42.659115, 55.365471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141537, 41.931335, 54.908741>,  <42.594376, 42.295589, 55.300949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141537, 41.931335, 54.908741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.959549, 42.286507, 54.935814>,  <41.850357, 42.499611, 54.952057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.959549, 42.286507, 54.935814>,  <42.141537, 41.931335, 54.908741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959549, 42.286507, 54.935814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338488, -0.102140, -0.935411,
		-0.823667, -0.448493, 0.347025,
		-0.454970, 0.887931, 0.067680,
		41.823059, 42.552887, 54.956120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364441, 41.889881, 54.692600>,  <42.141537, 41.931335, 54.908741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364441, 41.889881, 54.692600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.487968, 42.266525, 54.638939>,  <41.562084, 42.492512, 54.606743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.487968, 42.266525, 54.638939>,  <41.364441, 41.889881, 54.692600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487968, 42.266525, 54.638939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295201, -0.039195, -0.954631,
		-0.904149, 0.334414, 0.265860,
		0.308821, 0.941611, -0.134157,
		41.580616, 42.549007, 54.598690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801727, 42.204578, 54.313667>,  <41.364441, 41.889881, 54.692600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801727, 42.204578, 54.313667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.131737, 42.421303, 54.249451>,  <41.329742, 42.551338, 54.210922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.131737, 42.421303, 54.249451>,  <40.801727, 42.204578, 54.313667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131737, 42.421303, 54.249451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228557, 0.060116, -0.971673,
		-0.516811, 0.838348, 0.173431,
		0.825026, 0.541811, -0.160541,
		41.379246, 42.583847, 54.201290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569691, 42.659622, 53.836445>,  <40.801727, 42.204578, 54.313667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569691, 42.659622, 53.836445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.963966, 42.725410, 53.821693>,  <41.200531, 42.764881, 53.812843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.963966, 42.725410, 53.821693>,  <40.569691, 42.659622, 53.836445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963966, 42.725410, 53.821693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047102, 0.058705, -0.997164,
		-0.161837, 0.984634, 0.065612,
		0.985693, 0.164468, -0.036877,
		41.259674, 42.774750, 53.810631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628738, 43.189724, 53.435844>,  <40.569691, 42.659622, 53.836445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628738, 43.189724, 53.435844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.993195, 43.027626, 53.405926>,  <41.211868, 42.930367, 53.387974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.993195, 43.027626, 53.405926>,  <40.628738, 43.189724, 53.435844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993195, 43.027626, 53.405926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001776, 0.185371, -0.982667,
		0.412082, 0.895219, 0.169620,
		0.911145, -0.405241, -0.074798,
		41.266537, 42.906055, 53.383488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963055, 43.632294, 53.021954>,  <40.628738, 43.189724, 53.435844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963055, 43.632294, 53.021954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.167530, 43.289101, 53.001736>,  <41.290215, 43.083183, 52.989605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.167530, 43.289101, 53.001736>,  <40.963055, 43.632294, 53.021954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167530, 43.289101, 53.001736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079172, 0.105571, -0.991255,
		0.855816, 0.502713, 0.121895,
		0.511186, -0.857982, -0.050549,
		41.320885, 43.031708, 52.986572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431805, 43.759113, 52.474968>,  <40.963055, 43.632294, 53.021954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431805, 43.759113, 52.474968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.444260, 43.360703, 52.508331>,  <41.451733, 43.121655, 52.528351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.444260, 43.360703, 52.508331>,  <41.431805, 43.759113, 52.474968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444260, 43.360703, 52.508331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002303, -0.083376, -0.996516,
		0.999512, 0.031225, -0.000303,
		0.031141, -0.996029, 0.083407,
		41.453602, 43.061893, 52.533352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942680, 43.498760, 52.035480>,  <41.431805, 43.759113, 52.474968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942680, 43.498760, 52.035480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.704277, 43.181763, 52.087215>,  <41.561234, 42.991566, 52.118256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.704277, 43.181763, 52.087215>,  <41.942680, 43.498760, 52.035480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704277, 43.181763, 52.087215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066663, -0.209353, -0.975565,
		0.800207, -0.572822, 0.177606,
		-0.596008, -0.792494, 0.129340,
		41.525475, 42.944016, 52.126019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266582, 42.989880, 51.735920>,  <41.942680, 43.498760, 52.035480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266582, 42.989880, 51.735920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.892967, 42.848122, 51.753735>,  <41.668800, 42.763069, 51.764423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.892967, 42.848122, 51.753735>,  <42.266582, 42.989880, 51.735920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892967, 42.848122, 51.753735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028915, -0.199299, -0.979512,
		0.356006, -0.913612, 0.196400,
		-0.934036, -0.354391, 0.044535,
		41.612755, 42.741806, 51.767094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307430, 42.341034, 51.437984>,  <42.266582, 42.989880, 51.735920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307430, 42.341034, 51.437984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.925507, 42.458626, 51.420456>,  <41.696354, 42.529182, 51.409939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.925507, 42.458626, 51.420456>,  <42.307430, 42.341034, 51.437984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925507, 42.458626, 51.420456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057785, -0.328218, -0.942833,
		-0.291559, -0.897690, 0.330372,
		-0.954806, 0.293982, -0.043822,
		41.639065, 42.546822, 51.407310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925804, 41.783707, 51.293636>,  <42.307430, 42.341034, 51.437984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925804, 41.783707, 51.293636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.692020, 42.089874, 51.185898>,  <41.551750, 42.273575, 51.121254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.692020, 42.089874, 51.185898>,  <41.925804, 41.783707, 51.293636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692020, 42.089874, 51.185898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151223, -0.428875, -0.890617,
		-0.797208, -0.479797, 0.366408,
		-0.584458, 0.765416, -0.269346,
		41.516682, 42.319500, 51.105095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327457, 41.514545, 50.902298>,  <41.925804, 41.783707, 51.293636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327457, 41.514545, 50.902298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.319530, 41.899879, 50.795273>,  <41.314774, 42.131081, 50.731056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.319530, 41.899879, 50.795273>,  <41.327457, 41.514545, 50.902298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319530, 41.899879, 50.795273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214224, -0.265493, -0.940012,
		-0.976583, 0.038688, 0.211632,
		-0.019820, 0.963336, -0.267564,
		41.313583, 42.188881, 50.715004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.452297, 45.326069, 56.076069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.850918, 45.325684, 56.042892>,  <42.090092, 45.325451, 56.022987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.850918, 45.325684, 56.042892>,  <41.452297, 45.326069, 56.076069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850918, 45.325684, 56.042892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081813, -0.153545, 0.984749,
		-0.013685, -0.988141, -0.152937,
		0.996554, -0.000964, -0.082944,
		42.149883, 45.325394, 56.018009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703918, 44.717670, 56.451862>,  <41.452297, 45.326069, 56.076069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703918, 44.717670, 56.451862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.991936, 44.993858, 56.424156>,  <42.164745, 45.159569, 56.407532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.991936, 44.993858, 56.424156>,  <41.703918, 44.717670, 56.451862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991936, 44.993858, 56.424156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168024, -0.076632, 0.982800,
		0.673283, -0.719293, -0.171193,
		0.720040, 0.690467, -0.069264,
		42.207947, 45.201000, 56.403378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195084, 44.535458, 56.905819>,  <41.703918, 44.717670, 56.451862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195084, 44.535458, 56.905819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.283611, 44.918900, 56.834160>,  <42.336727, 45.148964, 56.791164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.283611, 44.918900, 56.834160>,  <42.195084, 44.535458, 56.905819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283611, 44.918900, 56.834160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009493, 0.181576, 0.983331,
		0.975156, -0.219327, 0.031086,
		0.221315, 0.958606, -0.179147,
		42.350006, 45.206482, 56.780415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814484, 44.728405, 57.287937>,  <42.195084, 44.535458, 56.905819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814484, 44.728405, 57.287937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.579430, 45.045311, 57.222214>,  <42.438396, 45.235455, 57.182781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.579430, 45.045311, 57.222214>,  <42.814484, 44.728405, 57.287937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579430, 45.045311, 57.222214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136316, 0.103225, 0.985273,
		0.797558, 0.601382, 0.047340,
		-0.587638, 0.792266, -0.164306,
		42.403137, 45.282990, 57.172920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020706, 45.191521, 57.782131>,  <42.814484, 44.728405, 57.287937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020706, 45.191521, 57.782131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.676682, 45.354080, 57.658760>,  <42.470264, 45.451614, 57.584740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.676682, 45.354080, 57.658760>,  <43.020706, 45.191521, 57.782131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676682, 45.354080, 57.658760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191216, 0.303697, 0.933383,
		0.472993, 0.861748, -0.183490,
		-0.860066, 0.406398, -0.308426,
		42.418663, 45.475998, 57.566231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033127, 45.826412, 58.050949>,  <43.020706, 45.191521, 57.782131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033127, 45.826412, 58.050949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.648407, 45.736282, 57.988770>,  <42.417576, 45.682205, 57.951462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.648407, 45.736282, 57.988770>,  <43.033127, 45.826412, 58.050949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648407, 45.736282, 57.988770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205845, 0.220956, 0.953313,
		-0.180458, 0.948898, -0.258899,
		-0.961802, -0.225326, -0.155452,
		42.359867, 45.668686, 57.942135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696110, 46.363747, 58.388325>,  <43.033127, 45.826412, 58.050949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.696110, 46.363747, 58.388325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.420341, 46.082016, 58.320652>,  <42.254883, 45.912975, 58.280048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.420341, 46.082016, 58.320652>,  <42.696110, 46.363747, 58.388325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420341, 46.082016, 58.320652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481125, 0.270655, 0.833825,
		-0.541500, 0.656250, -0.525466,
		-0.689418, -0.704331, -0.169179,
		42.213516, 45.870716, 58.269897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100578, 46.613976, 58.656471>,  <42.696110, 46.363747, 58.388325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100578, 46.613976, 58.656471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.982834, 46.232277, 58.635445>,  <41.912186, 46.003258, 58.622829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.982834, 46.232277, 58.635445>,  <42.100578, 46.613976, 58.656471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982834, 46.232277, 58.635445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590759, 0.138448, 0.794881,
		-0.751235, 0.265037, -0.604484,
		-0.294363, -0.954247, -0.052566,
		41.894524, 45.946003, 58.619675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407600, 46.600388, 58.830162>,  <42.100578, 46.613976, 58.656471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407600, 46.600388, 58.830162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.508217, 46.218971, 58.896477>,  <41.568588, 45.990120, 58.936268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.508217, 46.218971, 58.896477>,  <41.407600, 46.600388, 58.830162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508217, 46.218971, 58.896477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512622, 0.014037, 0.858499,
		-0.820942, -0.300936, -0.485275,
		0.251541, -0.953541, 0.165790,
		41.583679, 45.932907, 58.946213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887909, 46.224228, 59.143738>,  <41.407600, 46.600388, 58.830162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887909, 46.224228, 59.143738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.210941, 46.006577, 59.234718>,  <41.404762, 45.875984, 59.289307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.210941, 46.006577, 59.234718>,  <40.887909, 46.224228, 59.143738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210941, 46.006577, 59.234718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376925, -0.179594, 0.908666,
		-0.453588, -0.819551, -0.350134,
		0.807580, -0.544134, 0.227447,
		41.453217, 45.843338, 59.302952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644798, 45.661034, 59.554230>,  <40.887909, 46.224228, 59.143738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644798, 45.661034, 59.554230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.037025, 45.675972, 59.631264>,  <41.272362, 45.684937, 59.677486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.037025, 45.675972, 59.631264>,  <40.644798, 45.661034, 59.554230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037025, 45.675972, 59.631264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189807, -0.067496, 0.979499,
		0.049581, -0.997020, -0.059095,
		0.980568, 0.037347, 0.192588,
		41.331196, 45.687176, 59.689041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706444, 45.105900, 60.057426>,  <40.644798, 45.661034, 59.554230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706444, 45.105900, 60.057426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.003082, 45.373795, 60.072868>,  <41.181065, 45.534531, 60.082134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.003082, 45.373795, 60.072868>,  <40.706444, 45.105900, 60.057426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003082, 45.373795, 60.072868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142211, 0.100716, 0.984699,
		0.655598, -0.735740, 0.169934,
		0.741598, 0.669734, 0.038601,
		41.225563, 45.574715, 60.084450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315079, 44.802696, 60.455338>,  <40.706444, 45.105900, 60.057426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315079, 44.802696, 60.455338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.282948, 45.201401, 60.456383>,  <41.263668, 45.440624, 60.457012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.282948, 45.201401, 60.456383>,  <41.315079, 44.802696, 60.455338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282948, 45.201401, 60.456383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074711, -0.008637, 0.997168,
		0.993965, 0.079907, 0.075163,
		-0.080330, 0.996765, 0.002615,
		41.258850, 45.500431, 60.457169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566395, 45.123707, 61.001278>,  <41.315079, 44.802696, 60.455338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566395, 45.123707, 61.001278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.295265, 45.404327, 60.913300>,  <41.132587, 45.572701, 60.860512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.295265, 45.404327, 60.913300>,  <41.566395, 45.123707, 61.001278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295265, 45.404327, 60.913300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169306, 0.142169, 0.975256,
		0.715462, 0.698292, 0.022411,
		-0.677827, 0.701552, -0.219942,
		41.091915, 45.614792, 60.847317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658089, 44.318489, 60.984512>,  <41.566395, 45.123707, 61.001278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658089, 44.318489, 60.984512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.922226, 44.026314, 61.054264>,  <42.080708, 43.851009, 61.096115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.922226, 44.026314, 61.054264>,  <41.658089, 44.318489, 60.984512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922226, 44.026314, 61.054264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078157, -0.164095, -0.983343,
		0.746887, 0.662971, -0.051270,
		0.660341, -0.730440, 0.174376,
		42.120327, 43.807182, 61.106575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220387, 44.421982, 60.558754>,  <41.658089, 44.318489, 60.984512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220387, 44.421982, 60.558754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.260139, 44.034264, 60.648712>,  <42.283993, 43.801632, 60.702686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.260139, 44.034264, 60.648712>,  <42.220387, 44.421982, 60.558754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260139, 44.034264, 60.648712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100481, -0.215087, -0.971412,
		0.989963, 0.119142, 0.076020,
		0.099385, -0.969300, 0.224899,
		42.289955, 43.743473, 60.716183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666130, 44.172997, 60.094990>,  <42.220387, 44.421982, 60.558754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666130, 44.172997, 60.094990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.538792, 43.822449, 60.239563>,  <42.462387, 43.612122, 60.326305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.538792, 43.822449, 60.239563>,  <42.666130, 44.172997, 60.094990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538792, 43.822449, 60.239563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070516, -0.358320, -0.930932,
		0.945347, -0.321849, 0.052273,
		-0.318350, -0.876368, 0.361432,
		42.443287, 43.559540, 60.347992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979321, 43.651363, 59.764069>,  <42.666130, 44.172997, 60.094990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979321, 43.651363, 59.764069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.665955, 43.451256, 59.911575>,  <42.477936, 43.331192, 60.000080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.665955, 43.451256, 59.911575>,  <42.979321, 43.651363, 59.764069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665955, 43.451256, 59.911575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168165, -0.400585, -0.900695,
		0.598312, -0.767634, 0.229697,
		-0.783418, -0.500270, 0.368764,
		42.430931, 43.301174, 60.022205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113972, 42.976761, 59.660889>,  <42.979321, 43.651363, 59.764069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113972, 42.976761, 59.660889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.715649, 43.010056, 59.676105>,  <42.476654, 43.030033, 59.685238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.715649, 43.010056, 59.676105>,  <43.113972, 42.976761, 59.660889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715649, 43.010056, 59.676105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078023, -0.554839, -0.828291,
		-0.047836, -0.827783, 0.559005,
		-0.995803, 0.083237, 0.038045,
		42.416908, 43.035027, 59.687519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003017, 42.501743, 59.264866>,  <43.113972, 42.976761, 59.660889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003017, 42.501743, 59.264866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.647881, 42.682625, 59.298927>,  <42.434799, 42.791153, 59.319363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.647881, 42.682625, 59.298927>,  <43.003017, 42.501743, 59.264866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647881, 42.682625, 59.298927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260414, -0.341211, -0.903194,
		-0.379383, -0.824062, 0.420703,
		-0.887836, 0.452213, 0.085147,
		42.381531, 42.818287, 59.324471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342888, 42.035751, 59.160130>,  <43.003017, 42.501743, 59.264866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342888, 42.035751, 59.160130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.247437, 42.414238, 59.072739>,  <42.190166, 42.641331, 59.020306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.247437, 42.414238, 59.072739>,  <42.342888, 42.035751, 59.160130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247437, 42.414238, 59.072739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176066, -0.263404, -0.948482,
		-0.955018, -0.187865, 0.229452,
		-0.238625, 0.946216, -0.218478,
		42.175850, 42.698101, 59.007195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849403, 41.960846, 58.671894>,  <42.342888, 42.035751, 59.160130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849403, 41.960846, 58.671894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.943180, 42.346581, 58.622768>,  <41.999447, 42.578022, 58.593292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.943180, 42.346581, 58.622768>,  <41.849403, 41.960846, 58.671894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943180, 42.346581, 58.622768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224340, -0.069259, -0.972047,
		-0.945890, 0.255444, 0.200102,
		0.234445, 0.964340, -0.122817,
		42.013512, 42.635883, 58.585922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260590, 42.245377, 58.226135>,  <41.849403, 41.960846, 58.671894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260590, 42.245377, 58.226135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.565407, 42.500992, 58.184349>,  <41.748299, 42.654362, 58.159279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.565407, 42.500992, 58.184349>,  <41.260590, 42.245377, 58.226135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565407, 42.500992, 58.184349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252192, 0.144320, -0.956855,
		-0.596394, 0.755512, 0.271140,
		0.762046, 0.639041, -0.104462,
		41.794022, 42.692703, 58.153011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968994, 42.928375, 58.002956>,  <41.260590, 42.245377, 58.226135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968994, 42.928375, 58.002956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.354904, 42.930122, 57.897736>,  <41.586449, 42.931171, 57.834602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.354904, 42.930122, 57.897736>,  <40.968994, 42.928375, 58.002956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354904, 42.930122, 57.897736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246998, 0.359300, -0.899942,
		0.090587, 0.933212, 0.347721,
		0.964772, 0.004363, -0.263050,
		41.644337, 42.931431, 57.818821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967228, 43.455784, 57.441109>,  <40.968994, 42.928375, 58.002956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967228, 43.455784, 57.441109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.304863, 43.242615, 57.417374>,  <41.507442, 43.114716, 57.403133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.304863, 43.242615, 57.417374>,  <40.967228, 43.455784, 57.441109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304863, 43.242615, 57.417374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040843, 0.174233, -0.983857,
		0.534654, 0.828034, 0.168834,
		0.844084, -0.532918, -0.059335,
		41.558086, 43.082741, 57.399574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442783, 43.815819, 56.923710>,  <40.967228, 43.455784, 57.441109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442783, 43.815819, 56.923710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.565891, 43.436989, 56.960213>,  <41.639755, 43.209690, 56.982117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.565891, 43.436989, 56.960213>,  <41.442783, 43.815819, 56.923710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565891, 43.436989, 56.960213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070423, -0.072979, -0.994844,
		0.948851, 0.312610, 0.044235,
		0.307770, -0.947074, 0.091262,
		41.658222, 43.152866, 56.987591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010006, 43.833042, 56.499474>,  <41.442783, 43.815819, 56.923710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010006, 43.833042, 56.499474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.902550, 43.448776, 56.527641>,  <41.838078, 43.218216, 56.544544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.902550, 43.448776, 56.527641>,  <42.010006, 43.833042, 56.499474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902550, 43.448776, 56.527641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209664, -0.129674, -0.969137,
		0.940146, -0.245583, 0.236252,
		-0.268640, -0.960663, 0.070422,
		41.821957, 43.160576, 56.548767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573322, 43.441231, 56.266556>,  <42.010006, 43.833042, 56.499474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573322, 43.441231, 56.266556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.247200, 43.212997, 56.227142>,  <42.051525, 43.076057, 56.203495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.247200, 43.212997, 56.227142>,  <42.573322, 43.441231, 56.266556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247200, 43.212997, 56.227142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192391, -0.106442, -0.975528,
		0.546129, -0.814315, 0.196557,
		-0.815309, -0.570580, -0.098536,
		42.002605, 43.041824, 56.197582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162086, 43.242203, 56.478111>,  <42.573322, 43.441231, 56.266556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162086, 43.242203, 56.478111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.527382, 43.092842, 56.412918>,  <43.746559, 43.003223, 56.373802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.527382, 43.092842, 56.412918>,  <43.162086, 43.242203, 56.478111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527382, 43.092842, 56.412918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221566, 0.119469, 0.967799,
		-0.341911, -0.919943, 0.191837,
		0.913239, -0.373406, -0.162980,
		43.801353, 42.980820, 56.364025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202824, 42.687019, 56.897964>,  <43.162086, 43.242203, 56.478111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202824, 42.687019, 56.897964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.577080, 42.804077, 56.819031>,  <43.801632, 42.874310, 56.771671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.577080, 42.804077, 56.819031>,  <43.202824, 42.687019, 56.897964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577080, 42.804077, 56.819031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193856, 0.041137, 0.980167,
		0.294955, -0.955337, -0.018241,
		0.935640, 0.292641, -0.197331,
		43.857773, 42.891869, 56.759830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609730, 42.322765, 57.361298>,  <43.202824, 42.687019, 56.897964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609730, 42.322765, 57.361298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.834030, 42.632675, 57.244484>,  <43.968613, 42.818619, 57.174397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.834030, 42.632675, 57.244484>,  <43.609730, 42.322765, 57.361298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834030, 42.632675, 57.244484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192609, 0.220967, 0.956073,
		0.805267, -0.592371, -0.025320,
		0.560755, 0.774771, -0.292033,
		44.002258, 42.865105, 57.156876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241394, 42.282452, 57.774101>,  <43.609730, 42.322765, 57.361298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241394, 42.282452, 57.774101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.226128, 42.658875, 57.639671>,  <44.216969, 42.884727, 57.559013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.226128, 42.658875, 57.639671>,  <44.241394, 42.282452, 57.774101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226128, 42.658875, 57.639671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201519, 0.336661, 0.919810,
		0.978741, -0.032623, -0.202489,
		-0.038164, 0.941061, -0.336078,
		44.214680, 42.941193, 57.538849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.854774, 42.560276, 57.929287>,  <44.241394, 42.282452, 57.774101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.854774, 42.560276, 57.929287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.611153, 42.870544, 57.863098>,  <44.464977, 43.056705, 57.823383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.611153, 42.870544, 57.863098>,  <44.854774, 42.560276, 57.929287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611153, 42.870544, 57.863098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308300, 0.423766, 0.851689,
		0.730752, 0.467714, -0.497238,
		-0.609059, 0.775672, -0.165472,
		44.428436, 43.103245, 57.813457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288139, 43.130501, 58.070694>,  <44.854774, 42.560276, 57.929287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288139, 43.130501, 58.070694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.909195, 43.258568, 58.071579>,  <44.681828, 43.335407, 58.072109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.909195, 43.258568, 58.071579>,  <45.288139, 43.130501, 58.070694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909195, 43.258568, 58.071579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208215, 0.610812, 0.763908,
		0.243231, 0.724154, -0.645322,
		-0.947357, 0.320172, 0.002211,
		44.624989, 43.354618, 58.072243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318260, 43.917850, 58.137684>,  <45.288139, 43.130501, 58.070694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318260, 43.917850, 58.137684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.966167, 43.782616, 58.270882>,  <44.754913, 43.701473, 58.350800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.966167, 43.782616, 58.270882>,  <45.318260, 43.917850, 58.137684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966167, 43.782616, 58.270882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106005, 0.543896, 0.832430,
		-0.462550, 0.768032, -0.442916,
		-0.880233, -0.338089, 0.332994,
		44.702099, 43.681190, 58.370781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.609623, 44.610970, 58.269157>,  <45.318260, 43.917850, 58.137684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.609623, 44.610970, 58.269157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.000404, 44.602501, 58.354118>,  <46.234875, 44.597420, 58.405094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.000404, 44.602501, 58.354118>,  <45.609623, 44.610970, 58.269157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000404, 44.602501, 58.354118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200627, -0.248647, -0.947588,
		0.072872, 0.968363, -0.238670,
		0.976954, -0.021169, 0.212399,
		46.293491, 44.596149, 58.417839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.959690, 44.974213, 57.661121>,  <45.609623, 44.610970, 58.269157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.959690, 44.974213, 57.661121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.211006, 44.741737, 57.867992>,  <46.361794, 44.602253, 57.992115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.211006, 44.741737, 57.867992>,  <45.959690, 44.974213, 57.661121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211006, 44.741737, 57.867992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372025, -0.359394, -0.855823,
		0.683267, 0.730105, -0.009585,
		0.628286, -0.581190, 0.517180,
		46.399490, 44.567379, 58.023148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.452374, 45.168537, 57.296394>,  <45.959690, 44.974213, 57.661121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.452374, 45.168537, 57.296394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.527893, 44.819046, 57.475708>,  <46.573204, 44.609352, 57.583298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.527893, 44.819046, 57.475708>,  <46.452374, 45.168537, 57.296394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.527893, 44.819046, 57.475708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447597, -0.329755, -0.831215,
		0.874077, 0.357585, 0.328819,
		0.188800, -0.873725, 0.448285,
		46.584534, 44.556927, 57.610195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.046944, 45.001190, 56.952808>,  <46.452374, 45.168537, 57.296394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.046944, 45.001190, 56.952808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.909241, 44.661652, 57.113281>,  <46.826618, 44.457928, 57.209564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.909241, 44.661652, 57.113281>,  <47.046944, 45.001190, 56.952808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.909241, 44.661652, 57.113281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249252, -0.494592, -0.832618,
		0.905187, -0.186638, 0.381842,
		-0.344254, -0.848849, 0.401178,
		46.805965, 44.406998, 57.233635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.623878, 44.440975, 56.949745>,  <47.046944, 45.001190, 56.952808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.623878, 44.440975, 56.949745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.268013, 44.259354, 56.969032>,  <47.054493, 44.150379, 56.980602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.268013, 44.259354, 56.969032>,  <47.623878, 44.440975, 56.949745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.268013, 44.259354, 56.969032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132300, -0.357397, -0.924534,
		0.437023, -0.816149, 0.378037,
		-0.889667, -0.454057, 0.048214,
		47.001114, 44.123138, 56.983498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.835400, 43.687244, 56.935951>,  <47.623878, 44.440975, 56.949745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.835400, 43.687244, 56.935951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.453751, 43.711250, 56.818619>,  <47.224762, 43.725655, 56.748219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.453751, 43.711250, 56.818619>,  <47.835400, 43.687244, 56.935951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.453751, 43.711250, 56.818619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226565, -0.495767, -0.838381,
		-0.195741, -0.866379, 0.459426,
		-0.954125, 0.060016, -0.293334,
		47.167515, 43.729256, 56.730618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.676456, 43.059692, 56.601349>,  <47.835400, 43.687244, 56.935951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.676456, 43.059692, 56.601349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.385429, 43.300819, 56.470345>,  <47.210815, 43.445496, 56.391743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.385429, 43.300819, 56.470345>,  <47.676456, 43.059692, 56.601349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.385429, 43.300819, 56.470345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067328, -0.412350, -0.908534,
		-0.682729, -0.683066, 0.259424,
		-0.727563, 0.602817, -0.327513,
		47.167160, 43.481663, 56.372089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.376583, 47.852901, 60.006607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.061695, 47.637268, 59.886829>,  <43.872761, 47.507889, 59.814964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.061695, 47.637268, 59.886829>,  <44.376583, 47.852901, 60.006607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061695, 47.637268, 59.886829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178712, 0.265300, -0.947458,
		0.590205, -0.799374, -0.112509,
		-0.787223, -0.539088, -0.299440,
		43.825527, 47.475540, 59.796997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547565, 47.604706, 59.306385>,  <44.376583, 47.852901, 60.006607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547565, 47.604706, 59.306385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.150131, 47.575249, 59.340733>,  <43.911671, 47.557575, 59.361340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.150131, 47.575249, 59.340733>,  <44.547565, 47.604706, 59.306385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150131, 47.575249, 59.340733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106484, 0.352729, -0.929647,
		0.038173, -0.932823, -0.358307,
		-0.993581, -0.073642, 0.085866,
		43.852058, 47.553158, 59.366493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337902, 47.141342, 58.854191>,  <44.547565, 47.604706, 59.306385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337902, 47.141342, 58.854191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.993904, 47.339157, 58.904533>,  <43.787506, 47.457848, 58.934738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.993904, 47.339157, 58.904533>,  <44.337902, 47.141342, 58.854191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993904, 47.339157, 58.904533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067692, 0.133891, -0.988682,
		-0.505791, -0.858781, -0.081669,
		-0.859996, 0.494538, 0.125854,
		43.735905, 47.487518, 58.942291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786293, 46.852718, 58.394783>,  <44.337902, 47.141342, 58.854191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786293, 46.852718, 58.394783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.608795, 47.200401, 58.482025>,  <43.502296, 47.409012, 58.534370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.608795, 47.200401, 58.482025>,  <43.786293, 46.852718, 58.394783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608795, 47.200401, 58.482025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244859, 0.116517, -0.962532,
		-0.862055, -0.480519, 0.161130,
		-0.443741, 0.869210, 0.218103,
		43.475674, 47.461163, 58.547455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160854, 46.847836, 58.140324>,  <43.786293, 46.852718, 58.394783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160854, 46.847836, 58.140324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.237850, 47.239708, 58.162846>,  <43.284046, 47.474831, 58.176361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.237850, 47.239708, 58.162846>,  <43.160854, 46.847836, 58.140324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237850, 47.239708, 58.162846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184492, 0.092486, -0.978473,
		-0.963801, 0.177954, 0.198546,
		0.192486, 0.979683, 0.056307,
		43.295597, 47.533611, 58.179737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637074, 47.144806, 57.627712>,  <43.160854, 46.847836, 58.140324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637074, 47.144806, 57.627712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.903057, 47.432884, 57.706856>,  <43.062645, 47.605732, 57.754341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.903057, 47.432884, 57.706856>,  <42.637074, 47.144806, 57.627712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903057, 47.432884, 57.706856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026318, 0.242155, -0.969881,
		-0.746420, 0.650134, 0.142068,
		0.664955, 0.720199, 0.197860,
		43.102543, 47.648945, 57.766212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335682, 47.808334, 57.267860>,  <42.637074, 47.144806, 57.627712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335682, 47.808334, 57.267860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.729740, 47.851082, 57.321632>,  <42.966175, 47.876732, 57.353897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.729740, 47.851082, 57.321632>,  <42.335682, 47.808334, 57.267860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729740, 47.851082, 57.321632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098903, 0.286878, -0.952848,
		-0.140397, 0.951987, 0.272046,
		0.985143, 0.106871, 0.134432,
		43.025284, 47.883144, 57.361961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555008, 48.362251, 57.000187>,  <42.335682, 47.808334, 57.267860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555008, 48.362251, 57.000187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.910782, 48.179436, 57.002171>,  <43.124245, 48.069748, 57.003361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.910782, 48.179436, 57.002171>,  <42.555008, 48.362251, 57.000187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910782, 48.179436, 57.002171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155883, 0.293130, -0.943279,
		0.429663, 0.839756, 0.331964,
		0.889432, -0.457040, 0.004957,
		43.177612, 48.042324, 57.003658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013485, 48.921375, 56.640415>,  <42.555008, 48.362251, 57.000187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013485, 48.921375, 56.640415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.210480, 48.573296, 56.646244>,  <43.328678, 48.364449, 56.649742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.210480, 48.573296, 56.646244>,  <43.013485, 48.921375, 56.640415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210480, 48.573296, 56.646244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398821, 0.210769, -0.892479,
		0.773561, 0.445346, 0.450854,
		0.492488, -0.870197, 0.014571,
		43.358227, 48.312237, 56.650616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739796, 49.051258, 56.341583>,  <43.013485, 48.921375, 56.640415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739796, 49.051258, 56.341583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.689285, 48.656837, 56.298203>,  <43.658978, 48.420185, 56.272175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.689285, 48.656837, 56.298203>,  <43.739796, 49.051258, 56.341583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689285, 48.656837, 56.298203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443277, 0.041711, -0.895414,
		0.887445, -0.161146, 0.431825,
		-0.126281, -0.986049, -0.108448,
		43.651402, 48.361023, 56.265667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306919, 48.830441, 56.059189>,  <43.739796, 49.051258, 56.341583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306919, 48.830441, 56.059189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.070560, 48.523521, 55.959511>,  <43.928745, 48.339371, 55.899704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.070560, 48.523521, 55.959511>,  <44.306919, 48.830441, 56.059189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070560, 48.523521, 55.959511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457644, -0.064427, -0.886798,
		0.664380, -0.638051, 0.389217,
		-0.590898, -0.767294, -0.249197,
		43.893291, 48.293335, 55.884750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762260, 48.242664, 55.813873>,  <44.306919, 48.830441, 56.059189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762260, 48.242664, 55.813873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.402718, 48.197594, 55.644470>,  <44.186993, 48.170551, 55.542828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.402718, 48.197594, 55.644470>,  <44.762260, 48.242664, 55.813873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402718, 48.197594, 55.644470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432429, -0.384892, -0.815392,
		-0.071125, -0.916058, 0.394690,
		-0.898858, -0.112680, -0.423505,
		44.133060, 48.163788, 55.517418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242901, 47.681870, 55.870583>,  <44.762260, 48.242664, 55.813873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242901, 47.681870, 55.870583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.636452, 47.748039, 55.897781>,  <45.872581, 47.787743, 55.914101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.636452, 47.748039, 55.897781>,  <45.242901, 47.681870, 55.870583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.636452, 47.748039, 55.897781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035503, -0.191971, 0.980758,
		0.175297, -0.967358, -0.183003,
		0.983875, 0.165427, 0.067996,
		45.931614, 47.797668, 55.918179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460163, 47.148281, 56.364658>,  <45.242901, 47.681870, 55.870583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460163, 47.148281, 56.364658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.741135, 47.432983, 56.364792>,  <45.909718, 47.603806, 56.364872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.741135, 47.432983, 56.364792>,  <45.460163, 47.148281, 56.364658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741135, 47.432983, 56.364792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113158, -0.112141, 0.987228,
		0.702703, -0.693418, -0.159311,
		0.702427, 0.711756, 0.000336,
		45.951862, 47.646511, 56.364891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012360, 46.834675, 56.821434>,  <45.460163, 47.148281, 56.364658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012360, 46.834675, 56.821434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.065201, 47.231163, 56.819443>,  <46.096905, 47.469055, 56.818249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.065201, 47.231163, 56.819443>,  <46.012360, 46.834675, 56.821434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065201, 47.231163, 56.819443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030629, 0.009104, 0.999489,
		0.990763, -0.131885, 0.031562,
		0.132105, 0.991223, -0.004980,
		46.104832, 47.528530, 56.817947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557556, 46.955582, 57.300163>,  <46.012360, 46.834675, 56.821434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.557556, 46.955582, 57.300163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.383545, 47.313087, 57.256447>,  <46.279137, 47.527592, 57.230217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.383545, 47.313087, 57.256447>,  <46.557556, 46.955582, 57.300163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383545, 47.313087, 57.256447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186226, 0.208059, 0.960225,
		0.880949, 0.397372, -0.256953,
		-0.435028, 0.893760, -0.109288,
		46.253036, 47.581215, 57.223660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936218, 47.385586, 57.831093>,  <46.557556, 46.955582, 57.300163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936218, 47.385586, 57.831093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.608543, 47.599983, 57.749458>,  <46.411938, 47.728622, 57.700478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.608543, 47.599983, 57.749458>,  <46.936218, 47.385586, 57.831093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608543, 47.599983, 57.749458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091455, 0.229207, 0.969072,
		0.566191, 0.812513, -0.138744,
		-0.819185, 0.535991, -0.204084,
		46.362789, 47.760780, 57.688232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.095280, 48.075409, 58.076202>,  <46.936218, 47.385586, 57.831093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.095280, 48.075409, 58.076202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.699837, 48.016609, 58.089188>,  <46.462570, 47.981327, 58.096977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.699837, 48.016609, 58.089188>,  <47.095280, 48.075409, 58.076202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.699837, 48.016609, 58.089188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000344, 0.217848, 0.975983,
		-0.150543, 0.964848, -0.215416,
		-0.988603, -0.147002, 0.032464,
		46.403255, 47.972507, 58.098927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.860397, 48.597301, 58.482311>,  <47.095280, 48.075409, 58.076202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.860397, 48.597301, 58.482311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.542282, 48.354889, 58.488567>,  <46.351414, 48.209442, 58.492321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.542282, 48.354889, 58.488567>,  <46.860397, 48.597301, 58.482311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.542282, 48.354889, 58.488567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148094, 0.219223, 0.964370,
		-0.587868, 0.764634, -0.264095,
		-0.795286, -0.606033, 0.015636,
		46.303696, 48.173080, 58.493259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338634, 48.996056, 58.865101>,  <46.860397, 48.597301, 58.482311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338634, 48.996056, 58.865101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.205681, 48.619286, 58.884300>,  <46.125908, 48.393223, 58.895821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.205681, 48.619286, 58.884300>,  <46.338634, 48.996056, 58.865101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205681, 48.619286, 58.884300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155502, 0.104924, 0.982247,
		-0.930238, 0.319015, -0.181346,
		-0.332380, -0.941924, 0.047997,
		46.105968, 48.336708, 58.898701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722935, 48.956337, 59.298054>,  <46.338634, 48.996056, 58.865101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722935, 48.956337, 59.298054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.883507, 48.590736, 59.321583>,  <45.979851, 48.371376, 59.335701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.883507, 48.590736, 59.321583>,  <45.722935, 48.956337, 59.298054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883507, 48.590736, 59.321583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094942, 0.105404, 0.989887,
		-0.910956, -0.391784, 0.129089,
		0.401429, -0.913999, 0.058822,
		46.003937, 48.316536, 59.339230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407982, 48.706573, 59.870255>,  <45.722935, 48.956337, 59.298054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407982, 48.706573, 59.870255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.684685, 48.426872, 59.798138>,  <45.850708, 48.259052, 59.754868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.684685, 48.426872, 59.798138>,  <45.407982, 48.706573, 59.870255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.684685, 48.426872, 59.798138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051144, -0.201601, 0.978132,
		-0.720313, -0.685855, -0.103697,
		0.691762, -0.699257, -0.180294,
		45.892212, 48.217094, 59.744049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155956, 47.895672, 60.064705>,  <45.407982, 48.706573, 59.870255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155956, 47.895672, 60.064705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.549553, 47.961052, 60.093113>,  <45.785709, 48.000278, 60.110157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.549553, 47.961052, 60.093113>,  <45.155956, 47.895672, 60.064705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549553, 47.961052, 60.093113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031722, -0.231509, 0.972316,
		0.175366, -0.959004, -0.222618,
		0.983992, 0.163450, 0.071020,
		45.844749, 48.010086, 60.114418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360806, 47.307793, 60.393970>,  <45.155956, 47.895672, 60.064705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360806, 47.307793, 60.393970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.634430, 47.597824, 60.425777>,  <45.798603, 47.771843, 60.444862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.634430, 47.597824, 60.425777>,  <45.360806, 47.307793, 60.393970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634430, 47.597824, 60.425777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102849, -0.203806, 0.973594,
		0.722141, -0.657816, -0.213989,
		0.684058, 0.725081, 0.079521,
		45.839645, 47.815350, 60.449635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857925, 46.962399, 60.776978>,  <45.360806, 47.307793, 60.393970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857925, 46.962399, 60.776978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.935898, 47.354439, 60.791946>,  <45.982681, 47.589664, 60.800926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.935898, 47.354439, 60.791946>,  <45.857925, 46.962399, 60.776978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935898, 47.354439, 60.791946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213107, -0.079561, 0.973784,
		0.957386, -0.181843, -0.224375,
		0.194927, 0.980104, 0.037419,
		45.994377, 47.648468, 60.803173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.491089, 47.029850, 61.125904>,  <45.857925, 46.962399, 60.776978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.491089, 47.029850, 61.125904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.303879, 47.378845, 61.182060>,  <46.191551, 47.588242, 61.215755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.303879, 47.378845, 61.182060>,  <46.491089, 47.029850, 61.125904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.303879, 47.378845, 61.182060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278708, -0.005027, 0.960363,
		0.838614, 0.488604, -0.240817,
		-0.468027, 0.872491, 0.140393,
		46.163471, 47.640594, 61.224178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.829224, 46.576038, 60.679279>,  <46.491089, 47.029850, 61.125904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.829224, 46.576038, 60.679279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.615936, 46.256554, 60.790806>,  <46.487965, 46.064861, 60.857719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.615936, 46.256554, 60.790806>,  <46.829224, 46.576038, 60.679279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.615936, 46.256554, 60.790806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329013, -0.499416, -0.801458,
		0.779380, -0.335616, 0.529083,
		-0.533214, -0.798715, 0.278813,
		46.455971, 46.016937, 60.874451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.297508, 46.073799, 60.583424>,  <46.829224, 46.576038, 60.679279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.297508, 46.073799, 60.583424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.952057, 45.876778, 60.626373>,  <46.744785, 45.758564, 60.652142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.952057, 45.876778, 60.626373>,  <47.297508, 46.073799, 60.583424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.952057, 45.876778, 60.626373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197210, -0.526108, -0.827235,
		0.463951, -0.693251, 0.551500,
		-0.863631, -0.492558, 0.107373,
		46.692966, 45.729012, 60.658585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.403561, 45.329094, 60.550335>,  <47.297508, 46.073799, 60.583424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.403561, 45.329094, 60.550335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.012764, 45.336143, 60.465324>,  <46.778286, 45.340374, 60.414318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.012764, 45.336143, 60.465324>,  <47.403561, 45.329094, 60.550335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.012764, 45.336143, 60.465324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189274, -0.387485, -0.902236,
		-0.098255, -0.921707, 0.375235,
		-0.976996, 0.017627, -0.212528,
		46.719666, 45.341431, 60.401566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.225780, 44.691387, 60.298809>,  <47.403561, 45.329094, 60.550335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.225780, 44.691387, 60.298809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.922279, 44.921768, 60.177109>,  <46.740177, 45.059998, 60.104088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.922279, 44.921768, 60.177109>,  <47.225780, 44.691387, 60.298809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.922279, 44.921768, 60.177109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070929, -0.537374, -0.840356,
		-0.647502, -0.616044, 0.448587,
		-0.758756, 0.575950, -0.304255,
		46.694653, 45.094551, 60.085831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.565365, 44.247192, 60.063488>,  <47.225780, 44.691387, 60.298809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.565365, 44.247192, 60.063488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.577736, 44.599556, 59.874580>,  <46.585159, 44.810974, 59.761238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.577736, 44.599556, 59.874580>,  <46.565365, 44.247192, 60.063488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.577736, 44.599556, 59.874580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025061, -0.473028, -0.880691,
		-0.999207, 0.015405, -0.036708,
		0.030931, 0.880912, -0.472267,
		46.587017, 44.863831, 59.732899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.998653, 44.224407, 59.568794>,  <46.565365, 44.247192, 60.063488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.998653, 44.224407, 59.568794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.239395, 44.515663, 59.437599>,  <46.383839, 44.690418, 59.358883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.239395, 44.515663, 59.437599>,  <45.998653, 44.224407, 59.568794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.239395, 44.515663, 59.437599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064761, -0.364850, -0.928811,
		-0.795976, 0.580250, -0.172431,
		0.601854, 0.728144, -0.327989,
		46.419952, 44.734108, 59.339203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659775, 44.474533, 58.973003>,  <45.998653, 44.224407, 59.568794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.659775, 44.474533, 58.973003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.039696, 44.596245, 58.943886>,  <46.267647, 44.669270, 58.926414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.039696, 44.596245, 58.943886>,  <45.659775, 44.474533, 58.973003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.039696, 44.596245, 58.943886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032812, -0.134505, -0.990370,
		-0.311137, 0.943040, -0.117769,
		0.949798, 0.304277, -0.072792,
		46.324635, 44.687527, 58.922047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990002, 44.543640, 58.677876>,  <45.659775, 44.474533, 58.973003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990002, 44.543640, 58.677876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.797146, 44.199158, 58.742195>,  <44.681431, 43.992466, 58.780785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.797146, 44.199158, 58.742195>,  <44.990002, 44.543640, 58.677876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797146, 44.199158, 58.742195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090897, 0.133375, 0.986888,
		-0.871365, 0.490437, 0.013976,
		-0.482143, -0.861210, 0.160797,
		44.652504, 43.940796, 58.790436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598289, 44.742477, 59.229794>,  <44.990002, 44.543640, 58.677876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598289, 44.742477, 59.229794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.577911, 44.343063, 59.237137>,  <44.565685, 44.103416, 59.241543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.577911, 44.343063, 59.237137>,  <44.598289, 44.742477, 59.229794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577911, 44.343063, 59.237137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091590, 0.022977, 0.995532,
		-0.994493, 0.049038, -0.092626,
		-0.050947, -0.998532, 0.018359,
		44.562626, 44.043503, 59.242645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052307, 44.601826, 59.748070>,  <44.598289, 44.742477, 59.229794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052307, 44.601826, 59.748070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.284004, 44.277771, 59.711922>,  <44.423023, 44.083340, 59.690231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.284004, 44.277771, 59.711922>,  <44.052307, 44.601826, 59.748070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284004, 44.277771, 59.711922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086487, -0.171315, 0.981413,
		-0.810556, -0.560657, -0.169299,
		0.579240, -0.810133, -0.090371,
		44.457775, 44.034733, 59.684811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677166, 44.111908, 60.072163>,  <44.052307, 44.601826, 59.748070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677166, 44.111908, 60.072163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.040932, 43.945740, 60.080059>,  <44.259190, 43.846039, 60.084797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.040932, 43.945740, 60.080059>,  <43.677166, 44.111908, 60.072163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040932, 43.945740, 60.080059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149894, -0.283129, 0.947296,
		-0.387941, -0.864443, -0.319751,
		0.909414, -0.415423, 0.019737,
		44.313755, 43.821114, 60.085979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632301, 43.433105, 60.363327>,  <43.677166, 44.111908, 60.072163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632301, 43.433105, 60.363327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.014656, 43.534561, 60.422585>,  <44.244068, 43.595436, 60.458138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.014656, 43.534561, 60.422585>,  <43.632301, 43.433105, 60.363327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014656, 43.534561, 60.422585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098555, -0.198157, 0.975203,
		0.276705, -0.946784, -0.164419,
		0.955888, 0.253639, 0.148141,
		44.301422, 43.610653, 60.467026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986153, 42.857372, 60.716305>,  <43.632301, 43.433105, 60.363327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986153, 42.857372, 60.716305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.196590, 43.189384, 60.790367>,  <44.322853, 43.388592, 60.834805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.196590, 43.189384, 60.790367>,  <43.986153, 42.857372, 60.716305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196590, 43.189384, 60.790367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061419, -0.180065, 0.981735,
		0.848206, -0.527857, -0.043751,
		0.526093, 0.830026, 0.185153,
		44.354420, 43.438393, 60.845913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443188, 42.651543, 61.308025>,  <43.986153, 42.857372, 60.716305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443188, 42.651543, 61.308025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.450089, 43.051460, 61.303768>,  <44.454231, 43.291412, 61.301212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.450089, 43.051460, 61.303768>,  <44.443188, 42.651543, 61.308025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450089, 43.051460, 61.303768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076010, 0.009301, 0.997064,
		0.996958, -0.018012, -0.075834,
		0.017254, 0.999795, -0.010642,
		44.455265, 43.351398, 61.300575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924091, 42.812737, 61.751114>,  <44.443188, 42.651543, 61.308025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.924091, 42.812737, 61.751114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.787354, 43.186836, 61.714355>,  <44.705311, 43.411297, 61.692299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.787354, 43.186836, 61.714355>,  <44.924091, 42.812737, 61.751114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.787354, 43.186836, 61.714355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035361, 0.110519, 0.993245,
		0.939092, 0.336283, -0.070852,
		-0.341842, 0.935254, -0.091897,
		44.684799, 43.467411, 61.686787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255836, 43.226421, 62.231213>,  <44.924091, 42.812737, 61.751114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255836, 43.226421, 62.231213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.905579, 43.412315, 62.178635>,  <44.695423, 43.523849, 62.147087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.905579, 43.412315, 62.178635>,  <45.255836, 43.226421, 62.231213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.905579, 43.412315, 62.178635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157493, -0.017477, 0.987366,
		0.456564, 0.885279, 0.088496,
		-0.875640, 0.464733, -0.131446,
		44.642887, 43.551735, 62.139202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<45.092598, 40.729591, 45.670315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.844826, 40.978073, 45.862320>,  <44.696163, 41.127163, 45.977524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.844826, 40.978073, 45.862320>,  <45.092598, 40.729591, 45.670315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844826, 40.978073, 45.862320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348260, -0.330545, 0.877186,
		0.703575, 0.710526, -0.011589,
		-0.619433, 0.621202, 0.480011,
		44.658997, 41.164433, 46.006325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412815, 41.083012, 46.125420>,  <45.092598, 40.729591, 45.670315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412815, 41.083012, 46.125420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.042961, 41.158730, 46.257614>,  <44.821049, 41.204159, 46.336929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.042961, 41.158730, 46.257614>,  <45.412815, 41.083012, 46.125420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042961, 41.158730, 46.257614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350596, 0.084072, 0.932746,
		0.148777, 0.978315, -0.144101,
		-0.924634, 0.189293, 0.330485,
		44.765572, 41.215519, 46.356758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473473, 41.718895, 46.467224>,  <45.412815, 41.083012, 46.125420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473473, 41.718895, 46.467224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.162792, 41.528999, 46.632805>,  <44.976383, 41.415062, 46.732155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.162792, 41.528999, 46.632805>,  <45.473473, 41.718895, 46.467224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162792, 41.528999, 46.632805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360814, 0.203351, 0.910199,
		-0.516289, 0.856310, 0.013351,
		-0.776698, -0.474743, 0.413956,
		44.929783, 41.386578, 46.756992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076633, 42.204014, 46.987846>,  <45.473473, 41.718895, 46.467224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076633, 42.204014, 46.987846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.967670, 41.833954, 47.093594>,  <44.902294, 41.611919, 47.157043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.967670, 41.833954, 47.093594>,  <45.076633, 42.204014, 46.987846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967670, 41.833954, 47.093594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064430, 0.256604, 0.964367,
		-0.960022, 0.279735, -0.010293,
		-0.272409, -0.925150, 0.264369,
		44.885948, 41.556408, 47.172905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633347, 42.256893, 47.489208>,  <45.076633, 42.204014, 46.987846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633347, 42.256893, 47.489208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.743969, 41.876190, 47.542397>,  <44.810341, 41.647770, 47.574310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.743969, 41.876190, 47.542397>,  <44.633347, 42.256893, 47.489208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743969, 41.876190, 47.542397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136211, 0.098145, 0.985806,
		-0.951296, -0.290741, -0.102497,
		0.276555, -0.951755, 0.132967,
		44.826935, 41.590664, 47.582287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143497, 41.919594, 47.898483>,  <44.633347, 42.256893, 47.489208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143497, 41.919594, 47.898483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.488407, 41.722221, 47.944096>,  <44.695354, 41.603798, 47.971462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.488407, 41.722221, 47.944096>,  <44.143497, 41.919594, 47.898483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488407, 41.722221, 47.944096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113875, 0.030496, 0.993027,
		-0.493468, -0.869250, -0.029894,
		0.862277, -0.493431, 0.114035,
		44.747089, 41.574192, 47.978306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983379, 41.438141, 48.378357>,  <44.143497, 41.919594, 47.898483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983379, 41.438141, 48.378357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.383301, 41.444122, 48.383614>,  <44.623253, 41.447712, 48.386768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.383301, 41.444122, 48.383614>,  <43.983379, 41.438141, 48.378357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383301, 41.444122, 48.383614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012521, -0.040790, 0.999089,
		0.015486, -0.999056, -0.040595,
		0.999802, 0.014963, 0.013141,
		44.683243, 41.448608, 48.387554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157871, 40.988140, 48.942196>,  <43.983379, 41.438141, 48.378357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157871, 40.988140, 48.942196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.477951, 41.219032, 48.877094>,  <44.669998, 41.357567, 48.838036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.477951, 41.219032, 48.877094>,  <44.157871, 40.988140, 48.942196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477951, 41.219032, 48.877094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174000, 0.036248, 0.984078,
		0.573942, -0.815774, -0.071433,
		0.800197, 0.577233, -0.162749,
		44.718010, 41.392200, 48.828270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733063, 40.675697, 49.276913>,  <44.157871, 40.988140, 48.942196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733063, 40.675697, 49.276913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.803188, 41.069344, 49.265770>,  <44.845264, 41.305531, 49.259087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.803188, 41.069344, 49.265770>,  <44.733063, 40.675697, 49.276913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803188, 41.069344, 49.265770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214076, -0.010491, 0.976761,
		0.960956, -0.177203, -0.212516,
		0.175314, 0.984118, -0.027854,
		44.855782, 41.364578, 49.257412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358196, 40.762115, 49.655060>,  <44.733063, 40.675697, 49.276913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358196, 40.762115, 49.655060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.214542, 41.135147, 49.640514>,  <45.128349, 41.358967, 49.631786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.214542, 41.135147, 49.640514>,  <45.358196, 40.762115, 49.655060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214542, 41.135147, 49.640514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250503, 0.133857, 0.958817,
		0.899041, 0.335230, -0.281685,
		-0.359130, 0.932579, -0.036367,
		45.106804, 41.414921, 49.629604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838039, 41.233505, 50.083694>,  <45.358196, 40.762115, 49.655060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838039, 41.233505, 50.083694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.500641, 41.446709, 50.057079>,  <45.298203, 41.574631, 50.041111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.500641, 41.446709, 50.057079>,  <45.838039, 41.233505, 50.083694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500641, 41.446709, 50.057079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078535, 0.244924, 0.966356,
		0.531369, 0.809888, -0.248451,
		-0.843492, 0.533004, -0.066541,
		45.247593, 41.606609, 50.037117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963928, 41.857170, 50.548817>,  <45.838039, 41.233505, 50.083694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963928, 41.857170, 50.548817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.568047, 41.808502, 50.518658>,  <45.330517, 41.779301, 50.500565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.568047, 41.808502, 50.518658>,  <45.963928, 41.857170, 50.548817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568047, 41.808502, 50.518658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087262, 0.095359, 0.991611,
		-0.113460, 0.987979, -0.104994,
		-0.989703, -0.121670, -0.075393,
		45.271137, 41.771999, 50.496040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.449348, 42.574238, 50.357002>,  <45.963928, 41.857170, 50.548817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.449348, 42.574238, 50.357002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.779984, 42.400154, 50.499741>,  <46.978367, 42.295704, 50.585384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.779984, 42.400154, 50.499741>,  <46.449348, 42.574238, 50.357002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.779984, 42.400154, 50.499741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263968, -0.260193, -0.928774,
		0.497062, 0.861912, -0.100191,
		0.826590, -0.435211, 0.356848,
		47.027962, 42.269592, 50.606796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.934013, 42.813057, 49.932766>,  <46.449348, 42.574238, 50.357002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.934013, 42.813057, 49.932766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.112320, 42.501297, 50.108864>,  <47.219303, 42.314240, 50.214523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.112320, 42.501297, 50.108864>,  <46.934013, 42.813057, 49.932766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.112320, 42.501297, 50.108864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430863, -0.244276, -0.868727,
		0.784631, 0.576939, 0.226926,
		0.445770, -0.779404, 0.440248,
		47.246052, 42.267475, 50.240940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.611763, 42.921803, 49.836418>,  <46.934013, 42.813057, 49.932766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.611763, 42.921803, 49.836418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.549675, 42.531776, 49.899868>,  <47.512421, 42.297760, 49.937939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.549675, 42.531776, 49.899868>,  <47.611763, 42.921803, 49.836418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.549675, 42.531776, 49.899868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416643, -0.210211, -0.884432,
		0.895720, -0.071191, 0.438882,
		-0.155222, -0.975061, 0.158629,
		47.503109, 42.239258, 49.947456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.227310, 42.548996, 49.574829>,  <47.611763, 42.921803, 49.836418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.227310, 42.548996, 49.574829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.967949, 42.246742, 49.611885>,  <47.812332, 42.065388, 49.634121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.967949, 42.246742, 49.611885>,  <48.227310, 42.548996, 49.574829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.967949, 42.246742, 49.611885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214718, -0.298271, -0.930017,
		0.730389, -0.583134, 0.355649,
		-0.648404, -0.755638, 0.092644,
		47.773426, 42.020050, 49.639679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.602718, 41.933681, 49.603241>,  <48.227310, 42.548996, 49.574829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.602718, 41.933681, 49.603241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.236328, 41.829468, 49.481186>,  <48.016495, 41.766937, 49.407955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.236328, 41.829468, 49.481186>,  <48.602718, 41.933681, 49.603241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.236328, 41.829468, 49.481186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351144, -0.152591, -0.923804,
		0.194124, -0.953329, 0.231256,
		-0.915977, -0.260536, -0.305135,
		47.961536, 41.751308, 49.389645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.759083, 41.379818, 49.162319>,  <48.602718, 41.933681, 49.603241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.759083, 41.379818, 49.162319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.383156, 41.486420, 49.076797>,  <48.157600, 41.550381, 49.025482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.383156, 41.486420, 49.076797>,  <48.759083, 41.379818, 49.162319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.383156, 41.486420, 49.076797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170595, -0.176170, -0.969464,
		-0.296038, -0.947595, 0.120102,
		-0.939819, 0.266510, -0.213808,
		48.101212, 41.566372, 49.012653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.437885, 40.795086, 48.767750>,  <48.759083, 41.379818, 49.162319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.437885, 40.795086, 48.767750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.238297, 41.135925, 48.704571>,  <48.118542, 41.340431, 48.666664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.238297, 41.135925, 48.704571>,  <48.437885, 40.795086, 48.767750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.238297, 41.135925, 48.704571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238088, -0.040461, -0.970400,
		-0.833270, -0.521812, -0.182686,
		-0.498975, 0.852101, -0.157952,
		48.088604, 41.391556, 48.657185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.187847, 40.686234, 48.162617>,  <48.437885, 40.795086, 48.767750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.187847, 40.686234, 48.162617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.152428, 41.083328, 48.195213>,  <48.131176, 41.321583, 48.214771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.152428, 41.083328, 48.195213>,  <48.187847, 40.686234, 48.162617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.152428, 41.083328, 48.195213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082554, 0.088847, -0.992618,
		-0.992645, -0.081166, -0.089821,
		-0.088547, 0.992733, 0.081493,
		48.125862, 41.381149, 48.219662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.688400, 40.867203, 47.608025>,  <48.187847, 40.686234, 48.162617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.688400, 40.867203, 47.608025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.914940, 41.182350, 47.704781>,  <48.050861, 41.371441, 47.762833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.914940, 41.182350, 47.704781>,  <47.688400, 40.867203, 47.608025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.914940, 41.182350, 47.704781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063423, 0.250961, -0.965917,
		-0.821723, 0.562385, 0.092162,
		0.566347, 0.787871, 0.241888,
		48.084843, 41.418713, 47.777348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.388309, 41.373394, 47.222980>,  <47.688400, 40.867203, 47.608025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.388309, 41.373394, 47.222980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.757668, 41.493950, 47.318062>,  <47.979282, 41.566284, 47.375111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.757668, 41.493950, 47.318062>,  <47.388309, 41.373394, 47.222980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.757668, 41.493950, 47.318062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183725, 0.196687, -0.963099,
		-0.337016, 0.932996, 0.126249,
		0.923399, 0.301385, 0.237701,
		48.034687, 41.584366, 47.389374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.413429, 42.010693, 46.926014>,  <47.388309, 41.373394, 47.222980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.413429, 42.010693, 46.926014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.799843, 41.922958, 46.980659>,  <48.031693, 41.870319, 47.013447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.799843, 41.922958, 46.980659>,  <47.413429, 42.010693, 46.926014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.799843, 41.922958, 46.980659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214553, 0.386230, -0.897103,
		0.144004, 0.895945, 0.420172,
		0.966038, -0.219336, 0.136609,
		48.089653, 41.857159, 47.021641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.741867, 42.538582, 46.689926>,  <47.413429, 42.010693, 46.926014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.741867, 42.538582, 46.689926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.029152, 42.260391, 46.698700>,  <48.201523, 42.093475, 46.703964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.029152, 42.260391, 46.698700>,  <47.741867, 42.538582, 46.689926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.029152, 42.260391, 46.698700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373589, 0.358820, -0.855383,
		0.587030, 0.622540, 0.517532,
		0.718211, -0.695480, 0.021936,
		48.244614, 42.051746, 46.705280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.337120, 42.928917, 46.554153>,  <47.741867, 42.538582, 46.689926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.337120, 42.928917, 46.554153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.379585, 42.539368, 46.473858>,  <48.405064, 42.305637, 46.425682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.379585, 42.539368, 46.473858>,  <48.337120, 42.928917, 46.554153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.379585, 42.539368, 46.473858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441025, 0.227052, -0.868300,
		0.891194, 0.003649, 0.453607,
		0.106161, -0.973876, -0.200738,
		48.411434, 42.247204, 46.413635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.992359, 42.837177, 46.369579>,  <48.337120, 42.928917, 46.554153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.992359, 42.837177, 46.369579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.800003, 42.535583, 46.190578>,  <48.684589, 42.354630, 46.083179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.800003, 42.535583, 46.190578>,  <48.992359, 42.837177, 46.369579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.800003, 42.535583, 46.190578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506993, 0.177287, -0.843521,
		0.715336, -0.632520, 0.297008,
		-0.480888, -0.753982, -0.447503,
		48.655735, 42.309387, 46.056328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.018013, 43.522884, 46.737354>,  <48.992359, 42.837177, 46.369579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.018013, 43.522884, 46.737354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.267128, 43.724831, 46.498276>,  <49.416599, 43.846001, 46.354828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.267128, 43.724831, 46.498276>,  <49.018013, 43.522884, 46.737354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.267128, 43.724831, 46.498276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069746, 0.725070, 0.685134,
		0.779274, -0.468381, 0.416354,
		0.622790, 0.504868, -0.597696,
		49.453964, 43.876289, 46.318966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.788147, 43.568584, 46.927738>,  <49.018013, 43.522884, 46.737354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.788147, 43.568584, 46.927738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.629013, 43.875809, 46.727013>,  <49.533535, 44.060143, 46.606579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.629013, 43.875809, 46.727013>,  <49.788147, 43.568584, 46.927738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.629013, 43.875809, 46.727013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159632, 0.596567, 0.786528,
		0.903464, 0.232800, -0.359939,
		-0.397832, 0.768058, -0.501814,
		49.509663, 44.106228, 46.576469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.174778, 44.209888, 46.922634>,  <49.788147, 43.568584, 46.927738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.174778, 44.209888, 46.922634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.788696, 44.308662, 46.888214>,  <49.557049, 44.367928, 46.867561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.788696, 44.308662, 46.888214>,  <50.174778, 44.209888, 46.922634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.788696, 44.308662, 46.888214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147498, 0.785821, 0.600608,
		0.215927, 0.567018, -0.794900,
		-0.965205, 0.246933, -0.086046,
		49.499134, 44.382744, 46.862400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.041775, 45.002876, 46.755211>,  <50.174778, 44.209888, 46.922634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.041775, 45.002876, 46.755211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.726570, 44.853149, 46.950729>,  <49.537445, 44.763313, 47.068039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.726570, 44.853149, 46.950729>,  <50.041775, 45.002876, 46.755211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.726570, 44.853149, 46.950729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003094, 0.791525, 0.611129,
		-0.615650, 0.483091, -0.622574,
		-0.788014, -0.374315, 0.488797,
		49.490166, 44.740856, 47.097370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.701427, 45.619907, 46.947453>,  <50.041775, 45.002876, 46.755211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.701427, 45.619907, 46.947453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.529892, 45.357719, 47.196114>,  <49.426971, 45.200405, 47.345310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.529892, 45.357719, 47.196114>,  <49.701427, 45.619907, 46.947453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.529892, 45.357719, 47.196114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138348, 0.727679, 0.671821,
		-0.892724, 0.202098, -0.402740,
		-0.428840, -0.655469, 0.621657,
		49.401241, 45.161079, 47.382610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.094307, 45.946167, 47.128796>,  <49.701427, 45.619907, 46.947453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.094307, 45.946167, 47.128796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.165596, 45.670250, 47.409489>,  <49.208370, 45.504700, 47.577904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.165596, 45.670250, 47.409489>,  <49.094307, 45.946167, 47.128796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.165596, 45.670250, 47.409489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365395, 0.615760, 0.698087,
		-0.913632, -0.380824, -0.142304,
		0.178223, -0.689792, 0.701729,
		49.219063, 45.463314, 47.620007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.481922, 45.954979, 47.567852>,  <49.094307, 45.946167, 47.128796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.481922, 45.954979, 47.567852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.753937, 45.762581, 47.789192>,  <48.917145, 45.647141, 47.921997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.753937, 45.762581, 47.789192>,  <48.481922, 45.954979, 47.567852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.753937, 45.762581, 47.789192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376825, 0.418123, 0.826545,
		-0.628935, -0.770593, 0.103085,
		0.680032, -0.480998, 0.553351,
		48.957947, 45.618282, 47.955196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.103363, 45.711414, 48.072338>,  <48.481922, 45.954979, 47.567852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.103363, 45.711414, 48.072338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.475929, 45.684616, 48.215431>,  <48.699471, 45.668537, 48.301289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.475929, 45.684616, 48.215431>,  <48.103363, 45.711414, 48.072338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.475929, 45.684616, 48.215431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296541, 0.430171, 0.852653,
		-0.211013, -0.900258, 0.380801,
		0.931417, -0.066998, 0.357735,
		48.755356, 45.664516, 48.322750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.109196, 45.244431, 48.776691>,  <48.103363, 45.711414, 48.072338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.109196, 45.244431, 48.776691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.426056, 45.488358, 48.786644>,  <48.616173, 45.634712, 48.792614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.426056, 45.488358, 48.786644>,  <48.109196, 45.244431, 48.776691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.426056, 45.488358, 48.786644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305270, 0.360592, 0.881353,
		0.528495, -0.705759, 0.471802,
		0.792151, 0.609818, 0.024876,
		48.663700, 45.671303, 48.794106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.409882, 45.117390, 49.371994>,  <48.109196, 45.244431, 48.776691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.409882, 45.117390, 49.371994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.597572, 45.461166, 49.290825>,  <48.710186, 45.667435, 49.242123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.597572, 45.461166, 49.290825>,  <48.409882, 45.117390, 49.371994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.597572, 45.461166, 49.290825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264352, 0.355962, 0.896331,
		0.842580, -0.366941, 0.394224,
		0.469230, 0.859445, -0.202925,
		48.738342, 45.718998, 49.229946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.776390, 45.216290, 49.925900>,  <48.409882, 45.117390, 49.371994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.776390, 45.216290, 49.925900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.743324, 45.577164, 49.756561>,  <48.723484, 45.793690, 49.654957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.743324, 45.577164, 49.756561>,  <48.776390, 45.216290, 49.925900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.743324, 45.577164, 49.756561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248158, 0.392782, 0.885516,
		0.965186, 0.178260, 0.191415,
		-0.082668, 0.902189, -0.423345,
		48.718525, 45.847820, 49.629559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.966625, 45.603336, 50.447598>,  <48.776390, 45.216290, 49.925900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.966625, 45.603336, 50.447598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.789879, 45.879326, 50.218273>,  <48.683830, 46.044922, 50.080681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.789879, 45.879326, 50.218273>,  <48.966625, 45.603336, 50.447598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.789879, 45.879326, 50.218273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220613, 0.535877, 0.814964,
		0.869530, 0.486586, -0.084570,
		-0.441869, 0.689978, -0.573308,
		48.657318, 46.086319, 50.046280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.224030, 46.267090, 50.600418>,  <48.966625, 45.603336, 50.447598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.224030, 46.267090, 50.600418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.865471, 46.341568, 50.439514>,  <48.650337, 46.386253, 50.342972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.865471, 46.341568, 50.439514>,  <49.224030, 46.267090, 50.600418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.865471, 46.341568, 50.439514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202155, 0.635900, 0.744826,
		0.394477, 0.748975, -0.532376,
		-0.896394, 0.186194, -0.402257,
		48.596554, 46.397427, 50.318836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.110023, 47.017067, 50.536251>,  <49.224030, 46.267090, 50.600418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.110023, 47.017067, 50.536251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.742409, 46.861130, 50.512947>,  <48.521839, 46.767567, 50.498962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.742409, 46.861130, 50.512947>,  <49.110023, 47.017067, 50.536251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.742409, 46.861130, 50.512947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298495, 0.591786, 0.748792,
		-0.257430, 0.705560, -0.660239,
		-0.919038, -0.389840, -0.058263,
		48.466698, 46.744179, 50.495468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.712173, 47.624027, 50.597008>,  <49.110023, 47.017067, 50.536251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.712173, 47.624027, 50.597008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.478821, 47.309196, 50.677189>,  <48.338810, 47.120300, 50.725296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.478821, 47.309196, 50.677189>,  <48.712173, 47.624027, 50.597008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.478821, 47.309196, 50.677189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400993, 0.493737, 0.771640,
		-0.706306, 0.369784, -0.603649,
		-0.583384, -0.787072, 0.200449,
		48.303806, 47.073074, 50.737324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.962257, 47.938931, 50.733799>,  <48.712173, 47.624027, 50.597008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.962257, 47.938931, 50.733799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.973679, 47.576965, 50.903652>,  <47.980534, 47.359787, 51.005562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.973679, 47.576965, 50.903652>,  <47.962257, 47.938931, 50.733799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.973679, 47.576965, 50.903652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625895, 0.315032, 0.713450,
		-0.779384, -0.286146, -0.557387,
		0.028556, -0.904917, 0.424628,
		47.982246, 47.305489, 51.031040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.316692, 47.931377, 51.051205>,  <47.962257, 47.938931, 50.733799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.316692, 47.931377, 51.051205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.506706, 47.622543, 51.220074>,  <47.620712, 47.437244, 51.321396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.506706, 47.622543, 51.220074>,  <47.316692, 47.931377, 51.051205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.506706, 47.622543, 51.220074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449805, 0.199298, 0.870606,
		-0.756321, -0.603460, -0.252616,
		0.475031, -0.772086, 0.422173,
		47.649216, 47.390919, 51.346725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.782711, 47.493771, 51.331753>,  <47.316692, 47.931377, 51.051205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.782711, 47.493771, 51.331753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.121857, 47.415085, 51.528702>,  <47.325344, 47.367874, 51.646870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.121857, 47.415085, 51.528702>,  <46.782711, 47.493771, 51.331753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.121857, 47.415085, 51.528702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481961, 0.101112, 0.870339,
		-0.220996, -0.975232, -0.009082,
		0.847864, -0.196719, 0.492370,
		47.376217, 47.356068, 51.676414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.585709, 47.163063, 51.882153>,  <46.782711, 47.493771, 51.331753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.585709, 47.163063, 51.882153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.948517, 47.265999, 52.015469>,  <47.166203, 47.327759, 52.095459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.948517, 47.265999, 52.015469>,  <46.585709, 47.163063, 51.882153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.948517, 47.265999, 52.015469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379746, 0.157911, 0.911514,
		0.181952, -0.953327, 0.240958,
		0.907021, 0.257354, 0.333290,
		47.220623, 47.343201, 52.115456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.675961, 46.854061, 52.516880>,  <46.585709, 47.163063, 51.882153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.675961, 46.854061, 52.516880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.925423, 47.166740, 52.516666>,  <47.075100, 47.354347, 52.516537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.925423, 47.166740, 52.516666>,  <46.675961, 46.854061, 52.516880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.925423, 47.166740, 52.516666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195586, 0.156703, 0.968086,
		0.756833, -0.603651, 0.250618,
		0.623659, 0.781697, -0.000533,
		47.112518, 47.401249, 52.516506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.216103, 46.645370, 52.978703>,  <46.675961, 46.854061, 52.516880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.216103, 46.645370, 52.978703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.198608, 47.042900, 52.937893>,  <47.188110, 47.281418, 52.913406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.198608, 47.042900, 52.937893>,  <47.216103, 46.645370, 52.978703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.198608, 47.042900, 52.937893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061360, 0.099258, 0.993168,
		0.997157, 0.049698, 0.056640,
		-0.043737, 0.993820, -0.102025,
		47.185486, 47.341045, 52.907284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.585613, 46.942154, 53.545002>,  <47.216103, 46.645370, 52.978703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.585613, 46.942154, 53.545002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.393562, 47.271942, 53.425179>,  <47.278332, 47.469814, 53.353287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.393562, 47.271942, 53.425179>,  <47.585613, 46.942154, 53.545002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.393562, 47.271942, 53.425179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172452, 0.246111, 0.953777,
		0.860082, 0.509590, 0.024017,
		-0.480125, 0.824468, -0.299556,
		47.249523, 47.519283, 53.335312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.948044, 47.578800, 53.798397>,  <47.585613, 46.942154, 53.545002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.948044, 47.578800, 53.798397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.563507, 47.668633, 53.734673>,  <47.332783, 47.722534, 53.696438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.563507, 47.668633, 53.734673>,  <47.948044, 47.578800, 53.798397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.563507, 47.668633, 53.734673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067402, 0.369038, 0.926967,
		0.266975, 0.901872, -0.339635,
		-0.961344, 0.224585, -0.159311,
		47.275105, 47.736008, 53.686878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.798077, 48.092815, 54.316959>,  <47.948044, 47.578800, 53.798397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.798077, 48.092815, 54.316959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.427147, 47.995644, 54.203079>,  <47.204590, 47.937340, 54.134750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.427147, 47.995644, 54.203079>,  <47.798077, 48.092815, 54.316959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.427147, 47.995644, 54.203079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344700, 0.258059, 0.902545,
		-0.145785, 0.935089, -0.323042,
		-0.927323, -0.242930, -0.284704,
		47.148949, 47.922764, 54.117668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.330074, 48.641544, 54.597378>,  <47.798077, 48.092815, 54.316959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.330074, 48.641544, 54.597378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.096237, 48.322998, 54.535347>,  <46.955936, 48.131870, 54.498127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.096237, 48.322998, 54.535347>,  <47.330074, 48.641544, 54.597378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.096237, 48.322998, 54.535347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387783, 0.106368, 0.915593,
		-0.712655, 0.595384, -0.371000,
		-0.584592, -0.796369, -0.155076,
		46.920860, 48.084087, 54.488823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.683636, 48.861504, 54.946232>,  <47.330074, 48.641544, 54.597378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.683636, 48.861504, 54.946232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.664757, 48.463478, 54.911331>,  <46.653431, 48.224663, 54.890392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.664757, 48.463478, 54.911331>,  <46.683636, 48.861504, 54.946232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.664757, 48.463478, 54.911331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512096, -0.050896, 0.857419,
		-0.857631, 0.085146, -0.507168,
		-0.047193, -0.995068, -0.087252,
		46.650600, 48.164959, 54.885155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043507, 48.700283, 55.077034>,  <46.683636, 48.861504, 54.946232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043507, 48.700283, 55.077034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.234146, 48.352188, 55.126915>,  <46.348530, 48.143333, 55.156841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.234146, 48.352188, 55.126915>,  <46.043507, 48.700283, 55.077034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.234146, 48.352188, 55.126915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356002, -0.061353, 0.932469,
		-0.803817, -0.488801, -0.339046,
		0.476593, -0.870235, 0.124698,
		46.377125, 48.091118, 55.164326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460838, 48.197220, 55.355324>,  <46.043507, 48.700283, 55.077034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460838, 48.197220, 55.355324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.816360, 48.043282, 55.454865>,  <46.029675, 47.950920, 55.514587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.816360, 48.043282, 55.454865>,  <45.460838, 48.197220, 55.355324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.816360, 48.043282, 55.454865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299876, -0.077761, 0.950804,
		-0.346558, -0.919701, -0.184519,
		0.888804, -0.384842, 0.248848,
		46.083000, 47.927830, 55.529518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838921, 47.702461, 55.256447>,  <45.460838, 48.197220, 55.355324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838921, 47.702461, 55.256447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.464790, 47.827606, 55.190376>,  <44.240311, 47.902691, 55.150734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.464790, 47.827606, 55.190376>,  <44.838921, 47.702461, 55.256447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464790, 47.827606, 55.190376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060475, -0.318624, -0.945950,
		-0.348581, -0.894760, 0.279097,
		-0.935326, 0.312862, -0.165177,
		44.184193, 47.921463, 55.140823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483021, 47.168205, 54.911591>,  <44.838921, 47.702461, 55.256447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.483021, 47.168205, 54.911591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.298367, 47.510849, 54.819397>,  <44.187576, 47.716434, 54.764080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.298367, 47.510849, 54.819397>,  <44.483021, 47.168205, 54.911591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298367, 47.510849, 54.819397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013043, -0.266352, -0.963787,
		-0.886975, -0.441910, 0.134130,
		-0.461633, 0.856605, -0.230484,
		44.159878, 47.767830, 54.750252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955513, 46.994625, 54.494911>,  <44.483021, 47.168205, 54.911591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955513, 46.994625, 54.494911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.053421, 47.378052, 54.436619>,  <44.112167, 47.608109, 54.401642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.053421, 47.378052, 54.436619>,  <43.955513, 46.994625, 54.494911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053421, 47.378052, 54.436619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046915, -0.161836, -0.985702,
		-0.968445, 0.234434, -0.084583,
		0.244771, 0.958567, -0.145731,
		44.126854, 47.665623, 54.392899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541233, 47.176498, 53.958817>,  <43.955513, 46.994625, 54.494911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.541233, 47.176498, 53.958817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.801025, 47.480209, 53.942432>,  <43.956902, 47.662434, 53.932602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.801025, 47.480209, 53.942432>,  <43.541233, 47.176498, 53.958817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801025, 47.480209, 53.942432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028921, -0.029167, -0.999156,
		-0.759829, 0.650115, 0.003016,
		0.649479, 0.759275, -0.040965,
		43.995869, 47.707993, 53.930141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212189, 47.492851, 53.503765>,  <43.541233, 47.176498, 53.958817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212189, 47.492851, 53.503765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.571396, 47.668793, 53.507500>,  <43.786922, 47.774357, 53.509739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.571396, 47.668793, 53.507500>,  <43.212189, 47.492851, 53.503765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571396, 47.668793, 53.507500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099342, -0.182064, -0.978256,
		-0.428587, 0.879423, -0.207193,
		0.898023, 0.439851, 0.009333,
		43.840801, 47.800747, 53.510300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
