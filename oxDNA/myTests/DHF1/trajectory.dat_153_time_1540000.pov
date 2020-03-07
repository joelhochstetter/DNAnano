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
	<2.491120, 0.380087, 4.752178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.867661, 0.482544, 4.664314>,  <3.093585, 0.544018, 4.611596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.867661, 0.482544, 4.664314>,  <2.491120, 0.380087, 4.752178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.867661, 0.482544, 4.664314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098882, 0.831802, 0.546194,
		0.322616, -0.492440, 0.808345,
		0.941350, 0.256142, -0.219659,
		3.150066, 0.559387, 4.598416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.861474, 0.612997, 5.381204>,  <2.491120, 0.380087, 4.752178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.861474, 0.612997, 5.381204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.954109, 0.781395, 5.030403>,  <3.009691, 0.882433, 4.819923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.954109, 0.781395, 5.030403>,  <2.861474, 0.612997, 5.381204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.954109, 0.781395, 5.030403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248037, 0.897268, 0.365224,
		0.940662, 0.132947, 0.312219,
		0.231589, 0.420994, -0.877001,
		3.023586, 0.907693, 4.767303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.215930, 1.195084, 5.562264>,  <2.861474, 0.612997, 5.381204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.215930, 1.195084, 5.562264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.004349, 1.201393, 5.222862>,  <2.877400, 1.205178, 5.019221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.004349, 1.201393, 5.222862>,  <3.215930, 1.195084, 5.562264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.004349, 1.201393, 5.222862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436414, 0.852441, 0.287902,
		0.727841, 0.522586, -0.444018,
		-0.528953, 0.015771, -0.848505,
		2.845663, 1.206125, 4.968311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.356200, 1.866117, 5.121608>,  <3.215930, 1.195084, 5.562264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.356200, 1.866117, 5.121608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.998238, 1.690201, 5.091339>,  <2.783460, 1.584651, 5.073178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.998238, 1.690201, 5.091339>,  <3.356200, 1.866117, 5.121608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.998238, 1.690201, 5.091339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444601, 0.864096, 0.235940,
		-0.038376, 0.244788, -0.968817,
		-0.894907, -0.439791, -0.075672,
		2.729766, 1.558264, 5.068637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.938639, 2.210107, 4.633858>,  <3.356200, 1.866117, 5.121608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.938639, 2.210107, 4.633858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.698830, 2.033012, 4.900558>,  <2.554944, 1.926756, 5.060579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.698830, 2.033012, 4.900558>,  <2.938639, 2.210107, 4.633858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.698830, 2.033012, 4.900558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412930, 0.884733, 0.216187,
		-0.685610, -0.145713, -0.713237,
		-0.599523, -0.442737, 0.666751,
		2.518973, 1.900191, 5.100584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.231251, 2.186239, 4.426614>,  <2.938639, 2.210107, 4.633858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.231251, 2.186239, 4.426614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.295227, 2.199242, 4.821251>,  <2.333612, 2.207043, 5.058033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.295227, 2.199242, 4.821251>,  <2.231251, 2.186239, 4.426614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.295227, 2.199242, 4.821251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350551, 0.936183, 0.025983,
		-0.922786, -0.350007, 0.161127,
		0.159938, 0.032507, 0.986592,
		2.343209, 2.208994, 5.117229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.634046, 2.432756, 4.645817>,  <2.231251, 2.186239, 4.426614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.634046, 2.432756, 4.645817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.882553, 2.505783, 4.950630>,  <2.031657, 2.549599, 5.133518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.882553, 2.505783, 4.950630>,  <1.634046, 2.432756, 4.645817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.882553, 2.505783, 4.950630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348113, 0.935552, 0.059669,
		-0.702029, -0.302344, 0.644782,
		0.621267, 0.182568, 0.762034,
		2.068933, 2.560553, 5.179240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.324767, 2.787300, 5.270701>,  <1.634046, 2.432756, 4.645817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.324767, 2.787300, 5.270701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.710747, 2.892174, 5.275284>,  <1.942335, 2.955098, 5.278034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.710747, 2.892174, 5.275284>,  <1.324767, 2.787300, 5.270701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.710747, 2.892174, 5.275284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260837, 0.953348, 0.151962,
		0.028919, -0.149624, 0.988320,
		0.964950, 0.262185, 0.011458,
		2.000232, 2.970829, 5.278721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.513081, 3.963361, 0.536828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.779819, 4.223991, 0.681473>,  <0.939863, 4.380370, 0.768260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.779819, 4.223991, 0.681473>,  <0.513081, 3.963361, 0.536828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.779819, 4.223991, 0.681473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713787, -0.697891, -0.058782,
		0.214065, 0.297313, -0.930474,
		0.666846, 0.651577, 0.361612,
		0.979873, 4.419465, 0.789956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.179782, 3.943818, 0.127856>,  <0.513081, 3.963361, 0.536828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.179782, 3.943818, 0.127856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.294525, 4.043175, 0.497940>,  <1.363371, 4.102789, 0.719991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.294525, 4.043175, 0.497940>,  <1.179782, 3.943818, 0.127856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.294525, 4.043175, 0.497940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635459, -0.772067, 0.010256,
		0.716872, 0.584991, -0.379315,
		0.286857, 0.248391, 0.925211,
		1.380582, 4.117692, 0.775503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.861132, 3.911763, 0.152182>,  <1.179782, 3.943818, 0.127856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.861132, 3.911763, 0.152182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.757557, 3.841911, 0.532173>,  <1.695412, 3.800000, 0.760168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.757557, 3.841911, 0.532173>,  <1.861132, 3.911763, 0.152182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.757557, 3.841911, 0.532173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465405, -0.884377, -0.035713,
		0.846374, 0.432877, 0.310272,
		-0.258938, -0.174628, 0.949977,
		1.679875, 3.789523, 0.817166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.474119, 3.831646, 0.611350>,  <1.861132, 3.911763, 0.152182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.474119, 3.831646, 0.611350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.148785, 3.612671, 0.690140>,  <1.953584, 3.481286, 0.737414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.148785, 3.612671, 0.690140>,  <2.474119, 3.831646, 0.611350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.148785, 3.612671, 0.690140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545559, -0.835254, -0.068674,
		0.202119, 0.051606, 0.978000,
		-0.813335, -0.547437, 0.196974,
		1.904784, 3.448440, 0.749232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.756391, 3.267151, 0.981682>,  <2.474119, 3.831646, 0.611350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.756391, 3.267151, 0.981682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.418617, 3.108948, 0.837181>,  <2.215953, 3.014026, 0.750481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.418617, 3.108948, 0.837181>,  <2.756391, 3.267151, 0.981682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.418617, 3.108948, 0.837181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486799, -0.848028, -0.209463,
		-0.223507, -0.352735, 0.908638,
		-0.844435, -0.395508, -0.361252,
		2.165287, 2.990295, 0.728806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.912631, 2.646040, 1.168926>,  <2.756391, 3.267151, 0.981682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.912631, 2.646040, 1.168926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.643871, 2.621681, 0.873672>,  <2.482615, 2.607066, 0.696520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.643871, 2.621681, 0.873672>,  <2.912631, 2.646040, 1.168926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.643871, 2.621681, 0.873672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282376, -0.942401, -0.179286,
		-0.684700, -0.328894, 0.650396,
		-0.671900, -0.060898, -0.738134,
		2.442301, 2.603412, 0.652232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.454085, 2.089115, 1.344115>,  <2.912631, 2.646040, 1.168926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.454085, 2.089115, 1.344115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.434696, 2.138054, 0.947594>,  <2.423063, 2.167418, 0.709681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.434696, 2.138054, 0.947594>,  <2.454085, 2.089115, 1.344115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.434696, 2.138054, 0.947594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202161, -0.970727, -0.129693,
		-0.978152, -0.206689, 0.022319,
		-0.048472, 0.122348, -0.991303,
		2.420155, 2.174758, 0.650203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.012944, 1.634152, 0.933728>,  <2.454085, 2.089115, 1.344115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.012944, 1.634152, 0.933728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.350273, 1.751610, 0.753693>,  <2.552671, 1.822084, 0.645671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.350273, 1.751610, 0.753693>,  <2.012944, 1.634152, 0.933728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.350273, 1.751610, 0.753693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358313, -0.931426, 0.063690,
		-0.400522, -0.214984, -0.890709,
		0.843323, 0.293644, -0.450089,
		2.603270, 1.839703, 0.618666>
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
