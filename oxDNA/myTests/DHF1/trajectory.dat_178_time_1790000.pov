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
	<1.593118, 1.479792, 2.608766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.993038, 1.486786, 2.604919>,  <2.232991, 1.490982, 2.602612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.993038, 1.486786, 2.604919>,  <1.593118, 1.479792, 2.608766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.993038, 1.486786, 2.604919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008984, 0.035906, 0.999315,
		0.017809, -0.999202, 0.035742,
		0.999801, 0.017476, -0.009616,
		2.292979, 1.492032, 2.602035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.942888, 0.979337, 3.035326>,  <1.593118, 1.479792, 2.608766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.942888, 0.979337, 3.035326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.173214, 1.304810, 3.003426>,  <2.311409, 1.500093, 2.984285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.173214, 1.304810, 3.003426>,  <1.942888, 0.979337, 3.035326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.173214, 1.304810, 3.003426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052361, 0.060643, 0.996785,
		0.815902, -0.578139, -0.007686,
		0.575814, 0.813682, -0.079751,
		2.345958, 1.548914, 2.979500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.439956, 0.990554, 3.651644>,  <1.942888, 0.979337, 3.035326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.439956, 0.990554, 3.651644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.467693, 1.373642, 3.539955>,  <2.484336, 1.603495, 3.472942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.467693, 1.373642, 3.539955>,  <2.439956, 0.990554, 3.651644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.467693, 1.373642, 3.539955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171764, 0.264253, 0.949035,
		0.982695, -0.113769, -0.146177,
		0.069343, 0.957720, -0.279222,
		2.488496, 1.660958, 3.456189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.028634, 0.851009, 3.353741>,  <2.439956, 0.990554, 3.651644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.028634, 0.851009, 3.353741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.968533, 0.817886, 3.747810>,  <2.932472, 0.798012, 3.984252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.968533, 0.817886, 3.747810>,  <3.028634, 0.851009, 3.353741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.968533, 0.817886, 3.747810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626121, -0.763208, -0.159644,
		0.765112, -0.640824, 0.062827,
		-0.150254, -0.082808, 0.985173,
		2.923456, 0.793044, 4.043363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.994907, 0.178049, 3.484206>,  <3.028634, 0.851009, 3.353741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.994907, 0.178049, 3.484206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.803036, 0.317398, 3.806335>,  <2.687913, 0.401008, 3.999613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.803036, 0.317398, 3.806335>,  <2.994907, 0.178049, 3.484206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.803036, 0.317398, 3.806335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621885, -0.782457, -0.031934,
		0.619006, -0.516137, 0.591975,
		-0.479677, 0.348373, 0.805323,
		2.659132, 0.421910, 4.047933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.915250, -0.433860, 3.913374>,  <2.994907, 0.178049, 3.484206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.915250, -0.433860, 3.913374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.648952, -0.164047, 4.040993>,  <2.489174, -0.002160, 4.117564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.648952, -0.164047, 4.040993>,  <2.915250, -0.433860, 3.913374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.648952, -0.164047, 4.040993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696134, -0.715407, 0.059918,
		0.268665, -0.182210, 0.945843,
		-0.665745, 0.674531, 0.319047,
		2.449229, 0.038312, 4.136707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.620001, -0.725876, 4.543709>,  <2.915250, -0.433860, 3.913374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.620001, -0.725876, 4.543709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.371807, -0.453781, 4.387619>,  <2.222891, -0.290524, 4.293965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.371807, -0.453781, 4.387619>,  <2.620001, -0.725876, 4.543709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.371807, -0.453781, 4.387619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774644, -0.609163, 0.169845,
		-0.122175, 0.407672, 0.904918,
		-0.620484, 0.680238, -0.390225,
		2.185662, -0.249710, 4.270552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.948431, -0.897165, 4.858768>,  <2.620001, -0.725876, 4.543709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.948431, -0.897165, 4.858768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.860615, -0.661026, 4.548080>,  <1.807925, -0.519343, 4.361668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.860615, -0.661026, 4.548080>,  <1.948431, -0.897165, 4.858768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.860615, -0.661026, 4.548080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812944, -0.550853, -0.188898,
		-0.539374, 0.589960, 0.600852,
		-0.219539, 0.590346, -0.776720,
		1.794753, -0.483922, 4.315064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.294804, 3.516255, 4.406601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.673492, 3.400528, 4.350014>,  <2.900706, 3.331092, 4.316061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.673492, 3.400528, 4.350014>,  <2.294804, 3.516255, 4.406601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.673492, 3.400528, 4.350014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194408, -0.163198, -0.967250,
		0.256755, 0.943219, -0.210749,
		0.946722, -0.289317, -0.141468,
		2.957509, 3.313733, 4.307573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.576857, 3.927987, 3.880248>,  <2.294804, 3.516255, 4.406601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.576857, 3.927987, 3.880248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.780525, 3.583923, 3.892075>,  <2.902726, 3.377486, 3.899171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.780525, 3.583923, 3.892075>,  <2.576857, 3.927987, 3.880248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.780525, 3.583923, 3.892075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217778, -0.161997, -0.962460,
		0.832658, 0.483617, -0.269807,
		0.509170, -0.860158, 0.029567,
		2.933276, 3.325876, 3.900945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.988840, 3.881063, 3.469192>,  <2.576857, 3.927987, 3.880248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.988840, 3.881063, 3.469192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.642714, 3.983032, 3.641815>,  <1.435038, 4.044214, 3.745389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.642714, 3.983032, 3.641815>,  <1.988840, 3.881063, 3.469192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.642714, 3.983032, 3.641815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387555, 0.886293, 0.253548,
		-0.317853, 0.386652, -0.865720,
		-0.865316, 0.254923, 0.431559,
		1.383119, 4.059509, 3.771283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.888542, 4.537033, 3.085378>,  <1.988840, 3.881063, 3.469192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.888542, 4.537033, 3.085378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.690248, 4.468506, 3.425941>,  <1.571272, 4.427390, 3.630280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.690248, 4.468506, 3.425941>,  <1.888542, 4.537033, 3.085378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.690248, 4.468506, 3.425941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292452, 0.890165, 0.349397,
		-0.817753, 0.422204, -0.391182,
		-0.495733, -0.171318, 0.851410,
		1.541528, 4.417110, 3.681364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.366908, 5.134362, 3.248944>,  <1.888542, 4.537033, 3.085378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.366908, 5.134362, 3.248944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.529222, 4.941223, 3.559349>,  <1.626611, 4.825340, 3.745592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.529222, 4.941223, 3.559349>,  <1.366908, 5.134362, 3.248944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.529222, 4.941223, 3.559349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494760, 0.829945, 0.257689,
		-0.768472, 0.279374, 0.575674,
		0.405786, -0.482847, 0.776013,
		1.650958, 4.796369, 3.792153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.240889, 5.571685, 3.833478>,  <1.366908, 5.134362, 3.248944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.240889, 5.571685, 3.833478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.529917, 5.322052, 3.952415>,  <1.703334, 5.172272, 4.023778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.529917, 5.322052, 3.952415>,  <1.240889, 5.571685, 3.833478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.529917, 5.322052, 3.952415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557279, 0.780371, 0.283656,
		-0.409063, -0.039258, 0.911661,
		0.722570, -0.624083, 0.297344,
		1.746688, 5.134827, 4.041619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.509393, 5.851735, 4.518946>,  <1.240889, 5.571685, 3.833478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.509393, 5.851735, 4.518946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.802025, 5.610947, 4.390930>,  <1.977604, 5.466474, 4.314121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.802025, 5.610947, 4.390930>,  <1.509393, 5.851735, 4.518946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.802025, 5.610947, 4.390930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673844, 0.567153, 0.473574,
		-0.103566, -0.562112, 0.820551,
		0.731579, -0.601970, -0.320038,
		2.021499, 5.430356, 4.294919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.050477, 5.798706, 5.121571>,  <1.509393, 5.851735, 4.518946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.050477, 5.798706, 5.121571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.234772, 5.687683, 4.784363>,  <2.345349, 5.621069, 4.582038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.234772, 5.687683, 4.784363>,  <2.050477, 5.798706, 5.121571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.234772, 5.687683, 4.784363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803228, 0.534456, 0.263024,
		0.377552, -0.798322, 0.469187,
		0.460738, -0.277558, -0.843020,
		2.372993, 5.604416, 4.531457>
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
