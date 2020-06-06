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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.299526, 17.533253, -1.869879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.206211, 17.223972, -1.634002>,  <22.150223, 17.038404, -1.492476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.206211, 17.223972, -1.634002>,  <22.299526, 17.533253, -1.869879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.206211, 17.223972, -1.634002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821202, 0.168117, 0.545311,
		-0.520772, 0.611471, 0.595735,
		-0.233288, -0.773201, 0.589692,
		22.136225, 16.992012, -1.457095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.358202, 17.757557, -1.111817>,  <22.299526, 17.533253, -1.869879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.358202, 17.757557, -1.111817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.437042, 17.377193, -1.207250>,  <22.484346, 17.148975, -1.264510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.437042, 17.377193, -1.207250>,  <22.358202, 17.757557, -1.111817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.437042, 17.377193, -1.207250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897833, 0.077335, 0.433491,
		-0.393760, -0.299647, 0.869002,
		0.197099, -0.950911, -0.238581,
		22.496172, 17.091921, -1.278824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.567081, 17.357447, -0.466383>,  <22.358202, 17.757557, -1.111817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.567081, 17.357447, -0.466383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687008, 17.165176, -0.796003>,  <22.758965, 17.049814, -0.993776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687008, 17.165176, -0.796003>,  <22.567081, 17.357447, -0.466383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.687008, 17.165176, -0.796003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947281, 0.047680, 0.316838,
		-0.113006, -0.875600, 0.469632,
		0.299816, -0.480678, -0.824051,
		22.776953, 17.020973, -1.043219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.252550, 17.138498, -0.218567>,  <22.567081, 17.357447, -0.466383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.252550, 17.138498, -0.218567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.202499, 17.078041, -0.610791>,  <23.172470, 17.041767, -0.846126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.202499, 17.078041, -0.610791>,  <23.252550, 17.138498, -0.218567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.202499, 17.078041, -0.610791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992141, -0.019867, -0.123541,
		-0.000808, -0.988312, 0.152441,
		-0.125126, -0.151144, -0.980561,
		23.164961, 17.032698, -0.904960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.626728, 16.520338, -0.412407>,  <23.252550, 17.138498, -0.218567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.626728, 16.520338, -0.412407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.585140, 16.776226, -0.717025>,  <23.560188, 16.929758, -0.899795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.585140, 16.776226, -0.717025>,  <23.626728, 16.520338, -0.412407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.585140, 16.776226, -0.717025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994098, 0.090689, -0.059537,
		0.030977, -0.763239, -0.645373,
		-0.103970, 0.639720, -0.761544,
		23.553949, 16.968142, -0.945488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.238375, 16.033571, 0.095668>,  <23.626728, 16.520338, -0.412407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.238375, 16.033571, 0.095668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.097862, 15.766548, 0.358261>,  <23.013554, 15.606334, 0.515816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.097862, 15.766548, 0.358261>,  <23.238375, 16.033571, 0.095668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.097862, 15.766548, 0.358261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800088, 0.578199, 0.159829,
		-0.486272, -0.469097, -0.737217,
		-0.351283, -0.667558, 0.656481,
		22.992477, 15.566280, 0.555205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.489611, 15.920150, -0.041780>,  <23.238375, 16.033571, 0.095668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.489611, 15.920150, -0.041780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.562500, 15.847561, 0.344766>,  <22.606234, 15.804008, 0.576694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.562500, 15.847561, 0.344766>,  <22.489611, 15.920150, -0.041780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.562500, 15.847561, 0.344766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759289, 0.598471, 0.255563,
		-0.624719, -0.780321, -0.028733,
		0.182225, -0.181472, 0.966366,
		22.617167, 15.793119, 0.634676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.862753, 15.789745, 0.313430>,  <22.489611, 15.920150, -0.041780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.862753, 15.789745, 0.313430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.121105, 15.921650, 0.588849>,  <22.276117, 16.000793, 0.754100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.121105, 15.921650, 0.588849>,  <21.862753, 15.789745, 0.313430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.121105, 15.921650, 0.588849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669262, 0.678513, 0.302834,
		-0.367325, -0.656412, 0.658935,
		0.645880, 0.329762, 0.688547,
		22.314869, 16.020578, 0.795413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.394041, 15.986471, 0.855953>,  <21.862753, 15.789745, 0.313430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.394041, 15.986471, 0.855953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.752365, 16.163918, 0.866730>,  <21.967360, 16.270386, 0.873197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.752365, 16.163918, 0.866730>,  <21.394041, 15.986471, 0.855953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.752365, 16.163918, 0.866730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444267, 0.892161, 0.081703,
		0.012206, -0.085161, 0.996292,
		0.895811, 0.443617, 0.026945,
		22.021109, 16.297003, 0.874814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.652679, 16.319450, 1.507733>,  <21.394041, 15.986471, 0.855953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.652679, 16.319450, 1.507733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.745926, 16.498955, 1.162649>,  <21.801874, 16.606657, 0.955598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.745926, 16.498955, 1.162649>,  <21.652679, 16.319450, 1.507733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.745926, 16.498955, 1.162649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512072, 0.810840, 0.283410,
		0.826704, 0.375703, 0.418817,
		0.233116, 0.448760, -0.862711,
		21.815861, 16.633583, 0.903836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.004610, 16.886335, 1.658716>,  <21.652679, 16.319450, 1.507733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.004610, 16.886335, 1.658716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.845406, 16.957355, 1.298702>,  <21.749884, 16.999968, 1.082693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.845406, 16.957355, 1.298702>,  <22.004610, 16.886335, 1.658716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.845406, 16.957355, 1.298702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413789, 0.840875, 0.348866,
		0.818759, 0.511277, -0.261208,
		-0.398010, 0.177552, -0.900035,
		21.726002, 17.010622, 1.028691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.101835, 17.513996, 1.423936>,  <22.004610, 16.886335, 1.658716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.101835, 17.513996, 1.423936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.757607, 17.401104, 1.254343>,  <21.551069, 17.333368, 1.152587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.757607, 17.401104, 1.254343>,  <22.101835, 17.513996, 1.423936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.757607, 17.401104, 1.254343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388785, 0.901764, 0.188858,
		0.329031, 0.327364, -0.885760,
		-0.860572, -0.282230, -0.423982,
		21.499435, 17.316435, 1.127148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.962597, 17.895876, 0.790778>,  <22.101835, 17.513996, 1.423936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.962597, 17.895876, 0.790778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.645889, 17.763348, 0.996038>,  <21.455864, 17.683830, 1.119195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.645889, 17.763348, 0.996038>,  <21.962597, 17.895876, 0.790778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.645889, 17.763348, 0.996038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271254, 0.943445, 0.190612,
		-0.547284, 0.011726, -0.836865,
		-0.791771, -0.331322, 0.513152,
		21.408358, 17.663952, 1.149984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.287560, 18.307011, 0.438670>,  <21.962597, 17.895876, 0.790778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.287560, 18.307011, 0.438670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.292606, 18.180466, 0.818092>,  <21.295635, 18.104540, 1.045745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.292606, 18.180466, 0.818092>,  <21.287560, 18.307011, 0.438670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.292606, 18.180466, 0.818092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442101, 0.849107, 0.289074,
		-0.896877, -0.423005, -0.129149,
		0.012619, -0.316361, 0.948555,
		21.296392, 18.085558, 1.102659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.559872, 18.286167, 0.726494>,  <21.287560, 18.307011, 0.438670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.559872, 18.286167, 0.726494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.837051, 18.343361, 1.009160>,  <21.003359, 18.377678, 1.178760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.837051, 18.343361, 1.009160>,  <20.559872, 18.286167, 0.726494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.837051, 18.343361, 1.009160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514476, 0.784729, 0.345710,
		-0.505109, -0.603122, 0.617340,
		0.692950, 0.142985, 0.706665,
		21.044937, 18.386257, 1.221160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283360, 18.328094, 1.356842>,  <20.559872, 18.286167, 0.726494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283360, 18.328094, 1.356842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.620068, 18.543190, 1.375863>,  <20.822092, 18.672247, 1.387275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.620068, 18.543190, 1.375863>,  <20.283360, 18.328094, 1.356842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.620068, 18.543190, 1.375863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500862, 0.745102, 0.440409,
		0.201393, -0.394540, 0.896537,
		0.841771, 0.537736, 0.047552,
		20.872599, 18.704512, 1.390129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.534069, 18.494228, 2.035524>,  <20.283360, 18.328094, 1.356842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.534069, 18.494228, 2.035524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.654404, 18.803051, 1.811587>,  <20.726604, 18.988344, 1.677225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.654404, 18.803051, 1.811587>,  <20.534069, 18.494228, 2.035524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.654404, 18.803051, 1.811587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464540, 0.631316, 0.621001,
		0.832887, 0.073251, 0.548574,
		0.300835, 0.772058, -0.559843,
		20.744654, 19.034668, 1.643634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.064497, 18.841774, 2.385806>,  <20.534069, 18.494228, 2.035524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.064497, 18.841774, 2.385806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.826599, 19.085697, 2.176267>,  <20.683861, 19.232052, 2.050544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.826599, 19.085697, 2.176267>,  <21.064497, 18.841774, 2.385806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.826599, 19.085697, 2.176267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162453, 0.547012, 0.821211,
		0.787331, 0.573509, -0.226266,
		-0.594742, 0.609808, -0.523848,
		20.648176, 19.268639, 2.019113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.277807, 19.544054, 2.368330>,  <21.064497, 18.841774, 2.385806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.277807, 19.544054, 2.368330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.877892, 19.536251, 2.365763>,  <20.637941, 19.531570, 2.364224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.877892, 19.536251, 2.365763>,  <21.277807, 19.544054, 2.368330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.877892, 19.536251, 2.365763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015342, 0.501926, 0.864774,
		-0.013648, 0.864691, -0.502120,
		-0.999789, -0.019506, -0.006416,
		20.577955, 19.530399, 2.363839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.020311, 20.268808, 2.384218>,  <21.277807, 19.544054, 2.368330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.020311, 20.268808, 2.384218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.756218, 20.009930, 2.536653>,  <20.597763, 19.854603, 2.628114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.756218, 20.009930, 2.536653>,  <21.020311, 20.268808, 2.384218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756218, 20.009930, 2.536653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079252, 0.564599, 0.821552,
		-0.746869, 0.512213, -0.424059,
		-0.660232, -0.647199, 0.381087,
		20.558147, 19.815769, 2.650979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.362459, 20.665108, 2.729486>,  <21.020311, 20.268808, 2.384218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.362459, 20.665108, 2.729486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.491615, 20.331821, 2.909038>,  <20.569109, 20.131849, 3.016770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.491615, 20.331821, 2.909038>,  <20.362459, 20.665108, 2.729486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.491615, 20.331821, 2.909038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131237, 0.509121, 0.850631,
		-0.937293, -0.215751, 0.273739,
		0.322890, -0.833215, 0.448881,
		20.588482, 20.081858, 3.043703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061510, 20.653664, 3.337840>,  <20.362459, 20.665108, 2.729486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.061510, 20.653664, 3.337840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.388371, 20.423519, 3.351835>,  <20.584486, 20.285433, 3.360233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.388371, 20.423519, 3.351835>,  <20.061510, 20.653664, 3.337840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.388371, 20.423519, 3.351835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216713, 0.362895, 0.906279,
		-0.534136, -0.732984, 0.421229,
		0.817150, -0.575362, 0.034988,
		20.633516, 20.250910, 3.362332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.088026, 20.128042, 3.941206>,  <20.061510, 20.653664, 3.337840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.088026, 20.128042, 3.941206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.461372, 20.230145, 3.840270>,  <20.685379, 20.291407, 3.779709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.461372, 20.230145, 3.840270>,  <20.088026, 20.128042, 3.941206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.461372, 20.230145, 3.840270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225511, 0.129909, 0.965540,
		0.279243, -0.958106, 0.063689,
		0.933364, 0.255258, -0.252340,
		20.741381, 20.306723, 3.764568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.473368, 19.643486, 4.390126>,  <20.088026, 20.128042, 3.941206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.473368, 19.643486, 4.390126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.721848, 19.933224, 4.270504>,  <20.870935, 20.107067, 4.198731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.721848, 19.933224, 4.270504>,  <20.473368, 19.643486, 4.390126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.721848, 19.933224, 4.270504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385688, 0.049601, 0.921295,
		0.682170, -0.687650, -0.248559,
		0.621200, 0.724346, -0.299054,
		20.908207, 20.150528, 4.180788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.231886, 19.516815, 4.562111>,  <20.473368, 19.643486, 4.390126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.231886, 19.516815, 4.562111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.159866, 19.908531, 4.525065>,  <21.116655, 20.143560, 4.502838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.159866, 19.908531, 4.525065>,  <21.231886, 19.516815, 4.562111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.159866, 19.908531, 4.525065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402637, 0.159276, 0.901395,
		0.897477, 0.125005, -0.422976,
		-0.180049, 0.979288, -0.092615,
		21.105852, 20.202318, 4.497281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.809530, 19.996778, 4.749396>,  <21.231886, 19.516815, 4.562111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.809530, 19.996778, 4.749396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.505367, 20.243961, 4.829304>,  <21.322868, 20.392271, 4.877248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.505367, 20.243961, 4.829304>,  <21.809530, 19.996778, 4.749396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.505367, 20.243961, 4.829304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448230, 0.276778, 0.849990,
		0.469964, 0.735884, -0.487451,
		-0.760410, 0.617956, 0.199770,
		21.277245, 20.429348, 4.889235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.092924, 20.580851, 5.143440>,  <21.809530, 19.996778, 4.749396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.092924, 20.580851, 5.143440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.701733, 20.600708, 5.224527>,  <21.467018, 20.612623, 5.273180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.701733, 20.600708, 5.224527>,  <22.092924, 20.580851, 5.143440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.701733, 20.600708, 5.224527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206893, 0.358480, 0.910323,
		-0.027478, 0.932216, -0.360857,
		-0.977978, 0.049645, 0.202719,
		21.408339, 20.615601, 5.285343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.204948, 20.494371, 5.873408>,  <22.092924, 20.580851, 5.143440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.204948, 20.494371, 5.873408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.843342, 20.468472, 5.704380>,  <21.626379, 20.452932, 5.602963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.843342, 20.468472, 5.704380>,  <22.204948, 20.494371, 5.873408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.843342, 20.468472, 5.704380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395117, -0.250839, 0.883721,
		-0.163218, 0.965861, 0.201178,
		-0.904015, -0.064750, -0.422570,
		21.572138, 20.449047, 5.577609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.698185, 20.779467, 6.245815>,  <22.204948, 20.494371, 5.873408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.698185, 20.779467, 6.245815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.493298, 20.496155, 6.051508>,  <21.370365, 20.326168, 5.934924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.493298, 20.496155, 6.051508>,  <21.698185, 20.779467, 6.245815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.493298, 20.496155, 6.051508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240154, -0.424922, 0.872793,
		-0.824595, 0.563721, 0.047557,
		-0.512220, -0.708280, -0.485768,
		21.339632, 20.283670, 5.905777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.966837, 20.748196, 6.344844>,  <21.698185, 20.779467, 6.245815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.966837, 20.748196, 6.344844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.151257, 20.399426, 6.278901>,  <21.261908, 20.190163, 6.239335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.151257, 20.399426, 6.278901>,  <20.966837, 20.748196, 6.344844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.151257, 20.399426, 6.278901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318189, -0.335869, 0.886537,
		-0.828366, -0.356281, -0.432290,
		0.461049, -0.871927, -0.164858,
		21.289572, 20.137848, 6.229444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.523273, 20.095997, 6.314393>,  <20.966837, 20.748196, 6.344844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.523273, 20.095997, 6.314393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.889107, 20.015591, 6.454751>,  <21.108606, 19.967346, 6.538966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.889107, 20.015591, 6.454751>,  <20.523273, 20.095997, 6.314393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.889107, 20.015591, 6.454751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400274, -0.326425, 0.856287,
		-0.057584, -0.923602, -0.379004,
		0.914584, -0.201014, 0.350897,
		21.163483, 19.955286, 6.560020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.192255, 19.722923, 6.882818>,  <20.523273, 20.095997, 6.314393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.192255, 19.722923, 6.882818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585117, 19.774399, 6.937675>,  <20.820835, 19.805285, 6.970588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585117, 19.774399, 6.937675>,  <20.192255, 19.722923, 6.882818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.585117, 19.774399, 6.937675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049342, -0.527346, 0.848217,
		0.181478, -0.839848, -0.511586,
		0.982156, 0.128690, 0.137141,
		20.879765, 19.813005, 6.978817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.549395, 18.983095, 6.981660>,  <20.192255, 19.722923, 6.882818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.549395, 18.983095, 6.981660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.671349, 19.322842, 7.153996>,  <20.744520, 19.526690, 7.257397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.671349, 19.322842, 7.153996>,  <20.549395, 18.983095, 6.981660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.671349, 19.322842, 7.153996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114392, -0.416443, 0.901937,
		0.945495, -0.324270, -0.029806,
		0.304884, 0.849367, 0.430839,
		20.762814, 19.577652, 7.283247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.303423, 19.005966, 7.725418>,  <20.549395, 18.983095, 6.981660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.303423, 19.005966, 7.725418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.626759, 19.233528, 7.664840>,  <20.820759, 19.370066, 7.628493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.626759, 19.233528, 7.664840>,  <20.303423, 19.005966, 7.725418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.626759, 19.233528, 7.664840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180404, 0.005504, 0.983577,
		0.560398, -0.822383, -0.098183,
		0.808337, 0.568907, -0.151446,
		20.869259, 19.404200, 7.619406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.878433, 18.650749, 7.908435>,  <20.303423, 19.005966, 7.725418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.878433, 18.650749, 7.908435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.903843, 19.046600, 7.959968>,  <20.919088, 19.284111, 7.990887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.903843, 19.046600, 7.959968>,  <20.878433, 18.650749, 7.908435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.903843, 19.046600, 7.959968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286439, -0.141741, 0.947556,
		0.955990, -0.023291, -0.292473,
		0.063525, 0.989630, 0.128831,
		20.922901, 19.343489, 7.998617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.483536, 18.742620, 8.324225>,  <20.878433, 18.650749, 7.908435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.483536, 18.742620, 8.324225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.273945, 19.080952, 8.364279>,  <21.148191, 19.283951, 8.388310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.273945, 19.080952, 8.364279>,  <21.483536, 18.742620, 8.324225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.273945, 19.080952, 8.364279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195503, 0.005011, 0.980690,
		0.828992, 0.533434, -0.167987,
		-0.523976, 0.845827, 0.100134,
		21.116753, 19.334700, 8.394319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.895020, 19.198086, 8.659482>,  <21.483536, 18.742620, 8.324225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.895020, 19.198086, 8.659482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.516479, 19.314808, 8.715004>,  <21.289354, 19.384842, 8.748318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.516479, 19.314808, 8.715004>,  <21.895020, 19.198086, 8.659482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.516479, 19.314808, 8.715004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165716, 0.069495, 0.983722,
		0.277409, 0.953950, -0.114123,
		-0.946352, 0.291805, 0.138806,
		21.232574, 19.402349, 8.756646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.956793, 19.737627, 9.040002>,  <21.895020, 19.198086, 8.659482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.956793, 19.737627, 9.040002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.571293, 19.645958, 9.094647>,  <21.339993, 19.590956, 9.127435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.571293, 19.645958, 9.094647>,  <21.956793, 19.737627, 9.040002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.571293, 19.645958, 9.094647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114875, 0.105718, 0.987738,
		-0.240806, 0.967628, -0.075560,
		-0.963751, -0.229173, 0.136614,
		21.282167, 19.577206, 9.135632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.781948, 20.110409, 9.550795>,  <21.956793, 19.737627, 9.040002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.781948, 20.110409, 9.550795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.528988, 19.800781, 9.562690>,  <21.377211, 19.615005, 9.569827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.528988, 19.800781, 9.562690>,  <21.781948, 20.110409, 9.550795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.528988, 19.800781, 9.562690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238076, -0.157686, 0.958361,
		-0.737148, 0.613150, 0.284008,
		-0.632403, -0.774069, 0.029739,
		21.339268, 19.568562, 9.571611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.463730, 20.198576, 10.189571>,  <21.781948, 20.110409, 9.550795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.463730, 20.198576, 10.189571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405373, 19.826336, 10.055289>,  <21.370358, 19.602991, 9.974720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405373, 19.826336, 10.055289>,  <21.463730, 20.198576, 10.189571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.405373, 19.826336, 10.055289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013624, -0.341195, 0.939894,
		-0.989206, 0.132553, 0.062457,
		-0.145895, -0.930600, -0.335706,
		21.361605, 19.547155, 9.954577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.916250, 19.914755, 10.616755>,  <21.463730, 20.198576, 10.189571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.916250, 19.914755, 10.616755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.101437, 19.584267, 10.488369>,  <21.212549, 19.385973, 10.411337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.101437, 19.584267, 10.488369>,  <20.916250, 19.914755, 10.616755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.101437, 19.584267, 10.488369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125137, -0.419409, 0.899131,
		-0.877497, -0.376104, -0.297564,
		0.462968, -0.826222, -0.320966,
		21.240328, 19.336401, 10.392079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.623199, 19.442223, 10.938437>,  <20.916250, 19.914755, 10.616755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.623199, 19.442223, 10.938437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.966339, 19.272804, 10.822024>,  <21.172224, 19.171152, 10.752177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.966339, 19.272804, 10.822024>,  <20.623199, 19.442223, 10.938437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.966339, 19.272804, 10.822024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083265, -0.444280, 0.892010,
		-0.507112, -0.789443, -0.345858,
		0.857849, -0.423551, -0.291033,
		21.223694, 19.145741, 10.734715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.697199, 18.763988, 11.233163>,  <20.623199, 19.442223, 10.938437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.697199, 18.763988, 11.233163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.072323, 18.884369, 11.163948>,  <21.297398, 18.956596, 11.122419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.072323, 18.884369, 11.163948>,  <20.697199, 18.763988, 11.233163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.072323, 18.884369, 11.163948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285969, -0.387135, 0.876555,
		0.196811, -0.871525, -0.449121,
		0.937810, 0.300951, -0.173036,
		21.353666, 18.974653, 11.112038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.131260, 18.336994, 11.647370>,  <20.697199, 18.763988, 11.233163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.131260, 18.336994, 11.647370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.421768, 18.602932, 11.577493>,  <21.596073, 18.762493, 11.535566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.421768, 18.602932, 11.577493>,  <21.131260, 18.336994, 11.647370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.421768, 18.602932, 11.577493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408271, -0.212734, 0.887727,
		0.553035, -0.716051, -0.425938,
		0.726269, 0.664842, -0.174694,
		21.639648, 18.802385, 11.525084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.602362, 18.016897, 11.956928>,  <21.131260, 18.336994, 11.647370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.602362, 18.016897, 11.956928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.729134, 18.391895, 11.899443>,  <21.805197, 18.616894, 11.864951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.729134, 18.391895, 11.899443>,  <21.602362, 18.016897, 11.956928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.729134, 18.391895, 11.899443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363687, 0.019817, 0.931310,
		0.875949, -0.347428, -0.334675,
		0.316931, 0.937497, -0.143714,
		21.824213, 18.673145, 11.856329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.285255, 18.053091, 12.202316>,  <21.602362, 18.016897, 11.956928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.285255, 18.053091, 12.202316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.173557, 18.436913, 12.216608>,  <22.106539, 18.667206, 12.225183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.173557, 18.436913, 12.216608>,  <22.285255, 18.053091, 12.202316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.173557, 18.436913, 12.216608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264202, 0.041008, 0.963595,
		0.923157, 0.278520, -0.264968,
		-0.279246, 0.959554, 0.035728,
		22.089783, 18.724779, 12.227326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.832731, 18.421604, 12.559174>,  <22.285255, 18.053091, 12.202316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.832731, 18.421604, 12.559174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.503761, 18.646183, 12.595822>,  <22.306379, 18.780931, 12.617811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.503761, 18.646183, 12.595822>,  <22.832731, 18.421604, 12.559174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.503761, 18.646183, 12.595822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173589, 0.094305, 0.980292,
		0.541744, 0.822120, -0.175020,
		-0.822423, 0.561449, 0.091622,
		22.257034, 18.814617, 12.623309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.988176, 18.847944, 13.141783>,  <22.832731, 18.421604, 12.559174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.988176, 18.847944, 13.141783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.594990, 18.902378, 13.092370>,  <22.359077, 18.935038, 13.062722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.594990, 18.902378, 13.092370>,  <22.988176, 18.847944, 13.141783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.594990, 18.902378, 13.092370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092343, 0.215447, 0.972140,
		0.158907, 0.966987, -0.199210,
		-0.982965, 0.136084, -0.123531,
		22.300100, 18.943203, 13.055311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.848276, 19.438208, 13.551725>,  <22.988176, 18.847944, 13.141783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.848276, 19.438208, 13.551725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.508678, 19.231270, 13.508716>,  <22.304920, 19.107107, 13.482910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.508678, 19.231270, 13.508716>,  <22.848276, 19.438208, 13.551725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.508678, 19.231270, 13.508716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228530, 0.176027, 0.957491,
		-0.476425, 0.837478, -0.267675,
		-0.848996, -0.517344, -0.107525,
		22.253981, 19.076067, 13.476459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.529352, 19.689161, 14.005401>,  <22.848276, 19.438208, 13.551725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.529352, 19.689161, 14.005401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.269463, 19.406528, 13.893258>,  <22.113529, 19.236948, 13.825973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.269463, 19.406528, 13.893258>,  <22.529352, 19.689161, 14.005401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.269463, 19.406528, 13.893258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368532, -0.029785, 0.929138,
		-0.664863, 0.707003, -0.241046,
		-0.649724, -0.706583, -0.280356,
		22.074545, 19.194553, 13.809152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.952534, 19.971540, 14.163169>,  <22.529352, 19.689161, 14.005401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.952534, 19.971540, 14.163169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.933937, 19.572376, 14.181117>,  <21.922779, 19.332878, 14.191886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.933937, 19.572376, 14.181117>,  <21.952534, 19.971540, 14.163169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.933937, 19.572376, 14.181117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179996, 0.052553, 0.982263,
		-0.982568, 0.037592, -0.182063,
		-0.046493, -0.997910, 0.044870,
		21.919989, 19.273003, 14.194578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.494524, 19.861370, 14.661465>,  <21.952534, 19.971540, 14.163169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.494524, 19.861370, 14.661465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.663769, 19.500050, 14.633107>,  <21.765316, 19.283258, 14.616093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.663769, 19.500050, 14.633107>,  <21.494524, 19.861370, 14.661465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.663769, 19.500050, 14.633107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095105, -0.122086, 0.987953,
		-0.901073, -0.411272, -0.137564,
		0.423112, -0.903300, -0.070894,
		21.790703, 19.229059, 14.611839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.094742, 19.486958, 15.028866>,  <21.494524, 19.861370, 14.661465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.094742, 19.486958, 15.028866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.448193, 19.300480, 15.046136>,  <21.660263, 19.188593, 15.056499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.448193, 19.300480, 15.046136>,  <21.094742, 19.486958, 15.028866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.448193, 19.300480, 15.046136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034928, 0.026323, 0.999043,
		-0.466885, -0.884291, 0.006977,
		0.883628, -0.466194, 0.043176,
		21.713282, 19.160622, 15.059089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.095898, 18.912548, 15.479339>,  <21.094742, 19.486958, 15.028866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.095898, 18.912548, 15.479339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.488503, 18.988968, 15.474719>,  <21.724066, 19.034821, 15.471948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.488503, 18.988968, 15.474719>,  <21.095898, 18.912548, 15.479339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.488503, 18.988968, 15.474719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049298, -0.194039, 0.979754,
		0.184943, -0.962210, -0.199871,
		0.981512, 0.191052, -0.011549,
		21.782957, 19.046284, 15.471254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.414976, 18.521166, 15.944925>,  <21.095898, 18.912548, 15.479339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.414976, 18.521166, 15.944925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.720928, 18.776524, 15.910502>,  <21.904499, 18.929739, 15.889849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.720928, 18.776524, 15.910502>,  <21.414976, 18.521166, 15.944925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.720928, 18.776524, 15.910502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206461, -0.116405, 0.971506,
		0.610188, -0.760855, -0.220840,
		0.764882, 0.638396, -0.086058,
		21.950394, 18.968042, 15.884686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.017706, 18.177830, 16.320820>,  <21.414976, 18.521166, 15.944925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.017706, 18.177830, 16.320820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.096321, 18.569576, 16.301981>,  <22.143490, 18.804625, 16.290678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.096321, 18.569576, 16.301981>,  <22.017706, 18.177830, 16.320820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.096321, 18.569576, 16.301981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180947, 0.010980, 0.983431,
		0.963655, -0.201802, -0.175055,
		0.196537, 0.979365, -0.047096,
		22.155283, 18.863386, 16.287851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.572620, 18.235853, 16.812241>,  <22.017706, 18.177830, 16.320820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.572620, 18.235853, 16.812241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.435528, 18.606567, 16.750780>,  <22.353273, 18.828995, 16.713903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.435528, 18.606567, 16.750780>,  <22.572620, 18.235853, 16.812241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.435528, 18.606567, 16.750780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034134, 0.175734, 0.983846,
		0.938814, 0.331948, -0.091863,
		-0.342730, 0.926784, -0.153651,
		22.332708, 18.884602, 16.704685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.049820, 18.664787, 17.184374>,  <22.572620, 18.235853, 16.812241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.049820, 18.664787, 17.184374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.740242, 18.915779, 17.150251>,  <22.554495, 19.066374, 17.129778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.740242, 18.915779, 17.150251>,  <23.049820, 18.664787, 17.184374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.740242, 18.915779, 17.150251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146895, 0.308931, 0.939672,
		0.615981, 0.714723, -0.331269,
		-0.773944, 0.627482, -0.085306,
		22.508059, 19.104023, 17.124659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.173868, 19.239506, 17.649450>,  <23.049820, 18.664787, 17.184374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.173868, 19.239506, 17.649450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.781277, 19.256618, 17.574753>,  <22.545723, 19.266886, 17.529934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.781277, 19.256618, 17.574753>,  <23.173868, 19.239506, 17.649450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.781277, 19.256618, 17.574753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178356, 0.151822, 0.972183,
		0.069941, 0.987482, -0.141380,
		-0.981477, 0.042780, -0.186742,
		22.486834, 19.269453, 17.518730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.073290, 19.862492, 17.851072>,  <23.173868, 19.239506, 17.649450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.073290, 19.862492, 17.851072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.729828, 19.659248, 17.878031>,  <22.523750, 19.537302, 17.894207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.729828, 19.659248, 17.878031>,  <23.073290, 19.862492, 17.851072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.729828, 19.659248, 17.878031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070662, 0.247584, 0.966286,
		-0.507664, 0.824942, -0.248493,
		-0.858653, -0.508107, 0.067397,
		22.472233, 19.506817, 17.898251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.610260, 20.245049, 18.295471>,  <23.073290, 19.862492, 17.851072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.610260, 20.245049, 18.295471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.386944, 19.913589, 18.311724>,  <22.252954, 19.714714, 18.321474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.386944, 19.913589, 18.311724>,  <22.610260, 20.245049, 18.295471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.386944, 19.913589, 18.311724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168455, 0.161175, 0.972443,
		-0.812362, 0.536063, -0.229573,
		-0.558293, -0.828649, 0.040630,
		22.219456, 19.664995, 18.323914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.017223, 20.389383, 18.724361>,  <22.610260, 20.245049, 18.295471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.017223, 20.389383, 18.724361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.053673, 19.991623, 18.745762>,  <22.075542, 19.752966, 18.758602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.053673, 19.991623, 18.745762>,  <22.017223, 20.389383, 18.724361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.053673, 19.991623, 18.745762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197194, 0.034643, 0.979752,
		-0.976120, -0.099829, -0.192933,
		0.091124, -0.994402, 0.053502,
		22.081011, 19.693302, 18.761812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.373690, 20.075930, 19.005898>,  <22.017223, 20.389383, 18.724361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.373690, 20.075930, 19.005898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.660526, 19.800365, 19.048204>,  <21.832628, 19.635027, 19.073589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.660526, 19.800365, 19.048204>,  <21.373690, 20.075930, 19.005898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.660526, 19.800365, 19.048204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308027, -0.177115, 0.934746,
		-0.625221, -0.702876, -0.339210,
		0.717089, -0.688909, 0.105769,
		21.875652, 19.593693, 19.079935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.077785, 19.453094, 19.476631>,  <21.373690, 20.075930, 19.005898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.077785, 19.453094, 19.476631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.477501, 19.438850, 19.481611>,  <21.717331, 19.430304, 19.484598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.477501, 19.438850, 19.481611>,  <21.077785, 19.453094, 19.476631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.477501, 19.438850, 19.481611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019651, -0.209685, 0.977571,
		-0.032202, -0.977120, -0.210236,
		0.999288, -0.035611, 0.012449,
		21.777287, 19.428167, 19.485346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.292820, 18.768633, 19.887217>,  <21.077785, 19.453094, 19.476631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.292820, 18.768633, 19.887217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.588684, 19.037666, 19.896433>,  <21.766203, 19.199087, 19.901962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.588684, 19.037666, 19.896433>,  <21.292820, 18.768633, 19.887217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.588684, 19.037666, 19.896433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026170, -0.005464, 0.999643,
		0.672469, -0.740001, 0.013560,
		0.739662, 0.672584, 0.023040,
		21.810583, 19.239441, 19.903345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.666689, 18.554968, 20.451761>,  <21.292820, 18.768633, 19.887217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.666689, 18.554968, 20.451761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.806255, 18.923367, 20.382456>,  <21.889996, 19.144405, 20.340872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.806255, 18.923367, 20.382456>,  <21.666689, 18.554968, 20.451761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.806255, 18.923367, 20.382456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088931, 0.151509, 0.984447,
		0.932924, -0.358899, -0.029041,
		0.348918, 0.920997, -0.173264,
		21.910931, 19.199665, 20.330477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.378191, 18.597397, 20.803131>,  <21.666689, 18.554968, 20.451761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.378191, 18.597397, 20.803131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.217827, 18.961117, 20.758503>,  <22.121609, 19.179348, 20.731726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.217827, 18.961117, 20.758503>,  <22.378191, 18.597397, 20.803131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.217827, 18.961117, 20.758503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007534, 0.118507, 0.992925,
		0.916087, 0.398913, -0.040660,
		-0.400909, 0.909299, -0.111568,
		22.097553, 19.233906, 20.725033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.762316, 18.976673, 21.317934>,  <22.378191, 18.597397, 20.803131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.762316, 18.976673, 21.317934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.422028, 19.158306, 21.212038>,  <22.217855, 19.267286, 21.148500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.422028, 19.158306, 21.212038>,  <22.762316, 18.976673, 21.317934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.422028, 19.158306, 21.212038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223570, 0.143242, 0.964105,
		0.475703, 0.879371, -0.020340,
		-0.850719, 0.454080, -0.264741,
		22.166811, 19.294531, 21.132616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.645184, 19.378960, 21.869078>,  <22.762316, 18.976673, 21.317934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.645184, 19.378960, 21.869078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.285271, 19.400051, 21.695822>,  <22.069323, 19.412706, 21.591869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.285271, 19.400051, 21.695822>,  <22.645184, 19.378960, 21.869078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.285271, 19.400051, 21.695822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424950, 0.119401, 0.897308,
		0.099030, 0.991445, -0.085028,
		-0.899783, 0.052728, -0.433139,
		22.015335, 19.415869, 21.565880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.284550, 20.041012, 22.028124>,  <22.645184, 19.378960, 21.869078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.284550, 20.041012, 22.028124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988049, 19.791027, 21.930170>,  <21.810148, 19.641037, 21.871397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988049, 19.791027, 21.930170>,  <22.284550, 20.041012, 22.028124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.988049, 19.791027, 21.930170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400387, 0.118864, 0.908604,
		-0.538735, 0.771553, -0.338334,
		-0.741252, -0.624961, -0.244884,
		21.765673, 19.603539, 21.856705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.677801, 20.347166, 22.266174>,  <22.284550, 20.041012, 22.028124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.677801, 20.347166, 22.266174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.552666, 19.971344, 22.210510>,  <21.477585, 19.745850, 22.177113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.552666, 19.971344, 22.210510>,  <21.677801, 20.347166, 22.266174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.552666, 19.971344, 22.210510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521059, 0.047271, 0.852211,
		-0.794122, 0.339115, -0.504352,
		-0.312838, -0.939557, -0.139160,
		21.458815, 19.689478, 22.168762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.881721, 20.324688, 22.388023>,  <21.677801, 20.347166, 22.266174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.881721, 20.324688, 22.388023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.010174, 19.951046, 22.450403>,  <21.087246, 19.726860, 22.487831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.010174, 19.951046, 22.450403>,  <20.881721, 20.324688, 22.388023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.010174, 19.951046, 22.450403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685039, -0.115419, 0.719305,
		-0.653908, -0.337823, -0.676964,
		0.321132, -0.934106, 0.155948,
		21.106514, 19.670815, 22.497189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.252953, 20.060865, 22.284451>,  <20.881721, 20.324688, 22.388023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.252953, 20.060865, 22.284451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.497162, 19.822689, 22.493338>,  <20.643688, 19.679783, 22.618670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.497162, 19.822689, 22.493338>,  <20.252953, 20.060865, 22.284451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.497162, 19.822689, 22.493338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683238, -0.062494, 0.727517,
		-0.400560, -0.800963, -0.444984,
		0.610523, -0.595444, 0.522216,
		20.680319, 19.644056, 22.650002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892227, 19.524706, 22.652561>,  <20.252953, 20.060865, 22.284451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.892227, 19.524706, 22.652561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.230923, 19.461761, 22.855843>,  <20.434139, 19.423996, 22.977812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.230923, 19.461761, 22.855843>,  <19.892227, 19.524706, 22.652561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.230923, 19.461761, 22.855843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513890, 0.005246, 0.857840,
		-0.137656, -0.987527, -0.076425,
		0.846739, -0.157361, 0.508203,
		20.484945, 19.414555, 23.008303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.793509, 19.005957, 23.151278>,  <19.892227, 19.524706, 22.652561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.793509, 19.005957, 23.151278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.098125, 19.231262, 23.279520>,  <20.280895, 19.366446, 23.356466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.098125, 19.231262, 23.279520>,  <19.793509, 19.005957, 23.151278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.098125, 19.231262, 23.279520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492139, 0.180675, 0.851561,
		0.421728, -0.806282, 0.414795,
		0.761541, 0.563264, 0.320607,
		20.326588, 19.400242, 23.375702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.024258, 18.715839, 23.831640>,  <19.793509, 19.005957, 23.151278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.024258, 18.715839, 23.831640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.182838, 19.081718, 23.863029>,  <20.277987, 19.301245, 23.881863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.182838, 19.081718, 23.863029>,  <20.024258, 18.715839, 23.831640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.182838, 19.081718, 23.863029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375364, 0.083496, 0.923109,
		0.837811, -0.395424, 0.376446,
		0.396452, 0.914696, 0.078474,
		20.301775, 19.356127, 23.886572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.231024, 18.744810, 24.425829>,  <20.024258, 18.715839, 23.831640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.231024, 18.744810, 24.425829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.222969, 19.137150, 24.348343>,  <20.218136, 19.372555, 24.301851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.222969, 19.137150, 24.348343>,  <20.231024, 18.744810, 24.425829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.222969, 19.137150, 24.348343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178259, 0.187129, 0.966026,
		0.983777, 0.053986, 0.171078,
		-0.020138, 0.980851, -0.193717,
		20.216928, 19.431404, 24.290228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.695070, 19.181002, 24.826740>,  <20.231024, 18.744810, 24.425829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.695070, 19.181002, 24.826740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.379005, 19.411469, 24.743149>,  <20.189365, 19.549749, 24.692993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.379005, 19.411469, 24.743149>,  <20.695070, 19.181002, 24.826740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.379005, 19.411469, 24.743149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113846, 0.197059, 0.973759,
		0.602229, 0.793221, -0.090115,
		-0.790164, 0.576167, -0.208980,
		20.141956, 19.584318, 24.680454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.520967, 19.532198, 25.374386>,  <20.695070, 19.181002, 24.826740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.520967, 19.532198, 25.374386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.204205, 19.681511, 25.181080>,  <20.014147, 19.771099, 25.065096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.204205, 19.681511, 25.181080>,  <20.520967, 19.532198, 25.374386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.204205, 19.681511, 25.181080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394132, 0.292032, 0.871423,
		0.466413, 0.880556, -0.084140,
		-0.791908, 0.373281, -0.483263,
		19.966633, 19.793495, 25.036100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.319538, 20.358099, 25.382786>,  <20.520967, 19.532198, 25.374386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.319538, 20.358099, 25.382786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.990997, 20.131561, 25.355551>,  <19.793873, 19.995640, 25.339211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.990997, 20.131561, 25.355551>,  <20.319538, 20.358099, 25.382786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.990997, 20.131561, 25.355551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292360, 0.315470, 0.902776,
		-0.489802, 0.761403, -0.424688,
		-0.821352, -0.566343, -0.068086,
		19.744591, 19.961658, 25.335125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.759939, 20.833923, 25.562567>,  <20.319538, 20.358099, 25.382786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.759939, 20.833923, 25.562567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.649147, 20.450771, 25.592892>,  <19.582672, 20.220881, 25.611086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.649147, 20.450771, 25.592892>,  <19.759939, 20.833923, 25.562567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.649147, 20.450771, 25.592892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416751, 0.190850, 0.888760,
		-0.865794, 0.214575, -0.452059,
		-0.276981, -0.957880, 0.075813,
		19.566053, 20.163408, 25.615635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.198753, 20.926474, 25.914831>,  <19.759939, 20.833923, 25.562567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.198753, 20.926474, 25.914831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.325657, 20.551048, 25.969164>,  <19.401798, 20.325794, 26.001762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.325657, 20.551048, 25.969164>,  <19.198753, 20.926474, 25.914831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.325657, 20.551048, 25.969164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411264, -0.007105, 0.911489,
		-0.854523, -0.345038, -0.388251,
		0.317257, -0.938562, 0.135830,
		19.420834, 20.269480, 26.009912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.752483, 20.439669, 25.842581>,  <19.198753, 20.926474, 25.914831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.752483, 20.439669, 25.842581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.770695, 20.059498, 25.719543>,  <18.781622, 19.831394, 25.645721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.770695, 20.059498, 25.719543>,  <18.752483, 20.439669, 25.842581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.770695, 20.059498, 25.719543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163840, 0.296637, -0.940831,
		0.985436, 0.093229, -0.142213,
		0.045527, -0.950429, -0.307592,
		18.784353, 19.774368, 25.627266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.936892, 20.471848, 25.165113>,  <18.752483, 20.439669, 25.842581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.936892, 20.471848, 25.165113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.772976, 20.107021, 25.170948>,  <18.674627, 19.888126, 25.174450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.772976, 20.107021, 25.170948>,  <18.936892, 20.471848, 25.165113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.772976, 20.107021, 25.170948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305657, 0.122229, -0.944264,
		0.859446, -0.391408, -0.328866,
		-0.409789, -0.912064, 0.014588,
		18.650040, 19.833403, 25.175323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.233566, 19.867935, 24.695135>,  <18.936892, 20.471848, 25.165113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.233566, 19.867935, 24.695135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837948, 19.870743, 24.754107>,  <18.600576, 19.872427, 24.789490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837948, 19.870743, 24.754107>,  <19.233566, 19.867935, 24.695135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.837948, 19.870743, 24.754107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141828, 0.231294, -0.962491,
		-0.040854, -0.972859, -0.227766,
		-0.989048, 0.007018, 0.147428,
		18.541233, 19.872849, 24.798334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.807734, 19.313007, 24.276403>,  <19.233566, 19.867935, 24.695135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.807734, 19.313007, 24.276403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.671562, 19.685436, 24.328882>,  <18.589859, 19.908894, 24.360369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.671562, 19.685436, 24.328882>,  <18.807734, 19.313007, 24.276403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.671562, 19.685436, 24.328882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017239, 0.133328, -0.990922,
		-0.940112, -0.339601, -0.029338,
		-0.340430, 0.931072, 0.131197,
		18.569433, 19.964758, 24.368242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.200489, 19.341673, 23.913284>,  <18.807734, 19.313007, 24.276403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.200489, 19.341673, 23.913284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402821, 19.684475, 23.952637>,  <18.524220, 19.890156, 23.976248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402821, 19.684475, 23.952637>,  <18.200489, 19.341673, 23.913284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.402821, 19.684475, 23.952637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046353, 0.140885, -0.988940,
		-0.861387, 0.495675, 0.110988,
		0.505830, 0.857005, 0.098381,
		18.554569, 19.941576, 23.982151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.626535, 19.868176, 23.725861>,  <18.200489, 19.341673, 23.913284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.626535, 19.868176, 23.725861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.989994, 20.028793, 23.680029>,  <18.208069, 20.125164, 23.652531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.989994, 20.028793, 23.680029>,  <17.626535, 19.868176, 23.725861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.989994, 20.028793, 23.680029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209589, 0.201243, -0.956856,
		-0.361161, 0.893456, 0.267017,
		0.908645, 0.401543, -0.114578,
		18.262587, 20.149256, 23.645655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.486259, 20.494911, 23.407131>,  <17.626535, 19.868176, 23.725861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.486259, 20.494911, 23.407131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.870098, 20.418991, 23.324039>,  <18.100401, 20.373440, 23.274185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.870098, 20.418991, 23.324039>,  <17.486259, 20.494911, 23.407131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.870098, 20.418991, 23.324039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129176, 0.358698, -0.924472,
		0.249976, 0.913954, 0.319688,
		0.959596, -0.189800, -0.207727,
		18.157976, 20.362051, 23.261721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641674, 21.007179, 22.976305>,  <17.486259, 20.494911, 23.407131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641674, 21.007179, 22.976305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.930363, 20.737701, 22.912743>,  <18.103575, 20.576014, 22.874605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.930363, 20.737701, 22.912743>,  <17.641674, 21.007179, 22.976305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.930363, 20.737701, 22.912743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098816, 0.327504, -0.939668,
		0.685094, 0.662475, 0.302939,
		0.721721, -0.673697, -0.158908,
		18.146879, 20.535593, 22.865070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.317842, 21.277084, 22.767881>,  <17.641674, 21.007179, 22.976305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.317842, 21.277084, 22.767881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307568, 20.898022, 22.640581>,  <18.301403, 20.670584, 22.564201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307568, 20.898022, 22.640581>,  <18.317842, 21.277084, 22.767881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.307568, 20.898022, 22.640581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397376, 0.282443, -0.873108,
		0.917296, -0.148892, 0.369322,
		-0.025686, -0.947658, -0.318251,
		18.299862, 20.613724, 22.545105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.934525, 21.214920, 22.238386>,  <18.317842, 21.277084, 22.767881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.934525, 21.214920, 22.238386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.696629, 20.899467, 22.175978>,  <18.553892, 20.710196, 22.138533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.696629, 20.899467, 22.175978>,  <18.934525, 21.214920, 22.238386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.696629, 20.899467, 22.175978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253835, -0.000068, -0.967248,
		0.762794, -0.614863, 0.200223,
		-0.594739, -0.788634, -0.156022,
		18.518208, 20.662878, 22.129171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.271463, 20.800856, 21.717831>,  <18.934525, 21.214920, 22.238386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.271463, 20.800856, 21.717831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.888248, 20.687214, 21.733059>,  <18.658319, 20.619028, 21.742197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.888248, 20.687214, 21.733059>,  <19.271463, 20.800856, 21.717831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.888248, 20.687214, 21.733059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014058, -0.086094, -0.996188,
		0.286299, -0.954920, 0.078487,
		-0.958037, -0.284104, 0.038073,
		18.600838, 20.601982, 21.744480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.211628, 20.233442, 21.284489>,  <19.271463, 20.800856, 21.717831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.211628, 20.233442, 21.284489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.841774, 20.382309, 21.316851>,  <18.619862, 20.471628, 21.336267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.841774, 20.382309, 21.316851>,  <19.211628, 20.233442, 21.284489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.841774, 20.382309, 21.316851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112160, -0.063077, -0.991686,
		-0.363971, -0.926019, 0.100066,
		-0.924633, 0.372169, 0.080904,
		18.564384, 20.493959, 21.341122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909975, 19.865126, 20.751595>,  <19.211628, 20.233442, 21.284489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.909975, 19.865126, 20.751595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.682259, 20.186398, 20.821806>,  <18.545630, 20.379160, 20.863934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.682259, 20.186398, 20.821806>,  <18.909975, 19.865126, 20.751595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.682259, 20.186398, 20.821806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012447, 0.205059, -0.978671,
		-0.822041, -0.559334, -0.106741,
		-0.569292, 0.803179, 0.175529,
		18.511471, 20.427351, 20.874464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.354683, 19.916018, 20.244555>,  <18.909975, 19.865126, 20.751595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.354683, 19.916018, 20.244555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373386, 20.298912, 20.358757>,  <18.384607, 20.528648, 20.427279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373386, 20.298912, 20.358757>,  <18.354683, 19.916018, 20.244555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.373386, 20.298912, 20.358757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085481, 0.288605, -0.953624,
		-0.995242, 0.020184, 0.095320,
		0.046758, 0.957235, 0.285507,
		18.387413, 20.586082, 20.444408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844391, 20.284491, 19.925409>,  <18.354683, 19.916018, 20.244555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.844391, 20.284491, 19.925409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.101429, 20.572975, 20.028889>,  <18.255651, 20.746065, 20.090977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.101429, 20.572975, 20.028889>,  <17.844391, 20.284491, 19.925409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.101429, 20.572975, 20.028889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099517, 0.413337, -0.905124,
		-0.759714, 0.555885, 0.337382,
		0.642597, 0.721211, 0.258698,
		18.294209, 20.789339, 20.106499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.507639, 20.888300, 19.773935>,  <17.844391, 20.284491, 19.925409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.507639, 20.888300, 19.773935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.892517, 20.994110, 19.799879>,  <18.123444, 21.057596, 19.815445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.892517, 20.994110, 19.799879>,  <17.507639, 20.888300, 19.773935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.892517, 20.994110, 19.799879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096313, 0.553219, -0.827449,
		-0.254761, 0.789921, 0.557782,
		0.962196, 0.264524, 0.064859,
		18.181175, 21.073467, 19.819336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.438852, 21.622686, 19.660336>,  <17.507639, 20.888300, 19.773935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.438852, 21.622686, 19.660336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.801601, 21.475529, 19.578125>,  <18.019251, 21.387234, 19.528799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.801601, 21.475529, 19.578125>,  <17.438852, 21.622686, 19.660336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.801601, 21.475529, 19.578125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011059, 0.508318, -0.861098,
		0.421263, 0.778632, 0.465047,
		0.906871, -0.367892, -0.205525,
		18.073662, 21.365162, 19.516468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759617, 22.203316, 19.208729>,  <17.438852, 21.622686, 19.660336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.759617, 22.203316, 19.208729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.993710, 21.881756, 19.166313>,  <18.134165, 21.688820, 19.140863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.993710, 21.881756, 19.166313>,  <17.759617, 22.203316, 19.208729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.993710, 21.881756, 19.166313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070731, 0.180884, -0.980958,
		0.807774, 0.566589, 0.162720,
		0.585233, -0.803902, -0.106038,
		18.169279, 21.640585, 19.134502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.333649, 22.397247, 18.859999>,  <17.759617, 22.203316, 19.208729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.333649, 22.397247, 18.859999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.330307, 22.003368, 18.790369>,  <18.328302, 21.767040, 18.748590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.330307, 22.003368, 18.790369>,  <18.333649, 22.397247, 18.859999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330307, 22.003368, 18.790369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140174, 0.171208, -0.975212,
		0.990092, -0.032550, 0.136598,
		-0.008356, -0.984697, -0.174074,
		18.327801, 21.707960, 18.738148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.956059, 22.306063, 18.496841>,  <18.333649, 22.397247, 18.859999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.956059, 22.306063, 18.496841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.698479, 22.006550, 18.434034>,  <18.543930, 21.826841, 18.396351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.698479, 22.006550, 18.434034>,  <18.956059, 22.306063, 18.496841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.698479, 22.006550, 18.434034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160618, 0.068347, -0.984647,
		0.748018, -0.659282, 0.076256,
		-0.643949, -0.748783, -0.157017,
		18.505295, 21.781916, 18.386929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.279232, 21.943514, 18.008810>,  <18.956059, 22.306063, 18.496841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.279232, 21.943514, 18.008810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.912575, 21.788448, 17.969870>,  <18.692579, 21.695408, 17.946505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.912575, 21.788448, 17.969870>,  <19.279232, 21.943514, 18.008810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.912575, 21.788448, 17.969870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175114, -0.170553, -0.969663,
		0.359302, -0.905885, 0.224222,
		-0.916645, -0.387666, -0.097353,
		18.637581, 21.672148, 17.940664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.242294, 21.281191, 17.744932>,  <19.279232, 21.943514, 18.008810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.242294, 21.281191, 17.744932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.904530, 21.456650, 17.621929>,  <18.701870, 21.561924, 17.548128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.904530, 21.456650, 17.621929>,  <19.242294, 21.281191, 17.744932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.904530, 21.456650, 17.621929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204155, -0.267205, -0.941765,
		-0.495268, -0.858016, 0.136080,
		-0.844411, 0.438645, -0.307506,
		18.651207, 21.588243, 17.529676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009501, 20.876701, 17.130545>,  <19.242294, 21.281191, 17.744932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009501, 20.876701, 17.130545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.758553, 21.187622, 17.111744>,  <18.607983, 21.374174, 17.100464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.758553, 21.187622, 17.111744>,  <19.009501, 20.876701, 17.130545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.758553, 21.187622, 17.111744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153316, -0.182470, -0.971184,
		-0.763478, -0.602087, 0.233649,
		-0.627372, 0.777300, -0.047002,
		18.570341, 21.420813, 17.097643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.399435, 20.602100, 16.798361>,  <19.009501, 20.876701, 17.130545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.399435, 20.602100, 16.798361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373257, 20.998981, 16.755926>,  <18.357550, 21.237110, 16.730465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373257, 20.998981, 16.755926>,  <18.399435, 20.602100, 16.798361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.373257, 20.998981, 16.755926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006460, -0.106735, -0.994266,
		-0.997835, -0.064383, 0.013395,
		-0.065444, 0.992201, -0.106088,
		18.353624, 21.296642, 16.724100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.780916, 20.777437, 16.386488>,  <18.399435, 20.602100, 16.798361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.780916, 20.777437, 16.386488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.021400, 21.094269, 16.344233>,  <18.165691, 21.284367, 16.318880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.021400, 21.094269, 16.344233>,  <17.780916, 20.777437, 16.386488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.021400, 21.094269, 16.344233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305971, 0.106061, -0.946115,
		-0.738192, 0.601136, 0.306117,
		0.601211, 0.792077, -0.105637,
		18.201763, 21.331892, 16.312542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475075, 21.169098, 15.941193>,  <17.780916, 20.777437, 16.386488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.475075, 21.169098, 15.941193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850395, 21.305378, 15.917476>,  <18.075586, 21.387146, 15.903246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850395, 21.305378, 15.917476>,  <17.475075, 21.169098, 15.941193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.850395, 21.305378, 15.917476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050499, -0.034628, -0.998124,
		-0.342116, 0.939533, -0.015286,
		0.938300, 0.340702, -0.059292,
		18.131886, 21.407589, 15.899688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.421614, 21.477560, 15.353423>,  <17.475075, 21.169098, 15.941193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.421614, 21.477560, 15.353423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.818668, 21.443497, 15.387889>,  <18.056900, 21.423059, 15.408568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.818668, 21.443497, 15.387889>,  <17.421614, 21.477560, 15.353423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.818668, 21.443497, 15.387889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089184, 0.032314, -0.995491,
		0.081990, 0.995843, 0.039671,
		0.992635, -0.085158, 0.086164,
		18.116459, 21.417950, 15.413738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.784536, 21.934940, 14.962619>,  <17.421614, 21.477560, 15.353423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.784536, 21.934940, 14.962619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.057877, 21.646992, 15.011310>,  <18.221880, 21.474222, 15.040524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.057877, 21.646992, 15.011310>,  <17.784536, 21.934940, 14.962619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.057877, 21.646992, 15.011310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026407, -0.190989, -0.981237,
		0.729614, 0.667313, -0.149522,
		0.683349, -0.719873, 0.121727,
		18.262880, 21.431030, 15.047828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.307343, 22.164627, 14.520707>,  <17.784536, 21.934940, 14.962619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.307343, 22.164627, 14.520707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.360920, 21.775375, 14.595628>,  <18.393066, 21.541824, 14.640580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.360920, 21.775375, 14.595628>,  <18.307343, 22.164627, 14.520707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.360920, 21.775375, 14.595628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019233, -0.191523, -0.981300,
		0.990802, 0.127838, -0.044370,
		0.133946, -0.973127, 0.187302,
		18.401104, 21.483437, 14.651818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.839312, 21.971594, 14.105872>,  <18.307343, 22.164627, 14.520707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.839312, 21.971594, 14.105872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.703857, 21.604801, 14.190223>,  <18.622585, 21.384726, 14.240833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.703857, 21.604801, 14.190223>,  <18.839312, 21.971594, 14.105872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.703857, 21.604801, 14.190223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010992, -0.227959, -0.973609,
		0.940853, -0.327381, 0.087274,
		-0.338636, -0.916982, 0.210878,
		18.602266, 21.329706, 14.253486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.388540, 21.482347, 13.914895>,  <18.839312, 21.971594, 14.105872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.388540, 21.482347, 13.914895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017059, 21.334023, 13.913785>,  <18.794170, 21.245028, 13.913119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017059, 21.334023, 13.913785>,  <19.388540, 21.482347, 13.914895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017059, 21.334023, 13.913785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090529, -0.219458, -0.971413,
		0.359604, -0.902405, 0.237381,
		-0.928703, -0.370814, -0.002775,
		18.738449, 21.222778, 13.912952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485023, 20.890217, 13.580907>,  <19.388540, 21.482347, 13.914895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485023, 20.890217, 13.580907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.088696, 20.943279, 13.570474>,  <18.850899, 20.975117, 13.564214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.088696, 20.943279, 13.570474>,  <19.485023, 20.890217, 13.580907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.088696, 20.943279, 13.570474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003772, -0.219981, -0.975497,
		-0.135141, -0.966443, 0.218462,
		-0.990819, 0.132654, -0.026083,
		18.791451, 20.983076, 13.562649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.324352, 20.593349, 13.039090>,  <19.485023, 20.890217, 13.580907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.324352, 20.593349, 13.039090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.979706, 20.786762, 13.100815>,  <18.772919, 20.902811, 13.137850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.979706, 20.786762, 13.100815>,  <19.324352, 20.593349, 13.039090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.979706, 20.786762, 13.100815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151061, 0.045951, -0.987456,
		-0.484559, -0.874119, 0.033451,
		-0.861617, 0.483534, 0.154311,
		18.721220, 20.931822, 13.147108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.600737, 20.166643, 12.802497>,  <19.324352, 20.593349, 13.039090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.600737, 20.166643, 12.802497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.577789, 20.565754, 12.788956>,  <18.564022, 20.805222, 12.780830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.577789, 20.565754, 12.788956>,  <18.600737, 20.166643, 12.802497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.577789, 20.565754, 12.788956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181401, -0.043763, -0.982435,
		-0.981735, -0.050218, 0.183508,
		-0.057367, 0.997779, -0.033854,
		18.560579, 20.865088, 12.778799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.023371, 20.247854, 12.350845>,  <18.600737, 20.166643, 12.802497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.023371, 20.247854, 12.350845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.213474, 20.599529, 12.364454>,  <18.327536, 20.810535, 12.372620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.213474, 20.599529, 12.364454>,  <18.023371, 20.247854, 12.350845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.213474, 20.599529, 12.364454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012428, 0.031958, -0.999412,
		-0.879759, 0.475401, 0.004262,
		0.475257, 0.879189, 0.034023,
		18.356052, 20.863285, 12.374661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.609816, 20.717138, 11.923318>,  <18.023371, 20.247854, 12.350845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.609816, 20.717138, 11.923318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.980392, 20.865627, 11.948298>,  <18.202738, 20.954721, 11.963285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.980392, 20.865627, 11.948298>,  <17.609816, 20.717138, 11.923318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.980392, 20.865627, 11.948298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002345, 0.160198, -0.987082,
		-0.376432, 0.914620, 0.147544,
		0.926441, 0.371224, 0.062449,
		18.258326, 20.976994, 11.967032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.605255, 21.291513, 11.442116>,  <17.609816, 20.717138, 11.923318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.605255, 21.291513, 11.442116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.989407, 21.214943, 11.523137>,  <18.219898, 21.169001, 11.571750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.989407, 21.214943, 11.523137>,  <17.605255, 21.291513, 11.442116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.989407, 21.214943, 11.523137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225227, 0.105018, -0.968630,
		0.164149, 0.975873, 0.143972,
		0.960379, -0.191426, 0.202554,
		18.277521, 21.157515, 11.583903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.986111, 21.821793, 11.180722>,  <17.605255, 21.291513, 11.442116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.986111, 21.821793, 11.180722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.248993, 21.520702, 11.196112>,  <18.406723, 21.340048, 11.205345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.248993, 21.520702, 11.196112>,  <17.986111, 21.821793, 11.180722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.248993, 21.520702, 11.196112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332732, 0.243949, -0.910922,
		0.676290, 0.611465, 0.410782,
		0.657207, -0.752728, 0.038474,
		18.446156, 21.294884, 11.207654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366123, 22.068644, 10.608466>,  <17.986111, 21.821793, 11.180722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.366123, 22.068644, 10.608466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.517647, 21.708233, 10.692989>,  <18.608561, 21.491985, 10.743703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.517647, 21.708233, 10.692989>,  <18.366123, 22.068644, 10.608466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.517647, 21.708233, 10.692989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271104, -0.110272, -0.956212,
		0.884876, 0.419510, 0.202500,
		0.378810, -0.901028, 0.211308,
		18.631290, 21.437925, 10.756382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193321, 22.095552, 10.448864>,  <18.366123, 22.068644, 10.608466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.193321, 22.095552, 10.448864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.062538, 21.717628, 10.457166>,  <18.984068, 21.490873, 10.462147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.062538, 21.717628, 10.457166>,  <19.193321, 22.095552, 10.448864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.062538, 21.717628, 10.457166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167060, -0.079399, -0.982745,
		0.930156, -0.317848, 0.183800,
		-0.326957, -0.944811, 0.020754,
		18.964451, 21.434185, 10.463392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.694386, 21.679253, 10.182856>,  <19.193321, 22.095552, 10.448864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.694386, 21.679253, 10.182856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.360245, 21.463848, 10.138688>,  <19.159760, 21.334606, 10.112187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.360245, 21.463848, 10.138688>,  <19.694386, 21.679253, 10.182856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.360245, 21.463848, 10.138688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288750, -0.258920, -0.921729,
		0.467772, -0.801851, 0.371785,
		-0.835352, -0.538512, -0.110419,
		19.109638, 21.302294, 10.105562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.880037, 21.145262, 9.681852>,  <19.694386, 21.679253, 10.182856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.880037, 21.145262, 9.681852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.481068, 21.170895, 9.668945>,  <19.241686, 21.186275, 9.661201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.481068, 21.170895, 9.668945>,  <19.880037, 21.145262, 9.681852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.481068, 21.170895, 9.668945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007082, -0.359590, -0.933084,
		-0.071397, -0.930907, 0.358209,
		-0.997423, 0.064083, -0.032266,
		19.181841, 21.190119, 9.659266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.635294, 20.440872, 9.572627>,  <19.880037, 21.145262, 9.681852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.635294, 20.440872, 9.572627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.361320, 20.711094, 9.463458>,  <19.196936, 20.873228, 9.397957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.361320, 20.711094, 9.463458>,  <19.635294, 20.440872, 9.572627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.361320, 20.711094, 9.463458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074014, -0.437157, -0.896335,
		-0.724834, -0.593732, 0.349425,
		-0.684936, 0.675556, -0.272922,
		19.155840, 20.913761, 9.381581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.964724, 20.057930, 9.452607>,  <19.635294, 20.440872, 9.572627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.964724, 20.057930, 9.452607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.928829, 20.385937, 9.226502>,  <18.907291, 20.582741, 9.090839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.928829, 20.385937, 9.226502>,  <18.964724, 20.057930, 9.452607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.928829, 20.385937, 9.226502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076335, -0.571545, -0.817012,
		-0.993036, -0.030167, 0.113885,
		-0.089738, 0.820016, -0.565262,
		18.901907, 20.631941, 9.056924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.445463, 19.931490, 8.941706>,  <18.964724, 20.057930, 9.452607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.445463, 19.931490, 8.941706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.648186, 20.246223, 8.800826>,  <18.769819, 20.435062, 8.716298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.648186, 20.246223, 8.800826>,  <18.445463, 19.931490, 8.941706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.648186, 20.246223, 8.800826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016202, -0.417178, -0.908681,
		-0.861909, 0.454817, -0.224175,
		0.506804, 0.786832, -0.352200,
		18.800226, 20.482273, 8.695166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.861242, 19.463964, 8.954927>,  <18.445463, 19.931490, 8.941706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.861242, 19.463964, 8.954927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.492142, 19.316521, 8.909925>,  <17.270681, 19.228054, 8.882923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.492142, 19.316521, 8.909925>,  <17.861242, 19.463964, 8.954927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.492142, 19.316521, 8.909925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195493, 0.196101, 0.960899,
		-0.332133, 0.908665, -0.253013,
		-0.922751, -0.368608, -0.112506,
		17.215317, 19.205938, 8.876173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.314533, 19.942419, 9.191752>,  <17.861242, 19.463964, 8.954927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.314533, 19.942419, 9.191752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.161915, 19.574921, 9.232403>,  <17.070343, 19.354422, 9.256793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.161915, 19.574921, 9.232403>,  <17.314533, 19.942419, 9.191752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161915, 19.574921, 9.232403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359657, 0.248836, 0.899293,
		-0.851510, 0.306572, -0.425376,
		-0.381547, -0.918746, 0.101625,
		17.047451, 19.299297, 9.262891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650963, 20.041107, 9.562160>,  <17.314533, 19.942419, 9.191752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650963, 20.041107, 9.562160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.746952, 19.656403, 9.614960>,  <16.804546, 19.425579, 9.646640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.746952, 19.656403, 9.614960>,  <16.650963, 20.041107, 9.562160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746952, 19.656403, 9.614960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428903, 0.016945, 0.903191,
		-0.870893, -0.273358, -0.408437,
		0.239973, -0.961763, 0.132002,
		16.818945, 19.367874, 9.654560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.034227, 19.799957, 9.959547>,  <16.650963, 20.041107, 9.562160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.034227, 19.799957, 9.959547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.319424, 19.523956, 10.009413>,  <16.490541, 19.358356, 10.039332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.319424, 19.523956, 10.009413>,  <16.034227, 19.799957, 9.959547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.319424, 19.523956, 10.009413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265837, -0.101489, 0.958661,
		-0.648827, -0.716656, -0.255789,
		0.712990, -0.690003, 0.124665,
		16.533321, 19.316956, 10.046812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781087, 19.188969, 10.257499>,  <16.034227, 19.799957, 9.959547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781087, 19.188969, 10.257499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.171253, 19.196690, 10.345311>,  <16.405354, 19.201323, 10.397999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.171253, 19.196690, 10.345311>,  <15.781087, 19.188969, 10.257499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.171253, 19.196690, 10.345311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205282, -0.282750, 0.936969,
		0.080157, -0.958999, -0.271836,
		0.975415, 0.019302, 0.219530,
		16.463877, 19.202480, 10.411170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.819108, 18.773916, 10.776085>,  <15.781087, 19.188969, 10.257499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.819108, 18.773916, 10.776085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165039, 18.970558, 10.816877>,  <16.372597, 19.088543, 10.841352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165039, 18.970558, 10.816877>,  <15.819108, 18.773916, 10.776085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.165039, 18.970558, 10.816877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018693, -0.234509, 0.971934,
		0.501722, -0.838649, -0.211999,
		0.864827, 0.491603, 0.101981,
		16.424488, 19.118038, 10.847471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.200697, 18.396532, 11.175233>,  <15.819108, 18.773916, 10.776085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.200697, 18.396532, 11.175233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373020, 18.756329, 11.204412>,  <16.476414, 18.972206, 11.221920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373020, 18.756329, 11.204412>,  <16.200697, 18.396532, 11.175233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.373020, 18.756329, 11.204412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095964, -0.034716, 0.994779,
		0.897326, -0.435561, 0.071362,
		0.430809, 0.899490, 0.072950,
		16.502262, 19.026175, 11.226297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.773565, 18.273232, 11.746080>,  <16.200697, 18.396532, 11.175233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.773565, 18.273232, 11.746080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.685299, 18.660233, 11.696685>,  <16.632339, 18.892433, 11.667048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.685299, 18.660233, 11.696685>,  <16.773565, 18.273232, 11.746080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.685299, 18.660233, 11.696685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251118, 0.065984, 0.965705,
		0.942468, 0.244109, 0.228397,
		-0.220667, 0.967501, -0.123488,
		16.619099, 18.950483, 11.659638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.147060, 18.615225, 12.294900>,  <16.773565, 18.273232, 11.746080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.147060, 18.615225, 12.294900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.864937, 18.876793, 12.185410>,  <16.695662, 19.033733, 12.119716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.864937, 18.876793, 12.185410>,  <17.147060, 18.615225, 12.294900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.864937, 18.876793, 12.185410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117200, 0.273252, 0.954776,
		0.699144, 0.705494, -0.116088,
		-0.705310, 0.653920, -0.273726,
		16.653343, 19.072969, 12.103292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172829, 18.988317, 12.913065>,  <17.147060, 18.615225, 12.294900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.172829, 18.988317, 12.913065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.833599, 19.085789, 12.724855>,  <16.630062, 19.144272, 12.611930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.833599, 19.085789, 12.724855>,  <17.172829, 18.988317, 12.913065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.833599, 19.085789, 12.724855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318326, 0.475583, 0.820054,
		0.423603, 0.845246, -0.325760,
		-0.848073, 0.243680, -0.470523,
		16.579178, 19.158892, 12.583698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.953096, 19.701578, 13.143826>,  <17.172829, 18.988317, 12.913065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.953096, 19.701578, 13.143826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606155, 19.546917, 13.018480>,  <16.397991, 19.454121, 12.943273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606155, 19.546917, 13.018480>,  <16.953096, 19.701578, 13.143826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606155, 19.546917, 13.018480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486646, 0.526968, 0.696764,
		-0.104271, 0.756839, -0.645230,
		-0.867354, -0.386651, -0.313365,
		16.345949, 19.430922, 12.924471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.455515, 20.257944, 13.192613>,  <16.953096, 19.701578, 13.143826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.455515, 20.257944, 13.192613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.256821, 19.911587, 13.216228>,  <16.137604, 19.703773, 13.230396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.256821, 19.911587, 13.216228>,  <16.455515, 20.257944, 13.192613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.256821, 19.911587, 13.216228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459291, 0.319978, 0.828653,
		-0.736415, 0.384506, -0.556641,
		-0.496735, -0.865892, 0.059036,
		16.107800, 19.651819, 13.233938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.851815, 20.466982, 13.455095>,  <16.455515, 20.257944, 13.192613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.851815, 20.466982, 13.455095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.898765, 20.075268, 13.521098>,  <15.926934, 19.840240, 13.560699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.898765, 20.075268, 13.521098>,  <15.851815, 20.466982, 13.455095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.898765, 20.075268, 13.521098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340169, 0.116458, 0.933125,
		-0.933011, -0.165654, -0.319453,
		0.117373, -0.979284, 0.165007,
		15.933976, 19.781483, 13.570601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.276737, 20.312954, 13.854104>,  <15.851815, 20.466982, 13.455095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.276737, 20.312954, 13.854104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.536996, 20.020771, 13.937139>,  <15.693151, 19.845461, 13.986959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.536996, 20.020771, 13.937139>,  <15.276737, 20.312954, 13.854104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.536996, 20.020771, 13.937139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185465, 0.112229, 0.976221,
		-0.736385, -0.673674, -0.062453,
		0.650646, -0.730458, 0.207587,
		15.732189, 19.801634, 13.999414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.984056, 19.806213, 14.263250>,  <15.276737, 20.312954, 13.854104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.984056, 19.806213, 14.263250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.371333, 19.776493, 14.358821>,  <15.603699, 19.758661, 14.416163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.371333, 19.776493, 14.358821>,  <14.984056, 19.806213, 14.263250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371333, 19.776493, 14.358821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222324, 0.182644, 0.957712,
		-0.114797, -0.980368, 0.160316,
		0.968191, -0.074300, 0.238926,
		15.661791, 19.754204, 14.430499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.055683, 19.282925, 14.733177>,  <14.984056, 19.806213, 14.263250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.055683, 19.282925, 14.733177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392703, 19.491703, 14.786366>,  <15.594915, 19.616970, 14.818280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392703, 19.491703, 14.786366>,  <15.055683, 19.282925, 14.733177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392703, 19.491703, 14.786366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130263, -0.042089, 0.990586,
		0.522628, -0.851940, 0.032528,
		0.842551, 0.521945, 0.132973,
		15.645469, 19.648287, 14.826259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.490107, 18.907991, 15.186887>,  <15.055683, 19.282925, 14.733177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.490107, 18.907991, 15.186887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.652774, 19.273064, 15.203076>,  <15.750374, 19.492107, 15.212790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.652774, 19.273064, 15.203076>,  <15.490107, 18.907991, 15.186887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.652774, 19.273064, 15.203076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108585, -0.092277, 0.989795,
		0.907100, -0.398123, -0.136630,
		0.406668, 0.912679, 0.040475,
		15.774775, 19.546867, 15.215219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.000896, 18.870800, 15.637094>,  <15.490107, 18.907991, 15.186887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.000896, 18.870800, 15.637094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.969722, 19.268932, 15.614318>,  <15.951017, 19.507812, 15.600653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.969722, 19.268932, 15.614318>,  <16.000896, 18.870800, 15.637094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.969722, 19.268932, 15.614318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291796, 0.077386, 0.953345,
		0.953300, 0.057685, -0.296465,
		-0.077936, 0.995331, -0.056940,
		15.946341, 19.567532, 15.597236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.701424, 19.189905, 15.847926>,  <16.000896, 18.870800, 15.637094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.701424, 19.189905, 15.847926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.413223, 19.458363, 15.917722>,  <16.240303, 19.619436, 15.959599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.413223, 19.458363, 15.917722>,  <16.701424, 19.189905, 15.847926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.413223, 19.458363, 15.917722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359447, 0.146270, 0.921630,
		0.593023, 0.726755, -0.346628,
		-0.720501, 0.671142, 0.174488,
		16.197073, 19.659706, 15.970068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.940634, 19.828527, 16.232035>,  <16.701424, 19.189905, 15.847926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.940634, 19.828527, 16.232035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.550495, 19.846748, 16.318405>,  <16.316412, 19.857681, 16.370228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.550495, 19.846748, 16.318405>,  <16.940634, 19.828527, 16.232035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.550495, 19.846748, 16.318405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220679, 0.201510, 0.954303,
		-0.000042, 0.978427, -0.206594,
		-0.975347, 0.045550, 0.215927,
		16.257891, 19.860413, 16.383183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.948309, 20.353664, 16.631641>,  <16.940634, 19.828527, 16.232035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.948309, 20.353664, 16.631641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.604206, 20.161690, 16.700483>,  <16.397745, 20.046505, 16.741789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.604206, 20.161690, 16.700483>,  <16.948309, 20.353664, 16.631641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.604206, 20.161690, 16.700483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134948, 0.111194, 0.984594,
		-0.491679, 0.870229, -0.030889,
		-0.860256, -0.479935, 0.172107,
		16.346128, 20.017710, 16.752115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642567, 20.721169, 17.171986>,  <16.948309, 20.353664, 16.631641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.642567, 20.721169, 17.171986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.477093, 20.357006, 17.170099>,  <16.377808, 20.138508, 17.168968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.477093, 20.357006, 17.170099>,  <16.642567, 20.721169, 17.171986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.477093, 20.357006, 17.170099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173463, -0.083904, 0.981260,
		-0.893742, 0.405116, 0.192632,
		-0.413687, -0.910407, -0.004716,
		16.352987, 20.083883, 17.168684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.352093, 20.703623, 17.833088>,  <16.642567, 20.721169, 17.171986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.352093, 20.703623, 17.833088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388741, 20.331654, 17.690624>,  <16.410730, 20.108473, 17.605146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388741, 20.331654, 17.690624>,  <16.352093, 20.703623, 17.833088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.388741, 20.331654, 17.690624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470314, -0.274847, 0.838609,
		-0.877730, -0.244340, 0.412174,
		0.091621, -0.929923, -0.356158,
		16.416227, 20.052677, 17.583776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.225531, 20.252270, 18.423914>,  <16.352093, 20.703623, 17.833088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.225531, 20.252270, 18.423914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.383755, 19.998924, 18.157866>,  <16.478689, 19.846918, 17.998238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.383755, 19.998924, 18.157866>,  <16.225531, 20.252270, 18.423914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.383755, 19.998924, 18.157866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321947, -0.582614, 0.746265,
		-0.860164, -0.509327, -0.026551,
		0.395562, -0.633362, -0.665119,
		16.502422, 19.808916, 17.958330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041868, 19.445055, 18.624989>,  <16.225531, 20.252270, 18.423914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041868, 19.445055, 18.624989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372051, 19.478065, 18.401630>,  <16.570162, 19.497871, 18.267614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372051, 19.478065, 18.401630>,  <16.041868, 19.445055, 18.624989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372051, 19.478065, 18.401630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493462, -0.585820, 0.642892,
		-0.274065, -0.806228, -0.524294,
		0.825460, 0.082525, -0.558396,
		16.619690, 19.502823, 18.234112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.283962, 18.721392, 18.689396>,  <16.041868, 19.445055, 18.624989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.283962, 18.721392, 18.689396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.576694, 18.950062, 18.541012>,  <16.752333, 19.087265, 18.451981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.576694, 18.950062, 18.541012>,  <16.283962, 18.721392, 18.689396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.576694, 18.950062, 18.541012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618457, -0.328484, 0.713869,
		0.286248, -0.751853, -0.593952,
		0.731828, 0.571677, -0.370961,
		16.796244, 19.121565, 18.429724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.800508, 18.324696, 18.658377>,  <16.283962, 18.721392, 18.689396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.800508, 18.324696, 18.658377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.990791, 18.674881, 18.692474>,  <17.104961, 18.884993, 18.712933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.990791, 18.674881, 18.692474>,  <16.800508, 18.324696, 18.658377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.990791, 18.674881, 18.692474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542861, -0.368463, 0.754676,
		0.692100, -0.312730, -0.650536,
		0.475708, 0.875463, 0.085245,
		17.133503, 18.937519, 18.718048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.479326, 18.177359, 18.736822>,  <16.800508, 18.324696, 18.658377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.479326, 18.177359, 18.736822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.468754, 18.548161, 18.886471>,  <17.462410, 18.770641, 18.976261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.468754, 18.548161, 18.886471>,  <17.479326, 18.177359, 18.736822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.468754, 18.548161, 18.886471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596286, -0.285764, 0.750188,
		0.802337, 0.242911, -0.545206,
		-0.026429, 0.927002, 0.374123,
		17.460825, 18.826262, 18.998707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.200291, 18.479715, 18.858574>,  <17.479326, 18.177359, 18.736822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.200291, 18.479715, 18.858574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.923325, 18.643761, 19.096018>,  <17.757145, 18.742188, 19.238483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.923325, 18.643761, 19.096018>,  <18.200291, 18.479715, 18.858574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.923325, 18.643761, 19.096018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551277, -0.230055, 0.801978,
		0.465465, 0.882543, -0.066792,
		-0.692414, 0.410113, 0.593608,
		17.715601, 18.766794, 19.274099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.651901, 18.652466, 19.466604>,  <18.200291, 18.479715, 18.858574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.651901, 18.652466, 19.466604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.284473, 18.733612, 19.602295>,  <18.064016, 18.782299, 19.683710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.284473, 18.733612, 19.602295>,  <18.651901, 18.652466, 19.466604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.284473, 18.733612, 19.602295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274571, -0.289864, 0.916837,
		0.284323, 0.935321, 0.210560,
		-0.918570, 0.202864, 0.339227,
		18.008902, 18.794472, 19.704063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.792833, 18.933084, 20.098095>,  <18.651901, 18.652466, 19.466604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.792833, 18.933084, 20.098095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.413773, 18.806114, 20.111940>,  <18.186337, 18.729933, 20.120247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.413773, 18.806114, 20.111940>,  <18.792833, 18.933084, 20.098095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.413773, 18.806114, 20.111940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154202, -0.360023, 0.920111,
		-0.279605, 0.877282, 0.390124,
		-0.947651, -0.317425, 0.034614,
		18.129477, 18.710886, 20.122324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.583586, 18.989454, 20.803804>,  <18.792833, 18.933084, 20.098095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.583586, 18.989454, 20.803804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.278992, 18.763004, 20.677540>,  <18.096235, 18.627134, 20.601780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.278992, 18.763004, 20.677540>,  <18.583586, 18.989454, 20.803804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.278992, 18.763004, 20.677540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147176, -0.323264, 0.934794,
		-0.631255, 0.758288, 0.162840,
		-0.761483, -0.566127, -0.315663,
		18.050547, 18.593166, 20.582840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.044155, 19.151581, 21.246332>,  <18.583586, 18.989454, 20.803804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.044155, 19.151581, 21.246332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.976051, 18.792110, 21.084644>,  <17.935188, 18.576427, 20.987631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.976051, 18.792110, 21.084644>,  <18.044155, 19.151581, 21.246332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.976051, 18.792110, 21.084644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044089, -0.402851, 0.914203,
		-0.984412, 0.173475, 0.028968,
		-0.170262, -0.898675, -0.404220,
		17.924973, 18.522509, 20.963379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.361271, 18.887711, 21.502756>,  <18.044155, 19.151581, 21.246332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.361271, 18.887711, 21.502756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.570755, 18.567554, 21.386066>,  <17.696445, 18.375462, 21.316053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.570755, 18.567554, 21.386066>,  <17.361271, 18.887711, 21.502756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.570755, 18.567554, 21.386066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116167, -0.406338, 0.906308,
		-0.843939, -0.440754, -0.305783,
		0.523711, -0.800390, -0.291724,
		17.727869, 18.327436, 21.298550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093260, 18.254841, 21.850723>,  <17.361271, 18.887711, 21.502756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.093260, 18.254841, 21.850723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.454300, 18.131580, 21.730486>,  <17.670923, 18.057625, 21.658344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.454300, 18.131580, 21.730486>,  <17.093260, 18.254841, 21.850723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.454300, 18.131580, 21.730486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172069, -0.381807, 0.908083,
		-0.394607, -0.871355, -0.291592,
		0.902595, -0.308162, -0.300597,
		17.725080, 18.039135, 21.640308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172958, 17.631239, 22.210257>,  <17.093260, 18.254841, 21.850723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.172958, 17.631239, 22.210257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.549210, 17.716541, 22.104622>,  <17.774960, 17.767723, 22.041241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.549210, 17.716541, 22.104622>,  <17.172958, 17.631239, 22.210257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.549210, 17.716541, 22.104622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332549, -0.422956, 0.842923,
		0.068060, -0.880699, -0.468762,
		0.940627, 0.213255, -0.264089,
		17.831398, 17.780518, 22.025394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.520445, 16.990501, 22.413828>,  <17.172958, 17.631239, 22.210257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.520445, 16.990501, 22.413828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.805531, 17.270802, 22.401293>,  <17.976582, 17.438982, 22.393772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.805531, 17.270802, 22.401293>,  <17.520445, 16.990501, 22.413828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.805531, 17.270802, 22.401293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300480, -0.264629, 0.916342,
		0.633836, -0.662509, -0.399168,
		0.712716, 0.700752, -0.031339,
		18.019346, 17.481028, 22.391891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.135092, 16.694740, 22.526978>,  <17.520445, 16.990501, 22.413828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.135092, 16.694740, 22.526978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.221920, 17.075165, 22.614944>,  <18.274017, 17.303419, 22.667725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.221920, 17.075165, 22.614944>,  <18.135092, 16.694740, 22.526978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.221920, 17.075165, 22.614944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455604, -0.297954, 0.838838,
		0.863311, -0.081891, -0.497984,
		0.217069, 0.951061, 0.219917,
		18.287041, 17.360483, 22.680920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.479721, 16.103460, 22.980898>,  <18.135092, 16.694740, 22.526978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.479721, 16.103460, 22.980898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.342381, 15.734097, 23.049517>,  <18.259977, 15.512479, 23.090689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.342381, 15.734097, 23.049517>,  <18.479721, 16.103460, 22.980898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.342381, 15.734097, 23.049517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059128, -0.161036, -0.985176,
		0.937344, -0.348403, 0.000693,
		-0.343350, -0.923408, 0.171546,
		18.239376, 15.457074, 23.100981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.832188, 15.729877, 22.412634>,  <18.479721, 16.103460, 22.980898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.832188, 15.729877, 22.412634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.509758, 15.520164, 22.522449>,  <18.316299, 15.394337, 22.588339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.509758, 15.520164, 22.522449>,  <18.832188, 15.729877, 22.412634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.509758, 15.520164, 22.522449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263168, -0.097962, -0.959764,
		0.530082, -0.845890, -0.059010,
		-0.806074, -0.524283, 0.274539,
		18.267937, 15.362880, 22.604811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.814173, 15.168106, 21.931984>,  <18.832188, 15.729877, 22.412634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.814173, 15.168106, 21.931984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.440331, 15.186729, 22.073034>,  <18.216026, 15.197904, 22.157665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.440331, 15.186729, 22.073034>,  <18.814173, 15.168106, 21.931984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.440331, 15.186729, 22.073034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354713, -0.048610, -0.933711,
		-0.026313, -0.997733, 0.061939,
		-0.934605, 0.046540, 0.352629,
		18.159948, 15.200697, 22.178823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.424089, 14.645055, 21.513554>,  <18.814173, 15.168106, 21.931984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.424089, 14.645055, 21.513554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.154846, 14.901764, 21.660551>,  <17.993299, 15.055790, 21.748749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.154846, 14.901764, 21.660551>,  <18.424089, 14.645055, 21.513554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.154846, 14.901764, 21.660551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455200, 0.032100, -0.889811,
		-0.582853, -0.766222, 0.270529,
		-0.673109, 0.641773, 0.367493,
		17.952913, 15.094296, 21.770800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.741081, 14.445335, 21.174126>,  <18.424089, 14.645055, 21.513554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.741081, 14.445335, 21.174126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718124, 14.827003, 21.291611>,  <17.704351, 15.056005, 21.362103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718124, 14.827003, 21.291611>,  <17.741081, 14.445335, 21.174126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.718124, 14.827003, 21.291611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414498, 0.244870, -0.876487,
		-0.908239, -0.172045, 0.381448,
		-0.057390, 0.954169, 0.293713,
		17.700907, 15.113255, 21.379725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.103148, 14.540019, 21.014254>,  <17.741081, 14.445335, 21.174126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.103148, 14.540019, 21.014254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.222931, 14.918037, 21.066734>,  <17.294802, 15.144848, 21.098223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.222931, 14.918037, 21.066734>,  <17.103148, 14.540019, 21.014254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.222931, 14.918037, 21.066734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287355, 0.220459, -0.932107,
		-0.909808, 0.241427, 0.337582,
		0.299459, 0.945045, 0.131200,
		17.312769, 15.201551, 21.106094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.499411, 15.070552, 20.942623>,  <17.103148, 14.540019, 21.014254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.499411, 15.070552, 20.942623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.846478, 15.249569, 20.856037>,  <17.054718, 15.356979, 20.804085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.846478, 15.249569, 20.856037>,  <16.499411, 15.070552, 20.942623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.846478, 15.249569, 20.856037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396154, 0.359365, -0.844937,
		-0.300355, 0.818879, 0.489105,
		0.867669, 0.447542, -0.216465,
		17.106777, 15.383832, 20.791098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243862, 15.641247, 20.505020>,  <16.499411, 15.070552, 20.942623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.243862, 15.641247, 20.505020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.640400, 15.632275, 20.453276>,  <16.878323, 15.626891, 20.422228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.640400, 15.632275, 20.453276>,  <16.243862, 15.641247, 20.505020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.640400, 15.632275, 20.453276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109640, 0.400611, -0.909665,
		0.072229, 0.915974, 0.394684,
		0.991343, -0.022431, -0.129363,
		16.937803, 15.625546, 20.414467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427032, 16.286545, 20.125072>,  <16.243862, 15.641247, 20.505020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.427032, 16.286545, 20.125072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.725922, 16.032928, 20.045424>,  <16.905254, 15.880758, 19.997635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.725922, 16.032928, 20.045424>,  <16.427032, 16.286545, 20.125072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.725922, 16.032928, 20.045424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032545, 0.264354, -0.963877,
		0.663778, 0.726709, 0.176896,
		0.747221, -0.634043, -0.199123,
		16.950089, 15.842715, 19.985687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812347, 16.610767, 19.648317>,  <16.427032, 16.286545, 20.125072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.812347, 16.610767, 19.648317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.916767, 16.225113, 19.629166>,  <16.979418, 15.993720, 19.617676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.916767, 16.225113, 19.629166>,  <16.812347, 16.610767, 19.648317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.916767, 16.225113, 19.629166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229669, -0.013858, -0.973170,
		0.937607, 0.265040, -0.225050,
		0.261048, -0.964138, -0.047878,
		16.995081, 15.935871, 19.614801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.053886, 16.606365, 19.021307>,  <16.812347, 16.610767, 19.648317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.053886, 16.606365, 19.021307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.983276, 16.218384, 19.088278>,  <16.940910, 15.985596, 19.128460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.983276, 16.218384, 19.088278>,  <17.053886, 16.606365, 19.021307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.983276, 16.218384, 19.088278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362124, -0.094173, -0.927361,
		0.915262, -0.224333, -0.334619,
		-0.176526, -0.969951, 0.167429,
		16.930319, 15.927399, 19.138506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.462683, 16.165714, 18.534519>,  <17.053886, 16.606365, 19.021307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.462683, 16.165714, 18.534519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131813, 15.991451, 18.676495>,  <16.933290, 15.886893, 18.761681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131813, 15.991451, 18.676495>,  <17.462683, 16.165714, 18.534519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131813, 15.991451, 18.676495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399444, 0.011576, -0.916684,
		0.395252, -0.900038, -0.183596,
		-0.827176, -0.435658, 0.354940,
		16.883659, 15.860754, 18.782976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.441160, 15.593651, 18.119539>,  <17.462683, 16.165714, 18.534519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.441160, 15.593651, 18.119539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061268, 15.604568, 18.244291>,  <16.833332, 15.611119, 18.319143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061268, 15.604568, 18.244291>,  <17.441160, 15.593651, 18.119539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061268, 15.604568, 18.244291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313012, -0.102226, -0.944232,
		0.006113, -0.994387, 0.105629,
		-0.949729, 0.027291, 0.311880,
		16.776348, 15.612757, 18.337854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029099, 14.967426, 17.849020>,  <17.441160, 15.593651, 18.119539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029099, 14.967426, 17.849020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.741096, 15.231781, 17.933706>,  <16.568296, 15.390394, 17.984518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.741096, 15.231781, 17.933706>,  <17.029099, 14.967426, 17.849020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.741096, 15.231781, 17.933706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303997, -0.026116, -0.952315,
		-0.623843, -0.750031, 0.219712,
		-0.720004, 0.660887, 0.211715,
		16.525095, 15.430047, 17.997221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.383738, 14.705398, 17.619513>,  <17.029099, 14.967426, 17.849020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.383738, 14.705398, 17.619513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.339191, 15.102898, 17.616442>,  <16.312464, 15.341397, 17.614599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.339191, 15.102898, 17.616442>,  <16.383738, 14.705398, 17.619513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.339191, 15.102898, 17.616442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293154, -0.040234, -0.955218,
		-0.949557, -0.104126, 0.295802,
		-0.111364, 0.993750, -0.007679,
		16.305782, 15.401023, 17.614138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.841578, 14.731598, 17.189642>,  <16.383738, 14.705398, 17.619513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.841578, 14.731598, 17.189642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981246, 15.106247, 17.201094>,  <16.065046, 15.331037, 17.207964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981246, 15.106247, 17.201094>,  <15.841578, 14.731598, 17.189642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.981246, 15.106247, 17.201094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173446, 0.094625, -0.980287,
		-0.920867, 0.337321, 0.195494,
		0.349170, 0.936622, 0.028630,
		16.085997, 15.387234, 17.209682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.357971, 15.088913, 16.809698>,  <15.841578, 14.731598, 17.189642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.357971, 15.088913, 16.809698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690392, 15.311111, 16.820824>,  <15.889846, 15.444430, 16.827499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690392, 15.311111, 16.820824>,  <15.357971, 15.088913, 16.809698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690392, 15.311111, 16.820824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125982, 0.236716, -0.963376,
		-0.541736, 0.797114, 0.266706,
		0.831054, 0.555496, 0.027815,
		15.939709, 15.477760, 16.829168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.149443, 15.661675, 16.502922>,  <15.357971, 15.088913, 16.809698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.149443, 15.661675, 16.502922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.542956, 15.731979, 16.488630>,  <15.779064, 15.774161, 16.480055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.542956, 15.731979, 16.488630>,  <15.149443, 15.661675, 16.502922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.542956, 15.731979, 16.488630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108724, 0.425989, -0.898172,
		-0.142643, 0.887492, 0.438191,
		0.983784, 0.175760, -0.035728,
		15.838092, 15.784707, 16.477913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.238976, 16.347683, 16.326260>,  <15.149443, 15.661675, 16.502922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.238976, 16.347683, 16.326260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.605639, 16.208714, 16.247234>,  <15.825638, 16.125332, 16.199820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.605639, 16.208714, 16.247234>,  <15.238976, 16.347683, 16.326260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.605639, 16.208714, 16.247234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035695, 0.421173, -0.906278,
		0.398071, 0.837800, 0.373671,
		0.916660, -0.347425, -0.197562,
		15.880637, 16.104486, 16.187965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.599442, 16.937559, 16.055605>,  <15.238976, 16.347683, 16.326260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.599442, 16.937559, 16.055605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.815274, 16.621429, 15.939511>,  <15.944774, 16.431751, 15.869855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.815274, 16.621429, 15.939511>,  <15.599442, 16.937559, 16.055605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815274, 16.621429, 15.939511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076868, 0.389527, -0.917802,
		0.838417, 0.472920, 0.270932,
		0.539582, -0.790327, -0.290233,
		15.977149, 16.384331, 15.852442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.228989, 17.186813, 15.671809>,  <15.599442, 16.937559, 16.055605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.228989, 17.186813, 15.671809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168167, 16.805790, 15.566350>,  <16.131674, 16.577175, 15.503075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168167, 16.805790, 15.566350>,  <16.228989, 17.186813, 15.671809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.168167, 16.805790, 15.566350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032539, 0.271430, -0.961908,
		0.987837, -0.137681, -0.072267,
		-0.152052, -0.952559, -0.263648,
		16.122551, 16.520021, 15.487255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.668371, 17.114182, 15.241271>,  <16.228989, 17.186813, 15.671809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.668371, 17.114182, 15.241271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.402031, 16.827797, 15.157323>,  <16.242228, 16.655966, 15.106955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.402031, 16.827797, 15.157323>,  <16.668371, 17.114182, 15.241271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.402031, 16.827797, 15.157323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101430, 0.365549, -0.925249,
		0.739160, -0.594789, -0.316020,
		-0.665849, -0.715961, -0.209870,
		16.202276, 16.613008, 15.094362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.877455, 16.763899, 14.579184>,  <16.668371, 17.114182, 15.241271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.877455, 16.763899, 14.579184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488266, 16.698231, 14.644147>,  <16.254753, 16.658831, 14.683125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488266, 16.698231, 14.644147>,  <16.877455, 16.763899, 14.579184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488266, 16.698231, 14.644147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195100, 0.208111, -0.958450,
		0.123549, -0.964229, -0.234516,
		-0.972971, -0.164169, 0.162409,
		16.196375, 16.648979, 14.692870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.770985, 16.528303, 13.956985>,  <16.877455, 16.763899, 14.579184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.770985, 16.528303, 13.956985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.420086, 16.629761, 14.120008>,  <16.209547, 16.690636, 14.217821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.420086, 16.629761, 14.120008>,  <16.770985, 16.528303, 13.956985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.420086, 16.629761, 14.120008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355302, 0.227833, -0.906561,
		-0.322799, -0.940083, -0.109746,
		-0.877246, 0.253644, 0.407558,
		16.156912, 16.705854, 14.242275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.317289, 16.086840, 13.510609>,  <16.770985, 16.528303, 13.956985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.317289, 16.086840, 13.510609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.127766, 16.389713, 13.690465>,  <16.014051, 16.571438, 13.798379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.127766, 16.389713, 13.690465>,  <16.317289, 16.086840, 13.510609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.127766, 16.389713, 13.690465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486516, 0.200526, -0.850348,
		-0.734035, -0.621660, 0.273371,
		-0.473810, 0.757184, 0.449640,
		15.985622, 16.616869, 13.825357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.693414, 16.029268, 13.309736>,  <16.317289, 16.086840, 13.510609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.693414, 16.029268, 13.309736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.701035, 16.409496, 13.433704>,  <15.705608, 16.637634, 13.508085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.701035, 16.409496, 13.433704>,  <15.693414, 16.029268, 13.309736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.701035, 16.409496, 13.433704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496355, 0.278074, -0.822378,
		-0.867910, -0.138162, 0.477119,
		0.019053, 0.950572, 0.309921,
		15.706752, 16.694668, 13.526681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020579, 16.134756, 13.171323>,  <15.693414, 16.029268, 13.309736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.020579, 16.134756, 13.171323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.214324, 16.484444, 13.184815>,  <15.330571, 16.694256, 13.192911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.214324, 16.484444, 13.184815>,  <15.020579, 16.134756, 13.171323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.214324, 16.484444, 13.184815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458754, 0.286627, -0.841065,
		-0.744941, 0.391905, 0.539882,
		0.484362, 0.874217, 0.033732,
		15.359632, 16.746708, 13.194935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.569585, 16.541645, 12.929597>,  <15.020579, 16.134756, 13.171323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.569585, 16.541645, 12.929597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.901937, 16.762264, 12.900103>,  <15.101347, 16.894636, 12.882406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.901937, 16.762264, 12.900103>,  <14.569585, 16.541645, 12.929597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.901937, 16.762264, 12.900103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260028, 0.267687, -0.927755,
		-0.491962, 0.790025, 0.365833,
		0.830878, 0.551547, -0.073736,
		15.151200, 16.927729, 12.877982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.397868, 17.182245, 12.539536>,  <14.569585, 16.541645, 12.929597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.397868, 17.182245, 12.539536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792174, 17.117836, 12.520201>,  <15.028758, 17.079191, 12.508599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792174, 17.117836, 12.520201>,  <14.397868, 17.182245, 12.539536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792174, 17.117836, 12.520201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023236, 0.154284, -0.987753,
		0.166508, 0.974817, 0.148347,
		0.985766, -0.161022, -0.048340,
		15.087904, 17.069530, 12.505698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.658563, 17.714916, 12.241396>,  <14.397868, 17.182245, 12.539536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.658563, 17.714916, 12.241396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.923434, 17.424042, 12.169043>,  <15.082357, 17.249517, 12.125630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.923434, 17.424042, 12.169043>,  <14.658563, 17.714916, 12.241396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.923434, 17.424042, 12.169043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090804, 0.161742, -0.982647,
		0.743824, 0.667112, 0.041071,
		0.662178, -0.727187, -0.180884,
		15.122087, 17.205885, 12.114778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.154551, 17.947550, 11.656999>,  <14.658563, 17.714916, 12.241396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.154551, 17.947550, 11.656999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.195050, 17.549686, 11.665050>,  <15.219350, 17.310968, 11.669880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.195050, 17.549686, 11.665050>,  <15.154551, 17.947550, 11.656999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.195050, 17.549686, 11.665050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012102, -0.018997, -0.999746,
		0.994787, 0.101468, 0.010114,
		0.101250, -0.994657, 0.020126,
		15.225425, 17.251289, 11.671087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.580975, 17.911211, 11.085763>,  <15.154551, 17.947550, 11.656999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.580975, 17.911211, 11.085763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.433341, 17.541409, 11.123842>,  <15.344761, 17.319527, 11.146689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.433341, 17.541409, 11.123842>,  <15.580975, 17.911211, 11.085763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.433341, 17.541409, 11.123842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023848, -0.111817, -0.993443,
		0.929091, -0.364392, 0.063318,
		-0.369083, -0.924508, 0.095198,
		15.322616, 17.264055, 11.152402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025208, 17.547888, 10.726869>,  <15.580975, 17.911211, 11.085763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.025208, 17.547888, 10.726869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.695603, 17.321362, 10.733668>,  <15.497841, 17.185446, 10.737748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.695603, 17.321362, 10.733668>,  <16.025208, 17.547888, 10.726869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.695603, 17.321362, 10.733668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092890, -0.164632, -0.981971,
		0.558906, -0.807577, 0.188264,
		-0.824011, -0.566317, 0.016998,
		15.448400, 17.151466, 10.738768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.129787, 16.939735, 10.373642>,  <16.025208, 17.547888, 10.726869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.129787, 16.939735, 10.373642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.731143, 16.968166, 10.357077>,  <15.491957, 16.985224, 10.347137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.731143, 16.968166, 10.357077>,  <16.129787, 16.939735, 10.373642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.731143, 16.968166, 10.357077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010441, -0.390062, -0.920729,
		-0.081594, -0.918041, 0.387998,
		-0.996611, 0.071075, -0.041412,
		15.432159, 16.989489, 10.344653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.962932, 16.348732, 10.023671>,  <16.129787, 16.939735, 10.373642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.962932, 16.348732, 10.023671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.660327, 16.607372, 9.984477>,  <15.478765, 16.762556, 9.960960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.660327, 16.607372, 9.984477>,  <15.962932, 16.348732, 10.023671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.660327, 16.607372, 9.984477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000828, -0.148882, -0.988855,
		-0.653981, -0.748160, 0.112096,
		-0.756510, 0.646600, -0.097985,
		15.433373, 16.801352, 9.955082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.586340, 15.987726, 9.639321>,  <15.962932, 16.348732, 10.023671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.586340, 15.987726, 9.639321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.466863, 16.365494, 9.584394>,  <15.395177, 16.592154, 9.551437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.466863, 16.365494, 9.584394>,  <15.586340, 15.987726, 9.639321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.466863, 16.365494, 9.584394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015016, -0.148520, -0.988795,
		-0.954231, -0.293284, 0.058543,
		-0.298692, 0.944418, -0.137319,
		15.377254, 16.648819, 9.543198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103501, 15.805047, 9.129457>,  <15.586340, 15.987726, 9.639321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103501, 15.805047, 9.129457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.167609, 16.199837, 9.123857>,  <15.206074, 16.436710, 9.120496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.167609, 16.199837, 9.123857>,  <15.103501, 15.805047, 9.129457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.167609, 16.199837, 9.123857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196869, 0.018061, -0.980264,
		-0.967242, 0.159864, 0.197199,
		0.160271, 0.986974, -0.014003,
		15.215691, 16.495930, 9.119656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.686333, 16.033283, 8.689965>,  <15.103501, 15.805047, 9.129457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.686333, 16.033283, 8.689965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974198, 16.310905, 8.697666>,  <15.146917, 16.477478, 8.702287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974198, 16.310905, 8.697666>,  <14.686333, 16.033283, 8.689965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974198, 16.310905, 8.697666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075096, -0.050242, -0.995910,
		-0.690249, 0.718167, -0.088279,
		0.719664, 0.694055, 0.019252,
		15.190098, 16.519121, 8.703442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.444334, 16.662579, 8.207252>,  <14.686333, 16.033283, 8.689965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.444334, 16.662579, 8.207252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.840224, 16.717934, 8.221624>,  <15.077759, 16.751146, 8.230248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.840224, 16.717934, 8.221624>,  <14.444334, 16.662579, 8.207252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.840224, 16.717934, 8.221624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030241, 0.043016, -0.998617,
		-0.139741, 0.989444, 0.038389,
		0.989726, 0.138387, 0.035932,
		15.137142, 16.759449, 8.232404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.640080, 17.265570, 7.872144>,  <14.444334, 16.662579, 8.207252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.640080, 17.265570, 7.872144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.969049, 17.038776, 7.853578>,  <15.166430, 16.902700, 7.842438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.969049, 17.038776, 7.853578>,  <14.640080, 17.265570, 7.872144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.969049, 17.038776, 7.853578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033458, 0.129660, -0.990994,
		0.567897, 0.813459, 0.125605,
		0.822419, -0.566985, -0.046417,
		15.215775, 16.868681, 7.839653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.171150, 17.680775, 7.393060>,  <14.640080, 17.265570, 7.872144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.171150, 17.680775, 7.393060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.239812, 17.287960, 7.424403>,  <15.281009, 17.052271, 7.443209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.239812, 17.287960, 7.424403>,  <15.171150, 17.680775, 7.393060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.239812, 17.287960, 7.424403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048128, -0.071083, -0.996309,
		0.983981, 0.174792, 0.035061,
		0.171654, -0.982036, 0.078357,
		15.291308, 16.993349, 7.447910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.859221, 17.541882, 7.088790>,  <15.171150, 17.680775, 7.393060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.859221, 17.541882, 7.088790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588132, 17.249088, 7.060817>,  <15.425478, 17.073412, 7.044033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588132, 17.249088, 7.060817>,  <15.859221, 17.541882, 7.088790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588132, 17.249088, 7.060817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050119, 0.048903, -0.997545,
		0.733607, -0.679565, 0.003543,
		-0.677724, -0.731983, -0.069935,
		15.384814, 17.029493, 7.039836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389959, 18.008883, 7.271638>,  <15.859221, 17.541882, 7.088790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389959, 18.008883, 7.271638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.602306, 17.924503, 7.599951>,  <16.729713, 17.873877, 7.796938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.602306, 17.924503, 7.599951>,  <16.389959, 18.008883, 7.271638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.602306, 17.924503, 7.599951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310975, -0.852471, -0.420223,
		0.788337, 0.478325, -0.386949,
		0.530866, -0.210946, 0.820782,
		16.761566, 17.861219, 7.846185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076273, 17.938141, 7.243281>,  <16.389959, 18.008883, 7.271638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076273, 17.938141, 7.243281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.011391, 17.696590, 7.555441>,  <16.972462, 17.551661, 7.742737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.011391, 17.696590, 7.555441>,  <17.076273, 17.938141, 7.243281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.011391, 17.696590, 7.555441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356083, -0.773405, -0.524451,
		0.920268, 0.192818, 0.340482,
		-0.162207, -0.603876, 0.780399,
		16.962729, 17.515429, 7.789561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058666, 18.651920, 7.366117>,  <17.076273, 17.938141, 7.243281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.058666, 18.651920, 7.366117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.440922, 18.767513, 7.388900>,  <17.670275, 18.836868, 7.402569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.440922, 18.767513, 7.388900>,  <17.058666, 18.651920, 7.366117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.440922, 18.767513, 7.388900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097419, 0.492600, -0.864786,
		-0.277964, 0.820874, 0.498900,
		0.955639, 0.288982, 0.056956,
		17.727613, 18.854208, 7.405987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116081, 19.343554, 7.052423>,  <17.058666, 18.651920, 7.366117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.116081, 19.343554, 7.052423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.487946, 19.200275, 7.017953>,  <17.711063, 19.114309, 6.997271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.487946, 19.200275, 7.017953>,  <17.116081, 19.343554, 7.052423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.487946, 19.200275, 7.017953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060249, 0.378574, -0.923608,
		0.363456, 0.853451, 0.373526,
		0.929661, -0.358195, -0.086175,
		17.766844, 19.092817, 6.992100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.282314, 19.669680, 6.420225>,  <17.116081, 19.343554, 7.052423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.282314, 19.669680, 6.420225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.617096, 19.456993, 6.472051>,  <17.817965, 19.329380, 6.503146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.617096, 19.456993, 6.472051>,  <17.282314, 19.669680, 6.420225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.617096, 19.456993, 6.472051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244679, 0.151785, -0.957650,
		0.489533, 0.833209, 0.257137,
		0.836952, -0.531718, 0.129565,
		17.868181, 19.297478, 6.510920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915625, 20.111515, 6.311984>,  <17.282314, 19.669680, 6.420225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.915625, 20.111515, 6.311984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.969147, 19.720642, 6.246005>,  <18.001261, 19.486118, 6.206418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.969147, 19.720642, 6.246005>,  <17.915625, 20.111515, 6.311984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.969147, 19.720642, 6.246005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132298, 0.182567, -0.974252,
		0.982137, 0.108538, 0.153708,
		0.133805, -0.977184, -0.164947,
		18.009289, 19.427486, 6.196521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.481653, 19.939804, 5.977096>,  <17.915625, 20.111515, 6.311984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.481653, 19.939804, 5.977096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.232407, 19.638706, 5.892144>,  <18.082859, 19.458048, 5.841173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.232407, 19.638706, 5.892144>,  <18.481653, 19.939804, 5.977096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.232407, 19.638706, 5.892144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163928, 0.139815, -0.976514,
		0.764757, -0.643296, 0.036275,
		-0.623116, -0.752743, -0.212379,
		18.045471, 19.412884, 5.828431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.581524, 19.997503, 5.329745>,  <18.481653, 19.939804, 5.977096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.581524, 19.997503, 5.329745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.329067, 19.687328, 5.337296>,  <18.177593, 19.501223, 5.341825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.329067, 19.687328, 5.337296>,  <18.581524, 19.997503, 5.329745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.329067, 19.687328, 5.337296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167220, -0.159785, -0.972886,
		0.757428, -0.610873, 0.230516,
		-0.631142, -0.775438, 0.018876,
		18.139725, 19.454697, 5.342958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796312, 19.473917, 4.832756>,  <18.581524, 19.997503, 5.329745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.796312, 19.473917, 4.832756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.405579, 19.388382, 4.836066>,  <18.171139, 19.337061, 4.838052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.405579, 19.388382, 4.836066>,  <18.796312, 19.473917, 4.832756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.405579, 19.388382, 4.836066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081615, -0.408014, -0.909320,
		0.197825, -0.887580, 0.416015,
		-0.976834, -0.213839, 0.008276,
		18.112528, 19.324230, 4.838549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656464, 18.827988, 4.548250>,  <18.796312, 19.473917, 4.832756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.656464, 18.827988, 4.548250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.353371, 19.075855, 4.466423>,  <18.171515, 19.224577, 4.417327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.353371, 19.075855, 4.466423>,  <18.656464, 18.827988, 4.548250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.353371, 19.075855, 4.466423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031329, -0.278574, -0.959903,
		-0.651812, -0.733760, 0.191671,
		-0.757733, 0.619672, -0.204566,
		18.126051, 19.261757, 4.405053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.416861, 18.531603, 3.999226>,  <18.656464, 18.827988, 4.548250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.416861, 18.531603, 3.999226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.246769, 18.893242, 3.982321>,  <18.144714, 19.110226, 3.972178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.246769, 18.893242, 3.982321>,  <18.416861, 18.531603, 3.999226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.246769, 18.893242, 3.982321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297323, -0.183640, -0.936950,
		-0.854856, -0.385854, 0.346899,
		-0.425230, 0.904098, -0.042263,
		18.119200, 19.164471, 3.969642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.644661, 18.642021, 3.902406>,  <18.416861, 18.531603, 3.999226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.644661, 18.642021, 3.902406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.876938, 18.900257, 3.704009>,  <18.016304, 19.055199, 3.584971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.876938, 18.900257, 3.704009>,  <17.644661, 18.642021, 3.902406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.876938, 18.900257, 3.704009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530600, -0.161950, -0.832007,
		-0.617461, 0.746315, 0.248506,
		0.580694, 0.645590, -0.495992,
		18.051146, 19.093933, 3.555211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224722, 18.981897, 3.447448>,  <17.644661, 18.642021, 3.902406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.224722, 18.981897, 3.447448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.589848, 19.011429, 3.286792>,  <17.808924, 19.029148, 3.190398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.589848, 19.011429, 3.286792>,  <17.224722, 18.981897, 3.447448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.589848, 19.011429, 3.286792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392532, -0.112627, -0.912816,
		-0.112627, 0.990891, -0.073828,
		0.912816, 0.073828, -0.401641,
		17.863693, 19.033577, 3.166299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.110161, 19.466293, 2.980865>,  <17.224722, 18.981897, 3.447448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.110161, 19.466293, 2.980865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379040, 19.175941, 2.922556>,  <17.540367, 19.001730, 2.887570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379040, 19.175941, 2.922556>,  <17.110161, 19.466293, 2.980865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379040, 19.175941, 2.922556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581760, -0.396070, -0.710411,
		0.457936, 0.562342, -0.688525,
		0.672198, -0.725879, -0.145774,
		17.580700, 18.958178, 2.878824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.361767, 19.479059, 2.306458>,  <17.110161, 19.466293, 2.980865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.361767, 19.479059, 2.306458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.342266, 19.096592, 2.421950>,  <17.330564, 18.867111, 2.491245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.342266, 19.096592, 2.421950>,  <17.361767, 19.479059, 2.306458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.342266, 19.096592, 2.421950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559374, -0.213349, -0.800989,
		0.827481, -0.200559, -0.524454,
		-0.048754, -0.956169, 0.288729,
		17.327641, 18.809742, 2.508569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.246363, 19.205030, 1.654147>,  <17.361767, 19.479059, 2.306458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.246363, 19.205030, 1.654147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.143223, 18.897804, 1.888613>,  <17.081339, 18.713469, 2.029294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.143223, 18.897804, 1.888613>,  <17.246363, 19.205030, 1.654147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.143223, 18.897804, 1.888613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378310, -0.477984, -0.792725,
		0.889042, -0.426155, -0.167320,
		-0.257848, -0.768064, 0.586167,
		17.065868, 18.667385, 2.064464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.111208, 18.720619, 1.175162>,  <17.246363, 19.205030, 1.654147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.111208, 18.720619, 1.175162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.985706, 18.543007, 1.510875>,  <16.910406, 18.436440, 1.712303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.985706, 18.543007, 1.510875>,  <17.111208, 18.720619, 1.175162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.985706, 18.543007, 1.510875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513198, -0.664380, -0.543348,
		0.798866, -0.601195, -0.019424,
		-0.313753, -0.444030, 0.839283,
		16.891581, 18.409798, 1.762660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326582, 18.005747, 1.201919>,  <17.111208, 18.720619, 1.175162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.326582, 18.005747, 1.201919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.980690, 18.066124, 1.393527>,  <16.773155, 18.102350, 1.508491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.980690, 18.066124, 1.393527>,  <17.326582, 18.005747, 1.201919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.980690, 18.066124, 1.393527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394194, -0.794987, -0.461093,
		0.311213, -0.587547, 0.746950,
		-0.864729, 0.150945, 0.479018,
		16.721272, 18.111408, 1.537232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116428, 17.630978, 1.830250>,  <17.326582, 18.005747, 1.201919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.116428, 17.630978, 1.830250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.818848, 17.718319, 1.577629>,  <16.640299, 17.770723, 1.426057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.818848, 17.718319, 1.577629>,  <17.116428, 17.630978, 1.830250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818848, 17.718319, 1.577629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046265, -0.959670, -0.277296,
		-0.666629, -0.177076, 0.724051,
		-0.743953, 0.218352, -0.631551,
		16.595661, 17.783825, 1.388164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.472887, 17.268345, 2.116272>,  <17.116428, 17.630978, 1.830250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.472887, 17.268345, 2.116272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.462101, 17.299259, 1.717614>,  <16.455629, 17.317808, 1.478419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.462101, 17.299259, 1.717614>,  <16.472887, 17.268345, 2.116272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.462101, 17.299259, 1.717614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295913, -0.952940, -0.065891,
		-0.954834, 0.293143, 0.048566,
		-0.026965, 0.077286, -0.996644,
		16.454012, 17.322445, 1.418621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.915782, 16.960369, 1.894017>,  <16.472887, 17.268345, 2.116272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.915782, 16.960369, 1.894017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.171684, 16.911514, 1.590492>,  <16.325226, 16.882200, 1.408377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.171684, 16.911514, 1.590492>,  <15.915782, 16.960369, 1.894017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.171684, 16.911514, 1.590492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345292, -0.927723, -0.141790,
		-0.686648, 0.352722, -0.635690,
		0.639756, -0.122139, -0.758811,
		16.363611, 16.874872, 1.362849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.661922, 16.431557, 1.521499>,  <15.915782, 16.960369, 1.894017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.661922, 16.431557, 1.521499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.007820, 16.453793, 1.321850>,  <16.215359, 16.467134, 1.202060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.007820, 16.453793, 1.321850>,  <15.661922, 16.431557, 1.521499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.007820, 16.453793, 1.321850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161522, -0.910264, -0.381222,
		-0.475526, 0.410280, -0.778168,
		0.864746, 0.055590, -0.499124,
		16.267244, 16.470469, 1.172113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.439242, 17.150440, 1.292519>,  <15.661922, 16.431557, 1.521499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.439242, 17.150440, 1.292519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.579568, 17.006435, 0.946728>,  <15.663763, 16.920033, 0.739254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.579568, 17.006435, 0.946728>,  <15.439242, 17.150440, 1.292519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.579568, 17.006435, 0.946728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104256, 0.932423, -0.346003,
		0.930624, 0.031256, 0.364640,
		0.350814, -0.360014, -0.864477,
		15.684812, 16.898432, 0.687385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900695, 17.765247, 0.991918>,  <15.439242, 17.150440, 1.292519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.900695, 17.765247, 0.991918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.775500, 17.524780, 0.697806>,  <15.700384, 17.380501, 0.521338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.775500, 17.524780, 0.697806>,  <15.900695, 17.765247, 0.991918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.775500, 17.524780, 0.697806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068551, 0.786456, -0.613830,
		0.947281, -0.141715, -0.287360,
		-0.312985, -0.601168, -0.735280,
		15.681604, 17.344429, 0.477222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293213, 17.811977, 0.548705>,  <15.900695, 17.765247, 0.991918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293213, 17.811977, 0.548705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.947490, 17.704849, 0.378413>,  <15.740056, 17.640572, 0.276238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.947490, 17.704849, 0.378413>,  <16.293213, 17.811977, 0.548705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.947490, 17.704849, 0.378413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008411, 0.838625, -0.544643,
		0.502895, -0.474320, -0.722577,
		-0.864307, -0.267821, -0.425730,
		15.688198, 17.624502, 0.250694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409615, 17.634493, -0.174076>,  <16.293213, 17.811977, 0.548705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.409615, 17.634493, -0.174076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.040169, 17.769592, -0.101565>,  <15.818501, 17.850653, -0.058058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.040169, 17.769592, -0.101565>,  <16.409615, 17.634493, -0.174076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040169, 17.769592, -0.101565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152881, 0.758243, -0.633794,
		-0.351517, -0.557667, -0.751960,
		-0.923614, 0.337750, 0.181278,
		15.763084, 17.870916, -0.047182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.127913, 17.737288, -0.818439>,  <16.409615, 17.634493, -0.174076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.127913, 17.737288, -0.818439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.967414, 17.953857, -0.522910>,  <15.871114, 18.083799, -0.345592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.967414, 17.953857, -0.522910>,  <16.127913, 17.737288, -0.818439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.967414, 17.953857, -0.522910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001873, 0.807086, -0.590431,
		-0.915967, -0.235526, -0.324856,
		-0.401249, 0.541424, 0.738823,
		15.847039, 18.116285, -0.301263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.801728, 18.137274, -1.223644>,  <16.127913, 17.737288, -0.818439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.801728, 18.137274, -1.223644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.802020, 18.338654, -0.878034>,  <15.802196, 18.459482, -0.670668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.802020, 18.338654, -0.878034>,  <15.801728, 18.137274, -1.223644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.802020, 18.338654, -0.878034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181714, 0.849706, -0.494954,
		-0.983351, -0.156644, 0.092105,
		0.000730, 0.503451, 0.864024,
		15.802239, 18.489689, -0.618827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.074767, 18.476040, -1.116796>,  <15.801728, 18.137274, -1.223644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.074767, 18.476040, -1.116796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347939, 18.664291, -0.893327>,  <15.511843, 18.777243, -0.759245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347939, 18.664291, -0.893327>,  <15.074767, 18.476040, -1.116796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347939, 18.664291, -0.893327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246521, 0.868418, -0.430207,
		-0.687629, 0.156077, 0.709088,
		0.682930, 0.470628, 0.558673,
		15.552818, 18.805479, -0.725725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.769834, 19.034994, -0.839222>,  <15.074767, 18.476040, -1.116796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.769834, 19.034994, -0.839222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.163739, 19.102772, -0.854855>,  <15.400083, 19.143438, -0.864236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.163739, 19.102772, -0.854855>,  <14.769834, 19.034994, -0.839222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.163739, 19.102772, -0.854855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157748, 0.775882, -0.610837,
		-0.073179, 0.607696, 0.790791,
		0.984764, 0.169446, -0.039084,
		15.459168, 19.153606, -0.866581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.992312, 19.772844, -0.624504>,  <14.769834, 19.034994, -0.839222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.992312, 19.772844, -0.624504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241387, 19.624096, -0.899887>,  <15.390833, 19.534847, -1.065116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241387, 19.624096, -0.899887>,  <14.992312, 19.772844, -0.624504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.241387, 19.624096, -0.899887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310324, 0.690331, -0.653561,
		0.718302, 0.620610, 0.314461,
		0.622688, -0.371869, -0.688457,
		15.428194, 19.512535, -1.106424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.266408, 20.319845, -1.102743>,  <14.992312, 19.772844, -0.624504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.266408, 20.319845, -1.102743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.326470, 19.984013, -1.311570>,  <15.362508, 19.782513, -1.436866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.326470, 19.984013, -1.311570>,  <15.266408, 20.319845, -1.102743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.326470, 19.984013, -1.311570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429305, 0.420303, -0.799402,
		0.890590, 0.344162, -0.297325,
		0.150157, -0.839582, -0.522068,
		15.371517, 19.732138, -1.468190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.654363, 20.405287, -1.756690>,  <15.266408, 20.319845, -1.102743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.654363, 20.405287, -1.756690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.361362, 20.134758, -1.787741>,  <15.185561, 19.972441, -1.806373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.361362, 20.134758, -1.787741>,  <15.654363, 20.405287, -1.756690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.361362, 20.134758, -1.787741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316084, 0.438884, -0.841113,
		0.602936, -0.591579, -0.535259,
		-0.732502, -0.676324, -0.077630,
		15.141611, 19.931862, -1.811030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<21.109695, 15.914709, 17.346462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.394131, 16.191711, 17.297823>,  <21.564793, 16.357912, 17.268639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.394131, 16.191711, 17.297823>,  <21.109695, 15.914709, 17.346462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.394131, 16.191711, 17.297823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138908, -0.031168, -0.989815,
		-0.689242, 0.720739, 0.074032,
		0.711091, 0.692506, -0.121598,
		21.607458, 16.399464, 17.261343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.780699, 16.473328, 17.018976>,  <21.109695, 15.914709, 17.346462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.780699, 16.473328, 17.018976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.170563, 16.506115, 16.935722>,  <21.404482, 16.525787, 16.885771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.170563, 16.506115, 16.935722>,  <20.780699, 16.473328, 17.018976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.170563, 16.506115, 16.935722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201908, -0.078136, -0.976283,
		-0.096287, 0.993567, -0.059606,
		0.974660, 0.081968, -0.208132,
		21.462961, 16.530706, 16.873283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.852175, 17.102493, 16.527605>,  <20.780699, 16.473328, 17.018976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.852175, 17.102493, 16.527605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.210777, 16.928120, 16.496008>,  <21.425940, 16.823496, 16.477049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.210777, 16.928120, 16.496008>,  <20.852175, 17.102493, 16.527605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.210777, 16.928120, 16.496008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000509, 0.179319, -0.983791,
		0.443032, 0.881934, 0.160982,
		0.896506, -0.435933, -0.078995,
		21.479729, 16.797340, 16.472309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.293705, 17.608376, 16.107300>,  <20.852175, 17.102493, 16.527605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.293705, 17.608376, 16.107300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.438622, 17.237274, 16.071480>,  <21.525572, 17.014614, 16.049988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.438622, 17.237274, 16.071480>,  <21.293705, 17.608376, 16.107300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.438622, 17.237274, 16.071480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004453, 0.094354, -0.995529,
		0.932054, 0.361069, 0.030052,
		0.362290, -0.927753, -0.089551,
		21.547308, 16.958948, 16.044615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.888376, 17.794666, 15.679497>,  <21.293705, 17.608376, 16.107300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.888376, 17.794666, 15.679497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.771809, 17.412670, 15.657334>,  <21.701868, 17.183474, 15.644037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.771809, 17.412670, 15.657334>,  <21.888376, 17.794666, 15.679497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.771809, 17.412670, 15.657334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184407, 0.112918, -0.976342,
		0.938653, -0.274307, -0.209013,
		-0.291419, -0.954990, -0.055406,
		21.684383, 17.126173, 15.640713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.185299, 17.471289, 15.034590>,  <21.888376, 17.794666, 15.679497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.185299, 17.471289, 15.034590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.890373, 17.217613, 15.127687>,  <21.713417, 17.065407, 15.183544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.890373, 17.217613, 15.127687>,  <22.185299, 17.471289, 15.034590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.890373, 17.217613, 15.127687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299255, -0.002254, -0.954170,
		0.605650, -0.773174, -0.188123,
		-0.737316, -0.634190, 0.232741,
		21.669178, 17.027357, 15.197509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.147381, 17.160906, 14.454184>,  <22.185299, 17.471289, 15.034590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.147381, 17.160906, 14.454184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.818886, 17.027763, 14.639558>,  <21.621788, 16.947878, 14.750783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.818886, 17.027763, 14.639558>,  <22.147381, 17.160906, 14.454184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.818886, 17.027763, 14.639558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437208, -0.154795, -0.885939,
		0.366628, -0.930186, -0.018404,
		-0.821239, -0.332856, 0.463437,
		21.572514, 16.927906, 14.778589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.963060, 16.483364, 14.031655>,  <22.147381, 17.160906, 14.454184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.963060, 16.483364, 14.031655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.624508, 16.557934, 14.231208>,  <21.421375, 16.602674, 14.350939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.624508, 16.557934, 14.231208>,  <21.963060, 16.483364, 14.031655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.624508, 16.557934, 14.231208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524062, -0.124726, -0.842498,
		-0.094825, -0.974523, 0.203256,
		-0.846385, 0.186408, 0.498883,
		21.370592, 16.613861, 14.380872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434858, 15.942452, 13.835276>,  <21.963060, 16.483364, 14.031655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434858, 15.942452, 13.835276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.218674, 16.256897, 13.955230>,  <21.088963, 16.445564, 14.027203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.218674, 16.256897, 13.955230>,  <21.434858, 15.942452, 13.835276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218674, 16.256897, 13.955230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483061, 0.001907, -0.875584,
		-0.688879, -0.618082, 0.378709,
		-0.540461, 0.786111, 0.299886,
		21.056536, 16.492731, 14.045196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.813721, 15.682004, 13.770020>,  <21.434858, 15.942452, 13.835276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.813721, 15.682004, 13.770020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.773766, 16.079994, 13.772769>,  <20.749792, 16.318789, 13.774419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.773766, 16.079994, 13.772769>,  <20.813721, 15.682004, 13.770020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.773766, 16.079994, 13.772769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378933, -0.031653, -0.924882,
		-0.920018, -0.094987, 0.380191,
		-0.099886, 0.994975, 0.006873,
		20.743799, 16.378487, 13.774831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.162340, 15.870859, 13.608921>,  <20.813721, 15.682004, 13.770020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.162340, 15.870859, 13.608921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.365677, 16.200710, 13.509662>,  <20.487679, 16.398621, 13.450106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.365677, 16.200710, 13.509662>,  <20.162340, 15.870859, 13.608921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.365677, 16.200710, 13.509662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564662, 0.101619, -0.819042,
		-0.650188, 0.556474, 0.517293,
		0.508343, 0.824627, -0.248149,
		20.518179, 16.448099, 13.435217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.636774, 16.339569, 13.391668>,  <20.162340, 15.870859, 13.608921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.636774, 16.339569, 13.391668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.988895, 16.455421, 13.241373>,  <20.200169, 16.524933, 13.151196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.988895, 16.455421, 13.241373>,  <19.636774, 16.339569, 13.391668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.988895, 16.455421, 13.241373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454949, 0.290869, -0.841675,
		-0.134484, 0.911872, 0.387820,
		0.880304, 0.289630, -0.375738,
		20.252987, 16.542311, 13.128652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.408510, 16.993391, 13.107392>,  <19.636774, 16.339569, 13.391668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.408510, 16.993391, 13.107392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.750984, 16.884521, 12.931726>,  <19.956469, 16.819199, 12.826327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.750984, 16.884521, 12.931726>,  <19.408510, 16.993391, 13.107392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.750984, 16.884521, 12.931726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397778, 0.195196, -0.896477,
		0.329721, 0.942242, 0.058859,
		0.856187, -0.272175, -0.439164,
		20.007841, 16.802870, 12.799977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.660395, 17.630335, 12.666201>,  <19.408510, 16.993391, 13.107392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.660395, 17.630335, 12.666201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.851917, 17.303581, 12.537553>,  <19.966831, 17.107529, 12.460364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.851917, 17.303581, 12.537553>,  <19.660395, 17.630335, 12.666201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.851917, 17.303581, 12.537553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098124, 0.314253, -0.944255,
		0.872418, 0.483676, 0.070311,
		0.478809, -0.816886, -0.321621,
		19.995560, 17.058516, 12.441067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.060057, 17.882660, 12.235940>,  <19.660395, 17.630335, 12.666201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.060057, 17.882660, 12.235940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.040348, 17.493771, 12.144419>,  <20.028522, 17.260437, 12.089506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.040348, 17.493771, 12.144419>,  <20.060057, 17.882660, 12.235940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.040348, 17.493771, 12.144419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287174, 0.233199, -0.929059,
		0.956610, 0.019928, -0.290688,
		-0.049273, -0.972225, -0.228803,
		20.025566, 17.202103, 12.075778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.470697, 17.843561, 11.636018>,  <20.060057, 17.882660, 12.235940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.470697, 17.843561, 11.636018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.209187, 17.541134, 11.648273>,  <20.052280, 17.359678, 11.655625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.209187, 17.541134, 11.648273>,  <20.470697, 17.843561, 11.636018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.209187, 17.541134, 11.648273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246498, 0.174519, -0.953300,
		0.715414, -0.630796, -0.300466,
		-0.653775, -0.756068, 0.030637,
		20.013054, 17.314314, 11.657464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.482187, 17.623339, 11.049983>,  <20.470697, 17.843561, 11.636018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.482187, 17.623339, 11.049983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.133133, 17.482761, 11.185625>,  <19.923700, 17.398415, 11.267011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.133133, 17.482761, 11.185625>,  <20.482187, 17.623339, 11.049983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.133133, 17.482761, 11.185625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431342, 0.229021, -0.872636,
		0.229021, -0.907764, -0.351445,
		0.872636, 0.351445, -0.339106,
		19.871342, 17.377327, 11.287357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.370825, 17.174683, 10.547570>,  <20.482187, 17.623339, 11.049983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.370825, 17.174683, 10.547570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.995605, 17.169868, 10.686088>,  <19.770473, 17.166981, 10.769198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.995605, 17.169868, 10.686088>,  <20.370825, 17.174683, 10.547570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.995605, 17.169868, 10.686088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346503, 0.034174, -0.937426,
		-0.000554, -0.999343, -0.036227,
		-0.938048, -0.012033, 0.346294,
		19.714191, 17.166258, 10.789976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.980783, 16.714622, 10.162930>,  <20.370825, 17.174683, 10.547570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.980783, 16.714622, 10.162930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.709156, 16.962429, 10.320445>,  <19.546179, 17.111113, 10.414953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.709156, 16.962429, 10.320445>,  <19.980783, 16.714622, 10.162930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.709156, 16.962429, 10.320445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459325, 0.059853, -0.886250,
		-0.572615, -0.782699, 0.243915,
		-0.679068, 0.619516, 0.393785,
		19.505436, 17.148283, 10.438581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.386555, 16.411627, 9.924711>,  <19.980783, 16.714622, 10.162930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.386555, 16.411627, 9.924711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.251335, 16.764919, 10.054711>,  <19.170202, 16.976894, 10.132711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.251335, 16.764919, 10.054711>,  <19.386555, 16.411627, 9.924711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.251335, 16.764919, 10.054711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349319, 0.202906, -0.914771,
		-0.873898, -0.422767, 0.239937,
		-0.338050, 0.883231, 0.325000,
		19.149920, 17.029888, 10.152211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.707005, 16.484221, 9.650908>,  <19.386555, 16.411627, 9.924711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.707005, 16.484221, 9.650908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.818130, 16.857380, 9.742573>,  <18.884806, 17.081276, 9.797572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.818130, 16.857380, 9.742573>,  <18.707005, 16.484221, 9.650908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.818130, 16.857380, 9.742573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451006, 0.337295, -0.826333,
		-0.848181, 0.126214, 0.514449,
		0.277816, 0.932900, 0.229164,
		18.901476, 17.137249, 9.811322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.079144, 16.913589, 9.695672>,  <18.707005, 16.484221, 9.650908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.079144, 16.913589, 9.695672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.387196, 17.147915, 9.594701>,  <18.572027, 17.288511, 9.534119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.387196, 17.147915, 9.594701>,  <18.079144, 16.913589, 9.695672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.387196, 17.147915, 9.594701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487969, 0.286173, -0.824616,
		-0.410835, 0.758239, 0.506250,
		0.770131, 0.585815, -0.252427,
		18.618235, 17.323660, 9.518972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.708849, 16.643017, 9.046086>,  <18.079144, 16.913589, 9.695672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.708849, 16.643017, 9.046086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.585522, 16.262699, 9.033905>,  <17.511526, 16.034508, 9.026596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.585522, 16.262699, 9.033905>,  <17.708849, 16.643017, 9.046086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.585522, 16.262699, 9.033905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089738, -0.060940, 0.994099,
		-0.947042, 0.303765, 0.104112,
		-0.308317, -0.950796, -0.030453,
		17.493027, 15.977460, 9.024769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.177265, 16.583698, 9.494455>,  <17.708849, 16.643017, 9.046086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.177265, 16.583698, 9.494455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.291077, 16.205498, 9.431125>,  <17.359364, 15.978577, 9.393126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.291077, 16.205498, 9.431125>,  <17.177265, 16.583698, 9.494455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.291077, 16.205498, 9.431125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015516, -0.169674, 0.985378,
		-0.958542, -0.277912, -0.062948,
		0.284529, -0.945503, -0.158327,
		17.376436, 15.921847, 9.383627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760923, 16.268944, 9.878197>,  <17.177265, 16.583698, 9.494455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.760923, 16.268944, 9.878197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.079357, 16.037010, 9.808870>,  <17.270418, 15.897850, 9.767274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.079357, 16.037010, 9.808870>,  <16.760923, 16.268944, 9.878197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.079357, 16.037010, 9.808870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063829, -0.204343, 0.976816,
		-0.601809, -0.788692, -0.125664,
		0.796085, -0.579836, -0.173317,
		17.318182, 15.863059, 9.756875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605541, 15.575133, 10.119534>,  <16.760923, 16.268944, 9.878197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605541, 15.575133, 10.119534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.005299, 15.561218, 10.119329>,  <17.245153, 15.552869, 10.119206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.005299, 15.561218, 10.119329>,  <16.605541, 15.575133, 10.119534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.005299, 15.561218, 10.119329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017540, -0.516517, 0.856097,
		-0.030046, -0.855570, -0.516815,
		0.999395, -0.034787, -0.000513,
		17.305117, 15.550782, 10.119176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.757719, 14.970111, 10.580602>,  <16.605541, 15.575133, 10.119534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.757719, 14.970111, 10.580602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.102413, 15.170341, 10.547528>,  <17.309229, 15.290480, 10.527684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.102413, 15.170341, 10.547528>,  <16.757719, 14.970111, 10.580602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.102413, 15.170341, 10.547528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278508, -0.330496, 0.901779,
		0.424083, -0.800122, -0.424215,
		0.861735, 0.500577, -0.082683,
		17.360933, 15.320515, 10.522723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.299973, 14.558971, 10.687715>,  <16.757719, 14.970111, 10.580602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.299973, 14.558971, 10.687715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.466908, 14.907127, 10.792215>,  <17.567068, 15.116021, 10.854916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.466908, 14.907127, 10.792215>,  <17.299973, 14.558971, 10.687715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.466908, 14.907127, 10.792215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084559, -0.323431, 0.942466,
		0.904810, -0.371234, -0.208579,
		0.417336, 0.870389, 0.261252,
		17.592108, 15.168244, 10.870591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.897455, 14.406844, 11.016546>,  <17.299973, 14.558971, 10.687715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.897455, 14.406844, 11.016546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.824863, 14.776512, 11.150993>,  <17.781309, 14.998313, 11.231662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.824863, 14.776512, 11.150993>,  <17.897455, 14.406844, 11.016546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.824863, 14.776512, 11.150993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212481, -0.296868, 0.930979,
		0.960165, 0.240373, -0.142493,
		-0.181480, 0.924170, 0.336117,
		17.770420, 15.053763, 11.251828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.425146, 14.468750, 11.506086>,  <17.897455, 14.406844, 11.016546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.425146, 14.468750, 11.506086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.189281, 14.776516, 11.604309>,  <18.047762, 14.961176, 11.663243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.189281, 14.776516, 11.604309>,  <18.425146, 14.468750, 11.506086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.189281, 14.776516, 11.604309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210918, -0.146789, 0.966420,
		0.779622, 0.621654, -0.075727,
		-0.589663, 0.769415, 0.245558,
		18.012383, 15.007340, 11.677977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.792645, 14.740350, 12.036861>,  <18.425146, 14.468750, 11.506086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.792645, 14.740350, 12.036861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.426479, 14.893131, 12.087657>,  <18.206779, 14.984800, 12.118134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.426479, 14.893131, 12.087657>,  <18.792645, 14.740350, 12.036861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.426479, 14.893131, 12.087657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103238, -0.082137, 0.991260,
		0.389046, 0.920524, 0.035757,
		-0.915415, 0.381954, 0.126988,
		18.151855, 15.007717, 12.125753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.873428, 15.260713, 12.497835>,  <18.792645, 14.740350, 12.036861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.873428, 15.260713, 12.497835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.482059, 15.183441, 12.527146>,  <18.247238, 15.137078, 12.544733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.482059, 15.183441, 12.527146>,  <18.873428, 15.260713, 12.497835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.482059, 15.183441, 12.527146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028813, 0.223624, 0.974250,
		-0.204592, 0.955340, -0.213232,
		-0.978423, -0.193179, 0.073278,
		18.188532, 15.125487, 12.549129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.652439, 15.787644, 12.906091>,  <18.873428, 15.260713, 12.497835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.652439, 15.787644, 12.906091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.371990, 15.503735, 12.933369>,  <18.203722, 15.333388, 12.949736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.371990, 15.503735, 12.933369>,  <18.652439, 15.787644, 12.906091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.371990, 15.503735, 12.933369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109520, 0.201700, 0.973305,
		-0.704582, 0.674935, -0.219151,
		-0.701120, -0.709774, 0.068196,
		18.161654, 15.290802, 12.953828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.064161, 16.053936, 13.373910>,  <18.652439, 15.787644, 12.906091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.064161, 16.053936, 13.373910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.097912, 15.655933, 13.352598>,  <18.118162, 15.417131, 13.339811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.097912, 15.655933, 13.352598>,  <18.064161, 16.053936, 13.373910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097912, 15.655933, 13.352598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132862, -0.064226, 0.989052,
		-0.987536, -0.076374, -0.137618,
		0.084376, -0.995009, -0.053278,
		18.123224, 15.357430, 13.336615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.608320, 15.972137, 13.920401>,  <18.064161, 16.053936, 13.373910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.608320, 15.972137, 13.920401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.804424, 15.632217, 13.842956>,  <17.922087, 15.428266, 13.796489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.804424, 15.632217, 13.842956>,  <17.608320, 15.972137, 13.920401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.804424, 15.632217, 13.842956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159142, -0.131125, 0.978509,
		-0.856925, -0.510534, 0.070954,
		0.490259, -0.849800, -0.193612,
		17.951502, 15.377277, 13.784872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235773, 15.484004, 14.335201>,  <17.608320, 15.972137, 13.920401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.235773, 15.484004, 14.335201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.593506, 15.324120, 14.254800>,  <17.808146, 15.228189, 14.206559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.593506, 15.324120, 14.254800>,  <17.235773, 15.484004, 14.335201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.593506, 15.324120, 14.254800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159927, -0.133978, 0.977995,
		-0.417847, -0.906797, -0.055896,
		0.894331, -0.399712, -0.201003,
		17.861805, 15.204206, 14.194499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370872, 14.938373, 14.807858>,  <17.235773, 15.484004, 14.335201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370872, 14.938373, 14.807858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.743546, 15.019623, 14.687385>,  <17.967150, 15.068373, 14.615101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.743546, 15.019623, 14.687385>,  <17.370872, 14.938373, 14.807858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.743546, 15.019623, 14.687385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347906, -0.260278, 0.900675,
		0.104558, -0.943925, -0.313165,
		0.931681, 0.203125, -0.301184,
		18.023050, 15.080560, 14.597030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.830727, 14.401696, 15.048841>,  <17.370872, 14.938373, 14.807858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.830727, 14.401696, 15.048841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.035603, 14.737915, 14.978251>,  <18.158527, 14.939647, 14.935898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.035603, 14.737915, 14.978251>,  <17.830727, 14.401696, 15.048841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035603, 14.737915, 14.978251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445053, -0.084011, 0.891555,
		0.734568, -0.535184, -0.417118,
		0.512189, 0.840548, -0.176473,
		18.189259, 14.990079, 14.925309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.446661, 14.297234, 15.333797>,  <17.830727, 14.401696, 15.048841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.446661, 14.297234, 15.333797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.454403, 14.694817, 15.290582>,  <18.459047, 14.933367, 15.264652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.454403, 14.694817, 15.290582>,  <18.446661, 14.297234, 15.333797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.454403, 14.694817, 15.290582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466083, 0.086630, 0.880490,
		0.884529, -0.067396, -0.461590,
		0.019354, 0.993958, -0.108039,
		18.460209, 14.993004, 15.258170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.182451, 14.538360, 15.606863>,  <18.446661, 14.297234, 15.333797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.182451, 14.538360, 15.606863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.968533, 14.876266, 15.599299>,  <18.840181, 15.079011, 15.594762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.968533, 14.876266, 15.599299>,  <19.182451, 14.538360, 15.606863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.968533, 14.876266, 15.599299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355814, 0.245440, 0.901751,
		0.766411, 0.475528, -0.431842,
		-0.534799, 0.844768, -0.018908,
		18.808092, 15.129697, 15.593627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.658970, 15.165792, 15.687258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.288944, 15.267139, 15.800437>,  <19.066929, 15.327949, 15.868344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.288944, 15.267139, 15.800437>,  <19.658970, 15.165792, 15.687258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.288944, 15.267139, 15.800437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336822, 0.202992, 0.919426,
		0.175519, 0.945832, -0.273121,
		-0.925064, 0.253370, 0.282948,
		19.011425, 15.343150, 15.885322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.777418, 15.623000, 16.142532>,  <19.658970, 15.165792, 15.687258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.777418, 15.623000, 16.142532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.406555, 15.502178, 16.231207>,  <19.184038, 15.429686, 16.284412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.406555, 15.502178, 16.231207>,  <19.777418, 15.623000, 16.142532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.406555, 15.502178, 16.231207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178858, 0.163103, 0.970262,
		-0.329230, 0.939234, -0.097197,
		-0.927156, -0.302054, 0.221687,
		19.128408, 15.411562, 16.297712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.593657, 16.218826, 16.647015>,  <19.777418, 15.623000, 16.142532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.593657, 16.218826, 16.647015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.357697, 15.897831, 16.682861>,  <19.216120, 15.705234, 16.704369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.357697, 15.897831, 16.682861>,  <19.593657, 16.218826, 16.647015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.357697, 15.897831, 16.682861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035795, 0.084885, 0.995748,
		-0.806682, 0.590600, -0.021349,
		-0.589901, -0.802488, 0.089616,
		19.180727, 15.657084, 16.709745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.041914, 16.398319, 17.094749>,  <19.593657, 16.218826, 16.647015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.041914, 16.398319, 17.094749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.094246, 16.001759, 17.094164>,  <19.125645, 15.763822, 17.093813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.094246, 16.001759, 17.094164>,  <19.041914, 16.398319, 17.094749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.094246, 16.001759, 17.094164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063663, 0.006930, 0.997947,
		-0.989359, -0.130653, 0.064023,
		0.130829, -0.991404, -0.001462,
		19.133495, 15.704337, 17.093725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.794497, 16.149462, 17.713215>,  <19.041914, 16.398319, 17.094749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.794497, 16.149462, 17.713215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.982445, 15.808395, 17.621840>,  <19.095213, 15.603756, 17.567015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.982445, 15.808395, 17.621840>,  <18.794497, 16.149462, 17.713215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.982445, 15.808395, 17.621840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112728, -0.198707, 0.973554,
		-0.875508, -0.483196, 0.002752,
		0.469871, -0.852665, -0.228439,
		19.123405, 15.552596, 17.553308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.655111, 15.664625, 18.237295>,  <18.794497, 16.149462, 17.713215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.655111, 15.664625, 18.237295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.988972, 15.506657, 18.083725>,  <19.189287, 15.411876, 17.991583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.988972, 15.506657, 18.083725>,  <18.655111, 15.664625, 18.237295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.988972, 15.506657, 18.083725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332459, -0.194510, 0.922842,
		-0.439127, -0.897889, -0.031052,
		0.834649, -0.394921, -0.383926,
		19.239367, 15.388181, 17.968548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.848539, 15.221237, 18.770569>,  <18.655111, 15.664625, 18.237295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.848539, 15.221237, 18.770569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.176605, 15.214737, 18.541809>,  <19.373446, 15.210836, 18.404554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.176605, 15.214737, 18.541809>,  <18.848539, 15.221237, 18.770569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.176605, 15.214737, 18.541809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541230, -0.302015, 0.784765,
		-0.185477, -0.953165, -0.238906,
		0.820163, -0.016253, -0.571898,
		19.422655, 15.209862, 18.370239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.258282, 14.475310, 18.835138>,  <18.848539, 15.221237, 18.770569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.258282, 14.475310, 18.835138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.506638, 14.756863, 18.697126>,  <19.655651, 14.925794, 18.614319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.506638, 14.756863, 18.697126>,  <19.258282, 14.475310, 18.835138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.506638, 14.756863, 18.697126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692499, -0.286254, 0.662196,
		0.367340, -0.650085, -0.665169,
		0.620892, 0.703880, -0.345031,
		19.692905, 14.968027, 18.593616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.853218, 14.115498, 18.632978>,  <19.258282, 14.475310, 18.835138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.853218, 14.115498, 18.632978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.927437, 14.495724, 18.732576>,  <19.971968, 14.723859, 18.792336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.927437, 14.495724, 18.732576>,  <19.853218, 14.115498, 18.632978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.927437, 14.495724, 18.732576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496369, -0.309359, 0.811120,
		0.848051, -0.026908, -0.529231,
		0.185548, 0.950565, 0.248996,
		19.983101, 14.780893, 18.807276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.500099, 14.084290, 18.986858>,  <19.853218, 14.115498, 18.632978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.500099, 14.084290, 18.986858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.344173, 14.437393, 19.091761>,  <20.250618, 14.649256, 19.154703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.344173, 14.437393, 19.091761>,  <20.500099, 14.084290, 18.986858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.344173, 14.437393, 19.091761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359951, -0.116072, 0.925723,
		0.847631, 0.455262, -0.272503,
		-0.389816, 0.882760, 0.262258,
		20.227228, 14.702221, 19.170439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.991589, 14.425057, 19.454672>,  <20.500099, 14.084290, 18.986858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.991589, 14.425057, 19.454672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.653595, 14.626015, 19.527996>,  <20.450798, 14.746589, 19.571991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.653595, 14.626015, 19.527996>,  <20.991589, 14.425057, 19.454672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.653595, 14.626015, 19.527996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197207, -0.025900, 0.980020,
		0.497103, 0.864251, -0.077190,
		-0.844984, 0.502393, 0.183312,
		20.400101, 14.776732, 19.582989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.194136, 15.047620, 19.822094>,  <20.991589, 14.425057, 19.454672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.194136, 15.047620, 19.822094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.829239, 14.908333, 19.908401>,  <20.610300, 14.824760, 19.960186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.829239, 14.908333, 19.908401>,  <21.194136, 15.047620, 19.822094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.829239, 14.908333, 19.908401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259915, -0.084892, 0.961893,
		-0.316631, 0.933562, 0.167950,
		-0.912244, -0.348218, 0.215767,
		20.555565, 14.803867, 19.973131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.090473, 15.200890, 20.486963>,  <21.194136, 15.047620, 19.822094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.090473, 15.200890, 20.486963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.756104, 14.981361, 20.484989>,  <20.555481, 14.849645, 20.483805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.756104, 14.981361, 20.484989>,  <21.090473, 15.200890, 20.486963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756104, 14.981361, 20.484989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085574, -0.139212, 0.986558,
		-0.542131, 0.824266, 0.163336,
		-0.835925, -0.548821, -0.004935,
		20.505325, 14.816715, 20.483509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.617643, 15.481987, 20.911596>,  <21.090473, 15.200890, 20.486963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.617643, 15.481987, 20.911596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.525570, 15.092819, 20.903177>,  <20.470325, 14.859319, 20.898125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.525570, 15.092819, 20.903177>,  <20.617643, 15.481987, 20.911596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.525570, 15.092819, 20.903177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042389, -0.011585, 0.999034,
		-0.972223, 0.230855, -0.038575,
		-0.230185, -0.972919, -0.021049,
		20.456514, 14.800943, 20.896862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.130127, 15.443334, 21.413752>,  <20.617643, 15.481987, 20.911596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.130127, 15.443334, 21.413752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.212582, 15.058155, 21.344189>,  <20.262054, 14.827048, 21.302452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.212582, 15.058155, 21.344189>,  <20.130127, 15.443334, 21.413752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.212582, 15.058155, 21.344189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077339, -0.193199, 0.978107,
		-0.975463, -0.188172, -0.114298,
		0.206134, -0.962946, -0.173906,
		20.274422, 14.769271, 21.292017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.689615, 15.015145, 21.828999>,  <20.130127, 15.443334, 21.413752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.689615, 15.015145, 21.828999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.996353, 14.773666, 21.741821>,  <20.180395, 14.628778, 21.689516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.996353, 14.773666, 21.741821>,  <19.689615, 15.015145, 21.828999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.996353, 14.773666, 21.741821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054171, -0.277473, 0.959205,
		-0.639544, -0.747367, -0.180076,
		0.766844, -0.603699, -0.217942,
		20.226406, 14.592557, 21.676439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.623875, 14.327771, 22.106590>,  <19.689615, 15.015145, 21.828999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.623875, 14.327771, 22.106590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.023449, 14.343533, 22.096998>,  <20.263193, 14.352989, 22.091244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.023449, 14.343533, 22.096998>,  <19.623875, 14.327771, 22.106590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.023449, 14.343533, 22.096998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029480, -0.145556, 0.988911,
		0.035479, -0.988565, -0.146563,
		0.998936, 0.039406, -0.023979,
		20.323130, 14.355354, 22.089804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.770134, 13.789462, 22.640347>,  <19.623875, 14.327771, 22.106590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.770134, 13.789462, 22.640347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.094116, 14.017963, 22.587217>,  <20.288506, 14.155065, 22.555340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.094116, 14.017963, 22.587217>,  <19.770134, 13.789462, 22.640347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.094116, 14.017963, 22.587217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184446, -0.033124, 0.982284,
		0.556734, -0.820105, -0.132194,
		0.809955, 0.571254, -0.132823,
		20.337103, 14.189340, 22.547371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.265152, 13.497414, 23.103945>,  <19.770134, 13.789462, 22.640347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.265152, 13.497414, 23.103945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.383060, 13.873337, 23.034813>,  <20.453806, 14.098890, 22.993334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.383060, 13.873337, 23.034813>,  <20.265152, 13.497414, 23.103945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.383060, 13.873337, 23.034813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198142, 0.116819, 0.973187,
		0.934799, -0.321113, -0.151780,
		0.294772, 0.939808, -0.172828,
		20.471493, 14.155279, 22.982964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.753883, 13.588248, 23.515507>,  <20.265152, 13.497414, 23.103945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.753883, 13.588248, 23.515507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.684723, 13.972420, 23.428164>,  <20.643227, 14.202923, 23.375757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.684723, 13.972420, 23.428164>,  <20.753883, 13.588248, 23.515507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.684723, 13.972420, 23.428164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030119, 0.216438, 0.975832,
		0.984479, 0.175299, -0.008495,
		-0.172901, 0.960429, -0.218359,
		20.632853, 14.260549, 23.362656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.374172, 14.025572, 23.700962>,  <20.753883, 13.588248, 23.515507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.374172, 14.025572, 23.700962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.036045, 14.238609, 23.717855>,  <20.833170, 14.366432, 23.727991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.036045, 14.238609, 23.717855>,  <21.374172, 14.025572, 23.700962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.036045, 14.238609, 23.717855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165758, 0.186294, 0.968410,
		0.507902, 0.825614, -0.245759,
		-0.845317, 0.532594, 0.042233,
		20.782450, 14.398388, 23.730526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434134, 14.614637, 23.978203>,  <21.374172, 14.025572, 23.700962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434134, 14.614637, 23.978203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.041832, 14.585209, 24.050549>,  <20.806452, 14.567552, 24.093956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.041832, 14.585209, 24.050549>,  <21.434134, 14.614637, 23.978203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.041832, 14.585209, 24.050549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149674, 0.311570, 0.938361,
		-0.125389, 0.947371, -0.294561,
		-0.980752, -0.073572, 0.180864,
		20.747606, 14.563137, 24.104807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.350393, 15.211189, 24.401493>,  <21.434134, 14.614637, 23.978203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.350393, 15.211189, 24.401493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.016521, 14.998943, 24.460493>,  <20.816198, 14.871595, 24.495893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.016521, 14.998943, 24.460493>,  <21.350393, 15.211189, 24.401493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.016521, 14.998943, 24.460493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063851, 0.172781, 0.982889,
		-0.547021, 0.829816, -0.110336,
		-0.834680, -0.530616, 0.147500,
		20.766117, 14.839759, 24.504744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.692924, 15.549633, 24.574551>,  <21.350393, 15.211189, 24.401493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.692924, 15.549633, 24.574551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.745369, 15.192482, 24.746866>,  <20.776836, 14.978191, 24.850256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.745369, 15.192482, 24.746866>,  <20.692924, 15.549633, 24.574551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.745369, 15.192482, 24.746866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004536, 0.433998, 0.900903,
		-0.991357, -0.120074, 0.052852,
		0.131113, -0.892876, 0.430791,
		20.784702, 14.924619, 24.876104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.389721, 16.239424, 24.825869>,  <20.692924, 15.549633, 24.574551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.389721, 16.239424, 24.825869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.555801, 16.603020, 24.840530>,  <20.655451, 16.821177, 24.849327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.555801, 16.603020, 24.840530>,  <20.389721, 16.239424, 24.825869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.555801, 16.603020, 24.840530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002911, 0.041621, -0.999129,
		-0.909724, 0.414734, 0.019927,
		0.415203, 0.908990, 0.036656,
		20.680363, 16.875717, 24.851528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.927990, 16.767225, 24.429447>,  <20.389721, 16.239424, 24.825869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.927990, 16.767225, 24.429447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.319294, 16.848804, 24.444475>,  <20.554077, 16.897753, 24.453491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.319294, 16.848804, 24.444475>,  <19.927990, 16.767225, 24.429447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.319294, 16.848804, 24.444475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053386, -0.072611, -0.995930,
		-0.200392, 0.976285, -0.081921,
		0.978260, 0.203950, 0.037570,
		20.612772, 16.909990, 24.455746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.007494, 17.408842, 24.072691>,  <19.927990, 16.767225, 24.429447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.007494, 17.408842, 24.072691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.380428, 17.264267, 24.068424>,  <20.604189, 17.177521, 24.065865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.380428, 17.264267, 24.068424>,  <20.007494, 17.408842, 24.072691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.380428, 17.264267, 24.068424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035206, 0.120093, -0.992138,
		0.359879, 0.924629, 0.124692,
		0.932335, -0.361439, -0.010666,
		20.660130, 17.155834, 24.065224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.405455, 17.973753, 23.687094>,  <20.007494, 17.408842, 24.072691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.405455, 17.973753, 23.687094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.602421, 17.625935, 23.672033>,  <20.720600, 17.417244, 23.662996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.602421, 17.625935, 23.672033>,  <20.405455, 17.973753, 23.687094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.602421, 17.625935, 23.672033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008704, 0.038340, -0.999227,
		0.870318, 0.492361, 0.011311,
		0.492413, -0.869547, -0.037653,
		20.750145, 17.365070, 23.660738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.089426, 17.999714, 23.377024>,  <20.405455, 17.973753, 23.687094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.089426, 17.999714, 23.377024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.960812, 17.623001, 23.337713>,  <20.883642, 17.396973, 23.314127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.960812, 17.623001, 23.337713>,  <21.089426, 17.999714, 23.377024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.960812, 17.623001, 23.337713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141631, 0.054788, -0.988402,
		0.936245, -0.331726, 0.115770,
		-0.321536, -0.941783, -0.098278,
		20.864351, 17.340466, 23.308229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.539490, 17.810459, 22.968353>,  <21.089426, 17.999714, 23.377024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.539490, 17.810459, 22.968353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.275856, 17.510159, 22.950554>,  <21.117676, 17.329979, 22.939875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.275856, 17.510159, 22.950554>,  <21.539490, 17.810459, 22.968353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.275856, 17.510159, 22.950554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052533, 0.013066, -0.998534,
		0.750232, -0.660455, 0.030828,
		-0.659084, -0.750752, -0.044499,
		21.078131, 17.284933, 22.937204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.922102, 17.235718, 22.570446>,  <21.539490, 17.810459, 22.968353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.922102, 17.235718, 22.570446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.524456, 17.192825, 22.564342>,  <21.285868, 17.167089, 22.560680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.524456, 17.192825, 22.564342>,  <21.922102, 17.235718, 22.570446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.524456, 17.192825, 22.564342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041157, -0.243659, -0.968987,
		0.100187, -0.963915, 0.246639,
		-0.994117, -0.107231, -0.015260,
		21.226221, 17.160656, 22.559765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.902191, 16.716150, 22.157940>,  <21.922102, 17.235718, 22.570446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.902191, 16.716150, 22.157940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.521091, 16.830704, 22.198448>,  <21.292431, 16.899435, 22.222754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.521091, 16.830704, 22.198448>,  <21.902191, 16.716150, 22.157940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.521091, 16.830704, 22.198448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169818, -0.225746, -0.959271,
		-0.251868, -0.931138, 0.263714,
		-0.952745, 0.286393, 0.101266,
		21.235268, 16.916618, 22.228828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.529745, 16.186869, 21.819099>,  <21.902191, 16.716150, 22.157940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.529745, 16.186869, 21.819099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.328968, 16.532429, 21.835745>,  <21.208502, 16.739765, 21.845732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.328968, 16.532429, 21.835745>,  <21.529745, 16.186869, 21.819099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.328968, 16.532429, 21.835745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146921, -0.037751, -0.988428,
		-0.852331, -0.502247, 0.145874,
		-0.501942, 0.863900, 0.041614,
		21.178385, 16.791599, 21.848228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.954021, 16.067993, 21.384089>,  <21.529745, 16.186869, 21.819099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.954021, 16.067993, 21.384089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.011887, 16.463501, 21.399073>,  <21.046606, 16.700806, 21.408062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.011887, 16.463501, 21.399073>,  <20.954021, 16.067993, 21.384089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.011887, 16.463501, 21.399073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143919, 0.058481, -0.987860,
		-0.978959, 0.137516, 0.150763,
		0.144663, 0.988772, 0.037459,
		21.055286, 16.760132, 21.410311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.535398, 16.251595, 20.923979>,  <20.954021, 16.067993, 21.384089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.535398, 16.251595, 20.923979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.800213, 16.545521, 20.982979>,  <20.959101, 16.721876, 21.018379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.800213, 16.545521, 20.982979>,  <20.535398, 16.251595, 20.923979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.800213, 16.545521, 20.982979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078733, 0.127526, -0.988705,
		-0.745326, 0.666170, 0.026573,
		0.662035, 0.734816, 0.147498,
		20.998823, 16.765966, 21.027227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.401114, 16.659023, 20.426521>,  <20.535398, 16.251595, 20.923979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.401114, 16.659023, 20.426521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.767189, 16.777328, 20.536034>,  <20.986834, 16.848312, 20.601742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.767189, 16.777328, 20.536034>,  <20.401114, 16.659023, 20.426521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.767189, 16.777328, 20.536034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215282, 0.215533, -0.952470,
		-0.340714, 0.930629, 0.133581,
		0.915187, 0.295763, 0.273783,
		21.041744, 16.866056, 20.618168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.492910, 17.294292, 20.010633>,  <20.401114, 16.659023, 20.426521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.492910, 17.294292, 20.010633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.863056, 17.174942, 20.104160>,  <21.085144, 17.103333, 20.160276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.863056, 17.174942, 20.104160>,  <20.492910, 17.294292, 20.010633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.863056, 17.174942, 20.104160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238009, -0.022765, -0.970996,
		0.295045, 0.954177, 0.049950,
		0.925365, -0.298376, 0.233819,
		21.140665, 17.085430, 20.174307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.941360, 17.705954, 19.694307>,  <20.492910, 17.294292, 20.010633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.941360, 17.705954, 19.694307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.181271, 17.387634, 19.727705>,  <21.325216, 17.196642, 19.747744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.181271, 17.387634, 19.727705>,  <20.941360, 17.705954, 19.694307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.181271, 17.387634, 19.727705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285866, 0.115648, -0.951266,
		0.747361, 0.594415, 0.296855,
		0.599777, -0.795799, 0.083492,
		21.361204, 17.148895, 19.752752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.539143, 17.873446, 19.242556>,  <20.941360, 17.705954, 19.694307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.539143, 17.873446, 19.242556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.568195, 17.482117, 19.320133>,  <21.585627, 17.247320, 19.366680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.568195, 17.482117, 19.320133>,  <21.539143, 17.873446, 19.242556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.568195, 17.482117, 19.320133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338651, -0.158714, -0.927429,
		0.938104, 0.133039, 0.319782,
		0.072631, -0.978320, 0.193944,
		21.589985, 17.188622, 19.378317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.109556, 17.633596, 18.771843>,  <21.539143, 17.873446, 19.242556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.109556, 17.633596, 18.771843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.908607, 17.312569, 18.900532>,  <21.788038, 17.119951, 18.977745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.908607, 17.312569, 18.900532>,  <22.109556, 17.633596, 18.771843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.908607, 17.312569, 18.900532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194683, -0.467521, -0.862277,
		0.842451, -0.370548, 0.391115,
		-0.502370, -0.802570, 0.321724,
		21.757896, 17.071798, 18.997049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.646507, 16.987276, 18.803183>,  <22.109556, 17.633596, 18.771843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.646507, 16.987276, 18.803183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.251060, 16.936768, 18.770462>,  <22.013792, 16.906462, 18.750830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.251060, 16.936768, 18.770462>,  <22.646507, 16.987276, 18.803183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.251060, 16.936768, 18.770462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113957, -0.273457, -0.955110,
		0.098236, -0.953560, 0.284734,
		-0.988617, -0.126273, -0.081802,
		21.954475, 16.898886, 18.745922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.617304, 16.297129, 18.600153>,  <22.646507, 16.987276, 18.803183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.617304, 16.297129, 18.600153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.246326, 16.429939, 18.531321>,  <22.023741, 16.509624, 18.490021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.246326, 16.429939, 18.531321>,  <22.617304, 16.297129, 18.600153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.246326, 16.429939, 18.531321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124602, -0.159496, -0.979303,
		-0.352601, -0.929688, 0.106552,
		-0.927441, 0.332026, -0.172080,
		21.968094, 16.529547, 18.479696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.241505, 15.809900, 18.154779>,  <22.617304, 16.297129, 18.600153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.241505, 15.809900, 18.154779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.039486, 16.152058, 18.108772>,  <21.918274, 16.357351, 18.081167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.039486, 16.152058, 18.108772>,  <22.241505, 15.809900, 18.154779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.039486, 16.152058, 18.108772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041317, -0.157074, -0.986722,
		-0.862102, -0.493589, 0.114673,
		-0.505048, 0.855393, -0.115020,
		21.887972, 16.408676, 18.074266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.773993, 15.631780, 17.687710>,  <22.241505, 15.809900, 18.154779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.773993, 15.631780, 17.687710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.785290, 16.030602, 17.659189>,  <21.792068, 16.269896, 17.642076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.785290, 16.030602, 17.659189>,  <21.773993, 15.631780, 17.687710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.785290, 16.030602, 17.659189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109621, -0.067812, -0.991657,
		-0.993572, 0.035824, 0.107383,
		0.028244, 0.997055, -0.071304,
		21.793762, 16.329718, 17.637798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.999794, 14.098824, 13.289074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.985050, 14.495705, 13.336700>,  <17.976204, 14.733833, 13.365276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.985050, 14.495705, 13.336700>,  <17.999794, 14.098824, 13.289074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.985050, 14.495705, 13.336700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497419, 0.085121, -0.863324,
		-0.866727, -0.091047, 0.490402,
		-0.036860, 0.992202, 0.119066,
		17.973991, 14.793365, 13.372420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.273781, 14.326977, 13.154822>,  <17.999794, 14.098824, 13.289074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.273781, 14.326977, 13.154822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.527817, 14.626823, 13.080270>,  <17.680239, 14.806731, 13.035539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.527817, 14.626823, 13.080270>,  <17.273781, 14.326977, 13.154822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.527817, 14.626823, 13.080270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238299, -0.039382, -0.970393,
		-0.734762, 0.660701, 0.153622,
		0.635089, 0.749616, -0.186381,
		17.718344, 14.851708, 13.024356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904825, 14.722189, 12.638985>,  <17.273781, 14.326977, 13.154822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.904825, 14.722189, 12.638985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.276291, 14.867840, 12.610710>,  <17.499170, 14.955231, 12.593745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.276291, 14.867840, 12.610710>,  <16.904825, 14.722189, 12.638985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.276291, 14.867840, 12.610710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147658, 0.188088, -0.970989,
		-0.340269, 0.912159, 0.228437,
		0.928662, 0.364128, -0.070687,
		17.554890, 14.977078, 12.589504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.851961, 15.287258, 12.230697>,  <16.904825, 14.722189, 12.638985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.851961, 15.287258, 12.230697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.246712, 15.226212, 12.209594>,  <17.483562, 15.189584, 12.196932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.246712, 15.226212, 12.209594>,  <16.851961, 15.287258, 12.230697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.246712, 15.226212, 12.209594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005771, 0.359838, -0.932997,
		0.161374, 0.920448, 0.355996,
		0.986876, -0.152616, -0.052757,
		17.542774, 15.180427, 12.193767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.151146, 15.911922, 11.978007>,  <16.851961, 15.287258, 12.230697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.151146, 15.911922, 11.978007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.415501, 15.627529, 11.881899>,  <17.574114, 15.456893, 11.824234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.415501, 15.627529, 11.881899>,  <17.151146, 15.911922, 11.978007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415501, 15.627529, 11.881899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018985, 0.335890, -0.941710,
		0.750245, 0.617803, 0.235484,
		0.660888, -0.710984, -0.240270,
		17.613768, 15.414234, 11.809817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781923, 16.275616, 11.704844>,  <17.151146, 15.911922, 11.978007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.781923, 16.275616, 11.704844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.776283, 15.903732, 11.557631>,  <17.772900, 15.680602, 11.469304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.776283, 15.903732, 11.557631>,  <17.781923, 16.275616, 11.704844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776283, 15.903732, 11.557631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069236, 0.366275, -0.927928,
		0.997501, -0.038564, 0.059205,
		-0.014100, -0.929707, -0.368029,
		17.772053, 15.624820, 11.447223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223923, 16.210451, 11.176700>,  <17.781923, 16.275616, 11.704844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223923, 16.210451, 11.176700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.002773, 15.892834, 11.075644>,  <17.870083, 15.702264, 11.015010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.002773, 15.892834, 11.075644>,  <18.223923, 16.210451, 11.176700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.002773, 15.892834, 11.075644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105933, 0.233754, -0.966508,
		0.826503, -0.561121, -0.045121,
		-0.552875, -0.794042, -0.252640,
		17.836910, 15.654621, 10.999851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.401703, 16.066034, 10.597590>,  <18.223923, 16.210451, 11.176700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.401703, 16.066034, 10.597590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.093754, 15.812565, 10.567242>,  <17.908985, 15.660483, 10.549032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.093754, 15.812565, 10.567242>,  <18.401703, 16.066034, 10.597590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.093754, 15.812565, 10.567242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078425, 0.211918, -0.974136,
		0.633363, -0.744008, -0.212846,
		-0.769871, -0.633674, -0.075872,
		17.862793, 15.622463, 10.544480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.578201, 15.524410, 10.120535>,  <18.401703, 16.066034, 10.597590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.578201, 15.524410, 10.120535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.178261, 15.520691, 10.114750>,  <17.938295, 15.518459, 10.111279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.178261, 15.520691, 10.114750>,  <18.578201, 15.524410, 10.120535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.178261, 15.520691, 10.114750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015394, -0.109473, -0.993871,
		0.007661, -0.993946, 0.109600,
		-0.999852, -0.009301, -0.014463,
		17.878305, 15.517901, 10.110411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.268002, 14.999080, 9.617515>,  <18.578201, 15.524410, 10.120535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.268002, 14.999080, 9.617515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.970531, 15.265308, 9.642686>,  <17.792049, 15.425046, 9.657789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.970531, 15.265308, 9.642686>,  <18.268002, 14.999080, 9.617515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.970531, 15.265308, 9.642686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093215, -0.010021, -0.995596,
		-0.662011, -0.746266, 0.069494,
		-0.743675, 0.665573, 0.062929,
		17.747429, 15.464980, 9.661565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.722635, 14.672602, 9.240067>,  <18.268002, 14.999080, 9.617515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.722635, 14.672602, 9.240067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.613701, 15.055782, 9.276208>,  <17.548340, 15.285690, 9.297893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.613701, 15.055782, 9.276208>,  <17.722635, 14.672602, 9.240067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.613701, 15.055782, 9.276208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180343, 0.041421, -0.982731,
		-0.945151, -0.283928, 0.161479,
		-0.272336, 0.957950, 0.090353,
		17.532000, 15.343167, 9.303314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.106310, 14.657294, 9.018713>,  <17.722635, 14.672602, 9.240067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.106310, 14.657294, 9.018713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.223541, 15.039555, 9.007151>,  <17.293880, 15.268910, 9.000214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.223541, 15.039555, 9.007151>,  <17.106310, 14.657294, 9.018713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.223541, 15.039555, 9.007151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164515, 0.020626, -0.986159,
		-0.941827, 0.293779, 0.163264,
		0.293080, 0.955651, -0.028905,
		17.311464, 15.326250, 8.998479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.571598, 15.162086, 8.844080>,  <17.106310, 14.657294, 9.018713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.571598, 15.162086, 8.844080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.933773, 15.274265, 8.716621>,  <17.151077, 15.341573, 8.640146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.933773, 15.274265, 8.716621>,  <16.571598, 15.162086, 8.844080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.933773, 15.274265, 8.716621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349816, 0.067757, -0.934365,
		-0.240449, 0.957475, 0.159454,
		0.905435, 0.280447, -0.318648,
		17.205404, 15.358399, 8.621027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456499, 15.763554, 8.394646>,  <16.571598, 15.162086, 8.844080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.456499, 15.763554, 8.394646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.801365, 15.578735, 8.311523>,  <17.008286, 15.467844, 8.261650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.801365, 15.578735, 8.311523>,  <16.456499, 15.763554, 8.394646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.801365, 15.578735, 8.311523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259036, -0.049528, -0.964597,
		0.435395, 0.885472, -0.162387,
		0.862167, -0.462045, -0.207805,
		17.060015, 15.440122, 8.249182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.393808, 16.341095, 7.930460>,  <16.456499, 15.763554, 8.394646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.393808, 16.341095, 7.930460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.024681, 16.495071, 7.924375>,  <15.803205, 16.587458, 7.920723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.024681, 16.495071, 7.924375>,  <16.393808, 16.341095, 7.930460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.024681, 16.495071, 7.924375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025327, 0.100030, 0.994662,
		0.384407, 0.917505, -0.102059,
		-0.922816, 0.384940, -0.015214,
		15.747836, 16.610554, 7.919810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401817, 16.894995, 8.368711>,  <16.393808, 16.341095, 7.930460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.401817, 16.894995, 8.368711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.006817, 16.853245, 8.321475>,  <15.769816, 16.828196, 8.293133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.006817, 16.853245, 8.321475>,  <16.401817, 16.894995, 8.368711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.006817, 16.853245, 8.321475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130972, 0.126665, 0.983261,
		-0.087668, 0.986439, -0.138752,
		-0.987502, -0.104373, -0.118092,
		15.710567, 16.821934, 8.286047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.051798, 17.513887, 8.685242>,  <16.401817, 16.894995, 8.368711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.051798, 17.513887, 8.685242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.777869, 17.222660, 8.673018>,  <15.613512, 17.047924, 8.665685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.777869, 17.222660, 8.673018>,  <16.051798, 17.513887, 8.685242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.777869, 17.222660, 8.673018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303633, 0.246976, 0.920223,
		-0.662438, 0.639468, -0.390200,
		-0.684823, -0.728068, -0.030557,
		15.572422, 17.004240, 8.663852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.447771, 17.834564, 8.978992>,  <16.051798, 17.513887, 8.685242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.447771, 17.834564, 8.978992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.408498, 17.439568, 9.028341>,  <15.384934, 17.202570, 9.057951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.408498, 17.439568, 9.028341>,  <15.447771, 17.834564, 8.978992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.408498, 17.439568, 9.028341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271468, 0.145845, 0.951333,
		-0.957426, 0.059913, -0.282392,
		-0.098182, -0.987491, 0.123372,
		15.379044, 17.143320, 9.065352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.778328, 17.775230, 9.292675>,  <15.447771, 17.834564, 8.978992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.778328, 17.775230, 9.292675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.988980, 17.445187, 9.374511>,  <15.115372, 17.247160, 9.423612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.988980, 17.445187, 9.374511>,  <14.778328, 17.775230, 9.292675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.988980, 17.445187, 9.374511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316646, 0.032951, 0.947971,
		-0.788920, -0.564013, -0.243915,
		0.526631, -0.825108, 0.204588,
		15.146970, 17.197655, 9.435887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350486, 17.505724, 9.758489>,  <14.778328, 17.775230, 9.292675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350486, 17.505724, 9.758489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.680345, 17.289280, 9.824406>,  <14.878260, 17.159414, 9.863956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.680345, 17.289280, 9.824406>,  <14.350486, 17.505724, 9.758489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.680345, 17.289280, 9.824406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263691, -0.110012, 0.958313,
		-0.500423, -0.833725, -0.233407,
		0.824648, -0.541110, 0.164793,
		14.927739, 17.126947, 9.873843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.153794, 17.074106, 10.279849>,  <14.350486, 17.505724, 9.758489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.153794, 17.074106, 10.279849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.551051, 17.032234, 10.300669>,  <14.789406, 17.007111, 10.313161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.551051, 17.032234, 10.300669>,  <14.153794, 17.074106, 10.279849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.551051, 17.032234, 10.300669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071164, -0.188092, 0.979570,
		-0.092750, -0.976557, -0.194252,
		0.993143, -0.104679, 0.052050,
		14.848994, 17.000830, 10.316283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.334746, 16.494701, 10.778036>,  <14.153794, 17.074106, 10.279849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.334746, 16.494701, 10.778036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.677276, 16.701263, 10.775672>,  <14.882793, 16.825201, 10.774254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.677276, 16.701263, 10.775672>,  <14.334746, 16.494701, 10.778036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.677276, 16.701263, 10.775672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098953, -0.152835, 0.983285,
		0.506871, -0.842595, -0.181976,
		0.856323, 0.516406, -0.005910,
		14.934173, 16.856186, 10.773899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.767973, 16.154610, 11.329622>,  <14.334746, 16.494701, 10.778036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.767973, 16.154610, 11.329622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.957715, 16.501419, 11.268620>,  <15.071561, 16.709505, 11.232019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.957715, 16.501419, 11.268620>,  <14.767973, 16.154610, 11.329622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.957715, 16.501419, 11.268620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141487, 0.095896, 0.985284,
		0.868889, -0.488952, -0.077183,
		0.474356, 0.867023, -0.152504,
		15.100021, 16.761526, 11.222870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342175, 16.004852, 11.876214>,  <14.767973, 16.154610, 11.329622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.342175, 16.004852, 11.876214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.299968, 16.393921, 11.793485>,  <15.274644, 16.627361, 11.743847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.299968, 16.393921, 11.793485>,  <15.342175, 16.004852, 11.876214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.299968, 16.393921, 11.793485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312680, 0.229888, 0.921620,
		0.943980, 0.032578, -0.328392,
		-0.105518, 0.972672, -0.206823,
		15.268312, 16.685722, 11.731438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002695, 16.250963, 12.129636>,  <15.342175, 16.004852, 11.876214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002695, 16.250963, 12.129636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.754624, 16.563919, 12.106847>,  <15.605782, 16.751692, 12.093174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.754624, 16.563919, 12.106847>,  <16.002695, 16.250963, 12.129636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.754624, 16.563919, 12.106847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317925, 0.317074, 0.893526,
		0.717150, 0.536032, -0.445383,
		-0.620177, 0.782390, -0.056971,
		15.568571, 16.798635, 12.089755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339300, 16.851196, 12.303124>,  <16.002695, 16.250963, 12.129636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.339300, 16.851196, 12.303124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.956941, 16.941113, 12.378736>,  <15.727526, 16.995062, 12.424102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.956941, 16.941113, 12.378736>,  <16.339300, 16.851196, 12.303124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.956941, 16.941113, 12.378736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227351, 0.158870, 0.960766,
		0.185938, 0.961369, -0.202969,
		-0.955897, 0.224788, 0.189028,
		15.670172, 17.008549, 12.435444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450922, 17.403437, 12.760669>,  <16.339300, 16.851196, 12.303124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.450922, 17.403437, 12.760669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.081997, 17.257114, 12.810513>,  <15.860641, 17.169321, 12.840419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.081997, 17.257114, 12.810513>,  <16.450922, 17.403437, 12.760669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.081997, 17.257114, 12.810513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066806, 0.166668, 0.983747,
		-0.380627, 0.915647, -0.129282,
		-0.922312, -0.365804, 0.124609,
		15.805304, 17.147373, 12.847896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.958905, 17.888039, 13.289745>,  <16.450922, 17.403437, 12.760669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.958905, 17.888039, 13.289745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.796414, 17.524639, 13.250539>,  <15.698920, 17.306599, 13.227015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.796414, 17.524639, 13.250539>,  <15.958905, 17.888039, 13.289745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.796414, 17.524639, 13.250539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110931, -0.155502, 0.981587,
		-0.907014, 0.387875, 0.163949,
		-0.406227, -0.908500, -0.098015,
		15.674546, 17.252089, 13.221134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.499570, 18.507566, 13.212481>,  <15.958905, 17.888039, 13.289745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.499570, 18.507566, 13.212481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.700263, 18.851391, 13.251299>,  <15.820679, 19.057686, 13.274590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.700263, 18.851391, 13.251299>,  <15.499570, 18.507566, 13.212481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.700263, 18.851391, 13.251299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284314, -0.057911, -0.956981,
		-0.816964, 0.507740, -0.273441,
		0.501733, 0.859562, 0.097047,
		15.850782, 19.109259, 13.280413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.227942, 18.942366, 12.647339>,  <15.499570, 18.507566, 13.212481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.227942, 18.942366, 12.647339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.599656, 19.056721, 12.740889>,  <15.822684, 19.125334, 12.797018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.599656, 19.056721, 12.740889>,  <15.227942, 18.942366, 12.647339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.599656, 19.056721, 12.740889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200404, 0.141632, -0.969422,
		-0.310268, 0.947739, 0.074324,
		0.929286, 0.285886, 0.233874,
		15.878442, 19.142487, 12.811051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402446, 19.397043, 12.083826>,  <15.227942, 18.942366, 12.647339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.402446, 19.397043, 12.083826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.757470, 19.315536, 12.249097>,  <15.970485, 19.266632, 12.348260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.757470, 19.315536, 12.249097>,  <15.402446, 19.397043, 12.083826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.757470, 19.315536, 12.249097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429013, 0.038748, -0.902467,
		0.167881, 0.978253, 0.121809,
		0.887561, -0.203765, 0.413178,
		16.023739, 19.254408, 12.373051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782551, 19.926647, 11.703796>,  <15.402446, 19.397043, 12.083826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.782551, 19.926647, 11.703796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.045528, 19.656944, 11.838346>,  <16.203316, 19.495123, 11.919075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.045528, 19.656944, 11.838346>,  <15.782551, 19.926647, 11.703796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045528, 19.656944, 11.838346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441368, -0.017213, -0.897161,
		0.610706, 0.738297, 0.286278,
		0.657444, -0.674256, 0.336373,
		16.242762, 19.454668, 11.939258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.391691, 20.287128, 11.438280>,  <15.782551, 19.926647, 11.703796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.391691, 20.287128, 11.438280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.493702, 19.909016, 11.519670>,  <16.554909, 19.682148, 11.568504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.493702, 19.909016, 11.519670>,  <16.391691, 20.287128, 11.438280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.493702, 19.909016, 11.519670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425004, -0.079433, -0.901700,
		0.868524, 0.316434, 0.381491,
		0.255026, -0.945283, 0.203475,
		16.570210, 19.625431, 11.580713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.050146, 20.170364, 11.242367>,  <16.391691, 20.287128, 11.438280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.050146, 20.170364, 11.242367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.895500, 19.801468, 11.242804>,  <16.802713, 19.580130, 11.243066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.895500, 19.801468, 11.242804>,  <17.050146, 20.170364, 11.242367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.895500, 19.801468, 11.242804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380066, -0.160406, -0.910945,
		0.840286, -0.351768, 0.412527,
		-0.386613, -0.922241, 0.001092,
		16.779516, 19.524796, 11.243132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.541368, 19.789122, 10.936557>,  <17.050146, 20.170364, 11.242367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.541368, 19.789122, 10.936557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.192806, 19.594875, 10.908763>,  <16.983669, 19.478327, 10.892087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.192806, 19.594875, 10.908763>,  <17.541368, 19.789122, 10.936557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.192806, 19.594875, 10.908763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201312, -0.224827, -0.953376,
		0.447353, -0.844766, 0.293676,
		-0.871406, -0.485617, -0.069484,
		16.931385, 19.449190, 10.887918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.704922, 19.207989, 10.569190>,  <17.541368, 19.789122, 10.936557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.704922, 19.207989, 10.569190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.308281, 19.204163, 10.517601>,  <17.070297, 19.201868, 10.486648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.308281, 19.204163, 10.517601>,  <17.704922, 19.207989, 10.569190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.308281, 19.204163, 10.517601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125081, -0.324348, -0.937632,
		-0.032865, -0.945889, 0.322821,
		-0.991602, -0.009564, -0.128972,
		17.010799, 19.201294, 10.478909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.631130, 18.558729, 10.248315>,  <17.704922, 19.207989, 10.569190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.631130, 18.558729, 10.248315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.293278, 18.765163, 10.191389>,  <17.090567, 18.889025, 10.157234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.293278, 18.765163, 10.191389>,  <17.631130, 18.558729, 10.248315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.293278, 18.765163, 10.191389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006372, -0.275506, -0.961278,
		-0.535310, -0.811019, 0.235990,
		-0.844631, 0.516086, -0.142313,
		17.039888, 18.919989, 10.148695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.007210, 18.138081, 9.917336>,  <17.631130, 18.558729, 10.248315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.007210, 18.138081, 9.917336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.944420, 18.523804, 9.832045>,  <16.906746, 18.755238, 9.780869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.944420, 18.523804, 9.832045>,  <17.007210, 18.138081, 9.917336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.944420, 18.523804, 9.832045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061196, -0.224989, -0.972438,
		-0.985705, -0.139599, 0.094329,
		-0.156974, 0.964309, -0.213229,
		16.897327, 18.813097, 9.768076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.522013, 18.143688, 9.377767>,  <17.007210, 18.138081, 9.917336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.522013, 18.143688, 9.377767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.656120, 18.520164, 9.361011>,  <16.736586, 18.746050, 9.350957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.656120, 18.520164, 9.361011>,  <16.522013, 18.143688, 9.377767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656120, 18.520164, 9.361011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011372, -0.040417, -0.999118,
		-0.942054, 0.335449, -0.002847,
		0.335269, 0.941191, -0.041890,
		16.756701, 18.802523, 9.348444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351950, 18.267570, 8.785410>,  <16.522013, 18.143688, 9.377767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.351950, 18.267570, 8.785410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.591213, 18.585445, 8.826736>,  <16.734772, 18.776171, 8.851533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.591213, 18.585445, 8.826736>,  <16.351950, 18.267570, 8.785410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.591213, 18.585445, 8.826736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146385, 0.018403, -0.989056,
		-0.787893, 0.606738, -0.105322,
		0.598160, 0.794689, 0.103318,
		16.770660, 18.823853, 8.857732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.198180, 19.401903, 16.946796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545535, 19.587460, 16.876703>,  <15.753948, 19.698793, 16.834646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545535, 19.587460, 16.876703>,  <15.198180, 19.401903, 16.946796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.545535, 19.587460, 16.876703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358263, 0.342582, -0.868496,
		-0.342857, 0.816971, 0.463690,
		0.868387, 0.463893, -0.175234,
		15.806051, 19.726627, 16.824133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.030401, 20.118795, 16.637880>,  <15.198180, 19.401903, 16.946796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.030401, 20.118795, 16.637880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.409472, 20.017593, 16.560013>,  <15.636915, 19.956873, 16.513292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.409472, 20.017593, 16.560013>,  <15.030401, 20.118795, 16.637880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.409472, 20.017593, 16.560013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106817, 0.323339, -0.940235,
		0.300826, 0.911834, 0.279396,
		0.947678, -0.253003, -0.194668,
		15.693776, 19.941692, 16.501612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304900, 20.622160, 16.172953>,  <15.030401, 20.118795, 16.637880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.304900, 20.622160, 16.172953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.547435, 20.312267, 16.101231>,  <15.692956, 20.126331, 16.058197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.547435, 20.312267, 16.101231>,  <15.304900, 20.622160, 16.172953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.547435, 20.312267, 16.101231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014155, 0.214931, -0.976527,
		0.795082, 0.594642, 0.119354,
		0.606337, -0.774729, -0.179305,
		15.729336, 20.079849, 16.047440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711626, 20.791300, 15.547894>,  <15.304900, 20.622160, 16.172953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.711626, 20.791300, 15.547894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.788104, 20.400379, 15.584394>,  <15.833991, 20.165827, 15.606293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.788104, 20.400379, 15.584394>,  <15.711626, 20.791300, 15.547894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.788104, 20.400379, 15.584394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016323, -0.096116, -0.995236,
		0.981416, 0.188795, -0.034330,
		0.191196, -0.977301, 0.091248,
		15.845463, 20.107189, 15.611768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.327654, 20.710487, 15.304259>,  <15.711626, 20.791300, 15.547894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.327654, 20.710487, 15.304259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.157188, 20.350079, 15.271905>,  <16.054909, 20.133833, 15.252493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.157188, 20.350079, 15.271905>,  <16.327654, 20.710487, 15.304259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.157188, 20.350079, 15.271905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218438, -0.015725, -0.975724,
		0.877878, -0.433486, 0.203519,
		-0.426163, -0.901023, -0.080885,
		16.029339, 20.079771, 15.247640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778021, 20.230711, 14.826452>,  <16.327654, 20.710487, 15.304259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.778021, 20.230711, 14.826452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.422077, 20.048862, 14.841771>,  <16.208511, 19.939753, 14.850963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.422077, 20.048862, 14.841771>,  <16.778021, 20.230711, 14.826452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.422077, 20.048862, 14.841771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123732, -0.321279, -0.938867,
		0.439135, -0.830721, 0.342144,
		-0.889860, -0.454624, 0.038298,
		16.155119, 19.912476, 14.853261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.855753, 19.415333, 14.732093>,  <16.778021, 20.230711, 14.826452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.855753, 19.415333, 14.732093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.491940, 19.535679, 14.617391>,  <16.273651, 19.607887, 14.548569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.491940, 19.535679, 14.617391>,  <16.855753, 19.415333, 14.732093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.491940, 19.535679, 14.617391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175469, -0.347476, -0.921125,
		-0.376782, -0.888109, 0.263247,
		-0.909531, 0.300872, -0.286758,
		16.219080, 19.625938, 14.531363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669260, 18.884153, 14.271560>,  <16.855753, 19.415333, 14.732093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.669260, 18.884153, 14.271560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.380646, 19.145939, 14.181169>,  <16.207478, 19.303009, 14.126934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.380646, 19.145939, 14.181169>,  <16.669260, 18.884153, 14.271560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.380646, 19.145939, 14.181169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047007, -0.279321, -0.959046,
		-0.690780, -0.702608, 0.170776,
		-0.721535, 0.654463, -0.225977,
		16.164185, 19.342278, 14.113376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.034821, 18.543409, 13.996320>,  <16.669260, 18.884153, 14.271560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.034821, 18.543409, 13.996320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.037521, 18.921688, 13.866326>,  <16.039143, 19.148655, 13.788330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.037521, 18.921688, 13.866326>,  <16.034821, 18.543409, 13.996320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037521, 18.921688, 13.866326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024884, -0.324732, -0.945479,
		-0.999668, 0.014472, 0.021339,
		0.006753, 0.945695, -0.324984,
		16.039547, 19.205397, 13.768831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.577809, 17.901228, 14.004004>,  <16.034821, 18.543409, 13.996320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.577809, 17.901228, 14.004004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.603026, 17.536366, 13.842019>,  <15.618156, 17.317448, 13.744828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.603026, 17.536366, 13.842019>,  <15.577809, 17.901228, 14.004004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.603026, 17.536366, 13.842019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076617, -0.400150, 0.913241,
		-0.995066, -0.088601, 0.044660,
		0.063043, -0.912157, -0.404963,
		15.621940, 17.262718, 13.720530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.194208, 17.541847, 14.382474>,  <15.577809, 17.901228, 14.004004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.194208, 17.541847, 14.382474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429502, 17.261654, 14.220832>,  <15.570678, 17.093538, 14.123846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429502, 17.261654, 14.220832>,  <15.194208, 17.541847, 14.382474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.429502, 17.261654, 14.220832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143723, -0.401194, 0.904648,
		-0.795818, -0.590223, -0.135319,
		0.588233, -0.700486, -0.404106,
		15.605971, 17.051508, 14.099600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.022699, 17.022257, 14.797034>,  <15.194208, 17.541847, 14.382474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.022699, 17.022257, 14.797034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352578, 16.902908, 14.604848>,  <15.550506, 16.831299, 14.489536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352578, 16.902908, 14.604848>,  <15.022699, 17.022257, 14.797034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.352578, 16.902908, 14.604848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188511, -0.655927, 0.730905,
		-0.533234, -0.693349, -0.484694,
		0.824697, -0.298374, -0.480467,
		15.599987, 16.813396, 14.460708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.967546, 16.237579, 14.868281>,  <15.022699, 17.022257, 14.797034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.967546, 16.237579, 14.868281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.341008, 16.356728, 14.788724>,  <15.565085, 16.428217, 14.740990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.341008, 16.356728, 14.788724>,  <14.967546, 16.237579, 14.868281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.341008, 16.356728, 14.788724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348981, -0.631579, 0.692330,
		0.080608, -0.715808, -0.693629,
		0.933656, 0.297871, -0.198893,
		15.621105, 16.446089, 14.729056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275461, 15.671568, 14.973611>,  <14.967546, 16.237579, 14.868281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.275461, 15.671568, 14.973611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.564868, 15.944508, 15.015414>,  <15.738512, 16.108271, 15.040497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.564868, 15.944508, 15.015414>,  <15.275461, 15.671568, 14.973611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.564868, 15.944508, 15.015414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409945, -0.546524, 0.730245,
		0.555398, -0.485502, -0.675145,
		0.723518, 0.682349, 0.104510,
		15.781923, 16.149212, 15.046767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883550, 15.319816, 15.189018>,  <15.275461, 15.671568, 14.973611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.883550, 15.319816, 15.189018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.969138, 15.700317, 15.277860>,  <16.020491, 15.928618, 15.331164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.969138, 15.700317, 15.277860>,  <15.883550, 15.319816, 15.189018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.969138, 15.700317, 15.277860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303476, -0.280853, 0.910507,
		0.928504, -0.127418, -0.348777,
		0.213971, 0.951255, 0.222104,
		16.033329, 15.985694, 15.344491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.593731, 15.207468, 15.476624>,  <15.883550, 15.319816, 15.189018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.593731, 15.207468, 15.476624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.417557, 15.542683, 15.605439>,  <16.311852, 15.743812, 15.682729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.417557, 15.542683, 15.605439>,  <16.593731, 15.207468, 15.476624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.417557, 15.542683, 15.605439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067741, -0.326661, 0.942711,
		0.895225, 0.437020, 0.087104,
		-0.440437, 0.838037, 0.322039,
		16.285425, 15.794094, 15.702051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029346, 15.518336, 15.923543>,  <16.593731, 15.207468, 15.476624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029346, 15.518336, 15.923543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.681133, 15.696304, 16.007658>,  <16.472206, 15.803085, 16.058126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.681133, 15.696304, 16.007658>,  <17.029346, 15.518336, 15.923543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.681133, 15.696304, 16.007658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180607, -0.108649, 0.977536,
		0.457772, 0.888956, 0.014227,
		-0.870532, 0.444920, 0.210288,
		16.419973, 15.829781, 16.070745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120758, 15.968741, 16.406157>,  <17.029346, 15.518336, 15.923543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120758, 15.968741, 16.406157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727940, 15.901230, 16.439857>,  <16.492249, 15.860723, 16.460077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727940, 15.901230, 16.439857>,  <17.120758, 15.968741, 16.406157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.727940, 15.901230, 16.439857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096066, -0.063082, 0.993374,
		-0.162346, 0.983633, 0.078164,
		-0.982046, -0.168779, 0.084253,
		16.433325, 15.850596, 16.465134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950199, 16.227335, 17.024982>,  <17.120758, 15.968741, 16.406157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.950199, 16.227335, 17.024982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627861, 16.001602, 16.953268>,  <16.434458, 15.866162, 16.910240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627861, 16.001602, 16.953268>,  <16.950199, 16.227335, 17.024982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.627861, 16.001602, 16.953268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149824, -0.098599, 0.983784,
		-0.572858, 0.819639, -0.005095,
		-0.805845, -0.564332, -0.179285,
		16.386106, 15.832303, 16.899483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443989, 16.646849, 17.333305>,  <16.950199, 16.227335, 17.024982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.443989, 16.646849, 17.333305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328224, 16.264904, 17.306520>,  <16.258766, 16.035738, 17.290449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328224, 16.264904, 17.306520>,  <16.443989, 16.646849, 17.333305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.328224, 16.264904, 17.306520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194367, -0.009878, 0.980879,
		-0.937263, 0.296893, -0.182734,
		-0.289411, -0.954860, -0.066964,
		16.241402, 15.978446, 17.286430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.880047, 16.578316, 17.757372>,  <16.443989, 16.646849, 17.333305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.880047, 16.578316, 17.757372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.998544, 16.199635, 17.706787>,  <16.069643, 15.972425, 17.676437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.998544, 16.199635, 17.706787>,  <15.880047, 16.578316, 17.757372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.998544, 16.199635, 17.706787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060366, -0.113579, 0.991693,
		-0.953203, -0.301416, 0.023502,
		0.296243, -0.946704, -0.126460,
		16.087418, 15.915624, 17.668850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.533645, 16.250191, 18.270164>,  <15.880047, 16.578316, 17.757372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.533645, 16.250191, 18.270164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.822606, 15.988701, 18.180029>,  <15.995983, 15.831807, 18.125948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.822606, 15.988701, 18.180029>,  <15.533645, 16.250191, 18.270164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.822606, 15.988701, 18.180029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172812, -0.144857, 0.974244,
		-0.669529, -0.742739, 0.008326,
		0.722404, -0.653724, -0.225341,
		16.039328, 15.792583, 18.112427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.623951, 15.825582, 18.867245>,  <15.533645, 16.250191, 18.270164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.623951, 15.825582, 18.867245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.970056, 15.732090, 18.689846>,  <16.177719, 15.675995, 18.583406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.970056, 15.732090, 18.689846>,  <15.623951, 15.825582, 18.867245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.970056, 15.732090, 18.689846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417953, -0.152193, 0.895630,
		-0.276833, -0.960316, -0.033999,
		0.865262, -0.233730, -0.443499,
		16.229635, 15.661971, 18.556797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.922689, 18.774513, 19.168755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.631020, 19.046669, 19.139435>,  <22.456017, 19.209963, 19.121843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.631020, 19.046669, 19.139435>,  <22.922689, 18.774513, 19.168755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.631020, 19.046669, 19.139435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061187, -0.171504, -0.983281,
		-0.681585, -0.712501, 0.166688,
		-0.729177, 0.680389, -0.073299,
		22.412266, 19.250786, 19.117445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.375347, 18.451187, 18.798695>,  <22.922689, 18.774513, 19.168755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.375347, 18.451187, 18.798695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.256931, 18.833111, 18.788073>,  <22.185883, 19.062265, 18.781698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.256931, 18.833111, 18.788073>,  <22.375347, 18.451187, 18.798695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.256931, 18.833111, 18.788073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186585, -0.085073, -0.978749,
		-0.936775, -0.284791, 0.203338,
		-0.296037, 0.954807, -0.026556,
		22.168119, 19.119553, 18.780106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.808924, 18.444017, 18.339466>,  <22.375347, 18.451187, 18.798695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.808924, 18.444017, 18.339466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.929726, 18.825329, 18.342474>,  <22.002207, 19.054115, 18.344278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.929726, 18.825329, 18.342474>,  <21.808924, 18.444017, 18.339466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.929726, 18.825329, 18.342474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026725, 0.016354, -0.999509,
		-0.952931, 0.301657, 0.030416,
		0.302006, 0.953276, 0.007522,
		22.020329, 19.111311, 18.344730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.340387, 18.849627, 17.966673>,  <21.808924, 18.444017, 18.339466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.340387, 18.849627, 17.966673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.690861, 19.042404, 17.964279>,  <21.901144, 19.158072, 17.962843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.690861, 19.042404, 17.964279>,  <21.340387, 18.849627, 17.966673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.690861, 19.042404, 17.964279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061432, 0.099350, -0.993154,
		-0.478050, 0.870552, 0.116655,
		0.876182, 0.481944, -0.005985,
		21.953716, 19.186987, 17.962484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.221731, 19.226318, 17.393562>,  <21.340387, 18.849627, 17.966673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.221731, 19.226318, 17.393562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.617172, 19.263115, 17.441227>,  <21.854437, 19.285192, 17.469826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.617172, 19.263115, 17.441227>,  <21.221731, 19.226318, 17.393562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.617172, 19.263115, 17.441227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106160, 0.135191, -0.985116,
		-0.106731, 0.986540, 0.123884,
		0.988604, 0.091990, 0.119160,
		21.913754, 19.290712, 17.476974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.465500, 19.857546, 17.012486>,  <21.221731, 19.226318, 17.393562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.465500, 19.857546, 17.012486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.780285, 19.613029, 17.045990>,  <21.969156, 19.466320, 17.066092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.780285, 19.613029, 17.045990>,  <21.465500, 19.857546, 17.012486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.780285, 19.613029, 17.045990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118557, 0.016590, -0.992809,
		0.605504, 0.791233, 0.085528,
		0.786962, -0.611289, 0.083760,
		22.016373, 19.429642, 17.071117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.894167, 20.078745, 16.602985>,  <21.465500, 19.857546, 17.012486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.894167, 20.078745, 16.602985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.032856, 19.704781, 16.633251>,  <22.116070, 19.480402, 16.651411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.032856, 19.704781, 16.633251>,  <21.894167, 20.078745, 16.602985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.032856, 19.704781, 16.633251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253200, 0.015616, -0.967288,
		0.903146, 0.354541, 0.242134,
		0.346724, -0.934910, 0.075666,
		22.136873, 19.424307, 16.655951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471462, 20.127039, 16.157738>,  <21.894167, 20.078745, 16.602985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471462, 20.127039, 16.157738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.359917, 19.746407, 16.209471>,  <22.292990, 19.518026, 16.240511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.359917, 19.746407, 16.209471>,  <22.471462, 20.127039, 16.157738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.359917, 19.746407, 16.209471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107338, -0.164718, -0.980483,
		0.954314, -0.259536, 0.148075,
		-0.278862, -0.951583, 0.129334,
		22.276258, 19.460932, 16.248270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.888872, 19.815353, 15.694121>,  <22.471462, 20.127039, 16.157738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.888872, 19.815353, 15.694121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.595943, 19.554615, 15.772910>,  <22.420185, 19.398172, 15.820184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.595943, 19.554615, 15.772910>,  <22.888872, 19.815353, 15.694121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.595943, 19.554615, 15.772910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001880, -0.291191, -0.956663,
		0.680954, -0.700217, 0.214472,
		-0.732324, -0.651847, 0.196972,
		22.376245, 19.359060, 15.832002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.040148, 19.203390, 15.392678>,  <22.888872, 19.815353, 15.694121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.040148, 19.203390, 15.392678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.641624, 19.184883, 15.421611>,  <22.402512, 19.173779, 15.438971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.641624, 19.184883, 15.421611>,  <23.040148, 19.203390, 15.392678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.641624, 19.184883, 15.421611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049785, -0.375090, -0.925651,
		0.069957, -0.925833, 0.371401,
		-0.996307, -0.046266, 0.072332,
		22.342731, 19.171003, 15.443311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.885071, 18.558250, 15.081918>,  <23.040148, 19.203390, 15.392678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.885071, 18.558250, 15.081918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.536953, 18.752724, 15.050391>,  <22.328081, 18.869408, 15.031475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.536953, 18.752724, 15.050391>,  <22.885071, 18.558250, 15.081918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536953, 18.752724, 15.050391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033406, -0.217921, -0.975394,
		-0.491394, -0.846249, 0.205898,
		-0.870296, 0.486182, -0.078816,
		22.275864, 18.898579, 15.026747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.563339, 18.229742, 14.529584>,  <22.885071, 18.558250, 15.081918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.563339, 18.229742, 14.529584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.332260, 18.553696, 14.570287>,  <22.193613, 18.748068, 14.594708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.332260, 18.553696, 14.570287>,  <22.563339, 18.229742, 14.529584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.332260, 18.553696, 14.570287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225494, -0.038536, -0.973482,
		-0.784486, -0.585324, 0.204886,
		-0.577698, 0.809883, 0.101756,
		22.158951, 18.796661, 14.600814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.969646, 17.939230, 14.243023>,  <22.563339, 18.229742, 14.529584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.969646, 17.939230, 14.243023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.985302, 18.338757, 14.231488>,  <21.994696, 18.578472, 14.224567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.985302, 18.338757, 14.231488>,  <21.969646, 17.939230, 14.243023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.985302, 18.338757, 14.231488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121931, -0.023868, -0.992251,
		-0.991766, 0.042354, 0.120853,
		0.039141, 0.998817, -0.028836,
		21.997044, 18.638401, 14.222837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.318405, 18.176273, 14.040592>,  <21.969646, 17.939230, 14.243023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.318405, 18.176273, 14.040592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.604977, 18.436031, 13.938600>,  <21.776920, 18.591887, 13.877404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.604977, 18.436031, 13.938600>,  <21.318405, 18.176273, 14.040592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.604977, 18.436031, 13.938600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250932, -0.101164, -0.962704,
		-0.650969, 0.753693, 0.090476,
		0.716431, 0.649394, -0.254981,
		21.819906, 18.630850, 13.862105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.772797, 17.683443, 13.886694>,  <21.318405, 18.176273, 14.040592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.772797, 17.683443, 13.886694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.718304, 17.287647, 13.867297>,  <20.685608, 17.050169, 13.855659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.718304, 17.287647, 13.867297>,  <20.772797, 17.683443, 13.886694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.718304, 17.287647, 13.867297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094872, -0.061754, 0.993572,
		-0.986124, 0.130754, 0.102288,
		-0.136230, -0.989490, -0.048493,
		20.677435, 16.990801, 13.852750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.430849, 17.516632, 14.533857>,  <20.772797, 17.683443, 13.886694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.430849, 17.516632, 14.533857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.597157, 17.184559, 14.385299>,  <20.696941, 16.985315, 14.296164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.597157, 17.184559, 14.385299>,  <20.430849, 17.516632, 14.533857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.597157, 17.184559, 14.385299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405839, -0.196098, 0.892659,
		-0.813899, -0.521867, 0.255389,
		0.415768, -0.830181, -0.371398,
		20.721888, 16.935505, 14.273879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.263382, 16.945620, 14.970741>,  <20.430849, 17.516632, 14.533857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.263382, 16.945620, 14.970741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.609478, 16.829334, 14.807355>,  <20.817135, 16.759563, 14.709323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.609478, 16.829334, 14.807355>,  <20.263382, 16.945620, 14.970741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.609478, 16.829334, 14.807355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456896, 0.121801, 0.881141,
		-0.206410, -0.949025, 0.238214,
		0.865240, -0.290716, -0.408465,
		20.869051, 16.742119, 14.684815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.447662, 16.532383, 15.419457>,  <20.263382, 16.945620, 14.970741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.447662, 16.532383, 15.419457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.786343, 16.628181, 15.229409>,  <20.989552, 16.685659, 15.115380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.786343, 16.628181, 15.229409>,  <20.447662, 16.532383, 15.419457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.786343, 16.628181, 15.229409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521138, -0.193208, 0.831315,
		0.107299, -0.951479, -0.288400,
		0.846700, 0.239496, -0.475121,
		21.040352, 16.700029, 15.086873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.907583, 16.073328, 15.532331>,  <20.447662, 16.532383, 15.419457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.907583, 16.073328, 15.532331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.153316, 16.372810, 15.432704>,  <21.300756, 16.552500, 15.372928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.153316, 16.372810, 15.432704>,  <20.907583, 16.073328, 15.532331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.153316, 16.372810, 15.432704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574495, -0.208041, 0.791627,
		0.540879, -0.629411, -0.557934,
		0.614333, 0.748706, -0.249068,
		21.337616, 16.597422, 15.357984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.587124, 15.799371, 15.523190>,  <20.907583, 16.073328, 15.532331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.587124, 15.799371, 15.523190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.652203, 16.191570, 15.567286>,  <21.691250, 16.426889, 15.593744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.652203, 16.191570, 15.567286>,  <21.587124, 15.799371, 15.523190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.652203, 16.191570, 15.567286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312834, -0.157224, 0.936704,
		0.935770, -0.117911, -0.332313,
		0.162695, 0.980499, 0.110239,
		21.701012, 16.485720, 15.600358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.274122, 15.899794, 15.815585>,  <21.587124, 15.799371, 15.523190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.274122, 15.899794, 15.815585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.053135, 16.225368, 15.887458>,  <21.920542, 16.420713, 15.930581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.053135, 16.225368, 15.887458>,  <22.274122, 15.899794, 15.815585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.053135, 16.225368, 15.887458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213654, -0.070083, 0.974392,
		0.805687, 0.576710, -0.135182,
		-0.552468, 0.813937, 0.179681,
		21.887394, 16.469549, 15.941362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.685411, 16.226723, 16.376635>,  <22.274122, 15.899794, 15.815585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.685411, 16.226723, 16.376635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.325806, 16.400246, 16.400589>,  <22.110043, 16.504360, 16.414961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.325806, 16.400246, 16.400589>,  <22.685411, 16.226723, 16.376635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.325806, 16.400246, 16.400589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154123, 0.185428, 0.970496,
		0.409906, 0.881718, -0.233562,
		-0.899012, 0.433809, 0.059885,
		22.056103, 16.530388, 16.418554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.761606, 16.797762, 16.776190>,  <22.685411, 16.226723, 16.376635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.761606, 16.797762, 16.776190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.369602, 16.719456, 16.790344>,  <22.134399, 16.672472, 16.798836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.369602, 16.719456, 16.790344>,  <22.761606, 16.797762, 16.776190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.369602, 16.719456, 16.790344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011525, 0.233438, 0.972303,
		-0.198603, 0.952461, -0.231029,
		-0.980012, -0.195765, 0.035384,
		22.075598, 16.660727, 16.800959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.464785, 17.365953, 17.159693>,  <22.761606, 16.797762, 16.776190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.464785, 17.365953, 17.159693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.207272, 17.061878, 17.194702>,  <22.052763, 16.879433, 17.215708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.207272, 17.061878, 17.194702>,  <22.464785, 17.365953, 17.159693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.207272, 17.061878, 17.194702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021103, 0.131973, 0.991029,
		-0.764917, 0.636161, -0.101004,
		-0.643783, -0.760186, 0.087524,
		22.014137, 16.833822, 17.220959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.918808, 17.629221, 17.604456>,  <22.464785, 17.365953, 17.159693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.918808, 17.629221, 17.604456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.872028, 17.231968, 17.605480>,  <21.843960, 16.993616, 17.606094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.872028, 17.231968, 17.605480>,  <21.918808, 17.629221, 17.604456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.872028, 17.231968, 17.605480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319349, 0.040046, 0.946791,
		-0.940393, 0.109910, -0.321839,
		-0.116950, -0.993135, 0.002559,
		21.836943, 16.934027, 17.606249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.389910, 17.561239, 17.892649>,  <21.918808, 17.629221, 17.604456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.389910, 17.561239, 17.892649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.522907, 17.188282, 17.949348>,  <21.602705, 16.964508, 17.983368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.522907, 17.188282, 17.949348>,  <21.389910, 17.561239, 17.892649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.522907, 17.188282, 17.949348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267327, 0.050962, 0.962257,
		-0.904425, -0.357837, -0.232310,
		0.332492, -0.932392, 0.141751,
		21.622656, 16.908564, 17.991873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.786230, 17.024889, 18.144709>,  <21.389910, 17.561239, 17.892649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.786230, 17.024889, 18.144709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.140873, 16.870205, 18.246208>,  <21.353659, 16.777395, 18.307108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.140873, 16.870205, 18.246208>,  <20.786230, 17.024889, 18.144709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.140873, 16.870205, 18.246208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227437, 0.113203, 0.967191,
		-0.402746, -0.915228, 0.012415,
		0.886605, -0.386708, 0.253748,
		21.406855, 16.754192, 18.322332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.761019, 16.396727, 18.657438>,  <20.786230, 17.024889, 18.144709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.761019, 16.396727, 18.657438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.127274, 16.554382, 18.689100>,  <21.347027, 16.648975, 18.708097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.127274, 16.554382, 18.689100>,  <20.761019, 16.396727, 18.657438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.127274, 16.554382, 18.689100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088964, 0.006645, 0.996013,
		0.392041, -0.919027, 0.041149,
		0.915636, 0.394139, 0.079155,
		21.401964, 16.672625, 18.712847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.709181, 15.708377, 18.283560>,  <20.761019, 16.396727, 18.657438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.709181, 15.708377, 18.283560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.380592, 15.506439, 18.389629>,  <20.183439, 15.385277, 18.453272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.380592, 15.506439, 18.389629>,  <20.709181, 15.708377, 18.283560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.380592, 15.506439, 18.389629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353058, 0.085088, -0.931724,
		0.447812, -0.859007, -0.248137,
		-0.821471, -0.504844, 0.265176,
		20.134151, 15.354986, 18.469183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.536343, 15.418421, 17.699095>,  <20.709181, 15.708377, 18.283560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.536343, 15.418421, 17.699095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.194229, 15.331802, 17.887390>,  <19.988960, 15.279832, 18.000368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.194229, 15.331802, 17.887390>,  <20.536343, 15.418421, 17.699095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.194229, 15.331802, 17.887390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480260, -0.009749, -0.877072,
		0.194515, -0.976224, -0.095660,
		-0.855286, -0.216545, 0.470738,
		19.937643, 15.266839, 18.028612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.256351, 14.926412, 17.280113>,  <20.536343, 15.418421, 17.699095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.256351, 14.926412, 17.280113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.952465, 15.065311, 17.500023>,  <19.770134, 15.148651, 17.631968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.952465, 15.065311, 17.500023>,  <20.256351, 14.926412, 17.280113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.952465, 15.065311, 17.500023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577532, 0.028192, -0.815881,
		-0.298814, -0.937349, 0.179130,
		-0.759715, 0.347250, 0.549773,
		19.724550, 15.169486, 17.664955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.748024, 14.412540, 17.172924>,  <20.256351, 14.926412, 17.280113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.748024, 14.412540, 17.172924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.578178, 14.759308, 17.277348>,  <19.476271, 14.967368, 17.340002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.578178, 14.759308, 17.277348>,  <19.748024, 14.412540, 17.172924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.578178, 14.759308, 17.277348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611948, -0.062303, -0.788440,
		-0.667250, -0.494539, 0.556964,
		-0.424615, 0.866920, 0.261060,
		19.450794, 15.019383, 17.355665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.073959, 14.422902, 17.039627>,  <19.748024, 14.412540, 17.172924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.073959, 14.422902, 17.039627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.128036, 14.818829, 17.057467>,  <19.160482, 15.056384, 17.068171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.128036, 14.818829, 17.057467>,  <19.073959, 14.422902, 17.039627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.128036, 14.818829, 17.057467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592220, 0.116810, -0.797264,
		-0.794354, 0.081371, 0.601981,
		0.135191, 0.989815, 0.044599,
		19.168594, 15.115773, 17.070847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.297321, 14.728748, 17.017416>,  <19.073959, 14.422902, 17.039627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.297321, 14.728748, 17.017416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.572723, 14.990704, 16.892782>,  <18.737965, 15.147877, 16.818003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.572723, 14.990704, 16.892782>,  <18.297321, 14.728748, 17.017416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.572723, 14.990704, 16.892782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443770, 0.040618, -0.895220,
		-0.573613, 0.754634, 0.318585,
		0.688503, 0.654888, -0.311585,
		18.779274, 15.187170, 16.799307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.923088, 15.168944, 16.672405>,  <18.297321, 14.728748, 17.017416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.923088, 15.168944, 16.672405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.295563, 15.240536, 16.545376>,  <18.519049, 15.283490, 16.469158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.295563, 15.240536, 16.545376>,  <17.923088, 15.168944, 16.672405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.295563, 15.240536, 16.545376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349877, 0.194238, -0.916437,
		-0.102336, 0.964489, 0.243493,
		0.931189, 0.178978, -0.317575,
		18.574919, 15.294229, 16.450104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.776981, 15.675963, 16.166075>,  <17.923088, 15.168944, 16.672405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.776981, 15.675963, 16.166075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.165421, 15.617920, 16.090269>,  <18.398483, 15.583094, 16.044786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.165421, 15.617920, 16.090269>,  <17.776981, 15.675963, 16.166075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.165421, 15.617920, 16.090269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180024, 0.076078, -0.980716,
		0.156728, 0.986487, 0.047756,
		0.971096, -0.145108, -0.189514,
		18.456749, 15.574388, 16.033415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.983862, 16.171959, 15.682540>,  <17.776981, 15.675963, 16.166075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.983862, 16.171959, 15.682540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.249977, 15.875473, 15.646781>,  <18.409647, 15.697581, 15.625325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.249977, 15.875473, 15.646781>,  <17.983862, 16.171959, 15.682540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.249977, 15.875473, 15.646781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149625, -0.015060, -0.988628,
		0.731439, 0.671100, -0.120923,
		0.665289, -0.741214, -0.089398,
		18.449564, 15.653109, 15.619962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.393682, 16.312706, 15.174520>,  <17.983862, 16.171959, 15.682540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.393682, 16.312706, 15.174520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.444241, 15.916649, 15.198649>,  <18.474575, 15.679014, 15.213126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.444241, 15.916649, 15.198649>,  <18.393682, 16.312706, 15.174520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.444241, 15.916649, 15.198649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220732, -0.087357, -0.971414,
		0.967110, 0.109465, -0.229598,
		0.126393, -0.990144, 0.060322,
		18.482159, 15.619605, 15.216746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.865005, 16.068981, 14.628167>,  <18.393682, 16.312706, 15.174520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.865005, 16.068981, 14.628167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.649101, 15.747410, 14.728051>,  <18.519558, 15.554466, 14.787982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.649101, 15.747410, 14.728051>,  <18.865005, 16.068981, 14.628167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.649101, 15.747410, 14.728051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157795, -0.194752, -0.968077,
		0.826898, -0.561932, -0.021737,
		-0.539760, -0.803931, 0.249710,
		18.487173, 15.506230, 14.802964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.150763, 15.539909, 14.152003>,  <18.865005, 16.068981, 14.628167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.150763, 15.539909, 14.152003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.803135, 15.396904, 14.288770>,  <18.594559, 15.311101, 14.370830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.803135, 15.396904, 14.288770>,  <19.150763, 15.539909, 14.152003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.803135, 15.396904, 14.288770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186964, -0.402530, -0.896111,
		0.458004, -0.842706, 0.282983,
		-0.869067, -0.357514, 0.341915,
		18.542416, 15.289650, 14.391344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.111784, 14.876103, 13.927975>,  <19.150763, 15.539909, 14.152003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.111784, 14.876103, 13.927975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.733047, 14.980690, 14.002942>,  <18.505806, 15.043442, 14.047922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.733047, 14.980690, 14.002942>,  <19.111784, 14.876103, 13.927975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.733047, 14.980690, 14.002942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226994, -0.130185, -0.965156,
		-0.227961, -0.956392, 0.182617,
		-0.946841, 0.261470, 0.187418,
		18.448996, 15.059131, 14.059168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717865, 14.320029, 13.725686>,  <19.111784, 14.876103, 13.927975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.717865, 14.320029, 13.725686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.482162, 14.642662, 13.744475>,  <18.340742, 14.836242, 13.755749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.482162, 14.642662, 13.744475>,  <18.717865, 14.320029, 13.725686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.482162, 14.642662, 13.744475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392611, -0.235042, -0.889164,
		-0.706142, -0.542386, 0.455172,
		-0.589254, 0.806581, 0.046974,
		18.305386, 14.884636, 13.758568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.918559, 15.113681, 19.207647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.224911, 15.330772, 19.069735>,  <16.408722, 15.461027, 18.986986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.224911, 15.330772, 19.069735>,  <15.918559, 15.113681, 19.207647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224911, 15.330772, 19.069735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529574, -0.228324, 0.816958,
		0.364664, -0.808278, -0.462284,
		0.765880, 0.542729, -0.344781,
		16.454674, 15.493591, 18.966301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.557268, 14.682783, 19.412426>,  <15.918559, 15.113681, 19.207647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.557268, 14.682783, 19.412426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.674973, 15.052372, 19.314703>,  <16.745594, 15.274126, 19.256069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.674973, 15.052372, 19.314703>,  <16.557268, 14.682783, 19.412426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674973, 15.052372, 19.314703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626444, 0.006585, 0.779438,
		0.721789, -0.382400, -0.576880,
		0.294259, 0.923973, -0.244305,
		16.763250, 15.329564, 19.241411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.232580, 14.609881, 19.560970>,  <16.557268, 14.682783, 19.412426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.232580, 14.609881, 19.560970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.151249, 15.001526, 19.560478>,  <17.102451, 15.236512, 19.560183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.151249, 15.001526, 19.560478>,  <17.232580, 14.609881, 19.560970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151249, 15.001526, 19.560478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525593, 0.110208, 0.843568,
		0.826082, 0.170872, -0.537022,
		-0.203326, 0.979110, -0.001231,
		17.090252, 15.295259, 19.560108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.821684, 14.930861, 19.773609>,  <17.232580, 14.609881, 19.560970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.821684, 14.930861, 19.773609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.554600, 15.219509, 19.846739>,  <17.394350, 15.392698, 19.890617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.554600, 15.219509, 19.846739>,  <17.821684, 14.930861, 19.773609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.554600, 15.219509, 19.846739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369851, 0.108440, 0.922741,
		0.646045, 0.683741, -0.339299,
		-0.667710, 0.721622, 0.182825,
		17.354286, 15.435996, 19.901587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.193708, 15.449396, 20.119408>,  <17.821684, 14.930861, 19.773609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.193708, 15.449396, 20.119408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.810398, 15.478207, 20.230061>,  <17.580412, 15.495493, 20.296452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.810398, 15.478207, 20.230061>,  <18.193708, 15.449396, 20.119408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.810398, 15.478207, 20.230061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285469, 0.190994, 0.939164,
		0.014810, 0.978945, -0.203586,
		-0.958273, 0.072026, 0.276630,
		17.522917, 15.499815, 20.313049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.193844, 16.007700, 20.586069>,  <18.193708, 15.449396, 20.119408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.193844, 16.007700, 20.586069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.853981, 15.805698, 20.646805>,  <17.650063, 15.684498, 20.683247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.853981, 15.805698, 20.646805>,  <18.193844, 16.007700, 20.586069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.853981, 15.805698, 20.646805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136543, 0.067433, 0.988336,
		-0.509352, 0.860479, 0.011660,
		-0.849657, -0.505003, 0.151839,
		17.599085, 15.654198, 20.692356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.902721, 16.359047, 21.081181>,  <18.193844, 16.007700, 20.586069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.902721, 16.359047, 21.081181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.744240, 15.991829, 21.087118>,  <17.649151, 15.771499, 21.090681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.744240, 15.991829, 21.087118>,  <17.902721, 16.359047, 21.081181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.744240, 15.991829, 21.087118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196114, -0.068823, 0.978163,
		-0.896975, 0.390461, 0.207309,
		-0.396202, -0.918044, 0.014843,
		17.625380, 15.716415, 21.091572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451519, 16.308538, 21.698936>,  <17.902721, 16.359047, 21.081181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.451519, 16.308538, 21.698936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.517323, 15.923557, 21.612566>,  <17.556805, 15.692569, 21.560743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.517323, 15.923557, 21.612566>,  <17.451519, 16.308538, 21.698936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.517323, 15.923557, 21.612566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136289, -0.194631, 0.971362,
		-0.976914, -0.189227, 0.099153,
		0.164510, -0.962451, -0.215927,
		17.566675, 15.634822, 21.547789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025816, 15.879954, 22.125687>,  <17.451519, 16.308538, 21.698936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.025816, 15.879954, 22.125687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.332375, 15.643085, 22.026115>,  <17.516310, 15.500964, 21.966372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.332375, 15.643085, 22.026115>,  <17.025816, 15.879954, 22.125687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.332375, 15.643085, 22.026115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164779, -0.193321, 0.967200,
		-0.620873, -0.782278, -0.050583,
		0.766398, -0.592173, -0.248930,
		17.562294, 15.465434, 21.951437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.908659, 15.213530, 22.425301>,  <17.025816, 15.879954, 22.125687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.908659, 15.213530, 22.425301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.303570, 15.260105, 22.381994>,  <17.540516, 15.288051, 22.356010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.303570, 15.260105, 22.381994>,  <16.908659, 15.213530, 22.425301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.303570, 15.260105, 22.381994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150881, -0.471337, 0.868951,
		0.050150, -0.874233, -0.482910,
		0.987279, 0.116439, -0.108268,
		17.599754, 15.295037, 22.349514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.237778, 14.587424, 22.784027>,  <16.908659, 15.213530, 22.425301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.237778, 14.587424, 22.784027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.547314, 14.840023, 22.764494>,  <17.733034, 14.991583, 22.752773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.547314, 14.840023, 22.764494>,  <17.237778, 14.587424, 22.784027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547314, 14.840023, 22.764494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286542, -0.280284, 0.916152,
		0.564861, -0.722946, -0.397845,
		0.773838, 0.631498, -0.048833,
		17.779465, 15.029472, 22.749844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.725172, 14.261393, 23.167065>,  <17.237778, 14.587424, 22.784027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.725172, 14.261393, 23.167065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.855145, 14.639614, 23.159637>,  <17.933128, 14.866548, 23.155182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.855145, 14.639614, 23.159637>,  <17.725172, 14.261393, 23.167065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.855145, 14.639614, 23.159637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266348, -0.072655, 0.961135,
		0.907456, -0.317250, -0.275455,
		0.324933, 0.945555, -0.018567,
		17.952625, 14.923281, 23.154068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.405334, 14.309451, 23.503359>,  <17.725172, 14.261393, 23.167065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.405334, 14.309451, 23.503359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.273422, 14.684181, 23.550013>,  <18.194275, 14.909019, 23.578005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.273422, 14.684181, 23.550013>,  <18.405334, 14.309451, 23.503359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.273422, 14.684181, 23.550013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397809, 0.025858, 0.917104,
		0.856150, 0.348841, -0.381205,
		-0.329781, 0.936825, 0.116634,
		18.174488, 14.965229, 23.585003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899473, 14.532883, 23.866922>,  <18.405334, 14.309451, 23.503359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.899473, 14.532883, 23.866922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.630722, 14.819649, 23.941338>,  <18.469471, 14.991709, 23.985987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.630722, 14.819649, 23.941338>,  <18.899473, 14.532883, 23.866922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.630722, 14.819649, 23.941338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402946, 0.143054, 0.903974,
		0.621459, 0.682326, -0.384993,
		-0.671880, 0.716915, 0.186038,
		18.429157, 15.034723, 23.997149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485861, 14.806304, 24.055756>,  <18.899473, 14.532883, 23.866922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485861, 14.806304, 24.055756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.880138, 14.739128, 24.050056>,  <20.116705, 14.698823, 24.046637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.880138, 14.739128, 24.050056>,  <19.485861, 14.806304, 24.055756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.880138, 14.739128, 24.050056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054706, -0.238840, -0.969517,
		0.159417, 0.956427, -0.244610,
		0.985695, -0.167939, -0.014247,
		20.175846, 14.688746, 24.045782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.809145, 15.267129, 23.605972>,  <19.485861, 14.806304, 24.055756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.809145, 15.267129, 23.605972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.100014, 14.994343, 23.637325>,  <20.274536, 14.830671, 23.656137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.100014, 14.994343, 23.637325>,  <19.809145, 15.267129, 23.605972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.100014, 14.994343, 23.637325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118573, 0.012320, -0.992869,
		0.676136, 0.731281, 0.089822,
		0.727173, -0.681965, 0.078381,
		20.318165, 14.789753, 23.660839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.269810, 15.513998, 23.170340>,  <19.809145, 15.267129, 23.605972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.269810, 15.513998, 23.170340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.383331, 15.133293, 23.216990>,  <20.451445, 14.904870, 23.244980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.383331, 15.133293, 23.216990>,  <20.269810, 15.513998, 23.170340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.383331, 15.133293, 23.216990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249555, -0.044123, -0.967355,
		0.925839, 0.303644, 0.224996,
		0.283804, -0.951763, 0.116626,
		20.468473, 14.847764, 23.251978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.813786, 15.351589, 22.618563>,  <20.269810, 15.513998, 23.170340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.813786, 15.351589, 22.618563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.707695, 14.983944, 22.735104>,  <20.644041, 14.763357, 22.805029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.707695, 14.983944, 22.735104>,  <20.813786, 15.351589, 22.618563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.707695, 14.983944, 22.735104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277811, -0.362209, -0.889733,
		0.923296, -0.155039, 0.351407,
		-0.265226, -0.919113, 0.291354,
		20.628128, 14.708210, 22.822510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.368526, 14.934674, 22.382809>,  <20.813786, 15.351589, 22.618563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.368526, 14.934674, 22.382809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.043499, 14.705956, 22.428032>,  <20.848482, 14.568724, 22.455166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.043499, 14.705956, 22.428032>,  <21.368526, 14.934674, 22.382809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.043499, 14.705956, 22.428032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104206, -0.333358, -0.937024,
		0.573477, -0.749613, 0.330461,
		-0.812567, -0.571797, 0.113059,
		20.799728, 14.534416, 22.461950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.588236, 14.290215, 21.949051>,  <21.368526, 14.934674, 22.382809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.588236, 14.290215, 21.949051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.193878, 14.339592, 21.994259>,  <20.957264, 14.369218, 22.021383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.193878, 14.339592, 21.994259>,  <21.588236, 14.290215, 21.949051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.193878, 14.339592, 21.994259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133852, -0.176145, -0.975221,
		-0.100472, -0.976594, 0.190183,
		-0.985895, 0.123439, 0.113022,
		20.898109, 14.376625, 22.028166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.229218, 13.729726, 21.479303>,  <21.588236, 14.290215, 21.949051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.229218, 13.729726, 21.479303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.952393, 14.013721, 21.531404>,  <20.786297, 14.184118, 21.562664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.952393, 14.013721, 21.531404>,  <21.229218, 13.729726, 21.479303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.952393, 14.013721, 21.531404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240918, -0.057091, -0.968865,
		-0.680447, -0.701895, 0.210559,
		-0.692063, 0.709988, 0.130252,
		20.744774, 14.226718, 21.570480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.583334, 13.474913, 21.090042>,  <21.229218, 13.729726, 21.479303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.583334, 13.474913, 21.090042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.524509, 13.867275, 21.140947>,  <20.489214, 14.102693, 21.171490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.524509, 13.867275, 21.140947>,  <20.583334, 13.474913, 21.090042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.524509, 13.867275, 21.140947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329002, 0.072826, -0.941517,
		-0.932808, -0.180332, 0.312010,
		-0.147063, 0.980906, 0.127262,
		20.480391, 14.161547, 21.179127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.103645, 13.579680, 20.645855>,  <20.583334, 13.474913, 21.090042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.103645, 13.579680, 20.645855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.205887, 13.961185, 20.709106>,  <20.267231, 14.190088, 20.747057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.205887, 13.961185, 20.709106>,  <20.103645, 13.579680, 20.645855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.205887, 13.961185, 20.709106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282078, 0.230018, -0.931409,
		-0.924715, 0.193467, 0.327829,
		0.255603, 0.953762, 0.158128,
		20.282568, 14.247314, 20.756544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.586836, 13.901416, 20.335968>,  <20.103645, 13.579680, 20.645855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.586836, 13.901416, 20.335968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.858509, 14.190067, 20.389574>,  <20.021513, 14.363258, 20.421738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.858509, 14.190067, 20.389574>,  <19.586836, 13.901416, 20.335968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.858509, 14.190067, 20.389574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175145, 0.336665, -0.925193,
		-0.712764, 0.604904, 0.355047,
		0.679184, 0.721629, 0.134017,
		20.062263, 14.406556, 20.429779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.257320, 14.666375, 20.236233>,  <19.586836, 13.901416, 20.335968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.257320, 14.666375, 20.236233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.649658, 14.711891, 20.172987>,  <19.885061, 14.739201, 20.135038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.649658, 14.711891, 20.172987>,  <19.257320, 14.666375, 20.236233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.649658, 14.711891, 20.172987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191974, 0.426758, -0.883755,
		-0.033085, 0.897178, 0.440427,
		0.980842, 0.113789, -0.158116,
		19.943911, 14.746028, 20.125551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.300613, 15.303797, 19.898115>,  <19.257320, 14.666375, 20.236233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.300613, 15.303797, 19.898115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.636082, 15.111568, 19.795601>,  <19.837362, 14.996231, 19.734093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.636082, 15.111568, 19.795601>,  <19.300613, 15.303797, 19.898115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.636082, 15.111568, 19.795601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089981, 0.341839, -0.935441,
		0.537156, 0.807587, 0.243447,
		0.838670, -0.480572, -0.256288,
		19.887682, 14.967397, 19.718714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.541407, 15.777511, 19.409962>,  <19.300613, 15.303797, 19.898115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.541407, 15.777511, 19.409962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.775040, 15.460300, 19.340725>,  <19.915218, 15.269975, 19.299183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.775040, 15.460300, 19.340725>,  <19.541407, 15.777511, 19.409962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.775040, 15.460300, 19.340725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012275, 0.221852, -0.975003,
		0.811602, 0.567357, 0.139314,
		0.584082, -0.793024, -0.173091,
		19.950264, 15.222393, 19.288797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.242889, 15.949387, 19.172991>,  <19.541407, 15.777511, 19.409962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.242889, 15.949387, 19.172991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.159016, 15.579838, 19.044931>,  <20.108692, 15.358109, 18.968096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.159016, 15.579838, 19.044931>,  <20.242889, 15.949387, 19.172991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.159016, 15.579838, 19.044931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163084, 0.355887, -0.920189,
		0.964073, -0.140737, -0.225292,
		-0.209683, -0.923871, -0.320150,
		20.096111, 15.302676, 18.948887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.021730, 16.016178, 19.203608>,  <20.242889, 15.949387, 19.172991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.021730, 16.016178, 19.203608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.238609, 16.349781, 19.162706>,  <21.368736, 16.549942, 19.138165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.238609, 16.349781, 19.162706>,  <21.021730, 16.016178, 19.203608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.238609, 16.349781, 19.162706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070415, 0.166366, 0.983546,
		0.837295, -0.526076, 0.148930,
		0.542197, 0.834006, -0.102254,
		21.401268, 16.599983, 19.132030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.652369, 15.977315, 19.678238>,  <21.021730, 16.016178, 19.203608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.652369, 15.977315, 19.678238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.594696, 16.361500, 19.582970>,  <21.560093, 16.592010, 19.525808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.594696, 16.361500, 19.582970>,  <21.652369, 15.977315, 19.678238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.594696, 16.361500, 19.582970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019859, 0.237827, 0.971105,
		0.989352, 0.144744, -0.015217,
		-0.144181, 0.960462, -0.238169,
		21.551441, 16.649639, 19.511518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.152742, 16.144699, 19.999714>,  <21.652369, 15.977315, 19.678238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.152742, 16.144699, 19.999714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.892193, 16.441013, 19.934053>,  <21.735863, 16.618801, 19.894657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.892193, 16.441013, 19.934053>,  <22.152742, 16.144699, 19.999714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.892193, 16.441013, 19.934053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090482, 0.138961, 0.986156,
		0.753341, 0.657211, -0.023488,
		-0.651376, 0.740786, -0.164151,
		21.696779, 16.663250, 19.884808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.299330, 16.646481, 20.548952>,  <22.152742, 16.144699, 19.999714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.299330, 16.646481, 20.548952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.944786, 16.782986, 20.423790>,  <21.732059, 16.864889, 20.348694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.944786, 16.782986, 20.423790>,  <22.299330, 16.646481, 20.548952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.944786, 16.782986, 20.423790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221726, 0.280423, 0.933917,
		0.406458, 0.897163, -0.172888,
		-0.886357, 0.341264, -0.312904,
		21.678879, 16.885365, 20.329918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.246550, 17.311367, 20.851873>,  <22.299330, 16.646481, 20.548952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.246550, 17.311367, 20.851873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.871189, 17.185127, 20.795584>,  <21.645973, 17.109385, 20.761810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.871189, 17.185127, 20.795584>,  <22.246550, 17.311367, 20.851873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.871189, 17.185127, 20.795584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229707, 0.265491, 0.936349,
		-0.258148, 0.910996, -0.321632,
		-0.938400, -0.315597, -0.140726,
		21.589668, 17.090448, 20.753366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.763035, 17.784590, 21.276720>,  <22.246550, 17.311367, 20.851873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.763035, 17.784590, 21.276720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.537983, 17.466789, 21.185320>,  <21.402952, 17.276108, 21.130480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.537983, 17.466789, 21.185320>,  <21.763035, 17.784590, 21.276720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.537983, 17.466789, 21.185320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511234, 0.117160, 0.851419,
		-0.649683, 0.595852, -0.472094,
		-0.562630, -0.794503, -0.228503,
		21.369194, 17.228439, 21.116770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.126209, 18.051252, 21.344397>,  <21.763035, 17.784590, 21.276720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.126209, 18.051252, 21.344397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.130875, 17.653122, 21.382746>,  <21.133675, 17.414244, 21.405756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.130875, 17.653122, 21.382746>,  <21.126209, 18.051252, 21.344397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.130875, 17.653122, 21.382746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302960, 0.087856, 0.948945,
		-0.952932, -0.040114, -0.300519,
		0.011664, -0.995325, 0.095873,
		21.134375, 17.354525, 21.411509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.899250, 18.755594, 21.387009>,  <21.126209, 18.051252, 21.344397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.899250, 18.755594, 21.387009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.157612, 19.014343, 21.549177>,  <21.312628, 19.169592, 21.646479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.157612, 19.014343, 21.549177>,  <20.899250, 18.755594, 21.387009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.157612, 19.014343, 21.549177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237315, 0.334618, -0.911982,
		-0.725597, 0.685265, 0.062618,
		0.645903, 0.646872, 0.405422,
		21.351383, 19.208405, 21.670803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.822809, 19.369129, 21.014187>,  <20.899250, 18.755594, 21.387009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.822809, 19.369129, 21.014187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.193027, 19.379925, 21.165258>,  <21.415157, 19.386402, 21.255901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.193027, 19.379925, 21.165258>,  <20.822809, 19.369129, 21.014187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.193027, 19.379925, 21.165258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358434, 0.259047, -0.896894,
		-0.122043, 0.965487, 0.230085,
		0.925543, 0.026990, 0.377678,
		21.470690, 19.388021, 21.278563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.047941, 19.994591, 20.828354>,  <20.822809, 19.369129, 21.014187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.047941, 19.994591, 20.828354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.376575, 19.778923, 20.902426>,  <21.573755, 19.649523, 20.946869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.376575, 19.778923, 20.902426>,  <21.047941, 19.994591, 20.828354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.376575, 19.778923, 20.902426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423527, 0.359839, -0.831348,
		0.381603, 0.761453, 0.523992,
		0.821586, -0.539170, 0.185181,
		21.623051, 19.617172, 20.957979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.637581, 20.441483, 20.534626>,  <21.047941, 19.994591, 20.828354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.637581, 20.441483, 20.534626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.786514, 20.076157, 20.600624>,  <21.875874, 19.856960, 20.640223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.786514, 20.076157, 20.600624>,  <21.637581, 20.441483, 20.534626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.786514, 20.076157, 20.600624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352246, -0.025415, -0.935562,
		0.858656, 0.406460, 0.312249,
		0.372333, -0.913315, 0.164997,
		21.898214, 19.802162, 20.650124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.256781, 20.507719, 20.133625>,  <21.637581, 20.441483, 20.534626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.256781, 20.507719, 20.133625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.198067, 20.119831, 20.211702>,  <22.162838, 19.887098, 20.258549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.198067, 20.119831, 20.211702>,  <22.256781, 20.507719, 20.133625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.198067, 20.119831, 20.211702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326019, -0.233734, -0.916013,
		0.933898, -0.070819, 0.350455,
		-0.146784, -0.969718, 0.195195,
		22.154032, 19.828917, 20.270262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.819363, 20.066980, 19.893267>,  <22.256781, 20.507719, 20.133625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.819363, 20.066980, 19.893267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.508415, 19.815437, 19.899406>,  <22.321848, 19.664511, 19.903090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.508415, 19.815437, 19.899406>,  <22.819363, 20.066980, 19.893267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.508415, 19.815437, 19.899406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255776, -0.338283, -0.905618,
		0.574699, -0.700072, 0.423817,
		-0.777368, -0.628859, 0.015349,
		22.275206, 19.626780, 19.904011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.096277, 19.324308, 19.700987>,  <22.819363, 20.066980, 19.893267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.096277, 19.324308, 19.700987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.709919, 19.379635, 19.613428>,  <22.478104, 19.412830, 19.560892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.709919, 19.379635, 19.613428>,  <23.096277, 19.324308, 19.700987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.709919, 19.379635, 19.613428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141634, -0.425489, -0.893812,
		-0.216766, -0.894331, 0.391387,
		-0.965895, 0.138314, -0.218899,
		22.420151, 19.421129, 19.547758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<18.535795, 18.546137, 23.060442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.482269, 18.173710, 22.924675>,  <18.450153, 17.950253, 22.843216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.482269, 18.173710, 22.924675>,  <18.535795, 18.546137, 23.060442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.482269, 18.173710, 22.924675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324056, 0.364779, -0.872883,
		0.936526, -0.006816, -0.350531,
		-0.133816, -0.931069, -0.339416,
		18.442123, 17.894388, 22.822849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.874971, 18.444614, 22.336527>,  <18.535795, 18.546137, 23.060442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.874971, 18.444614, 22.336527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.624355, 18.132915, 22.342468>,  <18.473986, 17.945896, 22.346033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.624355, 18.132915, 22.342468>,  <18.874971, 18.444614, 22.336527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.624355, 18.132915, 22.342468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223336, 0.161245, -0.961312,
		0.746706, -0.605617, -0.275061,
		-0.626539, -0.779249, 0.014853,
		18.436394, 17.899141, 22.346924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.066833, 17.979113, 21.840265>,  <18.874971, 18.444614, 22.336527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.066833, 17.979113, 21.840265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.680599, 17.877110, 21.860706>,  <18.448858, 17.815907, 21.872971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.680599, 17.877110, 21.860706>,  <19.066833, 17.979113, 21.840265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.680599, 17.877110, 21.860706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081925, 0.111753, -0.990353,
		0.246840, -0.960459, -0.128799,
		-0.965587, -0.255011, 0.051100,
		18.390923, 17.800608, 21.876036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.975885, 17.580767, 21.250484>,  <19.066833, 17.979113, 21.840265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.975885, 17.580767, 21.250484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.617661, 17.717995, 21.363811>,  <18.402725, 17.800331, 21.431807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.617661, 17.717995, 21.363811>,  <18.975885, 17.580767, 21.250484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.617661, 17.717995, 21.363811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254253, 0.127953, -0.958636,
		-0.365132, -0.930553, -0.027363,
		-0.895564, 0.343071, 0.283315,
		18.348991, 17.820915, 21.448807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.369810, 17.255934, 20.932526>,  <18.975885, 17.580767, 21.250484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.369810, 17.255934, 20.932526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.222538, 17.613926, 21.033285>,  <18.134174, 17.828722, 21.093740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.222538, 17.613926, 21.033285>,  <18.369810, 17.255934, 20.932526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.222538, 17.613926, 21.033285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348754, 0.118211, -0.929729,
		-0.861867, -0.430158, 0.268605,
		-0.368178, 0.894981, 0.251901,
		18.112085, 17.882420, 21.108856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.799458, 17.371109, 20.466717>,  <18.369810, 17.255934, 20.932526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.799458, 17.371109, 20.466717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.848812, 17.730526, 20.635191>,  <17.878424, 17.946177, 20.736277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.848812, 17.730526, 20.635191>,  <17.799458, 17.371109, 20.466717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.848812, 17.730526, 20.635191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129318, 0.435370, -0.890915,
		-0.983897, 0.055459, 0.169915,
		0.123385, 0.898542, 0.421188,
		17.885828, 18.000088, 20.761547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.320267, 17.709547, 20.033543>,  <17.799458, 17.371109, 20.466717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.320267, 17.709547, 20.033543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.551434, 17.988758, 20.202667>,  <17.690134, 18.156284, 20.304142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.551434, 17.988758, 20.202667>,  <17.320267, 17.709547, 20.033543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.551434, 17.988758, 20.202667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005647, 0.514657, -0.857378,
		-0.816077, 0.497880, 0.293487,
		0.577916, 0.698029, 0.422811,
		17.724808, 18.198166, 20.329510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.886581, 18.234196, 20.081558>,  <17.320267, 17.709547, 20.033543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.886581, 18.234196, 20.081558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.255413, 18.388153, 20.097692>,  <17.476711, 18.480528, 20.107372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.255413, 18.388153, 20.097692>,  <16.886581, 18.234196, 20.081558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.255413, 18.388153, 20.097692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230358, 0.629615, -0.741970,
		-0.310976, 0.674863, 0.669219,
		0.922079, 0.384895, 0.040335,
		17.532036, 18.503622, 20.109793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792549, 18.977974, 20.121792>,  <16.886581, 18.234196, 20.081558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792549, 18.977974, 20.121792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.174892, 18.946903, 20.008440>,  <17.404299, 18.928261, 19.940430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.174892, 18.946903, 20.008440>,  <16.792549, 18.977974, 20.121792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.174892, 18.946903, 20.008440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156034, 0.683017, -0.713541,
		0.248978, 0.726260, 0.640746,
		0.955857, -0.077678, -0.283378,
		17.461649, 18.923599, 19.923428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028997, 19.636721, 20.022266>,  <16.792549, 18.977974, 20.121792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028997, 19.636721, 20.022266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.223675, 19.366123, 19.801184>,  <17.340481, 19.203764, 19.668533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.223675, 19.366123, 19.801184>,  <17.028997, 19.636721, 20.022266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.223675, 19.366123, 19.801184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165973, 0.549567, -0.818797,
		0.857662, 0.490237, 0.155191,
		0.486692, -0.676494, -0.552709,
		17.369682, 19.163176, 19.635370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.306793, 20.022707, 19.459538>,  <17.028997, 19.636721, 20.022266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.306793, 20.022707, 19.459538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.355003, 19.652992, 19.314671>,  <17.383928, 19.431164, 19.227751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.355003, 19.652992, 19.314671>,  <17.306793, 20.022707, 19.459538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.355003, 19.652992, 19.314671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413399, 0.284956, -0.864813,
		0.902538, 0.253950, -0.347757,
		0.120524, -0.924289, -0.362166,
		17.391161, 19.375706, 19.206020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.658569, 20.099022, 18.818411>,  <17.306793, 20.022707, 19.459538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.658569, 20.099022, 18.818411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.478886, 19.743404, 18.783054>,  <17.371075, 19.530033, 18.761841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.478886, 19.743404, 18.783054>,  <17.658569, 20.099022, 18.818411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.478886, 19.743404, 18.783054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373851, 0.276906, -0.885188,
		0.811447, -0.364590, -0.456758,
		-0.449210, -0.889043, -0.088392,
		17.344122, 19.476692, 18.756536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.336624, 20.417805, 18.515694>,  <17.658569, 20.099022, 18.818411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.336624, 20.417805, 18.515694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.350689, 20.810471, 18.590628>,  <18.359129, 21.046070, 18.635588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.350689, 20.810471, 18.590628>,  <18.336624, 20.417805, 18.515694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.350689, 20.810471, 18.590628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329362, -0.188364, 0.925224,
		0.943549, 0.029167, -0.329947,
		0.035164, 0.981666, 0.187337,
		18.361238, 21.104971, 18.646830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.873169, 20.569124, 18.814096>,  <18.336624, 20.417805, 18.515694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.873169, 20.569124, 18.814096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.662346, 20.890602, 18.924576>,  <18.535852, 21.083488, 18.990864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.662346, 20.890602, 18.924576>,  <18.873169, 20.569124, 18.814096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.662346, 20.890602, 18.924576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251141, -0.163190, 0.954095,
		0.811873, 0.572229, -0.115830,
		-0.527058, 0.803693, 0.276200,
		18.504229, 21.131710, 19.007437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.374729, 21.138496, 19.232128>,  <18.873169, 20.569124, 18.814096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.374729, 21.138496, 19.232128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.988251, 21.183025, 19.325140>,  <18.756363, 21.209743, 19.380947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.988251, 21.183025, 19.325140>,  <19.374729, 21.138496, 19.232128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.988251, 21.183025, 19.325140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223392, -0.088671, 0.970687,
		0.128677, 0.989821, 0.060805,
		-0.966198, 0.111322, 0.232528,
		18.698391, 21.216421, 19.394899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.305756, 21.643740, 19.874422>,  <19.374729, 21.138496, 19.232128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.305756, 21.643740, 19.874422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.967522, 21.430977, 19.856237>,  <18.764582, 21.303320, 19.845325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.967522, 21.430977, 19.856237>,  <19.305756, 21.643740, 19.874422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.967522, 21.430977, 19.856237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186524, -0.374165, 0.908410,
		-0.500198, 0.759656, 0.415601,
		-0.845583, -0.531905, -0.045463,
		18.713846, 21.271406, 19.842598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.186489, 21.573952, 20.573704>,  <19.305756, 21.643740, 19.874422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.186489, 21.573952, 20.573704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.883144, 21.363537, 20.419731>,  <18.701138, 21.237288, 20.327347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.883144, 21.363537, 20.419731>,  <19.186489, 21.573952, 20.573704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.883144, 21.363537, 20.419731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154325, -0.428852, 0.890095,
		-0.633301, 0.734420, 0.244045,
		-0.758363, -0.526036, -0.384932,
		18.655636, 21.205727, 20.304251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586092, 21.765547, 20.929079>,  <19.186489, 21.573952, 20.573704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.586092, 21.765547, 20.929079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.528172, 21.405029, 20.765764>,  <18.493420, 21.188719, 20.667776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.528172, 21.405029, 20.765764>,  <18.586092, 21.765547, 20.929079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.528172, 21.405029, 20.765764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028290, -0.408696, 0.912232,
		-0.989056, 0.143644, 0.033682,
		-0.144803, -0.901296, -0.408287,
		18.484732, 21.134640, 20.643278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.900375, 21.545858, 21.185158>,  <18.586092, 21.765547, 20.929079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.900375, 21.545858, 21.185158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.085068, 21.204792, 21.087374>,  <18.195883, 21.000153, 21.028704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.085068, 21.204792, 21.087374>,  <17.900375, 21.545858, 21.185158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.085068, 21.204792, 21.087374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146982, -0.345338, 0.926897,
		-0.874757, -0.392047, -0.284781,
		0.461733, -0.852667, -0.244463,
		18.223587, 20.948992, 21.014034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370581, 20.998629, 21.419785>,  <17.900375, 21.545858, 21.185158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370581, 20.998629, 21.419785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.739922, 20.846550, 21.398355>,  <17.961527, 20.755302, 21.385498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.739922, 20.846550, 21.398355>,  <17.370581, 20.998629, 21.419785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.739922, 20.846550, 21.398355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134191, -0.450285, 0.882744,
		-0.359735, -0.807896, -0.466791,
		0.923355, -0.380193, -0.053571,
		18.016928, 20.732491, 21.382284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.339184, 20.273409, 21.703003>,  <17.370581, 20.998629, 21.419785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.339184, 20.273409, 21.703003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.728733, 20.363857, 21.711430>,  <17.962461, 20.418127, 21.716486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.728733, 20.363857, 21.711430>,  <17.339184, 20.273409, 21.703003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.728733, 20.363857, 21.711430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049919, -0.303628, 0.951482,
		0.221547, -0.925569, -0.306982,
		0.973871, 0.226123, 0.021065,
		18.020895, 20.431694, 21.717749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.738373, 19.600416, 21.977106>,  <17.339184, 20.273409, 21.703003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.738373, 19.600416, 21.977106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.981163, 19.913437, 22.032522>,  <18.126837, 20.101250, 22.065771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.981163, 19.913437, 22.032522>,  <17.738373, 19.600416, 21.977106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981163, 19.913437, 22.032522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078837, -0.232754, 0.969335,
		0.790801, -0.577439, -0.202970,
		0.606974, 0.782553, 0.138539,
		18.163256, 20.148203, 22.074083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.335369, 19.342833, 22.300276>,  <17.738373, 19.600416, 21.977106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.335369, 19.342833, 22.300276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.348980, 19.737476, 22.364084>,  <18.357145, 19.974262, 22.402370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.348980, 19.737476, 22.364084>,  <18.335369, 19.342833, 22.300276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.348980, 19.737476, 22.364084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183348, -0.163067, 0.969429,
		0.982459, -0.003736, -0.186441,
		0.034025, 0.986608, 0.159522,
		18.359188, 20.033459, 22.411942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.014751, 19.613598, 22.623024>,  <18.335369, 19.342833, 22.300276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.014751, 19.613598, 22.623024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.759804, 19.911076, 22.703697>,  <18.606834, 20.089561, 22.752102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.759804, 19.911076, 22.703697>,  <19.014751, 19.613598, 22.623024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.759804, 19.911076, 22.703697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474429, 0.172502, 0.863226,
		0.607186, 0.645880, -0.462779,
		-0.637371, 0.743695, 0.201683,
		18.568592, 20.134184, 22.764202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399389, 20.059052, 22.989126>,  <19.014751, 19.613598, 22.623024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399389, 20.059052, 22.989126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.020153, 20.151138, 23.076880>,  <18.792612, 20.206390, 23.129532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.020153, 20.151138, 23.076880>,  <19.399389, 20.059052, 22.989126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.020153, 20.151138, 23.076880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257493, 0.150915, 0.954422,
		0.186616, 0.961366, -0.202360,
		-0.948089, 0.230217, 0.219382,
		18.735727, 20.220203, 23.142694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.488434, 20.711853, 23.512888>,  <19.399389, 20.059052, 22.989126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.488434, 20.711853, 23.512888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.138412, 20.519054, 23.530603>,  <18.928400, 20.403376, 23.541233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.138412, 20.519054, 23.530603>,  <19.488434, 20.711853, 23.512888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.138412, 20.519054, 23.530603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008654, 0.075902, 0.997078,
		-0.483951, 0.872878, -0.062247,
		-0.875052, -0.481998, 0.044287,
		18.875896, 20.374454, 23.543890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.107676, 20.631279, 24.020683>,  <19.488434, 20.711853, 23.512888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.107676, 20.631279, 24.020683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.162766, 20.248066, 24.121248>,  <20.195820, 20.018139, 24.181587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.162766, 20.248066, 24.121248>,  <20.107676, 20.631279, 24.020683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.162766, 20.248066, 24.121248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692090, -0.088498, -0.716365,
		0.708550, 0.272661, 0.650856,
		0.137725, -0.958031, 0.251412,
		20.204082, 19.960657, 24.196672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.869724, 20.492008, 24.017025>,  <20.107676, 20.631279, 24.020683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.869724, 20.492008, 24.017025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.690727, 20.137585, 23.968609>,  <20.583330, 19.924931, 23.939560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.690727, 20.137585, 23.968609>,  <20.869724, 20.492008, 24.017025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.690727, 20.137585, 23.968609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591151, -0.191523, -0.783492,
		0.671038, -0.422159, 0.609499,
		-0.447492, -0.886059, -0.121041,
		20.556480, 19.871767, 23.932297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.371496, 20.039974, 23.719688>,  <20.869724, 20.492008, 24.017025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.371496, 20.039974, 23.719688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.059582, 19.802135, 23.641312>,  <20.872433, 19.659433, 23.594286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.059582, 19.802135, 23.641312>,  <21.371496, 20.039974, 23.719688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059582, 19.802135, 23.641312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473145, -0.354770, -0.806395,
		0.409965, -0.721522, 0.557974,
		-0.779784, -0.594596, -0.195942,
		20.825647, 19.623756, 23.582529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.699718, 19.323402, 23.596210>,  <21.371496, 20.039974, 23.719688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.699718, 19.323402, 23.596210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.338871, 19.354145, 23.426376>,  <21.122362, 19.372591, 23.324476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.338871, 19.354145, 23.426376>,  <21.699718, 19.323402, 23.596210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.338871, 19.354145, 23.426376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347640, -0.453411, -0.820710,
		-0.255589, -0.887982, 0.382313,
		-0.902120, 0.076857, -0.424584,
		21.068235, 19.377203, 23.299002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.514343, 18.693163, 23.290165>,  <21.699718, 19.323402, 23.596210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.514343, 18.693163, 23.290165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.307449, 18.975792, 23.096991>,  <21.183313, 19.145369, 22.981087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.307449, 18.975792, 23.096991>,  <21.514343, 18.693163, 23.290165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.307449, 18.975792, 23.096991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377704, -0.317900, -0.869643,
		-0.767990, -0.632216, -0.102446,
		-0.517235, 0.706571, -0.482934,
		21.152279, 19.187763, 22.952110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.546820, 18.476475, 22.607143>,  <21.514343, 18.693163, 23.290165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.546820, 18.476475, 22.607143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.389793, 18.841282, 22.559622>,  <21.295578, 19.060165, 22.531109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.389793, 18.841282, 22.559622>,  <21.546820, 18.476475, 22.607143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.389793, 18.841282, 22.559622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210078, -0.036842, -0.976990,
		-0.895410, -0.408491, -0.177132,
		-0.392566, 0.912018, -0.118803,
		21.272024, 19.114887, 22.523981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.036194, 18.439133, 22.068924>,  <21.546820, 18.476475, 22.607143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.036194, 18.439133, 22.068924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.187660, 18.807404, 22.106796>,  <21.278540, 19.028366, 22.129520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.187660, 18.807404, 22.106796>,  <21.036194, 18.439133, 22.068924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.187660, 18.807404, 22.106796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258731, -0.007078, -0.965924,
		-0.888634, 0.390261, -0.240888,
		0.378667, 0.920677, 0.094683,
		21.301260, 19.083607, 22.135201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.474913, 17.935104, 21.777470>,  <21.036194, 18.439133, 22.068924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.474913, 17.935104, 21.777470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.708412, 17.611153, 21.800554>,  <20.848511, 17.416780, 21.814405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.708412, 17.611153, 21.800554>,  <20.474913, 17.935104, 21.777470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708412, 17.611153, 21.800554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234301, -0.099969, 0.967010,
		-0.777394, -0.578012, -0.248113,
		0.583747, -0.809881, 0.057714,
		20.883537, 17.368189, 21.817869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.112253, 17.634632, 22.232573>,  <20.474913, 17.935104, 21.777470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.112253, 17.634632, 22.232573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.438496, 17.403725, 22.216841>,  <20.634241, 17.265181, 22.207401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.438496, 17.403725, 22.216841>,  <20.112253, 17.634632, 22.232573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.438496, 17.403725, 22.216841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159786, -0.290045, 0.943580,
		-0.556107, -0.763305, -0.328802,
		0.815606, -0.577269, -0.039330,
		20.683178, 17.230543, 22.205042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.932587, 16.850439, 22.500723>,  <20.112253, 17.634632, 22.232573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.932587, 16.850439, 22.500723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.318512, 16.952789, 22.524925>,  <20.550068, 17.014200, 22.539446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.318512, 16.952789, 22.524925>,  <19.932587, 16.850439, 22.500723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.318512, 16.952789, 22.524925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018493, -0.295580, 0.955139,
		0.262283, -0.920412, -0.289912,
		0.964814, 0.255878, 0.060504,
		20.607956, 17.029552, 22.543076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.214251, 16.298235, 22.941730>,  <19.932587, 16.850439, 22.500723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.214251, 16.298235, 22.941730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.473103, 16.602985, 22.930637>,  <20.628414, 16.785835, 22.923981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.473103, 16.602985, 22.930637>,  <20.214251, 16.298235, 22.941730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.473103, 16.602985, 22.930637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112120, -0.059125, 0.991934,
		0.754090, -0.645020, -0.123684,
		0.647130, 0.761875, -0.027734,
		20.667242, 16.831549, 22.922318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.688616, 16.069490, 23.309851>,  <20.214251, 16.298235, 22.941730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.688616, 16.069490, 23.309851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.740814, 16.465900, 23.298252>,  <20.772133, 16.703747, 23.291292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.740814, 16.465900, 23.298252>,  <20.688616, 16.069490, 23.309851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.740814, 16.465900, 23.298252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250865, -0.004708, 0.968011,
		0.959186, -0.133595, -0.249227,
		0.130494, 0.991025, -0.028998,
		20.779963, 16.763208, 23.289553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.277498, 16.108295, 23.621796>,  <20.688616, 16.069490, 23.309851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.277498, 16.108295, 23.621796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.129829, 16.479321, 23.644899>,  <21.041227, 16.701937, 23.658762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.129829, 16.479321, 23.644899>,  <21.277498, 16.108295, 23.621796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.129829, 16.479321, 23.644899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038966, -0.046645, 0.998151,
		0.928544, 0.370740, -0.018923,
		-0.369172, 0.927565, 0.057758,
		21.019077, 16.757589, 23.662228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.802746, 16.578917, 24.015074>,  <21.277498, 16.108295, 23.621796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.802746, 16.578917, 24.015074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.449478, 16.765465, 24.035114>,  <21.237518, 16.877394, 24.047138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.449478, 16.765465, 24.035114>,  <21.802746, 16.578917, 24.015074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.449478, 16.765465, 24.035114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154213, 0.187822, 0.970021,
		0.442981, 0.864419, -0.237799,
		-0.883168, 0.466373, 0.050103,
		21.184528, 16.905376, 24.050146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.844574, 17.272289, 24.322733>,  <21.802746, 16.578917, 24.015074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.844574, 17.272289, 24.322733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.460850, 17.169968, 24.370548>,  <21.230616, 17.108574, 24.399237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.460850, 17.169968, 24.370548>,  <21.844574, 17.272289, 24.322733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.460850, 17.169968, 24.370548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049837, 0.263315, 0.963422,
		-0.277923, 0.930177, -0.239852,
		-0.959310, -0.255803, 0.119539,
		21.173058, 17.093227, 24.406410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.484272, 17.908997, 24.716181>,  <21.844574, 17.272289, 24.322733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.484272, 17.908997, 24.716181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.313160, 17.551395, 24.769491>,  <21.210493, 17.336834, 24.801477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.313160, 17.551395, 24.769491>,  <21.484272, 17.908997, 24.716181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.313160, 17.551395, 24.769491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117883, 0.201369, 0.972396,
		-0.896162, 0.400263, -0.191530,
		-0.427782, -0.894002, 0.133274,
		21.184826, 17.283195, 24.809473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.589510, 18.105570, 9.371887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.260353, 17.881905, 9.412256>,  <19.062859, 17.747705, 9.436478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.260353, 17.881905, 9.412256>,  <19.589510, 18.105570, 9.371887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.260353, 17.881905, 9.412256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188228, -0.100677, 0.976952,
		-0.536116, 0.822921, 0.188097,
		-0.822891, -0.559164, 0.100922,
		19.013485, 17.714155, 9.442533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.161125, 18.369314, 9.798679>,  <19.589510, 18.105570, 9.371887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.161125, 18.369314, 9.798679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.046257, 17.987263, 9.827705>,  <18.977337, 17.758032, 9.845121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.046257, 17.987263, 9.827705>,  <19.161125, 18.369314, 9.798679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.046257, 17.987263, 9.827705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231952, 0.004163, 0.972718,
		-0.929372, 0.296166, 0.220348,
		-0.287169, -0.955127, 0.072565,
		18.960106, 17.700724, 9.849475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.779474, 18.232479, 10.483111>,  <19.161125, 18.369314, 9.798679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.779474, 18.232479, 10.483111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.893650, 17.863197, 10.380183>,  <18.962156, 17.641628, 10.318426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.893650, 17.863197, 10.380183>,  <18.779474, 18.232479, 10.483111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.893650, 17.863197, 10.380183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193942, -0.207295, 0.958861,
		-0.938569, -0.323602, 0.119878,
		0.285439, -0.923207, -0.257321,
		18.979282, 17.586235, 10.302987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.519764, 17.836006, 10.944288>,  <18.779474, 18.232479, 10.483111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.519764, 17.836006, 10.944288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.833500, 17.632122, 10.802864>,  <19.021742, 17.509790, 10.718010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.833500, 17.632122, 10.802864>,  <18.519764, 17.836006, 10.944288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.833500, 17.632122, 10.802864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216320, -0.309438, 0.925988,
		-0.581393, -0.802771, -0.132443,
		0.784339, -0.509713, -0.353561,
		19.068802, 17.479208, 10.696796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.557056, 17.255705, 11.439095>,  <18.519764, 17.836006, 10.944288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.557056, 17.255705, 11.439095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.907024, 17.261036, 11.245461>,  <19.117004, 17.264235, 11.129280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.907024, 17.261036, 11.245461>,  <18.557056, 17.255705, 11.439095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.907024, 17.261036, 11.245461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482247, -0.115228, 0.868424,
		-0.044200, -0.993249, -0.107246,
		0.874920, 0.013335, -0.484085,
		19.169500, 17.265036, 11.100235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.879837, 16.692062, 11.693192>,  <18.557056, 17.255705, 11.439095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.879837, 16.692062, 11.693192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.178909, 16.920269, 11.557260>,  <19.358353, 17.057192, 11.475700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.178909, 16.920269, 11.557260>,  <18.879837, 16.692062, 11.693192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.178909, 16.920269, 11.557260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588351, -0.331831, 0.737382,
		0.307921, -0.751266, -0.583767,
		0.747681, 0.570516, -0.339830,
		19.403214, 17.091423, 11.455311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346878, 16.190596, 11.647036>,  <18.879837, 16.692062, 11.693192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346878, 16.190596, 11.647036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.570385, 16.522114, 11.635184>,  <19.704489, 16.721025, 11.628074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.570385, 16.522114, 11.635184>,  <19.346878, 16.190596, 11.647036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.570385, 16.522114, 11.635184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531871, -0.330713, 0.779579,
		0.636313, -0.451360, -0.625603,
		0.558766, 0.828796, -0.029628,
		19.738014, 16.770752, 11.626296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.033413, 16.012167, 11.574105>,  <19.346878, 16.190596, 11.647036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.033413, 16.012167, 11.574105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.027145, 16.370411, 11.751929>,  <20.023384, 16.585358, 11.858624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.027145, 16.370411, 11.751929>,  <20.033413, 16.012167, 11.574105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.027145, 16.370411, 11.751929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731165, -0.293010, 0.616071,
		0.682021, 0.334702, -0.650248,
		-0.015670, 0.895611, 0.444561,
		20.022444, 16.639095, 11.885298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.696268, 16.150143, 11.864296>,  <20.033413, 16.012167, 11.574105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.696268, 16.150143, 11.864296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.458839, 16.403744, 12.062575>,  <20.316383, 16.555904, 12.181542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.458839, 16.403744, 12.062575>,  <20.696268, 16.150143, 11.864296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.458839, 16.403744, 12.062575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575070, -0.096754, 0.812363,
		0.563000, 0.767255, -0.307165,
		-0.593570, 0.634002, 0.495697,
		20.280767, 16.593945, 12.211285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.074772, 16.685415, 12.127228>,  <20.696268, 16.150143, 11.864296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.074772, 16.685415, 12.127228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.743702, 16.687107, 12.351705>,  <20.545059, 16.688122, 12.486391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.743702, 16.687107, 12.351705>,  <21.074772, 16.685415, 12.127228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.743702, 16.687107, 12.351705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553253, 0.173923, 0.814655,
		-0.094160, 0.984750, -0.146290,
		-0.827675, 0.004227, 0.561192,
		20.495399, 16.688375, 12.520062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.294916, 17.199221, 12.674520>,  <21.074772, 16.685415, 12.127228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.294916, 17.199221, 12.674520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.957283, 17.038319, 12.816345>,  <20.754704, 16.941778, 12.901441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.957283, 17.038319, 12.816345>,  <21.294916, 17.199221, 12.674520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.957283, 17.038319, 12.816345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333295, 0.124398, 0.934580,
		-0.420047, 0.907037, 0.029068,
		-0.844082, -0.402255, 0.354564,
		20.704058, 16.917643, 12.922714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.200624, 17.542257, 13.253675>,  <21.294916, 17.199221, 12.674520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.200624, 17.542257, 13.253675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.969769, 17.218235, 13.295089>,  <20.831255, 17.023821, 13.319937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.969769, 17.218235, 13.295089>,  <21.200624, 17.542257, 13.253675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.969769, 17.218235, 13.295089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199096, -0.016616, 0.979839,
		-0.792004, 0.586118, 0.170868,
		-0.577141, -0.810055, 0.103534,
		20.796627, 16.975218, 13.326149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251451, 18.316269, 13.244957>,  <21.200624, 17.542257, 13.253675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.251451, 18.316269, 13.244957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.562981, 18.554222, 13.324503>,  <21.749899, 18.696993, 13.372231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.562981, 18.554222, 13.324503>,  <21.251451, 18.316269, 13.244957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.562981, 18.554222, 13.324503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024056, 0.288484, -0.957183,
		-0.626780, 0.750262, 0.210368,
		0.778825, 0.594882, 0.198864,
		21.796629, 18.732687, 13.384162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.001127, 19.011379, 13.044322>,  <21.251451, 18.316269, 13.244957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.001127, 19.011379, 13.044322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.401119, 19.011135, 13.046757>,  <21.641115, 19.010988, 13.048218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.401119, 19.011135, 13.046757>,  <21.001127, 19.011379, 13.044322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.401119, 19.011135, 13.046757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006003, 0.289190, -0.957253,
		-0.001177, 0.957272, 0.289188,
		0.999981, -0.000609, 0.006087,
		21.701113, 19.010952, 13.048583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.152554, 19.570208, 12.645186>,  <21.001127, 19.011379, 13.044322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.152554, 19.570208, 12.645186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.481522, 19.342861, 12.654873>,  <21.678902, 19.206453, 12.660685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.481522, 19.342861, 12.654873>,  <21.152554, 19.570208, 12.645186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.481522, 19.342861, 12.654873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132935, 0.150619, -0.979613,
		0.553131, 0.808872, 0.199428,
		0.822420, -0.568365, 0.024216,
		21.728247, 19.172352, 12.662138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.533970, 19.912386, 12.234689>,  <21.152554, 19.570208, 12.645186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.533970, 19.912386, 12.234689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.704155, 19.550583, 12.246306>,  <21.806267, 19.333500, 12.253277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.704155, 19.550583, 12.246306>,  <21.533970, 19.912386, 12.234689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.704155, 19.550583, 12.246306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106612, 0.018227, -0.994133,
		0.898673, 0.426065, 0.104187,
		0.425465, -0.904509, 0.029044,
		21.831795, 19.279230, 12.255019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.114115, 20.003691, 11.808015>,  <21.533970, 19.912386, 12.234689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.114115, 20.003691, 11.808015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.037498, 19.611443, 11.824484>,  <21.991528, 19.376093, 11.834366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.037498, 19.611443, 11.824484>,  <22.114115, 20.003691, 11.808015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.037498, 19.611443, 11.824484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096958, -0.060650, -0.993439,
		0.976684, -0.186293, 0.106696,
		-0.191542, -0.980621, 0.041173,
		21.980036, 19.317257, 11.836836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.464075, 19.712088, 11.246972>,  <22.114115, 20.003691, 11.808015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.464075, 19.712088, 11.246972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.205402, 19.423279, 11.345347>,  <22.050198, 19.249994, 11.404373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.205402, 19.423279, 11.345347>,  <22.464075, 19.712088, 11.246972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.205402, 19.423279, 11.345347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231930, -0.121034, -0.965173,
		0.726643, -0.681202, -0.089188,
		-0.646683, -0.722022, 0.245939,
		22.011398, 19.206673, 11.419129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.592609, 19.152296, 10.795459>,  <22.464075, 19.712088, 11.246972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.592609, 19.152296, 10.795459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.209518, 19.112514, 10.903436>,  <21.979664, 19.088646, 10.968222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.209518, 19.112514, 10.903436>,  <22.592609, 19.152296, 10.795459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.209518, 19.112514, 10.903436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238458, -0.250467, -0.938299,
		0.160928, -0.963003, 0.216164,
		-0.957727, -0.099453, 0.269943,
		21.922201, 19.082678, 10.984419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.366211, 18.551769, 10.363514>,  <22.592609, 19.152296, 10.795459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.366211, 18.551769, 10.363514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.040001, 18.762959, 10.458314>,  <21.844275, 18.889671, 10.515194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.040001, 18.762959, 10.458314>,  <22.366211, 18.551769, 10.363514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.040001, 18.762959, 10.458314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293870, -0.025003, -0.955518,
		-0.498561, -0.848894, 0.175545,
		-0.815523, 0.527972, 0.236999,
		21.795343, 18.921350, 10.529414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.043320, 18.553936, 9.704015>,  <22.366211, 18.551769, 10.363514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.043320, 18.553936, 9.704015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.795895, 18.790554, 9.910880>,  <21.647440, 18.932526, 10.034999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.795895, 18.790554, 9.910880>,  <22.043320, 18.553936, 9.704015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.795895, 18.790554, 9.910880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505383, 0.204448, -0.838325,
		-0.601640, -0.779920, 0.172493,
		-0.618561, 0.591545, 0.517162,
		21.610327, 18.968018, 10.066029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.279482, 18.337820, 9.539720>,  <22.043320, 18.553936, 9.704015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.279482, 18.337820, 9.539720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.296947, 18.717224, 9.665212>,  <21.307426, 18.944866, 9.740507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.296947, 18.717224, 9.665212>,  <21.279482, 18.337820, 9.539720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.296947, 18.717224, 9.665212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539938, 0.286621, -0.791401,
		-0.840571, -0.134837, 0.524651,
		0.043666, 0.948508, 0.313729,
		21.310047, 19.001776, 9.759331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.505819, 18.606255, 9.638776>,  <21.279482, 18.337820, 9.539720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.505819, 18.606255, 9.638776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.746433, 18.924458, 9.609574>,  <20.890800, 19.115379, 9.592053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.746433, 18.924458, 9.609574>,  <20.505819, 18.606255, 9.638776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.746433, 18.924458, 9.609574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522469, 0.322641, -0.789259,
		-0.604305, 0.512908, 0.609706,
		0.601533, 0.795505, -0.073005,
		20.926893, 19.163109, 9.587673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.080893, 19.126505, 9.417832>,  <20.505819, 18.606255, 9.638776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.080893, 19.126505, 9.417832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.456577, 19.232494, 9.330495>,  <20.681988, 19.296087, 9.278092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.456577, 19.232494, 9.330495>,  <20.080893, 19.126505, 9.417832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.456577, 19.232494, 9.330495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307909, 0.368657, -0.877088,
		-0.151909, 0.891000, 0.427834,
		0.939210, 0.264972, -0.218345,
		20.738340, 19.311985, 9.264992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.960543, 19.701303, 8.947583>,  <20.080893, 19.126505, 9.417832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.960543, 19.701303, 8.947583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.342518, 19.597176, 8.890558>,  <20.571703, 19.534698, 8.856343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.342518, 19.597176, 8.890558>,  <19.960543, 19.701303, 8.947583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.342518, 19.597176, 8.890558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035818, 0.375742, -0.926032,
		0.294631, 0.889411, 0.349487,
		0.954940, -0.260320, -0.142563,
		20.629000, 19.519079, 8.847790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.273037, 20.306936, 8.660991>,  <19.960543, 19.701303, 8.947583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.273037, 20.306936, 8.660991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.499935, 19.988449, 8.576826>,  <20.636074, 19.797358, 8.526327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.499935, 19.988449, 8.576826>,  <20.273037, 20.306936, 8.660991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.499935, 19.988449, 8.576826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130867, 0.339393, -0.931497,
		0.813086, 0.500849, 0.296717,
		0.567243, -0.796218, -0.210411,
		20.670109, 19.749584, 8.513703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.654657, 20.216082, 8.311882>,  <20.273037, 20.306936, 8.660991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.654657, 20.216082, 8.311882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.349213, 20.332024, 8.081099>,  <19.165947, 20.401588, 7.942628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.349213, 20.332024, 8.081099>,  <19.654657, 20.216082, 8.311882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.349213, 20.332024, 8.081099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267174, 0.671638, 0.691029,
		0.587807, 0.681826, -0.435428,
		-0.763611, 0.289857, -0.576959,
		19.120129, 20.418982, 7.908011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.651760, 20.989920, 8.072498>,  <19.654657, 20.216082, 8.311882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.651760, 20.989920, 8.072498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.299004, 20.809921, 8.128743>,  <19.087349, 20.701921, 8.162490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.299004, 20.809921, 8.128743>,  <19.651760, 20.989920, 8.072498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.299004, 20.809921, 8.128743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178337, 0.594501, 0.784069,
		-0.436423, 0.666387, -0.604536,
		-0.881891, -0.449997, 0.140613,
		19.034437, 20.674923, 8.170927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.370914, 21.600443, 8.236154>,  <19.651760, 20.989920, 8.072498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.370914, 21.600443, 8.236154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.182476, 21.266930, 8.351307>,  <19.069414, 21.066822, 8.420399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.182476, 21.266930, 8.351307>,  <19.370914, 21.600443, 8.236154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.182476, 21.266930, 8.351307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148784, 0.396803, 0.905765,
		-0.869444, 0.383869, -0.310985,
		-0.471095, -0.833782, 0.287884,
		19.041147, 21.016794, 8.437673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.821976, 21.849970, 8.578316>,  <19.370914, 21.600443, 8.236154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.821976, 21.849970, 8.578316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.834728, 21.471138, 8.706081>,  <18.842381, 21.243839, 8.782741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.834728, 21.471138, 8.706081>,  <18.821976, 21.849970, 8.578316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.834728, 21.471138, 8.706081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128709, 0.313026, 0.940983,
		-0.991170, -0.071113, -0.111918,
		0.031883, -0.947079, 0.319414,
		18.844294, 21.187014, 8.801906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.171228, 21.729324, 9.074425>,  <18.821976, 21.849970, 8.578316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.171228, 21.729324, 9.074425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.458591, 21.465565, 9.163042>,  <18.631010, 21.307308, 9.216212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.458591, 21.465565, 9.163042>,  <18.171228, 21.729324, 9.074425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.458591, 21.465565, 9.163042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104483, 0.212583, 0.971541,
		-0.687732, -0.721109, 0.083825,
		0.718407, -0.659401, 0.221544,
		18.674114, 21.267744, 9.229506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.923792, 21.380812, 9.594084>,  <18.171228, 21.729324, 9.074425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.923792, 21.380812, 9.594084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.315136, 21.304314, 9.625672>,  <18.549942, 21.258415, 9.644626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.315136, 21.304314, 9.625672>,  <17.923792, 21.380812, 9.594084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.315136, 21.304314, 9.625672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057112, 0.117236, 0.991461,
		-0.198870, -0.974516, 0.103777,
		0.978361, -0.191245, 0.078971,
		18.608644, 21.246941, 9.649364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.981972, 20.719751, 9.923518>,  <17.923792, 21.380812, 9.594084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.981972, 20.719751, 9.923518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.325768, 20.911045, 9.995708>,  <18.532045, 21.025822, 10.039021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.325768, 20.911045, 9.995708>,  <17.981972, 20.719751, 9.923518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.325768, 20.911045, 9.995708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020352, -0.320772, 0.946938,
		0.510749, -0.817556, -0.265967,
		0.859489, 0.478234, 0.180473,
		18.583614, 21.054516, 10.049850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.364191, 20.282690, 10.351606>,  <17.981972, 20.719751, 9.923518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.364191, 20.282690, 10.351606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.555363, 20.631447, 10.394283>,  <18.670067, 20.840702, 10.419889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.555363, 20.631447, 10.394283>,  <18.364191, 20.282690, 10.351606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.555363, 20.631447, 10.394283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050370, -0.148465, 0.987634,
		0.876952, -0.466647, -0.114873,
		0.477931, 0.871894, 0.106691,
		18.698742, 20.893015, 10.426291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.888071, 20.180010, 10.857776>,  <18.364191, 20.282690, 10.351606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.888071, 20.180010, 10.857776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.814758, 20.572750, 10.838278>,  <18.770771, 20.808393, 10.826579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.814758, 20.572750, 10.838278>,  <18.888071, 20.180010, 10.857776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.814758, 20.572750, 10.838278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075766, 0.063545, 0.995099,
		0.980136, 0.178692, -0.086037,
		-0.183284, 0.981851, -0.048744,
		18.759773, 20.867306, 10.823655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399355, 20.434887, 11.263182>,  <18.888071, 20.180010, 10.857776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399355, 20.434887, 11.263182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.122364, 20.723309, 11.253700>,  <18.956169, 20.896360, 11.248012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.122364, 20.723309, 11.253700>,  <19.399355, 20.434887, 11.263182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.122364, 20.723309, 11.253700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075931, 0.105517, 0.991514,
		0.717434, 0.684799, -0.127818,
		-0.692476, 0.721052, -0.023704,
		18.914621, 20.939625, 11.246589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.514505, 20.926992, 11.809764>,  <19.399355, 20.434887, 11.263182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.514505, 20.926992, 11.809764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.137115, 21.036694, 11.735314>,  <18.910683, 21.102514, 11.690644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.137115, 21.036694, 11.735314>,  <19.514505, 20.926992, 11.809764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.137115, 21.036694, 11.735314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115493, 0.254332, 0.960196,
		0.310676, 0.927416, -0.208281,
		-0.943473, 0.274255, -0.186125,
		18.854073, 21.118971, 11.679477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.359798, 21.586657, 12.158649>,  <19.514505, 20.926992, 11.809764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.359798, 21.586657, 12.158649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.022484, 21.379807, 12.100067>,  <18.820095, 21.255695, 12.064918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.022484, 21.379807, 12.100067>,  <19.359798, 21.586657, 12.158649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.022484, 21.379807, 12.100067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241244, 0.120688, 0.962931,
		-0.480281, 0.847358, -0.226528,
		-0.843286, -0.517126, -0.146456,
		18.769499, 21.224669, 12.056130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.848925, 22.032280, 12.372270>,  <19.359798, 21.586657, 12.158649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.848925, 22.032280, 12.372270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.716175, 21.654957, 12.370126>,  <18.636526, 21.428562, 12.368839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.716175, 21.654957, 12.370126>,  <18.848925, 22.032280, 12.372270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.716175, 21.654957, 12.370126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243367, 0.080129, 0.966619,
		-0.911391, 0.322099, -0.256163,
		-0.331873, -0.943309, -0.005360,
		18.616613, 21.371964, 12.368518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.307821, 22.113468, 12.861067>,  <18.848925, 22.032280, 12.372270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.307821, 22.113468, 12.861067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.404560, 21.726398, 12.832458>,  <18.462603, 21.494156, 12.815292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.404560, 21.726398, 12.832458>,  <18.307821, 22.113468, 12.861067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.404560, 21.726398, 12.832458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209553, -0.124059, 0.969895,
		-0.947417, -0.219578, -0.232782,
		0.241846, -0.967675, -0.071522,
		18.477114, 21.436096, 12.811001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.675341, 21.712549, 13.141936>,  <18.307821, 22.113468, 12.861067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.675341, 21.712549, 13.141936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.004753, 21.486153, 13.157166>,  <18.202400, 21.350315, 13.166304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.004753, 21.486153, 13.157166>,  <17.675341, 21.712549, 13.141936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.004753, 21.486153, 13.157166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234997, -0.279301, 0.931003,
		-0.516305, -0.775658, -0.363020,
		0.823532, -0.565991, 0.038073,
		18.251812, 21.316355, 13.168588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.464991, 21.202991, 13.652008>,  <17.675341, 21.712549, 13.141936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.464991, 21.202991, 13.652008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.857994, 21.143826, 13.606753>,  <18.093796, 21.108326, 13.579600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.857994, 21.143826, 13.606753>,  <17.464991, 21.202991, 13.652008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.857994, 21.143826, 13.606753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082168, -0.200853, 0.976169,
		-0.167107, -0.968391, -0.185187,
		0.982509, -0.147909, -0.113135,
		18.152746, 21.099451, 13.572812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.596951, 20.549034, 13.991241>,  <17.464991, 21.202991, 13.652008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.596951, 20.549034, 13.991241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.921936, 20.781780, 13.976630>,  <18.116928, 20.921427, 13.967864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.921936, 20.781780, 13.976630>,  <17.596951, 20.549034, 13.991241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.921936, 20.781780, 13.976630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201423, -0.221354, 0.954165,
		0.547110, -0.782583, -0.297043,
		0.812465, 0.581864, -0.036525,
		18.165676, 20.956339, 13.965672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.151480, 20.161600, 14.498552>,  <17.596951, 20.549034, 13.991241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.151480, 20.161600, 14.498552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.289963, 20.528713, 14.420766>,  <18.373053, 20.748981, 14.374094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.289963, 20.528713, 14.420766>,  <18.151480, 20.161600, 14.498552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.289963, 20.528713, 14.420766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278204, 0.097526, 0.955558,
		0.895959, -0.384924, -0.221566,
		0.346209, 0.917781, -0.194466,
		18.393826, 20.804049, 14.362426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817148, 20.268091, 14.850789>,  <18.151480, 20.161600, 14.498552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.817148, 20.268091, 14.850789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.678410, 20.639469, 14.797589>,  <18.595167, 20.862295, 14.765670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.678410, 20.639469, 14.797589>,  <18.817148, 20.268091, 14.850789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.678410, 20.639469, 14.797589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175974, 0.203701, 0.963088,
		0.921266, 0.310639, -0.234035,
		-0.346845, 0.928445, -0.132998,
		18.574356, 20.918003, 14.757689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266912, 20.617706, 15.147241>,  <18.817148, 20.268091, 14.850789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.266912, 20.617706, 15.147241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.948902, 20.858704, 15.119140>,  <18.758097, 21.003302, 15.102279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.948902, 20.858704, 15.119140>,  <19.266912, 20.617706, 15.147241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.948902, 20.858704, 15.119140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062340, 0.196362, 0.978548,
		0.603364, 0.773591, -0.193672,
		-0.795025, 0.602494, -0.070252,
		18.710394, 21.039452, 15.098064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.444201, 21.245354, 15.596478>,  <19.266912, 20.617706, 15.147241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.444201, 21.245354, 15.596478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.049015, 21.288765, 15.552382>,  <18.811905, 21.314812, 15.525925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.049015, 21.288765, 15.552382>,  <19.444201, 21.245354, 15.596478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.049015, 21.288765, 15.552382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055725, 0.415101, 0.908067,
		0.144313, 0.903279, -0.404056,
		-0.987962, 0.108530, -0.110240,
		18.752626, 21.321323, 15.519311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.289913, 21.967760, 15.801353>,  <19.444201, 21.245354, 15.596478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.289913, 21.967760, 15.801353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.931480, 21.792130, 15.827439>,  <18.716421, 21.686752, 15.843091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.931480, 21.792130, 15.827439>,  <19.289913, 21.967760, 15.801353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.931480, 21.792130, 15.827439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051865, 0.249476, 0.966991,
		-0.440851, 0.863120, -0.246323,
		-0.896081, -0.439075, 0.065216,
		18.662657, 21.660408, 15.847004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894167, 22.394314, 16.201439>,  <19.289913, 21.967760, 15.801353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894167, 22.394314, 16.201439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.699867, 22.044971, 16.215864>,  <18.583288, 21.835367, 16.224520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.699867, 22.044971, 16.215864>,  <18.894167, 22.394314, 16.201439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.699867, 22.044971, 16.215864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113533, 0.103945, 0.988082,
		-0.866694, 0.475865, -0.149645,
		-0.485749, -0.873354, 0.036063,
		18.554142, 21.782965, 16.226683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.395288, 22.580858, 16.681522>,  <18.894167, 22.394314, 16.201439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.395288, 22.580858, 16.681522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.369785, 22.181690, 16.685335>,  <18.354483, 21.942190, 16.687624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.369785, 22.181690, 16.685335>,  <18.395288, 22.580858, 16.681522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369785, 22.181690, 16.685335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343019, 0.030885, 0.938821,
		-0.937162, 0.056587, -0.344274,
		-0.063758, -0.997920, 0.009534,
		18.350658, 21.882315, 16.688196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.746510, 22.377077, 17.020237>,  <18.395288, 22.580858, 16.681522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.746510, 22.377077, 17.020237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.002697, 22.070412, 17.038225>,  <18.156410, 21.886412, 17.049019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.002697, 22.070412, 17.038225>,  <17.746510, 22.377077, 17.020237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.002697, 22.070412, 17.038225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180762, -0.093577, 0.979065,
		-0.746406, -0.635191, -0.198518,
		0.640470, -0.766665, 0.044972,
		18.194838, 21.840412, 17.051718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.419720, 21.872343, 17.403738>,  <17.746510, 22.377077, 17.020237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.419720, 21.872343, 17.403738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.813267, 21.802391, 17.418837>,  <18.049395, 21.760420, 17.427895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.813267, 21.802391, 17.418837>,  <17.419720, 21.872343, 17.403738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.813267, 21.802391, 17.418837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069522, -0.179322, 0.981331,
		-0.164853, -0.968121, -0.188587,
		0.983865, -0.174887, 0.037744,
		18.108427, 21.749928, 17.430161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.424156, 21.239420, 17.780029>,  <17.419720, 21.872343, 17.403738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.424156, 21.239420, 17.780029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.784721, 21.402027, 17.839624>,  <18.001060, 21.499592, 17.875381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.784721, 21.402027, 17.839624>,  <17.424156, 21.239420, 17.780029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.784721, 21.402027, 17.839624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014199, -0.316177, 0.948594,
		0.432727, -0.857190, -0.279234,
		0.901413, 0.406518, 0.148990,
		18.055145, 21.523983, 17.884321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.755058, 20.769245, 18.140949>,  <17.424156, 21.239420, 17.780029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.755058, 20.769245, 18.140949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.999699, 21.078911, 18.206203>,  <18.146482, 21.264709, 18.245356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.999699, 21.078911, 18.206203>,  <17.755058, 20.769245, 18.140949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.999699, 21.078911, 18.206203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056463, -0.162960, 0.985016,
		0.789149, -0.611647, -0.055955,
		0.611601, 0.774165, 0.163135,
		18.183178, 21.311161, 18.255144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.717186, 19.977171, 18.080564>,  <17.755058, 20.769245, 18.140949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.717186, 19.977171, 18.080564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.449554, 19.703815, 18.197395>,  <17.288975, 19.539803, 18.267494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.449554, 19.703815, 18.197395>,  <17.717186, 19.977171, 18.080564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.449554, 19.703815, 18.197395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557945, 0.202274, -0.804849,
		0.490945, -0.701473, -0.516632,
		-0.669081, -0.683389, 0.292078,
		17.248831, 19.498798, 18.285019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.649523, 19.553650, 17.466007>,  <17.717186, 19.977171, 18.080564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.649523, 19.553650, 17.466007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.338314, 19.540558, 17.716961>,  <17.151588, 19.532703, 17.867533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.338314, 19.540558, 17.716961>,  <17.649523, 19.553650, 17.466007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.338314, 19.540558, 17.716961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615208, 0.242034, -0.750293,
		-0.127294, -0.969716, -0.208441,
		-0.778020, -0.032727, 0.627386,
		17.104908, 19.530739, 17.905176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.189547, 19.010000, 17.166027>,  <17.649523, 19.553650, 17.466007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.189547, 19.010000, 17.166027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.026962, 19.287537, 17.403809>,  <16.929413, 19.454060, 17.546476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.026962, 19.287537, 17.403809>,  <17.189547, 19.010000, 17.166027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.026962, 19.287537, 17.403809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647884, 0.239882, -0.722982,
		-0.644234, -0.678999, 0.352027,
		-0.406459, 0.693842, 0.594453,
		16.905025, 19.495689, 17.582144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.499048, 18.809278, 17.251280>,  <17.189547, 19.010000, 17.166027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.499048, 18.809278, 17.251280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.505096, 19.198242, 17.344395>,  <16.508724, 19.431620, 17.400265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.505096, 19.198242, 17.344395>,  <16.499048, 18.809278, 17.251280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.505096, 19.198242, 17.344395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708220, 0.174762, -0.684019,
		-0.705830, -0.154524, 0.691322,
		0.015120, 0.972410, 0.232789,
		16.509632, 19.489965, 17.414232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.805980, 18.942219, 17.197191>,  <16.499048, 18.809278, 17.251280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.805980, 18.942219, 17.197191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.001602, 19.290119, 17.170784>,  <16.118975, 19.498859, 17.154940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.001602, 19.290119, 17.170784>,  <15.805980, 18.942219, 17.197191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.001602, 19.290119, 17.170784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619850, 0.293291, -0.727850,
		-0.613686, 0.396881, 0.682551,
		0.489056, 0.869750, -0.066018,
		16.148319, 19.551044, 17.150978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
