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
	<2.489856, 3.666910, 3.337728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.532720, 3.280449, 3.243864>,  <2.558438, 3.048572, 3.187546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.532720, 3.280449, 3.243864>,  <2.489856, 3.666910, 3.337728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.532720, 3.280449, 3.243864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033945, -0.232327, 0.972045,
		-0.993662, -0.112129, 0.007900,
		0.107159, -0.966153, -0.234660,
		2.564867, 2.990603, 3.173466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.868519, 3.206079, 3.495118>,  <2.489856, 3.666910, 3.337728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.868519, 3.206079, 3.495118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.209894, 2.999279, 3.521515>,  <2.414719, 2.875199, 3.537353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.209894, 2.999279, 3.521515>,  <1.868519, 3.206079, 3.495118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.209894, 2.999279, 3.521515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024179, 0.087207, 0.995897,
		-0.520635, -0.851531, 0.061925,
		0.853437, -0.517001, 0.065992,
		2.465925, 2.844179, 3.541312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.875202, 3.015894, 4.201165>,  <1.868519, 3.206079, 3.495118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.875202, 3.015894, 4.201165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.237097, 2.891079, 4.085178>,  <2.454234, 2.816190, 4.015586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.237097, 2.891079, 4.085178>,  <1.875202, 3.015894, 4.201165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.237097, 2.891079, 4.085178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296711, -0.026774, 0.954592,
		-0.305634, -0.949692, 0.068362,
		0.904738, -0.312039, -0.289967,
		2.508518, 2.797467, 3.998188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.117405, 2.383138, 4.629151>,  <1.875202, 3.015894, 4.201165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.117405, 2.383138, 4.629151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.428892, 2.614899, 4.532907>,  <2.615785, 2.753955, 4.475162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.428892, 2.614899, 4.532907>,  <2.117405, 2.383138, 4.629151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.428892, 2.614899, 4.532907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312056, -0.025008, 0.949734,
		0.544260, -0.814659, -0.200280,
		0.778718, 0.579401, -0.240609,
		2.662508, 2.788719, 4.460725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.730435, 2.154033, 4.954050>,  <2.117405, 2.383138, 4.629151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.730435, 2.154033, 4.954050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.783681, 2.547417, 4.904913>,  <2.815629, 2.783447, 4.875431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.783681, 2.547417, 4.904913>,  <2.730435, 2.154033, 4.954050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.783681, 2.547417, 4.904913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404035, 0.059332, 0.912817,
		0.905006, -0.171143, -0.389454,
		0.133115, 0.983458, -0.122843,
		2.823616, 2.842454, 4.868060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.437238, 2.398164, 4.969706>,  <2.730435, 2.154033, 4.954050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.437238, 2.398164, 4.969706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.226950, 2.705315, 5.116121>,  <3.100777, 2.889605, 5.203970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.226950, 2.705315, 5.116121>,  <3.437238, 2.398164, 4.969706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.226950, 2.705315, 5.116121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535120, -0.035966, 0.844010,
		0.661260, 0.639588, -0.391998,
		-0.525720, 0.767876, 0.366039,
		3.069234, 2.935678, 5.225933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.913364, 2.719850, 5.302188>,  <3.437238, 2.398164, 4.969706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.913364, 2.719850, 5.302188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.580499, 2.870235, 5.465237>,  <3.380780, 2.960467, 5.563066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.580499, 2.870235, 5.465237>,  <3.913364, 2.719850, 5.302188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.580499, 2.870235, 5.465237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428717, -0.030045, 0.902939,
		0.351719, 0.926148, -0.136179,
		-0.832164, 0.375963, 0.407622,
		3.330850, 2.983024, 5.587523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.183873, 3.177628, 5.754825>,  <3.913364, 2.719850, 5.302188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.183873, 3.177628, 5.754825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.805599, 3.102364, 5.860863>,  <3.578635, 3.057205, 5.924485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.805599, 3.102364, 5.860863>,  <4.183873, 3.177628, 5.754825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.805599, 3.102364, 5.860863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268248, 0.008977, 0.963308,
		-0.183638, 0.982097, 0.041985,
		-0.945685, -0.188162, 0.265094,
		3.521894, 3.045915, 5.940391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.928963, 1.308978, 2.347914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.986671, 1.704399, 2.330248>,  <3.021297, 1.941652, 2.319648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.986671, 1.704399, 2.330248>,  <2.928963, 1.308978, 2.347914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.986671, 1.704399, 2.330248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872183, -0.148118, -0.466217,
		-0.467421, 0.028740, -0.883567,
		0.144272, 0.988552, -0.044167,
		3.029953, 2.000965, 2.316998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.095554, 1.448748, 1.694358>,  <2.928963, 1.308978, 2.347914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.095554, 1.448748, 1.694358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.260239, 1.732666, 1.922983>,  <3.359049, 1.903017, 2.060158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.260239, 1.732666, 1.922983>,  <3.095554, 1.448748, 1.694358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.260239, 1.732666, 1.922983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830513, -0.034048, -0.555958,
		-0.375156, 0.703584, -0.603512,
		0.411711, 0.709796, 0.571562,
		3.383752, 1.945605, 2.094452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.387595, 2.155095, 1.362306>,  <3.095554, 1.448748, 1.694358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.387595, 2.155095, 1.362306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.610401, 2.054626, 1.678949>,  <3.744085, 1.994345, 1.868936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.610401, 2.054626, 1.678949>,  <3.387595, 2.155095, 1.362306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.610401, 2.054626, 1.678949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822051, 0.031121, -0.568562,
		0.118171, 0.967442, 0.223812,
		0.557016, -0.251172, 0.791609,
		3.777506, 1.979275, 1.916432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.685301, 2.273809, 1.578530>,  <3.387595, 2.155095, 1.362306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.685301, 2.273809, 1.578530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.939804, 2.580093, 1.540876>,  <3.092506, 2.763864, 1.518284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.939804, 2.580093, 1.540876>,  <2.685301, 2.273809, 1.578530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.939804, 2.580093, 1.540876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229343, 0.071231, -0.970736,
		-0.736599, 0.639227, 0.220932,
		0.636258, 0.765712, -0.094133,
		3.130682, 2.809807, 1.512636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.302710, 2.794612, 1.365850>,  <2.685301, 2.273809, 1.578530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.302710, 2.794612, 1.365850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.674728, 2.878647, 1.245266>,  <2.897939, 2.929068, 1.172916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.674728, 2.878647, 1.245266>,  <2.302710, 2.794612, 1.365850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.674728, 2.878647, 1.245266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353519, 0.287896, -0.890023,
		-0.100193, 0.934334, 0.342026,
		0.930046, 0.210087, -0.301459,
		2.953742, 2.941673, 1.154828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.348456, 3.558927, 1.204387>,  <2.302710, 2.794612, 1.365850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.348456, 3.558927, 1.204387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.610569, 3.346733, 0.989281>,  <2.767837, 3.219417, 0.860217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.610569, 3.346733, 0.989281>,  <2.348456, 3.558927, 1.204387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.610569, 3.346733, 0.989281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309975, 0.460371, -0.831850,
		0.688855, 0.711790, 0.137236,
		0.655282, -0.530484, -0.537766,
		2.807154, 3.187588, 0.827951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.275610, 3.989358, 0.678938>,  <2.348456, 3.558927, 1.204387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.275610, 3.989358, 0.678938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.493340, 3.669510, 0.577494>,  <2.623977, 3.477601, 0.516627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.493340, 3.669510, 0.577494>,  <2.275610, 3.989358, 0.678938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.493340, 3.669510, 0.577494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365619, 0.045957, -0.929629,
		0.755006, 0.598744, -0.267341,
		0.544324, -0.799620, -0.253610,
		2.656637, 3.429624, 0.501411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.843657, 4.064041, 0.180323>,  <2.275610, 3.989358, 0.678938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.843657, 4.064041, 0.180323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.631287, 3.725136, 0.173796>,  <2.503865, 3.521793, 0.169880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.631287, 3.725136, 0.173796>,  <2.843657, 4.064041, 0.180323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.631287, 3.725136, 0.173796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196171, 0.141615, -0.970290,
		0.824400, -0.511950, -0.241395,
		-0.530925, -0.847262, -0.016318,
		2.472009, 3.470957, 0.168900>
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
