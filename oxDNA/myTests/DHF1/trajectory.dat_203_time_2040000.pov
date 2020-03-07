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
	<0.827417, 0.452126, 0.364735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.994995, 0.461105, 0.727829>,  <1.095542, 0.466493, 0.945685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.994995, 0.461105, 0.727829>,  <0.827417, 0.452126, 0.364735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.994995, 0.461105, 0.727829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212039, 0.974473, 0.073765,
		-0.882907, -0.223379, 0.413010,
		0.418944, 0.022447, 0.907734,
		1.120678, 0.467840, 1.000149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.336684, 0.649199, 0.885102>,  <0.827417, 0.452126, 0.364735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.336684, 0.649199, 0.885102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.696091, 0.763443, 1.018425>,  <0.911735, 0.831990, 1.098418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.696091, 0.763443, 1.018425>,  <0.336684, 0.649199, 0.885102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.696091, 0.763443, 1.018425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367778, 0.904361, 0.216497,
		-0.239595, -0.317109, 0.917625,
		0.898517, 0.285611, 0.333306,
		0.965646, 0.849126, 1.118417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.218038, 0.972399, 1.526367>,  <0.336684, 0.649199, 0.885102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.218038, 0.972399, 1.526367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.560379, 1.136475, 1.400345>,  <0.765784, 1.234920, 1.324732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.560379, 1.136475, 1.400345>,  <0.218038, 0.972399, 1.526367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.560379, 1.136475, 1.400345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481696, 0.853980, -0.196691,
		0.188370, 0.320099, 0.928468,
		0.855854, 0.410189, -0.315055,
		0.817135, 1.259531, 1.305828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.371364, 1.667983, 1.889672>,  <0.218038, 0.972399, 1.526367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.371364, 1.667983, 1.889672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.524406, 1.627090, 1.522377>,  <0.616232, 1.602555, 1.302000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.524406, 1.627090, 1.522377>,  <0.371364, 1.667983, 1.889672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.524406, 1.627090, 1.522377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600411, 0.727876, -0.331214,
		0.702224, 0.678045, 0.217110,
		0.382607, -0.102231, -0.918238,
		0.639189, 1.596421, 1.246906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.738541, 2.241990, 1.621551>,  <0.371364, 1.667983, 1.889672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.738541, 2.241990, 1.621551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.512276, 2.052338, 1.351669>,  <0.376517, 1.938546, 1.189740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.512276, 2.052338, 1.351669>,  <0.738541, 2.241990, 1.621551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.512276, 2.052338, 1.351669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504487, 0.846180, -0.171675,
		0.652317, 0.243269, -0.717846,
		-0.565664, -0.474131, -0.674704,
		0.342577, 1.910099, 1.149258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.791566, 2.614729, 0.959328>,  <0.738541, 2.241990, 1.621551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.791566, 2.614729, 0.959328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.452103, 2.403152, 0.959084>,  <0.248425, 2.276207, 0.958937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.452103, 2.403152, 0.959084>,  <0.791566, 2.614729, 0.959328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.452103, 2.403152, 0.959084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493915, 0.792875, -0.356928,
		0.189278, -0.302608, -0.934132,
		-0.848659, -0.528941, -0.000611,
		0.197505, 2.244470, 0.958900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.453712, 2.549431, 0.285989>,  <0.791566, 2.614729, 0.959328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.453712, 2.549431, 0.285989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.173698, 2.531357, 0.571060>,  <0.005690, 2.520512, 0.742103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.173698, 2.531357, 0.571060>,  <0.453712, 2.549431, 0.285989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.173698, 2.531357, 0.571060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328542, 0.906481, -0.265240,
		-0.634044, -0.419822, -0.649413,
		-0.700034, -0.045186, 0.712678,
		-0.036312, 2.517801, 0.784864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.154732, 2.792793, -0.072165>,  <0.453712, 2.549431, 0.285989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.154732, 2.792793, -0.072165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.195290, 2.840851, 0.322861>,  <-0.219624, 2.869686, 0.559876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.195290, 2.840851, 0.322861>,  <-0.154732, 2.792793, -0.072165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.195290, 2.840851, 0.322861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442882, 0.883438, -0.152949,
		-0.890828, -0.452883, -0.036365,
		-0.101394, 0.120146, 0.987565,
		-0.225708, 2.876894, 0.619130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.464451, 3.805267, 0.103268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.767639, 4.059784, 0.045837>,  <4.949552, 4.212494, 0.011379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.767639, 4.059784, 0.045837>,  <4.464451, 3.805267, 0.103268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.767639, 4.059784, 0.045837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588329, 0.761935, 0.270784,
		0.281693, -0.120776, 0.951873,
		0.757969, 0.636293, -0.143576,
		4.995030, 4.250672, 0.002765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.645843, 4.173110, 0.777839>,  <4.464451, 3.805267, 0.103268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.645843, 4.173110, 0.777839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.773010, 4.388321, 0.465569>,  <4.849311, 4.517447, 0.278206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.773010, 4.388321, 0.465569>,  <4.645843, 4.173110, 0.777839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.773010, 4.388321, 0.465569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378148, 0.827025, 0.415974,
		0.869443, 0.162965, 0.466380,
		0.317919, 0.538026, -0.780676,
		4.868386, 4.549729, 0.231366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.949758, 3.620617, 0.654404>,  <4.645843, 4.173110, 0.777839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.949758, 3.620617, 0.654404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.560673, 3.558060, 0.585854>,  <4.327221, 3.520525, 0.544724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.560673, 3.558060, 0.585854>,  <4.949758, 3.620617, 0.654404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.560673, 3.558060, 0.585854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113073, -0.964553, 0.238436,
		-0.202590, 0.212552, 0.955918,
		-0.972714, -0.156393, -0.171375,
		4.268858, 3.511142, 0.534441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.590363, 3.355250, 1.294434>,  <4.949758, 3.620617, 0.654404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.590363, 3.355250, 1.294434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.437618, 3.229324, 0.946854>,  <4.345972, 3.153769, 0.738306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.437618, 3.229324, 0.946854>,  <4.590363, 3.355250, 1.294434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.437618, 3.229324, 0.946854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128367, -0.949152, 0.287460,
		-0.915262, -0.001775, 0.402856,
		-0.381861, -0.314815, -0.868950,
		4.323060, 3.134880, 0.686169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.983910, 2.965615, 1.340464>,  <4.590363, 3.355250, 1.294434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.983910, 2.965615, 1.340464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.179256, 2.860107, 1.007736>,  <4.296464, 2.796803, 0.808099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.179256, 2.860107, 1.007736>,  <3.983910, 2.965615, 1.340464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.179256, 2.860107, 1.007736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211389, -0.889074, 0.406032,
		-0.846648, -0.374131, -0.378437,
		0.488367, -0.263768, -0.831820,
		4.325766, 2.780977, 0.758190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.993041, 2.215036, 1.410357>,  <3.983910, 2.965615, 1.340464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.993041, 2.215036, 1.410357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.282154, 2.294312, 1.145538>,  <4.455622, 2.341877, 0.986647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.282154, 2.294312, 1.145538>,  <3.993041, 2.215036, 1.410357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.282154, 2.294312, 1.145538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431025, -0.878111, 0.207698,
		-0.540187, -0.435479, -0.720109,
		0.722783, 0.198189, -0.662046,
		4.498989, 2.353768, 0.946924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.054533, 1.606519, 0.912806>,  <3.993041, 2.215036, 1.410357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.054533, 1.606519, 0.912806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.404125, 1.800873, 0.916283>,  <4.613881, 1.917485, 0.918369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.404125, 1.800873, 0.916283>,  <4.054533, 1.606519, 0.912806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.404125, 1.800873, 0.916283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485915, -0.873506, -0.029581,
		-0.006781, 0.030076, -0.999525,
		0.873980, 0.485884, 0.008691,
		4.666319, 1.946638, 0.918890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.509161, 1.163533, 0.462898>,  <4.054533, 1.606519, 0.912806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.509161, 1.163533, 0.462898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.754971, 1.393204, 0.679298>,  <4.902456, 1.531006, 0.809139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.754971, 1.393204, 0.679298>,  <4.509161, 1.163533, 0.462898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.754971, 1.393204, 0.679298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576337, -0.795028, 0.189118,
		0.538698, 0.195582, -0.819483,
		0.614524, 0.574176, 0.541002,
		4.939328, 1.565457, 0.841599>
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
