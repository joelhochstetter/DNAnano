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
	<0.919803, 1.273350, 4.092065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.960075, 1.594685, 4.326847>,  <0.984239, 1.787485, 4.467716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.960075, 1.594685, 4.326847>,  <0.919803, 1.273350, 4.092065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.960075, 1.594685, 4.326847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552782, 0.535681, -0.638340,
		-0.827222, -0.260188, 0.498003,
		0.100682, 0.803335, 0.586954,
		0.990280, 1.835685, 4.502934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.256277, 1.586056, 4.092155>,  <0.919803, 1.273350, 4.092065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.256277, 1.586056, 4.092155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.532959, 1.860577, 4.182076>,  <0.698968, 2.025289, 4.236028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.532959, 1.860577, 4.182076>,  <0.256277, 1.586056, 4.092155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.532959, 1.860577, 4.182076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487159, 0.673211, -0.556294,
		-0.533124, 0.275277, 0.800001,
		0.691704, 0.686301, 0.224802,
		0.740470, 2.066467, 4.249516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.005174, 2.160121, 4.515399>,  <0.256277, 1.586056, 4.092155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.005174, 2.160121, 4.515399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.291832, 2.293724, 4.270496>,  <0.463827, 2.373886, 4.123555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.291832, 2.293724, 4.270496>,  <0.005174, 2.160121, 4.515399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.291832, 2.293724, 4.270496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643517, 0.655132, -0.395838,
		0.268895, 0.677673, 0.684438,
		0.716646, 0.334008, -0.612256,
		0.506826, 2.393927, 4.086820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.016065, 2.849280, 4.499059>,  <0.005174, 2.160121, 4.515399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.016065, 2.849280, 4.499059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.142540, 2.704258, 4.148384>,  <0.218425, 2.617245, 3.937979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.142540, 2.704258, 4.148384>,  <0.016065, 2.849280, 4.499059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.142540, 2.704258, 4.148384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717494, 0.513186, -0.471002,
		0.620667, 0.777943, -0.097867,
		0.316188, -0.362554, -0.876687,
		0.237396, 2.595492, 3.885378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.018423, 3.427578, 4.033372>,  <0.016065, 2.849280, 4.499059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.018423, 3.427578, 4.033372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.036690, 3.097315, 3.808445>,  <-0.047650, 2.899157, 3.673489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.036690, 3.097315, 3.808445>,  <-0.018423, 3.427578, 4.033372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.036690, 3.097315, 3.808445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656793, 0.448950, -0.605861,
		0.752687, 0.341659, -0.562789,
		-0.045666, -0.825659, -0.562318,
		-0.050390, 2.849617, 3.639750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.076348, 3.661013, 3.281056>,  <-0.018423, 3.427578, 4.033372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.076348, 3.661013, 3.281056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.133408, 3.320683, 3.294384>,  <-0.259261, 3.116484, 3.302381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.133408, 3.320683, 3.294384>,  <0.076348, 3.661013, 3.281056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.133408, 3.320683, 3.294384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714159, 0.418176, -0.561343,
		0.463673, -0.318155, -0.826912,
		-0.524389, -0.850827, 0.033316,
		-0.290725, 3.065435, 3.304380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.144347, 3.557774, 2.615121>,  <0.076348, 3.661013, 3.281056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.144347, 3.557774, 2.615121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.416992, 3.315077, 2.778713>,  <-0.580579, 3.169458, 2.876869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.416992, 3.315077, 2.778713>,  <-0.144347, 3.557774, 2.615121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.416992, 3.315077, 2.778713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689500, 0.345493, -0.636573,
		0.244935, -0.715890, -0.653841,
		-0.681614, -0.606743, 0.408982,
		-0.621476, 3.133054, 2.901408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.410515, 3.107976, 2.102587>,  <-0.144347, 3.557774, 2.615121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.410515, 3.107976, 2.102587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.685234, 3.095490, 2.393059>,  <-0.850065, 3.087997, 2.567342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.685234, 3.095490, 2.393059>,  <-0.410515, 3.107976, 2.102587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.685234, 3.095490, 2.393059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683129, 0.368994, -0.630220,
		-0.248283, -0.928907, -0.274749,
		-0.686797, -0.031216, 0.726179,
		-0.891273, 3.086125, 2.610912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.685070, 4.368497, 2.461290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.456955, 4.146576, 2.218979>,  <2.320086, 4.013423, 2.073592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.456955, 4.146576, 2.218979>,  <2.685070, 4.368497, 2.461290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.456955, 4.146576, 2.218979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805175, -0.523589, -0.278474,
		-0.162681, -0.646568, 0.745309,
		-0.570287, -0.554802, -0.605778,
		2.285869, 3.980135, 2.037245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.634306, 3.516723, 2.450429>,  <2.685070, 4.368497, 2.461290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.634306, 3.516723, 2.450429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.652313, 3.679295, 2.085400>,  <2.663118, 3.776838, 1.866382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.652313, 3.679295, 2.085400>,  <2.634306, 3.516723, 2.450429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.652313, 3.679295, 2.085400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844982, -0.502786, -0.182240,
		-0.532896, -0.762904, -0.366060,
		0.045018, 0.406429, -0.912573,
		2.665819, 3.801223, 1.811628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.059865, 3.659314, 3.058005>,  <2.634306, 3.516723, 2.450429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.059865, 3.659314, 3.058005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.306519, 3.420376, 2.852894>,  <3.454511, 3.277013, 2.729827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.306519, 3.420376, 2.852894>,  <3.059865, 3.659314, 3.058005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.306519, 3.420376, 2.852894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372932, -0.351988, 0.858502,
		-0.693315, -0.720612, 0.005723,
		0.616633, -0.597346, -0.512778,
		3.491509, 3.241172, 2.699060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.061186, 2.926739, 3.299080>,  <3.059865, 3.659314, 3.058005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.061186, 2.926739, 3.299080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.411545, 2.982395, 3.114281>,  <3.621760, 3.015789, 3.003401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.411545, 2.982395, 3.114281>,  <3.061186, 2.926739, 3.299080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.411545, 2.982395, 3.114281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477552, -0.386728, 0.788914,
		-0.068897, -0.911637, -0.405182,
		0.875898, 0.139141, -0.461998,
		3.674314, 3.024137, 2.975681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.606240, 2.404281, 3.592739>,  <3.061186, 2.926739, 3.299080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.606240, 2.404281, 3.592739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.861496, 2.597801, 3.353168>,  <4.014650, 2.713914, 3.209426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.861496, 2.597801, 3.353168>,  <3.606240, 2.404281, 3.592739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.861496, 2.597801, 3.353168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769894, -0.407322, 0.491276,
		-0.006275, -0.774613, -0.632405,
		0.638141, 0.483802, -0.598926,
		4.052938, 2.742942, 3.173491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.101240, 1.924363, 3.381258>,  <3.606240, 2.404281, 3.592739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.101240, 1.924363, 3.381258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.280304, 2.279835, 3.341560>,  <4.387743, 2.493118, 3.317742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.280304, 2.279835, 3.341560>,  <4.101240, 1.924363, 3.381258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.280304, 2.279835, 3.341560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865445, -0.402667, 0.298099,
		0.224953, -0.219337, -0.949362,
		0.447661, 0.888679, -0.099243,
		4.414602, 2.546438, 3.311787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.752698, 1.811370, 2.908332>,  <4.101240, 1.924363, 3.381258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.752698, 1.811370, 2.908332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.810455, 2.132465, 3.139767>,  <4.845110, 2.325123, 3.278627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.810455, 2.132465, 3.139767>,  <4.752698, 1.811370, 2.908332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.810455, 2.132465, 3.139767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835495, -0.412196, 0.363378,
		0.530188, 0.430937, -0.730202,
		0.144393, 0.802738, 0.578586,
		4.853773, 2.373287, 3.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.489193, 2.083302, 2.767456>,  <4.752698, 1.811370, 2.908332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.489193, 2.083302, 2.767456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.386780, 2.221264, 3.128674>,  <5.325332, 2.304041, 3.345404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.386780, 2.221264, 3.128674>,  <5.489193, 2.083302, 2.767456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.386780, 2.221264, 3.128674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825031, -0.408861, 0.390073,
		0.503758, 0.844910, -0.179875,
		-0.256032, 0.344905, 0.903044,
		5.309970, 2.324735, 3.399587>
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
