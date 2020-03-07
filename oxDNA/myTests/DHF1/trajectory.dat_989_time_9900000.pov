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
	<0.623037, 0.208719, 1.026375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.636208, 0.536571, 1.255154>,  <0.644110, 0.733282, 1.392421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.636208, 0.536571, 1.255154>,  <0.623037, 0.208719, 1.026375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.636208, 0.536571, 1.255154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476223, -0.515987, 0.712018,
		0.878708, 0.248930, -0.407316,
		0.032927, 0.819629, 0.571948,
		0.646086, 0.782460, 1.426738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.300535, 0.290982, 1.312980>,  <0.623037, 0.208719, 1.026375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.300535, 0.290982, 1.312980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.016533, 0.412703, 1.567001>,  <0.846132, 0.485736, 1.719414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.016533, 0.412703, 1.567001>,  <1.300535, 0.290982, 1.312980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.016533, 0.412703, 1.567001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347904, -0.632492, 0.692038,
		0.612256, 0.712288, 0.343204,
		-0.710004, 0.304302, 0.635054,
		0.803532, 0.503994, 1.757518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.588663, 0.673203, 1.852185>,  <1.300535, 0.290982, 1.312980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.588663, 0.673203, 1.852185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.968391, 0.708664, 1.972803>,  <2.196229, 0.729940, 2.045174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.968391, 0.708664, 1.972803>,  <1.588663, 0.673203, 1.852185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.968391, 0.708664, 1.972803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301671, 0.526279, 0.795000,
		-0.088219, -0.845678, 0.526351,
		0.949322, 0.088651, 0.301545,
		2.253188, 0.735259, 2.063267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.512737, 0.519173, 2.487559>,  <1.588663, 0.673203, 1.852185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.512737, 0.519173, 2.487559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.831451, 0.752764, 2.425459>,  <2.022680, 0.892918, 2.388199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.831451, 0.752764, 2.425459>,  <1.512737, 0.519173, 2.487559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.831451, 0.752764, 2.425459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287648, 0.592510, 0.752456,
		0.531403, -0.554890, 0.640084,
		0.796787, 0.583976, -0.155248,
		2.070487, 0.927957, 2.378884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.910058, 0.561951, 3.193470>,  <1.512737, 0.519173, 2.487559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.910058, 0.561951, 3.193470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.917511, 0.870318, 2.938805>,  <1.921983, 1.055338, 2.786005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.917511, 0.870318, 2.938805>,  <1.910058, 0.561951, 3.193470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.917511, 0.870318, 2.938805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260590, 0.618509, 0.741309,
		0.965270, 0.152095, 0.212418,
		0.018633, 0.770917, -0.636663,
		1.923101, 1.101593, 2.747806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.018727, 1.120771, 3.645271>,  <1.910058, 0.561951, 3.193470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.018727, 1.120771, 3.645271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.885178, 1.294570, 3.310669>,  <1.805048, 1.398849, 3.109908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.885178, 1.294570, 3.310669>,  <2.018727, 1.120771, 3.645271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.885178, 1.294570, 3.310669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624248, 0.563017, 0.541596,
		0.706288, 0.703012, 0.083256,
		-0.333874, 0.434496, -0.836506,
		1.785015, 1.424918, 3.059717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.134646, 1.889915, 3.749435>,  <2.018727, 1.120771, 3.645271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.134646, 1.889915, 3.749435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.831268, 1.823146, 3.497435>,  <1.649242, 1.783085, 3.346235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.831268, 1.823146, 3.497435>,  <2.134646, 1.889915, 3.749435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.831268, 1.823146, 3.497435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587592, 0.593323, 0.550184,
		0.281955, 0.787467, -0.548085,
		-0.758443, -0.166924, -0.630000,
		1.603735, 1.773069, 3.308434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.931688, 2.599655, 3.547807>,  <2.134646, 1.889915, 3.749435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.931688, 2.599655, 3.547807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.631187, 2.343499, 3.483902>,  <1.450887, 2.189806, 3.445559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.631187, 2.343499, 3.483902>,  <1.931688, 2.599655, 3.547807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.631187, 2.343499, 3.483902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598666, 0.559241, 0.573453,
		-0.277887, 0.526451, -0.803510,
		-0.751251, -0.640389, -0.159763,
		1.405812, 2.151382, 3.435973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.026820, 2.942609, 3.501435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.641464, 3.012766, 3.420326>,  <0.410251, 3.054860, 3.371661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.641464, 3.012766, 3.420326>,  <1.026820, 2.942609, 3.501435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.641464, 3.012766, 3.420326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011983, -0.783737, -0.620977,
		-0.267835, -0.595813, 0.757147,
		-0.963391, 0.175392, -0.202773,
		0.352447, 3.065383, 3.359494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.522076, 2.436208, 3.808840>,  <1.026820, 2.942609, 3.501435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.522076, 2.436208, 3.808840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.397911, 2.588598, 3.460472>,  <0.323412, 2.680032, 3.251451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.397911, 2.588598, 3.460472>,  <0.522076, 2.436208, 3.808840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.397911, 2.588598, 3.460472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047208, -0.908870, -0.414400,
		-0.949429, -0.169749, 0.264138,
		-0.310411, 0.380975, -0.870921,
		0.304788, 2.702891, 3.199196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.326729, 1.840744, 3.554575>,  <0.522076, 2.436208, 3.808840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.326729, 1.840744, 3.554575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.357674, 2.107946, 3.258526>,  <0.376240, 2.268268, 3.080896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.357674, 2.107946, 3.258526>,  <0.326729, 1.840744, 3.554575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.357674, 2.107946, 3.258526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082756, -0.735484, -0.672470,
		-0.993563, 0.113272, -0.001616,
		0.077361, 0.668007, -0.740123,
		0.380882, 2.308348, 3.036489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.334238, 1.348901, 2.987418>,  <0.326729, 1.840744, 3.554575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.334238, 1.348901, 2.987418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.620934, 1.598330, 3.112282>,  <0.792951, 1.747987, 3.187200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.620934, 1.598330, 3.112282>,  <0.334238, 1.348901, 2.987418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.620934, 1.598330, 3.112282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490444, -0.132539, -0.861335,
		-0.495731, 0.770449, -0.400823,
		0.716740, 0.623571, 0.312158,
		0.835955, 1.785401, 3.205929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.638312, 1.708572, 2.425686>,  <0.334238, 1.348901, 2.987418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.638312, 1.708572, 2.425686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.925293, 1.747129, 2.701649>,  <1.097481, 1.770264, 2.867226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.925293, 1.747129, 2.701649>,  <0.638312, 1.708572, 2.425686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.925293, 1.747129, 2.701649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681058, -0.305155, -0.665613,
		0.146368, 0.947412, -0.284583,
		0.717452, 0.096393, 0.689907,
		1.140528, 1.776047, 2.908621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.133653, 1.920282, 2.044960>,  <0.638312, 1.708572, 2.425686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.133653, 1.920282, 2.044960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.342339, 1.790350, 2.360504>,  <1.467550, 1.712391, 2.549830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.342339, 1.790350, 2.360504>,  <1.133653, 1.920282, 2.044960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.342339, 1.790350, 2.360504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770680, -0.217116, -0.599094,
		0.365877, 0.920514, 0.137066,
		0.521715, -0.324829, 0.788860,
		1.498853, 1.692901, 2.597162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.789777, 2.182429, 2.109921>,  <1.133653, 1.920282, 2.044960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.789777, 2.182429, 2.109921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.823822, 1.820024, 2.275764>,  <1.844249, 1.602582, 2.375271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.823822, 1.820024, 2.275764>,  <1.789777, 2.182429, 2.109921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.823822, 1.820024, 2.275764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894691, -0.113637, -0.431989,
		0.438501, 0.407716, 0.800927,
		0.085113, -0.906010, 0.414610,
		1.849356, 1.548221, 2.400147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.453212, 2.119197, 2.456860>,  <1.789777, 2.182429, 2.109921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.453212, 2.119197, 2.456860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.315521, 1.749151, 2.392769>,  <2.232907, 1.527124, 2.354314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.315521, 1.749151, 2.392769>,  <2.453212, 2.119197, 2.456860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.315521, 1.749151, 2.392769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881573, -0.259760, -0.394149,
		0.323012, -0.276929, 0.904972,
		-0.344227, -0.925114, -0.160227,
		2.212253, 1.471617, 2.344701>
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
