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
	<-0.608390, 6.134962, 4.026947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.839279, 5.809334, 4.001320>,  <-0.977813, 5.613957, 3.985944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.839279, 5.809334, 4.001320>,  <-0.608390, 6.134962, 4.026947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.839279, 5.809334, 4.001320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804748, -0.580413, 0.124503,
		-0.138539, 0.020309, 0.990149,
		-0.577224, -0.814069, -0.064067,
		-1.012446, 5.565113, 3.982100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.611544, 5.556017, 4.669508>,  <-0.608390, 6.134962, 4.026947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.611544, 5.556017, 4.669508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.671005, 5.371788, 4.319473>,  <-0.706682, 5.261250, 4.109453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.671005, 5.371788, 4.319473>,  <-0.611544, 5.556017, 4.669508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.671005, 5.371788, 4.319473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872512, -0.477582, 0.103143,
		-0.465429, -0.748190, 0.472850,
		-0.148654, -0.460574, -0.875085,
		-0.715601, 5.233616, 4.056948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.649433, 4.928776, 4.851076>,  <-0.611544, 5.556017, 4.669508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.649433, 4.928776, 4.851076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.510063, 4.967751, 4.478172>,  <-0.426441, 4.991135, 4.254430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.510063, 4.967751, 4.478172>,  <-0.649433, 4.928776, 4.851076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.510063, 4.967751, 4.478172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834314, -0.485552, 0.261072,
		-0.427223, -0.868761, -0.250471,
		0.348425, 0.097436, -0.932259,
		-0.405536, 4.996981, 4.198495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.485012, 4.304443, 4.667150>,  <-0.649433, 4.928776, 4.851076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.485012, 4.304443, 4.667150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.283142, 4.553825, 4.428284>,  <-0.162020, 4.703454, 4.284964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.283142, 4.553825, 4.428284>,  <-0.485012, 4.304443, 4.667150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.283142, 4.553825, 4.428284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858188, -0.437536, 0.268469,
		-0.093903, -0.647970, -0.755855,
		0.504674, 0.623456, -0.597166,
		-0.131740, 4.740862, 4.249134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.113182, 3.957073, 4.133453>,  <-0.485012, 4.304443, 4.667150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.113182, 3.957073, 4.133453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.077835, 4.289406, 4.247765>,  <0.192445, 4.488806, 4.316351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.077835, 4.289406, 4.247765>,  <-0.113182, 3.957073, 4.133453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.077835, 4.289406, 4.247765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825352, -0.535724, 0.178307,
		0.301242, 0.150719, -0.941561,
		0.477543, 0.830833, 0.285779,
		0.221098, 4.538656, 4.333498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.303989, 4.016500, 3.687459>,  <-0.113182, 3.957073, 4.133453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.303989, 4.016500, 3.687459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.479866, 4.233368, 3.973877>,  <0.585392, 4.363489, 4.145728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.479866, 4.233368, 3.973877>,  <0.303989, 4.016500, 3.687459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.479866, 4.233368, 3.973877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893789, -0.342589, -0.289439,
		0.088384, 0.767258, -0.635219,
		0.439693, 0.542169, 0.716046,
		0.611774, 4.396019, 4.188691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.884750, 4.351418, 3.404315>,  <0.303989, 4.016500, 3.687459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.884750, 4.351418, 3.404315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.949951, 4.341011, 3.798828>,  <0.989072, 4.334767, 4.035536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.949951, 4.341011, 3.798828>,  <0.884750, 4.351418, 3.404315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.949951, 4.341011, 3.798828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859428, -0.487229, -0.154890,
		0.484575, 0.872887, -0.057058,
		0.163002, -0.026018, 0.986283,
		0.998852, 4.333206, 4.094713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.631330, 4.528687, 3.453605>,  <0.884750, 4.351418, 3.404315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.631330, 4.528687, 3.453605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.504974, 4.341721, 3.783875>,  <1.429161, 4.229540, 3.982036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.504974, 4.341721, 3.783875>,  <1.631330, 4.528687, 3.453605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.504974, 4.341721, 3.783875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768315, -0.636614, -0.066445,
		0.556692, 0.613388, 0.560223,
		-0.315889, -0.467417, 0.825673,
		1.410208, 4.201496, 4.031576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.153134, 3.551614, 3.686635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.072514, 3.513977, 4.076614>,  <3.024142, 3.491395, 4.310602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.072514, 3.513977, 4.076614>,  <3.153134, 3.551614, 3.686635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.072514, 3.513977, 4.076614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977482, 0.082841, -0.194079,
		-0.062506, -0.992112, -0.108659,
		-0.201549, -0.094081, 0.974950,
		3.012048, 3.485749, 4.369099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.475950, 3.169760, 3.708628>,  <3.153134, 3.551614, 3.686635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.475950, 3.169760, 3.708628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.525776, 3.388992, 4.039467>,  <2.555671, 3.520532, 4.237970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.525776, 3.388992, 4.039467>,  <2.475950, 3.169760, 3.708628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.525776, 3.388992, 4.039467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904365, 0.405638, -0.132597,
		-0.408176, -0.731482, 0.546193,
		0.124564, 0.548081, 0.827098,
		2.563145, 3.553416, 4.287596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.702735, 3.240379, 3.888125>,  <2.475950, 3.169760, 3.708628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.702735, 3.240379, 3.888125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.902779, 3.468643, 4.148659>,  <2.022805, 3.605602, 4.304979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.902779, 3.468643, 4.148659>,  <1.702735, 3.240379, 3.888125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.902779, 3.468643, 4.148659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850520, 0.465100, 0.245556,
		-0.162806, -0.676778, 0.717959,
		0.500110, 0.570660, 0.651335,
		2.052812, 3.639841, 4.344059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.287558, 3.287568, 4.591096>,  <1.702735, 3.240379, 3.888125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.287558, 3.287568, 4.591096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.528866, 3.596024, 4.509697>,  <1.673650, 3.781097, 4.460857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.528866, 3.596024, 4.509697>,  <1.287558, 3.287568, 4.591096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.528866, 3.596024, 4.509697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773150, 0.628080, 0.088063,
		0.195722, 0.104208, 0.975107,
		0.603268, 0.771139, -0.203497,
		1.709846, 3.827365, 4.448648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.274561, 3.793514, 5.219085>,  <1.287558, 3.287568, 4.591096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.274561, 3.793514, 5.219085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.346638, 3.970917, 4.867897>,  <1.389884, 4.077358, 4.657184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.346638, 3.970917, 4.867897>,  <1.274561, 3.793514, 5.219085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.346638, 3.970917, 4.867897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764132, 0.625164, 0.158974,
		0.619381, 0.642238, 0.451550,
		0.180193, 0.443509, -0.877969,
		1.400695, 4.103969, 4.604506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.257648, 4.461113, 5.323267>,  <1.274561, 3.793514, 5.219085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.257648, 4.461113, 5.323267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.196995, 4.432144, 4.928955>,  <1.160603, 4.414762, 4.692368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.196995, 4.432144, 4.928955>,  <1.257648, 4.461113, 5.323267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.196995, 4.432144, 4.928955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724726, 0.686327, 0.061054,
		0.672146, 0.723678, -0.156556,
		-0.151632, -0.072423, -0.985780,
		1.151505, 4.410417, 4.633221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.138567, 5.180554, 5.126394>,  <1.257648, 4.461113, 5.323267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.138567, 5.180554, 5.126394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.977299, 4.947266, 4.844315>,  <0.880538, 4.807292, 4.675067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.977299, 4.947266, 4.844315>,  <1.138567, 5.180554, 5.126394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.977299, 4.947266, 4.844315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835243, 0.549394, 0.023152,
		0.373930, 0.598346, -0.708631,
		-0.403170, -0.583222, -0.705199,
		0.856348, 4.772299, 4.632755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.901638, 5.589083, 4.633675>,  <1.138567, 5.180554, 5.126394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.901638, 5.589083, 4.633675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.689648, 5.254379, 4.578598>,  <0.562453, 5.053557, 4.545552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.689648, 5.254379, 4.578598>,  <0.901638, 5.589083, 4.633675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.689648, 5.254379, 4.578598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848004, 0.523675, 0.081573,
		0.003849, 0.159995, -0.987110,
		-0.529976, -0.836759, -0.137692,
		0.530655, 5.003352, 4.537291>
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
