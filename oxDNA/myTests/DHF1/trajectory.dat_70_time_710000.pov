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
	<0.441842, 3.055767, 2.996164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.390399, 2.662468, 3.047829>,  <0.359533, 2.426488, 3.078828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.390399, 2.662468, 3.047829>,  <0.441842, 3.055767, 2.996164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.390399, 2.662468, 3.047829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800800, -0.026142, 0.598362,
		-0.584961, 0.180388, 0.790747,
		-0.128608, -0.983248, 0.129163,
		0.351816, 2.367493, 3.086577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.625723, 3.099114, 3.631723>,  <0.441842, 3.055767, 2.996164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.625723, 3.099114, 3.631723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.689084, 2.744953, 3.456923>,  <0.727100, 2.532456, 3.352042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.689084, 2.744953, 3.456923>,  <0.625723, 3.099114, 3.631723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.689084, 2.744953, 3.456923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878747, -0.075403, 0.471295,
		-0.450237, -0.458667, 0.766101,
		0.158401, -0.885403, -0.437001,
		0.736604, 2.479332, 3.325822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.799157, 2.591825, 4.157342>,  <0.625723, 3.099114, 3.631723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.799157, 2.591825, 4.157342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.945532, 2.470737, 3.805330>,  <1.033357, 2.398085, 3.594123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.945532, 2.470737, 3.805330>,  <0.799157, 2.591825, 4.157342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.945532, 2.470737, 3.805330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902459, -0.115513, 0.415000,
		-0.227283, -0.946054, 0.230921,
		0.365938, -0.302720, -0.880029,
		1.055313, 2.379922, 3.541322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.065059, 1.901207, 4.363276>,  <0.799157, 2.591825, 4.157342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.065059, 1.901207, 4.363276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.259608, 2.057079, 4.050459>,  <1.376338, 2.150602, 3.862769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.259608, 2.057079, 4.050459>,  <1.065059, 1.901207, 4.363276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.259608, 2.057079, 4.050459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844445, -0.439504, 0.306185,
		-0.224396, -0.809312, -0.542826,
		0.486373, 0.389680, -0.782043,
		1.405520, 2.173983, 3.815846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.387678, 1.305431, 4.003394>,  <1.065059, 1.901207, 4.363276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.387678, 1.305431, 4.003394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.597603, 1.630016, 3.900555>,  <1.723558, 1.824767, 3.838851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.597603, 1.630016, 3.900555>,  <1.387678, 1.305431, 4.003394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.597603, 1.630016, 3.900555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850017, -0.483558, 0.208908,
		0.045200, -0.328175, -0.943535,
		0.524813, 0.811463, -0.257097,
		1.755047, 1.873455, 3.823425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.982915, 1.133894, 3.493993>,  <1.387678, 1.305431, 4.003394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.982915, 1.133894, 3.493993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.078714, 1.484787, 3.660416>,  <2.136194, 1.695323, 3.760270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.078714, 1.484787, 3.660416>,  <1.982915, 1.133894, 3.493993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.078714, 1.484787, 3.660416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967897, -0.249385, -0.031343,
		0.076264, 0.410208, -0.908798,
		0.239498, 0.877232, 0.416058,
		2.150564, 1.747957, 3.785233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.529845, 1.341601, 3.085205>,  <1.982915, 1.133894, 3.493993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.529845, 1.341601, 3.085205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.536983, 1.533859, 3.435898>,  <2.541267, 1.649214, 3.646314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.536983, 1.533859, 3.435898>,  <2.529845, 1.341601, 3.085205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.536983, 1.533859, 3.435898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960818, -0.250832, 0.117953,
		0.276606, 0.840276, -0.466289,
		0.017847, 0.480645, 0.876733,
		2.542338, 1.678053, 3.698918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.160341, 1.807225, 3.070131>,  <2.529845, 1.341601, 3.085205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.160341, 1.807225, 3.070131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.075430, 1.726162, 3.452517>,  <3.024483, 1.677524, 3.681948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.075430, 1.726162, 3.452517>,  <3.160341, 1.807225, 3.070131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.075430, 1.726162, 3.452517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805708, -0.589858, 0.053867,
		0.552967, 0.781663, 0.288498,
		-0.212279, -0.202658, 0.955964,
		3.011746, 1.665365, 3.739306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.515205, 1.357980, 3.820572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.428179, 1.396210, 4.209114>,  <4.375963, 1.419147, 4.442239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.428179, 1.396210, 4.209114>,  <4.515205, 1.357980, 3.820572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.428179, 1.396210, 4.209114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976045, -0.022673, -0.216385,
		0.001345, -0.995165, 0.098207,
		-0.217566, 0.095563, 0.971357,
		4.362909, 1.424882, 4.500521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.063098, 0.845337, 4.023422>,  <4.515205, 1.357980, 3.820572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.063098, 0.845337, 4.023422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.015406, 1.158867, 4.267193>,  <3.986790, 1.346985, 4.413455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.015406, 1.158867, 4.267193>,  <4.063098, 0.845337, 4.023422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.015406, 1.158867, 4.267193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985347, -0.018015, -0.169608,
		-0.121965, -0.620720, 0.774488,
		-0.119232, 0.783825, 0.609427,
		3.979636, 1.394014, 4.450021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.463242, 0.675950, 4.313509>,  <4.063098, 0.845337, 4.023422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.463242, 0.675950, 4.313509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.522663, 1.054939, 4.426807>,  <3.558316, 1.282333, 4.494786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.522663, 1.054939, 4.426807>,  <3.463242, 0.675950, 4.313509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.522663, 1.054939, 4.426807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986392, 0.162371, -0.025813,
		-0.070448, -0.275556, 0.958700,
		0.148552, 0.947473, 0.283245,
		3.567229, 1.339181, 4.511781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.792835, 0.936898, 4.679036>,  <3.463242, 0.675950, 4.313509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.792835, 0.936898, 4.679036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.016691, 1.241554, 4.548374>,  <3.151005, 1.424348, 4.469977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.016691, 1.241554, 4.548374>,  <2.792835, 0.936898, 4.679036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.016691, 1.241554, 4.548374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827892, 0.531587, -0.178916,
		0.037376, 0.370564, 0.928055,
		0.559641, 0.761642, -0.326655,
		3.184584, 1.470047, 4.450377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.600400, 1.625202, 4.995818>,  <2.792835, 0.936898, 4.679036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.600400, 1.625202, 4.995818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.748495, 1.654991, 4.625439>,  <2.837352, 1.672865, 4.403211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.748495, 1.654991, 4.625439>,  <2.600400, 1.625202, 4.995818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.748495, 1.654991, 4.625439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706164, 0.670179, -0.228455,
		0.603537, 0.738454, 0.300715,
		0.370236, 0.074473, -0.925947,
		2.859566, 1.677333, 4.347654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.675803, 2.367497, 4.821185>,  <2.600400, 1.625202, 4.995818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.675803, 2.367497, 4.821185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.630518, 2.153847, 4.486069>,  <2.603347, 2.025656, 4.284999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.630518, 2.153847, 4.486069>,  <2.675803, 2.367497, 4.821185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.630518, 2.153847, 4.486069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730455, 0.616331, -0.294230,
		0.673512, 0.578658, -0.459931,
		-0.113212, -0.534127, -0.837790,
		2.596554, 1.993609, 4.234732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.450946, 2.864595, 4.367201>,  <2.675803, 2.367497, 4.821185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.450946, 2.864595, 4.367201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.359600, 2.517738, 4.190151>,  <2.304793, 2.309625, 4.083921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.359600, 2.517738, 4.190151>,  <2.450946, 2.864595, 4.367201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.359600, 2.517738, 4.190151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854265, 0.396547, -0.336128,
		0.466992, 0.301360, -0.831324,
		-0.228364, -0.867141, -0.442626,
		2.291091, 2.257596, 4.057364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.356128, 3.067238, 3.658617>,  <2.450946, 2.864595, 4.367201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.356128, 3.067238, 3.658617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.173172, 2.713539, 3.696354>,  <2.063398, 2.501320, 3.718996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.173172, 2.713539, 3.696354>,  <2.356128, 3.067238, 3.658617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.173172, 2.713539, 3.696354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871721, 0.424866, -0.244114,
		0.175774, -0.193896, -0.965146,
		-0.457390, -0.884247, 0.094343,
		2.035955, 2.448265, 3.724657>
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
